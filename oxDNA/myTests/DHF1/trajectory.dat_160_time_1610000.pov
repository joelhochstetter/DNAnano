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
	<2.798053, 2.431770, 4.599175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.735390, 2.322197, 4.978737>,  <2.697792, 2.256453, 5.206474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.735390, 2.322197, 4.978737>,  <2.798053, 2.431770, 4.599175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.735390, 2.322197, 4.978737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639010, -0.704465, -0.308862,
		0.753077, -0.654745, -0.064685,
		-0.156657, -0.273932, 0.948904,
		2.688392, 2.240017, 5.263408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.912208, 1.821956, 4.653528>,  <2.798053, 2.431770, 4.599175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.912208, 1.821956, 4.653528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.650146, 1.922615, 4.938469>,  <2.492909, 1.983010, 5.109434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.650146, 1.922615, 4.938469>,  <2.912208, 1.821956, 4.653528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.650146, 1.922615, 4.938469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595195, -0.752655, -0.281520,
		0.465312, -0.608428, 0.642884,
		-0.655155, 0.251647, 0.712353,
		2.453600, 1.998109, 5.152175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.813530, 1.143008, 4.970755>,  <2.912208, 1.821956, 4.653528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.813530, 1.143008, 4.970755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.507057, 1.397202, 5.008965>,  <2.323174, 1.549718, 5.031890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.507057, 1.397202, 5.008965>,  <2.813530, 1.143008, 4.970755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.507057, 1.397202, 5.008965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642476, -0.760678, -0.092702,
		0.013752, -0.132398, 0.991101,
		-0.766182, 0.635484, 0.095524,
		2.277203, 1.587847, 5.037621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.269203, 0.937261, 5.473125>,  <2.813530, 1.143008, 4.970755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.269203, 0.937261, 5.473125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.100449, 1.145454, 5.176178>,  <1.999196, 1.270370, 4.998010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.100449, 1.145454, 5.176178>,  <2.269203, 0.937261, 5.473125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.100449, 1.145454, 5.176178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634159, -0.754584, -0.168657,
		-0.647961, 0.399624, 0.648419,
		-0.421887, 0.520484, -0.742366,
		1.973882, 1.301600, 4.953468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.582375, 0.698578, 5.424088>,  <2.269203, 0.937261, 5.473125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.582375, 0.698578, 5.424088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.573212, 0.939316, 5.104774>,  <1.567714, 1.083758, 4.913186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.573212, 0.939316, 5.104774>,  <1.582375, 0.698578, 5.424088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.573212, 0.939316, 5.104774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746148, -0.541739, -0.387017,
		-0.665386, 0.586773, 0.461475,
		-0.022908, 0.601844, -0.798285,
		1.566339, 1.119869, 4.865289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.854647, 0.852179, 5.282393>,  <1.582375, 0.698578, 5.424088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.854647, 0.852179, 5.282393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.062378, 0.921593, 4.947685>,  <1.187017, 0.963241, 4.746861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.062378, 0.921593, 4.947685>,  <0.854647, 0.852179, 5.282393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.062378, 0.921593, 4.947685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770043, -0.329585, -0.546266,
		-0.370583, 0.928041, -0.037534,
		0.519328, 0.173534, -0.836770,
		1.218176, 0.973653, 4.696654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.432474, 1.279561, 4.790247>,  <0.854647, 0.852179, 5.282393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.432474, 1.279561, 4.790247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.727242, 1.102859, 4.585579>,  <0.904102, 0.996839, 4.462778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.727242, 1.102859, 4.585579>,  <0.432474, 1.279561, 4.790247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.727242, 1.102859, 4.585579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632211, -0.182446, -0.753009,
		0.239292, 0.878389, -0.413729,
		0.736918, -0.441753, -0.511670,
		0.948317, 0.970334, 4.432078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.362085, 1.655517, 4.137144>,  <0.432474, 1.279561, 4.790247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.362085, 1.655517, 4.137144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.530350, 1.296303, 4.085648>,  <0.631308, 1.080774, 4.054749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.530350, 1.296303, 4.085648>,  <0.362085, 1.655517, 4.137144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.530350, 1.296303, 4.085648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691284, -0.225393, -0.686531,
		0.587512, 0.377794, -0.715613,
		0.420661, -0.898037, -0.128741,
		0.656548, 1.026892, 4.047025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.747291, 0.680711, 2.919718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.503887, 0.363312, 2.916206>,  <-0.357845, 0.172872, 2.914099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.503887, 0.363312, 2.916206>,  <-0.747291, 0.680711, 2.919718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.503887, 0.363312, 2.916206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570433, 0.429702, 0.699973,
		-0.551655, -0.430948, 0.714116,
		0.608509, -0.793499, -0.008780,
		-0.321335, 0.125262, 2.913572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.548736, 0.306988, 3.542484>,  <-0.747291, 0.680711, 2.919718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.548736, 0.306988, 3.542484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.204758, 0.261780, 3.343399>,  <0.001629, 0.234655, 3.223948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.204758, 0.261780, 3.343399>,  <-0.548736, 0.306988, 3.542484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.204758, 0.261780, 3.343399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509760, 0.238420, 0.826620,
		0.025238, -0.964563, 0.262642,
		0.859946, -0.113022, -0.497713,
		0.053226, 0.227873, 3.194085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.008621, 0.067503, 4.062578>,  <-0.548736, 0.306988, 3.542484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.008621, 0.067503, 4.062578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.208450, 0.217667, 3.750298>,  <0.328348, 0.307765, 3.562929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.208450, 0.217667, 3.750298>,  <0.008621, 0.067503, 4.062578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.208450, 0.217667, 3.750298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711818, 0.335725, 0.616930,
		0.493703, -0.863919, -0.099504,
		0.499572, 0.375409, -0.780702,
		0.358322, 0.330289, 3.516087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.661064, -0.221081, 3.989163>,  <0.008622, 0.067503, 4.062578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.661064, -0.221081, 3.989163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.657593, 0.147141, 3.832954>,  <0.655510, 0.368073, 3.739229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.657593, 0.147141, 3.832954>,  <0.661064, -0.221081, 3.989163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.657593, 0.147141, 3.832954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708490, 0.281259, 0.647252,
		0.705668, -0.271063, -0.654644,
		-0.008678, 0.920553, -0.390521,
		0.654989, 0.423306, 3.715798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.319805, -0.088558, 3.889563>,  <0.661064, -0.221081, 3.989163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.319805, -0.088558, 3.889563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.133907, 0.265411, 3.877411>,  <1.022369, 0.477793, 3.870120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.133907, 0.265411, 3.877411>,  <1.319805, -0.088558, 3.889563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.133907, 0.265411, 3.877411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706879, 0.391464, 0.589133,
		0.533230, 0.252321, -0.807465,
		-0.464744, 0.884924, -0.030380,
		0.994484, 0.530889, 3.868297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.785172, 0.381128, 3.658849>,  <1.319805, -0.088558, 3.889563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.785172, 0.381128, 3.658849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518505, 0.584152, 3.877182>,  <1.358505, 0.705967, 4.008182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518505, 0.584152, 3.877182>,  <1.785172, 0.381128, 3.658849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.518505, 0.584152, 3.877182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745257, 0.442089, 0.499148,
		0.012041, 0.739553, -0.672991,
		-0.666669, 0.507562, 0.545834,
		1.318505, 0.736421, 4.040932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.956399, 1.097774, 3.593235>,  <1.785172, 0.381128, 3.658849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.956399, 1.097774, 3.593235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.732178, 1.061386, 3.922478>,  <1.597645, 1.039553, 4.120023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.732178, 1.061386, 3.922478>,  <1.956399, 1.097774, 3.593235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.732178, 1.061386, 3.922478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574713, 0.672884, 0.465760,
		-0.596226, 0.734133, -0.324905,
		-0.560553, -0.090971, 0.823107,
		1.564012, 1.034095, 4.169410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.565064, 1.757926, 3.697325>,  <1.956399, 1.097774, 3.593235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.565064, 1.757926, 3.697325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.608192, 1.556488, 4.040199>,  <1.634070, 1.435625, 4.245924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.608192, 1.556488, 4.040199>,  <1.565064, 1.757926, 3.697325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.608192, 1.556488, 4.040199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548681, 0.749151, 0.371110,
		-0.829050, 0.430307, 0.357088,
		0.107821, -0.503596, 0.857185,
		1.640539, 1.405409, 4.297355>
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
