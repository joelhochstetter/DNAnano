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
	<23.697325, 35.192844, 34.882858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.079340, 35.103104, 34.960388>,  <24.308550, 35.049259, 35.006905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.079340, 35.103104, 34.960388>,  <23.697325, 35.192844, 34.882858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.079340, 35.103104, 34.960388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059748, -0.785976, -0.615363,
		0.290397, 0.576116, -0.764042,
		0.955039, -0.224350, 0.193823,
		24.365852, 35.035797, 35.018536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.161278, 35.205223, 34.271297>,  <23.697325, 35.192844, 34.882858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.161278, 35.205223, 34.271297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225651, 34.947643, 34.570480>,  <24.264275, 34.793095, 34.749989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225651, 34.947643, 34.570480>,  <24.161278, 35.205223, 34.271297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225651, 34.947643, 34.570480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297294, -0.754261, -0.585411,
		0.941125, -0.128151, -0.312826,
		0.160932, -0.643946, 0.747953,
		24.273930, 34.754459, 34.794865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486971, 34.597866, 34.308624>,  <24.161278, 35.205223, 34.271297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486971, 34.597866, 34.308624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787216, 34.553944, 34.569244>,  <24.967363, 34.527588, 34.725616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787216, 34.553944, 34.569244>,  <24.486971, 34.597866, 34.308624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.787216, 34.553944, 34.569244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157795, -0.987352, 0.015381,
		0.641625, -0.114357, -0.758446,
		0.750612, -0.109810, 0.651555,
		25.012400, 34.521000, 34.764709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816278, 34.040337, 34.626972>,  <24.486971, 34.597866, 34.308624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816278, 34.040337, 34.626972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.630692, 33.693871, 34.552677>,  <24.519341, 33.485992, 34.508099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.630692, 33.693871, 34.552677>,  <24.816278, 34.040337, 34.626972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.630692, 33.693871, 34.552677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371449, -0.380573, 0.846871,
		-0.804215, 0.323925, 0.498307,
		-0.463965, -0.866162, -0.185741,
		24.491503, 33.434021, 34.496956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565546, 33.834442, 35.310913>,  <24.816278, 34.040337, 34.626972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565546, 33.834442, 35.310913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637310, 33.514214, 35.082211>,  <24.680368, 33.322079, 34.944988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637310, 33.514214, 35.082211>,  <24.565546, 33.834442, 35.310913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637310, 33.514214, 35.082211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576014, -0.385659, 0.720747,
		-0.797509, -0.458648, 0.391947,
		0.179411, -0.800568, -0.571754,
		24.691133, 33.274044, 34.910683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427872, 33.230869, 35.664219>,  <24.565546, 33.834442, 35.310913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427872, 33.230869, 35.664219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708191, 33.188576, 35.382027>,  <24.876383, 33.163200, 35.212711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708191, 33.188576, 35.382027>,  <24.427872, 33.230869, 35.664219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708191, 33.188576, 35.382027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584484, -0.481865, 0.652828,
		-0.408970, -0.869843, -0.275893,
		0.700801, -0.105732, -0.705478,
		24.918430, 33.156857, 35.170383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639795, 32.571114, 35.666924>,  <24.427872, 33.230869, 35.664219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639795, 32.571114, 35.666924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947697, 32.771828, 35.509090>,  <25.132437, 32.892254, 35.414391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947697, 32.771828, 35.509090>,  <24.639795, 32.571114, 35.666924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947697, 32.771828, 35.509090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629512, -0.494249, 0.599526,
		0.105809, -0.709882, -0.696327,
		0.769752, 0.501782, -0.394584,
		25.178623, 32.922363, 35.390717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252041, 32.110523, 35.484859>,  <24.639795, 32.571114, 35.666924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252041, 32.110523, 35.484859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.436539, 32.464806, 35.505943>,  <25.547237, 32.677376, 35.518593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.436539, 32.464806, 35.505943>,  <25.252041, 32.110523, 35.484859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436539, 32.464806, 35.505943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793678, -0.438414, 0.421745,
		0.396650, -0.152695, -0.905181,
		0.461243, 0.885707, 0.052706,
		25.574911, 32.730518, 35.521755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987207, 32.003304, 35.315479>,  <25.252041, 32.110523, 35.484859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987207, 32.003304, 35.315479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977356, 32.370869, 35.472954>,  <25.971445, 32.591408, 35.567440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977356, 32.370869, 35.472954>,  <25.987207, 32.003304, 35.315479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977356, 32.370869, 35.472954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857079, -0.183304, 0.481472,
		0.514596, 0.349279, -0.783068,
		-0.024628, 0.918914, 0.393687,
		25.969967, 32.646542, 35.591061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577188, 32.257664, 35.269211>,  <25.987207, 32.003304, 35.315479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577188, 32.257664, 35.269211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452368, 32.498512, 35.563171>,  <26.377476, 32.643021, 35.739548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452368, 32.498512, 35.563171>,  <26.577188, 32.257664, 35.269211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452368, 32.498512, 35.563171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794835, -0.258279, 0.549117,
		0.520443, 0.755475, -0.397990,
		-0.312052, 0.602121, 0.734897,
		26.358751, 32.679150, 35.783642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125263, 32.757519, 35.479832>,  <26.577188, 32.257664, 35.269211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125263, 32.757519, 35.479832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881952, 32.736824, 35.796646>,  <26.735966, 32.724407, 35.986736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881952, 32.736824, 35.796646>,  <27.125263, 32.757519, 35.479832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881952, 32.736824, 35.796646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767868, -0.290975, 0.570712,
		0.200935, 0.955331, 0.216722,
		-0.608279, -0.051738, 0.792035,
		26.699469, 32.721302, 36.034256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437494, 33.029961, 36.207024>,  <27.125263, 32.757519, 35.479832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437494, 33.029961, 36.207024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140886, 32.766018, 36.255577>,  <26.962921, 32.607651, 36.284710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140886, 32.766018, 36.255577>,  <27.437494, 33.029961, 36.207024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140886, 32.766018, 36.255577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607191, -0.583036, 0.539804,
		-0.285425, 0.473977, 0.832993,
		-0.741520, -0.659860, 0.121382,
		26.918430, 32.568062, 36.291992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244017, 32.711517, 36.963566>,  <27.437494, 33.029961, 36.207024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244017, 32.711517, 36.963566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145025, 32.447186, 36.680141>,  <27.085630, 32.288586, 36.510086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145025, 32.447186, 36.680141>,  <27.244017, 32.711517, 36.963566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145025, 32.447186, 36.680141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550684, -0.697639, 0.458308,
		-0.797183, -0.276772, 0.536560,
		-0.247478, -0.660830, -0.708560,
		27.070782, 32.248936, 36.467575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250830, 32.041050, 37.263821>,  <27.244017, 32.711517, 36.963566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250830, 32.041050, 37.263821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233585, 31.932304, 36.879272>,  <27.223238, 31.867056, 36.648544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233585, 31.932304, 36.879272>,  <27.250830, 32.041050, 37.263821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233585, 31.932304, 36.879272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546064, -0.812223, 0.205202,
		-0.836633, -0.516122, 0.183473,
		-0.043111, -0.271867, -0.961369,
		27.220652, 31.850744, 36.590862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835527, 31.434818, 37.191216>,  <27.250830, 32.041050, 37.263821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835527, 31.434818, 37.191216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119087, 31.442936, 36.909206>,  <27.289223, 31.447807, 36.740002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119087, 31.442936, 36.909206>,  <26.835527, 31.434818, 37.191216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119087, 31.442936, 36.909206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366909, -0.864297, 0.344048,
		-0.602363, -0.502573, -0.620145,
		0.708898, 0.020295, -0.705019,
		27.331757, 31.449024, 36.697701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416351, 32.095917, 37.138641>,  <26.835527, 31.434818, 37.191216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416351, 32.095917, 37.138641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591377, 32.370258, 36.906040>,  <26.696392, 32.534863, 36.766479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591377, 32.370258, 36.906040>,  <26.416351, 32.095917, 37.138641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591377, 32.370258, 36.906040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871794, 0.165176, -0.461186,
		-0.220255, 0.708749, 0.670197,
		0.437565, 0.685851, -0.581502,
		26.722647, 32.576015, 36.731590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968809, 32.716724, 37.090691>,  <26.416351, 32.095917, 37.138641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968809, 32.716724, 37.090691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191996, 32.724117, 36.758827>,  <26.325907, 32.728554, 36.559708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191996, 32.724117, 36.758827>,  <25.968809, 32.716724, 37.090691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191996, 32.724117, 36.758827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800605, 0.275118, -0.532298,
		0.218418, 0.961233, 0.168301,
		0.557965, 0.018479, -0.829659,
		26.359385, 32.729660, 36.509930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737938, 33.415031, 36.704964>,  <25.968809, 32.716724, 37.090691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737938, 33.415031, 36.704964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932652, 33.207455, 36.423897>,  <26.049480, 33.082909, 36.255257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932652, 33.207455, 36.423897>,  <25.737938, 33.415031, 36.704964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932652, 33.207455, 36.423897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554695, 0.437768, -0.707582,
		0.674798, 0.734207, -0.074755,
		0.486786, -0.518941, -0.702666,
		26.078688, 33.051773, 36.213097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987001, 33.862690, 36.226040>,  <25.737938, 33.415031, 36.704964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987001, 33.862690, 36.226040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961514, 33.513226, 36.033100>,  <25.946220, 33.303547, 35.917336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961514, 33.513226, 36.033100>,  <25.987001, 33.862690, 36.226040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961514, 33.513226, 36.033100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684526, 0.389969, -0.615913,
		0.726198, 0.290934, -0.622891,
		-0.063718, -0.873660, -0.482347,
		25.942398, 33.251129, 35.888397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930342, 34.049118, 35.570488>,  <25.987001, 33.862690, 36.226040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930342, 34.049118, 35.570488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794048, 33.673199, 35.560040>,  <25.712273, 33.447647, 35.553772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794048, 33.673199, 35.560040>,  <25.930342, 34.049118, 35.570488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794048, 33.673199, 35.560040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638728, 0.251786, -0.727069,
		0.689874, -0.231053, -0.686067,
		-0.340734, -0.939797, -0.026121,
		25.691828, 33.391258, 35.552204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124397, 33.734890, 34.966282>,  <25.930342, 34.049118, 35.570488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124397, 33.734890, 34.966282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786558, 33.605282, 35.136768>,  <25.583855, 33.527515, 35.239059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786558, 33.605282, 35.136768>,  <26.124397, 33.734890, 34.966282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786558, 33.605282, 35.136768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515218, 0.275359, -0.811621,
		0.145619, -0.905090, -0.399509,
		-0.844598, -0.324021, 0.426221,
		25.533178, 33.508076, 35.264633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985420, 33.736893, 35.121517>,  <26.124397, 33.734890, 34.966282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985420, 33.736893, 35.121517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831907, 33.400146, 35.273293>,  <26.739799, 33.198097, 35.364357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831907, 33.400146, 35.273293>,  <26.985420, 33.736893, 35.121517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831907, 33.400146, 35.273293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436063, -0.196981, -0.878093,
		0.813979, -0.502456, -0.291509,
		-0.383781, -0.841865, 0.379440,
		26.716772, 33.147587, 35.387123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376675, 33.255413, 34.926346>,  <26.985420, 33.736893, 35.121517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376675, 33.255413, 34.926346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757975, 33.138702, 34.894905>,  <27.986755, 33.068676, 34.876041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757975, 33.138702, 34.894905>,  <27.376675, 33.255413, 34.926346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757975, 33.138702, 34.894905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193867, -0.391001, -0.899741,
		0.231793, 0.872917, -0.429288,
		0.953251, -0.291779, -0.078598,
		28.043949, 33.051170, 34.871326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661978, 33.647644, 34.383919>,  <27.376675, 33.255413, 34.926346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661978, 33.647644, 34.383919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788864, 33.275818, 34.459057>,  <27.864996, 33.052723, 34.504139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788864, 33.275818, 34.459057>,  <27.661978, 33.647644, 34.383919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788864, 33.275818, 34.459057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366396, -0.302827, -0.879801,
		0.874715, 0.210260, -0.436650,
		0.317217, -0.929562, 0.187849,
		27.884029, 32.996948, 34.515411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392765, 33.818077, 34.204517>,  <27.661978, 33.647644, 34.383919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392765, 33.818077, 34.204517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211115, 33.905933, 33.859142>,  <28.102125, 33.958649, 33.651917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211115, 33.905933, 33.859142>,  <28.392765, 33.818077, 34.204517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211115, 33.905933, 33.859142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624373, 0.612878, 0.484293,
		0.635554, 0.759038, -0.141185,
		-0.454125, 0.219642, -0.863439,
		28.074877, 33.971825, 33.600109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564335, 34.425224, 33.834591>,  <28.392765, 33.818077, 34.204517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564335, 34.425224, 33.834591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182076, 34.340275, 33.752968>,  <27.952721, 34.289307, 33.703995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182076, 34.340275, 33.752968>,  <28.564335, 34.425224, 33.834591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182076, 34.340275, 33.752968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291781, 0.776909, 0.557921,
		0.040048, 0.592716, -0.804416,
		-0.955646, -0.212370, -0.204057,
		27.895382, 34.276566, 33.691750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634100, 35.096149, 33.558098>,  <28.564335, 34.425224, 33.834591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634100, 35.096149, 33.558098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844019, 35.435257, 33.588779>,  <28.969971, 35.638721, 33.607189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844019, 35.435257, 33.588779>,  <28.634100, 35.096149, 33.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844019, 35.435257, 33.588779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613507, -0.314231, -0.724478,
		-0.590084, 0.427263, -0.685017,
		0.524796, 0.847765, 0.076706,
		29.001457, 35.689587, 33.611790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917654, 35.168804, 32.930595>,  <28.634100, 35.096149, 33.558098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917654, 35.168804, 32.930595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164286, 35.387810, 33.156891>,  <29.312263, 35.519215, 33.292667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164286, 35.387810, 33.156891>,  <28.917654, 35.168804, 32.930595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164286, 35.387810, 33.156891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764403, -0.244307, -0.596658,
		-0.188465, 0.800339, -0.569156,
		0.616578, 0.547514, 0.565739,
		29.349258, 35.552063, 33.326611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253078, 35.517162, 32.424580>,  <28.917654, 35.168804, 32.930595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253078, 35.517162, 32.424580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485430, 35.485981, 32.748680>,  <29.624840, 35.467270, 32.943138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485430, 35.485981, 32.748680>,  <29.253078, 35.517162, 32.424580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485430, 35.485981, 32.748680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812186, -0.010743, -0.583300,
		0.054177, 0.996899, 0.057075,
		0.580877, -0.077957, 0.810249,
		29.659693, 35.462593, 32.991756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845127, 36.164799, 32.386341>,  <29.253078, 35.517162, 32.424580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845127, 36.164799, 32.386341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949560, 35.851398, 32.611897>,  <30.012220, 35.663361, 32.747231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949560, 35.851398, 32.611897>,  <29.845127, 36.164799, 32.386341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949560, 35.851398, 32.611897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760800, -0.192530, -0.619771,
		0.594153, 0.590817, 0.545818,
		0.261085, -0.783497, 0.563886,
		30.027885, 35.616348, 32.781063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595953, 36.155468, 32.576908>,  <29.845127, 36.164799, 32.386341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595953, 36.155468, 32.576908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495836, 35.770679, 32.620663>,  <30.435766, 35.539806, 32.646915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495836, 35.770679, 32.620663>,  <30.595953, 36.155468, 32.576908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495836, 35.770679, 32.620663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681169, -0.255261, -0.686185,
		0.688013, -0.097235, 0.719155,
		-0.250293, -0.961971, 0.109389,
		30.420748, 35.482090, 32.653481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153879, 35.733143, 32.764328>,  <30.595953, 36.155468, 32.576908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153879, 35.733143, 32.764328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882706, 35.527122, 32.554516>,  <30.720001, 35.403511, 32.428631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882706, 35.527122, 32.554516>,  <31.153879, 35.733143, 32.764328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882706, 35.527122, 32.554516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705180, -0.254064, -0.661947,
		0.207671, -0.818643, 0.535441,
		-0.677934, -0.515049, -0.524528,
		30.679325, 35.372608, 32.397156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484243, 35.177517, 32.567535>,  <31.153879, 35.733143, 32.764328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484243, 35.177517, 32.567535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172092, 35.225967, 32.322147>,  <30.984802, 35.255035, 32.174915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172092, 35.225967, 32.322147>,  <31.484243, 35.177517, 32.567535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172092, 35.225967, 32.322147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605466, -0.098833, -0.789711,
		-0.156284, -0.987705, 0.003791,
		-0.780376, 0.121124, -0.613468,
		30.937981, 35.262306, 32.138107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536377, 34.595795, 32.143185>,  <31.484243, 35.177517, 32.567535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536377, 34.595795, 32.143185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343235, 34.892471, 31.956959>,  <31.227350, 35.070477, 31.845222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343235, 34.892471, 31.956959>,  <31.536377, 34.595795, 32.143185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343235, 34.892471, 31.956959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641595, -0.062207, -0.764517,
		-0.595994, -0.667855, -0.445826,
		-0.482853, 0.741687, -0.465567,
		31.198380, 35.114979, 31.817289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130505, 34.442135, 31.435368>,  <31.536377, 34.595795, 32.143185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130505, 34.442135, 31.435368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306324, 34.794266, 31.506725>,  <31.411816, 35.005543, 31.549540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306324, 34.794266, 31.506725>,  <31.130505, 34.442135, 31.435368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306324, 34.794266, 31.506725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650495, -0.175024, -0.739069,
		-0.619396, 0.440904, -0.649578,
		0.439550, 0.880324, 0.178397,
		31.438189, 35.058361, 31.560244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078663, 34.635128, 30.742331>,  <31.130505, 34.442135, 31.435368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078663, 34.635128, 30.742331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112045, 34.615566, 30.344206>,  <31.132074, 34.603828, 30.105331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112045, 34.615566, 30.344206>,  <31.078663, 34.635128, 30.742331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112045, 34.615566, 30.344206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944776, -0.313754, 0.094637,
		-0.316911, -0.948244, 0.020017,
		0.083459, -0.048903, -0.995311,
		31.137083, 34.600895, 30.045612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343266, 34.682827, 31.031269>,  <31.078663, 34.635128, 30.742331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343266, 34.682827, 31.031269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430805, 35.059212, 30.927971>,  <30.483330, 35.285042, 30.865992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430805, 35.059212, 30.927971>,  <30.343266, 34.682827, 31.031269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430805, 35.059212, 30.927971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974205, 0.195782, -0.112226,
		-0.055040, 0.276146, 0.959539,
		0.218851, 0.940964, -0.258247,
		30.496460, 35.341499, 30.850496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894144, 35.228573, 31.340029>,  <30.343266, 34.682827, 31.031269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894144, 35.228573, 31.340029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219893, 35.204952, 31.570963>,  <30.415340, 35.190781, 31.709524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219893, 35.204952, 31.570963>,  <29.894144, 35.228573, 31.340029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219893, 35.204952, 31.570963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579546, -0.030487, 0.814369,
		-0.030487, -0.997789, -0.059049,
		-0.814369, 0.059049, -0.577335,
		30.464203, 35.187237, 31.744164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769470, 34.701408, 31.812187>,  <29.894144, 35.228573, 31.340029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769470, 34.701408, 31.812187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059952, 34.920052, 31.978968>,  <30.234240, 35.051239, 32.079037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059952, 34.920052, 31.978968>,  <29.769470, 34.701408, 31.812187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059952, 34.920052, 31.978968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523170, 0.045929, 0.850990,
		0.446008, -0.836128, 0.319323,
		0.726202, 0.546608, 0.416953,
		30.277813, 35.084034, 32.104053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246714, 34.457390, 32.209572>,  <29.769470, 34.701408, 31.812187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246714, 34.457390, 32.209572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503057, 34.696735, 32.401932>,  <30.656864, 34.840343, 32.517345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503057, 34.696735, 32.401932>,  <30.246714, 34.457390, 32.209572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503057, 34.696735, 32.401932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755118, 0.378596, 0.535222,
		0.138193, -0.706135, 0.694461,
		0.640859, 0.598364, 0.480896,
		30.695314, 34.876244, 32.546200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302078, 34.278053, 32.965076>,  <30.246714, 34.457390, 32.209572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302078, 34.278053, 32.965076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366869, 34.666264, 32.893696>,  <30.405745, 34.899189, 32.850868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366869, 34.666264, 32.893696>,  <30.302078, 34.278053, 32.965076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366869, 34.666264, 32.893696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718309, 0.239959, 0.653033,
		0.676606, 0.022408, 0.736005,
		0.161978, 0.970525, -0.178454,
		30.415462, 34.957420, 32.840160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374239, 34.606339, 33.621368>,  <30.302078, 34.278053, 32.965076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374239, 34.606339, 33.621368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257774, 34.875824, 33.349682>,  <30.187895, 35.037514, 33.186668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257774, 34.875824, 33.349682>,  <30.374239, 34.606339, 33.621368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257774, 34.875824, 33.349682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849413, 0.144584, 0.507536,
		0.440138, 0.724711, 0.530163,
		-0.291164, 0.673713, -0.679216,
		30.170425, 35.077938, 33.145916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330299, 35.298100, 33.968170>,  <30.374239, 34.606339, 33.621368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330299, 35.298100, 33.968170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079887, 35.216961, 33.666988>,  <29.929640, 35.168278, 33.486279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079887, 35.216961, 33.666988>,  <30.330299, 35.298100, 33.968170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079887, 35.216961, 33.666988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776613, 0.074974, 0.625501,
		-0.070427, 0.976337, -0.204466,
		-0.626029, -0.202843, -0.752956,
		29.892078, 35.156109, 33.441101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716558, 35.627083, 34.139286>,  <30.330299, 35.298100, 33.968170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716558, 35.627083, 34.139286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582607, 35.450657, 33.806225>,  <29.502237, 35.344799, 33.606388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582607, 35.450657, 33.806225>,  <29.716558, 35.627083, 34.139286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582607, 35.450657, 33.806225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931781, 0.023571, 0.362256,
		-0.140153, 0.897164, -0.418873,
		-0.334876, -0.441069, -0.832656,
		29.482145, 35.318336, 33.556427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770920, 35.036510, 34.627182>,  <29.716558, 35.627083, 34.139286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770920, 35.036510, 34.627182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129681, 35.202194, 34.689148>,  <30.344938, 35.301605, 34.726326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129681, 35.202194, 34.689148>,  <29.770920, 35.036510, 34.627182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129681, 35.202194, 34.689148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175948, -0.655618, 0.734308,
		0.405717, -0.631347, -0.660904,
		0.896903, 0.414206, 0.154912,
		30.398752, 35.326454, 34.735622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091446, 34.426682, 34.899475>,  <29.770920, 35.036510, 34.627182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091446, 34.426682, 34.899475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283123, 34.768353, 34.980225>,  <30.398130, 34.973354, 35.028675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283123, 34.768353, 34.980225>,  <30.091446, 34.426682, 34.899475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283123, 34.768353, 34.980225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251876, -0.354154, 0.900630,
		0.840792, -0.380729, -0.384855,
		0.479194, 0.854178, 0.201873,
		30.426882, 35.024605, 35.040787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786148, 34.255127, 35.115757>,  <30.091446, 34.426682, 34.899475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786148, 34.255127, 35.115757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604546, 34.573822, 35.275299>,  <30.495584, 34.765041, 35.371025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604546, 34.573822, 35.275299>,  <30.786148, 34.255127, 35.115757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604546, 34.573822, 35.275299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176072, -0.358593, 0.916738,
		0.873428, 0.486433, 0.022520,
		-0.454007, 0.796740, 0.398853,
		30.468344, 34.812843, 35.394955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104153, 34.520035, 35.724003>,  <30.786148, 34.255127, 35.115757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104153, 34.520035, 35.724003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735270, 34.666691, 35.773159>,  <30.513939, 34.754684, 35.802654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735270, 34.666691, 35.773159>,  <31.104153, 34.520035, 35.724003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735270, 34.666691, 35.773159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099880, -0.532871, 0.840281,
		0.373568, 0.762642, 0.528039,
		-0.922210, 0.366643, 0.122891,
		30.458607, 34.776684, 35.810028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723463, 34.811680, 35.283958>,  <31.104153, 34.520035, 35.724003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723463, 34.811680, 35.283958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892017, 34.856201, 35.643970>,  <31.993151, 34.882912, 35.859978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892017, 34.856201, 35.643970>,  <31.723463, 34.811680, 35.283958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892017, 34.856201, 35.643970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576948, -0.798602, -0.171366,
		0.699689, 0.591479, -0.400734,
		0.421387, 0.111299, 0.900025,
		32.018433, 34.889591, 35.913979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480061, 34.774944, 35.173759>,  <31.723463, 34.811680, 35.283958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480061, 34.774944, 35.173759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437805, 34.685478, 35.561329>,  <32.412453, 34.631798, 35.793869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437805, 34.685478, 35.561329>,  <32.480061, 34.774944, 35.173759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437805, 34.685478, 35.561329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672456, -0.733873, -0.096091,
		0.732560, 0.641409, 0.227927,
		-0.105636, -0.223663, 0.968925,
		32.406113, 34.618378, 35.852005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821804, 34.255943, 35.238037>,  <32.480061, 34.774944, 35.173759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821804, 34.255943, 35.238037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794456, 34.304390, 35.634151>,  <32.778049, 34.333458, 35.871819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794456, 34.304390, 35.634151>,  <32.821804, 34.255943, 35.238037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794456, 34.304390, 35.634151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651502, -0.746311, 0.136254,
		0.755560, 0.654486, -0.027883,
		-0.068367, 0.121114, 0.990281,
		32.773945, 34.340725, 35.931236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509907, 34.303341, 35.707287>,  <32.821804, 34.255943, 35.238037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509907, 34.303341, 35.707287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186504, 34.135056, 35.871883>,  <32.992462, 34.034084, 35.970642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186504, 34.135056, 35.871883>,  <33.509907, 34.303341, 35.707287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186504, 34.135056, 35.871883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469482, -0.882716, 0.019948,
		0.354840, 0.209317, 0.911194,
		-0.808502, -0.420712, 0.411493,
		32.943954, 34.008842, 35.995331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783463, 33.983814, 36.334900>,  <33.509907, 34.303341, 35.707287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783463, 33.983814, 36.334900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463871, 33.819962, 36.158791>,  <33.272118, 33.721649, 36.053127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463871, 33.819962, 36.158791>,  <33.783463, 33.983814, 36.334900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463871, 33.819962, 36.158791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472338, -0.880605, -0.037842,
		-0.372203, -0.238191, 0.897068,
		-0.798976, -0.409634, -0.440270,
		33.224178, 33.697071, 36.026711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564583, 34.290661, 36.388062>,  <33.783463, 33.983814, 36.334900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564583, 34.290661, 36.388062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819210, 34.073025, 36.169434>,  <34.971989, 33.942444, 36.038258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819210, 34.073025, 36.169434>,  <34.564583, 34.290661, 36.388062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819210, 34.073025, 36.169434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650267, -0.002372, 0.759702,
		-0.414645, -0.839022, 0.352295,
		0.636571, -0.544093, -0.546572,
		35.010181, 33.909798, 36.005463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699657, 33.674160, 36.736481>,  <34.564583, 34.290661, 36.388062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699657, 33.674160, 36.736481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007206, 33.721989, 36.485233>,  <35.191734, 33.750687, 36.334484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007206, 33.721989, 36.485233>,  <34.699657, 33.674160, 36.736481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007206, 33.721989, 36.485233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638024, -0.079009, 0.765952,
		0.041958, -0.989676, -0.137037,
		0.768872, 0.119571, -0.628122,
		35.237869, 33.757862, 36.296795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277794, 33.368069, 37.022812>,  <34.699657, 33.674160, 36.736481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277794, 33.368069, 37.022812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492123, 33.584904, 36.763878>,  <35.620720, 33.715004, 36.608517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492123, 33.584904, 36.763878>,  <35.277794, 33.368069, 37.022812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492123, 33.584904, 36.763878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717946, 0.110965, 0.687198,
		0.444350, -0.832965, -0.329730,
		0.535823, 0.542085, -0.647331,
		35.652870, 33.747528, 36.569679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955750, 33.215290, 37.157566>,  <35.277794, 33.368069, 37.022812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955750, 33.215290, 37.157566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966423, 33.574829, 36.982582>,  <35.972828, 33.790550, 36.877594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966423, 33.574829, 36.982582>,  <35.955750, 33.215290, 37.157566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966423, 33.574829, 36.982582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676766, 0.305832, 0.669668,
		0.735715, -0.313924, -0.600146,
		0.026681, 0.898843, -0.437458,
		35.974426, 33.844482, 36.851345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696301, 33.310627, 36.788578>,  <35.955750, 33.215290, 37.157566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696301, 33.310627, 36.788578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483967, 33.625530, 36.914078>,  <36.356567, 33.814472, 36.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483967, 33.625530, 36.914078>,  <36.696301, 33.310627, 36.788578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483967, 33.625530, 36.914078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761560, 0.280701, 0.584152,
		0.371810, 0.549024, -0.748551,
		-0.530832, 0.787261, 0.313748,
		36.324718, 33.861710, 37.008202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045979, 33.933178, 36.734489>,  <36.696301, 33.310627, 36.788578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045979, 33.933178, 36.734489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788532, 33.940784, 37.040535>,  <36.634064, 33.945351, 37.224163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788532, 33.940784, 37.040535>,  <37.045979, 33.933178, 36.734489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788532, 33.940784, 37.040535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705418, 0.402549, 0.583386,
		-0.296900, 0.915201, -0.272503,
		-0.643611, 0.019021, 0.765116,
		36.595448, 33.946491, 37.270069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084835, 34.630699, 36.919724>,  <37.045979, 33.933178, 36.734489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084835, 34.630699, 36.919724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991676, 34.370739, 37.209106>,  <36.935783, 34.214764, 37.382736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991676, 34.370739, 37.209106>,  <37.084835, 34.630699, 36.919724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991676, 34.370739, 37.209106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614596, 0.478163, 0.627401,
		-0.753679, 0.590751, 0.288065,
		-0.232895, -0.649903, 0.723455,
		36.921806, 34.175770, 37.426144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824528, 35.004692, 37.474220>,  <37.084835, 34.630699, 36.919724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824528, 35.004692, 37.474220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972816, 34.659988, 37.612751>,  <37.061790, 34.453167, 37.695869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972816, 34.659988, 37.612751>,  <36.824528, 35.004692, 37.474220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972816, 34.659988, 37.612751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563561, 0.505125, 0.653642,
		-0.738218, -0.047144, 0.672913,
		0.370720, -0.861757, 0.346324,
		37.084034, 34.401463, 37.716648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024612, 35.181454, 37.434212>,  <36.824528, 35.004692, 37.474220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024612, 35.181454, 37.434212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161327, 34.806156, 37.412746>,  <36.243359, 34.580978, 37.399868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161327, 34.806156, 37.412746>,  <36.024612, 35.181454, 37.434212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161327, 34.806156, 37.412746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429462, -0.105147, -0.896943,
		0.835908, 0.329612, -0.438878,
		0.341790, -0.938243, -0.053663,
		36.263863, 34.524685, 37.396648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572525, 35.038612, 36.891151>,  <36.024612, 35.181454, 37.434212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572525, 35.038612, 36.891151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836372, 34.740273, 36.928268>,  <35.994682, 34.561268, 36.950539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836372, 34.740273, 36.928268>,  <35.572525, 35.038612, 36.891151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836372, 34.740273, 36.928268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310472, -0.382828, -0.870086,
		0.684478, 0.545115, -0.484086,
		0.659619, -0.745850, 0.092794,
		36.034260, 34.516518, 36.956108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892548, 34.998417, 36.279938>,  <35.572525, 35.038612, 36.891151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892548, 34.998417, 36.279938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939255, 34.637638, 36.446239>,  <35.967278, 34.421169, 36.546021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939255, 34.637638, 36.446239>,  <35.892548, 34.998417, 36.279938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939255, 34.637638, 36.446239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284808, -0.431450, -0.856000,
		0.951446, -0.018458, -0.307261,
		0.116767, -0.901948, 0.415759,
		35.974285, 34.367054, 36.570969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247490, 34.620827, 35.812206>,  <35.892548, 34.998417, 36.279938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247490, 34.620827, 35.812206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037712, 34.353413, 36.023117>,  <35.911846, 34.192963, 36.149662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037712, 34.353413, 36.023117>,  <36.247490, 34.620827, 35.812206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037712, 34.353413, 36.023117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259756, -0.464120, -0.846829,
		0.810854, -0.581077, 0.069749,
		-0.524445, -0.668537, 0.527272,
		35.880379, 34.152851, 36.181297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196438, 34.010975, 35.409981>,  <36.247490, 34.620827, 35.812206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196438, 34.010975, 35.409981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912334, 33.930557, 35.679832>,  <35.741875, 33.882305, 35.841743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912334, 33.930557, 35.679832>,  <36.196438, 34.010975, 35.409981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912334, 33.930557, 35.679832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500483, -0.529716, -0.684776,
		0.495029, -0.824004, 0.275615,
		-0.710256, -0.201043, 0.674625,
		35.699257, 33.870243, 35.882221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132374, 33.324268, 35.381844>,  <36.196438, 34.010975, 35.409981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132374, 33.324268, 35.381844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785744, 33.500130, 35.476299>,  <35.577766, 33.605644, 35.532970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785744, 33.500130, 35.476299>,  <36.132374, 33.324268, 35.381844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785744, 33.500130, 35.476299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433764, -0.429567, -0.792036,
		-0.246781, -0.788785, 0.562954,
		-0.866573, 0.439649, 0.236138,
		35.525772, 33.632023, 35.547142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534626, 32.798309, 35.485943>,  <36.132374, 33.324268, 35.381844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534626, 32.798309, 35.485943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431961, 33.158493, 35.345490>,  <35.370361, 33.374603, 35.261219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431961, 33.158493, 35.345490>,  <35.534626, 32.798309, 35.485943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431961, 33.158493, 35.345490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237709, -0.410954, -0.880120,
		-0.936814, -0.142422, 0.319523,
		-0.256658, 0.900463, -0.351132,
		35.354965, 33.428631, 35.240150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801357, 32.801979, 35.446964>,  <35.534626, 32.798309, 35.485943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801357, 32.801979, 35.446964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964268, 33.056011, 35.184422>,  <35.062012, 33.208431, 35.026897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964268, 33.056011, 35.184422>,  <34.801357, 32.801979, 35.446964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964268, 33.056011, 35.184422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273612, -0.600806, -0.751112,
		-0.871358, 0.485494, -0.070927,
		0.407274, 0.635081, -0.656354,
		35.086449, 33.246536, 34.987514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430725, 32.906570, 34.904743>,  <34.801357, 32.801979, 35.446964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430725, 32.906570, 34.904743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758720, 33.028812, 34.711159>,  <34.955517, 33.102158, 34.595009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758720, 33.028812, 34.711159>,  <34.430725, 32.906570, 34.904743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758720, 33.028812, 34.711159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281978, -0.520124, -0.806201,
		-0.498100, 0.797544, -0.340323,
		0.819991, 0.305605, -0.483963,
		35.004719, 33.120495, 34.565971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205990, 33.105106, 34.312279>,  <34.430725, 32.906570, 34.904743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205990, 33.105106, 34.312279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599213, 33.068272, 34.248882>,  <34.835148, 33.046169, 34.210842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599213, 33.068272, 34.248882>,  <34.205990, 33.105106, 34.312279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599213, 33.068272, 34.248882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179692, -0.313253, -0.932515,
		0.036227, 0.945194, -0.324493,
		0.983056, -0.092091, -0.158495,
		34.894131, 33.040646, 34.201332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236652, 33.175152, 33.601574>,  <34.205990, 33.105106, 34.312279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236652, 33.175152, 33.601574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577606, 32.983517, 33.685398>,  <34.782177, 32.868534, 33.735691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577606, 32.983517, 33.685398>,  <34.236652, 33.175152, 33.601574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577606, 32.983517, 33.685398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119078, -0.568060, -0.814327,
		0.509176, 0.669166, -0.541255,
		0.852385, -0.479087, 0.209560,
		34.833321, 32.839790, 33.748264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674442, 33.326763, 32.996063>,  <34.236652, 33.175152, 33.601574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674442, 33.326763, 32.996063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801632, 33.001968, 33.191849>,  <34.877945, 32.807091, 33.309319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801632, 33.001968, 33.191849>,  <34.674442, 33.326763, 32.996063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801632, 33.001968, 33.191849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238121, -0.568101, -0.787756,
		0.917711, 0.133932, -0.373990,
		0.317970, -0.811987, 0.489461,
		34.897022, 32.758373, 33.338688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277565, 32.985409, 32.603996>,  <34.674442, 33.326763, 32.996063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277565, 32.985409, 32.603996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103462, 32.732059, 32.859928>,  <34.999001, 32.580051, 33.013489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103462, 32.732059, 32.859928>,  <35.277565, 32.985409, 32.603996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103462, 32.732059, 32.859928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075225, -0.682615, -0.726896,
		0.897158, -0.364519, 0.249467,
		-0.435257, -0.633374, 0.639834,
		34.972885, 32.542046, 33.051880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683651, 32.377697, 32.475464>,  <35.277565, 32.985409, 32.603996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683651, 32.377697, 32.475464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322491, 32.305214, 32.631378>,  <35.105793, 32.261726, 32.724926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322491, 32.305214, 32.631378>,  <35.683651, 32.377697, 32.475464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322491, 32.305214, 32.631378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240134, -0.539460, -0.807043,
		0.356513, -0.822282, 0.443567,
		-0.902903, -0.181206, 0.389782,
		35.051620, 32.250851, 32.748314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578228, 31.720201, 32.354145>,  <35.683651, 32.377697, 32.475464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578228, 31.720201, 32.354145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198742, 31.805315, 32.447666>,  <34.971050, 31.856384, 32.503777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198742, 31.805315, 32.447666>,  <35.578228, 31.720201, 32.354145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198742, 31.805315, 32.447666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305791, -0.805296, -0.507928,
		0.080198, -0.553372, 0.829064,
		-0.948715, 0.212785, 0.233800,
		34.914127, 31.869150, 32.517807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320763, 31.069527, 32.399052>,  <35.578228, 31.720201, 32.354145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320763, 31.069527, 32.399052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006145, 31.309479, 32.340420>,  <34.817375, 31.453451, 32.305241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006145, 31.309479, 32.340420>,  <35.320763, 31.069527, 32.399052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006145, 31.309479, 32.340420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323372, -0.602329, -0.729816,
		-0.526093, -0.526634, 0.667745,
		-0.786547, 0.599880, -0.146583,
		34.770180, 31.489443, 32.296444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595360, 30.756918, 32.432514>,  <35.320763, 31.069527, 32.399052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595360, 30.756918, 32.432514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558514, 31.071663, 32.188427>,  <34.536407, 31.260509, 32.041977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558514, 31.071663, 32.188427>,  <34.595360, 30.756918, 32.432514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558514, 31.071663, 32.188427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276877, -0.608894, -0.743363,
		-0.956480, 0.100482, 0.273950,
		-0.092112, 0.786862, -0.610216,
		34.530880, 31.307722, 32.005363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075508, 30.514931, 32.015499>,  <34.595360, 30.756918, 32.432514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075508, 30.514931, 32.015499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171242, 30.852852, 31.824072>,  <34.228683, 31.055605, 31.709215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171242, 30.852852, 31.824072>,  <34.075508, 30.514931, 32.015499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171242, 30.852852, 31.824072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381619, -0.371379, -0.846430,
		-0.892796, 0.385212, 0.233508,
		0.239336, 0.844801, -0.478570,
		34.243042, 31.106293, 31.680500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451706, 30.795675, 31.701712>,  <34.075508, 30.514931, 32.015499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451706, 30.795675, 31.701712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745930, 30.955341, 31.482759>,  <33.922462, 31.051140, 31.351389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745930, 30.955341, 31.482759>,  <33.451706, 30.795675, 31.701712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745930, 30.955341, 31.482759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511626, -0.202319, -0.835048,
		-0.444066, 0.894279, 0.055405,
		0.735557, 0.399164, -0.547380,
		33.966599, 31.075090, 31.318546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129498, 31.004589, 30.993437>,  <33.451706, 30.795675, 31.701712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129498, 31.004589, 30.993437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521679, 30.984217, 30.917427>,  <33.756989, 30.971992, 30.871820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521679, 30.984217, 30.917427>,  <33.129498, 31.004589, 30.993437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521679, 30.984217, 30.917427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196075, -0.174132, -0.965004,
		0.016060, 0.983404, -0.180715,
		0.980457, -0.050932, -0.190024,
		33.815815, 30.968937, 30.860420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294422, 31.544044, 30.483904>,  <33.129498, 31.004589, 30.993437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294422, 31.544044, 30.483904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565071, 31.249557, 30.478624>,  <33.727459, 31.072866, 30.475456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565071, 31.249557, 30.478624>,  <33.294422, 31.544044, 30.483904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565071, 31.249557, 30.478624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182581, -0.150381, -0.971622,
		0.713338, 0.659828, -0.236169,
		0.676619, -0.736215, -0.013200,
		33.768055, 31.028692, 30.474665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755131, 31.764126, 29.913614>,  <33.294422, 31.544044, 30.483904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755131, 31.764126, 29.913614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794270, 31.370218, 29.971109>,  <33.817753, 31.133875, 30.005606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794270, 31.370218, 29.971109>,  <33.755131, 31.764126, 29.913614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794270, 31.370218, 29.971109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083186, -0.152017, -0.984871,
		0.991719, 0.084410, -0.096793,
		0.097848, -0.984767, 0.143736,
		33.823624, 31.074789, 30.014231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134773, 31.645409, 29.350166>,  <33.755131, 31.764126, 29.913614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134773, 31.645409, 29.350166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011703, 31.282598, 29.465155>,  <33.937862, 31.064913, 29.534147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011703, 31.282598, 29.465155>,  <34.134773, 31.645409, 29.350166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011703, 31.282598, 29.465155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028152, -0.293318, -0.955601,
		0.951076, -0.302103, 0.064711,
		-0.307671, -0.907027, 0.287472,
		33.919403, 31.010490, 29.551395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600243, 31.080353, 29.128122>,  <34.134773, 31.645409, 29.350166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600243, 31.080353, 29.128122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224850, 30.945925, 29.159885>,  <33.999615, 30.865269, 29.178944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224850, 30.945925, 29.159885>,  <34.600243, 31.080353, 29.128122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224850, 30.945925, 29.159885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027195, -0.301168, -0.953183,
		0.344250, -0.892388, 0.291781,
		-0.938484, -0.336069, 0.079409,
		33.943306, 30.845104, 29.183708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590282, 30.494066, 28.703859>,  <34.600243, 31.080353, 29.128122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590282, 30.494066, 28.703859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203220, 30.582018, 28.753319>,  <33.970982, 30.634789, 28.782995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203220, 30.582018, 28.753319>,  <34.590282, 30.494066, 28.703859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203220, 30.582018, 28.753319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171906, -0.216048, -0.961130,
		-0.184609, -0.951305, 0.246858,
		-0.967661, 0.219869, 0.123651,
		33.912922, 30.647982, 28.790413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220619, 29.927061, 28.359610>,  <34.590282, 30.494066, 28.703859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220619, 29.927061, 28.359610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945530, 30.216372, 28.384628>,  <33.780476, 30.389957, 28.399639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945530, 30.216372, 28.384628>,  <34.220619, 29.927061, 28.359610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945530, 30.216372, 28.384628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285692, -0.190430, -0.939210,
		-0.667397, -0.663785, 0.337597,
		-0.687722, 0.723275, 0.062546,
		33.739212, 30.433353, 28.403393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599312, 29.654129, 28.055485>,  <34.220619, 29.927061, 28.359610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599312, 29.654129, 28.055485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537659, 30.049335, 28.052090>,  <33.500668, 30.286459, 28.050053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537659, 30.049335, 28.052090>,  <33.599312, 29.654129, 28.055485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537659, 30.049335, 28.052090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475221, -0.081661, -0.876069,
		-0.866262, -0.130993, 0.482111,
		-0.154128, 0.988014, -0.008489,
		33.491421, 30.345739, 28.049543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930969, 29.637354, 27.803007>,  <33.599312, 29.654129, 28.055485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930969, 29.637354, 27.803007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101849, 29.995136, 27.750166>,  <33.204376, 30.209805, 27.718462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101849, 29.995136, 27.750166>,  <32.930969, 29.637354, 27.803007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101849, 29.995136, 27.750166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436701, 0.076187, -0.896375,
		-0.791702, 0.440620, 0.423156,
		0.427200, 0.894455, -0.132102,
		33.230007, 30.263474, 27.710535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381134, 30.091558, 27.823202>,  <32.930969, 29.637354, 27.803007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381134, 30.091558, 27.823202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692776, 30.233017, 27.616156>,  <32.879761, 30.317892, 27.491928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692776, 30.233017, 27.616156>,  <32.381134, 30.091558, 27.823202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692776, 30.233017, 27.616156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593921, 0.152150, -0.790005,
		-0.200626, 0.922922, 0.328579,
		0.779107, 0.353645, -0.517618,
		32.926506, 30.339111, 27.460871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049450, 30.610430, 27.344425>,  <32.381134, 30.091558, 27.823202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049450, 30.610430, 27.344425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411301, 30.524588, 27.197134>,  <32.628410, 30.473082, 27.108759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411301, 30.524588, 27.197134>,  <32.049450, 30.610430, 27.344425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411301, 30.524588, 27.197134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357985, 0.086260, -0.929734,
		0.231290, 0.972884, 0.001207,
		0.904628, -0.214606, -0.368229,
		32.682690, 30.460205, 27.086666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121471, 31.048925, 26.783209>,  <32.049450, 30.610430, 27.344425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121471, 31.048925, 26.783209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421513, 30.791958, 26.720407>,  <32.601536, 30.637777, 26.682726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421513, 30.791958, 26.720407>,  <32.121471, 31.048925, 26.783209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421513, 30.791958, 26.720407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046248, 0.185871, -0.981485,
		0.659706, 0.743472, 0.109711,
		0.750099, -0.642418, -0.157005,
		32.646542, 30.599232, 26.673306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625996, 31.425861, 26.366022>,  <32.121471, 31.048925, 26.783209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625996, 31.425861, 26.366022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654705, 31.032936, 26.296839>,  <32.671928, 30.797182, 26.255329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654705, 31.032936, 26.296839>,  <32.625996, 31.425861, 26.366022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654705, 31.032936, 26.296839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029400, 0.171245, -0.984790,
		0.996988, 0.075763, -0.016590,
		0.071769, -0.982311, -0.172957,
		32.676235, 30.738243, 26.244951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928001, 31.378223, 25.779936>,  <32.625996, 31.425861, 26.366022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928001, 31.378223, 25.779936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806095, 30.997826, 25.759043>,  <32.732952, 30.769587, 25.746508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806095, 30.997826, 25.759043>,  <32.928001, 31.378223, 25.779936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806095, 30.997826, 25.759043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211497, 0.121045, -0.969854,
		0.928649, -0.284529, -0.238022,
		-0.304763, -0.950995, -0.052232,
		32.714664, 30.712526, 25.743374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268398, 31.142401, 25.154301>,  <32.928001, 31.378223, 25.779936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268398, 31.142401, 25.154301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950001, 30.908232, 25.215853>,  <32.758965, 30.767731, 25.252785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950001, 30.908232, 25.215853>,  <33.268398, 31.142401, 25.154301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950001, 30.908232, 25.215853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241319, 0.073767, -0.967638,
		0.555127, -0.807364, -0.199991,
		-0.795989, -0.585424, 0.153882,
		32.711205, 30.732605, 25.262018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339115, 30.603651, 24.669674>,  <33.268398, 31.142401, 25.154301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339115, 30.603651, 24.669674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952030, 30.595585, 24.770174>,  <32.719780, 30.590746, 24.830473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952030, 30.595585, 24.770174>,  <33.339115, 30.603651, 24.669674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952030, 30.595585, 24.770174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244829, -0.161801, -0.955970,
		0.059931, -0.986617, 0.151639,
		-0.967712, -0.020167, 0.251249,
		32.661716, 30.589535, 24.845549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097694, 30.009249, 24.395878>,  <33.339115, 30.603651, 24.669674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097694, 30.009249, 24.395878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786072, 30.248911, 24.469730>,  <32.599098, 30.392708, 24.514042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786072, 30.248911, 24.469730>,  <33.097694, 30.009249, 24.395878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786072, 30.248911, 24.469730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268342, -0.052507, -0.961892,
		-0.566627, -0.798910, 0.201684,
		-0.779055, 0.599154, 0.184630,
		32.552357, 30.428658, 24.525120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482513, 29.690727, 24.059584>,  <33.097694, 30.009249, 24.395878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482513, 29.690727, 24.059584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413246, 30.082376, 24.102161>,  <32.371685, 30.317366, 24.127708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413246, 30.082376, 24.102161>,  <32.482513, 29.690727, 24.059584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413246, 30.082376, 24.102161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220936, 0.066703, -0.973005,
		-0.959791, -0.192015, 0.204773,
		-0.173172, 0.979123, 0.106444,
		32.361294, 30.376114, 24.134094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847727, 29.723822, 23.769890>,  <32.482513, 29.690727, 24.059584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847727, 29.723822, 23.769890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975763, 30.102764, 23.766960>,  <32.052586, 30.330130, 23.765202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975763, 30.102764, 23.766960>,  <31.847727, 29.723822, 23.769890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975763, 30.102764, 23.766960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266911, 0.082759, -0.960161,
		-0.909010, 0.309296, 0.279351,
		0.320093, 0.947358, -0.007326,
		32.071793, 30.386971, 23.764763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379089, 30.107737, 23.408367>,  <31.847727, 29.723822, 23.769890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379089, 30.107737, 23.408367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693905, 30.354322, 23.399065>,  <31.882793, 30.502274, 23.393484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693905, 30.354322, 23.399065>,  <31.379089, 30.107737, 23.408367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693905, 30.354322, 23.399065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246529, 0.279740, -0.927884,
		-0.565503, 0.736014, 0.372143,
		0.787039, 0.616465, -0.023255,
		31.930017, 30.539261, 23.392088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114090, 30.584671, 22.861084>,  <31.379089, 30.107737, 23.408367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114090, 30.584671, 22.861084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505907, 30.644943, 22.914433>,  <31.740997, 30.681107, 22.946442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505907, 30.644943, 22.914433>,  <31.114090, 30.584671, 22.861084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505907, 30.644943, 22.914433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073569, 0.348741, -0.934327,
		-0.187297, 0.925027, 0.330522,
		0.979544, 0.150681, 0.133372,
		31.799770, 30.690147, 22.954445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281416, 31.336708, 22.695385>,  <31.114090, 30.584671, 22.861084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281416, 31.336708, 22.695385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601456, 31.100948, 22.650759>,  <31.793480, 30.959492, 22.623983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601456, 31.100948, 22.650759>,  <31.281416, 31.336708, 22.695385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601456, 31.100948, 22.650759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122333, 0.342396, -0.931558,
		0.587258, 0.731693, 0.346054,
		0.800101, -0.589399, -0.111564,
		31.841486, 30.924129, 22.617289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767567, 31.816032, 22.648701>,  <31.281416, 31.336708, 22.695385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767567, 31.816032, 22.648701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880205, 31.469959, 22.482731>,  <31.947788, 31.262316, 22.383148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880205, 31.469959, 22.482731>,  <31.767567, 31.816032, 22.648701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880205, 31.469959, 22.482731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265785, 0.485835, -0.832660,
		0.921988, 0.124194, 0.366763,
		0.281598, -0.865182, -0.414925,
		31.964684, 31.210405, 22.358253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362698, 32.051342, 22.373144>,  <31.767567, 31.816032, 22.648701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362698, 32.051342, 22.373144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268402, 31.712362, 22.182875>,  <32.211826, 31.508976, 22.068714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268402, 31.712362, 22.182875>,  <32.362698, 32.051342, 22.373144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268402, 31.712362, 22.182875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174621, 0.444564, -0.878562,
		0.956000, -0.290170, 0.043183,
		-0.235735, -0.847446, -0.475673,
		32.197681, 31.458128, 22.040173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845093, 32.075439, 21.802431>,  <32.362698, 32.051342, 22.373144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845093, 32.075439, 21.802431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563831, 31.809267, 21.702211>,  <32.395077, 31.649563, 21.642080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563831, 31.809267, 21.702211>,  <32.845093, 32.075439, 21.802431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563831, 31.809267, 21.702211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025661, 0.328392, -0.944193,
		0.710578, -0.670339, -0.213834,
		-0.703151, -0.665435, -0.250550,
		32.352886, 31.609636, 21.627047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014034, 31.837490, 21.170200>,  <32.845093, 32.075439, 21.802431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014034, 31.837490, 21.170200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658176, 31.656008, 21.149454>,  <32.444664, 31.547119, 21.137007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658176, 31.656008, 21.149454>,  <33.014034, 31.837490, 21.170200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658176, 31.656008, 21.149454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046570, 0.022845, -0.998654,
		0.454279, -0.890859, 0.000805,
		-0.889641, -0.453705, -0.051865,
		32.391285, 31.519896, 21.133894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076286, 31.235994, 20.762632>,  <33.014034, 31.837490, 21.170200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076286, 31.235994, 20.762632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708881, 31.393351, 20.746723>,  <32.488438, 31.487764, 20.737179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708881, 31.393351, 20.746723>,  <33.076286, 31.235994, 20.762632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708881, 31.393351, 20.746723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124427, 0.192106, -0.973454,
		-0.375307, -0.899077, -0.225399,
		-0.918511, 0.393390, -0.039771,
		32.433327, 31.511368, 20.734793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856693, 31.133568, 20.137411>,  <33.076286, 31.235994, 20.762632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856693, 31.133568, 20.137411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556923, 31.380325, 20.233583>,  <32.377060, 31.528379, 20.291286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556923, 31.380325, 20.233583>,  <32.856693, 31.133568, 20.137411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556923, 31.380325, 20.233583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023016, 0.387193, -0.921711,
		-0.661694, -0.685216, -0.304369,
		-0.749421, 0.616896, 0.240432,
		32.332096, 31.565393, 20.305714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214592, 31.090590, 19.633011>,  <32.856693, 31.133568, 20.137411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214592, 31.090590, 19.633011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235676, 31.459187, 19.786932>,  <32.248325, 31.680344, 19.879286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235676, 31.459187, 19.786932>,  <32.214592, 31.090590, 19.633011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235676, 31.459187, 19.786932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166347, 0.388059, -0.906498,
		-0.984657, -0.016226, 0.173743,
		0.052714, 0.921492, 0.384804,
		32.251492, 31.735634, 19.902374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631138, 31.454275, 19.358774>,  <32.214592, 31.090590, 19.633011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631138, 31.454275, 19.358774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900440, 31.726088, 19.475368>,  <32.062023, 31.889175, 19.545326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900440, 31.726088, 19.475368>,  <31.631138, 31.454275, 19.358774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900440, 31.726088, 19.475368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121179, 0.490289, -0.863095,
		-0.729411, 0.545763, 0.412435,
		0.673257, 0.679529, 0.291487,
		32.102417, 31.929947, 19.562815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355923, 32.111687, 19.298296>,  <31.631138, 31.454275, 19.358774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355923, 32.111687, 19.298296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754171, 32.149014, 19.300621>,  <31.993120, 32.171410, 19.302015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754171, 32.149014, 19.300621>,  <31.355923, 32.111687, 19.298296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754171, 32.149014, 19.300621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040270, 0.484105, -0.874083,
		-0.084376, 0.870020, 0.485742,
		0.995620, 0.093313, 0.005811,
		32.052856, 32.177006, 19.302364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574377, 32.835690, 19.235008>,  <31.355923, 32.111687, 19.298296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574377, 32.835690, 19.235008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841951, 32.578682, 19.085503>,  <32.002495, 32.424477, 18.995800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841951, 32.578682, 19.085503>,  <31.574377, 32.835690, 19.235008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841951, 32.578682, 19.085503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106066, 0.415175, -0.903537,
		0.735714, 0.644051, 0.209576,
		0.668935, -0.642517, -0.373762,
		32.042633, 32.385925, 18.973373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221348, 33.290493, 19.051903>,  <31.574377, 32.835690, 19.235008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221348, 33.290493, 19.051903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141548, 32.976940, 18.816706>,  <32.093666, 32.788811, 18.675589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141548, 32.976940, 18.816706>,  <32.221348, 33.290493, 19.051903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141548, 32.976940, 18.816706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106741, 0.613868, -0.782159,
		0.974066, -0.093281, -0.206141,
		-0.199503, -0.783878, -0.587991,
		32.081696, 32.741776, 18.640308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557480, 33.286404, 18.410419>,  <32.221348, 33.290493, 19.051903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557480, 33.286404, 18.410419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218674, 33.076057, 18.379360>,  <32.015388, 32.949848, 18.360723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218674, 33.076057, 18.379360>,  <32.557480, 33.286404, 18.410419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218674, 33.076057, 18.379360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391777, 0.716298, -0.577433,
		0.359273, -0.458673, -0.812737,
		-0.847015, -0.525868, -0.077649,
		31.964569, 32.918297, 18.356066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344044, 33.318615, 17.757303>,  <32.557480, 33.286404, 18.410419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344044, 33.318615, 17.757303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036034, 33.282196, 18.009899>,  <31.851229, 33.260345, 18.161457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036034, 33.282196, 18.009899>,  <32.344044, 33.318615, 17.757303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036034, 33.282196, 18.009899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454663, 0.772678, -0.443001,
		-0.447605, -0.628235, -0.636373,
		-0.770020, -0.091046, 0.631489,
		31.805027, 33.254883, 18.199347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692017, 33.277763, 17.537617>,  <32.344044, 33.318615, 17.757303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692017, 33.277763, 17.537617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708797, 33.505173, 17.866257>,  <31.718866, 33.641617, 18.063440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708797, 33.505173, 17.866257>,  <31.692017, 33.277763, 17.537617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708797, 33.505173, 17.866257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651304, 0.639149, -0.409013,
		-0.757656, -0.517953, 0.397092,
		0.041952, 0.568519, 0.821600,
		31.721382, 33.675728, 18.112736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039289, 33.445812, 17.799044>,  <31.692017, 33.277763, 17.537617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039289, 33.445812, 17.799044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290937, 33.745403, 17.882217>,  <31.441927, 33.925159, 17.932121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290937, 33.745403, 17.882217>,  <31.039289, 33.445812, 17.799044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290937, 33.745403, 17.882217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654482, 0.654725, -0.378138,
		-0.419357, 0.101805, 0.902095,
		0.629121, 0.748980, 0.207934,
		31.479673, 33.970097, 17.944597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922945, 33.932693, 18.394085>,  <31.039289, 33.445812, 17.799044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922945, 33.932693, 18.394085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746904, 34.103836, 18.709869>,  <30.641281, 34.206520, 18.899340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746904, 34.103836, 18.709869>,  <30.922945, 33.932693, 18.394085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746904, 34.103836, 18.709869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840352, -0.113554, 0.530013,
		0.316416, 0.896685, -0.309576,
		-0.440101, 0.427858, 0.789461,
		30.614874, 34.232193, 18.946709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302702, 34.516106, 18.679148>,  <30.922945, 33.932693, 18.394085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302702, 34.516106, 18.679148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100927, 34.340641, 18.976635>,  <30.979862, 34.235363, 19.155127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100927, 34.340641, 18.976635>,  <31.302702, 34.516106, 18.679148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100927, 34.340641, 18.976635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820058, 0.026220, 0.571680,
		-0.270275, 0.898269, 0.346503,
		-0.504437, -0.438663, 0.743719,
		30.949596, 34.209042, 19.199751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303839, 34.922050, 19.121616>,  <31.302702, 34.516106, 18.679148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303839, 34.922050, 19.121616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257587, 34.579254, 19.322491>,  <31.229837, 34.373577, 19.443016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257587, 34.579254, 19.322491>,  <31.303839, 34.922050, 19.121616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257587, 34.579254, 19.322491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850060, 0.176162, 0.496352,
		-0.513837, 0.484280, 0.708127,
		-0.115628, -0.856995, 0.502185,
		31.222898, 34.322155, 19.473146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090542, 35.030602, 19.866318>,  <31.303839, 34.922050, 19.121616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090542, 35.030602, 19.866318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293779, 34.688492, 19.825640>,  <31.415722, 34.483227, 19.801233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293779, 34.688492, 19.825640>,  <31.090542, 35.030602, 19.866318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293779, 34.688492, 19.825640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615468, 0.277935, 0.737530,
		-0.602529, -0.437323, 0.667613,
		0.508092, -0.855278, -0.101694,
		31.446207, 34.431908, 19.795132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980511, 34.711723, 20.419563>,  <31.090542, 35.030602, 19.866318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980511, 34.711723, 20.419563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316725, 34.543289, 20.283216>,  <31.518454, 34.442230, 20.201408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316725, 34.543289, 20.283216>,  <30.980511, 34.711723, 20.419563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316725, 34.543289, 20.283216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460435, 0.223685, 0.859049,
		-0.285484, -0.879007, 0.381896,
		0.840535, -0.421083, -0.340867,
		31.568886, 34.416965, 20.180956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132498, 34.298920, 20.929193>,  <30.980511, 34.711723, 20.419563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132498, 34.298920, 20.929193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471359, 34.357277, 20.724821>,  <31.674675, 34.392292, 20.602198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471359, 34.357277, 20.724821>,  <31.132498, 34.298920, 20.929193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471359, 34.357277, 20.724821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509638, 0.048975, 0.858994,
		0.150342, -0.988088, -0.032862,
		0.847152, 0.145890, -0.510930,
		31.725504, 34.401043, 20.571543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532965, 33.801571, 21.190540>,  <31.132498, 34.298920, 20.929193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532965, 33.801571, 21.190540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769239, 34.088650, 21.043030>,  <31.911005, 34.260899, 20.954523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769239, 34.088650, 21.043030>,  <31.532965, 33.801571, 21.190540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769239, 34.088650, 21.043030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617161, -0.107426, 0.779469,
		0.519809, -0.688016, -0.506392,
		0.590687, 0.717700, -0.368776,
		31.946445, 34.303959, 20.932398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250916, 33.576454, 21.312346>,  <31.532965, 33.801571, 21.190540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250916, 33.576454, 21.312346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270363, 33.973289, 21.266035>,  <32.282032, 34.211391, 21.238249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270363, 33.973289, 21.266035>,  <32.250916, 33.576454, 21.312346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270363, 33.973289, 21.266035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662650, 0.054694, 0.746929,
		0.747349, -0.113033, -0.654746,
		0.048617, 0.992085, -0.115777,
		32.284946, 34.270916, 21.231302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965240, 33.785030, 21.254452>,  <32.250916, 33.576454, 21.312346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965240, 33.785030, 21.254452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759548, 34.098640, 21.393517>,  <32.636135, 34.286808, 21.476955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759548, 34.098640, 21.393517>,  <32.965240, 33.785030, 21.254452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759548, 34.098640, 21.393517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586848, 0.026045, 0.809278,
		0.625442, 0.620178, -0.473499,
		-0.514229, 0.784029, 0.347661,
		32.605278, 34.333851, 21.497814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419632, 34.146618, 21.700493>,  <32.965240, 33.785030, 21.254452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419632, 34.146618, 21.700493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091377, 34.351955, 21.800920>,  <32.894424, 34.475159, 21.861177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091377, 34.351955, 21.800920>,  <33.419632, 34.146618, 21.700493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091377, 34.351955, 21.800920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432912, 0.271669, 0.859525,
		0.373027, 0.814046, -0.445175,
		-0.820633, 0.513347, 0.251070,
		32.845188, 34.505959, 21.876242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618507, 34.795700, 22.063377>,  <33.419632, 34.146618, 21.700493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618507, 34.795700, 22.063377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233238, 34.766468, 22.166880>,  <33.002075, 34.748928, 22.228981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233238, 34.766468, 22.166880>,  <33.618507, 34.795700, 22.063377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233238, 34.766468, 22.166880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242682, 0.178028, 0.953631,
		-0.115755, 0.981308, -0.153737,
		-0.963175, -0.073078, 0.258754,
		32.944286, 34.744545, 22.244505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474270, 35.376358, 22.477919>,  <33.618507, 34.795700, 22.063377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474270, 35.376358, 22.477919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194874, 35.109608, 22.581755>,  <33.027237, 34.949558, 22.644056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194874, 35.109608, 22.581755>,  <33.474270, 35.376358, 22.477919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194874, 35.109608, 22.581755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212032, 0.153603, 0.965116,
		-0.683488, 0.729165, 0.034109,
		-0.698489, -0.666877, 0.259592,
		32.985329, 34.909546, 22.659632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215256, 35.630451, 23.016283>,  <33.474270, 35.376358, 22.477919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215256, 35.630451, 23.016283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061321, 35.263142, 23.053534>,  <32.968960, 35.042755, 23.075884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061321, 35.263142, 23.053534>,  <33.215256, 35.630451, 23.016283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061321, 35.263142, 23.053534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063875, 0.074156, 0.995199,
		-0.920772, 0.388936, 0.030117,
		-0.384835, -0.918276, 0.093124,
		32.945869, 34.987659, 23.081470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687775, 35.636478, 23.524263>,  <33.215256, 35.630451, 23.016283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687775, 35.636478, 23.524263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773121, 35.245693, 23.522203>,  <32.824329, 35.011223, 23.520967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773121, 35.245693, 23.522203>,  <32.687775, 35.636478, 23.524263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773121, 35.245693, 23.522203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016844, -0.008950, 0.999818,
		-0.976828, -0.213235, -0.018365,
		0.213361, -0.976960, -0.005151,
		32.837128, 34.952606, 23.520658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211018, 35.180138, 23.891592>,  <32.687775, 35.636478, 23.524263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211018, 35.180138, 23.891592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550987, 34.969604, 23.901382>,  <32.754971, 34.843285, 23.907257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550987, 34.969604, 23.901382>,  <32.211018, 35.180138, 23.891592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550987, 34.969604, 23.901382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143198, -0.186037, 0.972052,
		-0.507069, -0.829678, -0.233488,
		0.849927, -0.526332, 0.024475,
		32.805965, 34.811707, 23.908726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015167, 34.590324, 24.345085>,  <32.211018, 35.180138, 23.891592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015167, 34.590324, 24.345085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411987, 34.637394, 24.327227>,  <32.650078, 34.665638, 24.316511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411987, 34.637394, 24.327227>,  <32.015167, 34.590324, 24.345085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411987, 34.637394, 24.327227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052732, -0.066515, 0.996391,
		0.114285, -0.990821, -0.072192,
		0.992047, 0.117680, -0.044646,
		32.709602, 34.672699, 24.313833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319115, 34.147087, 24.792875>,  <32.015167, 34.590324, 24.345085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319115, 34.147087, 24.792875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619923, 34.409668, 24.769106>,  <32.800407, 34.567215, 24.754845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619923, 34.409668, 24.769106>,  <32.319115, 34.147087, 24.792875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619923, 34.409668, 24.769106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133100, -0.062940, 0.989102,
		0.645559, -0.751737, -0.134707,
		0.752023, 0.656453, -0.059425,
		32.845528, 34.606606, 24.751278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964951, 33.785263, 25.078064>,  <32.319115, 34.147087, 24.792875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964951, 33.785263, 25.078064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023663, 34.179882, 25.106852>,  <33.058891, 34.416653, 25.124125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023663, 34.179882, 25.106852>,  <32.964951, 33.785263, 25.078064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023663, 34.179882, 25.106852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282684, -0.111561, 0.952704,
		0.947916, -0.119497, -0.295256,
		0.146784, 0.986547, 0.071970,
		33.067699, 34.475845, 25.128443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378471, 33.808681, 25.622303>,  <32.964951, 33.785263, 25.078064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378471, 33.808681, 25.622303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288128, 34.196545, 25.584881>,  <33.233921, 34.429264, 25.562428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288128, 34.196545, 25.584881>,  <33.378471, 33.808681, 25.622303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288128, 34.196545, 25.584881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040549, 0.105311, 0.993612,
		0.973317, 0.220619, -0.063104,
		-0.225855, 0.969658, -0.093555,
		33.220371, 34.487442, 25.556814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833797, 34.175838, 26.089094>,  <33.378471, 33.808681, 25.622303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833797, 34.175838, 26.089094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536957, 34.440758, 26.047838>,  <33.358852, 34.599709, 26.023085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536957, 34.440758, 26.047838>,  <33.833797, 34.175838, 26.089094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536957, 34.440758, 26.047838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031993, 0.188699, 0.981514,
		0.669521, 0.725085, -0.161223,
		-0.742104, 0.662302, -0.103141,
		33.314327, 34.639450, 26.016895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030670, 34.798916, 26.441235>,  <33.833797, 34.175838, 26.089094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030670, 34.798916, 26.441235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632862, 34.821995, 26.406376>,  <33.394176, 34.835842, 26.385460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632862, 34.821995, 26.406376>,  <34.030670, 34.798916, 26.441235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632862, 34.821995, 26.406376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061993, 0.345663, 0.936309,
		0.084150, 0.936583, -0.340193,
		-0.994523, 0.057701, -0.087149,
		33.334507, 34.839306, 26.380232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951778, 35.544003, 26.701735>,  <34.030670, 34.798916, 26.441235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951778, 35.544003, 26.701735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609318, 35.339310, 26.730413>,  <33.403843, 35.216496, 26.747620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609318, 35.339310, 26.730413>,  <33.951778, 35.544003, 26.701735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609318, 35.339310, 26.730413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096505, 0.294657, 0.950718,
		-0.507635, 0.807038, -0.301655,
		-0.856150, -0.511729, 0.071695,
		33.352474, 35.185791, 26.751923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568466, 35.989590, 27.123930>,  <33.951778, 35.544003, 26.701735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568466, 35.989590, 27.123930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386810, 35.633244, 27.128330>,  <33.277817, 35.419437, 27.130970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386810, 35.633244, 27.128330>,  <33.568466, 35.989590, 27.123930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386810, 35.633244, 27.128330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240281, 0.134361, 0.961360,
		-0.857916, 0.433952, -0.275076,
		-0.454143, -0.890861, 0.011000,
		33.250568, 35.365986, 27.131630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891636, 36.161259, 27.401606>,  <33.568466, 35.989590, 27.123930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891636, 36.161259, 27.401606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981068, 35.772690, 27.433470>,  <33.034729, 35.539547, 27.452589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981068, 35.772690, 27.433470>,  <32.891636, 36.161259, 27.401606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981068, 35.772690, 27.433470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290199, 0.011676, 0.956895,
		-0.930481, -0.237064, -0.279296,
		0.223584, -0.971424, 0.079660,
		33.048141, 35.481262, 27.457367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298847, 35.972240, 27.732063>,  <32.891636, 36.161259, 27.401606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298847, 35.972240, 27.732063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557838, 35.670910, 27.778137>,  <32.713234, 35.490112, 27.805782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557838, 35.670910, 27.778137>,  <32.298847, 35.972240, 27.732063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557838, 35.670910, 27.778137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278347, -0.093067, 0.955961,
		-0.709435, -0.651024, -0.269945,
		0.647477, -0.753331, 0.115186,
		32.752083, 35.444912, 27.812693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060501, 35.431587, 28.155533>,  <32.298847, 35.972240, 27.732063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060501, 35.431587, 28.155533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457077, 35.410824, 28.203447>,  <32.695023, 35.398365, 28.232195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457077, 35.410824, 28.203447>,  <32.060501, 35.431587, 28.155533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457077, 35.410824, 28.203447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118869, 0.020376, 0.992701,
		-0.053969, -0.998444, 0.014032,
		0.991442, -0.051907, 0.119784,
		32.754509, 35.395252, 28.239382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117184, 34.869194, 28.644587>,  <32.060501, 35.431587, 28.155533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117184, 34.869194, 28.644587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458248, 35.074905, 28.681427>,  <32.662888, 35.198334, 28.703531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458248, 35.074905, 28.681427>,  <32.117184, 34.869194, 28.644587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458248, 35.074905, 28.681427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140265, 0.055520, 0.988556,
		0.503285, -0.855821, 0.119476,
		0.852661, 0.514283, 0.092099,
		32.714046, 35.229191, 28.709057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387188, 34.560520, 29.207207>,  <32.117184, 34.869194, 28.644587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387188, 34.560520, 29.207207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640575, 34.870026, 29.206299>,  <32.792606, 35.055729, 29.205753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640575, 34.870026, 29.206299>,  <32.387188, 34.560520, 29.207207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640575, 34.870026, 29.206299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040423, -0.030163, 0.998727,
		0.772711, -0.632755, -0.050385,
		0.633469, 0.773764, -0.002271,
		32.830616, 35.102154, 29.205618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926605, 34.334946, 29.643227>,  <32.387188, 34.560520, 29.207207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926605, 34.334946, 29.643227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982513, 34.730698, 29.627220>,  <33.016056, 34.968147, 29.617617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982513, 34.730698, 29.627220>,  <32.926605, 34.334946, 29.643227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982513, 34.730698, 29.627220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240371, 0.005302, 0.970666,
		0.960566, -0.145285, -0.237076,
		0.139766, 0.989375, -0.040015,
		33.024445, 35.027512, 29.615215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553379, 34.505913, 30.014606>,  <32.926605, 34.334946, 29.643227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553379, 34.505913, 30.014606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356030, 34.853645, 30.002998>,  <33.237621, 35.062286, 29.996035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356030, 34.853645, 30.002998>,  <33.553379, 34.505913, 30.014606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356030, 34.853645, 30.002998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298926, 0.200791, 0.932913,
		0.816839, 0.451601, -0.358931,
		-0.493374, 0.869333, -0.029019,
		33.208015, 35.114445, 29.994293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013077, 35.049400, 30.212502>,  <33.553379, 34.505913, 30.014606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013077, 35.049400, 30.212502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652142, 35.208260, 30.279503>,  <33.435581, 35.303574, 30.319704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652142, 35.208260, 30.279503>,  <34.013077, 35.049400, 30.212502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652142, 35.208260, 30.279503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232328, 0.120813, 0.965105,
		0.363053, 0.909768, -0.201283,
		-0.902339, 0.397148, 0.167503,
		33.381439, 35.327404, 30.329754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103344, 35.672279, 30.581768>,  <34.013077, 35.049400, 30.212502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103344, 35.672279, 30.581768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719292, 35.585224, 30.651958>,  <33.488861, 35.532993, 30.694073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719292, 35.585224, 30.651958>,  <34.103344, 35.672279, 30.581768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719292, 35.585224, 30.651958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149528, 0.130580, 0.980097,
		-0.236217, 0.967256, -0.092831,
		-0.960127, -0.217635, 0.175477,
		33.431255, 35.519932, 30.704601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838474, 36.267345, 31.093363>,  <34.103344, 35.672279, 30.581768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838474, 36.267345, 31.093363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553905, 35.987267, 31.117374>,  <33.383163, 35.819218, 31.131783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553905, 35.987267, 31.117374>,  <33.838474, 36.267345, 31.093363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553905, 35.987267, 31.117374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190085, 0.273959, 0.942770,
		-0.676570, 0.659296, -0.327997,
		-0.711422, -0.700197, 0.060031,
		33.340481, 35.777206, 31.135384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243427, 36.546627, 31.492918>,  <33.838474, 36.267345, 31.093363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243427, 36.546627, 31.492918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186340, 36.153496, 31.539690>,  <33.152088, 35.917618, 31.567753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186340, 36.153496, 31.539690>,  <33.243427, 36.546627, 31.492918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186340, 36.153496, 31.539690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054446, 0.125754, 0.990566,
		-0.988265, 0.135004, -0.071459,
		-0.142717, -0.982832, 0.116928,
		33.143524, 35.858646, 31.574768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703457, 36.434200, 32.087257>,  <33.243427, 36.546627, 31.492918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703457, 36.434200, 32.087257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923992, 36.108440, 32.014832>,  <33.056313, 35.912987, 31.971376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923992, 36.108440, 32.014832>,  <32.703457, 36.434200, 32.087257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923992, 36.108440, 32.014832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072095, -0.169712, 0.982853,
		-0.831161, -0.554939, -0.034855,
		0.551339, -0.814396, -0.181066,
		33.089394, 35.864120, 31.960512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401924, 35.856621, 32.576984>,  <32.703457, 36.434200, 32.087257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401924, 35.856621, 32.576984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765316, 35.745140, 32.452415>,  <32.983353, 35.678253, 32.377674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765316, 35.745140, 32.452415>,  <32.401924, 35.856621, 32.576984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765316, 35.745140, 32.452415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288738, -0.120167, 0.949837,
		-0.302146, -0.952830, -0.028697,
		0.908481, -0.278703, -0.311426,
		33.037861, 35.661530, 32.358986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664135, 35.472580, 33.091984>,  <32.401924, 35.856621, 32.576984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664135, 35.472580, 33.091984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009514, 35.559105, 32.909698>,  <33.216740, 35.611019, 32.800327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009514, 35.559105, 32.909698>,  <32.664135, 35.472580, 33.091984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009514, 35.559105, 32.909698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479381, -0.070653, 0.874758,
		0.157020, -0.973765, -0.164700,
		0.863446, 0.216309, -0.455710,
		33.268547, 35.623997, 32.772984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270905, 34.913559, 33.213383>,  <32.664135, 35.472580, 33.091984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270905, 34.913559, 33.213383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454205, 35.260250, 33.134594>,  <33.564186, 35.468266, 33.087322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454205, 35.260250, 33.134594>,  <33.270905, 34.913559, 33.213383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454205, 35.260250, 33.134594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587275, -0.128908, 0.799056,
		0.667170, -0.481842, -0.568077,
		0.458249, 0.866724, -0.196970,
		33.591679, 35.520267, 33.075504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981903, 34.779484, 33.311153>,  <33.270905, 34.913559, 33.213383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981903, 34.779484, 33.311153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931789, 35.174980, 33.343876>,  <33.901722, 35.412277, 33.363510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931789, 35.174980, 33.343876>,  <33.981903, 34.779484, 33.311153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931789, 35.174980, 33.343876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739510, 0.038103, 0.672066,
		0.661383, 0.144697, -0.735959,
		-0.125288, 0.988742, 0.081804,
		33.894203, 35.471603, 33.368416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686829, 35.058590, 33.363396>,  <33.981903, 34.779484, 33.311153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686829, 35.058590, 33.363396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458748, 35.352283, 33.510777>,  <34.321899, 35.528500, 33.599205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458748, 35.352283, 33.510777>,  <34.686829, 35.058590, 33.363396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458748, 35.352283, 33.510777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686617, 0.179714, 0.704457,
		0.451023, 0.654673, -0.606615,
		-0.570206, 0.734238, 0.368455,
		34.287685, 35.572556, 33.621311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168022, 35.671841, 33.424660>,  <34.686829, 35.058590, 33.363396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168022, 35.671841, 33.424660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856117, 35.697933, 33.673725>,  <34.668972, 35.713589, 33.823166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856117, 35.697933, 33.673725>,  <35.168022, 35.671841, 33.424660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856117, 35.697933, 33.673725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626028, 0.069526, 0.776695,
		0.007372, 0.995445, -0.095049,
		-0.779766, 0.065229, 0.622664,
		34.622189, 35.717503, 33.860523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322376, 36.297211, 33.827335>,  <35.168022, 35.671841, 33.424660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322376, 36.297211, 33.827335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071877, 36.047092, 34.013592>,  <34.921577, 35.897022, 34.125343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071877, 36.047092, 34.013592>,  <35.322376, 36.297211, 33.827335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071877, 36.047092, 34.013592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518405, 0.112101, 0.847755,
		-0.582296, 0.772295, 0.253953,
		-0.626249, -0.625295, 0.465638,
		34.884003, 35.859505, 34.153282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137428, 36.629402, 33.802639>,  <35.322376, 36.297211, 33.827335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137428, 36.629402, 33.802639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531689, 36.696712, 33.808006>,  <36.768246, 36.737099, 33.811226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531689, 36.696712, 33.808006>,  <36.137428, 36.629402, 33.802639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531689, 36.696712, 33.808006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055082, 0.395747, -0.916706,
		-0.159574, 0.902810, 0.399337,
		0.985648, 0.168279, 0.013422,
		36.827385, 36.747196, 33.812035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209236, 37.275261, 33.574047>,  <36.137428, 36.629402, 33.802639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209236, 37.275261, 33.574047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561924, 37.095818, 33.515625>,  <36.773537, 36.988152, 33.480572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561924, 37.095818, 33.515625>,  <36.209236, 37.275261, 33.574047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561924, 37.095818, 33.515625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026295, 0.355823, -0.934184,
		0.471049, 0.819843, 0.325531,
		0.881715, -0.448606, -0.146052,
		36.826439, 36.961235, 33.471809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546951, 37.718884, 33.084160>,  <36.209236, 37.275261, 33.574047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546951, 37.718884, 33.084160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763885, 37.383026, 33.072334>,  <36.894047, 37.181511, 33.065239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763885, 37.383026, 33.072334>,  <36.546951, 37.718884, 33.084160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763885, 37.383026, 33.072334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165447, 0.141230, -0.976054,
		0.823708, 0.524461, 0.215511,
		0.542339, -0.839639, -0.029562,
		36.926586, 37.131134, 33.063465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241070, 37.882370, 32.813950>,  <36.546951, 37.718884, 33.084160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241070, 37.882370, 32.813950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186859, 37.489666, 32.760624>,  <37.154331, 37.254044, 32.728626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186859, 37.489666, 32.760624>,  <37.241070, 37.882370, 32.813950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186859, 37.489666, 32.760624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250011, 0.096316, -0.963440,
		0.958711, -0.163901, 0.232398,
		-0.135525, -0.981764, -0.133316,
		37.146202, 37.195137, 32.720631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845982, 37.559612, 32.411297>,  <37.241070, 37.882370, 32.813950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845982, 37.559612, 32.411297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555916, 37.287670, 32.367611>,  <37.381878, 37.124504, 32.341400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555916, 37.287670, 32.367611>,  <37.845982, 37.559612, 32.411297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555916, 37.287670, 32.367611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133885, 0.016375, -0.990862,
		0.675435, -0.733160, 0.079149,
		-0.725164, -0.679859, -0.109219,
		37.338367, 37.083714, 32.334846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173222, 37.017963, 32.057842>,  <37.845982, 37.559612, 32.411297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173222, 37.017963, 32.057842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779182, 37.007046, 31.989927>,  <37.542759, 37.000496, 31.949177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779182, 37.007046, 31.989927>,  <38.173222, 37.017963, 32.057842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779182, 37.007046, 31.989927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171684, -0.099156, -0.980149,
		0.009916, -0.994698, 0.102365,
		-0.985102, -0.027294, -0.169791,
		37.483650, 36.998859, 31.938990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958801, 36.369061, 31.599243>,  <38.173222, 37.017963, 32.057842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958801, 36.369061, 31.599243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673908, 36.644470, 31.544605>,  <37.502972, 36.809715, 31.511822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673908, 36.644470, 31.544605>,  <37.958801, 36.369061, 31.599243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673908, 36.644470, 31.544605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103627, -0.089327, -0.990597,
		-0.694249, -0.719694, -0.007727,
		-0.712236, 0.688521, -0.136595,
		37.460236, 36.851028, 31.503626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440414, 35.974579, 31.286543>,  <37.958801, 36.369061, 31.599243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440414, 35.974579, 31.286543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374229, 36.355331, 31.183353>,  <37.334518, 36.583782, 31.121439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374229, 36.355331, 31.183353>,  <37.440414, 35.974579, 31.286543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374229, 36.355331, 31.183353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175084, -0.285777, -0.942166,
		-0.970550, -0.110725, 0.213943,
		-0.165462, 0.951878, -0.257975,
		37.324593, 36.640896, 31.105961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928585, 35.849438, 30.825115>,  <37.440414, 35.974579, 31.286543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928585, 35.849438, 30.825115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011848, 36.233322, 30.749622>,  <37.061806, 36.463654, 30.704327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011848, 36.233322, 30.749622>,  <36.928585, 35.849438, 30.825115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011848, 36.233322, 30.749622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179149, -0.152284, -0.971965,
		-0.961548, 0.236137, 0.140232,
		0.208162, 0.959713, -0.188732,
		37.074295, 36.521236, 30.693003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389713, 36.219921, 30.486219>,  <36.928585, 35.849438, 30.825115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389713, 36.219921, 30.486219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726051, 36.411835, 30.385994>,  <36.927856, 36.526981, 30.325859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726051, 36.411835, 30.385994>,  <36.389713, 36.219921, 30.486219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726051, 36.411835, 30.385994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263869, -0.040838, -0.963694,
		-0.472595, 0.876437, 0.092260,
		0.840849, 0.479782, -0.250564,
		36.978306, 36.555771, 30.310825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166958, 36.344357, 29.887686>,  <36.389713, 36.219921, 30.486219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166958, 36.344357, 29.887686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528297, 36.510590, 29.845242>,  <36.745102, 36.610329, 29.819775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528297, 36.510590, 29.845242>,  <36.166958, 36.344357, 29.887686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528297, 36.510590, 29.845242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154598, 0.084716, -0.984339,
		-0.400084, 0.905602, 0.140776,
		0.903345, 0.415582, -0.106111,
		36.799301, 36.635265, 29.813408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096550, 37.076183, 29.574076>,  <36.166958, 36.344357, 29.887686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096550, 37.076183, 29.574076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444191, 36.896137, 29.492033>,  <36.652775, 36.788109, 29.442808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444191, 36.896137, 29.492033>,  <36.096550, 37.076183, 29.574076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444191, 36.896137, 29.492033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209455, 0.040758, -0.976969,
		0.448103, 0.892042, -0.058855,
		0.869098, -0.450111, -0.205106,
		36.704922, 36.761105, 29.430502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345276, 37.418793, 29.007023>,  <36.096550, 37.076183, 29.574076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345276, 37.418793, 29.007023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526009, 37.063057, 29.035080>,  <36.634449, 36.849613, 29.051914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526009, 37.063057, 29.035080>,  <36.345276, 37.418793, 29.007023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526009, 37.063057, 29.035080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055524, -0.106506, -0.992761,
		0.890374, 0.444665, -0.097502,
		0.451830, -0.889342, 0.070141,
		36.661556, 36.796253, 29.056122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795712, 37.566753, 28.430593>,  <36.345276, 37.418793, 29.007023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795712, 37.566753, 28.430593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785492, 37.174026, 28.505840>,  <36.779362, 36.938393, 28.550987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785492, 37.174026, 28.505840>,  <36.795712, 37.566753, 28.430593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785492, 37.174026, 28.505840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106502, -0.184432, -0.977058,
		0.993984, -0.044997, -0.099854,
		-0.025548, -0.981815, 0.188115,
		36.777828, 36.879482, 28.562275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384460, 37.260639, 28.039251>,  <36.795712, 37.566753, 28.430593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384460, 37.260639, 28.039251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126137, 36.972614, 28.140793>,  <36.971142, 36.799801, 28.201717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126137, 36.972614, 28.140793>,  <37.384460, 37.260639, 28.039251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126137, 36.972614, 28.140793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285545, -0.080570, -0.954972,
		0.708092, -0.689216, -0.153577,
		-0.645809, -0.720062, 0.253854,
		36.932396, 36.756596, 28.216949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376144, 36.797501, 27.459286>,  <37.384460, 37.260639, 28.039251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376144, 36.797501, 27.459286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043888, 36.692528, 27.655722>,  <36.844536, 36.629543, 27.773582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043888, 36.692528, 27.655722>,  <37.376144, 36.797501, 27.459286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043888, 36.692528, 27.655722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405055, -0.320376, -0.856323,
		0.382061, -0.910213, 0.159816,
		-0.830638, -0.262434, 0.491090,
		36.794697, 36.613796, 27.803049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144085, 36.246815, 27.072954>,  <37.376144, 36.797501, 27.459286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144085, 36.246815, 27.072954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808254, 36.338020, 27.270182>,  <36.606754, 36.392742, 27.388517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808254, 36.338020, 27.270182>,  <37.144085, 36.246815, 27.072954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808254, 36.338020, 27.270182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542591, -0.307762, -0.781586,
		-0.026465, -0.923738, 0.382109,
		-0.839580, 0.228014, 0.493067,
		36.556381, 36.406425, 27.418102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651974, 35.683537, 26.938173>,  <37.144085, 36.246815, 27.072954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651974, 35.683537, 26.938173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459133, 36.027897, 27.003208>,  <36.343430, 36.234512, 27.042229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459133, 36.027897, 27.003208>,  <36.651974, 35.683537, 26.938173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459133, 36.027897, 27.003208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446343, -0.081656, -0.891129,
		-0.753896, -0.502181, 0.423622,
		-0.482099, 0.860899, 0.162585,
		36.314503, 36.286167, 27.051983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974426, 35.450409, 26.789150>,  <36.651974, 35.683537, 26.938173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974426, 35.450409, 26.789150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956413, 35.849884, 26.779367>,  <35.945606, 36.089569, 26.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956413, 35.849884, 26.779367>,  <35.974426, 35.450409, 26.789150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956413, 35.849884, 26.779367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424353, -0.041286, -0.904555,
		-0.904376, -0.030361, 0.425655,
		-0.045037, 0.998686, -0.024455,
		35.942902, 36.149490, 26.772032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227875, 35.665867, 26.770796>,  <35.974426, 35.450409, 26.789150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227875, 35.665867, 26.770796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433903, 35.978981, 26.631105>,  <35.557518, 36.166847, 26.547291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433903, 35.978981, 26.631105>,  <35.227875, 35.665867, 26.770796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433903, 35.978981, 26.631105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512239, -0.045566, -0.857633,
		-0.687253, 0.620626, 0.377502,
		0.515068, 0.782782, -0.349224,
		35.588425, 36.213814, 26.526339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710938, 36.064728, 26.459074>,  <35.227875, 35.665867, 26.770796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710938, 36.064728, 26.459074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075516, 36.169365, 26.332056>,  <35.294262, 36.232147, 26.255844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075516, 36.169365, 26.332056>,  <34.710938, 36.064728, 26.459074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075516, 36.169365, 26.332056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322373, -0.025458, -0.946270,
		-0.255621, 0.964843, 0.061126,
		0.911446, 0.261592, -0.317547,
		35.348949, 36.247841, 26.236792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671329, 36.566753, 25.993027>,  <34.710938, 36.064728, 26.459074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671329, 36.566753, 25.993027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010769, 36.374767, 25.904020>,  <35.214432, 36.259575, 25.850616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010769, 36.374767, 25.904020>,  <34.671329, 36.566753, 25.993027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010769, 36.374767, 25.904020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366269, -0.229520, -0.901758,
		0.381739, 0.846732, -0.370567,
		0.848600, -0.479964, -0.222515,
		35.265350, 36.230778, 25.837265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788731, 36.743931, 25.286102>,  <34.671329, 36.566753, 25.993027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788731, 36.743931, 25.286102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028168, 36.432091, 25.359766>,  <35.171829, 36.244987, 25.403965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028168, 36.432091, 25.359766>,  <34.788731, 36.743931, 25.286102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028168, 36.432091, 25.359766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177612, -0.353341, -0.918480,
		0.781118, 0.517083, -0.349972,
		0.598590, -0.779600, 0.184161,
		35.207745, 36.198212, 25.415014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034603, 36.559067, 24.666370>,  <34.788731, 36.743931, 25.286102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034603, 36.559067, 24.666370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136971, 36.226967, 24.864437>,  <35.198391, 36.027706, 24.983278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136971, 36.226967, 24.864437>,  <35.034603, 36.559067, 24.666370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136971, 36.226967, 24.864437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095493, -0.531432, -0.841701,
		0.961971, 0.168119, -0.215285,
		0.255916, -0.830251, 0.495168,
		35.213745, 35.977890, 25.012987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569344, 36.307732, 24.396036>,  <35.034603, 36.559067, 24.666370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569344, 36.307732, 24.396036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434410, 35.978703, 24.579153>,  <35.353451, 35.781284, 24.689024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434410, 35.978703, 24.579153>,  <35.569344, 36.307732, 24.396036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434410, 35.978703, 24.579153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230373, -0.543643, -0.807082,
		0.912762, -0.166793, 0.372888,
		-0.337334, -0.822577, 0.457792,
		35.333210, 35.731930, 24.716492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032310, 35.859787, 24.211569>,  <35.569344, 36.307732, 24.396036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032310, 35.859787, 24.211569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722992, 35.631329, 24.321701>,  <35.537403, 35.494251, 24.387781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722992, 35.631329, 24.321701>,  <36.032310, 35.859787, 24.211569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722992, 35.631329, 24.321701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174369, -0.609064, -0.773716,
		0.609601, -0.550299, 0.570576,
		-0.773293, -0.571149, 0.275331,
		35.491005, 35.459984, 24.404301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279606, 35.127392, 24.129509>,  <36.032310, 35.859787, 24.211569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279606, 35.127392, 24.129509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880859, 35.125473, 24.097931>,  <35.641613, 35.124321, 24.078983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880859, 35.125473, 24.097931>,  <36.279606, 35.127392, 24.129509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880859, 35.125473, 24.097931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062928, -0.652748, -0.754957,
		-0.047911, -0.757560, 0.651005,
		-0.996867, -0.004796, -0.078946,
		35.581799, 35.124035, 24.074247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038223, 34.439156, 24.115616>,  <36.279606, 35.127392, 24.129509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038223, 34.439156, 24.115616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735855, 34.648018, 23.957659>,  <35.554436, 34.773335, 23.862885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735855, 34.648018, 23.957659>,  <36.038223, 34.439156, 24.115616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735855, 34.648018, 23.957659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037344, -0.636609, -0.770282,
		-0.653607, -0.567518, 0.500720,
		-0.755912, 0.522161, -0.394898,
		35.509079, 34.804665, 23.839191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625175, 33.936535, 23.784369>,  <36.038223, 34.439156, 24.115616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625175, 33.936535, 23.784369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518471, 34.289948, 23.630377>,  <35.454449, 34.501995, 23.537981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518471, 34.289948, 23.630377>,  <35.625175, 33.936535, 23.784369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518471, 34.289948, 23.630377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147023, -0.432087, -0.889767,
		-0.952483, -0.180751, 0.245162,
		-0.266758, 0.883533, -0.384981,
		35.438442, 34.555008, 23.514883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018932, 33.823845, 23.537104>,  <35.625175, 33.936535, 23.784369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018932, 33.823845, 23.537104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149914, 34.143951, 23.336166>,  <35.228504, 34.336014, 23.215605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149914, 34.143951, 23.336166>,  <35.018932, 33.823845, 23.537104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149914, 34.143951, 23.336166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290075, -0.420837, -0.859507,
		-0.899239, 0.427166, 0.094333,
		0.327453, 0.800266, -0.502343,
		35.248150, 34.384029, 23.185463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512360, 33.934708, 22.992807>,  <35.018932, 33.823845, 23.537104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512360, 33.934708, 22.992807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830116, 34.128975, 22.846891>,  <35.020771, 34.245533, 22.759342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830116, 34.128975, 22.846891>,  <34.512360, 33.934708, 22.992807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830116, 34.128975, 22.846891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280631, -0.239169, -0.929540,
		-0.538691, 0.840790, -0.053701,
		0.794392, 0.485665, -0.364790,
		35.068432, 34.274673, 22.737453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300823, 34.435223, 22.458782>,  <34.512360, 33.934708, 22.992807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300823, 34.435223, 22.458782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689072, 34.394703, 22.371490>,  <34.922020, 34.370392, 22.319115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689072, 34.394703, 22.371490>,  <34.300823, 34.435223, 22.458782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689072, 34.394703, 22.371490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228168, -0.099832, -0.968490,
		0.076321, 0.989834, -0.120012,
		0.970626, -0.101299, -0.218230,
		34.980259, 34.364315, 22.306021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369305, 34.784382, 21.770735>,  <34.300823, 34.435223, 22.458782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369305, 34.784382, 21.770735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701378, 34.573017, 21.841814>,  <34.900620, 34.446198, 21.884460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701378, 34.573017, 21.841814>,  <34.369305, 34.784382, 21.770735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701378, 34.573017, 21.841814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115561, -0.148708, -0.982106,
		0.545385, 0.835861, -0.062390,
		0.830181, -0.528416, 0.177696,
		34.950432, 34.414494, 21.895123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858265, 35.049103, 21.281952>,  <34.369305, 34.784382, 21.770735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858265, 35.049103, 21.281952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949295, 34.679371, 21.404474>,  <35.003914, 34.457531, 21.477987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949295, 34.679371, 21.404474>,  <34.858265, 35.049103, 21.281952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949295, 34.679371, 21.404474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176575, -0.270170, -0.946483,
		0.957617, 0.269483, 0.101729,
		0.227577, -0.924330, 0.306303,
		35.017567, 34.402073, 21.496365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381340, 34.756557, 20.730186>,  <34.858265, 35.049103, 21.281952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381340, 34.756557, 20.730186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216419, 34.445534, 20.920095>,  <35.117466, 34.258919, 21.034040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216419, 34.445534, 20.920095>,  <35.381340, 34.756557, 20.730186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216419, 34.445534, 20.920095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036690, -0.506533, -0.861440,
		0.910309, -0.372591, 0.180315,
		-0.412300, -0.777560, 0.474772,
		35.092728, 34.212265, 21.062527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839703, 34.198116, 20.656099>,  <35.381340, 34.756557, 20.730186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839703, 34.198116, 20.656099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464825, 34.069904, 20.711140>,  <35.239899, 33.992977, 20.744164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464825, 34.069904, 20.711140>,  <35.839703, 34.198116, 20.656099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464825, 34.069904, 20.711140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012249, -0.424478, -0.905355,
		0.348601, -0.846805, 0.401743,
		-0.937191, -0.320529, 0.137601,
		35.183666, 33.973747, 20.752420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892967, 33.542618, 20.359438>,  <35.839703, 34.198116, 20.656099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892967, 33.542618, 20.359438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502575, 33.618668, 20.401989>,  <35.268341, 33.664299, 20.427521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502575, 33.618668, 20.401989>,  <35.892967, 33.542618, 20.359438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502575, 33.618668, 20.401989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183681, -0.455505, -0.871078,
		-0.117161, -0.869693, 0.479487,
		-0.975979, 0.190129, 0.106379,
		35.209782, 33.675705, 20.433903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536591, 32.826714, 20.271368>,  <35.892967, 33.542618, 20.359438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536591, 32.826714, 20.271368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292770, 33.131336, 20.183294>,  <35.146477, 33.314110, 20.130451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292770, 33.131336, 20.183294>,  <35.536591, 32.826714, 20.271368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292770, 33.131336, 20.183294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195013, -0.413260, -0.889487,
		-0.768386, -0.499249, 0.400416,
		-0.609551, 0.761556, -0.220183,
		35.109905, 33.359802, 20.117239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698112, 32.261398, 19.936005>,  <35.536591, 32.826714, 20.271368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698112, 32.261398, 19.936005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057850, 32.126347, 19.824879>,  <36.273693, 32.045315, 19.758204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057850, 32.126347, 19.824879>,  <35.698112, 32.261398, 19.936005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057850, 32.126347, 19.824879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329476, 0.105603, 0.938240,
		-0.287444, -0.935335, 0.206216,
		0.899345, -0.337634, -0.277815,
		36.327652, 32.025055, 19.741533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918682, 31.831409, 20.407906>,  <35.698112, 32.261398, 19.936005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918682, 31.831409, 20.407906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278339, 31.883591, 20.240805>,  <36.494133, 31.914900, 20.140545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278339, 31.883591, 20.240805>,  <35.918682, 31.831409, 20.407906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278339, 31.883591, 20.240805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434712, -0.155878, 0.886976,
		0.050590, -0.979124, -0.196867,
		0.899147, 0.130452, -0.417752,
		36.548084, 31.922726, 20.115479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370033, 31.351995, 20.762909>,  <35.918682, 31.831409, 20.407906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370033, 31.351995, 20.762909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572914, 31.645550, 20.582174>,  <36.694645, 31.821682, 20.473734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572914, 31.645550, 20.582174>,  <36.370033, 31.351995, 20.762909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572914, 31.645550, 20.582174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518980, 0.158470, 0.839969,
		0.688043, -0.660530, -0.300494,
		0.507205, 0.733885, -0.451836,
		36.725075, 31.865715, 20.446623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103901, 31.115311, 20.849133>,  <36.370033, 31.351995, 20.762909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103901, 31.115311, 20.849133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060596, 31.509930, 20.800140>,  <37.034615, 31.746702, 20.770744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060596, 31.509930, 20.800140>,  <37.103901, 31.115311, 20.849133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060596, 31.509930, 20.800140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614340, 0.163254, 0.771968,
		0.781580, 0.008325, -0.623750,
		-0.108257, 0.986549, -0.122481,
		37.028118, 31.805895, 20.763395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749035, 31.380936, 20.926321>,  <37.103901, 31.115311, 20.849133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749035, 31.380936, 20.926321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545025, 31.716480, 21.002405>,  <37.422619, 31.917807, 21.048056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545025, 31.716480, 21.002405>,  <37.749035, 31.380936, 20.926321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545025, 31.716480, 21.002405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636096, 0.218981, 0.739885,
		0.579010, 0.498354, -0.645284,
		-0.510029, 0.838863, 0.190209,
		37.392017, 31.968140, 21.059467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209206, 31.811260, 21.049917>,  <37.749035, 31.380936, 20.926321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209206, 31.811260, 21.049917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883202, 31.974361, 21.214600>,  <37.687599, 32.072224, 21.313410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883202, 31.974361, 21.214600>,  <38.209206, 31.811260, 21.049917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883202, 31.974361, 21.214600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538925, 0.272351, 0.797110,
		0.212897, 0.871528, -0.441717,
		-0.815006, 0.407755, 0.411706,
		37.638699, 32.096687, 21.338112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385891, 32.464500, 21.235525>,  <38.209206, 31.811260, 21.049917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385891, 32.464500, 21.235525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068935, 32.406563, 21.472555>,  <37.878761, 32.371799, 21.614773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068935, 32.406563, 21.472555>,  <38.385891, 32.464500, 21.235525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068935, 32.406563, 21.472555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535232, 0.300954, 0.789274,
		-0.292660, 0.942574, -0.160946,
		-0.792387, -0.144845, 0.592573,
		37.831219, 32.363110, 21.650328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297749, 33.044827, 21.778770>,  <38.385891, 32.464500, 21.235525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297749, 33.044827, 21.778770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082314, 32.746815, 21.936172>,  <37.953053, 32.568008, 22.030613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082314, 32.746815, 21.936172>,  <38.297749, 33.044827, 21.778770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082314, 32.746815, 21.936172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313968, 0.255930, 0.914289,
		-0.781885, 0.615975, 0.096075,
		-0.538591, -0.745033, 0.393504,
		37.920738, 32.523304, 22.054224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865597, 33.336971, 22.181257>,  <38.297749, 33.044827, 21.778770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865597, 33.336971, 22.181257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846016, 32.960030, 22.313665>,  <37.834267, 32.733864, 22.393110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846016, 32.960030, 22.313665>,  <37.865597, 33.336971, 22.181257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846016, 32.960030, 22.313665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098350, 0.325258, 0.940497,
		-0.993947, 0.078592, 0.076760,
		-0.048949, -0.942354, 0.331019,
		37.831333, 32.677322, 22.412971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294525, 33.303574, 22.560051>,  <37.865597, 33.336971, 22.181257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294525, 33.303574, 22.560051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524044, 33.009026, 22.703442>,  <37.661755, 32.832294, 22.789476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524044, 33.009026, 22.703442>,  <37.294525, 33.303574, 22.560051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524044, 33.009026, 22.703442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059355, 0.473943, 0.878553,
		-0.816842, -0.482836, 0.315656,
		0.573799, -0.736375, 0.358478,
		37.696182, 32.788113, 22.810986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080456, 33.241726, 23.247835>,  <37.294525, 33.303574, 22.560051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080456, 33.241726, 23.247835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425991, 33.040356, 23.255388>,  <37.633312, 32.919533, 23.259920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425991, 33.040356, 23.255388>,  <37.080456, 33.241726, 23.247835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425991, 33.040356, 23.255388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195743, 0.369941, 0.908201,
		-0.464193, -0.780839, 0.418109,
		0.863834, -0.503422, 0.018880,
		37.685143, 32.889328, 23.261053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132034, 32.995426, 23.898352>,  <37.080456, 33.241726, 23.247835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132034, 32.995426, 23.898352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499992, 32.998119, 23.741508>,  <37.720768, 32.999733, 23.647402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499992, 32.998119, 23.741508>,  <37.132034, 32.995426, 23.898352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499992, 32.998119, 23.741508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347167, 0.451062, 0.822203,
		0.182399, -0.892467, 0.412593,
		0.919894, 0.006731, -0.392108,
		37.775959, 33.000137, 23.623877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454708, 32.795635, 24.427490>,  <37.132034, 32.995426, 23.898352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454708, 32.795635, 24.427490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740406, 32.959682, 24.200630>,  <37.911823, 33.058113, 24.064514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740406, 32.959682, 24.200630>,  <37.454708, 32.795635, 24.427490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740406, 32.959682, 24.200630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335403, 0.510659, 0.791664,
		0.614299, -0.755664, 0.227179,
		0.714243, 0.410122, -0.567149,
		37.954678, 33.082718, 24.030485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147152, 32.543633, 24.690504>,  <37.454708, 32.795635, 24.427490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147152, 32.543633, 24.690504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201485, 32.885250, 24.489643>,  <38.234085, 33.090221, 24.369125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201485, 32.885250, 24.489643>,  <38.147152, 32.543633, 24.690504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201485, 32.885250, 24.489643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551855, 0.355719, 0.754268,
		0.822804, -0.379570, -0.422991,
		0.135831, 0.854044, -0.502155,
		38.242233, 33.141464, 24.338997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810829, 32.686817, 24.725618>,  <38.147152, 32.543633, 24.690504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810829, 32.686817, 24.725618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624619, 33.035191, 24.662691>,  <38.512890, 33.244217, 24.624935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624619, 33.035191, 24.662691>,  <38.810829, 32.686817, 24.725618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624619, 33.035191, 24.662691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421224, 0.374366, 0.826087,
		0.778365, 0.318304, -0.541139,
		-0.465531, 0.870938, -0.157316,
		38.484959, 33.296471, 24.615496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303867, 33.176464, 24.908304>,  <38.810829, 32.686817, 24.725618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303867, 33.176464, 24.908304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013283, 33.447445, 24.862141>,  <38.838932, 33.610031, 24.834442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013283, 33.447445, 24.862141>,  <39.303867, 33.176464, 24.908304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013283, 33.447445, 24.862141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276096, 0.441507, 0.853723,
		0.629307, 0.588332, -0.507778,
		-0.726460, 0.677449, -0.115408,
		38.795345, 33.650681, 24.827518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547497, 33.804592, 25.043018>,  <39.303867, 33.176464, 24.908304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547497, 33.804592, 25.043018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155533, 33.823494, 25.120520>,  <38.920353, 33.834835, 25.167021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155533, 33.823494, 25.120520>,  <39.547497, 33.804592, 25.043018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155533, 33.823494, 25.120520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196649, 0.390631, 0.899298,
		-0.033191, 0.919334, -0.392076,
		-0.979912, 0.047253, 0.193751,
		38.861561, 33.837669, 25.178644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461174, 34.514698, 25.404989>,  <39.547497, 33.804592, 25.043018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461174, 34.514698, 25.404989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150177, 34.284866, 25.507254>,  <38.963577, 34.146969, 25.568613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150177, 34.284866, 25.507254>,  <39.461174, 34.514698, 25.404989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150177, 34.284866, 25.507254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015730, 0.388633, 0.921258,
		-0.628691, 0.720296, -0.293122,
		-0.777496, -0.574576, 0.255660,
		38.916927, 34.112492, 25.583952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992466, 34.988110, 25.812046>,  <39.461174, 34.514698, 25.404989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992466, 34.988110, 25.812046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884815, 34.617844, 25.918413>,  <38.820225, 34.395683, 25.982233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884815, 34.617844, 25.918413>,  <38.992466, 34.988110, 25.812046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884815, 34.617844, 25.918413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063191, 0.292483, 0.954180,
		-0.961028, 0.239996, -0.137210,
		-0.269131, -0.925665, 0.265919,
		38.804077, 34.340145, 25.998188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607910, 35.188499, 26.253014>,  <38.992466, 34.988110, 25.812046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607910, 35.188499, 26.253014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604355, 34.794907, 26.324226>,  <38.602222, 34.558750, 26.366955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604355, 34.794907, 26.324226>,  <38.607910, 35.188499, 26.253014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604355, 34.794907, 26.324226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061933, 0.178240, 0.982036,
		-0.998041, -0.002302, -0.062525,
		-0.008884, -0.983984, 0.178034,
		38.601688, 34.499710, 26.377636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011993, 35.053905, 26.482864>,  <38.607910, 35.188499, 26.253014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011993, 35.053905, 26.482864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242226, 34.771271, 26.647518>,  <38.380367, 34.601688, 26.746309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242226, 34.771271, 26.647518>,  <38.011993, 35.053905, 26.482864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242226, 34.771271, 26.647518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244849, 0.331369, 0.911177,
		-0.780227, -0.625245, 0.017724,
		0.575582, -0.706585, 0.411633,
		38.414902, 34.559296, 26.771008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578312, 34.659378, 26.986135>,  <38.011993, 35.053905, 26.482864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578312, 34.659378, 26.986135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956841, 34.599522, 27.100733>,  <38.183960, 34.563606, 27.169491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956841, 34.599522, 27.100733>,  <37.578312, 34.659378, 26.986135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956841, 34.599522, 27.100733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230384, 0.309412, 0.922598,
		-0.226702, -0.939081, 0.258329,
		0.946324, -0.149640, 0.286494,
		38.240738, 34.554630, 27.186682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594311, 34.428196, 27.676479>,  <37.578312, 34.659378, 26.986135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594311, 34.428196, 27.676479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978664, 34.534344, 27.644773>,  <38.209278, 34.598030, 27.625750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978664, 34.534344, 27.644773>,  <37.594311, 34.428196, 27.676479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978664, 34.534344, 27.644773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053299, 0.103675, 0.993182,
		0.271776, -0.958557, 0.085476,
		0.960884, 0.265367, -0.079266,
		38.266930, 34.613953, 27.620993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926857, 34.126335, 28.298744>,  <37.594311, 34.428196, 27.676479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926857, 34.126335, 28.298744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179604, 34.407833, 28.168827>,  <38.331249, 34.576733, 28.090878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179604, 34.407833, 28.168827>,  <37.926857, 34.126335, 28.298744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179604, 34.407833, 28.168827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307448, 0.157093, 0.938508,
		0.711495, -0.692865, -0.117104,
		0.631863, 0.703747, -0.324791,
		38.369164, 34.618958, 28.071390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637463, 34.009163, 28.440462>,  <37.926857, 34.126335, 28.298744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637463, 34.009163, 28.440462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602722, 34.405739, 28.401457>,  <38.581879, 34.643684, 28.378054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602722, 34.405739, 28.401457>,  <38.637463, 34.009163, 28.440462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602722, 34.405739, 28.401457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564240, 0.129623, 0.815372,
		0.821030, 0.015792, -0.570666,
		-0.086848, 0.991438, -0.097514,
		38.576668, 34.703171, 28.372202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314274, 34.261330, 28.586769>,  <38.637463, 34.009163, 28.440462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314274, 34.261330, 28.586769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072865, 34.577328, 28.629980>,  <38.928017, 34.766926, 28.655907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072865, 34.577328, 28.629980>,  <39.314274, 34.261330, 28.586769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072865, 34.577328, 28.629980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472235, 0.244985, 0.846744,
		0.642456, 0.562047, -0.520917,
		-0.603527, 0.789991, 0.108026,
		38.891808, 34.814323, 28.662388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729858, 34.687592, 28.883976>,  <39.314274, 34.261330, 28.586769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729858, 34.687592, 28.883976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368671, 34.853512, 28.928875>,  <39.151958, 34.953064, 28.955814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368671, 34.853512, 28.928875>,  <39.729858, 34.687592, 28.883976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368671, 34.853512, 28.928875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281659, 0.374022, 0.883615,
		0.324539, 0.829488, -0.454560,
		-0.902963, 0.414798, 0.112248,
		39.097782, 34.977951, 28.962549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884251, 35.386692, 29.172543>,  <39.729858, 34.687592, 28.883976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884251, 35.386692, 29.172543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511192, 35.264526, 29.249371>,  <39.287357, 35.191227, 29.295467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511192, 35.264526, 29.249371>,  <39.884251, 35.386692, 29.172543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511192, 35.264526, 29.249371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180229, 0.066797, 0.981354,
		-0.312548, 0.949874, -0.007254,
		-0.932647, -0.305413, 0.192072,
		39.231400, 35.172901, 29.306992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646511, 35.780003, 29.677055>,  <39.884251, 35.386692, 29.172543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646511, 35.780003, 29.677055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437771, 35.439625, 29.700930>,  <39.312527, 35.235397, 29.715254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437771, 35.439625, 29.700930>,  <39.646511, 35.780003, 29.677055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437771, 35.439625, 29.700930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096363, 0.010716, 0.995289,
		-0.847577, 0.525143, 0.076408,
		-0.521850, -0.850946, 0.059687,
		39.281216, 35.184341, 29.718836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434601, 35.856258, 30.376776>,  <39.646511, 35.780003, 29.677055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434601, 35.856258, 30.376776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284828, 35.498745, 30.278017>,  <39.194965, 35.284237, 30.218761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284828, 35.498745, 30.278017>,  <39.434601, 35.856258, 30.376776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284828, 35.498745, 30.278017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175174, -0.329653, 0.927709,
		-0.910558, 0.304112, 0.279999,
		-0.374430, -0.893781, -0.246895,
		39.172501, 35.230610, 30.203949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862755, 35.660290, 30.912548>,  <39.434601, 35.856258, 30.376776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862755, 35.660290, 30.912548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036663, 35.343494, 30.741095>,  <39.141010, 35.153419, 30.638222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036663, 35.343494, 30.741095>,  <38.862755, 35.660290, 30.912548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036663, 35.343494, 30.741095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248316, -0.352089, 0.902426,
		-0.865627, -0.498789, 0.043584,
		0.434775, -0.791986, -0.428635,
		39.167095, 35.105900, 30.612505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594513, 34.994396, 31.256512>,  <38.862755, 35.660290, 30.912548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594513, 34.994396, 31.256512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931557, 34.880657, 31.073580>,  <39.133781, 34.812412, 30.963820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931557, 34.880657, 31.073580>,  <38.594513, 34.994396, 31.256512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931557, 34.880657, 31.073580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230057, -0.577771, 0.783105,
		-0.486907, -0.765066, -0.421420,
		0.842612, -0.284349, -0.457330,
		39.184341, 34.795353, 30.936380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648491, 34.221455, 31.452160>,  <38.594513, 34.994396, 31.256512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648491, 34.221455, 31.452160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020947, 34.346554, 31.377150>,  <39.244419, 34.421612, 31.332144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020947, 34.346554, 31.377150>,  <38.648491, 34.221455, 31.452160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020947, 34.346554, 31.377150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313970, -0.426036, 0.848479,
		0.185465, -0.848931, -0.494893,
		0.931142, 0.312744, -0.187524,
		39.300289, 34.440376, 31.320892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043594, 33.698776, 31.564781>,  <38.648491, 34.221455, 31.452160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043594, 33.698776, 31.564781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323864, 33.983276, 31.587339>,  <39.492027, 34.153976, 31.600874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323864, 33.983276, 31.587339>,  <39.043594, 33.698776, 31.564781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323864, 33.983276, 31.587339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258297, -0.326551, 0.909201,
		0.665085, -0.622486, -0.412520,
		0.700674, 0.711249, 0.056398,
		39.534065, 34.196651, 31.604259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453739, 33.358036, 31.947905>,  <39.043594, 33.698776, 31.564781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453739, 33.358036, 31.947905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557518, 33.743736, 31.969494>,  <39.619785, 33.975155, 31.982447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557518, 33.743736, 31.969494>,  <39.453739, 33.358036, 31.947905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557518, 33.743736, 31.969494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202671, -0.109005, 0.973161,
		0.944251, -0.241547, -0.223706,
		0.259450, 0.964247, 0.053974,
		39.635353, 34.033009, 31.985685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250881, 33.485088, 32.140255>,  <39.453739, 33.358036, 31.947905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250881, 33.485088, 32.140255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005516, 33.777649, 32.259441>,  <39.858299, 33.953186, 32.330952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005516, 33.777649, 32.259441>,  <40.250881, 33.485088, 32.140255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005516, 33.777649, 32.259441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194552, -0.225713, 0.954570,
		0.765426, 0.643512, -0.003841,
		-0.613410, 0.731400, 0.297963,
		39.821491, 33.997070, 32.348831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625019, 33.710068, 32.732727>,  <40.250881, 33.485088, 32.140255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625019, 33.710068, 32.732727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280643, 33.910618, 32.767155>,  <40.074020, 34.030949, 32.787811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280643, 33.910618, 32.767155>,  <40.625019, 33.710068, 32.732727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280643, 33.910618, 32.767155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061820, -0.064812, 0.995981,
		0.504941, 0.862797, 0.024804,
		-0.860937, 0.501378, 0.086065,
		40.022362, 34.061031, 32.792973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795486, 34.318031, 33.052280>,  <40.625019, 33.710068, 32.732727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795486, 34.318031, 33.052280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403984, 34.266857, 33.116360>,  <40.169083, 34.236153, 33.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403984, 34.266857, 33.116360>,  <40.795486, 34.318031, 33.052280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403984, 34.266857, 33.116360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146132, 0.112718, 0.982823,
		-0.143800, 0.985356, -0.091627,
		-0.978758, -0.127940, 0.160201,
		40.110355, 34.228474, 33.164421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498211, 34.958145, 33.422165>,  <40.795486, 34.318031, 33.052280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498211, 34.958145, 33.422165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253307, 34.647877, 33.483448>,  <40.106365, 34.461716, 33.520218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253307, 34.647877, 33.483448>,  <40.498211, 34.958145, 33.422165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253307, 34.647877, 33.483448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110265, 0.108112, 0.988005,
		-0.782928, 0.621812, 0.019336,
		-0.612262, -0.775669, 0.153208,
		40.069630, 34.415176, 33.529411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039333, 35.175011, 33.986298>,  <40.498211, 34.958145, 33.422165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039333, 35.175011, 33.986298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007526, 34.776894, 33.964119>,  <39.988441, 34.538025, 33.950813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007526, 34.776894, 33.964119>,  <40.039333, 35.175011, 33.986298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007526, 34.776894, 33.964119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267720, -0.074900, 0.960581,
		-0.960210, 0.061543, 0.272415,
		-0.079521, -0.995290, -0.055444,
		39.983669, 34.478306, 33.947487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936485, 34.961395, 34.645119>,  <40.039333, 35.175011, 33.986298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936485, 34.961395, 34.645119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161648, 35.291786, 34.633133>,  <40.296745, 35.490021, 34.625942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161648, 35.291786, 34.633133>,  <39.936485, 34.961395, 34.645119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161648, 35.291786, 34.633133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717709, 0.506464, 0.477900,
		0.409909, -0.247510, 0.877903,
		0.562911, 0.825974, -0.029964,
		40.330521, 35.539577, 34.624142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962830, 35.331234, 35.347073>,  <39.936485, 34.961395, 34.645119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962830, 35.331234, 35.347073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039303, 35.627338, 35.089249>,  <40.085186, 35.805000, 34.934555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039303, 35.627338, 35.089249>,  <39.962830, 35.331234, 35.347073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039303, 35.627338, 35.089249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856052, 0.447033, 0.259492,
		0.480233, 0.502170, 0.719167,
		0.191183, 0.740261, -0.644564,
		40.096657, 35.849415, 34.895878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862373, 35.982784, 35.687130>,  <39.962830, 35.331234, 35.347073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862373, 35.982784, 35.687130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831142, 36.105434, 35.307682>,  <39.812405, 36.179024, 35.080013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831142, 36.105434, 35.307682>,  <39.862373, 35.982784, 35.687130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831142, 36.105434, 35.307682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811233, 0.533545, 0.239229,
		0.579487, 0.788233, 0.207086,
		-0.078079, 0.306625, -0.948623,
		39.807720, 36.197422, 35.023094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853603, 36.742596, 35.722466>,  <39.862373, 35.982784, 35.687130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853603, 36.742596, 35.722466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651722, 36.658031, 35.387665>,  <39.530594, 36.607292, 35.186783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651722, 36.658031, 35.387665>,  <39.853603, 36.742596, 35.722466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651722, 36.658031, 35.387665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834762, 0.366707, 0.410730,
		0.220101, 0.905997, -0.361560,
		-0.504707, -0.211415, -0.837004,
		39.500309, 36.594608, 35.136562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353916, 37.342186, 35.509579>,  <39.853603, 36.742596, 35.722466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353916, 37.342186, 35.509579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190403, 37.019173, 35.339500>,  <39.092297, 36.825367, 35.237453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190403, 37.019173, 35.339500>,  <39.353916, 37.342186, 35.509579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190403, 37.019173, 35.339500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908166, 0.313896, 0.276956,
		-0.090182, 0.499364, -0.861686,
		-0.408782, -0.807530, -0.425198,
		39.067768, 36.776913, 35.211941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762497, 37.508205, 35.175610>,  <39.353916, 37.342186, 35.509579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762497, 37.508205, 35.175610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679558, 37.116917, 35.179375>,  <38.629795, 36.882145, 35.181633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679558, 37.116917, 35.179375>,  <38.762497, 37.508205, 35.175610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679558, 37.116917, 35.179375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970283, 0.206872, 0.125521,
		-0.124734, 0.016896, -0.992046,
		-0.207348, -0.978222, 0.009410,
		38.617355, 36.823448, 35.182198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077011, 37.424564, 34.985523>,  <38.762497, 37.508205, 35.175610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077011, 37.424564, 34.985523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158478, 37.064339, 35.139149>,  <38.207355, 36.848202, 35.231323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158478, 37.064339, 35.139149>,  <38.077011, 37.424564, 34.985523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158478, 37.064339, 35.139149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946670, -0.081107, 0.311829,
		-0.249673, -0.427087, -0.869057,
		0.203665, -0.900566, 0.384061,
		38.219578, 36.794170, 35.254368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535828, 37.035038, 34.848015>,  <38.077011, 37.424564, 34.985523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535828, 37.035038, 34.848015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707058, 36.837517, 35.150776>,  <37.809795, 36.719006, 35.332432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707058, 36.837517, 35.150776>,  <37.535828, 37.035038, 34.848015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707058, 36.837517, 35.150776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891628, -0.094099, 0.442883,
		-0.147477, -0.864463, -0.480577,
		0.428078, -0.493810, 0.756902,
		37.835480, 36.689377, 35.377846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192265, 36.335640, 34.945820>,  <37.535828, 37.035038, 34.848015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192265, 36.335640, 34.945820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320377, 36.483185, 35.294842>,  <37.397247, 36.571712, 35.504257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320377, 36.483185, 35.294842>,  <37.192265, 36.335640, 34.945820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320377, 36.483185, 35.294842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868598, -0.253275, 0.425899,
		0.378096, -0.894311, 0.239273,
		0.320284, 0.368862, 0.872559,
		37.416462, 36.593845, 35.556610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112358, 35.824711, 35.453907>,  <37.192265, 36.335640, 34.945820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112358, 35.824711, 35.453907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122776, 36.171062, 35.653736>,  <37.129025, 36.378872, 35.773636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122776, 36.171062, 35.653736>,  <37.112358, 35.824711, 35.453907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122776, 36.171062, 35.653736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945934, -0.140284, 0.292455,
		0.323313, -0.480182, 0.815410,
		0.026043, 0.865879, 0.499576,
		37.130589, 36.430824, 35.803608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876911, 35.737446, 36.194397>,  <37.112358, 35.824711, 35.453907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876911, 35.737446, 36.194397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799446, 36.116810, 36.093983>,  <36.752968, 36.344429, 36.033733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799446, 36.116810, 36.093983>,  <36.876911, 35.737446, 36.194397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799446, 36.116810, 36.093983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970724, -0.148179, 0.189044,
		0.142091, 0.280301, 0.949337,
		-0.193661, 0.948406, -0.251040,
		36.741348, 36.401333, 36.018669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584515, 35.852024, 36.878113>,  <36.876911, 35.737446, 36.194397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584515, 35.852024, 36.878113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702927, 36.175579, 36.674911>,  <36.773975, 36.369713, 36.552990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702927, 36.175579, 36.674911>,  <36.584515, 35.852024, 36.878113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702927, 36.175579, 36.674911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494117, 0.584834, 0.643287,
		0.817445, 0.060582, 0.572812,
		0.296028, 0.808888, -0.508003,
		36.791737, 36.418247, 36.522511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819485, 36.404720, 37.463207>,  <36.584515, 35.852024, 36.878113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819485, 36.404720, 37.463207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702106, 36.570713, 37.118725>,  <36.631680, 36.670311, 36.912037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702106, 36.570713, 37.118725>,  <36.819485, 36.404720, 37.463207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702106, 36.570713, 37.118725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727956, 0.486930, 0.482680,
		0.619651, 0.768561, 0.159202,
		-0.293449, 0.414985, -0.861206,
		36.614071, 36.695210, 36.860363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639870, 37.188663, 37.572800>,  <36.819485, 36.404720, 37.463207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639870, 37.188663, 37.572800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456436, 37.045311, 37.247528>,  <36.346378, 36.959297, 37.052364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456436, 37.045311, 37.247528>,  <36.639870, 37.188663, 37.572800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456436, 37.045311, 37.247528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873940, 0.347701, 0.339608,
		0.161034, 0.866409, -0.472655,
		-0.458582, -0.358384, -0.813181,
		36.318863, 36.937798, 37.003574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343620, 37.756077, 37.163467>,  <36.639870, 37.188663, 37.572800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343620, 37.756077, 37.163467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110092, 37.432575, 37.134983>,  <35.969975, 37.238476, 37.117893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110092, 37.432575, 37.134983>,  <36.343620, 37.756077, 37.163467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110092, 37.432575, 37.134983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781949, 0.536529, 0.317322,
		-0.218427, 0.240944, -0.945640,
		-0.583820, -0.808754, -0.071214,
		35.934948, 37.189949, 37.113621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678131, 37.974628, 36.927898>,  <36.343620, 37.756077, 37.163467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678131, 37.974628, 36.927898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632023, 37.613419, 37.093430>,  <35.604359, 37.396690, 37.192749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632023, 37.613419, 37.093430>,  <35.678131, 37.974628, 36.927898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632023, 37.613419, 37.093430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739357, 0.356217, 0.571368,
		-0.663374, -0.240105, -0.708721,
		-0.115270, -0.903028, 0.413828,
		35.597443, 37.342510, 37.217579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020748, 37.894241, 36.856758>,  <35.678131, 37.974628, 36.927898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020748, 37.894241, 36.856758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124084, 37.646938, 37.153679>,  <35.186085, 37.498558, 37.331833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124084, 37.646938, 37.153679>,  <35.020748, 37.894241, 36.856758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124084, 37.646938, 37.153679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765966, 0.337150, 0.547382,
		-0.588692, -0.709990, -0.386467,
		0.258339, -0.618259, 0.742305,
		35.201588, 37.461460, 37.376369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415352, 37.501381, 37.143024>,  <35.020748, 37.894241, 36.856758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415352, 37.501381, 37.143024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653904, 37.483776, 37.463623>,  <34.797035, 37.473213, 37.655983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653904, 37.483776, 37.463623>,  <34.415352, 37.501381, 37.143024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653904, 37.483776, 37.463623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791660, 0.132796, 0.596356,
		-0.132680, -0.990166, 0.044356,
		0.596382, -0.044010, 0.801494,
		34.832817, 37.470573, 37.704071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027580, 37.276226, 37.627213>,  <34.415352, 37.501381, 37.143024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027580, 37.276226, 37.627213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327312, 37.364933, 37.876793>,  <34.507153, 37.418156, 38.026543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327312, 37.364933, 37.876793>,  <34.027580, 37.276226, 37.627213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327312, 37.364933, 37.876793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662144, 0.262130, 0.702035,
		-0.007870, -0.939206, 0.343264,
		0.749335, 0.221765, 0.623953,
		34.552113, 37.431461, 38.063980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986275, 36.887135, 38.300785>,  <34.027580, 37.276226, 37.627213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986275, 36.887135, 38.300785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176151, 37.239105, 38.308838>,  <34.290077, 37.450287, 38.313667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176151, 37.239105, 38.308838>,  <33.986275, 36.887135, 38.300785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176151, 37.239105, 38.308838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734293, 0.383310, 0.560256,
		0.485268, -0.280726, 0.828075,
		0.474688, 0.879924, 0.020127,
		34.318558, 37.503082, 38.314877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925224, 37.144642, 38.926018>,  <33.986275, 36.887135, 38.300785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925224, 37.144642, 38.926018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973289, 37.461575, 38.686760>,  <34.002129, 37.651733, 38.543205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973289, 37.461575, 38.686760>,  <33.925224, 37.144642, 38.926018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973289, 37.461575, 38.686760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666344, 0.510992, 0.543021,
		0.735898, 0.333320, 0.589365,
		0.120161, 0.792328, -0.598144,
		34.009338, 37.699272, 38.507317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959103, 37.798645, 39.365032>,  <33.925224, 37.144642, 38.926018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959103, 37.798645, 39.365032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869209, 37.899391, 38.988510>,  <33.815273, 37.959839, 38.762596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869209, 37.899391, 38.988510>,  <33.959103, 37.798645, 39.365032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869209, 37.899391, 38.988510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758254, 0.561518, 0.331282,
		0.611999, 0.788200, 0.064787,
		-0.224737, 0.251869, -0.941305,
		33.801788, 37.974953, 38.706120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983074, 38.519539, 39.271591>,  <33.959103, 37.798645, 39.365032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983074, 38.519539, 39.271591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746864, 38.383732, 38.978741>,  <33.605137, 38.302246, 38.803032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746864, 38.383732, 38.978741>,  <33.983074, 38.519539, 39.271591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746864, 38.383732, 38.978741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670085, 0.711853, 0.210362,
		0.449742, 0.614810, -0.647874,
		-0.590524, -0.339522, -0.732125,
		33.569706, 38.281876, 38.759102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783123, 38.999130, 38.655422>,  <33.983074, 38.519539, 39.271591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783123, 38.999130, 38.655422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484722, 38.752140, 38.755180>,  <33.305679, 38.603947, 38.815037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484722, 38.752140, 38.755180>,  <33.783123, 38.999130, 38.655422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484722, 38.752140, 38.755180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581986, 0.786538, 0.206519,
		-0.323682, 0.008918, -0.946124,
		-0.746004, -0.617478, 0.249398,
		33.260921, 38.566898, 38.829998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281464, 38.688156, 38.213951>,  <33.783123, 38.999130, 38.655422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281464, 38.688156, 38.213951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274155, 38.368858, 38.454773>,  <34.269772, 38.177280, 38.599266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274155, 38.368858, 38.454773>,  <34.281464, 38.688156, 38.213951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274155, 38.368858, 38.454773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731561, -0.421129, -0.536162,
		0.681532, 0.430644, 0.591659,
		-0.018269, -0.798246, 0.602055,
		34.268673, 38.129383, 38.635391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019913, 38.490040, 38.345592>,  <34.281464, 38.688156, 38.213951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019913, 38.490040, 38.345592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808979, 38.156860, 38.412655>,  <34.682419, 37.956951, 38.452892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808979, 38.156860, 38.412655>,  <35.019913, 38.490040, 38.345592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808979, 38.156860, 38.412655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759306, -0.550543, -0.346924,
		0.381274, -0.055643, 0.922786,
		-0.527337, -0.832950, 0.167658,
		34.650780, 37.906975, 38.462952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462002, 38.012589, 38.714954>,  <35.019913, 38.490040, 38.345592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462002, 38.012589, 38.714954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180019, 37.788223, 38.541332>,  <35.010830, 37.653603, 38.437157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180019, 37.788223, 38.541332>,  <35.462002, 38.012589, 38.714954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180019, 37.788223, 38.541332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703052, -0.471933, -0.531974,
		0.093547, -0.680184, 0.727047,
		-0.704958, -0.560917, -0.434057,
		34.968533, 37.619949, 38.411114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673847, 37.253624, 38.703976>,  <35.462002, 38.012589, 38.714954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673847, 37.253624, 38.703976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421352, 37.313122, 38.399498>,  <35.269855, 37.348820, 38.216812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421352, 37.313122, 38.399498>,  <35.673847, 37.253624, 38.703976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421352, 37.313122, 38.399498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665891, -0.399245, -0.630232,
		-0.397616, -0.904705, 0.153007,
		-0.631261, 0.148705, -0.761181,
		35.231979, 37.357746, 38.171139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562260, 36.624863, 38.327103>,  <35.673847, 37.253624, 38.703976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562260, 36.624863, 38.327103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448174, 36.884430, 38.044952>,  <35.379723, 37.040169, 37.875664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448174, 36.884430, 38.044952>,  <35.562260, 36.624863, 38.327103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448174, 36.884430, 38.044952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522601, -0.511635, -0.681996,
		-0.803454, -0.563148, -0.193198,
		-0.285218, 0.648918, -0.705377,
		35.362610, 37.079105, 37.833340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309292, 36.245823, 37.774158>,  <35.562260, 36.624863, 38.327103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309292, 36.245823, 37.774158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354939, 36.578491, 37.556789>,  <35.382324, 36.778091, 37.426369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354939, 36.578491, 37.556789>,  <35.309292, 36.245823, 37.774158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354939, 36.578491, 37.556789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493457, -0.522195, -0.695567,
		-0.862252, -0.188780, -0.469983,
		0.114114, 0.831670, -0.543418,
		35.389172, 36.827991, 37.393764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010017, 36.246212, 37.096920>,  <35.309292, 36.245823, 37.774158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010017, 36.246212, 37.096920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308968, 36.511951, 37.093590>,  <35.488338, 36.671394, 37.091591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308968, 36.511951, 37.093590>,  <35.010017, 36.246212, 37.096920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308968, 36.511951, 37.093590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497253, -0.567625, -0.656156,
		-0.440643, 0.486255, -0.754579,
		0.747377, 0.664348, -0.008329,
		35.533180, 36.711254, 37.091091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622982, 36.101372, 36.740002>,  <35.010017, 36.246212, 37.096920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622982, 36.101372, 36.740002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663692, 36.499241, 36.733582>,  <35.688118, 36.737965, 36.729729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663692, 36.499241, 36.733582>,  <35.622982, 36.101372, 36.740002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663692, 36.499241, 36.733582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767550, -0.088784, -0.634811,
		-0.632857, 0.052290, -0.772501,
		0.101781, 0.994677, -0.016052,
		35.694225, 36.797646, 36.728767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605206, 36.331799, 36.023064>,  <35.622982, 36.101372, 36.740002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605206, 36.331799, 36.023064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821289, 36.530125, 36.295048>,  <35.950939, 36.649120, 36.458237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821289, 36.530125, 36.295048>,  <35.605206, 36.331799, 36.023064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821289, 36.530125, 36.295048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794166, -0.033102, -0.606799,
		-0.278351, 0.867798, -0.411640,
		0.540205, 0.495814, 0.679961,
		35.983349, 36.678867, 36.499035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992298, 36.963604, 35.757248>,  <35.605206, 36.331799, 36.023064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992298, 36.963604, 35.757248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202980, 36.877205, 36.086109>,  <36.329388, 36.825363, 36.283424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202980, 36.877205, 36.086109>,  <35.992298, 36.963604, 35.757248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202980, 36.877205, 36.086109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815965, -0.142667, -0.560220,
		0.238302, 0.965914, 0.101107,
		0.526700, -0.216001, 0.822150,
		36.360989, 36.812405, 36.332756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597549, 37.487267, 35.779045>,  <35.992298, 36.963604, 35.757248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597549, 37.487267, 35.779045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649403, 37.142815, 35.975681>,  <36.680515, 36.936146, 36.093662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649403, 37.142815, 35.975681>,  <36.597549, 37.487267, 35.779045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649403, 37.142815, 35.975681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936504, -0.056572, -0.346064,
		0.325814, 0.505235, 0.799114,
		0.129636, -0.861126, 0.491586,
		36.688293, 36.884476, 36.123158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156666, 37.602081, 36.301109>,  <36.597549, 37.487267, 35.779045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156666, 37.602081, 36.301109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154469, 37.223900, 36.170826>,  <37.153152, 36.996990, 36.092655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154469, 37.223900, 36.170826>,  <37.156666, 37.602081, 36.301109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154469, 37.223900, 36.170826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947693, 0.099029, -0.303431,
		0.319135, -0.310337, 0.895457,
		-0.005490, -0.945454, -0.325708,
		37.152821, 36.940262, 36.073112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714329, 37.247334, 36.695324>,  <37.156666, 37.602081, 36.301109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714329, 37.247334, 36.695324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622215, 37.035732, 36.368614>,  <37.566948, 36.908772, 36.172588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622215, 37.035732, 36.368614>,  <37.714329, 37.247334, 36.695324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622215, 37.035732, 36.368614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972192, -0.088343, -0.216882,
		0.042575, -0.844008, 0.534638,
		-0.230282, -0.529005, -0.816777,
		37.553131, 36.877029, 36.123581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367004, 37.084061, 36.495220>,  <37.714329, 37.247334, 36.695324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367004, 37.084061, 36.495220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133785, 36.846161, 36.273834>,  <37.993855, 36.703419, 36.141003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133785, 36.846161, 36.273834>,  <38.367004, 37.084061, 36.495220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133785, 36.846161, 36.273834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812017, -0.404633, -0.420595,
		0.026199, -0.694652, 0.718868,
		-0.583045, -0.594753, -0.553469,
		37.958870, 36.667736, 36.107792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656017, 36.296200, 36.362953>,  <38.367004, 37.084061, 36.495220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656017, 36.296200, 36.362953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403450, 36.411179, 36.074875>,  <38.251907, 36.480164, 35.902027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403450, 36.411179, 36.074875>,  <38.656017, 36.296200, 36.362953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403450, 36.411179, 36.074875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626624, -0.357955, -0.692250,
		-0.456781, -0.888394, 0.045901,
		-0.631422, 0.287444, -0.720196,
		38.214024, 36.497414, 35.858814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498940, 35.691296, 35.843365>,  <38.656017, 36.296200, 36.362953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498940, 35.691296, 35.843365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401608, 36.027035, 35.648930>,  <38.343208, 36.228477, 35.532269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401608, 36.027035, 35.648930>,  <38.498940, 35.691296, 35.843365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401608, 36.027035, 35.648930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740005, -0.163330, -0.652469,
		-0.627042, -0.518476, -0.581378,
		-0.243334, 0.839348, -0.486089,
		38.328606, 36.278839, 35.503101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543324, 35.521053, 35.159832>,  <38.498940, 35.691296, 35.843365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543324, 35.521053, 35.159832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617931, 35.911091, 35.207836>,  <38.662697, 36.145115, 35.236637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617931, 35.911091, 35.207836>,  <38.543324, 35.521053, 35.159832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617931, 35.911091, 35.207836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871602, -0.107868, -0.478199,
		-0.453344, 0.193796, -0.870013,
		0.186519, 0.975094, 0.120012,
		38.673885, 36.203617, 35.243839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783653, 35.677238, 34.570408>,  <38.543324, 35.521053, 35.159832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783653, 35.677238, 34.570408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870804, 36.019535, 34.758125>,  <38.923096, 36.224915, 34.870754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870804, 36.019535, 34.758125>,  <38.783653, 35.677238, 34.570408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870804, 36.019535, 34.758125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880119, 0.035541, -0.473420,
		-0.421806, 0.516177, -0.745413,
		0.217876, 0.855744, 0.469289,
		38.936165, 36.276257, 34.898911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941292, 36.249714, 34.047615>,  <38.783653, 35.677238, 34.570408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941292, 36.249714, 34.047615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114983, 36.279331, 34.406715>,  <39.219196, 36.297100, 34.622177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114983, 36.279331, 34.406715>,  <38.941292, 36.249714, 34.047615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114983, 36.279331, 34.406715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898993, -0.098753, -0.426685,
		0.057064, 0.992354, -0.109443,
		0.434230, 0.074040, 0.897754,
		39.245251, 36.301544, 34.676041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639561, 36.633755, 33.816647>,  <38.941292, 36.249714, 34.047615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639561, 36.633755, 33.816647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700180, 36.506744, 34.191071>,  <39.736553, 36.430538, 34.415726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700180, 36.506744, 34.191071>,  <39.639561, 36.633755, 33.816647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700180, 36.506744, 34.191071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916399, -0.309797, -0.253451,
		0.370467, 0.896216, 0.244032,
		0.151547, -0.317526, 0.936061,
		39.745644, 36.411488, 34.471889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382603, 36.746765, 33.994457>,  <39.639561, 36.633755, 33.816647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382603, 36.746765, 33.994457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290993, 36.464836, 34.263016>,  <40.236027, 36.295681, 34.424152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290993, 36.464836, 34.263016>,  <40.382603, 36.746765, 33.994457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290993, 36.464836, 34.263016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948407, -0.316923, -0.009181,
		0.219252, 0.634656, 0.741040,
		-0.229026, -0.704820, 0.671398,
		40.222286, 36.253391, 34.464436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950108, 36.628036, 34.540329>,  <40.382603, 36.746765, 33.994457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950108, 36.628036, 34.540329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753826, 36.280476, 34.566311>,  <40.636059, 36.071938, 34.581902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753826, 36.280476, 34.566311>,  <40.950108, 36.628036, 34.540329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753826, 36.280476, 34.566311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862437, -0.494965, -0.105888,
		0.124157, 0.004061, 0.992254,
		-0.490701, -0.868903, 0.064955,
		40.606617, 36.019806, 34.585796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430359, 36.140652, 34.815273>,  <40.950108, 36.628036, 34.540329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430359, 36.140652, 34.815273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144936, 35.939949, 34.619694>,  <40.973682, 35.819527, 34.502346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144936, 35.939949, 34.619694>,  <41.430359, 36.140652, 34.815273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144936, 35.939949, 34.619694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699931, -0.540886, -0.466411,
		-0.030439, -0.675042, 0.737151,
		-0.713562, -0.501758, -0.488947,
		40.930866, 35.789421, 34.473011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292130, 35.416153, 34.869640>,  <41.430359, 36.140652, 34.815273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292130, 35.416153, 34.869640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225403, 35.519878, 34.489128>,  <41.185368, 35.582115, 34.260822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225403, 35.519878, 34.489128>,  <41.292130, 35.416153, 34.869640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225403, 35.519878, 34.489128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621075, -0.721697, -0.305647,
		-0.765792, -0.641801, -0.040663,
		-0.166818, 0.259316, -0.951276,
		41.175358, 35.597672, 34.203747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111847, 34.812588, 34.441742>,  <41.292130, 35.416153, 34.869640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111847, 34.812588, 34.441742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293259, 35.104580, 34.237221>,  <41.402107, 35.279778, 34.114506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293259, 35.104580, 34.237221>,  <41.111847, 34.812588, 34.441742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293259, 35.104580, 34.237221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736288, -0.630149, -0.246560,
		-0.502184, -0.264645, -0.823271,
		0.453533, 0.729983, -0.511305,
		41.429317, 35.323574, 34.083828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322945, 34.515522, 33.763950>,  <41.111847, 34.812588, 34.441742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322945, 34.515522, 33.763950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506618, 34.801506, 33.974846>,  <41.616821, 34.973099, 34.101383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506618, 34.801506, 33.974846>,  <41.322945, 34.515522, 33.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506618, 34.801506, 33.974846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851932, -0.522593, -0.033304,
		0.251720, 0.464463, -0.849065,
		0.459184, 0.714962, 0.527238,
		41.644375, 35.015995, 34.133018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881378, 34.129833, 33.795010>,  <41.322945, 34.515522, 33.763950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881378, 34.129833, 33.795010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980213, 34.416882, 34.055462>,  <42.039513, 34.589111, 34.211735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980213, 34.416882, 34.055462>,  <41.881378, 34.129833, 33.795010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980213, 34.416882, 34.055462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854762, -0.477937, 0.202381,
		0.456433, 0.506560, -0.731482,
		0.247084, 0.717616, 0.651135,
		42.054337, 34.632168, 34.250801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492405, 34.444199, 33.552963>,  <41.881378, 34.129833, 33.795010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492405, 34.444199, 33.552963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460068, 34.434589, 33.951538>,  <42.440666, 34.428825, 34.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460068, 34.434589, 33.951538>,  <42.492405, 34.444199, 33.552963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460068, 34.434589, 33.951538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932687, -0.354384, 0.067129,
		0.351509, 0.934791, 0.051052,
		-0.080844, -0.024019, 0.996437,
		42.435814, 34.427383, 34.250469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041676, 34.998569, 33.824100>,  <42.492405, 34.444199, 33.552963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041676, 34.998569, 33.824100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924026, 34.680794, 34.036648>,  <42.853436, 34.490128, 34.164177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924026, 34.680794, 34.036648>,  <43.041676, 34.998569, 33.824100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924026, 34.680794, 34.036648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935209, -0.353911, -0.011471,
		0.197170, 0.493568, 0.847062,
		-0.294123, -0.794442, 0.531370,
		42.835789, 34.442463, 34.196060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261837, 34.973282, 34.609234>,  <43.041676, 34.998569, 33.824100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261837, 34.973282, 34.609234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236813, 34.671757, 34.347595>,  <43.221798, 34.490841, 34.190613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236813, 34.671757, 34.347595>,  <43.261837, 34.973282, 34.609234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236813, 34.671757, 34.347595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971527, -0.196056, 0.133029,
		-0.228520, -0.627154, 0.744618,
		-0.062557, -0.753816, -0.654100,
		43.218044, 34.445610, 34.151363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521938, 34.342880, 34.862408>,  <43.261837, 34.973282, 34.609234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521938, 34.342880, 34.862408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560707, 34.339497, 34.464306>,  <43.583969, 34.337467, 34.225445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560707, 34.339497, 34.464306>,  <43.521938, 34.342880, 34.862408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560707, 34.339497, 34.464306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988075, -0.119383, 0.097238,
		-0.119640, -0.992812, -0.003209,
		0.096923, -0.008463, -0.995256,
		43.589783, 34.336960, 34.165730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973000, 33.879795, 34.797119>,  <43.521938, 34.342880, 34.862408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973000, 33.879795, 34.797119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005516, 34.079628, 34.452141>,  <44.025024, 34.199528, 34.245155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005516, 34.079628, 34.452141>,  <43.973000, 33.879795, 34.797119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005516, 34.079628, 34.452141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993338, 0.030298, 0.111180,
		0.081674, -0.865734, -0.493795,
		0.081291, 0.499586, -0.862441,
		44.029903, 34.229504, 34.193409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075306, 33.275322, 35.275433>,  <43.973000, 33.879795, 34.797119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075306, 33.275322, 35.275433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740391, 33.118889, 35.122593>,  <43.539440, 33.025028, 35.030888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740391, 33.118889, 35.122593>,  <44.075306, 33.275322, 35.275433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740391, 33.118889, 35.122593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523161, 0.369925, 0.767762,
		-0.158911, 0.842738, -0.514334,
		-0.837287, -0.391085, -0.382102,
		43.489204, 33.001564, 35.007961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624115, 32.710926, 35.679413>,  <44.075306, 33.275322, 35.275433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624115, 32.710926, 35.679413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013069, 32.617924, 35.671387>,  <44.246441, 32.562122, 35.666573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013069, 32.617924, 35.671387>,  <43.624115, 32.710926, 35.679413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013069, 32.617924, 35.671387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126072, 0.451006, 0.883572,
		-0.196388, -0.861704, 0.467866,
		0.972388, -0.232508, -0.020065,
		44.304787, 32.548172, 35.665367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139236, 33.302269, 36.014267>,  <43.624115, 32.710926, 35.679413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139236, 33.302269, 36.014267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093258, 33.696476, 35.964386>,  <44.065670, 33.932999, 35.934456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093258, 33.696476, 35.964386>,  <44.139236, 33.302269, 36.014267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093258, 33.696476, 35.964386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976635, 0.135059, 0.167159,
		0.181579, -0.102574, -0.978012,
		-0.114943, 0.985514, -0.124702,
		44.058777, 33.992130, 35.926975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735935, 33.406532, 35.762089>,  <44.139236, 33.302269, 36.014267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735935, 33.406532, 35.762089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619602, 33.784897, 35.819588>,  <44.549805, 34.011917, 35.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619602, 33.784897, 35.819588>,  <44.735935, 33.406532, 35.762089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619602, 33.784897, 35.819588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950058, 0.303282, -0.073553,
		-0.113172, 0.115179, -0.986877,
		-0.290831, 0.945914, 0.143750,
		44.532352, 34.068672, 35.862713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069843, 33.958889, 35.248875>,  <44.735935, 33.406532, 35.762089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069843, 33.958889, 35.248875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008873, 34.112320, 35.613213>,  <44.972290, 34.204380, 35.831814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008873, 34.112320, 35.613213>,  <45.069843, 33.958889, 35.248875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008873, 34.112320, 35.613213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961349, 0.271359, 0.046601,
		-0.229290, 0.882742, -0.410112,
		-0.152424, 0.383576, 0.910844,
		44.963146, 34.227394, 35.886467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786030, 33.913754, 35.160168>,  <45.069843, 33.958889, 35.248875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786030, 33.913754, 35.160168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833206, 34.117584, 34.819244>,  <45.861511, 34.239883, 34.614693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833206, 34.117584, 34.819244>,  <45.786030, 33.913754, 35.160168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833206, 34.117584, 34.819244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915044, 0.277623, 0.292607,
		0.385725, -0.814407, -0.433541,
		0.117940, 0.509575, -0.852305,
		45.868587, 34.270458, 34.563553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386112, 33.640862, 34.993355>,  <45.786030, 33.913754, 35.160168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386112, 33.640862, 34.993355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.356052, 33.983109, 34.788502>,  <46.338017, 34.188457, 34.665588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.356052, 33.983109, 34.788502>,  <46.386112, 33.640862, 34.993355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356052, 33.983109, 34.788502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963834, 0.194015, 0.182711,
		0.255691, -0.479880, -0.839248,
		-0.075147, 0.855613, -0.512132,
		46.333508, 34.239792, 34.634861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896706, 33.687473, 34.537903>,  <46.386112, 33.640862, 34.993355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896706, 33.687473, 34.537903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783585, 34.064987, 34.606369>,  <46.715714, 34.291496, 34.647449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783585, 34.064987, 34.606369>,  <46.896706, 33.687473, 34.537903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783585, 34.064987, 34.606369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959177, 0.277907, 0.052415,
		0.001901, 0.178997, -0.983848,
		-0.282801, 0.943784, 0.171161,
		46.698746, 34.348122, 34.657719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337505, 34.183689, 34.113773>,  <46.896706, 33.687473, 34.537903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337505, 34.183689, 34.113773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.187317, 34.356163, 34.441944>,  <47.097202, 34.459648, 34.638847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.187317, 34.356163, 34.441944>,  <47.337505, 34.183689, 34.113773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.187317, 34.356163, 34.441944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911957, 0.329836, 0.244014,
		-0.165391, 0.839815, -0.517066,
		-0.375473, 0.431184, 0.820427,
		47.074677, 34.485519, 34.688072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.952312, 34.445724, 34.522747>,  <47.337505, 34.183689, 34.113773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.952312, 34.445724, 34.522747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677963, 34.566753, 34.787479>,  <47.513351, 34.639370, 34.946320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677963, 34.566753, 34.787479>,  <47.952312, 34.445724, 34.522747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.677963, 34.566753, 34.787479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725176, 0.208209, 0.656330,
		0.060788, 0.930107, -0.362224,
		-0.685875, 0.302574, 0.661835,
		47.472202, 34.657524, 34.986031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.108395, 35.084164, 34.793381>,  <47.952312, 34.445724, 34.522747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.108395, 35.084164, 34.793381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.884560, 34.896175, 35.066433>,  <47.750259, 34.783382, 35.230267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.884560, 34.896175, 35.066433>,  <48.108395, 35.084164, 34.793381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.884560, 34.896175, 35.066433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504704, 0.460080, 0.730479,
		-0.657367, 0.753298, -0.020263,
		-0.559591, -0.469966, 0.682634,
		47.716682, 34.755184, 35.271225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.436211, 29.510878, 26.116352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048420, 29.438494, 26.182529>,  <35.815746, 29.395063, 26.222235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048420, 29.438494, 26.182529>,  <36.436211, 29.510878, 26.116352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048420, 29.438494, 26.182529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165591, 0.014392, 0.986089,
		-0.180824, 0.983385, 0.016013,
		-0.969475, -0.180961, 0.165442,
		35.757576, 29.384205, 26.232162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281715, 30.021095, 26.603001>,  <36.436211, 29.510878, 26.116352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281715, 30.021095, 26.603001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.980244, 29.759514, 26.629290>,  <35.799362, 29.602566, 26.645063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.980244, 29.759514, 26.629290>,  <36.281715, 30.021095, 26.603001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980244, 29.759514, 26.629290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011299, 0.112871, 0.993545,
		-0.657148, 0.748069, -0.092457,
		-0.753677, -0.653951, 0.065721,
		35.754139, 29.563328, 26.649006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792233, 30.330496, 27.037361>,  <36.281715, 30.021095, 26.603001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792233, 30.330496, 27.037361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719460, 29.938667, 27.071623>,  <35.675797, 29.703569, 27.092180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719460, 29.938667, 27.071623>,  <35.792233, 30.330496, 27.037361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719460, 29.938667, 27.071623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199924, 0.048439, 0.978613,
		-0.962772, 0.195170, 0.187027,
		-0.181936, -0.979573, 0.085655,
		35.664879, 29.644796, 27.097319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261578, 30.252865, 27.661354>,  <35.792233, 30.330496, 27.037361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261578, 30.252865, 27.661354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436474, 29.900988, 27.586569>,  <35.541412, 29.689861, 27.541698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436474, 29.900988, 27.586569>,  <35.261578, 30.252865, 27.661354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436474, 29.900988, 27.586569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212198, -0.101105, 0.971982,
		-0.873950, -0.464667, 0.142462,
		0.437244, -0.879695, -0.186962,
		35.567646, 29.637079, 27.530479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881889, 29.786278, 28.050369>,  <35.261578, 30.252865, 27.661354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881889, 29.786278, 28.050369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247303, 29.639750, 27.979631>,  <35.466549, 29.551832, 27.937189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247303, 29.639750, 27.979631>,  <34.881889, 29.786278, 28.050369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247303, 29.639750, 27.979631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125200, -0.160433, 0.979074,
		-0.387026, -0.916554, -0.100697,
		0.913529, -0.366320, -0.176844,
		35.521362, 29.529854, 27.926579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881416, 29.323807, 28.556831>,  <34.881889, 29.786278, 28.050369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881416, 29.323807, 28.556831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274475, 29.330730, 28.482958>,  <35.510311, 29.334885, 28.438633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274475, 29.330730, 28.482958>,  <34.881416, 29.323807, 28.556831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274475, 29.330730, 28.482958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177077, 0.209006, 0.961748,
		0.055245, -0.977761, 0.202314,
		0.982645, 0.017307, -0.184686,
		35.569267, 29.335922, 28.427551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234310, 28.831121, 29.111715>,  <34.881416, 29.323807, 28.556831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234310, 28.831121, 29.111715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492451, 29.101709, 28.969780>,  <35.647335, 29.264061, 28.884619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492451, 29.101709, 28.969780>,  <35.234310, 28.831121, 29.111715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492451, 29.101709, 28.969780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382848, 0.115537, 0.916558,
		0.661019, -0.727352, -0.184422,
		0.645353, 0.676468, -0.354838,
		35.686058, 29.304649, 28.863329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977444, 28.685862, 29.366484>,  <35.234310, 28.831121, 29.111715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977444, 28.685862, 29.366484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011967, 29.081636, 29.319893>,  <36.032681, 29.319101, 29.291939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011967, 29.081636, 29.319893>,  <35.977444, 28.685862, 29.366484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011967, 29.081636, 29.319893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347191, 0.079714, 0.934400,
		0.933814, -0.121090, -0.336643,
		0.086312, 0.989436, -0.116479,
		36.037861, 29.378468, 29.284948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529842, 28.928204, 29.743149>,  <35.977444, 28.685862, 29.366484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529842, 28.928204, 29.743149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354969, 29.280077, 29.668291>,  <36.250046, 29.491201, 29.623377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354969, 29.280077, 29.668291>,  <36.529842, 28.928204, 29.743149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354969, 29.280077, 29.668291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315565, 0.344893, 0.884007,
		0.842193, 0.327416, -0.428379,
		-0.437183, 0.879686, -0.187146,
		36.223816, 29.543983, 29.612148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047962, 29.534676, 29.745882>,  <36.529842, 28.928204, 29.743149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047962, 29.534676, 29.745882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684303, 29.671324, 29.841164>,  <36.466106, 29.753313, 29.898333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684303, 29.671324, 29.841164>,  <37.047962, 29.534676, 29.745882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684303, 29.671324, 29.841164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375300, 0.424098, 0.824191,
		0.180538, 0.838712, -0.513779,
		-0.909151, 0.341619, 0.238203,
		36.411556, 29.773809, 29.912624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179752, 30.199783, 30.085388>,  <37.047962, 29.534676, 29.745882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179752, 30.199783, 30.085388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791843, 30.180401, 30.181049>,  <36.559097, 30.168772, 30.238447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791843, 30.180401, 30.181049>,  <37.179752, 30.199783, 30.085388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791843, 30.180401, 30.181049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194984, 0.435384, 0.878876,
		-0.146712, 0.898940, -0.412774,
		-0.969772, -0.048457, 0.239155,
		36.500912, 30.165863, 30.252796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922024, 30.949476, 30.131817>,  <37.179752, 30.199783, 30.085388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922024, 30.949476, 30.131817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700077, 30.692003, 30.342640>,  <36.566910, 30.537519, 30.469133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700077, 30.692003, 30.342640>,  <36.922024, 30.949476, 30.131817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700077, 30.692003, 30.342640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448267, 0.302374, 0.841205,
		-0.700838, 0.703023, 0.120764,
		-0.554871, -0.643683, 0.527057,
		36.533615, 30.498898, 30.500757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701126, 31.356709, 30.628473>,  <36.922024, 30.949476, 30.131817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701126, 31.356709, 30.628473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665409, 30.985245, 30.772482>,  <36.643978, 30.762367, 30.858887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665409, 30.985245, 30.772482>,  <36.701126, 31.356709, 30.628473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665409, 30.985245, 30.772482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436048, 0.288536, 0.852414,
		-0.895482, 0.233105, 0.379175,
		-0.089297, -0.928660, 0.360024,
		36.638618, 30.706646, 30.880489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375908, 31.412945, 31.247025>,  <36.701126, 31.356709, 30.628473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375908, 31.412945, 31.247025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558437, 31.059713, 31.290731>,  <36.667957, 30.847775, 31.316956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558437, 31.059713, 31.290731>,  <36.375908, 31.412945, 31.247025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558437, 31.059713, 31.290731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302589, 0.269485, 0.914231,
		-0.836783, -0.384124, 0.390183,
		0.456326, -0.883078, 0.109269,
		36.695335, 30.794790, 31.323511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213009, 31.280512, 31.902376>,  <36.375908, 31.412945, 31.247025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213009, 31.280512, 31.902376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518192, 31.046278, 31.792837>,  <36.701302, 30.905739, 31.727114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518192, 31.046278, 31.792837>,  <36.213009, 31.280512, 31.902376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518192, 31.046278, 31.792837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427817, 0.139793, 0.892990,
		-0.484638, -0.798467, 0.357178,
		0.762954, -0.585584, -0.273848,
		36.747078, 30.870604, 31.710682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363804, 30.997417, 32.510918>,  <36.213009, 31.280512, 31.902376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363804, 30.997417, 32.510918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700733, 30.930340, 32.306026>,  <36.902889, 30.890093, 32.183090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700733, 30.930340, 32.306026>,  <36.363804, 30.997417, 32.510918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700733, 30.930340, 32.306026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532470, 0.111653, 0.839052,
		-0.083512, -0.979496, 0.183339,
		0.842319, -0.167694, -0.512228,
		36.953430, 30.880032, 32.152359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720459, 30.590527, 32.998672>,  <36.363804, 30.997417, 32.510918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720459, 30.590527, 32.998672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995392, 30.739697, 32.749355>,  <37.160351, 30.829199, 32.599766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995392, 30.739697, 32.749355>,  <36.720459, 30.590527, 32.998672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995392, 30.739697, 32.749355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600349, 0.191342, 0.776511,
		0.408844, -0.907917, -0.092370,
		0.687334, 0.372927, -0.623296,
		37.201591, 30.851574, 32.562366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332901, 30.202492, 33.118240>,  <36.720459, 30.590527, 32.998672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332901, 30.202492, 33.118240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440647, 30.547626, 32.947147>,  <37.505295, 30.754707, 32.844490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440647, 30.547626, 32.947147>,  <37.332901, 30.202492, 33.118240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440647, 30.547626, 32.947147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667009, 0.153219, 0.729125,
		0.694652, -0.481702, -0.534248,
		0.269364, 0.862837, -0.427734,
		37.521458, 30.806477, 32.818829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997478, 30.122782, 32.937126>,  <37.332901, 30.202492, 33.118240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997478, 30.122782, 32.937126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931091, 30.517061, 32.948807>,  <37.891258, 30.753630, 32.955814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931091, 30.517061, 32.948807>,  <37.997478, 30.122782, 32.937126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931091, 30.517061, 32.948807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675643, 0.092092, 0.731455,
		0.718304, 0.141131, -0.681264,
		-0.165970, 0.985698, 0.029204,
		37.881302, 30.812771, 32.957569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668842, 30.386486, 33.038853>,  <37.997478, 30.122782, 32.937126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668842, 30.386486, 33.038853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417397, 30.682741, 33.133762>,  <38.266529, 30.860495, 33.190708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417397, 30.682741, 33.133762>,  <38.668842, 30.386486, 33.038853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417397, 30.682741, 33.133762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626471, 0.301436, 0.718798,
		0.460844, 0.600495, -0.653475,
		-0.628615, 0.740636, 0.237278,
		38.228813, 30.904932, 33.204945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153202, 30.992130, 33.120583>,  <38.668842, 30.386486, 33.038853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153202, 30.992130, 33.120583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805149, 31.038641, 33.312145>,  <38.596317, 31.066547, 33.427082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805149, 31.038641, 33.312145>,  <39.153202, 30.992130, 33.120583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805149, 31.038641, 33.312145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481588, 0.406889, 0.776218,
		-0.104605, 0.906047, -0.410045,
		-0.870133, 0.116277, 0.478904,
		38.544109, 31.073524, 33.455818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387302, 31.208965, 33.795883>,  <39.153202, 30.992130, 33.120583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387302, 31.208965, 33.795883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692413, 31.465076, 33.759624>,  <39.875481, 31.618742, 33.737869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692413, 31.465076, 33.759624>,  <39.387302, 31.208965, 33.795883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692413, 31.465076, 33.759624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156618, 0.046909, -0.986545,
		-0.627409, 0.766711, 0.136060,
		0.762777, 0.640276, -0.090649,
		39.921246, 31.657160, 33.732430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097935, 31.838673, 33.483761>,  <39.387302, 31.208965, 33.795883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097935, 31.838673, 33.483761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486065, 31.766590, 33.419277>,  <39.718945, 31.723341, 33.380589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486065, 31.766590, 33.419277>,  <39.097935, 31.838673, 33.483761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486065, 31.766590, 33.419277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134455, 0.151996, -0.979193,
		0.200960, 0.971814, 0.123256,
		0.970328, -0.180207, -0.161210,
		39.777164, 31.712528, 33.370914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092628, 32.164883, 32.918873>,  <39.097935, 31.838673, 33.483761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092628, 32.164883, 32.918873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441040, 31.970701, 32.948925>,  <39.650085, 31.854193, 32.966957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441040, 31.970701, 32.948925>,  <39.092628, 32.164883, 32.918873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441040, 31.970701, 32.948925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077809, -0.014673, -0.996860,
		0.485030, 0.874140, 0.024991,
		0.871029, -0.485452, 0.075133,
		39.702351, 31.825066, 32.971466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682781, 32.582832, 32.684048>,  <39.092628, 32.164883, 32.918873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682781, 32.582832, 32.684048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749828, 32.192131, 32.630592>,  <39.790058, 31.957710, 32.598518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749828, 32.192131, 32.630592>,  <39.682781, 32.582832, 32.684048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749828, 32.192131, 32.630592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076399, 0.122276, -0.989551,
		0.982887, 0.176076, -0.054127,
		0.167618, -0.976753, -0.133635,
		39.800114, 31.899105, 32.590500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965755, 32.708187, 32.041313>,  <39.682781, 32.582832, 32.684048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965755, 32.708187, 32.041313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924637, 32.311142, 32.067078>,  <39.899963, 32.072914, 32.082539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924637, 32.311142, 32.067078>,  <39.965755, 32.708187, 32.041313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924637, 32.311142, 32.067078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192061, -0.083345, -0.977838,
		0.975984, -0.088151, 0.199211,
		-0.102800, -0.992614, 0.064413,
		39.893795, 32.013359, 32.086403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512970, 32.392986, 31.740885>,  <39.965755, 32.708187, 32.041313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512970, 32.392986, 31.740885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.213703, 32.128246, 31.722122>,  <40.034142, 31.969402, 31.710865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.213703, 32.128246, 31.722122>,  <40.512970, 32.392986, 31.740885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213703, 32.128246, 31.722122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161828, -0.113460, -0.980275,
		0.643475, -0.740999, 0.191993,
		-0.748166, -0.661852, -0.046906,
		39.989254, 31.929691, 31.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739597, 32.025837, 31.184008>,  <40.512970, 32.392986, 31.740885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739597, 32.025837, 31.184008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364502, 31.891977, 31.221226>,  <40.139446, 31.811661, 31.243557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364502, 31.891977, 31.221226>,  <40.739597, 32.025837, 31.184008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364502, 31.891977, 31.221226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030073, -0.188644, -0.981585,
		0.346042, -0.923267, 0.166834,
		-0.937737, -0.334652, 0.093044,
		40.083179, 31.791582, 31.249140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637772, 31.426327, 30.668432>,  <40.739597, 32.025837, 31.184008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637772, 31.426327, 30.668432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.263950, 31.528383, 30.767637>,  <40.039658, 31.589617, 30.827160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.263950, 31.528383, 30.767637>,  <40.637772, 31.426327, 30.668432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263950, 31.528383, 30.767637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324207, -0.323366, -0.889002,
		-0.146623, -0.911228, 0.384922,
		-0.934554, 0.255142, 0.248014,
		39.983585, 31.604927, 30.842041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129677, 30.898531, 30.467781>,  <40.637772, 31.426327, 30.668432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129677, 30.898531, 30.467781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.907871, 31.229538, 30.502960>,  <39.774788, 31.428143, 30.524067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.907871, 31.229538, 30.502960>,  <40.129677, 30.898531, 30.467781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907871, 31.229538, 30.502960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457399, -0.214787, -0.862933,
		-0.695201, -0.518732, 0.497607,
		-0.554511, 0.827516, 0.087947,
		39.741516, 31.477793, 30.529345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510715, 30.671139, 30.253328>,  <40.129677, 30.898531, 30.467781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510715, 30.671139, 30.253328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.563915, 31.065386, 30.211634>,  <39.595837, 31.301935, 30.186617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.563915, 31.065386, 30.211634>,  <39.510715, 30.671139, 30.253328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563915, 31.065386, 30.211634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411457, -0.040774, -0.910516,
		-0.901673, 0.163987, 0.400117,
		0.132999, 0.985619, -0.104238,
		39.603813, 31.361073, 30.180363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889473, 30.859619, 30.078098>,  <39.510715, 30.671139, 30.253328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889473, 30.859619, 30.078098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.097603, 31.184734, 29.973305>,  <39.222481, 31.379805, 29.910429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.097603, 31.184734, 29.973305>,  <38.889473, 30.859619, 30.078098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097603, 31.184734, 29.973305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470431, 0.016773, -0.882277,
		-0.712712, 0.582315, 0.391089,
		0.520323, 0.812790, -0.261985,
		39.253700, 31.428572, 29.894709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399044, 31.327927, 29.650517>,  <38.889473, 30.859619, 30.078098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399044, 31.327927, 29.650517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773415, 31.435736, 29.559834>,  <38.998035, 31.500422, 29.505423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773415, 31.435736, 29.559834>,  <38.399044, 31.327927, 29.650517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773415, 31.435736, 29.559834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288638, 0.218132, -0.932259,
		-0.201813, 0.937963, 0.281951,
		0.935927, 0.269524, -0.226709,
		39.054192, 31.516592, 29.491821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268852, 31.953465, 29.287281>,  <38.399044, 31.327927, 29.650517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268852, 31.953465, 29.287281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620060, 31.808624, 29.162085>,  <38.830784, 31.721720, 29.086967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620060, 31.808624, 29.162085>,  <38.268852, 31.953465, 29.287281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620060, 31.808624, 29.162085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285231, 0.129271, -0.949701,
		0.384347, 0.923132, 0.010220,
		0.878021, -0.362100, -0.312991,
		38.883465, 31.699995, 29.068188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194473, 32.147724, 28.589121>,  <38.268852, 31.953465, 29.287281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194473, 32.147724, 28.589121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520840, 31.916529, 28.594921>,  <38.716660, 31.777811, 28.598402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520840, 31.916529, 28.594921>,  <38.194473, 32.147724, 28.589121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520840, 31.916529, 28.594921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026833, 0.012799, -0.999558,
		0.577551, 0.815942, 0.025952,
		0.815914, -0.577992, 0.014502,
		38.765614, 31.743132, 28.599272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749855, 32.420017, 28.038637>,  <38.194473, 32.147724, 28.589121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749855, 32.420017, 28.038637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796108, 32.026863, 28.095995>,  <38.823860, 31.790970, 28.130409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796108, 32.026863, 28.095995>,  <38.749855, 32.420017, 28.038637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796108, 32.026863, 28.095995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203885, -0.164777, -0.965028,
		0.972142, 0.082351, -0.219450,
		0.115631, -0.982887, 0.143396,
		38.830799, 31.731997, 28.139013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221970, 32.241558, 27.589500>,  <38.749855, 32.420017, 28.038637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221970, 32.241558, 27.589500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037102, 31.896280, 27.670784>,  <38.926182, 31.689114, 27.719555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037102, 31.896280, 27.670784>,  <39.221970, 32.241558, 27.589500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037102, 31.896280, 27.670784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174518, -0.136138, -0.975197,
		0.869449, -0.486172, -0.087723,
		-0.462171, -0.863194, 0.203211,
		38.898449, 31.637321, 27.731747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472294, 31.768084, 27.026438>,  <39.221970, 32.241558, 27.589500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472294, 31.768084, 27.026438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128349, 31.626614, 27.173704>,  <38.921982, 31.541733, 27.262064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128349, 31.626614, 27.173704>,  <39.472294, 31.768084, 27.026438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128349, 31.626614, 27.173704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309306, -0.212827, -0.926841,
		0.406155, -0.910835, 0.073610,
		-0.859865, -0.353673, 0.368167,
		38.870388, 31.520512, 27.284155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337780, 31.200180, 26.685352>,  <39.472294, 31.768084, 27.026438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337780, 31.200180, 26.685352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969788, 31.275640, 26.822779>,  <38.748993, 31.320917, 26.905235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969788, 31.275640, 26.822779>,  <39.337780, 31.200180, 26.685352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969788, 31.275640, 26.822779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391784, -0.416878, -0.820194,
		-0.011504, -0.889170, 0.457432,
		-0.919985, 0.188650, 0.343567,
		38.693790, 31.332235, 26.925848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988289, 30.570965, 26.693224>,  <39.337780, 31.200180, 26.685352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988289, 30.570965, 26.693224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728802, 30.874737, 26.673515>,  <38.573109, 31.056999, 26.661690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728802, 30.874737, 26.673515>,  <38.988289, 30.570965, 26.693224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728802, 30.874737, 26.673515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473408, -0.453392, -0.755196,
		-0.595858, -0.466585, 0.653645,
		-0.648721, 0.759430, -0.049272,
		38.534187, 31.102566, 26.658733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.363537, 30.209513, 26.633450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.257137, 30.581707, 26.532700>,  <38.193298, 30.805023, 26.472250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.257137, 30.581707, 26.532700>,  <38.363537, 30.209513, 26.633450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257137, 30.581707, 26.532700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558170, -0.361699, -0.746739,
		-0.785934, -0.058040, 0.615580,
		-0.265996, 0.930486, -0.251876,
		38.177338, 30.860853, 26.457136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688610, 30.155376, 26.626532>,  <38.363537, 30.209513, 26.633450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688610, 30.155376, 26.626532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816223, 30.457390, 26.397396>,  <37.892792, 30.638597, 26.259914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816223, 30.457390, 26.397396>,  <37.688610, 30.155376, 26.626532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816223, 30.457390, 26.397396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500473, -0.379061, -0.778357,
		-0.804826, 0.535011, 0.256941,
		0.319033, 0.755034, -0.572837,
		37.911934, 30.683901, 26.225546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097923, 30.563602, 26.248407>,  <37.688610, 30.155376, 26.626532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097923, 30.563602, 26.248407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421471, 30.658110, 26.033035>,  <37.615601, 30.714813, 25.903812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421471, 30.658110, 26.033035>,  <37.097923, 30.563602, 26.248407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421471, 30.658110, 26.033035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505712, -0.187634, -0.842050,
		-0.299977, 0.953400, -0.032287,
		0.808869, 0.236268, -0.538432,
		37.664131, 30.728991, 25.871506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876541, 30.805319, 25.618284>,  <37.097923, 30.563602, 26.248407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876541, 30.805319, 25.618284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251167, 30.716526, 25.509794>,  <37.475945, 30.663250, 25.444700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251167, 30.716526, 25.509794>,  <36.876541, 30.805319, 25.618284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251167, 30.716526, 25.509794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317593, -0.210218, -0.924631,
		0.148234, 0.952120, -0.267383,
		0.936569, -0.221980, -0.271225,
		37.532139, 30.649933, 25.428427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052364, 31.137367, 24.883192>,  <36.876541, 30.805319, 25.618284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052364, 31.137367, 24.883192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314587, 30.841919, 24.946043>,  <37.471920, 30.664650, 24.983753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314587, 30.841919, 24.946043>,  <37.052364, 31.137367, 24.883192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314587, 30.841919, 24.946043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065975, -0.263299, -0.962456,
		0.752263, 0.620573, -0.221336,
		0.655551, -0.738623, 0.157128,
		37.511253, 30.620333, 24.993181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678181, 31.216295, 24.397490>,  <37.052364, 31.137367, 24.883192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678181, 31.216295, 24.397490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633972, 30.830326, 24.492746>,  <37.607449, 30.598745, 24.549900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633972, 30.830326, 24.492746>,  <37.678181, 31.216295, 24.397490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633972, 30.830326, 24.492746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003791, -0.239199, -0.970963,
		0.993866, -0.108216, 0.022779,
		-0.110522, -0.964921, 0.238142,
		37.600815, 30.540850, 24.564188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876865, 30.986092, 23.832161>,  <37.678181, 31.216295, 24.397490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876865, 30.986092, 23.832161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770405, 30.645317, 24.012547>,  <37.706528, 30.440853, 24.120779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770405, 30.645317, 24.012547>,  <37.876865, 30.986092, 23.832161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770405, 30.645317, 24.012547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088011, -0.444409, -0.891490,
		0.959906, -0.276959, 0.043299,
		-0.266149, -0.851936, 0.450966,
		37.690559, 30.389736, 24.147837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293560, 30.502424, 23.564434>,  <37.876865, 30.986092, 23.832161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293560, 30.502424, 23.564434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977116, 30.302572, 23.705578>,  <37.787251, 30.182661, 23.790264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977116, 30.302572, 23.705578>,  <38.293560, 30.502424, 23.564434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977116, 30.302572, 23.705578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110788, -0.450298, -0.885979,
		0.601554, -0.740001, 0.300883,
		-0.791112, -0.499630, 0.352862,
		37.739780, 30.152683, 23.811436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419445, 29.899755, 23.253241>,  <38.293560, 30.502424, 23.564434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419445, 29.899755, 23.253241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033916, 29.895302, 23.359772>,  <37.802601, 29.892630, 23.423691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033916, 29.895302, 23.359772>,  <38.419445, 29.899755, 23.253241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033916, 29.895302, 23.359772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248192, -0.326984, -0.911856,
		0.097235, -0.944964, 0.312391,
		-0.963818, -0.011132, 0.266327,
		37.744770, 29.891962, 23.439671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109306, 29.125971, 23.190578>,  <38.419445, 29.899755, 23.253241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109306, 29.125971, 23.190578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.797543, 29.376560, 23.193336>,  <37.610485, 29.526915, 23.194990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.797543, 29.376560, 23.193336>,  <38.109306, 29.125971, 23.190578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797543, 29.376560, 23.193336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244061, -0.293471, -0.924289,
		-0.577021, -0.722083, 0.381632,
		-0.779410, 0.626476, 0.006893,
		37.563721, 29.564503, 23.195404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476799, 28.733419, 23.103910>,  <38.109306, 29.125971, 23.190578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476799, 28.733419, 23.103910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407837, 29.102871, 22.966984>,  <37.366459, 29.324543, 22.884827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407837, 29.102871, 22.966984>,  <37.476799, 28.733419, 23.103910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407837, 29.102871, 22.966984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427865, -0.383246, -0.818568,
		-0.887247, 0.005337, 0.461264,
		-0.172410, 0.923631, -0.342317,
		37.356113, 29.379961, 22.864288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825394, 28.657114, 22.794083>,  <37.476799, 28.733419, 23.103910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825394, 28.657114, 22.794083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948765, 29.007290, 22.645229>,  <37.022789, 29.217396, 22.555918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948765, 29.007290, 22.645229>,  <36.825394, 28.657114, 22.794083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948765, 29.007290, 22.645229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354966, -0.257026, -0.898853,
		-0.882537, 0.409325, 0.231477,
		0.308428, 0.875437, -0.372131,
		37.041294, 29.269920, 22.533590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295757, 28.925606, 22.329193>,  <36.825394, 28.657114, 22.794083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295757, 28.925606, 22.329193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566525, 29.199867, 22.222115>,  <36.728985, 29.364424, 22.157867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566525, 29.199867, 22.222115>,  <36.295757, 28.925606, 22.329193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566525, 29.199867, 22.222115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404018, 0.042110, -0.913781,
		-0.615264, 0.726710, 0.305521,
		0.676919, 0.685653, -0.267695,
		36.769600, 29.405563, 22.141806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976109, 29.557110, 22.097130>,  <36.295757, 28.925606, 22.329193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976109, 29.557110, 22.097130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334885, 29.523531, 21.923489>,  <36.550152, 29.503384, 21.819304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334885, 29.523531, 21.923489>,  <35.976109, 29.557110, 22.097130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334885, 29.523531, 21.923489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435327, 0.004088, -0.900263,
		0.077347, 0.996462, -0.032877,
		0.896943, -0.083945, -0.434103,
		36.603966, 29.498348, 21.793257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093739, 30.059097, 21.627096>,  <35.976109, 29.557110, 22.097130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093739, 30.059097, 21.627096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338676, 29.784828, 21.469677>,  <36.485641, 29.620266, 21.375225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338676, 29.784828, 21.469677>,  <36.093739, 30.059097, 21.627096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338676, 29.784828, 21.469677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240056, 0.313029, -0.918905,
		0.753261, 0.657164, 0.027082,
		0.612349, -0.685674, -0.393549,
		36.522381, 29.579126, 21.351612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419960, 30.402462, 21.178850>,  <36.093739, 30.059097, 21.627096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419960, 30.402462, 21.178850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492432, 30.028591, 21.056505>,  <36.535915, 29.804268, 20.983099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492432, 30.028591, 21.056505>,  <36.419960, 30.402462, 21.178850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492432, 30.028591, 21.056505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323285, 0.237121, -0.916112,
		0.928796, 0.264858, -0.259207,
		0.181177, -0.934679, -0.305861,
		36.546783, 29.748188, 20.964746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760643, 30.440479, 20.544680>,  <36.419960, 30.402462, 21.178850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760643, 30.440479, 20.544680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.624191, 30.064587, 20.553923>,  <36.542320, 29.839052, 20.559469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.624191, 30.064587, 20.553923>,  <36.760643, 30.440479, 20.544680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624191, 30.064587, 20.553923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224424, 0.057547, -0.972791,
		0.912832, -0.337038, -0.230529,
		-0.341134, -0.939731, 0.023108,
		36.521851, 29.782667, 20.560856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068050, 30.019176, 20.067331>,  <36.760643, 30.440479, 20.544680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068050, 30.019176, 20.067331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758625, 29.778748, 20.147646>,  <36.572971, 29.634491, 20.195835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758625, 29.778748, 20.147646>,  <37.068050, 30.019176, 20.067331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758625, 29.778748, 20.147646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240143, -0.015174, -0.970619,
		0.586459, -0.799051, -0.132606,
		-0.773561, -0.601072, 0.200786,
		36.526558, 29.598427, 20.207882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900280, 29.443090, 19.565685>,  <37.068050, 30.019176, 20.067331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900280, 29.443090, 19.565685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536575, 29.467442, 19.730381>,  <36.318352, 29.482052, 19.829199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536575, 29.467442, 19.730381>,  <36.900280, 29.443090, 19.565685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536575, 29.467442, 19.730381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414822, -0.213479, -0.884505,
		0.034051, -0.975049, 0.219363,
		-0.909265, 0.060878, 0.411741,
		36.263794, 29.485706, 19.853903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527187, 28.866230, 19.301344>,  <36.900280, 29.443090, 19.565685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527187, 28.866230, 19.301344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258118, 29.137562, 19.419582>,  <36.096676, 29.300362, 19.490526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258118, 29.137562, 19.419582>,  <36.527187, 28.866230, 19.301344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258118, 29.137562, 19.419582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586954, -0.245924, -0.771366,
		-0.450546, -0.692381, 0.563575,
		-0.672676, 0.678329, 0.295596,
		36.056316, 29.341061, 19.508261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927410, 28.606363, 19.072247>,  <36.527187, 28.866230, 19.301344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927410, 28.606363, 19.072247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805355, 28.970709, 19.183393>,  <35.732121, 29.189316, 19.250082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805355, 28.970709, 19.183393>,  <35.927410, 28.606363, 19.072247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805355, 28.970709, 19.183393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763615, -0.059687, -0.642908,
		-0.569018, -0.408363, 0.713764,
		-0.305142, 0.910866, 0.277869,
		35.713814, 29.243969, 19.266754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218388, 28.537636, 19.074783>,  <35.927410, 28.606363, 19.072247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218388, 28.537636, 19.074783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302109, 28.928391, 19.057425>,  <35.352341, 29.162844, 19.047009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302109, 28.928391, 19.057425>,  <35.218388, 28.537636, 19.074783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302109, 28.928391, 19.057425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715309, 0.122698, -0.687953,
		-0.666727, 0.175033, 0.724457,
		0.209303, 0.976887, -0.043397,
		35.364899, 29.221457, 19.044405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649208, 28.988569, 18.949743>,  <35.218388, 28.537636, 19.074783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649208, 28.988569, 18.949743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984875, 29.144072, 18.797602>,  <35.186275, 29.237373, 18.706316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984875, 29.144072, 18.797602>,  <34.649208, 28.988569, 18.949743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984875, 29.144072, 18.797602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471394, 0.171068, -0.865173,
		-0.271274, 0.905320, 0.326811,
		0.839166, 0.388755, -0.380356,
		35.236626, 29.260698, 18.683495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595303, 29.629272, 18.641321>,  <34.649208, 28.988569, 18.949743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595303, 29.629272, 18.641321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878735, 29.453396, 18.420567>,  <35.048794, 29.347870, 18.288115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878735, 29.453396, 18.420567>,  <34.595303, 29.629272, 18.641321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878735, 29.453396, 18.420567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536938, 0.171480, -0.826010,
		0.457829, 0.881626, -0.114580,
		0.708583, -0.439694, -0.551887,
		35.091309, 29.321487, 18.255001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959728, 29.233732, 18.986824>,  <34.595303, 29.629272, 18.641321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959728, 29.233732, 18.986824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613579, 29.354753, 19.146618>,  <33.405888, 29.427366, 19.242495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613579, 29.354753, 19.146618>,  <33.959728, 29.233732, 18.986824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613579, 29.354753, 19.146618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204289, 0.940917, -0.270076,
		-0.457597, -0.152106, -0.876053,
		-0.865373, 0.302554, 0.399487,
		33.353966, 29.445520, 19.266464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560654, 29.828846, 18.927706>,  <33.959728, 29.233732, 18.986824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560654, 29.828846, 18.927706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323910, 29.512711, 18.991035>,  <33.181862, 29.323029, 19.029034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323910, 29.512711, 18.991035>,  <33.560654, 29.828846, 18.927706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323910, 29.512711, 18.991035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086285, 0.133172, 0.987330,
		-0.801410, 0.598021, -0.010625,
		-0.591859, -0.790339, 0.158326,
		33.146351, 29.275608, 19.038534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043228, 29.958889, 19.487276>,  <33.560654, 29.828846, 18.927706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043228, 29.958889, 19.487276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081280, 29.561808, 19.457628>,  <33.104111, 29.323559, 19.439840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081280, 29.561808, 19.457628>,  <33.043228, 29.958889, 19.487276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081280, 29.561808, 19.457628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269683, -0.045972, 0.961851,
		-0.958239, -0.111491, 0.263341,
		0.095131, -0.992702, -0.074119,
		33.109818, 29.263998, 19.435392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605240, 29.710951, 20.087439>,  <33.043228, 29.958889, 19.487276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605240, 29.710951, 20.087439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872963, 29.431152, 19.987255>,  <33.033596, 29.263273, 19.927145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872963, 29.431152, 19.987255>,  <32.605240, 29.710951, 20.087439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872963, 29.431152, 19.987255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142439, -0.210043, 0.967261,
		-0.729203, -0.683071, -0.040948,
		0.669309, -0.699496, -0.250460,
		33.073757, 29.221304, 19.912117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464439, 29.168501, 20.659325>,  <32.605240, 29.710951, 20.087439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464439, 29.168501, 20.659325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822769, 29.109360, 20.491688>,  <33.037766, 29.073875, 20.391106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822769, 29.109360, 20.491688>,  <32.464439, 29.168501, 20.659325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822769, 29.109360, 20.491688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388231, -0.198570, 0.899915,
		-0.216291, -0.968867, -0.120475,
		0.895821, -0.147872, -0.419093,
		33.091518, 29.065004, 20.365961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714844, 28.556778, 20.920559>,  <32.464439, 29.168501, 20.659325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714844, 28.556778, 20.920559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.048370, 28.749044, 20.811960>,  <33.248486, 28.864405, 20.746801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.048370, 28.749044, 20.811960>,  <32.714844, 28.556778, 20.920559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048370, 28.749044, 20.811960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365161, -0.111403, 0.924254,
		0.414011, -0.869799, -0.268410,
		0.833817, 0.480665, -0.271495,
		33.298515, 28.893244, 20.730513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147358, 28.362431, 21.360817>,  <32.714844, 28.556778, 20.920559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147358, 28.362431, 21.360817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331165, 28.693869, 21.232899>,  <33.441452, 28.892731, 21.156149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331165, 28.693869, 21.232899>,  <33.147358, 28.362431, 21.360817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331165, 28.693869, 21.232899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410253, 0.121326, 0.903865,
		0.787738, -0.546543, -0.284182,
		0.459523, 0.828595, -0.319794,
		33.469021, 28.942448, 21.136961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724602, 28.222473, 21.703331>,  <33.147358, 28.362431, 21.360817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724602, 28.222473, 21.703331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718975, 28.612026, 21.612680>,  <33.715599, 28.845758, 21.558290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718975, 28.612026, 21.612680>,  <33.724602, 28.222473, 21.703331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718975, 28.612026, 21.612680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571628, 0.193792, 0.797300,
		0.820393, -0.118329, -0.559423,
		-0.014068, 0.973880, -0.226626,
		33.714756, 28.904190, 21.544693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413921, 28.445654, 21.686247>,  <33.724602, 28.222473, 21.703331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413921, 28.445654, 21.686247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174652, 28.754154, 21.773294>,  <34.031090, 28.939255, 21.825523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174652, 28.754154, 21.773294>,  <34.413921, 28.445654, 21.686247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174652, 28.754154, 21.773294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555837, 0.203688, 0.805951,
		0.577265, 0.603060, -0.550531,
		-0.598173, 0.771252, 0.217621,
		33.995201, 28.985531, 21.838581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828705, 28.878160, 22.064962>,  <34.413921, 28.445654, 21.686247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828705, 28.878160, 22.064962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.468842, 29.028030, 22.154619>,  <34.252926, 29.117952, 22.208414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.468842, 29.028030, 22.154619>,  <34.828705, 28.878160, 22.064962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468842, 29.028030, 22.154619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392195, 0.467943, 0.791968,
		0.191845, 0.800405, -0.567933,
		-0.899654, 0.374676, 0.224143,
		34.198944, 29.140432, 22.221863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006260, 29.582003, 22.264774>,  <34.828705, 28.878160, 22.064962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006260, 29.582003, 22.264774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651226, 29.479498, 22.417892>,  <34.438206, 29.417995, 22.509764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651226, 29.479498, 22.417892>,  <35.006260, 29.582003, 22.264774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651226, 29.479498, 22.417892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288150, 0.339476, 0.895391,
		-0.359403, 0.905034, -0.227471,
		-0.887581, -0.256260, 0.382794,
		34.384953, 29.402620, 22.532730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679382, 30.173159, 22.539442>,  <35.006260, 29.582003, 22.264774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679382, 30.173159, 22.539442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481422, 29.877880, 22.722803>,  <34.362644, 29.700712, 22.832821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481422, 29.877880, 22.722803>,  <34.679382, 30.173159, 22.539442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481422, 29.877880, 22.722803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232988, 0.395492, 0.888427,
		-0.837130, 0.546488, -0.023739,
		-0.494904, -0.738198, 0.458404,
		34.332951, 29.656420, 22.860325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295986, 30.399071, 23.041330>,  <34.679382, 30.173159, 22.539442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295986, 30.399071, 23.041330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284870, 30.014700, 23.151495>,  <34.278198, 29.784079, 23.217594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284870, 30.014700, 23.151495>,  <34.295986, 30.399071, 23.041330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284870, 30.014700, 23.151495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353894, 0.248212, 0.901748,
		-0.934873, 0.122529, 0.333166,
		-0.027795, -0.960925, 0.275409,
		34.276531, 29.726423, 23.234118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235088, 30.489910, 23.748949>,  <34.295986, 30.399071, 23.041330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235088, 30.489910, 23.748949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329861, 30.103928, 23.703823>,  <34.386723, 29.872339, 23.676748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329861, 30.103928, 23.703823>,  <34.235088, 30.489910, 23.748949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329861, 30.103928, 23.703823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378271, -0.015333, 0.925568,
		-0.894861, -0.261966, 0.361382,
		0.236926, -0.964955, -0.112815,
		34.400940, 29.814442, 23.669979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813080, 30.052170, 24.192772>,  <34.235088, 30.489910, 23.748949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813080, 30.052170, 24.192772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165283, 29.880074, 24.113182>,  <34.376606, 29.776815, 24.065428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165283, 29.880074, 24.113182>,  <33.813080, 30.052170, 24.192772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165283, 29.880074, 24.113182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217981, -0.005234, 0.975939,
		-0.420930, -0.902699, 0.089175,
		0.880513, -0.430240, -0.198974,
		34.429436, 29.751001, 24.053490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963036, 29.486666, 24.770166>,  <33.813080, 30.052170, 24.192772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963036, 29.486666, 24.770166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328545, 29.534376, 24.614834>,  <34.547848, 29.563004, 24.521635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328545, 29.534376, 24.614834>,  <33.963036, 29.486666, 24.770166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328545, 29.534376, 24.614834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405873, -0.308443, 0.860308,
		-0.017162, -0.943735, -0.330257,
		0.913768, 0.119278, -0.388330,
		34.602676, 29.570160, 24.498335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340088, 28.906998, 24.946083>,  <33.963036, 29.486666, 24.770166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340088, 28.906998, 24.946083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644596, 29.149767, 24.854769>,  <34.827301, 29.295427, 24.799980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644596, 29.149767, 24.854769>,  <34.340088, 28.906998, 24.946083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644596, 29.149767, 24.854769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457667, -0.253509, 0.852217,
		0.459357, -0.753246, -0.470757,
		0.761270, 0.606922, -0.228285,
		34.872978, 29.331844, 24.786283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020611, 28.418070, 24.945156>,  <34.340088, 28.906998, 24.946083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020611, 28.418070, 24.945156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067673, 28.811558, 24.999500>,  <35.095909, 29.047649, 25.032106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067673, 28.811558, 24.999500>,  <35.020611, 28.418070, 24.945156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067673, 28.811558, 24.999500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375000, -0.170690, 0.911175,
		0.919529, -0.056256, -0.388976,
		0.117654, 0.983718, 0.135858,
		35.102970, 29.106672, 25.040258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699558, 28.511269, 25.330492>,  <35.020611, 28.418070, 24.945156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699558, 28.511269, 25.330492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538143, 28.873297, 25.384161>,  <35.441292, 29.090513, 25.416363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538143, 28.873297, 25.384161>,  <35.699558, 28.511269, 25.330492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538143, 28.873297, 25.384161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459298, 0.073556, 0.885231,
		0.791327, 0.418853, -0.445380,
		-0.403542, 0.905070, 0.134172,
		35.417080, 29.144817, 25.424412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235413, 28.913549, 25.668242>,  <35.699558, 28.511269, 25.330492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235413, 28.913549, 25.668242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893642, 29.103304, 25.753021>,  <35.688580, 29.217157, 25.803888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893642, 29.103304, 25.753021>,  <36.235413, 28.913549, 25.668242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893642, 29.103304, 25.753021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368635, 0.265998, 0.890704,
		0.366159, 0.839168, -0.402149,
		-0.854421, 0.474386, 0.211949,
		35.637318, 29.245619, 25.816607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.039436, 31.285681, 28.723181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.684219, 31.435589, 28.829710>,  <39.471088, 31.525534, 28.893627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.684219, 31.435589, 28.829710>,  <40.039436, 31.285681, 28.723181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684219, 31.435589, 28.829710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295933, 0.022622, 0.954941,
		0.351857, 0.926842, -0.130995,
		-0.888043, 0.374769, 0.266324,
		39.417805, 31.548019, 28.909607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248711, 31.943661, 29.096622>,  <40.039436, 31.285681, 28.723181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248711, 31.943661, 29.096622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886902, 31.810602, 29.203342>,  <39.669815, 31.730766, 29.267374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886902, 31.810602, 29.203342>,  <40.248711, 31.943661, 29.096622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886902, 31.810602, 29.203342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282733, 0.000525, 0.959198,
		-0.319216, 0.943051, 0.093576,
		-0.904524, -0.332648, 0.266799,
		39.615543, 31.710808, 29.283382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014645, 32.476334, 29.670647>,  <40.248711, 31.943661, 29.096622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014645, 32.476334, 29.670647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.800369, 32.143681, 29.729185>,  <39.671803, 31.944088, 29.764309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.800369, 32.143681, 29.729185>,  <40.014645, 32.476334, 29.670647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800369, 32.143681, 29.729185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083316, 0.120412, 0.989222,
		-0.840293, 0.542111, 0.004784,
		-0.535692, -0.831635, 0.146348,
		39.639660, 31.894190, 29.773090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359329, 32.648602, 30.072147>,  <40.014645, 32.476334, 29.670647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359329, 32.648602, 30.072147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.458515, 32.264484, 30.123289>,  <39.518024, 32.034012, 30.153975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.458515, 32.264484, 30.123289>,  <39.359329, 32.648602, 30.072147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458515, 32.264484, 30.123289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112188, 0.102625, 0.988373,
		-0.962252, -0.259424, -0.082287,
		0.247963, -0.960295, 0.127856,
		39.532906, 31.976397, 30.161646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100887, 32.531090, 30.743757>,  <39.359329, 32.648602, 30.072147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100887, 32.531090, 30.743757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294178, 32.195808, 30.642633>,  <39.410152, 31.994640, 30.581959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294178, 32.195808, 30.642633>,  <39.100887, 32.531090, 30.743757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294178, 32.195808, 30.642633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110014, -0.228335, 0.967347,
		-0.868556, -0.495259, -0.018123,
		0.483225, -0.838201, -0.252808,
		39.439144, 31.944347, 30.566792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762199, 32.034607, 31.095886>,  <39.100887, 32.531090, 30.743757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762199, 32.034607, 31.095886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135075, 31.905590, 31.030167>,  <39.358799, 31.828180, 30.990736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135075, 31.905590, 31.030167>,  <38.762199, 32.034607, 31.095886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135075, 31.905590, 31.030167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150692, -0.066892, 0.986315,
		-0.329115, -0.944190, -0.013752,
		0.932188, -0.322539, -0.164297,
		39.414730, 31.808828, 30.980877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861740, 31.641989, 31.566320>,  <38.762199, 32.034607, 31.095886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861740, 31.641989, 31.566320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249325, 31.646429, 31.467535>,  <39.481876, 31.649094, 31.408264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249325, 31.646429, 31.467535>,  <38.861740, 31.641989, 31.566320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249325, 31.646429, 31.467535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245835, -0.148581, 0.957856,
		-0.026059, -0.988838, -0.146699,
		0.968961, 0.011103, -0.246962,
		39.540012, 31.649759, 31.393446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131889, 30.997408, 31.683990>,  <38.861740, 31.641989, 31.566320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131889, 30.997408, 31.683990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.404942, 31.289627, 31.691122>,  <39.568771, 31.464958, 31.695400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.404942, 31.289627, 31.691122>,  <39.131889, 30.997408, 31.683990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404942, 31.289627, 31.691122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008096, -0.016833, 0.999826,
		0.730719, -0.682656, -0.005576,
		0.682630, 0.730546, 0.017827,
		39.609730, 31.508791, 31.696470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663040, 30.747440, 32.077782>,  <39.131889, 30.997408, 31.683990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663040, 30.747440, 32.077782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.724236, 31.142700, 32.082821>,  <39.760952, 31.379856, 32.085846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.724236, 31.142700, 32.082821>,  <39.663040, 30.747440, 32.077782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724236, 31.142700, 32.082821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250540, -0.051113, 0.966756,
		0.955942, -0.144744, -0.255390,
		0.152986, 0.988148, 0.012597,
		39.770130, 31.439144, 32.086601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218903, 30.745743, 32.570984>,  <39.663040, 30.747440, 32.077782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218903, 30.745743, 32.570984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108864, 31.128660, 32.535408>,  <40.042839, 31.358410, 32.514065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108864, 31.128660, 32.535408>,  <40.218903, 30.745743, 32.570984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108864, 31.128660, 32.535408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264576, 0.164314, 0.950264,
		0.924294, 0.237887, -0.298479,
		-0.275099, 0.957294, -0.088935,
		40.026333, 31.415848, 32.508728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796028, 31.159098, 32.930801>,  <40.218903, 30.745743, 32.570984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796028, 31.159098, 32.930801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.456524, 31.370609, 32.930939>,  <40.252823, 31.497517, 32.931019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.456524, 31.370609, 32.930939>,  <40.796028, 31.159098, 32.930801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456524, 31.370609, 32.930939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115667, 0.185033, 0.975902,
		0.515976, 0.828344, -0.218210,
		-0.848758, 0.528781, 0.000340,
		40.201897, 31.529243, 32.931042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098377, 31.822613, 33.121826>,  <40.796028, 31.159098, 32.930801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098377, 31.822613, 33.121826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.706112, 31.786957, 33.191517>,  <40.470753, 31.765564, 33.233330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.706112, 31.786957, 33.191517>,  <41.098377, 31.822613, 33.121826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706112, 31.786957, 33.191517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128783, 0.376414, 0.917457,
		-0.147363, 0.922153, -0.357655,
		-0.980663, -0.089139, 0.174228,
		40.411915, 31.760216, 33.243786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906086, 32.416714, 33.575321>,  <41.098377, 31.822613, 33.121826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906086, 32.416714, 33.575321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.602642, 32.161587, 33.628544>,  <40.420574, 32.008511, 33.660477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.602642, 32.161587, 33.628544>,  <40.906086, 32.416714, 33.575321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602642, 32.161587, 33.628544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024096, 0.176607, 0.983986,
		-0.651097, 0.749670, -0.118607,
		-0.758612, -0.637813, 0.133052,
		40.375057, 31.970243, 33.668461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326218, 32.694824, 33.919704>,  <40.906086, 32.416714, 33.575321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326218, 32.694824, 33.919704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342781, 32.300377, 33.984032>,  <40.352718, 32.063709, 34.022629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342781, 32.300377, 33.984032>,  <40.326218, 32.694824, 33.919704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342781, 32.300377, 33.984032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128727, 0.164883, 0.977877,
		-0.990815, -0.019787, 0.133767,
		0.041406, -0.986115, 0.160822,
		40.355202, 32.004543, 34.032280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677380, 33.225948, 33.955078>,  <40.326218, 32.694824, 33.919704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677380, 33.225948, 33.955078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777966, 33.612770, 33.939251>,  <39.838318, 33.844864, 33.929752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777966, 33.612770, 33.939251>,  <39.677380, 33.225948, 33.955078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777966, 33.612770, 33.939251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380817, 0.061272, -0.922618,
		-0.889800, 0.247075, 0.383680,
		0.251465, 0.967057, -0.039571,
		39.853405, 33.902885, 33.927380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090916, 33.584553, 33.739185>,  <39.677380, 33.225948, 33.955078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090916, 33.584553, 33.739185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389866, 33.839943, 33.665668>,  <39.569237, 33.993176, 33.621559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389866, 33.839943, 33.665668>,  <39.090916, 33.584553, 33.739185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389866, 33.839943, 33.665668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340371, 0.130372, -0.931209,
		-0.570589, 0.758523, 0.314754,
		0.747379, 0.638471, -0.183790,
		39.614079, 34.031483, 33.610531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812321, 34.051704, 33.300117>,  <39.090916, 33.584553, 33.739185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812321, 34.051704, 33.300117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201511, 34.124859, 33.243740>,  <39.435024, 34.168751, 33.209911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201511, 34.124859, 33.243740>,  <38.812321, 34.051704, 33.300117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201511, 34.124859, 33.243740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178059, 0.205681, -0.962284,
		-0.146999, 0.961378, 0.232687,
		0.972978, 0.182887, -0.140948,
		39.493404, 34.179726, 33.201454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888103, 34.728745, 32.963726>,  <38.812321, 34.051704, 33.300117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888103, 34.728745, 32.963726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224426, 34.526405, 32.886620>,  <39.426220, 34.405003, 32.840355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224426, 34.526405, 32.886620>,  <38.888103, 34.728745, 32.963726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224426, 34.526405, 32.886620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106711, 0.194219, -0.975137,
		0.530709, 0.840474, 0.109322,
		0.840809, -0.505848, -0.192762,
		39.476669, 34.374649, 32.828793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327370, 35.121784, 32.533524>,  <38.888103, 34.728745, 32.963726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327370, 35.121784, 32.533524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474747, 34.752972, 32.486000>,  <39.563171, 34.531685, 32.457485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474747, 34.752972, 32.486000>,  <39.327370, 35.121784, 32.533524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474747, 34.752972, 32.486000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283756, 0.233239, -0.930098,
		0.885287, 0.308975, 0.347566,
		0.368443, -0.922027, -0.118810,
		39.585281, 34.476364, 32.450356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950455, 35.216564, 32.263069>,  <39.327370, 35.121784, 32.533524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950455, 35.216564, 32.263069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831234, 34.848732, 32.160667>,  <39.759701, 34.628033, 32.099228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831234, 34.848732, 32.160667>,  <39.950455, 35.216564, 32.263069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831234, 34.848732, 32.160667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252337, 0.182750, -0.950225,
		0.920593, -0.347815, 0.177575,
		-0.298051, -0.919580, -0.256005,
		39.741817, 34.572857, 32.083866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463593, 35.064583, 31.697695>,  <39.950455, 35.216564, 32.263069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463593, 35.064583, 31.697695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152885, 34.813869, 31.673128>,  <39.966461, 34.663441, 31.658388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152885, 34.813869, 31.673128>,  <40.463593, 35.064583, 31.697695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152885, 34.813869, 31.673128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063453, 0.174911, -0.982537,
		0.626577, -0.759310, -0.175638,
		-0.776772, -0.626780, -0.061415,
		39.919853, 34.625835, 31.654703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520798, 34.725906, 31.047733>,  <40.463593, 35.064583, 31.697695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520798, 34.725906, 31.047733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141804, 34.629337, 31.131630>,  <39.914410, 34.571396, 31.181969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141804, 34.629337, 31.131630>,  <40.520798, 34.725906, 31.047733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141804, 34.629337, 31.131630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247588, 0.138605, -0.958900,
		0.202428, -0.960471, -0.191099,
		-0.947482, -0.241422, 0.209744,
		39.857559, 34.556911, 31.194553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294147, 34.330818, 30.390511>,  <40.520798, 34.725906, 31.047733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294147, 34.330818, 30.390511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962086, 34.460293, 30.572094>,  <39.762848, 34.537975, 30.681044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962086, 34.460293, 30.572094>,  <40.294147, 34.330818, 30.390511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962086, 34.460293, 30.572094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380953, 0.265202, -0.885744,
		-0.407092, -0.908238, -0.096850,
		-0.830151, 0.323684, 0.453957,
		39.713039, 34.557396, 30.708281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765114, 34.009438, 30.047329>,  <40.294147, 34.330818, 30.390511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765114, 34.009438, 30.047329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591076, 34.331509, 30.208515>,  <39.486652, 34.524754, 30.305227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591076, 34.331509, 30.208515>,  <39.765114, 34.009438, 30.047329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591076, 34.331509, 30.208515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357340, 0.256376, -0.898098,
		-0.826441, -0.534750, 0.176177,
		-0.435090, 0.805180, 0.402967,
		39.460548, 34.573063, 30.329405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216358, 33.995419, 29.754610>,  <39.765114, 34.009438, 30.047329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216358, 33.995419, 29.754610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163445, 34.361813, 29.906120>,  <39.131699, 34.581650, 29.997026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163445, 34.361813, 29.906120>,  <39.216358, 33.995419, 29.754610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163445, 34.361813, 29.906120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456766, 0.282812, -0.843435,
		-0.879697, -0.284582, 0.380980,
		-0.132280, 0.915986, 0.378776,
		39.123760, 34.636608, 30.019753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502243, 34.174385, 29.677984>,  <39.216358, 33.995419, 29.754610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502243, 34.174385, 29.677984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701771, 34.519089, 29.714983>,  <38.821487, 34.725910, 29.737183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701771, 34.519089, 29.714983>,  <38.502243, 34.174385, 29.677984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701771, 34.519089, 29.714983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358144, 0.302133, -0.883430,
		-0.789247, 0.407545, 0.459342,
		0.498820, 0.861756, 0.092498,
		38.851418, 34.777615, 29.742733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028008, 34.744038, 29.575247>,  <38.502243, 34.174385, 29.677984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028008, 34.744038, 29.575247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.397205, 34.872364, 29.490253>,  <38.618725, 34.949360, 29.439257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.397205, 34.872364, 29.490253>,  <38.028008, 34.744038, 29.575247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397205, 34.872364, 29.490253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328330, 0.368611, -0.869670,
		-0.200679, 0.872470, 0.445561,
		0.922999, 0.320815, -0.212485,
		38.674107, 34.968609, 29.426508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948086, 35.448597, 29.327284>,  <38.028008, 34.744038, 29.575247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948086, 35.448597, 29.327284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.302185, 35.313133, 29.199759>,  <38.514645, 35.231853, 29.123243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.302185, 35.313133, 29.199759>,  <37.948086, 35.448597, 29.327284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302185, 35.313133, 29.199759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281026, 0.156731, -0.946816,
		0.370615, 0.927764, 0.043574,
		0.885251, -0.338658, -0.318812,
		38.567760, 35.211536, 29.104115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905899, 36.207317, 29.307938>,  <37.948086, 35.448597, 29.327284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905899, 36.207317, 29.307938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560799, 36.407448, 29.337120>,  <37.353737, 36.527527, 29.354630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560799, 36.407448, 29.337120>,  <37.905899, 36.207317, 29.307938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560799, 36.407448, 29.337120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180826, 0.170575, 0.968610,
		0.472181, 0.848866, -0.237638,
		-0.862755, 0.500330, 0.072955,
		37.301971, 36.557549, 29.359007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079887, 36.733154, 29.660788>,  <37.905899, 36.207317, 29.307938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079887, 36.733154, 29.660788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681782, 36.714970, 29.695147>,  <37.442917, 36.704060, 29.715761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681782, 36.714970, 29.695147>,  <38.079887, 36.733154, 29.660788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681782, 36.714970, 29.695147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076842, 0.173009, 0.981918,
		-0.059503, 0.983870, -0.168696,
		-0.995266, -0.045464, 0.085897,
		37.383202, 36.701332, 29.720915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957657, 37.340343, 30.029593>,  <38.079887, 36.733154, 29.660788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957657, 37.340343, 30.029593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656101, 37.086346, 30.097052>,  <37.475170, 36.933949, 30.137527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656101, 37.086346, 30.097052>,  <37.957657, 37.340343, 30.029593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656101, 37.086346, 30.097052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030411, 0.290140, 0.956501,
		-0.656300, 0.715965, -0.238044,
		-0.753887, -0.634990, 0.168646,
		37.429935, 36.895847, 30.147646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516823, 37.751808, 30.365347>,  <37.957657, 37.340343, 30.029593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516823, 37.751808, 30.365347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375038, 37.386829, 30.447126>,  <37.289967, 37.167843, 30.496195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375038, 37.386829, 30.447126>,  <37.516823, 37.751808, 30.365347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375038, 37.386829, 30.447126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145731, 0.162070, 0.975959,
		-0.923646, 0.375731, 0.075525,
		-0.354458, -0.912447, 0.204451,
		37.268700, 37.113094, 30.508461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924709, 37.861214, 30.786192>,  <37.516823, 37.751808, 30.365347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924709, 37.861214, 30.786192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031200, 37.490036, 30.890535>,  <37.095097, 37.267330, 30.953142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031200, 37.490036, 30.890535>,  <36.924709, 37.861214, 30.786192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031200, 37.490036, 30.890535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039093, 0.280797, 0.958971,
		-0.963116, -0.245109, 0.111033,
		0.266230, -0.927941, 0.260859,
		37.111069, 37.211655, 30.968794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456356, 37.574398, 31.333017>,  <36.924709, 37.861214, 30.786192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456356, 37.574398, 31.333017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771122, 37.329983, 31.367426>,  <36.959984, 37.183334, 31.388071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771122, 37.329983, 31.367426>,  <36.456356, 37.574398, 31.333017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771122, 37.329983, 31.367426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127039, -0.024007, 0.991607,
		-0.603841, -0.791240, -0.096517,
		0.786916, -0.611034, 0.086022,
		37.007198, 37.146671, 31.393232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238071, 36.886230, 31.640249>,  <36.456356, 37.574398, 31.333017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238071, 36.886230, 31.640249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.623085, 36.928234, 31.740255>,  <36.854092, 36.953438, 31.800259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.623085, 36.928234, 31.740255>,  <36.238071, 36.886230, 31.640249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623085, 36.928234, 31.740255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212182, -0.282463, 0.935518,
		0.168860, -0.953513, -0.249598,
		0.962531, 0.105011, 0.250015,
		36.911842, 36.959736, 31.815260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398598, 36.302071, 32.086731>,  <36.238071, 36.886230, 31.640249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398598, 36.302071, 32.086731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691521, 36.562275, 32.167290>,  <36.867275, 36.718399, 32.215626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691521, 36.562275, 32.167290>,  <36.398598, 36.302071, 32.086731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691521, 36.562275, 32.167290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135664, -0.150459, 0.979264,
		0.667323, -0.744446, -0.021931,
		0.732309, 0.650510, 0.201399,
		36.911213, 36.757427, 32.227711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851864, 35.936638, 32.566669>,  <36.398598, 36.302071, 32.086731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851864, 35.936638, 32.566669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.951969, 36.317993, 32.634102>,  <37.012032, 36.546806, 32.674561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.951969, 36.317993, 32.634102>,  <36.851864, 35.936638, 32.566669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951969, 36.317993, 32.634102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060752, -0.189240, 0.980050,
		0.966270, -0.235030, -0.105280,
		0.250264, 0.953388, 0.168578,
		37.027050, 36.604012, 32.684677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474995, 35.943291, 33.043907>,  <36.851864, 35.936638, 32.566669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474995, 35.943291, 33.043907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.341331, 36.320141, 33.054729>,  <37.261135, 36.546253, 33.061222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.341331, 36.320141, 33.054729>,  <37.474995, 35.943291, 33.043907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341331, 36.320141, 33.054729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198991, 0.042463, 0.979081,
		0.921272, 0.332550, -0.201665,
		-0.334156, 0.942129, 0.027054,
		37.241085, 36.602779, 33.062847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991058, 36.407070, 33.443390>,  <37.474995, 35.943291, 33.043907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991058, 36.407070, 33.443390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.620884, 36.558487, 33.450050>,  <37.398781, 36.649338, 33.454048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.620884, 36.558487, 33.450050>,  <37.991058, 36.407070, 33.443390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620884, 36.558487, 33.450050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042678, 0.060468, 0.997257,
		0.376495, 0.923608, -0.072114,
		-0.925435, 0.378540, 0.016652,
		37.343254, 36.672050, 33.455048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155396, 36.887321, 33.861698>,  <37.991058, 36.407070, 33.443390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155396, 36.887321, 33.861698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.765762, 36.800442, 33.836430>,  <37.531982, 36.748314, 33.821270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.765762, 36.800442, 33.836430>,  <38.155396, 36.887321, 33.861698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765762, 36.800442, 33.836430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109507, 0.208444, 0.971884,
		-0.197926, 0.953612, -0.226826,
		-0.974081, -0.217200, -0.063171,
		37.473537, 36.735283, 33.817478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.444641, 36.657906, 25.673723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103714, 36.535130, 25.843119>,  <35.899158, 36.461464, 25.944756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103714, 36.535130, 25.843119>,  <36.444641, 36.657906, 25.673723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103714, 36.535130, 25.843119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163824, 0.612275, 0.773486,
		-0.496708, 0.728633, -0.471568,
		-0.852316, -0.306943, 0.423489,
		35.848019, 36.443047, 25.970165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287193, 37.207352, 26.129374>,  <36.444641, 36.657906, 25.673723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287193, 37.207352, 26.129374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074177, 36.894608, 26.259045>,  <35.946365, 36.706963, 26.336847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074177, 36.894608, 26.259045>,  <36.287193, 37.207352, 26.129374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074177, 36.894608, 26.259045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100229, 0.322061, 0.941398,
		-0.840446, 0.533830, -0.093147,
		-0.532545, -0.781858, 0.324180,
		35.914413, 36.660049, 26.356298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985588, 37.435669, 26.775654>,  <36.287193, 37.207352, 26.129374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985588, 37.435669, 26.775654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966747, 37.036415, 26.791143>,  <35.955441, 36.796864, 26.800438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966747, 37.036415, 26.791143>,  <35.985588, 37.435669, 26.775654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966747, 37.036415, 26.791143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263461, 0.024981, 0.964347,
		-0.963519, 0.055629, 0.261793,
		-0.047106, -0.998139, 0.038726,
		35.952614, 36.736973, 26.802761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598450, 37.341675, 27.358089>,  <35.985588, 37.435669, 26.775654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598450, 37.341675, 27.358089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811920, 37.013348, 27.276663>,  <35.940002, 36.816349, 27.227808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811920, 37.013348, 27.276663>,  <35.598450, 37.341675, 27.358089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811920, 37.013348, 27.276663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085801, -0.186914, 0.978622,
		-0.841323, -0.539737, -0.029325,
		0.533680, -0.820821, -0.203565,
		35.972023, 36.767101, 27.215593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390839, 36.846134, 27.858244>,  <35.598450, 37.341675, 27.358089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390839, 36.846134, 27.858244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752178, 36.726265, 27.735500>,  <35.968983, 36.654343, 27.661854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752178, 36.726265, 27.735500>,  <35.390839, 36.846134, 27.858244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752178, 36.726265, 27.735500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310322, -0.037232, 0.949902,
		-0.296087, -0.953314, 0.059362,
		0.903345, -0.299675, -0.306859,
		36.023182, 36.636364, 27.643442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652760, 36.415054, 28.346836>,  <35.390839, 36.846134, 27.858244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652760, 36.415054, 28.346836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011299, 36.458694, 28.174948>,  <36.226421, 36.484879, 28.071814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011299, 36.458694, 28.174948>,  <35.652760, 36.415054, 28.346836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011299, 36.458694, 28.174948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435948, -0.040449, 0.899063,
		0.080707, -0.993207, -0.083818,
		0.896346, 0.109101, -0.429722,
		36.280205, 36.491425, 28.046032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047871, 35.862667, 28.537115>,  <35.652760, 36.415054, 28.346836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047871, 35.862667, 28.537115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327381, 36.126064, 28.425331>,  <36.495087, 36.284103, 28.358261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327381, 36.126064, 28.425331>,  <36.047871, 35.862667, 28.537115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327381, 36.126064, 28.425331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480990, -0.143351, 0.864927,
		0.529487, -0.738810, -0.416898,
		0.698780, 0.658491, -0.279458,
		36.537014, 36.323612, 28.341494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655231, 35.603176, 28.871065>,  <36.047871, 35.862667, 28.537115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655231, 35.603176, 28.871065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697781, 35.988102, 28.770950>,  <36.723309, 36.219055, 28.710882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697781, 35.988102, 28.770950>,  <36.655231, 35.603176, 28.871065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697781, 35.988102, 28.770950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592662, 0.140753, 0.793057,
		0.798396, -0.232696, -0.555353,
		0.106374, 0.962310, -0.250287,
		36.729694, 36.276794, 28.695864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383564, 35.761547, 28.997595>,  <36.655231, 35.603176, 28.871065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383564, 35.761547, 28.997595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145164, 36.081284, 29.028185>,  <37.002125, 36.273125, 29.046539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145164, 36.081284, 29.028185>,  <37.383564, 35.761547, 28.997595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145164, 36.081284, 29.028185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332447, 0.158935, 0.929634,
		0.730938, 0.579480, -0.360462,
		-0.595994, 0.799339, 0.076475,
		36.966366, 36.321087, 29.051126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045090, 35.835964, 28.667845>,  <37.383564, 35.761547, 28.997595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045090, 35.835964, 28.667845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318359, 35.543873, 28.670191>,  <38.482323, 35.368618, 28.671598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318359, 35.543873, 28.670191>,  <38.045090, 35.835964, 28.667845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318359, 35.543873, 28.670191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142187, -0.140896, -0.979761,
		0.716277, 0.668516, -0.200087,
		0.683177, -0.730229, 0.005866,
		38.523312, 35.324802, 28.671951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485855, 35.952831, 28.184486>,  <38.045090, 35.835964, 28.667845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485855, 35.952831, 28.184486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527657, 35.559502, 28.244017>,  <38.552738, 35.323502, 28.279734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527657, 35.559502, 28.244017>,  <38.485855, 35.952831, 28.184486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527657, 35.559502, 28.244017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007180, -0.148894, -0.988827,
		0.994498, 0.104408, -0.008500,
		0.104507, -0.983326, 0.148824,
		38.559010, 35.264503, 28.288664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949570, 35.705921, 27.661903>,  <38.485855, 35.952831, 28.184486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949570, 35.705921, 27.661903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763790, 35.375027, 27.788378>,  <38.652321, 35.176491, 27.864264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763790, 35.375027, 27.788378>,  <38.949570, 35.705921, 27.661903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763790, 35.375027, 27.788378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138594, -0.420528, -0.896631,
		0.874688, -0.372618, 0.309963,
		-0.464449, -0.827232, 0.316188,
		38.624454, 35.126858, 27.883234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436890, 35.074333, 27.489384>,  <38.949570, 35.705921, 27.661903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436890, 35.074333, 27.489384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075962, 34.910332, 27.542620>,  <38.859406, 34.811932, 27.574562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075962, 34.910332, 27.542620>,  <39.436890, 35.074333, 27.489384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075962, 34.910332, 27.542620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063588, -0.431973, -0.899642,
		0.426352, -0.803301, 0.415849,
		-0.902319, -0.410008, 0.133092,
		38.805267, 34.787331, 27.582548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513397, 34.358707, 27.472038>,  <39.436890, 35.074333, 27.489384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513397, 34.358707, 27.472038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129101, 34.420273, 27.379700>,  <38.898525, 34.457214, 27.324297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129101, 34.420273, 27.379700>,  <39.513397, 34.358707, 27.472038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129101, 34.420273, 27.379700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132310, -0.477161, -0.868799,
		-0.243873, -0.865232, 0.438063,
		-0.960739, 0.153917, -0.230845,
		38.840878, 34.466450, 27.310446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229786, 33.677734, 27.128609>,  <39.513397, 34.358707, 27.472038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229786, 33.677734, 27.128609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968727, 33.956535, 27.009792>,  <38.812092, 34.123817, 26.938501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968727, 33.956535, 27.009792>,  <39.229786, 33.677734, 27.128609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968727, 33.956535, 27.009792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099021, -0.467160, -0.878610,
		-0.751160, -0.544012, 0.373911,
		-0.652651, 0.697002, -0.297043,
		38.772930, 34.165634, 26.920679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952534, 33.299271, 26.678553>,  <39.229786, 33.677734, 27.128609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952534, 33.299271, 26.678553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842003, 33.672573, 26.586742>,  <38.775684, 33.896553, 26.531656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842003, 33.672573, 26.586742>,  <38.952534, 33.299271, 26.678553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842003, 33.672573, 26.586742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279696, -0.306576, -0.909825,
		-0.919464, -0.187212, 0.345742,
		-0.276326, 0.933254, -0.229523,
		38.759106, 33.952549, 26.517885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283955, 33.225075, 26.317457>,  <38.952534, 33.299271, 26.678553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283955, 33.225075, 26.317457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429276, 33.584404, 26.218639>,  <38.516468, 33.800003, 26.159349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429276, 33.584404, 26.218639>,  <38.283955, 33.225075, 26.317457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429276, 33.584404, 26.218639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289985, -0.142960, -0.946293,
		-0.885394, 0.415425, 0.208563,
		0.363298, 0.898323, -0.247043,
		38.538265, 33.853901, 26.144527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800640, 33.479050, 25.858269>,  <38.283955, 33.225075, 26.317457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800640, 33.479050, 25.858269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122826, 33.703194, 25.781090>,  <38.316135, 33.837681, 25.734781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122826, 33.703194, 25.781090>,  <37.800640, 33.479050, 25.858269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122826, 33.703194, 25.781090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163798, -0.102402, -0.981165,
		-0.569562, 0.821896, 0.009305,
		0.805463, 0.560358, -0.192949,
		38.364464, 33.871300, 25.723206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590977, 34.099213, 25.360376>,  <37.800640, 33.479050, 25.858269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590977, 34.099213, 25.360376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984180, 34.030266, 25.335133>,  <38.220104, 33.988899, 25.319986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984180, 34.030266, 25.335133>,  <37.590977, 34.099213, 25.360376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984180, 34.030266, 25.335133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057520, 0.037252, -0.997649,
		0.174313, 0.984328, 0.026705,
		0.983009, -0.172367, -0.063112,
		38.279083, 33.978558, 25.316198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727272, 34.389091, 24.754477>,  <37.590977, 34.099213, 25.360376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727272, 34.389091, 24.754477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065800, 34.176685, 24.771290>,  <38.268917, 34.049244, 24.781378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065800, 34.176685, 24.771290>,  <37.727272, 34.389091, 24.754477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065800, 34.176685, 24.771290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080917, -0.206158, -0.975167,
		0.526493, 0.821902, -0.217444,
		0.846320, -0.531014, 0.042035,
		38.319695, 34.017380, 24.783901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116257, 34.491570, 24.130148>,  <37.727272, 34.389091, 24.754477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116257, 34.491570, 24.130148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235420, 34.141071, 24.281645>,  <38.306919, 33.930775, 24.372543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235420, 34.141071, 24.281645>,  <38.116257, 34.491570, 24.130148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235420, 34.141071, 24.281645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084504, -0.419408, -0.903856,
		0.950846, 0.237265, -0.198993,
		0.297912, -0.876243, 0.378743,
		38.324795, 33.878197, 24.395267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389816, 34.182175, 23.551584>,  <38.116257, 34.491570, 24.130148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389816, 34.182175, 23.551584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367031, 33.861408, 23.789473>,  <38.353359, 33.668949, 23.932205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367031, 33.861408, 23.789473>,  <38.389816, 34.182175, 23.551584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367031, 33.861408, 23.789473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135026, -0.584026, -0.800426,
		0.989203, -0.125897, -0.075012,
		-0.056962, -0.801912, 0.594720,
		38.349941, 33.620834, 23.967888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763393, 33.656399, 23.268568>,  <38.389816, 34.182175, 23.551584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763393, 33.656399, 23.268568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489994, 33.485149, 23.505056>,  <38.325954, 33.382401, 23.646950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489994, 33.485149, 23.505056>,  <38.763393, 33.656399, 23.268568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489994, 33.485149, 23.505056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067239, -0.769574, -0.635008,
		0.726851, -0.473779, 0.497213,
		-0.683495, -0.428124, 0.591222,
		38.284946, 33.356712, 23.682423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.729250, 29.961369, 25.429983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068501, 30.170444, 25.395391>,  <32.272053, 30.295889, 25.374638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068501, 30.170444, 25.395391>,  <31.729250, 29.961369, 25.429983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068501, 30.170444, 25.395391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311009, -0.359061, 0.879971,
		0.428899, -0.773222, -0.467090,
		0.848127, 0.522688, -0.086478,
		32.322937, 30.327251, 25.369448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262157, 29.531559, 25.803307>,  <31.729250, 29.961369, 25.429983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262157, 29.531559, 25.803307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.401005, 29.906406, 25.788750>,  <32.484314, 30.131315, 25.780016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.401005, 29.906406, 25.788750>,  <32.262157, 29.531559, 25.803307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401005, 29.906406, 25.788750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454524, -0.134163, 0.880573,
		0.820317, -0.322200, -0.472512,
		0.347114, 0.937117, -0.036391,
		32.505138, 30.187542, 25.777832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983856, 29.512596, 26.090668>,  <32.262157, 29.531559, 25.803307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983856, 29.512596, 26.090668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.871693, 29.894886, 26.126364>,  <32.804394, 30.124260, 26.147781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.871693, 29.894886, 26.126364>,  <32.983856, 29.512596, 26.090668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871693, 29.894886, 26.126364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560379, 0.087512, 0.823601,
		0.779324, 0.280957, -0.560106,
		-0.280412, 0.955722, 0.089242,
		32.787571, 30.181602, 26.153137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532242, 29.728313, 26.295549>,  <32.983856, 29.512596, 26.090668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532242, 29.728313, 26.295549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.261219, 29.995573, 26.418509>,  <33.098606, 30.155930, 26.492285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.261219, 29.995573, 26.418509>,  <33.532242, 29.728313, 26.295549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261219, 29.995573, 26.418509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484206, 0.090643, 0.870246,
		0.553591, 0.738485, -0.384937,
		-0.677556, 0.668149, 0.307400,
		33.057953, 30.196018, 26.510729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870052, 30.222559, 26.590712>,  <33.532242, 29.728313, 26.295549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870052, 30.222559, 26.590712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.512974, 30.322256, 26.740894>,  <33.298725, 30.382074, 26.831003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.512974, 30.322256, 26.740894>,  <33.870052, 30.222559, 26.590712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512974, 30.322256, 26.740894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438467, 0.287940, 0.851374,
		0.104090, 0.924645, -0.366328,
		-0.892699, 0.249242, 0.375455,
		33.245163, 30.397028, 26.853531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925495, 30.971733, 26.850113>,  <33.870052, 30.222559, 26.590712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925495, 30.971733, 26.850113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639538, 30.759392, 27.032158>,  <33.467964, 30.631987, 27.141384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639538, 30.759392, 27.032158>,  <33.925495, 30.971733, 26.850113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639538, 30.759392, 27.032158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255007, 0.408109, 0.876595,
		-0.651076, 0.742727, -0.156384,
		-0.714893, -0.530851, 0.455111,
		33.425072, 30.600136, 27.168692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583649, 31.435780, 27.378742>,  <33.925495, 30.971733, 26.850113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583649, 31.435780, 27.378742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437176, 31.081301, 27.492279>,  <33.349293, 30.868612, 27.560400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437176, 31.081301, 27.492279>,  <33.583649, 31.435780, 27.378742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437176, 31.081301, 27.492279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268908, 0.191237, 0.943990,
		-0.890843, 0.421995, 0.168279,
		-0.366178, -0.886199, 0.283840,
		33.327324, 30.815441, 27.577431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273251, 31.597254, 27.992859>,  <33.583649, 31.435780, 27.378742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273251, 31.597254, 27.992859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.337425, 31.202765, 28.008966>,  <33.375931, 30.966070, 28.018631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.337425, 31.202765, 28.008966>,  <33.273251, 31.597254, 27.992859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337425, 31.202765, 28.008966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098082, 0.056523, 0.993572,
		-0.982161, -0.155456, 0.105800,
		0.160437, -0.986224, 0.040267,
		33.385555, 30.906897, 28.021046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787292, 31.301834, 28.420452>,  <33.273251, 31.597254, 27.992859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787292, 31.301834, 28.420452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094872, 31.046116, 28.418270>,  <33.279419, 30.892685, 28.416962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094872, 31.046116, 28.418270>,  <32.787292, 31.301834, 28.420452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094872, 31.046116, 28.418270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080507, 0.088362, 0.992830,
		-0.634228, -0.763869, 0.119413,
		0.768943, -0.639294, -0.005455,
		33.325554, 30.854328, 28.416634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637245, 30.850903, 28.982702>,  <32.787292, 31.301834, 28.420452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637245, 30.850903, 28.982702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.026745, 30.796879, 28.909405>,  <33.260445, 30.764463, 28.865425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.026745, 30.796879, 28.909405>,  <32.637245, 30.850903, 28.982702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026745, 30.796879, 28.909405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183657, -0.009510, 0.982944,
		-0.134501, -0.990792, 0.015545,
		0.973745, -0.135062, -0.183245,
		33.318867, 30.756361, 28.854431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786255, 30.208675, 29.362015>,  <32.637245, 30.850903, 28.982702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786255, 30.208675, 29.362015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.115158, 30.432783, 29.322035>,  <33.312500, 30.567247, 29.298048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.115158, 30.432783, 29.322035>,  <32.786255, 30.208675, 29.362015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115158, 30.432783, 29.322035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228587, -0.164296, 0.959560,
		0.521193, -0.811851, -0.263164,
		0.822257, 0.560271, -0.099949,
		33.361835, 30.600864, 29.292049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332603, 29.814314, 29.736618>,  <32.786255, 30.208675, 29.362015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332603, 29.814314, 29.736618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.487228, 30.181129, 29.697420>,  <33.580006, 30.401218, 29.673901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.487228, 30.181129, 29.697420>,  <33.332603, 29.814314, 29.736618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487228, 30.181129, 29.697420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364413, -0.054268, 0.929655,
		0.847213, -0.395085, -0.355160,
		0.386567, 0.917040, -0.097997,
		33.603199, 30.456242, 29.668020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029537, 29.806103, 30.139748>,  <33.332603, 29.814314, 29.736618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029537, 29.806103, 30.139748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.936565, 30.194204, 30.112677>,  <33.880783, 30.427065, 30.096434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.936565, 30.194204, 30.112677>,  <34.029537, 29.806103, 30.139748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936565, 30.194204, 30.112677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416438, 0.162161, 0.894585,
		0.878951, 0.179745, -0.441743,
		-0.232431, 0.970255, -0.067679,
		33.866837, 30.485281, 30.092373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656208, 30.172476, 30.322687>,  <34.029537, 29.806103, 30.139748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656208, 30.172476, 30.322687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377518, 30.456736, 30.361769>,  <34.210304, 30.627291, 30.385218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377518, 30.456736, 30.361769>,  <34.656208, 30.172476, 30.322687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377518, 30.456736, 30.361769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440177, 0.316005, 0.840467,
		0.566402, 0.628585, -0.532981,
		-0.696730, 0.710649, 0.097703,
		34.168499, 30.669930, 30.391079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359661, 30.454775, 30.066916>,  <34.656208, 30.172476, 30.322687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359661, 30.454775, 30.066916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.687202, 30.228773, 30.026417>,  <35.883728, 30.093172, 30.002117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.687202, 30.228773, 30.026417>,  <35.359661, 30.454775, 30.066916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687202, 30.228773, 30.026417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273933, -0.229651, -0.933928,
		0.504421, 0.792484, -0.342824,
		0.818853, -0.565004, -0.101247,
		35.932858, 30.059273, 29.996042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544006, 30.662098, 29.386072>,  <35.359661, 30.454775, 30.066916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544006, 30.662098, 29.386072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768894, 30.335299, 29.437321>,  <35.903828, 30.139219, 29.468069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768894, 30.335299, 29.437321>,  <35.544006, 30.662098, 29.386072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768894, 30.335299, 29.437321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140964, -0.247336, -0.958621,
		0.814882, 0.520899, -0.254226,
		0.562224, -0.817000, 0.128121,
		35.937561, 30.090199, 29.475758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002724, 30.563646, 28.850046>,  <35.544006, 30.662098, 29.386072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002724, 30.563646, 28.850046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990200, 30.190935, 28.994719>,  <35.982685, 29.967308, 29.081522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990200, 30.190935, 28.994719>,  <36.002724, 30.563646, 28.850046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990200, 30.190935, 28.994719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154226, -0.353019, -0.922817,
		0.987539, -0.084673, -0.132651,
		-0.031310, -0.931777, 0.361679,
		35.980808, 29.911402, 29.103222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611794, 30.161211, 28.467228>,  <36.002724, 30.563646, 28.850046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611794, 30.161211, 28.467228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343548, 29.904287, 28.615671>,  <36.182602, 29.750134, 28.704737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343548, 29.904287, 28.615671>,  <36.611794, 30.161211, 28.467228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343548, 29.904287, 28.615671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029167, -0.522715, -0.852008,
		0.741236, -0.560541, 0.369273,
		-0.670610, -0.642310, 0.371106,
		36.142365, 29.711594, 28.727003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845024, 29.449520, 28.196022>,  <36.611794, 30.161211, 28.467228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845024, 29.449520, 28.196022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454865, 29.407543, 28.273577>,  <36.220768, 29.382357, 28.320110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454865, 29.407543, 28.273577>,  <36.845024, 29.449520, 28.196022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454865, 29.407543, 28.273577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150145, -0.327773, -0.932749,
		0.161435, -0.938910, 0.303952,
		-0.975395, -0.104942, 0.193887,
		36.162247, 29.376060, 28.331743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612427, 28.841267, 27.894674>,  <36.845024, 29.449520, 28.196022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612427, 28.841267, 27.894674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286335, 29.072863, 27.899822>,  <36.090679, 29.211821, 27.902912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286335, 29.072863, 27.899822>,  <36.612427, 28.841267, 27.894674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286335, 29.072863, 27.899822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172870, -0.222073, -0.959583,
		-0.552731, -0.784509, 0.281131,
		-0.815233, 0.578990, 0.012871,
		36.041763, 29.246559, 27.903685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213432, 28.515200, 27.393341>,  <36.612427, 28.841267, 27.894674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213432, 28.515200, 27.393341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025558, 28.866922, 27.424885>,  <35.912834, 29.077955, 27.443811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025558, 28.866922, 27.424885>,  <36.213432, 28.515200, 27.393341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025558, 28.866922, 27.424885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276487, -0.061675, -0.959036,
		-0.838423, -0.472247, 0.272085,
		-0.469683, 0.879306, 0.078860,
		35.884655, 29.130714, 27.448544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484394, 28.379469, 27.253489>,  <36.213432, 28.515200, 27.393341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484394, 28.379469, 27.253489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569874, 28.761927, 27.173370>,  <35.621162, 28.991402, 27.125299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569874, 28.761927, 27.173370>,  <35.484394, 28.379469, 27.253489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569874, 28.761927, 27.173370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516728, -0.063368, -0.853802,
		-0.829051, 0.285954, 0.480525,
		0.213698, 0.956146, -0.200295,
		35.633984, 29.048771, 27.113281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874931, 28.629789, 26.783197>,  <35.484394, 28.379469, 27.253489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874931, 28.629789, 26.783197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150692, 28.915213, 26.733305>,  <35.316147, 29.086468, 26.703369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150692, 28.915213, 26.733305>,  <34.874931, 28.629789, 26.783197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150692, 28.915213, 26.733305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351493, 0.178961, -0.918926,
		-0.633386, 0.677352, 0.374188,
		0.689402, 0.713560, -0.124733,
		35.357513, 29.129280, 26.695885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525028, 29.213127, 26.506994>,  <34.874931, 28.629789, 26.783197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525028, 29.213127, 26.506994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908920, 29.252811, 26.401865>,  <35.139256, 29.276621, 26.338787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908920, 29.252811, 26.401865>,  <34.525028, 29.213127, 26.506994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908920, 29.252811, 26.401865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279171, 0.232519, -0.931664,
		-0.031319, 0.967519, 0.250852,
		0.959730, 0.099209, -0.262821,
		35.196838, 29.282574, 26.323019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510773, 29.881008, 26.099083>,  <34.525028, 29.213127, 26.506994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510773, 29.881008, 26.099083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848763, 29.688032, 26.006765>,  <35.051556, 29.572247, 25.951374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848763, 29.688032, 26.006765>,  <34.510773, 29.881008, 26.099083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848763, 29.688032, 26.006765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159369, 0.184797, -0.969769,
		0.510503, 0.856215, 0.079264,
		0.844978, -0.482438, -0.230794,
		35.102257, 29.543301, 25.937527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855843, 30.316687, 25.567324>,  <34.510773, 29.881008, 26.099083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855843, 30.316687, 25.567324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.032032, 29.959259, 25.532627>,  <35.137745, 29.744802, 25.511808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.032032, 29.959259, 25.532627>,  <34.855843, 30.316687, 25.567324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032032, 29.959259, 25.532627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114538, 0.039897, -0.992617,
		0.890431, 0.447154, -0.084774,
		0.440471, -0.893567, -0.086742,
		35.164173, 29.691189, 25.506605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462475, 30.348974, 25.130295>,  <34.855843, 30.316687, 25.567324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462475, 30.348974, 25.130295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336727, 29.969534, 25.115685>,  <35.261280, 29.741871, 25.106918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336727, 29.969534, 25.115685>,  <35.462475, 30.348974, 25.130295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336727, 29.969534, 25.115685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045236, 0.053401, -0.997548,
		0.948224, -0.311942, -0.059698,
		-0.314365, -0.948599, -0.036525,
		35.242416, 29.684954, 25.104727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950138, 29.942682, 24.640701>,  <35.462475, 30.348974, 25.130295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950138, 29.942682, 24.640701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574188, 29.809784, 24.672338>,  <35.348618, 29.730045, 24.691320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574188, 29.809784, 24.672338>,  <35.950138, 29.942682, 24.640701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574188, 29.809784, 24.672338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106646, 0.065494, -0.992138,
		0.324455, -0.940916, -0.096989,
		-0.939870, -0.332247, 0.079095,
		35.292229, 29.710110, 24.696068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565063, 29.758829, 24.256706>,  <35.950138, 29.942682, 24.640701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565063, 29.758829, 24.256706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926949, 29.864189, 24.122772>,  <37.144081, 29.927404, 24.042412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926949, 29.864189, 24.122772>,  <36.565063, 29.758829, 24.256706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926949, 29.864189, 24.122772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352772, -0.022550, 0.935438,
		0.238844, -0.964423, -0.113322,
		0.904713, 0.263400, -0.334836,
		37.198364, 29.943209, 24.022322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074310, 29.318441, 24.542606>,  <36.565063, 29.758829, 24.256706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074310, 29.318441, 24.542606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277954, 29.649342, 24.447561>,  <37.400143, 29.847881, 24.390533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277954, 29.649342, 24.447561>,  <37.074310, 29.318441, 24.542606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277954, 29.649342, 24.447561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329119, 0.067977, 0.941839,
		0.795289, -0.557705, -0.237656,
		0.509113, 0.827251, -0.237613,
		37.430687, 29.897516, 24.376278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776020, 29.283081, 24.857550>,  <37.074310, 29.318441, 24.542606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776020, 29.283081, 24.857550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705868, 29.670618, 24.787592>,  <37.663776, 29.903139, 24.745617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705868, 29.670618, 24.787592>,  <37.776020, 29.283081, 24.857550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705868, 29.670618, 24.787592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256384, 0.216467, 0.942024,
		0.950530, 0.120375, -0.286360,
		-0.175384, 0.968840, -0.174896,
		37.653252, 29.961269, 24.735123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468342, 29.790354, 24.996956>,  <37.776020, 29.283081, 24.857550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468342, 29.790354, 24.996956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152523, 30.034733, 25.020124>,  <37.963032, 30.181360, 25.034025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152523, 30.034733, 25.020124>,  <38.468342, 29.790354, 24.996956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152523, 30.034733, 25.020124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341185, 0.358546, 0.868929,
		0.510105, 0.705822, -0.491536,
		-0.789548, 0.610950, 0.057920,
		37.915657, 30.218018, 25.037500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743694, 30.401852, 25.196871>,  <38.468342, 29.790354, 24.996956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743694, 30.401852, 25.196871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.361435, 30.478148, 25.286627>,  <38.132080, 30.523924, 25.340481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.361435, 30.478148, 25.286627>,  <38.743694, 30.401852, 25.196871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361435, 30.478148, 25.286627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292966, 0.537976, 0.790413,
		0.030045, 0.821098, -0.569996,
		-0.955651, 0.190737, 0.224390,
		38.074741, 30.535368, 25.353945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636246, 31.151358, 25.123941>,  <38.743694, 30.401852, 25.196871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636246, 31.151358, 25.123941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365612, 30.991247, 25.371168>,  <38.203232, 30.895182, 25.519505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365612, 30.991247, 25.371168>,  <38.636246, 31.151358, 25.123941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365612, 30.991247, 25.371168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274690, 0.641570, 0.716194,
		-0.683210, 0.654344, -0.324126,
		-0.676587, -0.400276, 0.618069,
		38.162636, 30.871164, 25.556589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164112, 31.712046, 25.494303>,  <38.636246, 31.151358, 25.123941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164112, 31.712046, 25.494303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139698, 31.387711, 25.727133>,  <38.125050, 31.193110, 25.866831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139698, 31.387711, 25.727133>,  <38.164112, 31.712046, 25.494303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139698, 31.387711, 25.727133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057663, 0.585055, 0.808941,
		-0.996468, 0.015812, -0.082466,
		-0.061039, -0.810839, 0.582077,
		38.121387, 31.144459, 25.901756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790039, 32.030178, 26.031649>,  <38.164112, 31.712046, 25.494303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790039, 32.030178, 26.031649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937340, 31.680696, 26.158791>,  <38.025723, 31.471008, 26.235075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937340, 31.680696, 26.158791>,  <37.790039, 32.030178, 26.031649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937340, 31.680696, 26.158791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150506, 0.393393, 0.906967,
		-0.917462, -0.286156, 0.276366,
		0.368255, -0.873703, 0.317854,
		38.047817, 31.418585, 26.254147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528675, 31.877151, 26.702377>,  <37.790039, 32.030178, 26.031649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528675, 31.877151, 26.702377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855579, 31.647320, 26.684750>,  <38.051723, 31.509420, 26.674173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855579, 31.647320, 26.684750>,  <37.528675, 31.877151, 26.702377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855579, 31.647320, 26.684750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222997, 0.244808, 0.943579,
		-0.531374, -0.780977, 0.328202,
		0.817260, -0.574581, -0.044071,
		38.100758, 31.474945, 26.671528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530537, 31.494856, 27.435673>,  <37.528675, 31.877151, 26.702377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530537, 31.494856, 27.435673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894302, 31.445726, 27.276737>,  <38.112564, 31.416248, 27.181376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894302, 31.445726, 27.276737>,  <37.530537, 31.494856, 27.435673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894302, 31.445726, 27.276737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402823, 0.022547, 0.915000,
		-0.103424, -0.992173, 0.069980,
		0.909416, -0.122822, -0.397338,
		38.167126, 31.408880, 27.157536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816586, 31.005325, 27.887465>,  <37.530537, 31.494856, 27.435673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816586, 31.005325, 27.887465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135441, 31.154442, 27.697474>,  <38.326752, 31.243912, 27.583479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135441, 31.154442, 27.697474>,  <37.816586, 31.005325, 27.887465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135441, 31.154442, 27.697474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561555, -0.168652, 0.810069,
		0.221882, -0.912459, -0.343782,
		0.797135, 0.372792, -0.474975,
		38.374580, 31.266279, 27.554981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287300, 30.481716, 27.922390>,  <37.816586, 31.005325, 27.887465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287300, 30.481716, 27.922390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478344, 30.828857, 27.867668>,  <38.592972, 31.037142, 27.834835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478344, 30.828857, 27.867668>,  <38.287300, 30.481716, 27.922390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478344, 30.828857, 27.867668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411376, -0.083315, 0.907650,
		0.776311, -0.489781, -0.396807,
		0.477610, 0.867855, -0.136806,
		38.621628, 31.089214, 27.826626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850853, 30.448900, 28.380306>,  <38.287300, 30.481716, 27.922390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850853, 30.448900, 28.380306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847988, 30.841202, 28.302259>,  <38.846272, 31.076582, 28.255432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847988, 30.841202, 28.302259>,  <38.850853, 30.448900, 28.380306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847988, 30.841202, 28.302259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306295, 0.187892, 0.933209,
		0.951910, -0.053081, -0.301746,
		-0.007160, 0.980754, -0.195115,
		38.845840, 31.135427, 28.243725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563499, 30.748663, 28.546015>,  <38.850853, 30.448900, 28.380306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563499, 30.748663, 28.546015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303902, 31.052212, 28.567627>,  <39.148144, 31.234341, 28.580595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303902, 31.052212, 28.567627>,  <39.563499, 30.748663, 28.546015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303902, 31.052212, 28.567627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203723, 0.104922, 0.973390,
		0.733008, 0.642733, -0.222693,
		-0.648996, 0.758871, 0.054031,
		39.109203, 31.279873, 28.583836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.982090, 32.951515, 23.279604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593754, 32.970341, 23.373623>,  <38.360752, 32.981636, 23.430035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593754, 32.970341, 23.373623>,  <38.982090, 32.951515, 23.279604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593754, 32.970341, 23.373623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207751, -0.654375, -0.727072,
		0.119587, -0.754704, 0.645074,
		-0.970844, 0.047066, 0.235046,
		38.302502, 32.984459, 23.444136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811432, 32.287041, 23.147081>,  <38.982090, 32.951515, 23.279604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811432, 32.287041, 23.147081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473305, 32.499218, 23.172598>,  <38.270428, 32.626526, 23.187908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473305, 32.499218, 23.172598>,  <38.811432, 32.287041, 23.147081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473305, 32.499218, 23.172598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410754, -0.568893, -0.712490,
		-0.341646, -0.628481, 0.698777,
		-0.845316, 0.530445, 0.063791,
		38.219711, 32.658352, 23.191734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349953, 31.807951, 23.269835>,  <38.811432, 32.287041, 23.147081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349953, 31.807951, 23.269835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.169346, 32.123631, 23.103317>,  <38.060982, 32.313038, 23.003407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.169346, 32.123631, 23.103317>,  <38.349953, 31.807951, 23.269835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169346, 32.123631, 23.103317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311265, -0.576565, -0.755438,
		-0.836210, -0.211515, 0.505978,
		-0.451516, 0.789199, -0.416292,
		38.033890, 32.360390, 22.978430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836124, 31.476574, 22.840080>,  <38.349953, 31.807951, 23.269835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836124, 31.476574, 22.840080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835526, 31.862591, 22.735247>,  <37.835167, 32.094200, 22.672346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835526, 31.862591, 22.735247>,  <37.836124, 31.476574, 22.840080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835526, 31.862591, 22.735247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419488, -0.238515, -0.875866,
		-0.907760, 0.108630, 0.405181,
		-0.001497, 0.965044, -0.262083,
		37.835075, 32.152103, 22.656622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227688, 31.533360, 22.531975>,  <37.836124, 31.476574, 22.840080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227688, 31.533360, 22.531975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.433746, 31.848534, 22.397051>,  <37.557381, 32.037640, 22.316097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.433746, 31.848534, 22.397051>,  <37.227688, 31.533360, 22.531975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433746, 31.848534, 22.397051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533743, -0.013012, -0.845547,
		-0.670627, 0.615618, 0.413853,
		0.515149, 0.787937, -0.337308,
		37.588291, 32.084915, 22.295858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692005, 32.042934, 22.232199>,  <37.227688, 31.533360, 22.531975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692005, 32.042934, 22.232199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045296, 32.128387, 22.065216>,  <37.257271, 32.179661, 21.965027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045296, 32.128387, 22.065216>,  <36.692005, 32.042934, 22.232199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045296, 32.128387, 22.065216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444955, 0.100712, -0.889872,
		-0.148063, 0.971709, 0.184008,
		0.883228, 0.213632, -0.417456,
		37.310265, 32.192478, 21.939980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623520, 32.647358, 21.910574>,  <36.692005, 32.042934, 22.232199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623520, 32.647358, 21.910574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.929855, 32.464249, 21.729935>,  <37.113655, 32.354382, 21.621552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.929855, 32.464249, 21.729935>,  <36.623520, 32.647358, 21.910574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929855, 32.464249, 21.729935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415473, 0.183760, -0.890850,
		0.490792, 0.869872, -0.049462,
		0.765837, -0.457772, -0.451596,
		37.159607, 32.326916, 21.594456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649624, 33.014656, 21.276836>,  <36.623520, 32.647358, 21.910574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649624, 33.014656, 21.276836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872906, 32.688396, 21.216013>,  <37.006874, 32.492641, 21.179518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872906, 32.688396, 21.216013>,  <36.649624, 33.014656, 21.276836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872906, 32.688396, 21.216013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172180, 0.065406, -0.982892,
		0.811644, 0.574832, -0.103929,
		0.558200, -0.815653, -0.152060,
		37.040367, 32.443699, 21.170395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097542, 33.128223, 20.594208>,  <36.649624, 33.014656, 21.276836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097542, 33.128223, 20.594208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103142, 32.733425, 20.658268>,  <37.106503, 32.496548, 20.696705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103142, 32.733425, 20.658268>,  <37.097542, 33.128223, 20.594208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103142, 32.733425, 20.658268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088542, -0.160760, -0.983014,
		0.995974, -0.000421, -0.089641,
		0.013997, -0.986993, 0.160150,
		37.107342, 32.437328, 20.706314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424732, 32.848145, 20.019690>,  <37.097542, 33.128223, 20.594208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424732, 32.848145, 20.019690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228020, 32.524147, 20.147482>,  <37.109993, 32.329750, 20.224157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228020, 32.524147, 20.147482>,  <37.424732, 32.848145, 20.019690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228020, 32.524147, 20.147482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020843, -0.355862, -0.934306,
		0.870469, -0.466133, 0.158124,
		-0.491781, -0.809989, 0.319482,
		37.080486, 32.281151, 20.243326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720379, 32.258121, 19.701460>,  <37.424732, 32.848145, 20.019690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720379, 32.258121, 19.701460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353039, 32.144836, 19.812035>,  <37.132633, 32.076866, 19.878380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353039, 32.144836, 19.812035>,  <37.720379, 32.258121, 19.701460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353039, 32.144836, 19.812035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210231, -0.242696, -0.947049,
		0.335307, -0.927841, 0.163340,
		-0.918353, -0.283213, 0.276438,
		37.077534, 32.059872, 19.894966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519409, 31.744534, 19.264528>,  <37.720379, 32.258121, 19.701460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519409, 31.744534, 19.264528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149727, 31.834843, 19.387730>,  <36.927917, 31.889029, 19.461651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149727, 31.834843, 19.387730>,  <37.519409, 31.744534, 19.264528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149727, 31.834843, 19.387730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364486, -0.280778, -0.887870,
		-0.113977, -0.932840, 0.341789,
		-0.924207, 0.225774, 0.308005,
		36.872463, 31.902575, 19.480131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922798, 31.188332, 19.154860>,  <37.519409, 31.744534, 19.264528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922798, 31.188332, 19.154860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.749153, 31.548674, 19.155495>,  <36.644966, 31.764879, 19.155876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.749153, 31.548674, 19.155495>,  <36.922798, 31.188332, 19.154860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749153, 31.548674, 19.155495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501180, -0.240048, -0.831382,
		-0.748574, -0.361713, 0.555699,
		-0.434116, 0.900856, 0.001590,
		36.618919, 31.818930, 19.155972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240379, 31.023283, 19.141235>,  <36.922798, 31.188332, 19.154860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240379, 31.023283, 19.141235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277332, 31.393543, 18.994465>,  <36.299503, 31.615700, 18.906403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277332, 31.393543, 18.994465>,  <36.240379, 31.023283, 19.141235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277332, 31.393543, 18.994465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557432, -0.257265, -0.789357,
		-0.825067, 0.277457, 0.492221,
		0.092381, 0.925652, -0.366925,
		36.305046, 31.671240, 18.884388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830379, 30.413324, 18.887478>,  <36.240379, 31.023283, 19.141235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830379, 30.413324, 18.887478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.661400, 30.054987, 18.942614>,  <35.560013, 29.839985, 18.975695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.661400, 30.054987, 18.942614>,  <35.830379, 30.413324, 18.887478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661400, 30.054987, 18.942614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433922, -0.066372, 0.898502,
		-0.795770, 0.439381, 0.416766,
		-0.422447, -0.895845, 0.137840,
		35.534664, 29.786234, 18.983965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466522, 30.456455, 19.467445>,  <35.830379, 30.413324, 18.887478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466522, 30.456455, 19.467445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.561932, 30.076529, 19.386497>,  <35.619179, 29.848572, 19.337929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.561932, 30.076529, 19.386497>,  <35.466522, 30.456455, 19.467445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561932, 30.076529, 19.386497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280424, -0.132145, 0.950736,
		-0.929768, -0.283522, 0.234832,
		0.238522, -0.949817, -0.202371,
		35.633488, 29.791584, 19.325787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093204, 30.118692, 19.973362>,  <35.466522, 30.456455, 19.467445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093204, 30.118692, 19.973362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.368832, 29.865103, 19.832928>,  <35.534210, 29.712950, 19.748667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.368832, 29.865103, 19.832928>,  <35.093204, 30.118692, 19.973362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368832, 29.865103, 19.832928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393649, -0.079315, 0.915833,
		-0.608459, -0.769277, 0.194910,
		0.689070, -0.633973, -0.351085,
		35.575554, 29.674911, 19.727602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137566, 29.505892, 20.462986>,  <35.093204, 30.118692, 19.973362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137566, 29.505892, 20.462986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490414, 29.509151, 20.274607>,  <35.702122, 29.511106, 20.161579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490414, 29.509151, 20.274607>,  <35.137566, 29.505892, 20.462986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490414, 29.509151, 20.274607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471019, -0.017293, 0.881954,
		-0.000944, -0.999817, -0.019100,
		0.882123, 0.008164, -0.470949,
		35.755051, 29.511597, 20.133322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507771, 28.869862, 20.669127>,  <35.137566, 29.505892, 20.462986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507771, 28.869862, 20.669127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812794, 29.071028, 20.506359>,  <35.995808, 29.191727, 20.408699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812794, 29.071028, 20.506359>,  <35.507771, 28.869862, 20.669127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812794, 29.071028, 20.506359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530547, -0.126254, 0.838200,
		0.370167, -0.855066, -0.363095,
		0.762559, 0.502913, -0.406918,
		36.041561, 29.221901, 20.384283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212887, 28.462914, 20.683187>,  <35.507771, 28.869862, 20.669127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212887, 28.462914, 20.683187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285683, 28.854984, 20.651861>,  <36.329361, 29.090227, 20.633066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285683, 28.854984, 20.651861>,  <36.212887, 28.462914, 20.683187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285683, 28.854984, 20.651861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664943, -0.064002, 0.744147,
		0.724384, -0.187499, -0.663410,
		0.181986, 0.980178, -0.078314,
		36.340279, 29.149038, 20.628366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950428, 28.568127, 20.731035>,  <36.212887, 28.462914, 20.683187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950428, 28.568127, 20.731035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827213, 28.940805, 20.808029>,  <36.753284, 29.164413, 20.854225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827213, 28.940805, 20.808029>,  <36.950428, 28.568127, 20.731035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827213, 28.940805, 20.808029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631467, 0.048897, 0.773859,
		0.711592, 0.359926, -0.603399,
		-0.308036, 0.931699, 0.192487,
		36.734802, 29.220316, 20.865776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549007, 28.861198, 21.094454>,  <36.950428, 28.568127, 20.731035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549007, 28.861198, 21.094454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223755, 29.081945, 21.168491>,  <37.028603, 29.214394, 21.212914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223755, 29.081945, 21.168491>,  <37.549007, 28.861198, 21.094454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223755, 29.081945, 21.168491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396427, 0.292203, 0.870323,
		0.426219, 0.781062, -0.456375,
		-0.813131, 0.551868, 0.185092,
		36.979816, 29.247505, 21.224018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859657, 29.352001, 21.422419>,  <37.549007, 28.861198, 21.094454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859657, 29.352001, 21.422419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474812, 29.414106, 21.512066>,  <37.243904, 29.451370, 21.565855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474812, 29.414106, 21.512066>,  <37.859657, 29.352001, 21.422419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474812, 29.414106, 21.512066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251481, 0.187806, 0.949466,
		0.105328, 0.969857, -0.219737,
		-0.962114, 0.155265, 0.224119,
		37.186176, 29.460686, 21.579302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826813, 30.041283, 21.561487>,  <37.859657, 29.352001, 21.422419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826813, 30.041283, 21.561487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524853, 29.852428, 21.743572>,  <37.343678, 29.739117, 21.852823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524853, 29.852428, 21.743572>,  <37.826813, 30.041283, 21.561487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524853, 29.852428, 21.743572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376968, 0.255616, 0.890256,
		-0.536682, 0.843652, -0.014984,
		-0.754896, -0.472136, 0.455214,
		37.298386, 29.710787, 21.880136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620018, 30.404797, 22.062262>,  <37.826813, 30.041283, 21.561487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620018, 30.404797, 22.062262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446667, 30.070992, 22.198364>,  <37.342655, 29.870708, 22.280025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446667, 30.070992, 22.198364>,  <37.620018, 30.404797, 22.062262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446667, 30.070992, 22.198364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300939, 0.221878, 0.927473,
		-0.849483, 0.504341, 0.154980,
		-0.433376, -0.834512, 0.340258,
		37.316654, 29.820639, 22.300442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175636, 30.659830, 22.541895>,  <37.620018, 30.404797, 22.062262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175636, 30.659830, 22.541895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221783, 30.273495, 22.634714>,  <37.249470, 30.041693, 22.690405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221783, 30.273495, 22.634714>,  <37.175636, 30.659830, 22.541895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221783, 30.273495, 22.634714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058342, 0.239793, 0.969069,
		-0.991609, -0.098255, 0.084012,
		0.115362, -0.965839, 0.232048,
		37.256390, 29.983744, 22.704329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747192, 30.598087, 23.180113>,  <37.175636, 30.659830, 22.541895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747192, 30.598087, 23.180113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.968315, 30.264772, 23.182579>,  <37.100986, 30.064783, 23.184059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.968315, 30.264772, 23.182579>,  <36.747192, 30.598087, 23.180113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968315, 30.264772, 23.182579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073556, 0.056167, 0.995708,
		-0.830059, -0.549977, 0.092343,
		0.552803, -0.833289, 0.006168,
		37.134155, 30.014786, 23.184429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358334, 29.969671, 23.497677>,  <36.747192, 30.598087, 23.180113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358334, 29.969671, 23.497677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.757603, 29.956470, 23.517944>,  <36.997162, 29.948551, 23.530106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.757603, 29.956470, 23.517944>,  <36.358334, 29.969671, 23.497677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757603, 29.956470, 23.517944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038919, 0.290719, 0.956017,
		-0.046280, -0.956239, 0.288903,
		0.998170, -0.033001, 0.050671,
		37.057053, 29.946569, 23.533146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784893, 29.717836, 23.910223>,  <36.358334, 29.969671, 23.497677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784893, 29.717836, 23.910223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441685, 29.638037, 24.099541>,  <35.235760, 29.590157, 24.213131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441685, 29.638037, 24.099541>,  <35.784893, 29.717836, 23.910223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441685, 29.638037, 24.099541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460430, -0.109620, -0.880901,
		0.227621, -0.973747, 0.002201,
		-0.858017, -0.199498, 0.473295,
		35.184280, 29.578188, 24.241529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489651, 29.131416, 23.548033>,  <35.784893, 29.717836, 23.910223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489651, 29.131416, 23.548033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162731, 29.274866, 23.728439>,  <34.966579, 29.360935, 23.836683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162731, 29.274866, 23.728439>,  <35.489651, 29.131416, 23.548033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162731, 29.274866, 23.728439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502091, -0.059194, -0.862787,
		-0.282717, -0.931604, 0.228440,
		-0.817298, 0.358622, 0.451015,
		34.917542, 29.382452, 23.863743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928112, 28.655628, 23.461374>,  <35.489651, 29.131416, 23.548033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928112, 28.655628, 23.461374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726601, 28.981375, 23.576622>,  <34.605694, 29.176823, 23.645771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726601, 28.981375, 23.576622>,  <34.928112, 28.655628, 23.461374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726601, 28.981375, 23.576622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684697, -0.173089, -0.707976,
		-0.526682, -0.553939, 0.644793,
		-0.503782, 0.814366, 0.288118,
		34.575466, 29.225685, 23.663057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281307, 28.446627, 23.568232>,  <34.928112, 28.655628, 23.461374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281307, 28.446627, 23.568232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291641, 28.837784, 23.485228>,  <34.297840, 29.072477, 23.435425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291641, 28.837784, 23.485228>,  <34.281307, 28.446627, 23.568232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291641, 28.837784, 23.485228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580286, -0.154357, -0.799651,
		-0.814003, 0.141072, 0.563470,
		0.025833, 0.977892, -0.207509,
		34.299393, 29.131151, 23.422976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605858, 28.643860, 23.331785>,  <34.281307, 28.446627, 23.568232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605858, 28.643860, 23.331785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829388, 28.950617, 23.205557>,  <33.963505, 29.134672, 23.129820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829388, 28.950617, 23.205557>,  <33.605858, 28.643860, 23.331785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829388, 28.950617, 23.205557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517014, 0.024662, -0.855622,
		-0.648389, 0.641299, 0.410276,
		0.558828, 0.766894, -0.315570,
		33.997036, 29.180685, 23.110886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229198, 29.183426, 23.103264>,  <33.605858, 28.643860, 23.331785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229198, 29.183426, 23.103264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.574661, 29.215813, 22.904253>,  <33.781940, 29.235245, 22.784845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.574661, 29.215813, 22.904253>,  <33.229198, 29.183426, 23.103264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574661, 29.215813, 22.904253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503394, 0.087302, -0.859635,
		-0.026167, 0.992886, 0.116158,
		0.863660, 0.080967, -0.497529,
		33.833759, 29.240103, 22.754993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033489, 29.530914, 22.467546>,  <33.229198, 29.183426, 23.103264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033489, 29.530914, 22.467546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415485, 29.450541, 22.380264>,  <33.644684, 29.402317, 22.327894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415485, 29.450541, 22.380264>,  <33.033489, 29.530914, 22.467546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415485, 29.450541, 22.380264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223474, -0.003626, -0.974703,
		0.195059, 0.979598, -0.048366,
		0.954993, -0.200934, -0.218207,
		33.701984, 29.390261, 22.314802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925419, 30.216949, 22.573483>,  <33.033489, 29.530914, 22.467546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925419, 30.216949, 22.573483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.593315, 30.439901, 22.573389>,  <32.394054, 30.573673, 22.573332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.593315, 30.439901, 22.573389>,  <32.925419, 30.216949, 22.573483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593315, 30.439901, 22.573389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011981, -0.017424, 0.999776,
		0.557251, 0.830075, 0.021144,
		-0.830258, 0.557379, -0.000235,
		32.344238, 30.607115, 22.573318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081829, 30.816753, 23.040060>,  <32.925419, 30.216949, 22.573483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081829, 30.816753, 23.040060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683750, 30.784821, 23.017395>,  <32.444904, 30.765661, 23.003796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683750, 30.784821, 23.017395>,  <33.081829, 30.816753, 23.040060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683750, 30.784821, 23.017395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060990, 0.052826, 0.996740,
		-0.076579, 0.995408, -0.057441,
		-0.995196, -0.079833, -0.056665,
		32.385193, 30.760870, 23.000395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902020, 31.372482, 23.482050>,  <33.081829, 30.816753, 23.040060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902020, 31.372482, 23.482050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614075, 31.100002, 23.428730>,  <32.441307, 30.936514, 23.396738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614075, 31.100002, 23.428730>,  <32.902020, 31.372482, 23.482050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614075, 31.100002, 23.428730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187906, 0.006376, 0.982166,
		-0.668201, 0.732070, -0.132591,
		-0.719860, -0.681199, -0.133300,
		32.398117, 30.895643, 23.388741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508533, 31.660042, 23.988495>,  <32.902020, 31.372482, 23.482050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508533, 31.660042, 23.988495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375591, 31.288830, 23.921204>,  <32.295826, 31.066103, 23.880829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375591, 31.288830, 23.921204>,  <32.508533, 31.660042, 23.988495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375591, 31.288830, 23.921204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160841, -0.119985, 0.979660,
		-0.929337, 0.352658, -0.109387,
		-0.332360, -0.928028, -0.168229,
		32.275883, 31.010422, 23.870735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889719, 31.566566, 24.292635>,  <32.508533, 31.660042, 23.988495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889719, 31.566566, 24.292635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035397, 31.195906, 24.255363>,  <32.122803, 30.973509, 24.233000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035397, 31.195906, 24.255363>,  <31.889719, 31.566566, 24.292635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035397, 31.195906, 24.255363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180942, -0.168547, 0.968944,
		-0.913577, -0.336023, -0.229053,
		0.364194, -0.926650, -0.093180,
		32.144653, 30.917912, 24.227409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451698, 31.079851, 24.743629>,  <31.889719, 31.566566, 24.292635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451698, 31.079851, 24.743629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.801966, 30.903713, 24.664330>,  <32.012127, 30.798031, 24.616749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.801966, 30.903713, 24.664330>,  <31.451698, 31.079851, 24.743629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801966, 30.903713, 24.664330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099343, -0.237491, 0.966296,
		-0.472589, -0.865848, -0.164218,
		0.875666, -0.440347, -0.198251,
		32.064667, 30.771608, 24.604855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403143, 30.567089, 25.197878>,  <31.451698, 31.079851, 24.743629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403143, 30.567089, 25.197878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.788078, 30.594717, 25.092705>,  <32.019039, 30.611294, 25.029600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.788078, 30.594717, 25.092705>,  <31.403143, 30.567089, 25.197878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788078, 30.594717, 25.092705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257134, 0.082691, 0.962832,
		0.088262, -0.994178, 0.061811,
		0.962337, 0.069088, -0.262935,
		32.076778, 30.615437, 25.013824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.133427, 34.159485, 19.936422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435322, 33.902191, 19.987978>,  <34.616459, 33.747814, 20.018911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435322, 33.902191, 19.987978>,  <34.133427, 34.159485, 19.936422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435322, 33.902191, 19.987978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030446, 0.230606, 0.972571,
		-0.655315, -0.730116, 0.193632,
		0.754742, -0.643235, 0.128890,
		34.661743, 33.709221, 20.026646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927471, 33.880112, 20.584368>,  <34.133427, 34.159485, 19.936422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927471, 33.880112, 20.584368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.319241, 33.814949, 20.536711>,  <34.554302, 33.775852, 20.508116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.319241, 33.814949, 20.536711>,  <33.927471, 33.880112, 20.584368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319241, 33.814949, 20.536711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144419, 0.153323, 0.977566,
		-0.140982, -0.974656, 0.173695,
		0.979422, -0.162904, -0.119143,
		34.613068, 33.766079, 20.500967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039700, 33.536842, 21.178495>,  <33.927471, 33.880112, 20.584368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039700, 33.536842, 21.178495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.402359, 33.644802, 21.048796>,  <34.619957, 33.709579, 20.970976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.402359, 33.644802, 21.048796>,  <34.039700, 33.536842, 21.178495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402359, 33.644802, 21.048796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287068, 0.168523, 0.942970,
		0.309151, -0.948026, 0.075312,
		0.906652, 0.269901, -0.324247,
		34.674355, 33.725773, 20.951521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474964, 33.230194, 21.651188>,  <34.039700, 33.536842, 21.178495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474964, 33.230194, 21.651188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.660553, 33.525490, 21.455341>,  <34.771908, 33.702667, 21.337833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.660553, 33.525490, 21.455341>,  <34.474964, 33.230194, 21.651188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660553, 33.525490, 21.455341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374457, 0.337454, 0.863659,
		0.802812, -0.584058, -0.119869,
		0.463977, 0.738242, -0.489617,
		34.799747, 33.746964, 21.308456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183075, 33.196144, 21.927511>,  <34.474964, 33.230194, 21.651188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183075, 33.196144, 21.927511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.137741, 33.566803, 21.784136>,  <35.110542, 33.789200, 21.698111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.137741, 33.566803, 21.784136>,  <35.183075, 33.196144, 21.927511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137741, 33.566803, 21.784136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444986, 0.369900, 0.815574,
		0.888337, -0.067068, -0.454268,
		-0.113334, 0.926648, -0.358440,
		35.103741, 33.844799, 21.676603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899532, 33.538513, 22.085827>,  <35.183075, 33.196144, 21.927511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899532, 33.538513, 22.085827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.599400, 33.794697, 22.020327>,  <35.419319, 33.948406, 21.981026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.599400, 33.794697, 22.020327>,  <35.899532, 33.538513, 22.085827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599400, 33.794697, 22.020327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216296, 0.471930, 0.854692,
		0.624672, 0.605885, -0.492633,
		-0.750333, 0.640457, -0.163751,
		35.374298, 33.986835, 21.971201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258724, 34.228992, 22.159931>,  <35.899532, 33.538513, 22.085827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258724, 34.228992, 22.159931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.866562, 34.300652, 22.192707>,  <35.631264, 34.343647, 22.212374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.866562, 34.300652, 22.192707>,  <36.258724, 34.228992, 22.159931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866562, 34.300652, 22.192707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164421, 0.515007, 0.841269,
		0.108514, 0.838256, -0.534371,
		-0.980403, 0.179151, 0.081941,
		35.572441, 34.354397, 22.217289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177597, 34.966213, 22.274130>,  <36.258724, 34.228992, 22.159931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177597, 34.966213, 22.274130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.846481, 34.783554, 22.404503>,  <35.647812, 34.673958, 22.482727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.846481, 34.783554, 22.404503>,  <36.177597, 34.966213, 22.274130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846481, 34.783554, 22.404503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022012, 0.554071, 0.832178,
		-0.560601, 0.696047, -0.448605,
		-0.827794, -0.456645, 0.325934,
		35.598145, 34.646561, 22.502283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783142, 35.464348, 22.707390>,  <36.177597, 34.966213, 22.274130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783142, 35.464348, 22.707390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.611282, 35.127880, 22.838737>,  <35.508167, 34.925999, 22.917547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.611282, 35.127880, 22.838737>,  <35.783142, 35.464348, 22.707390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611282, 35.127880, 22.838737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293422, 0.473966, 0.830217,
		-0.853993, 0.260353, -0.450459,
		-0.429651, -0.841173, 0.328371,
		35.482388, 34.875526, 22.937248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102482, 35.644650, 22.899500>,  <35.783142, 35.464348, 22.707390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102482, 35.644650, 22.899500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.190968, 35.300610, 23.083368>,  <35.244057, 35.094185, 23.193689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.190968, 35.300610, 23.083368>,  <35.102482, 35.644650, 22.899500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190968, 35.300610, 23.083368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469347, 0.319275, 0.823272,
		-0.854856, -0.397863, -0.333057,
		0.221212, -0.860098, 0.459670,
		35.257332, 35.042580, 23.221270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542896, 35.478859, 23.292252>,  <35.102482, 35.644650, 22.899500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542896, 35.478859, 23.292252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.844959, 35.287090, 23.471092>,  <35.026196, 35.172031, 23.578398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.844959, 35.287090, 23.471092>,  <34.542896, 35.478859, 23.292252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844959, 35.287090, 23.471092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364245, 0.260200, 0.894215,
		-0.545040, -0.838125, 0.021865,
		0.755153, -0.479419, 0.447103,
		35.071507, 35.143265, 23.605223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288818, 35.272461, 23.939426>,  <34.542896, 35.478859, 23.292252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288818, 35.272461, 23.939426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684155, 35.222065, 23.973637>,  <34.921356, 35.191830, 23.994164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684155, 35.222065, 23.973637>,  <34.288818, 35.272461, 23.939426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684155, 35.222065, 23.973637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021940, 0.437974, 0.898720,
		-0.150684, -0.890116, 0.430102,
		0.988339, -0.125986, 0.085525,
		34.980656, 35.184269, 23.999294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044456, 34.661484, 24.107698>,  <34.288818, 35.272461, 23.939426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044456, 34.661484, 24.107698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.653049, 34.667263, 24.189970>,  <33.418205, 34.670731, 24.239332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.653049, 34.667263, 24.189970>,  <34.044456, 34.661484, 24.107698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653049, 34.667263, 24.189970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204241, -0.204585, -0.957304,
		0.028251, -0.978742, 0.203139,
		-0.978513, 0.014444, 0.205679,
		33.359497, 34.671597, 24.251675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720638, 33.950752, 23.922894>,  <34.044456, 34.661484, 24.107698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720638, 33.950752, 23.922894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.436676, 34.232433, 23.918116>,  <33.266300, 34.401440, 23.915249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.436676, 34.232433, 23.918116>,  <33.720638, 33.950752, 23.922894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436676, 34.232433, 23.918116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170190, -0.187977, -0.967316,
		-0.683428, -0.684667, 0.253293,
		-0.709903, 0.704198, -0.011945,
		33.223705, 34.443691, 23.914532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179871, 33.721405, 23.556793>,  <33.720638, 33.950752, 23.922894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179871, 33.721405, 23.556793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.101440, 34.113426, 23.543848>,  <33.054382, 34.348640, 23.536081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.101440, 34.113426, 23.543848>,  <33.179871, 33.721405, 23.556793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101440, 34.113426, 23.543848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127846, -0.058272, -0.990081,
		-0.972220, -0.189990, 0.136722,
		-0.196072, 0.980055, -0.032364,
		33.042618, 34.407444, 23.534140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639164, 33.696503, 23.236429>,  <33.179871, 33.721405, 23.556793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639164, 33.696503, 23.236429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.726482, 34.084091, 23.190056>,  <32.778873, 34.316643, 23.162231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.726482, 34.084091, 23.190056>,  <32.639164, 33.696503, 23.236429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726482, 34.084091, 23.190056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305691, -0.044925, -0.951070,
		-0.926769, 0.243054, 0.286400,
		0.218295, 0.968972, -0.115934,
		32.791969, 34.374783, 23.155275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107670, 33.966190, 22.867640>,  <32.639164, 33.696503, 23.236429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107670, 33.966190, 22.867640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378017, 34.255909, 22.813091>,  <32.540226, 34.429741, 22.780361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378017, 34.255909, 22.813091>,  <32.107670, 33.966190, 22.867640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378017, 34.255909, 22.813091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390301, 0.194778, -0.899848,
		-0.625196, 0.661403, 0.414338,
		0.675866, 0.724298, -0.136372,
		32.580776, 34.473198, 22.772181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713964, 34.525742, 22.617561>,  <32.107670, 33.966190, 22.867640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713964, 34.525742, 22.617561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094353, 34.588730, 22.511082>,  <32.322586, 34.626522, 22.447195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094353, 34.588730, 22.511082>,  <31.713964, 34.525742, 22.617561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094353, 34.588730, 22.511082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283094, 0.096547, -0.954220,
		-0.124560, 0.982793, 0.136392,
		0.950969, 0.157469, -0.266197,
		32.379642, 34.635971, 22.431223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760508, 35.061749, 22.119991>,  <31.713964, 34.525742, 22.617561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760508, 35.061749, 22.119991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.110592, 34.884338, 22.042746>,  <32.320641, 34.777893, 21.996399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.110592, 34.884338, 22.042746>,  <31.760508, 35.061749, 22.119991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110592, 34.884338, 22.042746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186020, 0.059937, -0.980716,
		0.446546, 0.894256, -0.030047,
		0.875210, -0.443525, -0.193114,
		32.373154, 34.751282, 21.984812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078182, 35.470615, 21.715111>,  <31.760508, 35.061749, 22.119991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078182, 35.470615, 21.715111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.255463, 35.124207, 21.622517>,  <32.361832, 34.916363, 21.566961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.255463, 35.124207, 21.622517>,  <32.078182, 35.470615, 21.715111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255463, 35.124207, 21.622517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293235, 0.103964, -0.950371,
		0.847106, 0.489082, -0.207871,
		0.443199, -0.866019, -0.231485,
		32.388424, 34.864399, 21.553072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456860, 35.545544, 21.076130>,  <32.078182, 35.470615, 21.715111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456860, 35.545544, 21.076130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.417896, 35.148647, 21.107052>,  <32.394520, 34.910511, 21.125605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.417896, 35.148647, 21.107052>,  <32.456860, 35.545544, 21.076130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417896, 35.148647, 21.107052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332433, -0.040778, -0.942245,
		0.938084, -0.117478, -0.325881,
		-0.097404, -0.992238, 0.077306,
		32.388676, 34.850975, 21.130243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725628, 35.201107, 20.499826>,  <32.456860, 35.545544, 21.076130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725628, 35.201107, 20.499826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.488773, 34.907684, 20.633255>,  <32.346661, 34.731632, 20.713312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.488773, 34.907684, 20.633255>,  <32.725628, 35.201107, 20.499826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488773, 34.907684, 20.633255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271845, -0.207843, -0.939628,
		0.758600, -0.647069, -0.076342,
		-0.592138, -0.733555, 0.333572,
		32.311131, 34.687618, 20.733326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892601, 34.645798, 19.979498>,  <32.725628, 35.201107, 20.499826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892601, 34.645798, 19.979498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.544415, 34.540905, 20.146124>,  <32.335503, 34.477970, 20.246099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.544415, 34.540905, 20.146124>,  <32.892601, 34.645798, 19.979498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544415, 34.540905, 20.146124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312565, -0.359296, -0.879323,
		0.380253, -0.895624, 0.230792,
		-0.870466, -0.262228, 0.416564,
		32.283276, 34.462238, 20.271093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695805, 33.943184, 19.790611>,  <32.892601, 34.645798, 19.979498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695805, 33.943184, 19.790611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342621, 34.096226, 19.899422>,  <32.130711, 34.188049, 19.964708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342621, 34.096226, 19.899422>,  <32.695805, 33.943184, 19.790611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342621, 34.096226, 19.899422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427001, -0.413753, -0.804039,
		-0.195078, -0.826088, 0.528699,
		-0.882958, 0.382606, 0.272026,
		32.077732, 34.211006, 19.981030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198532, 33.416012, 19.869661>,  <32.695805, 33.943184, 19.790611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198532, 33.416012, 19.869661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002960, 33.755310, 19.788246>,  <31.885618, 33.958889, 19.739397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002960, 33.755310, 19.788246>,  <32.198532, 33.416012, 19.869661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002960, 33.755310, 19.788246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486079, -0.458667, -0.743876,
		-0.724346, -0.264766, 0.636570,
		-0.488927, 0.848247, -0.203537,
		31.856281, 34.009785, 19.727186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816109, 32.910007, 20.081491>,  <32.198532, 33.416012, 19.869661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816109, 32.910007, 20.081491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.579575, 32.634586, 19.913580>,  <32.437656, 32.469334, 19.812832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.579575, 32.634586, 19.913580>,  <32.816109, 32.910007, 20.081491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579575, 32.634586, 19.913580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284637, -0.308831, 0.907527,
		-0.754525, 0.656135, -0.013368,
		-0.591332, -0.688557, -0.419781,
		32.402176, 32.428020, 19.787645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251553, 32.876781, 20.491682>,  <32.816109, 32.910007, 20.081491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251553, 32.876781, 20.491682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.251301, 32.522583, 20.305820>,  <32.251152, 32.310066, 20.194304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.251301, 32.522583, 20.305820>,  <32.251553, 32.876781, 20.491682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251301, 32.522583, 20.305820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229873, -0.452082, 0.861847,
		-0.973220, 0.107351, -0.203267,
		-0.000627, -0.885493, -0.464653,
		32.251114, 32.256935, 20.166424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722727, 32.602318, 20.741419>,  <32.251553, 32.876781, 20.491682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722727, 32.602318, 20.741419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.903349, 32.276913, 20.594835>,  <32.011723, 32.081669, 20.506886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.903349, 32.276913, 20.594835>,  <31.722727, 32.602318, 20.741419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903349, 32.276913, 20.594835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369778, -0.544411, 0.752915,
		-0.812012, -0.204474, -0.546651,
		0.451554, -0.813516, -0.366458,
		32.038815, 32.032860, 20.484898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274427, 31.983791, 20.905312>,  <31.722727, 32.602318, 20.741419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274427, 31.983791, 20.905312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.647339, 31.850677, 20.848591>,  <31.871086, 31.770809, 20.814558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.647339, 31.850677, 20.848591>,  <31.274427, 31.983791, 20.905312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647339, 31.850677, 20.848591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100810, -0.615493, 0.781668,
		-0.347403, -0.714440, -0.607361,
		0.932281, -0.332782, -0.141801,
		31.927023, 31.750843, 20.806049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152891, 31.308161, 21.279226>,  <31.274427, 31.983791, 20.905312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152891, 31.308161, 21.279226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544731, 31.360806, 21.218477>,  <31.779835, 31.392391, 21.182028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544731, 31.360806, 21.218477>,  <31.152891, 31.308161, 21.279226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544731, 31.360806, 21.218477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200964, -0.639397, 0.742149,
		0.000568, -0.757529, -0.652801,
		0.979599, 0.131611, -0.151873,
		31.838612, 31.400290, 21.172915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429600, 30.697498, 21.297131>,  <31.152891, 31.308161, 21.279226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429600, 30.697498, 21.297131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.711483, 30.961391, 21.401543>,  <31.880613, 31.119728, 21.464190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.711483, 30.961391, 21.401543>,  <31.429600, 30.697498, 21.297131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711483, 30.961391, 21.401543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143385, -0.492748, 0.858277,
		0.694856, -0.567408, -0.441840,
		0.704709, 0.659733, 0.261031,
		31.922895, 31.159311, 21.479853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984003, 30.284344, 21.532011>,  <31.429600, 30.697498, 21.297131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984003, 30.284344, 21.532011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.054245, 30.652554, 21.671610>,  <32.096390, 30.873480, 21.755369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.054245, 30.652554, 21.671610>,  <31.984003, 30.284344, 21.532011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054245, 30.652554, 21.671610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094483, -0.368628, 0.924763,
		0.979916, -0.129419, -0.151707,
		0.175605, 0.920524, 0.348997,
		32.106926, 30.928711, 21.776308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607422, 30.182125, 21.887079>,  <31.984003, 30.284344, 21.532011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607422, 30.182125, 21.887079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.419697, 30.504461, 22.031504>,  <32.307060, 30.697863, 22.118158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.419697, 30.504461, 22.031504>,  <32.607422, 30.182125, 21.887079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419697, 30.504461, 22.031504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085274, -0.365619, 0.926850,
		0.878905, 0.465771, 0.102873,
		-0.469313, 0.805841, 0.361062,
		32.278904, 30.746214, 22.139822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384666, 30.109421, 21.918709>,  <32.607422, 30.182125, 21.887079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384666, 30.109421, 21.918709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.570866, 29.755877, 21.900351>,  <33.682583, 29.543751, 21.889336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.570866, 29.755877, 21.900351>,  <33.384666, 30.109421, 21.918709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570866, 29.755877, 21.900351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082738, 0.008174, -0.996538,
		0.881174, 0.467681, -0.069324,
		0.465495, -0.883859, -0.045898,
		33.710514, 29.490719, 21.886581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724918, 30.165873, 21.295847>,  <33.384666, 30.109421, 21.918709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724918, 30.165873, 21.295847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.717976, 29.773169, 21.371578>,  <33.713810, 29.537546, 21.417017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.717976, 29.773169, 21.371578>,  <33.724918, 30.165873, 21.295847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717976, 29.773169, 21.371578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050179, -0.188262, -0.980836,
		0.998589, -0.026524, -0.045997,
		-0.017356, -0.981760, 0.189328,
		33.712769, 29.478640, 21.428377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104221, 29.896997, 20.649113>,  <33.724918, 30.165873, 21.295847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104221, 29.896997, 20.649113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.932117, 29.580654, 20.823202>,  <33.828854, 29.390848, 20.927656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.932117, 29.580654, 20.823202>,  <34.104221, 29.896997, 20.649113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932117, 29.580654, 20.823202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117255, -0.429087, -0.895620,
		0.895058, -0.436380, 0.091887,
		-0.430258, -0.790858, 0.435226,
		33.803040, 29.343397, 20.953770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371616, 29.300156, 20.211588>,  <34.104221, 29.896997, 20.649113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371616, 29.300156, 20.211588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.033440, 29.186815, 20.392666>,  <33.830532, 29.118811, 20.501312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.033440, 29.186815, 20.392666>,  <34.371616, 29.300156, 20.211588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033440, 29.186815, 20.392666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359879, -0.324034, -0.874922,
		0.394599, -0.902615, 0.171981,
		-0.845446, -0.283351, 0.452696,
		33.779804, 29.101810, 20.528475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190334, 28.635153, 19.900492>,  <34.371616, 29.300156, 20.211588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190334, 28.635153, 19.900492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.851250, 28.775543, 20.059593>,  <33.647800, 28.859777, 20.155054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.851250, 28.775543, 20.059593>,  <34.190334, 28.635153, 19.900492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851250, 28.775543, 20.059593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481560, -0.194705, -0.854512,
		-0.222477, -0.915914, 0.334073,
		-0.847705, 0.350985, 0.397750,
		33.596939, 28.880836, 20.178919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898243, 28.323111, 19.493994>,  <34.190334, 28.635153, 19.900492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898243, 28.323111, 19.493994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.631603, 28.586622, 19.633509>,  <33.471619, 28.744728, 19.717218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.631603, 28.586622, 19.633509>,  <33.898243, 28.323111, 19.493994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631603, 28.586622, 19.633509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578740, -0.162502, -0.799158,
		-0.469789, -0.734578, 0.489585,
		-0.666602, 0.658778, 0.348788,
		33.431622, 28.784256, 19.738146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286411, 28.071115, 19.319963>,  <33.898243, 28.323111, 19.493994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286411, 28.071115, 19.319963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204308, 28.452196, 19.409609>,  <33.155045, 28.680845, 19.463396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204308, 28.452196, 19.409609>,  <33.286411, 28.071115, 19.319963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204308, 28.452196, 19.409609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548729, 0.077588, -0.832392,
		-0.810410, -0.293835, 0.506849,
		-0.205261, 0.952702, 0.224114,
		33.142731, 28.738007, 19.476843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497665, 28.164993, 19.307381>,  <33.286411, 28.071115, 19.319963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497665, 28.164993, 19.307381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.707554, 28.491009, 19.209087>,  <32.833485, 28.686619, 19.150112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.707554, 28.491009, 19.209087>,  <32.497665, 28.164993, 19.307381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707554, 28.491009, 19.209087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267699, -0.116035, -0.956490,
		-0.808089, 0.567670, 0.157299,
		0.524718, 0.815038, -0.245731,
		32.864971, 28.735519, 19.135368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226910, 28.550936, 18.790897>,  <32.497665, 28.164993, 19.307381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226910, 28.550936, 18.790897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.613609, 28.648336, 18.759659>,  <32.845631, 28.706776, 18.740915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.613609, 28.648336, 18.759659>,  <32.226910, 28.550936, 18.790897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613609, 28.648336, 18.759659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060441, -0.079156, -0.995028,
		-0.248472, 0.966665, -0.061807,
		0.966752, 0.243501, -0.078095,
		32.903633, 28.721386, 18.736231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.703503, 30.598555, 34.170536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977058, 30.884920, 34.114311>,  <38.141193, 31.056740, 34.080578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977058, 30.884920, 34.114311>,  <37.703503, 30.598555, 34.170536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977058, 30.884920, 34.114311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464331, 0.278498, -0.840735,
		-0.562748, 0.640240, 0.522884,
		0.683894, 0.715914, -0.140559,
		38.182228, 31.099693, 34.072144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349148, 31.246948, 34.003643>,  <37.703503, 30.598555, 34.170536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349148, 31.246948, 34.003643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712879, 31.236691, 33.837532>,  <37.931118, 31.230536, 33.737865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712879, 31.236691, 33.837532>,  <37.349148, 31.246948, 34.003643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712879, 31.236691, 33.837532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404719, 0.177058, -0.897136,
		0.096535, 0.983866, 0.150626,
		0.909331, -0.025644, -0.415282,
		37.985680, 31.228998, 33.712948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440491, 31.900217, 33.598305>,  <37.349148, 31.246948, 34.003643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440491, 31.900217, 33.598305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687950, 31.624949, 33.446671>,  <37.836426, 31.459787, 33.355690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687950, 31.624949, 33.446671>,  <37.440491, 31.900217, 33.598305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687950, 31.624949, 33.446671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477625, 0.053686, -0.876922,
		0.623822, 0.723561, -0.295474,
		0.618644, -0.688169, -0.379082,
		37.873543, 31.418497, 33.332947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427097, 32.000542, 32.845749>,  <37.440491, 31.900217, 33.598305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427097, 32.000542, 32.845749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585453, 31.635683, 32.888195>,  <37.680466, 31.416767, 32.913662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585453, 31.635683, 32.888195>,  <37.427097, 32.000542, 32.845749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585453, 31.635683, 32.888195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408020, -0.278250, -0.869538,
		0.822674, 0.300941, -0.482330,
		0.395888, -0.912147, 0.106119,
		37.704220, 31.362040, 32.920033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957375, 31.845984, 32.195881>,  <37.427097, 32.000542, 32.845749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957375, 31.845984, 32.195881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837952, 31.507191, 32.371830>,  <37.766296, 31.303915, 32.477398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837952, 31.507191, 32.371830>,  <37.957375, 31.845984, 32.195881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837952, 31.507191, 32.371830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383774, -0.315443, -0.867879,
		0.873830, -0.427924, -0.230871,
		-0.298560, -0.846981, 0.439869,
		37.748383, 31.253096, 32.503792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120358, 31.346272, 31.790188>,  <37.957375, 31.845984, 32.195881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120358, 31.346272, 31.790188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.817326, 31.210346, 32.013115>,  <37.635506, 31.128790, 32.146870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.817326, 31.210346, 32.013115>,  <38.120358, 31.346272, 31.790188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817326, 31.210346, 32.013115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407365, -0.421002, -0.810439,
		0.510031, -0.841002, 0.180513,
		-0.757577, -0.339814, 0.557319,
		37.590054, 31.108402, 32.180309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001217, 30.701141, 31.474289>,  <38.120358, 31.346272, 31.790188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001217, 30.701141, 31.474289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671223, 30.742504, 31.696535>,  <37.473225, 30.767323, 31.829884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671223, 30.742504, 31.696535>,  <38.001217, 30.701141, 31.474289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671223, 30.742504, 31.696535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558767, -0.296653, -0.774452,
		0.084740, -0.949370, 0.302515,
		-0.824984, 0.103408, 0.555615,
		37.423729, 30.773527, 31.863220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722862, 30.056509, 31.597757>,  <38.001217, 30.701141, 31.474289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722862, 30.056509, 31.597757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427631, 30.325254, 31.622557>,  <37.250492, 30.486502, 31.637436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427631, 30.325254, 31.622557>,  <37.722862, 30.056509, 31.597757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427631, 30.325254, 31.622557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515639, -0.502409, -0.694047,
		-0.435154, -0.544230, 0.717255,
		-0.738077, 0.671862, 0.062001,
		37.206207, 30.526814, 31.641157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123348, 29.599241, 31.340343>,  <37.722862, 30.056509, 31.597757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123348, 29.599241, 31.340343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017208, 29.984755, 31.329674>,  <36.953526, 30.216063, 31.323271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017208, 29.984755, 31.329674>,  <37.123348, 29.599241, 31.340343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017208, 29.984755, 31.329674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583881, -0.182647, -0.791027,
		-0.767251, -0.194320, 0.611200,
		-0.265346, 0.963784, -0.026676,
		36.937603, 30.273890, 31.321671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451210, 29.505264, 31.322721>,  <37.123348, 29.599241, 31.340343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451210, 29.505264, 31.322721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516155, 29.876257, 31.188015>,  <36.555122, 30.098852, 31.107191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516155, 29.876257, 31.188015>,  <36.451210, 29.505264, 31.322721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516155, 29.876257, 31.188015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712348, -0.125988, -0.690426,
		-0.682788, 0.351995, 0.640235,
		0.162364, 0.927484, -0.336766,
		36.564865, 30.154503, 31.086985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716061, 29.757563, 31.218664>,  <36.451210, 29.505264, 31.322721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716061, 29.757563, 31.218664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973103, 29.967047, 30.994957>,  <36.127327, 30.092737, 30.860733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973103, 29.967047, 30.994957>,  <35.716061, 29.757563, 31.218664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973103, 29.967047, 30.994957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616136, -0.080679, -0.783497,
		-0.455448, 0.848067, 0.270833,
		0.642607, 0.523712, -0.559270,
		36.165886, 30.124161, 30.827175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307327, 30.053385, 30.675890>,  <35.716061, 29.757563, 31.218664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307327, 30.053385, 30.675890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681862, 30.099876, 30.543367>,  <35.906582, 30.127771, 30.463854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681862, 30.099876, 30.543367>,  <35.307327, 30.053385, 30.675890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681862, 30.099876, 30.543367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326099, -0.061826, -0.943312,
		-0.130124, 0.991296, -0.019987,
		0.936337, 0.116230, -0.331306,
		35.962765, 30.134745, 30.443975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060940, 30.723984, 30.685944>,  <35.307327, 30.053385, 30.675890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060940, 30.723984, 30.685944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672935, 30.820553, 30.697205>,  <34.440132, 30.878494, 30.703960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672935, 30.820553, 30.697205>,  <35.060940, 30.723984, 30.685944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672935, 30.820553, 30.697205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130191, 0.418274, 0.898942,
		0.205251, 0.875649, -0.437162,
		-0.970012, 0.241423, 0.028151,
		34.381931, 30.892981, 30.705650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044670, 31.463915, 30.738047>,  <35.060940, 30.723984, 30.685944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044670, 31.463915, 30.738047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716209, 31.332500, 30.924711>,  <34.519135, 31.253651, 31.036711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716209, 31.332500, 30.924711>,  <35.044670, 31.463915, 30.738047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716209, 31.332500, 30.924711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143518, 0.672538, 0.726014,
		-0.552372, 0.663141, -0.505103,
		-0.821150, -0.328538, 0.466664,
		34.469864, 31.233938, 31.064711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711212, 32.140137, 31.016670>,  <35.044670, 31.463915, 30.738047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711212, 32.140137, 31.016670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549210, 31.832989, 31.215204>,  <34.452007, 31.648701, 31.334324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549210, 31.832989, 31.215204>,  <34.711212, 32.140137, 31.016670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549210, 31.832989, 31.215204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128960, 0.489448, 0.862444,
		-0.905176, 0.413299, -0.099202,
		-0.405002, -0.767870, 0.496335,
		34.427708, 31.602627, 31.364105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216442, 32.357395, 31.393787>,  <34.711212, 32.140137, 31.016670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216442, 32.357395, 31.393787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327072, 32.031712, 31.597975>,  <34.393448, 31.836302, 31.720488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327072, 32.031712, 31.597975>,  <34.216442, 32.357395, 31.393787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327072, 32.031712, 31.597975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057112, 0.544174, 0.837026,
		-0.959294, -0.202344, 0.197005,
		0.276572, -0.814206, 0.510467,
		34.410046, 31.787449, 31.751114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861019, 32.415459, 32.062260>,  <34.216442, 32.357395, 31.393787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861019, 32.415459, 32.062260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123116, 32.122986, 32.138195>,  <34.280373, 31.947502, 32.183758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123116, 32.122986, 32.138195>,  <33.861019, 32.415459, 32.062260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123116, 32.122986, 32.138195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140174, 0.364623, 0.920544,
		-0.742305, -0.576563, 0.341407,
		0.655237, -0.731180, 0.189842,
		34.319687, 31.903631, 32.195148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697330, 32.137375, 32.800343>,  <33.861019, 32.415459, 32.062260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697330, 32.137375, 32.800343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073128, 32.041698, 32.702251>,  <34.298607, 31.984293, 32.643398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073128, 32.041698, 32.702251>,  <33.697330, 32.137375, 32.800343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073128, 32.041698, 32.702251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311387, 0.297940, 0.902369,
		-0.142776, -0.924132, 0.354394,
		0.939496, -0.239190, -0.245225,
		34.354977, 31.969942, 32.628685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972305, 32.017616, 33.479115>,  <33.697330, 32.137375, 32.800343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972305, 32.017616, 33.479115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302505, 32.048443, 33.255466>,  <34.500626, 32.066936, 33.121277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302505, 32.048443, 33.255466>,  <33.972305, 32.017616, 33.479115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302505, 32.048443, 33.255466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479591, 0.426501, 0.766869,
		0.297561, -0.901198, 0.315118,
		0.825499, 0.077063, -0.559117,
		34.550156, 32.071560, 33.087730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597977, 31.572609, 33.775871>,  <33.972305, 32.017616, 33.479115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597977, 31.572609, 33.775871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700314, 31.889936, 33.554893>,  <34.761715, 32.080334, 33.422306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700314, 31.889936, 33.554893>,  <34.597977, 31.572609, 33.775871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700314, 31.889936, 33.554893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441239, 0.412635, 0.796895,
		0.860148, -0.447634, -0.244476,
		0.255838, 0.793320, -0.552440,
		34.777065, 32.127934, 33.389160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345703, 31.697411, 33.939491>,  <34.597977, 31.572609, 33.775871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345703, 31.697411, 33.939491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184647, 32.013359, 33.754459>,  <35.088013, 32.202927, 33.643440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184647, 32.013359, 33.754459>,  <35.345703, 31.697411, 33.939491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184647, 32.013359, 33.754459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392397, 0.605511, 0.692373,
		0.826985, 0.097261, -0.553747,
		-0.402641, 0.789871, -0.462584,
		35.063854, 32.250320, 33.615685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921249, 32.174046, 34.037834>,  <35.345703, 31.697411, 33.939491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921249, 32.174046, 34.037834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586021, 32.372326, 33.946690>,  <35.384884, 32.491295, 33.892002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586021, 32.372326, 33.946690>,  <35.921249, 32.174046, 34.037834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586021, 32.372326, 33.946690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249140, 0.719313, 0.648474,
		0.485352, 0.486697, -0.726333,
		-0.838071, 0.495697, -0.227865,
		35.334599, 32.521034, 33.878330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018780, 32.973297, 33.680706>,  <35.921249, 32.174046, 34.037834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018780, 32.973297, 33.680706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676884, 32.960705, 33.887947>,  <35.471748, 32.953148, 34.012291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676884, 32.960705, 33.887947>,  <36.018780, 32.973297, 33.680706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676884, 32.960705, 33.887947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306105, 0.775542, 0.552117,
		-0.419193, 0.630510, -0.653249,
		-0.854738, -0.031481, 0.518105,
		35.420464, 32.951260, 34.043377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109371, 33.526428, 34.125999>,  <36.018780, 32.973297, 33.680706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109371, 33.526428, 34.125999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741337, 33.419590, 34.240612>,  <35.520515, 33.355488, 34.309380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741337, 33.419590, 34.240612>,  <36.109371, 33.526428, 34.125999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741337, 33.419590, 34.240612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033866, 0.782975, 0.621130,
		-0.390246, 0.561791, -0.729451,
		-0.920088, -0.267097, 0.286527,
		35.465309, 33.339462, 34.326569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545933, 34.140404, 34.155182>,  <36.109371, 33.526428, 34.125999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545933, 34.140404, 34.155182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432838, 33.857059, 34.413879>,  <35.364983, 33.687054, 34.569099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432838, 33.857059, 34.413879>,  <35.545933, 34.140404, 34.155182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432838, 33.857059, 34.413879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093169, 0.691352, 0.716486,
		-0.954663, 0.142318, -0.261466,
		-0.282734, -0.708363, 0.646749,
		35.348019, 33.644550, 34.607903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980904, 34.420006, 34.533493>,  <35.545933, 34.140404, 34.155182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980904, 34.420006, 34.533493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131451, 34.135311, 34.770741>,  <35.221779, 33.964497, 34.913090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131451, 34.135311, 34.770741>,  <34.980904, 34.420006, 34.533493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131451, 34.135311, 34.770741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041943, 0.652622, 0.756522,
		-0.925522, -0.259851, 0.275476,
		0.376364, -0.711732, 0.593117,
		35.244362, 33.921791, 34.948677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673214, 34.435024, 35.269783>,  <34.980904, 34.420006, 34.533493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673214, 34.435024, 35.269783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993069, 34.203350, 35.333179>,  <35.184982, 34.064346, 35.371216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993069, 34.203350, 35.333179>,  <34.673214, 34.435024, 35.269783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993069, 34.203350, 35.333179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078237, 0.362182, 0.928818,
		-0.595364, -0.730318, 0.334928,
		0.799637, -0.579189, 0.158492,
		35.232960, 34.029594, 35.380726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467892, 35.014465, 34.827686>,  <34.673214, 34.435024, 35.269783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467892, 35.014465, 34.827686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638546, 35.372112, 34.773228>,  <34.740940, 35.586700, 34.740551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638546, 35.372112, 34.773228>,  <34.467892, 35.014465, 34.827686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638546, 35.372112, 34.773228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768384, 0.278930, -0.576007,
		-0.477041, 0.350360, 0.806027,
		0.426634, 0.894118, -0.136150,
		34.766537, 35.640347, 34.732384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925983, 35.437946, 34.877396>,  <34.467892, 35.014465, 34.827686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925983, 35.437946, 34.877396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233452, 35.578922, 34.663879>,  <34.417934, 35.663509, 34.535770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233452, 35.578922, 34.663879>,  <33.925983, 35.437946, 34.877396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233452, 35.578922, 34.663879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619903, 0.204738, -0.757497,
		-0.157685, 0.913164, 0.375855,
		0.768671, 0.352440, -0.533789,
		34.464054, 35.684654, 34.503742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561844, 35.948082, 34.542419>,  <33.925983, 35.437946, 34.877396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561844, 35.948082, 34.542419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896358, 35.891258, 34.330593>,  <34.097069, 35.857166, 34.203499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896358, 35.891258, 34.330593>,  <33.561844, 35.948082, 34.542419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896358, 35.891258, 34.330593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507355, 0.165688, -0.845659,
		0.207875, 0.975893, 0.066490,
		0.836289, -0.142058, -0.529566,
		34.147243, 35.848640, 34.171722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646606, 36.547047, 34.130970>,  <33.561844, 35.948082, 34.542419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646606, 36.547047, 34.130970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846348, 36.240910, 33.968544>,  <33.966194, 36.057228, 33.871090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846348, 36.240910, 33.968544>,  <33.646606, 36.547047, 34.130970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846348, 36.240910, 33.968544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475875, 0.149366, -0.866737,
		0.724007, 0.626046, -0.289622,
		0.499357, -0.765347, -0.406062,
		33.996155, 36.011307, 33.846725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824986, 36.775120, 33.448273>,  <33.646606, 36.547047, 34.130970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824986, 36.775120, 33.448273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844147, 36.377094, 33.413502>,  <33.855644, 36.138279, 33.392639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844147, 36.377094, 33.413502>,  <33.824986, 36.775120, 33.448273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844147, 36.377094, 33.413502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489029, 0.052515, -0.870685,
		0.870951, 0.084218, -0.484099,
		0.047905, -0.995063, -0.086923,
		33.858517, 36.078575, 33.387424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103294, 36.633202, 32.721931>,  <33.824986, 36.775120, 33.448273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103294, 36.633202, 32.721931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939354, 36.282997, 32.824306>,  <33.840988, 36.072876, 32.885731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939354, 36.282997, 32.824306>,  <34.103294, 36.633202, 32.721931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939354, 36.282997, 32.824306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211853, -0.181544, -0.960292,
		0.887209, -0.447797, -0.111074,
		-0.409851, -0.875511, 0.255935,
		33.816399, 36.020344, 32.901089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273674, 36.227306, 32.172066>,  <34.103294, 36.633202, 32.721931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273674, 36.227306, 32.172066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967766, 36.038212, 32.347176>,  <33.784222, 35.924755, 32.452240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967766, 36.038212, 32.347176>,  <34.273674, 36.227306, 32.172066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967766, 36.038212, 32.347176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351744, -0.262929, -0.898412,
		0.539814, -0.841065, 0.034799,
		-0.764772, -0.472736, 0.437772,
		33.738335, 35.896393, 32.478508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207119, 35.530655, 31.843285>,  <34.273674, 36.227306, 32.172066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207119, 35.530655, 31.843285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859367, 35.598095, 32.029079>,  <33.650715, 35.638557, 32.140556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859367, 35.598095, 32.029079>,  <34.207119, 35.530655, 31.843285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859367, 35.598095, 32.029079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489009, -0.428646, -0.759693,
		0.071015, -0.887601, 0.455105,
		-0.869383, 0.168600, 0.464485,
		33.598553, 35.648674, 32.168427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913456, 34.844566, 31.875856>,  <34.207119, 35.530655, 31.843285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913456, 34.844566, 31.875856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671883, 35.163010, 31.891247>,  <33.526939, 35.354076, 31.900480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671883, 35.163010, 31.891247>,  <33.913456, 34.844566, 31.875856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671883, 35.163010, 31.891247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392820, -0.255297, -0.883468,
		-0.693514, -0.548666, 0.466909,
		-0.603929, 0.796109, 0.038475,
		33.490704, 35.401844, 31.902790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310665, 34.542839, 31.634470>,  <33.913456, 34.844566, 31.875856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310665, 34.542839, 31.634470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250416, 34.937920, 31.617664>,  <33.214268, 35.174969, 31.607580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250416, 34.937920, 31.617664>,  <33.310665, 34.542839, 31.634470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250416, 34.937920, 31.617664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249487, -0.079101, -0.965142,
		-0.956593, -0.134887, 0.258332,
		-0.150620, 0.987698, -0.042015,
		33.205231, 35.234230, 31.605061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595703, 34.685341, 31.314091>,  <33.310665, 34.542839, 31.634470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595703, 34.685341, 31.314091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823040, 35.007923, 31.248821>,  <32.959442, 35.201473, 31.209660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823040, 35.007923, 31.248821>,  <32.595703, 34.685341, 31.314091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823040, 35.007923, 31.248821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257031, -0.014377, -0.966296,
		-0.781618, 0.591124, 0.199112,
		0.568338, 0.806453, -0.163175,
		32.993542, 35.249859, 31.199869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166317, 35.195877, 30.932837>,  <32.595703, 34.685341, 31.314091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166317, 35.195877, 30.932837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542233, 35.312977, 30.862309>,  <32.767784, 35.383236, 30.819992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542233, 35.312977, 30.862309>,  <32.166317, 35.195877, 30.932837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542233, 35.312977, 30.862309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172518, -0.038978, -0.984235,
		-0.295005, 0.955395, 0.013873,
		0.939792, 0.292748, -0.176322,
		32.824169, 35.400803, 30.809412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113686, 35.566746, 30.358295>,  <32.166317, 35.195877, 30.932837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113686, 35.566746, 30.358295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511093, 35.521301, 30.359526>,  <32.749538, 35.494034, 30.360264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511093, 35.521301, 30.359526>,  <32.113686, 35.566746, 30.358295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511093, 35.521301, 30.359526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011438, 0.073020, -0.997265,
		0.113077, 0.990838, 0.073846,
		0.993520, -0.113612, 0.003077,
		32.809151, 35.487217, 30.360449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548050, 36.187302, 30.012758>,  <32.113686, 35.566746, 30.358295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548050, 36.187302, 30.012758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749302, 35.842407, 29.989403>,  <32.870052, 35.635471, 29.975389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749302, 35.842407, 29.989403>,  <32.548050, 36.187302, 30.012758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749302, 35.842407, 29.989403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005245, 0.064516, -0.997903,
		0.864196, 0.502379, 0.027937,
		0.503127, -0.862237, -0.058389,
		32.900242, 35.583736, 29.971886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895954, 36.304913, 29.475977>,  <32.548050, 36.187302, 30.012758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895954, 36.304913, 29.475977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929676, 35.910488, 29.533358>,  <32.949909, 35.673836, 29.567787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929676, 35.910488, 29.533358>,  <32.895954, 36.304913, 29.475977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929676, 35.910488, 29.533358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029151, -0.141463, -0.989514,
		0.996013, 0.087606, 0.016819,
		0.084308, -0.986059, 0.143453,
		32.954967, 35.614670, 29.576393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539726, 36.184597, 29.302078>,  <32.895954, 36.304913, 29.475977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539726, 36.184597, 29.302078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327850, 35.849911, 29.246449>,  <33.200726, 35.649097, 29.213070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327850, 35.849911, 29.246449>,  <33.539726, 36.184597, 29.302078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327850, 35.849911, 29.246449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163558, 0.060131, -0.984699,
		0.832275, -0.544328, 0.105001,
		-0.529686, -0.836714, -0.139075,
		33.168945, 35.598896, 29.204725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918232, 35.778408, 28.909168>,  <33.539726, 36.184597, 29.302078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918232, 35.778408, 28.909168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552189, 35.627022, 28.853546>,  <33.332561, 35.536190, 28.820173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552189, 35.627022, 28.853546>,  <33.918232, 35.778408, 28.909168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552189, 35.627022, 28.853546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189716, -0.099839, -0.976750,
		0.355787, -0.920214, 0.163165,
		-0.915108, -0.378470, -0.139058,
		33.277657, 35.513481, 28.811829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095913, 35.232353, 28.340631>,  <33.918232, 35.778408, 28.909168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095913, 35.232353, 28.340631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697712, 35.270119, 28.337366>,  <33.458794, 35.292778, 28.335407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697712, 35.270119, 28.337366>,  <34.095913, 35.232353, 28.340631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697712, 35.270119, 28.337366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000390, -0.090245, -0.995920,
		-0.094743, -0.991437, 0.089876,
		-0.995502, 0.094392, -0.008163,
		33.399063, 35.298443, 28.334917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677963, 34.560093, 28.100590>,  <34.095913, 35.232353, 28.340631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677963, 34.560093, 28.100590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411224, 34.841068, 28.001078>,  <33.251179, 35.009655, 27.941370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411224, 34.841068, 28.001078>,  <33.677963, 34.560093, 28.100590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411224, 34.841068, 28.001078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004342, -0.337503, -0.941314,
		-0.745180, -0.626635, 0.228114,
		-0.666849, 0.702439, -0.248780,
		33.211170, 35.051800, 27.926443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173542, 34.191189, 27.726475>,  <33.677963, 34.560093, 28.100590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173542, 34.191189, 27.726475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141041, 34.581078, 27.643225>,  <33.121540, 34.815010, 27.593275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141041, 34.581078, 27.643225>,  <33.173542, 34.191189, 27.726475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141041, 34.581078, 27.643225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045789, -0.212244, -0.976143,
		-0.995641, -0.069786, 0.061878,
		-0.081255, 0.974721, -0.208124,
		33.116665, 34.873493, 27.580788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672062, 34.222183, 27.236031>,  <33.173542, 34.191189, 27.726475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672062, 34.222183, 27.236031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848629, 34.579960, 27.207422>,  <32.954571, 34.794628, 27.190256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848629, 34.579960, 27.207422>,  <32.672062, 34.222183, 27.236031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848629, 34.579960, 27.207422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207555, 0.024234, -0.977923,
		-0.872965, 0.446520, 0.196344,
		0.441420, 0.894445, -0.071522,
		32.981056, 34.848293, 27.185965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197926, 34.582199, 26.887577>,  <32.672062, 34.222183, 27.236031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197926, 34.582199, 26.887577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547447, 34.770351, 26.838255>,  <32.757160, 34.883244, 26.808662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547447, 34.770351, 26.838255>,  <32.197926, 34.582199, 26.887577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547447, 34.770351, 26.838255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108594, -0.058406, -0.992369,
		-0.473991, 0.880530, 0.000044,
		0.873808, 0.470379, -0.123304,
		32.809589, 34.911465, 26.801264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070644, 34.976292, 26.333317>,  <32.197926, 34.582199, 26.887577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070644, 34.976292, 26.333317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468067, 34.932331, 26.344362>,  <32.706520, 34.905956, 26.350988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468067, 34.932331, 26.344362>,  <32.070644, 34.976292, 26.333317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468067, 34.932331, 26.344362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029135, 0.012279, -0.999500,
		0.109508, 0.993867, 0.015401,
		0.993559, -0.109902, 0.027611,
		32.766136, 34.899361, 26.352646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417240, 35.536251, 25.908457>,  <32.070644, 34.976292, 26.333317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417240, 35.536251, 25.908457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667114, 35.224865, 25.933006>,  <32.817039, 35.038033, 25.947737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667114, 35.224865, 25.933006>,  <32.417240, 35.536251, 25.908457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667114, 35.224865, 25.933006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085995, -0.009538, -0.996250,
		0.776130, 0.627617, 0.060986,
		0.624682, -0.778464, 0.061375,
		32.854519, 34.991325, 25.951418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956306, 35.719685, 25.629105>,  <32.417240, 35.536251, 25.908457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956306, 35.719685, 25.629105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053711, 35.335403, 25.575817>,  <33.112156, 35.104836, 25.543844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053711, 35.335403, 25.575817>,  <32.956306, 35.719685, 25.629105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053711, 35.335403, 25.575817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010872, 0.134641, -0.990835,
		0.969836, 0.242732, 0.022342,
		0.243515, -0.960705, -0.133219,
		33.126766, 35.047192, 25.535852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436085, 35.730610, 25.176807>,  <32.956306, 35.719685, 25.629105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436085, 35.730610, 25.176807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.298431, 35.356098, 25.148638>,  <33.215839, 35.131393, 25.131737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.298431, 35.356098, 25.148638>,  <33.436085, 35.730610, 25.176807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298431, 35.356098, 25.148638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172119, 0.010825, -0.985017,
		0.923010, -0.351097, 0.157426,
		-0.344133, -0.936276, -0.070422,
		33.195190, 35.075214, 25.127512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856079, 35.378403, 24.607513>,  <33.436085, 35.730610, 25.176807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856079, 35.378403, 24.607513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542686, 35.138115, 24.671127>,  <33.354652, 34.993942, 24.709295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542686, 35.138115, 24.671127>,  <33.856079, 35.378403, 24.607513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542686, 35.138115, 24.671127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153110, -0.061418, -0.986299,
		0.602259, -0.797095, -0.043856,
		-0.783480, -0.600722, 0.159033,
		33.307644, 34.957897, 24.718838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414124, 34.837898, 24.756826>,  <33.856079, 35.378403, 24.607513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414124, 34.837898, 24.756826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756435, 35.015961, 24.651392>,  <34.961823, 35.122799, 24.588131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756435, 35.015961, 24.651392>,  <34.414124, 34.837898, 24.756826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756435, 35.015961, 24.651392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129091, 0.309642, 0.942050,
		0.500974, -0.840215, 0.207520,
		0.855781, 0.445153, -0.263586,
		35.013168, 35.149506, 24.572315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973244, 34.689342, 25.405352>,  <34.414124, 34.837898, 24.756826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973244, 34.689342, 25.405352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078327, 35.000198, 25.176601>,  <35.141376, 35.186710, 25.039352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078327, 35.000198, 25.176601>,  <34.973244, 34.689342, 25.405352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078327, 35.000198, 25.176601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217226, 0.529840, 0.819806,
		0.940106, -0.339593, -0.029623,
		0.262705, 0.777140, -0.571874,
		35.157139, 35.233341, 25.005039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440865, 34.988152, 25.808174>,  <34.973244, 34.689342, 25.405352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440865, 34.988152, 25.808174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370651, 35.284462, 25.548809>,  <35.328522, 35.462246, 25.393190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370651, 35.284462, 25.548809>,  <35.440865, 34.988152, 25.808174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370651, 35.284462, 25.548809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412295, 0.653414, 0.634872,
		0.893980, -0.155895, -0.420115,
		-0.175536, 0.740774, -0.648414,
		35.317989, 35.506695, 25.354284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185722, 35.333546, 25.649343>,  <35.440865, 34.988152, 25.808174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185722, 35.333546, 25.649343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868694, 35.564697, 25.571480>,  <35.678478, 35.703388, 25.524761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868694, 35.564697, 25.571480>,  <36.185722, 35.333546, 25.649343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868694, 35.564697, 25.571480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269077, 0.617902, 0.738779,
		0.547203, 0.533155, -0.645224,
		-0.792569, 0.577877, -0.194658,
		35.630924, 35.738060, 25.513083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510086, 35.960453, 25.545132>,  <36.185722, 35.333546, 25.649343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510086, 35.960453, 25.545132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130959, 36.045673, 25.639994>,  <35.903481, 36.096806, 25.696911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130959, 36.045673, 25.639994>,  <36.510086, 35.960453, 25.545132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130959, 36.045673, 25.639994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318361, 0.671550, 0.669079,
		-0.016712, 0.709669, -0.704337,
		-0.947822, 0.213052, 0.237154,
		35.846611, 36.109589, 25.711140>
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
