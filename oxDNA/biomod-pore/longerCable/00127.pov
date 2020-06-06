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
	<23.816790, 34.607506, 34.969093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.135967, 34.807335, 35.103977>,  <24.327475, 34.927235, 35.184906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.135967, 34.807335, 35.103977>,  <23.816790, 34.607506, 34.969093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.135967, 34.807335, 35.103977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447845, -0.116996, -0.886424,
		-0.403385, 0.858333, -0.317089,
		0.797945, 0.499576, 0.337205,
		24.375351, 34.957207, 35.205139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440054, 34.933189, 34.589966>,  <23.816790, 34.607506, 34.969093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440054, 34.933189, 34.589966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526834, 34.666882, 34.875534>,  <24.578903, 34.507095, 35.046875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526834, 34.666882, 34.875534>,  <24.440054, 34.933189, 34.589966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526834, 34.666882, 34.875534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921869, 0.380276, 0.074483,
		-0.321075, 0.641982, 0.696254,
		0.216952, -0.665770, 0.713921,
		24.591921, 34.467152, 35.089710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.859837, 35.402519, 34.702084>,  <24.440054, 34.933189, 34.589966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.859837, 35.402519, 34.702084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952896, 35.050110, 34.866844>,  <25.008732, 34.838665, 34.965702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952896, 35.050110, 34.866844>,  <24.859837, 35.402519, 34.702084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952896, 35.050110, 34.866844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972199, 0.222234, -0.073765,
		-0.026550, 0.417615, 0.908236,
		0.232647, -0.881028, 0.411905,
		25.022690, 34.785801, 34.990417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256582, 35.502041, 35.264542>,  <24.859837, 35.402519, 34.702084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256582, 35.502041, 35.264542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344858, 35.127178, 35.156441>,  <25.397823, 34.902260, 35.091579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344858, 35.127178, 35.156441>,  <25.256582, 35.502041, 35.264542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344858, 35.127178, 35.156441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954133, 0.264907, -0.139476,
		0.202302, -0.227073, 0.952634,
		0.220689, -0.937156, -0.270249,
		25.411064, 34.846031, 35.075367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908909, 35.238655, 35.537663>,  <25.256582, 35.502041, 35.264542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908909, 35.238655, 35.537663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859648, 35.044952, 35.191177>,  <25.830091, 34.928730, 34.983284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859648, 35.044952, 35.191177>,  <25.908909, 35.238655, 35.537663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859648, 35.044952, 35.191177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919298, 0.273106, -0.283379,
		0.373797, -0.831210, 0.411541,
		-0.123153, -0.484255, -0.866216,
		25.822702, 34.899677, 34.931313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423569, 34.645805, 35.372677>,  <25.908909, 35.238655, 35.537663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423569, 34.645805, 35.372677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283731, 34.810104, 35.035851>,  <26.199829, 34.908684, 34.833755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283731, 34.810104, 35.035851>,  <26.423569, 34.645805, 35.372677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283731, 34.810104, 35.035851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934725, 0.091671, -0.343344,
		-0.063834, -0.907129, -0.415983,
		-0.349591, 0.410747, -0.842065,
		26.178854, 34.933327, 34.783230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601620, 34.255871, 34.781673>,  <26.423569, 34.645805, 35.372677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601620, 34.255871, 34.781673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550940, 34.631207, 34.653011>,  <26.520531, 34.856407, 34.575813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550940, 34.631207, 34.653011>,  <26.601620, 34.255871, 34.781673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550940, 34.631207, 34.653011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826031, -0.079724, -0.557958,
		-0.549199, -0.336389, -0.764998,
		-0.126702, 0.938342, -0.321652,
		26.512928, 34.912708, 34.556515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641102, 34.334446, 34.025356>,  <26.601620, 34.255871, 34.781673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641102, 34.334446, 34.025356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766594, 34.652370, 34.233143>,  <26.841890, 34.843124, 34.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766594, 34.652370, 34.233143>,  <26.641102, 34.334446, 34.025356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766594, 34.652370, 34.233143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915747, -0.108683, -0.386775,
		-0.250957, 0.597041, -0.761947,
		0.313731, 0.794814, 0.519464,
		26.860714, 34.890816, 34.388981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976427, 34.792145, 33.531044>,  <26.641102, 34.334446, 34.025356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976427, 34.792145, 33.531044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121584, 34.931168, 33.876881>,  <27.208677, 35.014584, 34.084381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121584, 34.931168, 33.876881>,  <26.976427, 34.792145, 33.531044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121584, 34.931168, 33.876881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924310, -0.016612, -0.381282,
		-0.118155, 0.937510, -0.327282,
		0.362893, 0.347560, 0.864587,
		27.230452, 35.035435, 34.136257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454775, 35.143829, 33.226639>,  <26.976427, 34.792145, 33.531044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454775, 35.143829, 33.226639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550907, 35.109112, 33.613361>,  <27.608587, 35.088280, 33.845394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550907, 35.109112, 33.613361>,  <27.454775, 35.143829, 33.226639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550907, 35.109112, 33.613361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888439, -0.381572, -0.255106,
		0.391047, 0.920255, -0.014591,
		0.240330, -0.086795, 0.966803,
		27.623007, 35.083073, 33.903400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088942, 35.462627, 33.292942>,  <27.454775, 35.143829, 33.226639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088942, 35.462627, 33.292942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050125, 35.217373, 33.606541>,  <28.026834, 35.070221, 33.794701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050125, 35.217373, 33.606541>,  <28.088942, 35.462627, 33.292942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050125, 35.217373, 33.606541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821849, -0.493668, -0.284352,
		0.561380, 0.616734, 0.551808,
		-0.097041, -0.613132, 0.783997,
		28.021013, 35.033432, 33.841740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832838, 35.486248, 33.621750>,  <28.088942, 35.462627, 33.292942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832838, 35.486248, 33.621750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619394, 35.158756, 33.706543>,  <28.491327, 34.962261, 33.757420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619394, 35.158756, 33.706543>,  <28.832838, 35.486248, 33.621750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619394, 35.158756, 33.706543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803690, -0.568942, -0.174318,
		0.263326, 0.077350, 0.961601,
		-0.533611, -0.818732, 0.211983,
		28.459311, 34.913136, 33.770138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183905, 35.188919, 34.214573>,  <28.832838, 35.486248, 33.621750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183905, 35.188919, 34.214573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985083, 34.944344, 33.968292>,  <28.865789, 34.797600, 33.820526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985083, 34.944344, 33.968292>,  <29.183905, 35.188919, 34.214573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985083, 34.944344, 33.968292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828739, -0.544797, -0.128016,
		-0.257156, -0.573883, 0.777515,
		-0.497054, -0.611436, -0.615697,
		28.835966, 34.760914, 33.783585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051216, 34.422600, 34.352951>,  <29.183905, 35.188919, 34.214573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051216, 34.422600, 34.352951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037207, 34.403778, 33.953640>,  <29.028801, 34.392483, 33.714054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037207, 34.403778, 33.953640>,  <29.051216, 34.422600, 34.352951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037207, 34.403778, 33.953640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608069, -0.793721, 0.016081,
		-0.793111, -0.606459, 0.056414,
		-0.035024, -0.047058, -0.998278,
		29.026699, 34.389660, 33.654156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759033, 33.858532, 34.654877>,  <29.051216, 34.422600, 34.352951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759033, 33.858532, 34.654877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456684, 33.775154, 34.903137>,  <28.275274, 33.725128, 35.052094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456684, 33.775154, 34.903137>,  <28.759033, 33.858532, 34.654877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456684, 33.775154, 34.903137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188152, -0.977135, -0.099022,
		0.627102, 0.041929, 0.777808,
		-0.755871, -0.208443, 0.620653,
		28.229923, 33.712620, 35.089333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183935, 33.877647, 34.193306>,  <28.759033, 33.858532, 34.654877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183935, 33.877647, 34.193306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323418, 34.248848, 34.140823>,  <28.407106, 34.471569, 34.109333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323418, 34.248848, 34.140823>,  <28.183935, 33.877647, 34.193306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323418, 34.248848, 34.140823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763561, 0.362474, 0.534403,
		0.543488, -0.086163, 0.834983,
		0.348706, 0.928002, -0.131210,
		28.428030, 34.527248, 34.101460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026329, 34.179596, 34.806019>,  <28.183935, 33.877647, 34.193306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026329, 34.179596, 34.806019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038399, 34.453236, 34.514515>,  <28.045641, 34.617420, 34.339611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038399, 34.453236, 34.514515>,  <28.026329, 34.179596, 34.806019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038399, 34.453236, 34.514515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656983, 0.563052, 0.501343,
		0.753301, 0.463658, 0.466432,
		0.030174, 0.684100, -0.728764,
		28.047451, 34.658466, 34.295887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965014, 34.788486, 35.122440>,  <28.026329, 34.179596, 34.806019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965014, 34.788486, 35.122440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866667, 34.901714, 34.751621>,  <27.807659, 34.969650, 34.529129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866667, 34.901714, 34.751621>,  <27.965014, 34.788486, 35.122440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866667, 34.901714, 34.751621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766826, 0.528207, 0.364657,
		0.592898, 0.800543, 0.087198,
		-0.245865, 0.283070, -0.927050,
		27.792908, 34.986637, 34.473507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775721, 35.615364, 35.111206>,  <27.965014, 34.788486, 35.122440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775721, 35.615364, 35.111206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603256, 35.432556, 34.800018>,  <27.499779, 35.322872, 34.613304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603256, 35.432556, 34.800018>,  <27.775721, 35.615364, 35.111206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603256, 35.432556, 34.800018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888735, 0.363930, 0.278757,
		0.155729, 0.811596, -0.563080,
		-0.431160, -0.457019, -0.777968,
		27.473907, 35.295452, 34.566628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337152, 36.099525, 34.704899>,  <27.775721, 35.615364, 35.111206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337152, 36.099525, 34.704899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185440, 35.732609, 34.656372>,  <27.094412, 35.512459, 34.627254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185440, 35.732609, 34.656372>,  <27.337152, 36.099525, 34.704899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185440, 35.732609, 34.656372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892598, 0.328186, 0.309133,
		-0.243749, 0.225540, -0.943249,
		-0.379283, -0.917292, -0.121321,
		27.071655, 35.457420, 34.619976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813784, 36.124363, 34.217159>,  <27.337152, 36.099525, 34.704899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813784, 36.124363, 34.217159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758509, 35.820724, 34.471619>,  <26.725344, 35.638542, 34.624294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758509, 35.820724, 34.471619>,  <26.813784, 36.124363, 34.217159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758509, 35.820724, 34.471619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985309, 0.170452, -0.010638,
		-0.100357, -0.628269, -0.771496,
		-0.138187, -0.759094, 0.636145,
		26.717052, 35.592995, 34.662460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499607, 35.640785, 33.796021>,  <26.813784, 36.124363, 34.217159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499607, 35.640785, 33.796021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378748, 35.525017, 33.432716>,  <26.306232, 35.455555, 33.214733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378748, 35.525017, 33.432716>,  <26.499607, 35.640785, 33.796021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378748, 35.525017, 33.432716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191824, 0.914847, -0.355330,
		0.933761, -0.281589, -0.220902,
		-0.302149, -0.289419, -0.908263,
		26.288103, 35.438190, 33.160236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834585, 36.189796, 33.394245>,  <26.499607, 35.640785, 33.796021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834585, 36.189796, 33.394245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686005, 35.883957, 33.183563>,  <26.596857, 35.700455, 33.057156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686005, 35.883957, 33.183563>,  <26.834585, 36.189796, 33.394245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686005, 35.883957, 33.183563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765787, -0.573063, 0.291839,
		-0.524973, -0.294938, 0.798383,
		-0.371449, -0.764598, -0.526702,
		26.574570, 35.654579, 33.025551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522320, 36.504608, 33.427322>,  <26.834585, 36.189796, 33.394245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522320, 36.504608, 33.427322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792837, 36.599739, 33.706196>,  <27.955149, 36.656818, 33.873520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792837, 36.599739, 33.706196>,  <27.522320, 36.504608, 33.427322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792837, 36.599739, 33.706196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706661, 0.057758, -0.705191,
		-0.207980, 0.969589, -0.129000,
		0.676295, 0.237825, 0.697183,
		27.995726, 36.671085, 33.915352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561493, 37.175278, 33.130806>,  <27.522320, 36.504608, 33.427322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561493, 37.175278, 33.130806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832275, 36.933300, 33.298508>,  <27.994743, 36.788113, 33.399128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832275, 36.933300, 33.298508>,  <27.561493, 37.175278, 33.130806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832275, 36.933300, 33.298508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653465, 0.231865, -0.720571,
		0.338699, 0.761758, 0.552275,
		0.676954, -0.604949, 0.419250,
		28.035362, 36.751816, 33.424282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194363, 37.585281, 33.196621>,  <27.561493, 37.175278, 33.130806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194363, 37.585281, 33.196621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281931, 37.195381, 33.179016>,  <28.334471, 36.961441, 33.168453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281931, 37.195381, 33.179016>,  <28.194363, 37.585281, 33.196621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281931, 37.195381, 33.179016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684420, 0.185548, -0.705083,
		0.695445, 0.124235, 0.707758,
		0.218919, -0.974750, -0.044009,
		28.347607, 36.902958, 33.165813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990282, 37.460033, 33.366577>,  <28.194363, 37.585281, 33.196621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990282, 37.460033, 33.366577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813068, 37.217205, 33.102703>,  <28.706741, 37.071507, 32.944378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813068, 37.217205, 33.102703>,  <28.990282, 37.460033, 33.366577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813068, 37.217205, 33.102703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716019, 0.203194, -0.667854,
		0.539480, -0.768229, 0.344653,
		-0.443033, -0.607072, -0.659685,
		28.680159, 37.035084, 32.904797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094837, 38.271099, 33.450371>,  <28.990282, 37.460033, 33.366577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094837, 38.271099, 33.450371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277252, 38.238235, 33.095905>,  <29.386702, 38.218517, 32.883228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277252, 38.238235, 33.095905>,  <29.094837, 38.271099, 33.450371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277252, 38.238235, 33.095905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215031, 0.976400, 0.020137,
		0.863593, -0.199735, 0.462940,
		0.456036, -0.082156, -0.886161,
		29.414062, 38.213589, 32.830055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573784, 38.797337, 33.484577>,  <29.094837, 38.271099, 33.450371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573784, 38.797337, 33.484577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624022, 38.688313, 33.103016>,  <29.654165, 38.622898, 32.874077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624022, 38.688313, 33.103016>,  <29.573784, 38.797337, 33.484577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624022, 38.688313, 33.103016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304753, 0.925630, -0.224352,
		0.944114, -0.262529, 0.199317,
		0.125595, -0.272556, -0.953907,
		29.661699, 38.606544, 32.816845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277794, 38.842331, 33.258743>,  <29.573784, 38.797337, 33.484577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277794, 38.842331, 33.258743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988503, 38.931755, 32.997372>,  <29.814928, 38.985409, 32.840549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988503, 38.931755, 32.997372>,  <30.277794, 38.842331, 33.258743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988503, 38.931755, 32.997372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308471, 0.951099, -0.016021,
		0.617890, -0.213150, -0.756821,
		-0.723227, 0.223558, -0.653425,
		29.771534, 38.998821, 32.801346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615902, 39.289127, 32.913765>,  <30.277794, 38.842331, 33.258743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615902, 39.289127, 32.913765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218472, 39.323486, 32.884300>,  <29.980013, 39.344101, 32.866623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218472, 39.323486, 32.884300>,  <30.615902, 39.289127, 32.913765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218472, 39.323486, 32.884300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095034, 0.986799, -0.131135,
		0.061422, -0.137293, -0.988624,
		-0.993577, 0.085898, -0.073659,
		29.920399, 39.349255, 32.862202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192509, 39.633461, 32.969151>,  <30.615902, 39.289127, 32.913765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192509, 39.633461, 32.969151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555820, 39.486458, 33.049118>,  <31.773808, 39.398254, 33.097099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555820, 39.486458, 33.049118>,  <31.192509, 39.633461, 32.969151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555820, 39.486458, 33.049118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283401, 0.188954, -0.940202,
		0.307760, 0.910622, 0.275776,
		0.908277, -0.367512, 0.199918,
		31.828304, 39.376205, 33.109093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533209, 39.972435, 32.465477>,  <31.192509, 39.633461, 32.969151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533209, 39.972435, 32.465477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798052, 39.702549, 32.595936>,  <31.956959, 39.540619, 32.674213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798052, 39.702549, 32.595936>,  <31.533209, 39.972435, 32.465477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798052, 39.702549, 32.595936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365355, -0.089365, -0.926569,
		0.654314, 0.732650, 0.187340,
		0.662109, -0.674713, 0.326150,
		31.996685, 39.500134, 32.693783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192280, 40.271957, 32.179859>,  <31.533209, 39.972435, 32.465477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192280, 40.271957, 32.179859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212067, 39.881611, 32.264931>,  <32.223938, 39.647404, 32.315971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212067, 39.881611, 32.264931>,  <32.192280, 40.271957, 32.179859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212067, 39.881611, 32.264931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295201, -0.189138, -0.936527,
		0.954154, 0.109106, 0.278722,
		0.049464, -0.975870, 0.212675,
		32.226906, 39.588848, 32.328732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216282, 40.630489, 31.477226>,  <32.192280, 40.271957, 32.179859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216282, 40.630489, 31.477226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930412, 40.481068, 31.240685>,  <31.758890, 40.391415, 31.098759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930412, 40.481068, 31.240685>,  <32.216282, 40.630489, 31.477226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930412, 40.481068, 31.240685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227784, -0.923657, 0.308175,
		-0.661329, 0.085543, 0.745202,
		-0.714673, -0.373550, -0.591356,
		31.716011, 40.369003, 31.063278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635452, 40.034954, 31.327936>,  <32.216282, 40.630489, 31.477226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635452, 40.034954, 31.327936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753117, 39.669880, 31.214462>,  <32.823715, 39.450836, 31.146378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753117, 39.669880, 31.214462>,  <32.635452, 40.034954, 31.327936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753117, 39.669880, 31.214462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219318, -0.353355, 0.909418,
		-0.930252, -0.205300, -0.304112,
		0.294162, -0.912684, -0.283683,
		32.841366, 39.396076, 31.129358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088909, 39.422554, 31.281227>,  <32.635452, 40.034954, 31.327936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088909, 39.422554, 31.281227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454048, 39.281757, 31.363995>,  <32.673130, 39.197277, 31.413654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454048, 39.281757, 31.363995>,  <32.088909, 39.422554, 31.281227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454048, 39.281757, 31.363995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296129, -0.221836, 0.929030,
		-0.281117, -0.909332, -0.306739,
		0.912842, -0.352000, 0.206918,
		32.727901, 39.176159, 31.426071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038647, 38.775826, 31.546782>,  <32.088909, 39.422554, 31.281227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038647, 38.775826, 31.546782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382729, 38.923420, 31.687576>,  <32.589180, 39.011974, 31.772053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382729, 38.923420, 31.687576>,  <32.038647, 38.775826, 31.546782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382729, 38.923420, 31.687576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332096, -0.118464, 0.935777,
		0.386983, -0.921856, 0.020635,
		0.860206, 0.368983, 0.351988,
		32.640789, 39.034115, 31.793173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189388, 38.360832, 32.107380>,  <32.038647, 38.775826, 31.546782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189388, 38.360832, 32.107380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399384, 38.699322, 32.143791>,  <32.525383, 38.902416, 32.165638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399384, 38.699322, 32.143791>,  <32.189388, 38.360832, 32.107380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399384, 38.699322, 32.143791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285968, 0.074643, 0.955327,
		0.801627, -0.527571, 0.281180,
		0.524991, 0.846225, 0.091033,
		32.556881, 38.953190, 32.171101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499035, 38.330948, 32.676304>,  <32.189388, 38.360832, 32.107380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499035, 38.330948, 32.676304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458965, 38.720428, 32.594463>,  <32.434925, 38.954117, 32.545357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458965, 38.720428, 32.594463>,  <32.499035, 38.330948, 32.676304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458965, 38.720428, 32.594463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264074, 0.172245, 0.948998,
		0.959286, 0.149096, 0.239876,
		-0.100174, 0.973705, -0.204605,
		32.428913, 39.012539, 32.533081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828922, 38.697716, 33.236954>,  <32.499035, 38.330948, 32.676304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828922, 38.697716, 33.236954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574192, 38.945461, 33.053284>,  <32.421356, 39.094109, 32.943081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574192, 38.945461, 33.053284>,  <32.828922, 38.697716, 33.236954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574192, 38.945461, 33.053284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276868, 0.372129, 0.885926,
		0.719584, 0.691310, -0.065499,
		-0.636823, 0.619363, -0.459179,
		32.383144, 39.131271, 32.915531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021397, 39.328606, 33.516422>,  <32.828922, 38.697716, 33.236954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021397, 39.328606, 33.516422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645882, 39.326679, 33.378635>,  <32.420574, 39.325523, 33.295963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645882, 39.326679, 33.378635>,  <33.021397, 39.328606, 33.516422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645882, 39.326679, 33.378635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329412, 0.305254, 0.893481,
		0.100849, 0.952259, -0.288153,
		-0.938785, -0.004815, -0.344470,
		32.364246, 39.325233, 33.275295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941883, 39.974499, 33.019558>,  <33.021397, 39.328606, 33.516422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941883, 39.974499, 33.019558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746727, 39.694027, 32.811588>,  <32.629635, 39.525745, 32.686806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746727, 39.694027, 32.811588>,  <32.941883, 39.974499, 33.019558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746727, 39.694027, 32.811588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581663, 0.182972, -0.792584,
		0.650873, -0.689109, 0.318580,
		-0.487886, -0.701177, -0.519921,
		32.600361, 39.483673, 32.655613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339417, 40.003338, 32.401299>,  <32.941883, 39.974499, 33.019558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339417, 40.003338, 32.401299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098106, 39.687180, 32.358707>,  <32.953320, 39.497486, 32.333153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098106, 39.687180, 32.358707>,  <33.339417, 40.003338, 32.401299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098106, 39.687180, 32.358707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448017, -0.225404, -0.865144,
		0.659805, -0.569622, 0.490091,
		-0.603273, -0.790395, -0.106477,
		32.917126, 39.450062, 32.326763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770435, 39.366367, 32.263248>,  <33.339417, 40.003338, 32.401299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770435, 39.366367, 32.263248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419418, 39.300457, 32.083126>,  <33.208809, 39.260910, 31.975054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419418, 39.300457, 32.083126>,  <33.770435, 39.366367, 32.263248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419418, 39.300457, 32.083126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473896, -0.154853, -0.866858,
		0.073105, -0.974100, 0.213975,
		-0.877541, -0.164773, -0.450301,
		33.156155, 39.251026, 31.948036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971321, 38.924686, 31.675966>,  <33.770435, 39.366367, 32.263248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971321, 38.924686, 31.675966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589344, 39.012783, 31.596380>,  <33.360157, 39.065639, 31.548628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589344, 39.012783, 31.596380>,  <33.971321, 38.924686, 31.675966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589344, 39.012783, 31.596380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208901, 0.022540, -0.977677,
		-0.210840, -0.975185, -0.067533,
		-0.954938, 0.220241, -0.198965,
		33.302864, 39.078854, 31.536690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666332, 38.809547, 32.096424>,  <33.971321, 38.924686, 31.675966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666332, 38.809547, 32.096424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729473, 38.563862, 32.405701>,  <34.767357, 38.416451, 32.591267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729473, 38.563862, 32.405701>,  <34.666332, 38.809547, 32.096424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729473, 38.563862, 32.405701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768866, 0.567777, 0.294066,
		-0.619620, 0.548065, 0.561868,
		0.157848, -0.614210, 0.773194,
		34.776829, 38.379601, 32.637657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455921, 39.021133, 32.744274>,  <34.666332, 38.809547, 32.096424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455921, 39.021133, 32.744274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767872, 38.771091, 32.731380>,  <34.955044, 38.621067, 32.723644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767872, 38.771091, 32.731380>,  <34.455921, 39.021133, 32.744274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767872, 38.771091, 32.731380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601401, 0.734044, 0.315431,
		-0.173515, -0.265383, 0.948401,
		0.779878, -0.625101, -0.032233,
		35.001835, 38.583561, 32.721710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811195, 38.922726, 33.451141>,  <34.455921, 39.021133, 32.744274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811195, 38.922726, 33.451141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054863, 38.873875, 33.137711>,  <35.201065, 38.844566, 32.949650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054863, 38.873875, 33.137711>,  <34.811195, 38.922726, 33.451141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054863, 38.873875, 33.137711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602957, 0.713137, 0.357601,
		0.515129, -0.690305, 0.508057,
		0.609168, -0.122126, -0.783581,
		35.237614, 38.837238, 32.902637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424797, 38.666084, 33.718067>,  <34.811195, 38.922726, 33.451141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424797, 38.666084, 33.718067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478596, 38.879189, 33.383862>,  <35.510876, 39.007050, 33.183338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478596, 38.879189, 33.383862>,  <35.424797, 38.666084, 33.718067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478596, 38.879189, 33.383862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590380, 0.634100, 0.499368,
		0.795841, -0.560430, -0.229250,
		0.134494, 0.532762, -0.835510,
		35.518944, 39.039017, 33.133209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122189, 38.783535, 33.750317>,  <35.424797, 38.666084, 33.718067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122189, 38.783535, 33.750317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981144, 39.076843, 33.517776>,  <35.896515, 39.252831, 33.378250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981144, 39.076843, 33.517776>,  <36.122189, 38.783535, 33.750317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981144, 39.076843, 33.517776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691238, 0.622866, 0.366371,
		0.630756, -0.272667, -0.726498,
		-0.352614, 0.733274, -0.581354,
		35.875359, 39.296825, 33.343369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683277, 39.145699, 33.699570>,  <36.122189, 38.783535, 33.750317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683277, 39.145699, 33.699570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441353, 39.388786, 33.493702>,  <36.296200, 39.534637, 33.370182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441353, 39.388786, 33.493702>,  <36.683277, 39.145699, 33.699570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441353, 39.388786, 33.493702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590213, 0.775939, 0.222638,
		0.534655, -0.169113, -0.827976,
		-0.604808, 0.607717, -0.514672,
		36.259911, 39.571102, 33.339298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082825, 39.610008, 33.173737>,  <36.683277, 39.145699, 33.699570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082825, 39.610008, 33.173737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750843, 39.756107, 33.342388>,  <36.551655, 39.843765, 33.443581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750843, 39.756107, 33.342388>,  <37.082825, 39.610008, 33.173737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750843, 39.756107, 33.342388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529404, 0.753939, 0.388983,
		-0.175809, 0.546051, -0.819097,
		-0.829954, 0.365246, 0.421630,
		36.501858, 39.865681, 33.468876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064587, 40.327457, 33.051884>,  <37.082825, 39.610008, 33.173737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064587, 40.327457, 33.051884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836262, 40.269566, 33.375175>,  <36.699268, 40.234829, 33.569149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836262, 40.269566, 33.375175>,  <37.064587, 40.327457, 33.051884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836262, 40.269566, 33.375175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474449, 0.745235, 0.468532,
		-0.670129, 0.650905, -0.356721,
		-0.570811, -0.144731, 0.808225,
		36.665020, 40.226147, 33.617641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204994, 40.405869, 33.731186>,  <37.064587, 40.327457, 33.051884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204994, 40.405869, 33.731186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436493, 40.640133, 33.504185>,  <37.575390, 40.780693, 33.367985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436493, 40.640133, 33.504185>,  <37.204994, 40.405869, 33.731186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436493, 40.640133, 33.504185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504397, 0.289745, 0.813407,
		0.640812, -0.757000, -0.127717,
		0.578743, 0.585661, -0.567501,
		37.610115, 40.815830, 33.333935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929062, 40.171856, 33.867180>,  <37.204994, 40.405869, 33.731186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929062, 40.171856, 33.867180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246311, 40.232246, 34.103203>,  <38.436661, 40.268478, 34.244816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246311, 40.232246, 34.103203>,  <37.929062, 40.171856, 33.867180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246311, 40.232246, 34.103203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570184, 0.156533, -0.806466,
		-0.214117, 0.976066, 0.038068,
		0.793123, 0.150972, 0.590053,
		38.484249, 40.277538, 34.280220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896980, 40.816250, 34.114567>,  <37.929062, 40.171856, 33.867180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896980, 40.816250, 34.114567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659370, 40.961887, 34.401501>,  <37.516804, 41.049271, 34.573662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659370, 40.961887, 34.401501>,  <37.896980, 40.816250, 34.114567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659370, 40.961887, 34.401501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727730, -0.623255, -0.286291,
		0.342849, -0.692093, 0.635187,
		-0.594023, 0.364090, 0.717339,
		37.481163, 41.071114, 34.616703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516365, 40.373341, 34.416328>,  <37.896980, 40.816250, 34.114567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516365, 40.373341, 34.416328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264545, 40.672535, 34.500412>,  <37.113453, 40.852051, 34.550861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264545, 40.672535, 34.500412>,  <37.516365, 40.373341, 34.416328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264545, 40.672535, 34.500412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759614, -0.535682, -0.368824,
		-0.163269, -0.391872, 0.905417,
		-0.629547, 0.747985, 0.210211,
		37.075680, 40.896931, 34.563477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960991, 39.992210, 34.268005>,  <37.516365, 40.373341, 34.416328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960991, 39.992210, 34.268005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820282, 40.365208, 34.300777>,  <36.735859, 40.589005, 34.320442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820282, 40.365208, 34.300777>,  <36.960991, 39.992210, 34.268005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820282, 40.365208, 34.300777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851099, -0.282165, -0.442733,
		-0.389729, -0.225469, 0.892903,
		-0.351768, 0.932495, 0.081928,
		36.714752, 40.644955, 34.325356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341522, 39.955036, 34.754330>,  <36.960991, 39.992210, 34.268005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341522, 39.955036, 34.754330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369862, 40.237713, 34.472740>,  <36.386864, 40.407318, 34.303787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369862, 40.237713, 34.472740>,  <36.341522, 39.955036, 34.754330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369862, 40.237713, 34.472740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577258, -0.546509, -0.606713,
		-0.813482, 0.449355, 0.369224,
		0.070845, 0.706688, -0.703969,
		36.391117, 40.449718, 34.261551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849876, 40.317192, 34.393036>,  <36.341522, 39.955036, 34.754330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849876, 40.317192, 34.393036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067871, 40.363781, 34.060909>,  <36.198666, 40.391735, 33.861633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067871, 40.363781, 34.060909>,  <35.849876, 40.317192, 34.393036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067871, 40.363781, 34.060909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580362, -0.662318, -0.473830,
		-0.605123, 0.740114, -0.293355,
		0.544983, 0.116474, -0.830318,
		36.231365, 40.398724, 33.811813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368759, 40.264164, 33.938499>,  <35.849876, 40.317192, 34.393036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368759, 40.264164, 33.938499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724812, 40.191742, 33.771225>,  <35.938442, 40.148289, 33.670860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724812, 40.191742, 33.771225>,  <35.368759, 40.264164, 33.938499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724812, 40.191742, 33.771225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415015, -0.701099, -0.579847,
		-0.188207, 0.689696, -0.699212,
		0.890135, -0.181052, -0.418186,
		35.991852, 40.137428, 33.645771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315819, 40.439552, 33.204613>,  <35.368759, 40.264164, 33.938499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315819, 40.439552, 33.204613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601025, 40.170849, 33.284969>,  <35.772148, 40.009628, 33.333183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601025, 40.170849, 33.284969>,  <35.315819, 40.439552, 33.204613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601025, 40.170849, 33.284969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375268, -0.607644, -0.699959,
		0.592275, 0.423689, -0.685345,
		0.713011, -0.671756, 0.200896,
		35.814926, 39.969322, 33.345238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398521, 40.206829, 32.565483>,  <35.315819, 40.439552, 33.204613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398521, 40.206829, 32.565483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532562, 39.940281, 32.831913>,  <35.612988, 39.780354, 32.991772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532562, 39.940281, 32.831913>,  <35.398521, 40.206829, 32.565483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532562, 39.940281, 32.831913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504789, -0.723906, -0.470264,
		0.795545, -0.178638, -0.578962,
		0.335107, -0.666370, 0.666074,
		35.633095, 39.740372, 33.031734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573673, 39.770481, 32.027603>,  <35.398521, 40.206829, 32.565483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573673, 39.770481, 32.027603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552437, 39.576469, 32.376759>,  <35.539696, 39.460064, 32.586250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552437, 39.576469, 32.376759>,  <35.573673, 39.770481, 32.027603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552437, 39.576469, 32.376759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568525, -0.703940, -0.425733,
		0.820951, -0.518859, -0.238379,
		-0.053091, -0.485030, 0.872884,
		35.536510, 39.430962, 32.638622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022331, 39.106991, 32.082138>,  <35.573673, 39.770481, 32.027603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022331, 39.106991, 32.082138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690018, 39.140457, 32.302246>,  <35.490627, 39.160538, 32.434311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690018, 39.140457, 32.302246>,  <36.022331, 39.106991, 32.082138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690018, 39.140457, 32.302246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400889, -0.775774, -0.487302,
		0.386110, -0.625440, 0.678044,
		-0.830787, 0.083669, 0.550266,
		35.440781, 39.165558, 32.467327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898540, 38.538704, 32.415131>,  <36.022331, 39.106991, 32.082138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898540, 38.538704, 32.415131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569221, 38.731049, 32.294502>,  <35.371628, 38.846455, 32.222126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569221, 38.731049, 32.294502>,  <35.898540, 38.538704, 32.415131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569221, 38.731049, 32.294502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229592, -0.768025, -0.597850,
		-0.519098, -0.422973, 0.742719,
		-0.823301, 0.480865, -0.301569,
		35.322231, 38.875309, 32.204033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300381, 38.050053, 32.676220>,  <35.898540, 38.538704, 32.415131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300381, 38.050053, 32.676220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289082, 38.273159, 32.344414>,  <35.282303, 38.407024, 32.145329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289082, 38.273159, 32.344414>,  <35.300381, 38.050053, 32.676220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289082, 38.273159, 32.344414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196105, -0.816812, -0.542550,
		-0.980176, 0.147344, 0.132457,
		-0.028251, 0.557770, -0.829514,
		35.280605, 38.440491, 32.095558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679287, 37.784916, 32.321201>,  <35.300381, 38.050053, 32.676220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679287, 37.784916, 32.321201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905338, 37.989330, 32.062134>,  <35.040970, 38.111980, 31.906693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905338, 37.989330, 32.062134>,  <34.679287, 37.784916, 32.321201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905338, 37.989330, 32.062134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051376, -0.761724, -0.645862,
		-0.823405, 0.398267, -0.404213,
		0.565124, 0.511038, -0.647668,
		35.074875, 38.142643, 31.867834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224293, 37.905750, 31.725903>,  <34.679287, 37.784916, 32.321201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224293, 37.905750, 31.725903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613365, 37.917946, 31.633841>,  <34.846809, 37.925262, 31.578604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613365, 37.917946, 31.633841>,  <34.224293, 37.905750, 31.725903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613365, 37.917946, 31.633841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151035, -0.669782, -0.727035,
		-0.176319, 0.741931, -0.646876,
		0.972677, 0.030489, -0.230153,
		34.905167, 37.927094, 31.564795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273365, 37.941475, 30.974783>,  <34.224293, 37.905750, 31.725903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273365, 37.941475, 30.974783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623886, 37.799706, 31.105312>,  <34.834198, 37.714645, 31.183630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623886, 37.799706, 31.105312>,  <34.273365, 37.941475, 30.974783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623886, 37.799706, 31.105312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035165, -0.628484, -0.777027,
		0.480482, 0.692384, -0.538277,
		0.876299, -0.354419, 0.326323,
		34.886776, 37.693378, 31.203209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610085, 37.747295, 30.362978>,  <34.273365, 37.941475, 30.974783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610085, 37.747295, 30.362978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822376, 37.554546, 30.641869>,  <34.949753, 37.438896, 30.809202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822376, 37.554546, 30.641869>,  <34.610085, 37.747295, 30.362978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822376, 37.554546, 30.641869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153924, -0.754165, -0.638391,
		0.833448, 0.446132, -0.326085,
		0.530728, -0.481873, 0.697227,
		34.981594, 37.409985, 30.851036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174175, 37.519482, 30.046602>,  <34.610085, 37.747295, 30.362978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174175, 37.519482, 30.046602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155392, 37.300259, 30.380651>,  <35.144123, 37.168724, 30.581081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155392, 37.300259, 30.380651>,  <35.174175, 37.519482, 30.046602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155392, 37.300259, 30.380651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306753, -0.803559, -0.510094,
		0.950630, 0.232224, 0.205850,
		-0.046957, -0.548056, 0.835122,
		35.141304, 37.135841, 30.631187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779003, 37.242336, 30.024044>,  <35.174175, 37.519482, 30.046602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779003, 37.242336, 30.024044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563263, 37.009544, 30.267485>,  <35.433819, 36.869869, 30.413549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563263, 37.009544, 30.267485>,  <35.779003, 37.242336, 30.024044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563263, 37.009544, 30.267485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208988, -0.792637, -0.572757,
		0.815734, -0.181728, 0.549138,
		-0.539353, -0.581981, 0.608602,
		35.401459, 36.834949, 30.450066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167820, 36.710209, 30.139057>,  <35.779003, 37.242336, 30.024044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167820, 36.710209, 30.139057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810478, 36.568932, 30.250174>,  <35.596073, 36.484165, 30.316843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810478, 36.568932, 30.250174>,  <36.167820, 36.710209, 30.139057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810478, 36.568932, 30.250174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154006, -0.821427, -0.549126,
		0.422136, -0.447783, 0.788220,
		-0.893355, -0.353197, 0.277793,
		35.542473, 36.462971, 30.333511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317135, 35.975624, 30.276049>,  <36.167820, 36.710209, 30.139057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317135, 35.975624, 30.276049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926476, 35.983944, 30.190508>,  <35.692081, 35.988937, 30.139183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926476, 35.983944, 30.190508>,  <36.317135, 35.975624, 30.276049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926476, 35.983944, 30.190508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102287, -0.830270, -0.547895,
		-0.188951, -0.556973, 0.808752,
		-0.976645, 0.020801, -0.213852,
		35.633484, 35.990185, 30.126352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110950, 35.277561, 30.360676>,  <36.317135, 35.975624, 30.276049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110950, 35.277561, 30.360676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792084, 35.440521, 30.182442>,  <35.600765, 35.538300, 30.075500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792084, 35.440521, 30.182442>,  <36.110950, 35.277561, 30.360676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792084, 35.440521, 30.182442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066278, -0.792610, -0.606116,
		-0.600111, -0.453642, 0.658844,
		-0.797166, 0.407404, -0.445588,
		35.552933, 35.562744, 30.048765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531963, 34.764786, 30.296816>,  <36.110950, 35.277561, 30.360676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531963, 34.764786, 30.296816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447060, 35.058632, 30.039045>,  <35.396118, 35.234940, 29.884384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447060, 35.058632, 30.039045>,  <35.531963, 34.764786, 30.296816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447060, 35.058632, 30.039045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046633, -0.666314, -0.744212,
		-0.976100, -0.127913, 0.175688,
		-0.212258, 0.734618, -0.644425,
		35.383381, 35.279018, 29.845718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047050, 34.526554, 29.895973>,  <35.531963, 34.764786, 30.296816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047050, 34.526554, 29.895973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193230, 34.812653, 29.657690>,  <35.280937, 34.984314, 29.514721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193230, 34.812653, 29.657690>,  <35.047050, 34.526554, 29.895973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193230, 34.812653, 29.657690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140898, -0.590094, -0.794945,
		-0.920105, 0.374447, -0.114873,
		0.365450, 0.715248, -0.595707,
		35.302864, 35.027225, 29.478977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669449, 34.585331, 29.296534>,  <35.047050, 34.526554, 29.895973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669449, 34.585331, 29.296534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019039, 34.745552, 29.186460>,  <35.228794, 34.841682, 29.120417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019039, 34.745552, 29.186460>,  <34.669449, 34.585331, 29.296534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019039, 34.745552, 29.186460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022943, -0.599634, -0.799946,
		-0.485425, 0.692821, -0.533256,
		0.873977, 0.400548, -0.275182,
		35.281231, 34.865715, 29.103907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547462, 34.742798, 28.641685>,  <34.669449, 34.585331, 29.296534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547462, 34.742798, 28.641685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946442, 34.743736, 28.670233>,  <35.185829, 34.744297, 28.687361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946442, 34.743736, 28.670233>,  <34.547462, 34.742798, 28.641685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946442, 34.743736, 28.670233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065564, -0.425931, -0.902377,
		0.028284, 0.904752, -0.424998,
		0.997447, 0.002342, 0.071367,
		35.245674, 34.744438, 28.691643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831684, 34.977154, 28.078218>,  <34.547462, 34.742798, 28.641685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831684, 34.977154, 28.078218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146614, 34.775364, 28.219990>,  <35.335571, 34.654289, 28.305052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146614, 34.775364, 28.219990>,  <34.831684, 34.977154, 28.078218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146614, 34.775364, 28.219990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094917, -0.468836, -0.878170,
		0.609187, 0.725047, -0.321243,
		0.787326, -0.504479, 0.354428,
		35.382812, 34.624020, 28.326319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272694, 34.957287, 27.541508>,  <34.831684, 34.977154, 28.078218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272694, 34.957287, 27.541508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383553, 34.658951, 27.783804>,  <35.450069, 34.479950, 27.929180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383553, 34.658951, 27.783804>,  <35.272694, 34.957287, 27.541508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383553, 34.658951, 27.783804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211068, -0.567775, -0.795664,
		0.937358, 0.348368, 0.000065,
		0.277147, -0.745836, 0.605738,
		35.466698, 34.435200, 27.965525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924633, 34.625042, 27.266148>,  <35.272694, 34.957287, 27.541508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924633, 34.625042, 27.266148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759407, 34.348145, 27.502850>,  <35.660271, 34.182007, 27.644871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759407, 34.348145, 27.502850>,  <35.924633, 34.625042, 27.266148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759407, 34.348145, 27.502850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275243, -0.714286, -0.643457,
		0.868112, -0.102914, 0.485583,
		-0.413066, -0.692246, 0.591753,
		35.635487, 34.140472, 27.680376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321651, 34.027027, 27.099468>,  <35.924633, 34.625042, 27.266148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321651, 34.027027, 27.099468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972946, 33.911491, 27.257757>,  <35.763721, 33.842171, 27.352730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972946, 33.911491, 27.257757>,  <36.321651, 34.027027, 27.099468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972946, 33.911491, 27.257757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029570, -0.775226, -0.630991,
		0.489032, -0.561777, 0.667273,
		-0.871764, -0.288844, 0.395722,
		35.711418, 33.824837, 27.376474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410957, 33.336788, 27.062498>,  <36.321651, 34.027027, 27.099468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410957, 33.336788, 27.062498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020283, 33.367165, 27.142818>,  <35.785877, 33.385391, 27.191011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020283, 33.367165, 27.142818>,  <36.410957, 33.336788, 27.062498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020283, 33.367165, 27.142818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184043, -0.777755, -0.601020,
		0.110531, -0.623962, 0.773598,
		-0.976684, 0.075944, 0.200802,
		35.727276, 33.389950, 27.203058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185944, 32.629223, 27.419540>,  <36.410957, 33.336788, 27.062498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185944, 32.629223, 27.419540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883759, 32.819706, 27.239542>,  <35.702446, 32.933994, 27.131542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883759, 32.819706, 27.239542>,  <36.185944, 32.629223, 27.419540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883759, 32.819706, 27.239542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214400, -0.828689, -0.517019,
		-0.619115, -0.294112, 0.728145,
		-0.755467, 0.476208, -0.449996,
		35.657120, 32.962570, 27.104544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818970, 32.080635, 27.167286>,  <36.185944, 32.629223, 27.419540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818970, 32.080635, 27.167286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636391, 32.376282, 26.969149>,  <35.526844, 32.553669, 26.850267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636391, 32.376282, 26.969149>,  <35.818970, 32.080635, 27.167286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636391, 32.376282, 26.969149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224300, -0.634327, -0.739810,
		-0.861012, -0.226581, 0.455322,
		-0.456450, 0.739114, -0.495341,
		35.499454, 32.598015, 26.820547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148628, 31.898352, 27.120337>,  <35.818970, 32.080635, 27.167286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148628, 31.898352, 27.120337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213417, 32.160404, 26.825157>,  <35.252289, 32.317635, 26.648048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213417, 32.160404, 26.825157>,  <35.148628, 31.898352, 27.120337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213417, 32.160404, 26.825157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218879, -0.705346, -0.674225,
		-0.962215, 0.270726, 0.029150,
		0.161970, 0.655130, -0.737951,
		35.262009, 32.356941, 26.603771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656265, 31.761070, 26.560516>,  <35.148628, 31.898352, 27.120337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656265, 31.761070, 26.560516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938438, 31.960615, 26.359119>,  <35.107742, 32.080341, 26.238281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938438, 31.960615, 26.359119>,  <34.656265, 31.761070, 26.560516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938438, 31.960615, 26.359119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181192, -0.559835, -0.808551,
		-0.685228, 0.661604, -0.304535,
		0.705430, 0.498863, -0.503492,
		35.150066, 32.110275, 26.208073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373047, 32.028389, 25.893175>,  <34.656265, 31.761070, 26.560516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373047, 32.028389, 25.893175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765388, 31.990374, 25.825191>,  <35.000793, 31.967564, 25.784401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765388, 31.990374, 25.825191>,  <34.373047, 32.028389, 25.893175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765388, 31.990374, 25.825191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191506, -0.312703, -0.930345,
		0.035271, 0.945084, -0.324917,
		0.980857, -0.095038, -0.169960,
		35.059647, 31.961863, 25.774204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405472, 32.089417, 25.184982>,  <34.373047, 32.028389, 25.893175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405472, 32.089417, 25.184982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775005, 31.958033, 25.263624>,  <34.996723, 31.879204, 25.310810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775005, 31.958033, 25.263624>,  <34.405472, 32.089417, 25.184982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775005, 31.958033, 25.263624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052832, -0.399284, -0.915304,
		0.379138, 0.855973, -0.351518,
		0.923831, -0.328455, 0.196607,
		35.052155, 31.859495, 25.322607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909138, 32.230995, 24.660208>,  <34.405472, 32.089417, 25.184982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909138, 32.230995, 24.660208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063656, 31.914457, 24.849756>,  <35.156368, 31.724535, 24.963486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063656, 31.914457, 24.849756>,  <34.909138, 32.230995, 24.660208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063656, 31.914457, 24.849756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076160, -0.484630, -0.871397,
		0.919226, 0.372707, -0.126941,
		0.386295, -0.791343, 0.473870,
		35.179543, 31.677055, 24.991917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461201, 32.020931, 24.238535>,  <34.909138, 32.230995, 24.660208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461201, 32.020931, 24.238535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346500, 31.699648, 24.447393>,  <35.277679, 31.506878, 24.572708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346500, 31.699648, 24.447393>,  <35.461201, 32.020931, 24.238535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346500, 31.699648, 24.447393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164076, -0.578153, -0.799261,
		0.943852, -0.143514, 0.297570,
		-0.286746, -0.803208, 0.522144,
		35.260475, 31.458685, 24.604036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920811, 31.537720, 23.938566>,  <35.461201, 32.020931, 24.238535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920811, 31.537720, 23.938566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648518, 31.327087, 24.142262>,  <35.485142, 31.200708, 24.264479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648518, 31.327087, 24.142262>,  <35.920811, 31.537720, 23.938566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648518, 31.327087, 24.142262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004269, -0.698010, -0.716075,
		0.732523, -0.485279, 0.477404,
		-0.680729, -0.526579, 0.509237,
		35.444298, 31.169113, 24.295033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136295, 30.884869, 23.943840>,  <35.920811, 31.537720, 23.938566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136295, 30.884869, 23.943840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739864, 30.885647, 23.997141>,  <35.502007, 30.886114, 24.029121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739864, 30.885647, 23.997141>,  <36.136295, 30.884869, 23.943840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739864, 30.885647, 23.997141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091969, -0.733604, -0.673326,
		0.096442, -0.679575, 0.727239,
		-0.991080, 0.001946, 0.133250,
		35.442539, 30.886230, 24.037115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069656, 30.220970, 23.976522>,  <36.136295, 30.884869, 23.943840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069656, 30.220970, 23.976522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707458, 30.375053, 23.905306>,  <35.490139, 30.467505, 23.862576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707458, 30.375053, 23.905306>,  <36.069656, 30.220970, 23.976522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707458, 30.375053, 23.905306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187455, -0.739475, -0.646558,
		-0.380718, -0.552078, 0.741798,
		-0.905491, 0.385210, -0.178041,
		35.435810, 30.490616, 23.851892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532013, 29.632366, 24.179859>,  <36.069656, 30.220970, 23.976522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532013, 29.632366, 24.179859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377853, 29.899775, 23.925444>,  <35.285358, 30.060221, 23.772795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377853, 29.899775, 23.925444>,  <35.532013, 29.632366, 24.179859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377853, 29.899775, 23.925444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231308, -0.737271, -0.634766,
		-0.893289, -0.097515, 0.438777,
		-0.385397, 0.668522, -0.636040,
		35.262234, 30.100330, 23.734631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938416, 29.289217, 23.850630>,  <35.532013, 29.632366, 24.179859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938416, 29.289217, 23.850630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015327, 29.593216, 23.602297>,  <35.061474, 29.775616, 23.453297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015327, 29.593216, 23.602297>,  <34.938416, 29.289217, 23.850630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015327, 29.593216, 23.602297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266262, -0.568503, -0.778402,
		-0.944528, 0.314974, 0.093048,
		0.192278, 0.759998, -0.620833,
		35.073009, 29.821215, 23.416046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391075, 29.354427, 23.324146>,  <34.938416, 29.289217, 23.850630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391075, 29.354427, 23.324146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719662, 29.521503, 23.168850>,  <34.916813, 29.621748, 23.075672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719662, 29.521503, 23.168850>,  <34.391075, 29.354427, 23.324146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719662, 29.521503, 23.168850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079863, -0.589840, -0.803561,
		-0.564637, 0.691104, -0.451176,
		0.821466, 0.417689, -0.388239,
		34.966103, 29.646811, 23.052378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286026, 29.292849, 22.624153>,  <34.391075, 29.354427, 23.324146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286026, 29.292849, 22.624153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678623, 29.359850, 22.661295>,  <34.914181, 29.400051, 22.683580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678623, 29.359850, 22.661295>,  <34.286026, 29.292849, 22.624153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678623, 29.359850, 22.661295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175939, -0.597051, -0.782672,
		-0.075662, 0.784520, -0.615470,
		0.981489, 0.167504, 0.092854,
		34.973068, 29.410101, 22.689152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529625, 29.316740, 21.925200>,  <34.286026, 29.292849, 22.624153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529625, 29.316740, 21.925200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863174, 29.290941, 22.144466>,  <35.063305, 29.275461, 22.276028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863174, 29.290941, 22.144466>,  <34.529625, 29.316740, 21.925200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863174, 29.290941, 22.144466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411961, -0.588241, -0.695889,
		0.367338, 0.806110, -0.463950,
		0.833877, -0.064497, 0.548169,
		35.113338, 29.271591, 22.308916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067234, 29.495039, 21.488909>,  <34.529625, 29.316740, 21.925200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067234, 29.495039, 21.488909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230869, 29.277903, 21.782295>,  <35.329052, 29.147621, 21.958326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230869, 29.277903, 21.782295>,  <35.067234, 29.495039, 21.488909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230869, 29.277903, 21.782295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578541, -0.467294, -0.668526,
		0.705646, 0.697826, 0.122891,
		0.409089, -0.542840, 0.733465,
		35.353596, 29.115051, 22.002335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801922, 29.570860, 21.413454>,  <35.067234, 29.495039, 21.488909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801922, 29.570860, 21.413454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722290, 29.234915, 21.615444>,  <35.674511, 29.033348, 21.736639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722290, 29.234915, 21.615444>,  <35.801922, 29.570860, 21.413454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722290, 29.234915, 21.615444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618007, -0.507502, -0.600424,
		0.760549, 0.192549, 0.620072,
		-0.199077, -0.839861, 0.504977,
		35.662567, 28.982956, 21.766937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344349, 29.187550, 21.350744>,  <35.801922, 29.570860, 21.413454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344349, 29.187550, 21.350744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096287, 28.902060, 21.480974>,  <35.947449, 28.730764, 21.559113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096287, 28.902060, 21.480974>,  <36.344349, 29.187550, 21.350744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096287, 28.902060, 21.480974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387846, -0.639704, -0.663592,
		0.681896, -0.285257, 0.673533,
		-0.620156, -0.713727, 0.325575,
		35.910240, 28.687941, 21.578648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699383, 28.635742, 21.499220>,  <36.344349, 29.187550, 21.350744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699383, 28.635742, 21.499220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336658, 28.487471, 21.418926>,  <36.119022, 28.398508, 21.370750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336658, 28.487471, 21.418926>,  <36.699383, 28.635742, 21.499220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336658, 28.487471, 21.418926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379745, -0.511606, -0.770749,
		0.183005, -0.775149, 0.604692,
		-0.906809, -0.370679, -0.200733,
		36.064617, 28.376266, 21.358706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792194, 27.912550, 21.392738>,  <36.699383, 28.635742, 21.499220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792194, 27.912550, 21.392738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438141, 27.985483, 21.221491>,  <36.225708, 28.029243, 21.118742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438141, 27.985483, 21.221491>,  <36.792194, 27.912550, 21.392738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438141, 27.985483, 21.221491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201819, -0.678570, -0.706266,
		-0.419284, -0.711545, 0.563830,
		-0.885138, 0.182334, -0.428117,
		36.172600, 28.040184, 21.093056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634247, 27.271280, 21.251608>,  <36.792194, 27.912550, 21.392738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634247, 27.271280, 21.251608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401886, 27.495052, 21.015102>,  <36.262470, 27.629314, 20.873199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401886, 27.495052, 21.015102>,  <36.634247, 27.271280, 21.251608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401886, 27.495052, 21.015102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180573, -0.619725, -0.763763,
		-0.793693, -0.550437, 0.258980,
		-0.580900, 0.559428, -0.591265,
		36.227615, 27.662880, 20.837723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091236, 26.862244, 20.880934>,  <36.634247, 27.271280, 21.251608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091236, 26.862244, 20.880934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112244, 27.191933, 20.655403>,  <36.124847, 27.389746, 20.520084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112244, 27.191933, 20.655403>,  <36.091236, 26.862244, 20.880934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112244, 27.191933, 20.655403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164467, -0.564034, -0.809207,
		-0.984984, -0.050235, -0.165177,
		0.052515, 0.824222, -0.563826,
		36.127998, 27.439199, 20.486256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736584, 26.712164, 20.225067>,  <36.091236, 26.862244, 20.880934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736584, 26.712164, 20.225067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942169, 27.041824, 20.129890>,  <36.065521, 27.239620, 20.072784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942169, 27.041824, 20.129890>,  <35.736584, 26.712164, 20.225067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942169, 27.041824, 20.129890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140219, -0.354365, -0.924535,
		-0.846276, 0.441811, -0.297692,
		0.513961, 0.824153, -0.237940,
		36.096359, 27.289070, 20.058508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562847, 26.934282, 19.638208>,  <35.736584, 26.712164, 20.225067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562847, 26.934282, 19.638208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931797, 27.087132, 19.660873>,  <36.153168, 27.178841, 19.674473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931797, 27.087132, 19.660873>,  <35.562847, 26.934282, 19.638208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931797, 27.087132, 19.660873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251616, -0.482995, -0.838693,
		-0.293115, 0.787845, -0.541649,
		0.922374, 0.382121, 0.056661,
		36.208508, 27.201767, 19.677872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554779, 27.132660, 18.966789>,  <35.562847, 26.934282, 19.638208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554779, 27.132660, 18.966789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925270, 27.133825, 19.117571>,  <36.147564, 27.134523, 19.208040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925270, 27.133825, 19.117571>,  <35.554779, 27.132660, 18.966789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925270, 27.133825, 19.117571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373359, -0.145055, -0.916276,
		0.052011, 0.989419, -0.135441,
		0.926228, 0.002911, 0.376953,
		36.203140, 27.134699, 19.230658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990822, 27.416126, 18.337904>,  <35.554779, 27.132660, 18.966789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990822, 27.416126, 18.337904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213394, 27.240520, 18.620081>,  <36.346939, 27.135157, 18.789387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213394, 27.240520, 18.620081>,  <35.990822, 27.416126, 18.337904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213394, 27.240520, 18.620081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725218, -0.157747, -0.670205,
		0.405512, 0.884522, 0.230607,
		0.556433, -0.439017, 0.705440,
		36.380325, 27.108816, 18.831713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640224, 27.609121, 18.641193>,  <35.990822, 27.416126, 18.337904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640224, 27.609121, 18.641193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017250, 27.709007, 18.552450>,  <37.243465, 27.768940, 18.499205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017250, 27.709007, 18.552450>,  <36.640224, 27.609121, 18.641193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017250, 27.709007, 18.552450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296759, -0.321119, 0.899343,
		0.153338, -0.913523, -0.376779,
		0.942561, 0.249716, -0.221856,
		37.300018, 27.783922, 18.485893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064766, 27.011572, 18.603401>,  <36.640224, 27.609121, 18.641193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064766, 27.011572, 18.603401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237797, 27.355623, 18.711517>,  <37.341614, 27.562054, 18.776388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237797, 27.355623, 18.711517>,  <37.064766, 27.011572, 18.603401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237797, 27.355623, 18.711517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157222, -0.367163, 0.916773,
		0.887783, -0.354079, -0.294057,
		0.432577, 0.860128, 0.270292,
		37.367569, 27.613661, 18.792604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571430, 27.133305, 17.982470>,  <37.064766, 27.011572, 18.603401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571430, 27.133305, 17.982470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736214, 27.294878, 17.655758>,  <37.835083, 27.391823, 17.459732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736214, 27.294878, 17.655758>,  <37.571430, 27.133305, 17.982470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736214, 27.294878, 17.655758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820684, -0.553974, 0.139967,
		-0.395937, -0.727977, -0.559717,
		0.411961, 0.403933, -0.816778,
		37.859802, 27.416058, 17.410725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250832, 27.127447, 17.794708>,  <37.571430, 27.133305, 17.982470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250832, 27.127447, 17.794708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576332, 27.251177, 17.991535>,  <38.771633, 27.325415, 18.109631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576332, 27.251177, 17.991535>,  <38.250832, 27.127447, 17.794708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576332, 27.251177, 17.991535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221755, 0.617340, -0.754796,
		-0.537250, 0.723333, 0.433766,
		0.813749, 0.309324, 0.492068,
		38.820457, 27.343973, 18.139156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463501, 27.725079, 17.508074>,  <38.250832, 27.127447, 17.794708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463501, 27.725079, 17.508074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801670, 27.663877, 17.712757>,  <39.004574, 27.627157, 17.835567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801670, 27.663877, 17.712757>,  <38.463501, 27.725079, 17.508074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801670, 27.663877, 17.712757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478481, 0.642649, -0.598379,
		-0.237295, 0.750728, 0.616522,
		0.845427, -0.153002, 0.511707,
		39.055298, 27.617977, 17.866268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527184, 28.284967, 17.907463>,  <38.463501, 27.725079, 17.508074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527184, 28.284967, 17.907463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866222, 28.104280, 17.796083>,  <39.069645, 27.995869, 17.729256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866222, 28.104280, 17.796083>,  <38.527184, 28.284967, 17.907463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866222, 28.104280, 17.796083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242076, 0.796112, -0.554622,
		0.472209, 0.402689, 0.784130,
		0.847595, -0.451717, -0.278450,
		39.120502, 27.968765, 17.712549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395523, 28.853909, 18.398069>,  <38.527184, 28.284967, 17.907463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395523, 28.853909, 18.398069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231289, 28.816385, 18.760862>,  <38.132748, 28.793871, 18.978539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231289, 28.816385, 18.760862>,  <38.395523, 28.853909, 18.398069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231289, 28.816385, 18.760862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013767, 0.993942, 0.109037,
		-0.911718, 0.057255, -0.406807,
		-0.410585, -0.093810, 0.906984,
		38.108112, 28.788242, 19.032957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401760, 29.552156, 18.664083>,  <38.395523, 28.853909, 18.398069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401760, 29.552156, 18.664083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196411, 29.368170, 18.953876>,  <38.073200, 29.257778, 19.127752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196411, 29.368170, 18.953876>,  <38.401760, 29.552156, 18.664083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196411, 29.368170, 18.953876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151471, 0.879539, 0.451074,
		-0.844691, 0.121832, -0.521205,
		-0.513375, -0.459966, 0.724484,
		38.042400, 29.230181, 19.171223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787254, 30.039095, 18.723812>,  <38.401760, 29.552156, 18.664083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787254, 30.039095, 18.723812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788948, 29.815928, 19.055765>,  <37.789963, 29.682026, 19.254938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788948, 29.815928, 19.055765>,  <37.787254, 30.039095, 18.723812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788948, 29.815928, 19.055765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227053, 0.807681, 0.544150,
		-0.973873, -0.190729, -0.123260,
		0.004231, -0.557919, 0.829884,
		37.790218, 29.648552, 19.304731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118004, 30.139111, 18.973051>,  <37.787254, 30.039095, 18.723812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118004, 30.139111, 18.973051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344231, 29.999071, 19.271732>,  <37.479969, 29.915049, 19.450941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344231, 29.999071, 19.271732>,  <37.118004, 30.139111, 18.973051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344231, 29.999071, 19.271732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345519, 0.721535, 0.600003,
		-0.748831, -0.597343, 0.287113,
		0.565570, -0.350098, 0.746701,
		37.513901, 29.894041, 19.495743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669472, 30.062618, 19.651531>,  <37.118004, 30.139111, 18.973051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669472, 30.062618, 19.651531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058319, 30.107714, 19.733776>,  <37.291626, 30.134771, 19.783123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058319, 30.107714, 19.733776>,  <36.669472, 30.062618, 19.651531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058319, 30.107714, 19.733776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225532, 0.689593, 0.688184,
		-0.064204, -0.715368, 0.695792,
		0.972118, 0.112739, 0.205613,
		37.349953, 30.141535, 19.795460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696529, 30.245466, 20.371183>,  <36.669472, 30.062618, 19.651531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696529, 30.245466, 20.371183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073845, 30.317675, 20.259741>,  <37.300236, 30.361000, 20.192875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073845, 30.317675, 20.259741>,  <36.696529, 30.245466, 20.371183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073845, 30.317675, 20.259741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080640, 0.689497, 0.719785,
		0.322032, -0.701431, 0.635837,
		0.943288, 0.180520, -0.278604,
		37.356831, 30.371830, 20.176159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140919, 30.170580, 20.981569>,  <36.696529, 30.245466, 20.371183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140919, 30.170580, 20.981569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326206, 30.423681, 20.733358>,  <37.437378, 30.575542, 20.584433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326206, 30.423681, 20.733358>,  <37.140919, 30.170580, 20.981569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326206, 30.423681, 20.733358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026610, 0.709791, 0.703910,
		0.885845, -0.309551, 0.345625,
		0.463217, 0.632752, -0.620527,
		37.465172, 30.613506, 20.547199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715549, 30.368216, 21.346859>,  <37.140919, 30.170580, 20.981569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715549, 30.368216, 21.346859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681644, 30.654657, 21.069729>,  <37.661301, 30.826523, 20.903450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681644, 30.654657, 21.069729>,  <37.715549, 30.368216, 21.346859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681644, 30.654657, 21.069729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227419, 0.690881, 0.686269,
		0.970101, -0.099392, -0.221417,
		-0.084763, 0.716104, -0.692828,
		37.656216, 30.869488, 20.861881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340759, 30.732836, 21.410282>,  <37.715549, 30.368216, 21.346859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340759, 30.732836, 21.410282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065079, 30.981745, 21.261810>,  <37.899670, 31.131090, 21.172728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065079, 30.981745, 21.261810>,  <38.340759, 30.732836, 21.410282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065079, 30.981745, 21.261810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212420, 0.663295, 0.717577,
		0.692733, 0.415709, -0.589328,
		-0.689202, 0.622274, -0.371181,
		37.858318, 31.168427, 21.150455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678146, 31.394606, 21.398399>,  <38.340759, 30.732836, 21.410282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678146, 31.394606, 21.398399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296196, 31.497580, 21.339140>,  <38.067028, 31.559364, 21.303585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296196, 31.497580, 21.339140>,  <38.678146, 31.394606, 21.398399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296196, 31.497580, 21.339140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095245, 0.737833, 0.668229,
		0.281333, 0.623963, -0.729056,
		-0.954872, 0.257433, -0.148148,
		38.009735, 31.574810, 21.294695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727665, 32.100742, 21.473747>,  <38.678146, 31.394606, 21.398399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727665, 32.100742, 21.473747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335407, 32.023209, 21.462658>,  <38.100052, 31.976690, 21.456005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335407, 32.023209, 21.462658>,  <38.727665, 32.100742, 21.473747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335407, 32.023209, 21.462658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147027, 0.635430, 0.758031,
		-0.129313, 0.747434, -0.651629,
		-0.980643, -0.193830, -0.027724,
		38.041214, 31.965059, 21.454340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462227, 32.690926, 21.222420>,  <38.727665, 32.100742, 21.473747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462227, 32.690926, 21.222420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199860, 32.470787, 21.429068>,  <38.042439, 32.338703, 21.553057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199860, 32.470787, 21.429068>,  <38.462227, 32.690926, 21.222420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199860, 32.470787, 21.429068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178161, 0.777951, 0.602537,
		-0.733506, 0.303173, -0.608321,
		-0.655917, -0.550344, 0.516618,
		38.003086, 32.305683, 21.584053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785072, 33.075691, 21.225494>,  <38.462227, 32.690926, 21.222420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785072, 33.075691, 21.225494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821342, 32.815521, 21.527151>,  <37.843105, 32.659420, 21.708145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821342, 32.815521, 21.527151>,  <37.785072, 33.075691, 21.225494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821342, 32.815521, 21.527151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223898, 0.724559, 0.651831,
		-0.970385, -0.227957, -0.079926,
		0.090678, -0.650422, 0.754141,
		37.848545, 32.620396, 21.753393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266678, 33.297226, 21.693794>,  <37.785072, 33.075691, 21.225494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266678, 33.297226, 21.693794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503700, 33.069141, 21.921385>,  <37.645916, 32.932289, 22.057940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503700, 33.069141, 21.921385>,  <37.266678, 33.297226, 21.693794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503700, 33.069141, 21.921385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139901, 0.622755, 0.769808,
		-0.793284, -0.535758, 0.289247,
		0.592561, -0.570211, 0.568974,
		37.681469, 32.898079, 22.092077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923122, 33.261612, 22.323303>,  <37.266678, 33.297226, 21.693794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923122, 33.261612, 22.323303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309208, 33.180717, 22.389584>,  <37.540859, 33.132183, 22.429352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309208, 33.180717, 22.389584>,  <36.923122, 33.261612, 22.323303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309208, 33.180717, 22.389584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022383, 0.567537, 0.823043,
		-0.260487, -0.798125, 0.543271,
		0.965218, -0.202232, 0.165700,
		37.598774, 33.120049, 22.439293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067005, 32.888927, 22.953049>,  <36.923122, 33.261612, 22.323303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067005, 32.888927, 22.953049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418236, 33.064823, 22.877571>,  <37.628975, 33.170361, 22.832285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418236, 33.064823, 22.877571>,  <37.067005, 32.888927, 22.953049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418236, 33.064823, 22.877571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130339, 0.599213, 0.789909,
		0.460427, -0.669006, 0.583470,
		0.878077, 0.439744, -0.188696,
		37.681660, 33.196747, 22.820963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393585, 32.948902, 23.579775>,  <37.067005, 32.888927, 22.953049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393585, 32.948902, 23.579775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568027, 33.232288, 23.357821>,  <37.672691, 33.402321, 23.224648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568027, 33.232288, 23.357821>,  <37.393585, 32.948902, 23.579775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568027, 33.232288, 23.357821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096550, 0.649886, 0.753874,
		0.894702, -0.275193, 0.351820,
		0.436103, 0.708461, -0.554884,
		37.698860, 33.444828, 23.191355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860424, 33.220242, 24.000984>,  <37.393585, 32.948902, 23.579775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860424, 33.220242, 24.000984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802830, 33.511490, 23.732922>,  <37.768272, 33.686237, 23.572084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802830, 33.511490, 23.732922>,  <37.860424, 33.220242, 24.000984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802830, 33.511490, 23.732922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007932, 0.678040, 0.734982,
		0.989547, 0.100515, -0.103406,
		-0.143990, 0.728120, -0.670155,
		37.759632, 33.729927, 23.531876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250309, 33.826599, 24.223700>,  <37.860424, 33.220242, 24.000984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250309, 33.826599, 24.223700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979446, 33.979572, 23.972237>,  <37.816929, 34.071354, 23.821358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979446, 33.979572, 23.972237>,  <38.250309, 33.826599, 24.223700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979446, 33.979572, 23.972237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129062, 0.779369, 0.613129,
		0.724436, 0.496318, -0.478395,
		-0.677153, 0.382430, -0.628658,
		37.776302, 34.094303, 23.783640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511505, 34.525448, 24.214460>,  <38.250309, 33.826599, 24.223700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511505, 34.525448, 24.214460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145470, 34.560474, 24.057007>,  <37.925850, 34.581490, 23.962536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145470, 34.560474, 24.057007>,  <38.511505, 34.525448, 24.214460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145470, 34.560474, 24.057007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164222, 0.810600, 0.562103,
		0.368302, 0.579016, -0.727388,
		-0.915087, 0.087570, -0.393633,
		37.870945, 34.586746, 23.938917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462055, 35.247009, 24.071985>,  <38.511505, 34.525448, 24.214460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462055, 35.247009, 24.071985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087139, 35.107723, 24.065916>,  <37.862190, 35.024151, 24.062275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087139, 35.107723, 24.065916>,  <38.462055, 35.247009, 24.071985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087139, 35.107723, 24.065916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295107, 0.769667, 0.566148,
		-0.185462, 0.535124, -0.824164,
		-0.937292, -0.348216, -0.015175,
		37.805950, 35.003258, 24.061363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972237, 35.800304, 23.887209>,  <38.462055, 35.247009, 24.071985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972237, 35.800304, 23.887209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733459, 35.522491, 24.047853>,  <37.590195, 35.355804, 24.144239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733459, 35.522491, 24.047853>,  <37.972237, 35.800304, 23.887209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733459, 35.522491, 24.047853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583199, 0.719409, 0.377265,
		-0.550943, -0.009013, -0.834494,
		-0.596942, -0.694528, 0.401610,
		37.554379, 35.314133, 24.168337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309677, 35.999832, 23.752581>,  <37.972237, 35.800304, 23.887209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309677, 35.999832, 23.752581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274616, 35.767262, 24.076126>,  <37.253582, 35.627720, 24.270254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274616, 35.767262, 24.076126>,  <37.309677, 35.999832, 23.752581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274616, 35.767262, 24.076126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486613, 0.733508, 0.474526,
		-0.869210, -0.352012, -0.347220,
		-0.087650, -0.581424, 0.808865,
		37.248322, 35.592834, 24.318787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637859, 36.066460, 24.004162>,  <37.309677, 35.999832, 23.752581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637859, 36.066460, 24.004162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821320, 35.936684, 24.335070>,  <36.931396, 35.858818, 24.533615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821320, 35.936684, 24.335070>,  <36.637859, 36.066460, 24.004162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821320, 35.936684, 24.335070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494707, 0.680128, 0.541009,
		-0.738176, -0.657391, 0.151438,
		0.458651, -0.324442, 0.827270,
		36.958916, 35.839352, 24.583250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118263, 35.992897, 24.519051>,  <36.637859, 36.066460, 24.004162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118263, 35.992897, 24.519051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469318, 36.014355, 24.709576>,  <36.679951, 36.027229, 24.823891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469318, 36.014355, 24.709576>,  <36.118263, 35.992897, 24.519051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469318, 36.014355, 24.709576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402872, 0.620962, 0.672384,
		-0.259702, -0.782003, 0.566592,
		0.877639, 0.053645, 0.476312,
		36.732609, 36.030449, 24.852468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014870, 35.937008, 25.217138>,  <36.118263, 35.992897, 24.519051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014870, 35.937008, 25.217138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370815, 36.119408, 25.211409>,  <36.584381, 36.228848, 25.207972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370815, 36.119408, 25.211409>,  <36.014870, 35.937008, 25.217138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370815, 36.119408, 25.211409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261301, 0.535146, 0.803331,
		0.373983, -0.711113, 0.595361,
		0.889864, 0.456000, -0.014321,
		36.637775, 36.256207, 25.207111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233513, 35.941513, 25.798550>,  <36.014870, 35.937008, 25.217138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233513, 35.941513, 25.798550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464329, 36.233528, 25.652084>,  <36.602818, 36.408737, 25.564205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464329, 36.233528, 25.652084>,  <36.233513, 35.941513, 25.798550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464329, 36.233528, 25.652084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277223, 0.596793, 0.752984,
		0.768231, -0.332989, 0.546753,
		0.577034, 0.730038, -0.366163,
		36.637440, 36.452541, 25.542236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785679, 36.273300, 26.355089>,  <36.233513, 35.941513, 25.798550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785679, 36.273300, 26.355089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737862, 36.548538, 26.068810>,  <36.709171, 36.713680, 25.897041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737862, 36.548538, 26.068810>,  <36.785679, 36.273300, 26.355089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737862, 36.548538, 26.068810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125211, 0.704666, 0.698404,
		0.984901, 0.173105, 0.001917,
		-0.119547, 0.688099, -0.715701,
		36.701996, 36.754967, 25.854099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155106, 36.838005, 26.584314>,  <36.785679, 36.273300, 26.355089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155106, 36.838005, 26.584314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901615, 36.986820, 26.313026>,  <36.749523, 37.076111, 26.150253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901615, 36.986820, 26.313026>,  <37.155106, 36.838005, 26.584314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901615, 36.986820, 26.313026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029026, 0.887571, 0.459756,
		0.773014, 0.271672, -0.573274,
		-0.633724, 0.372038, -0.678220,
		36.711498, 37.098431, 26.109560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395290, 37.429337, 26.451876>,  <37.155106, 36.838005, 26.584314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395290, 37.429337, 26.451876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010048, 37.449604, 26.346146>,  <36.778904, 37.461765, 26.282707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010048, 37.449604, 26.346146>,  <37.395290, 37.429337, 26.451876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010048, 37.449604, 26.346146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155584, 0.696581, 0.700406,
		0.219610, 0.715688, -0.662995,
		-0.963102, 0.050665, -0.264325,
		36.721119, 37.464802, 26.266848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228096, 38.109745, 26.613300>,  <37.395290, 37.429337, 26.451876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228096, 38.109745, 26.613300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881893, 37.909489, 26.606909>,  <36.674171, 37.789337, 26.603073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881893, 37.909489, 26.606909>,  <37.228096, 38.109745, 26.613300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881893, 37.909489, 26.606909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307094, 0.505164, 0.806538,
		-0.395711, 0.702973, -0.590967,
		-0.865509, -0.500638, -0.015980,
		36.622242, 37.759296, 26.602116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628544, 38.604950, 26.727301>,  <37.228096, 38.109745, 26.613300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628544, 38.604950, 26.727301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505562, 38.236347, 26.822212>,  <36.431774, 38.015186, 26.879158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505562, 38.236347, 26.822212>,  <36.628544, 38.604950, 26.727301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505562, 38.236347, 26.822212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379099, 0.347331, 0.857697,
		-0.872786, 0.173751, -0.456130,
		-0.307454, -0.921505, 0.237277,
		36.413326, 37.959896, 26.893394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979515, 38.708244, 27.007278>,  <36.628544, 38.604950, 26.727301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979515, 38.708244, 27.007278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080814, 38.339535, 27.124722>,  <36.141594, 38.118309, 27.195187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080814, 38.339535, 27.124722>,  <35.979515, 38.708244, 27.007278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080814, 38.339535, 27.124722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359227, 0.192198, 0.913245,
		-0.898233, -0.336746, -0.282452,
		0.253245, -0.921771, 0.293606,
		36.156788, 38.063004, 27.212803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327332, 38.506134, 27.230022>,  <35.979515, 38.708244, 27.007278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327332, 38.506134, 27.230022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625919, 38.296497, 27.394030>,  <35.805073, 38.170715, 27.492434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625919, 38.296497, 27.394030>,  <35.327332, 38.506134, 27.230022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625919, 38.296497, 27.394030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381362, 0.167997, 0.909032,
		-0.545298, -0.834928, -0.074464,
		0.746467, -0.524091, 0.410019,
		35.849861, 38.139271, 27.517035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996471, 38.167580, 27.783733>,  <35.327332, 38.506134, 27.230022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996471, 38.167580, 27.783733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391342, 38.164516, 27.847509>,  <35.628265, 38.162678, 27.885775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391342, 38.164516, 27.847509>,  <34.996471, 38.167580, 27.783733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391342, 38.164516, 27.847509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156912, 0.136862, 0.978084,
		-0.029310, -0.990561, 0.133906,
		0.987177, -0.007656, 0.159442,
		35.687496, 38.162220, 27.895342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038521, 37.830975, 28.440382>,  <34.996471, 38.167580, 27.783733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038521, 37.830975, 28.440382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383553, 38.022572, 28.375242>,  <35.590572, 38.137527, 28.336159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383553, 38.022572, 28.375242>,  <35.038521, 37.830975, 28.440382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383553, 38.022572, 28.375242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023084, 0.284293, 0.958459,
		0.505389, -0.830510, 0.234169,
		0.862583, 0.478990, -0.162850,
		35.642326, 38.166267, 28.326387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345280, 37.802269, 29.140604>,  <35.038521, 37.830975, 28.440382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345280, 37.802269, 29.140604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533497, 38.083675, 28.927567>,  <35.646427, 38.252518, 28.799744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533497, 38.083675, 28.927567>,  <35.345280, 37.802269, 29.140604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533497, 38.083675, 28.927567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078875, 0.567640, 0.819490,
		0.878843, -0.427616, 0.211611,
		0.470546, 0.703513, -0.532594,
		35.674660, 38.294727, 28.767788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894321, 37.924599, 29.584673>,  <35.345280, 37.802269, 29.140604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894321, 37.924599, 29.584673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848724, 38.233936, 29.335211>,  <35.821365, 38.419540, 29.185534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848724, 38.233936, 29.335211>,  <35.894321, 37.924599, 29.584673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848724, 38.233936, 29.335211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116207, 0.633815, 0.764705,
		0.986662, 0.014698, -0.162118,
		-0.113992, 0.773345, -0.623653,
		35.814526, 38.465939, 29.148115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406414, 38.452599, 29.801670>,  <35.894321, 37.924599, 29.584673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406414, 38.452599, 29.801670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145145, 38.644062, 29.566978>,  <35.988384, 38.758942, 29.426163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145145, 38.644062, 29.566978>,  <36.406414, 38.452599, 29.801670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145145, 38.644062, 29.566978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057607, 0.804026, 0.591797,
		0.755015, 0.352745, -0.552741,
		-0.653172, 0.478658, -0.586731,
		35.949192, 38.787659, 29.390959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705135, 39.091820, 29.622828>,  <36.406414, 38.452599, 29.801670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705135, 39.091820, 29.622828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307735, 39.133617, 29.604773>,  <36.069294, 39.158695, 29.593941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307735, 39.133617, 29.604773>,  <36.705135, 39.091820, 29.622828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307735, 39.133617, 29.604773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052960, 0.775362, 0.629292,
		0.100753, 0.622812, -0.775857,
		-0.993501, 0.104493, -0.045135,
		36.009686, 39.164967, 29.591232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468235, 39.068260, 29.536964>,  <36.705135, 39.091820, 29.622828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468235, 39.068260, 29.536964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773613, 38.966591, 29.774466>,  <37.956841, 38.905590, 29.916965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773613, 38.966591, 29.774466>,  <37.468235, 39.068260, 29.536964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773613, 38.966591, 29.774466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578625, -0.139263, -0.803616,
		0.286948, 0.957079, 0.040753,
		0.763449, -0.254177, 0.593751,
		38.002647, 38.890339, 29.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016899, 39.370346, 29.283691>,  <37.468235, 39.068260, 29.536964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016899, 39.370346, 29.283691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150772, 39.059223, 29.496485>,  <38.231098, 38.872551, 29.624161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150772, 39.059223, 29.496485>,  <38.016899, 39.370346, 29.283691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150772, 39.059223, 29.496485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514937, -0.321840, -0.794518,
		0.789193, 0.539852, 0.292805,
		0.334686, -0.777804, 0.531983,
		38.251179, 38.825882, 29.656080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703560, 39.417820, 29.417713>,  <38.016899, 39.370346, 29.283691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703560, 39.417820, 29.417713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639572, 39.024067, 29.447109>,  <38.601177, 38.787815, 29.464746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639572, 39.024067, 29.447109>,  <38.703560, 39.417820, 29.417713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639572, 39.024067, 29.447109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530265, -0.148492, -0.834727,
		0.832603, -0.094564, 0.545738,
		-0.159973, -0.984382, 0.073491,
		38.591579, 38.728752, 29.469156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304806, 39.192867, 29.111496>,  <38.703560, 39.417820, 29.417713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304806, 39.192867, 29.111496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091797, 38.854420, 29.120487>,  <38.963993, 38.651352, 29.125881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091797, 38.854420, 29.120487>,  <39.304806, 39.192867, 29.111496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091797, 38.854420, 29.120487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529672, -0.353839, -0.770873,
		0.660202, -0.398603, 0.636592,
		-0.532523, -0.846117, 0.022477,
		38.932041, 38.600586, 29.127230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738483, 38.689514, 29.184923>,  <39.304806, 39.192867, 29.111496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738483, 38.689514, 29.184923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418690, 38.514908, 29.019869>,  <39.226814, 38.410145, 28.920835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418690, 38.514908, 29.019869>,  <39.738483, 38.689514, 29.184923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418690, 38.514908, 29.019869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592138, -0.457287, -0.663521,
		0.100946, -0.774816, 0.624076,
		-0.799488, -0.436519, -0.412637,
		39.178844, 38.383953, 28.896078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958004, 38.020313, 29.059738>,  <39.738483, 38.689514, 29.184923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958004, 38.020313, 29.059738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670090, 38.115551, 28.798903>,  <39.497341, 38.172695, 28.642401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670090, 38.115551, 28.798903>,  <39.958004, 38.020313, 29.059738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670090, 38.115551, 28.798903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506400, -0.462426, -0.727820,
		-0.474832, -0.854092, 0.212277,
		-0.719788, 0.238095, -0.652087,
		39.454155, 38.186981, 28.603275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843372, 37.328457, 28.664520>,  <39.958004, 38.020313, 29.059738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843372, 37.328457, 28.664520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658581, 37.586590, 28.421169>,  <39.547707, 37.741470, 28.275158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658581, 37.586590, 28.421169>,  <39.843372, 37.328457, 28.664520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658581, 37.586590, 28.421169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310153, -0.525099, -0.792513,
		-0.830892, -0.554814, 0.042433,
		-0.461978, 0.645332, -0.608377,
		39.519985, 37.780190, 28.238657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641624, 36.903999, 28.113487>,  <39.843372, 37.328457, 28.664520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641624, 36.903999, 28.113487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604961, 37.263634, 27.942261>,  <39.582966, 37.479416, 27.839525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604961, 37.263634, 27.942261>,  <39.641624, 36.903999, 28.113487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604961, 37.263634, 27.942261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285402, -0.388122, -0.876303,
		-0.954015, -0.202486, -0.221029,
		-0.091653, 0.899089, -0.428065,
		39.577465, 37.533360, 27.813841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403282, 36.674892, 27.496754>,  <39.641624, 36.903999, 28.113487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403282, 36.674892, 27.496754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557758, 37.040230, 27.445112>,  <39.650444, 37.259430, 27.414127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557758, 37.040230, 27.445112>,  <39.403282, 36.674892, 27.496754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557758, 37.040230, 27.445112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340000, -0.271053, -0.900516,
		-0.857471, 0.303877, -0.415214,
		0.386191, 0.913339, -0.129102,
		39.673615, 37.314232, 27.406382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196663, 36.919468, 26.877184>,  <39.403282, 36.674892, 27.496754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196663, 36.919468, 26.877184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523773, 37.135311, 26.957249>,  <39.720039, 37.264816, 27.005287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523773, 37.135311, 26.957249>,  <39.196663, 36.919468, 26.877184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523773, 37.135311, 26.957249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383024, -0.250682, -0.889073,
		-0.429574, 0.803730, -0.411685,
		0.817777, 0.539608, 0.200161,
		39.769108, 37.297195, 27.017298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298908, 37.229191, 26.264175>,  <39.196663, 36.919468, 26.877184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298908, 37.229191, 26.264175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647324, 37.273510, 26.455593>,  <39.856373, 37.300102, 26.570444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647324, 37.273510, 26.455593>,  <39.298908, 37.229191, 26.264175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647324, 37.273510, 26.455593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472215, -0.457164, -0.753667,
		0.135266, 0.882453, -0.450532,
		0.871043, 0.110802, 0.478547,
		39.908638, 37.306751, 26.599157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733547, 37.596390, 25.795692>,  <39.298908, 37.229191, 26.264175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733547, 37.596390, 25.795692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905163, 37.358532, 26.067669>,  <40.008133, 37.215816, 26.230854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905163, 37.358532, 26.067669>,  <39.733547, 37.596390, 25.795692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905163, 37.358532, 26.067669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476424, -0.490556, -0.729640,
		0.767426, 0.636987, 0.072834,
		0.429042, -0.594645, 0.679941,
		40.033875, 37.180138, 26.271652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348621, 37.553387, 25.633320>,  <39.733547, 37.596390, 25.795692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348621, 37.553387, 25.633320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347034, 37.234413, 25.874678>,  <40.346081, 37.043030, 26.019493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347034, 37.234413, 25.874678>,  <40.348621, 37.553387, 25.633320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347034, 37.234413, 25.874678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489133, -0.527839, -0.694360,
		0.872200, 0.292385, 0.392145,
		-0.003969, -0.797432, 0.603396,
		40.345844, 36.995182, 26.055696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955494, 37.180412, 25.416573>,  <40.348621, 37.553387, 25.633320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955494, 37.180412, 25.416573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746151, 36.915890, 25.631519>,  <40.620544, 36.757175, 25.760487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746151, 36.915890, 25.631519>,  <40.955494, 37.180412, 25.416573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746151, 36.915890, 25.631519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374696, -0.744993, -0.551895,
		0.765308, -0.087492, 0.637691,
		-0.523362, -0.661310, 0.537366,
		40.589142, 36.717495, 25.792728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417942, 36.703644, 25.600578>,  <40.955494, 37.180412, 25.416573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417942, 36.703644, 25.600578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059116, 36.527111, 25.591528>,  <40.843822, 36.421192, 25.586098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059116, 36.527111, 25.591528>,  <41.417942, 36.703644, 25.600578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059116, 36.527111, 25.591528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414477, -0.822519, -0.389449,
		0.153265, -0.358737, 0.920770,
		-0.897061, -0.441327, -0.022625,
		40.789997, 36.394714, 25.584740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580097, 36.081112, 25.496780>,  <41.417942, 36.703644, 25.600578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580097, 36.081112, 25.496780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186649, 36.034027, 25.442184>,  <40.950581, 36.005775, 25.409428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186649, 36.034027, 25.442184>,  <41.580097, 36.081112, 25.496780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186649, 36.034027, 25.442184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174231, -0.814865, -0.552846,
		-0.046141, -0.567572, 0.822030,
		-0.983623, -0.117714, -0.136487,
		40.891563, 35.998714, 25.401237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370098, 35.359169, 25.749781>,  <41.580097, 36.081112, 25.496780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370098, 35.359169, 25.749781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078518, 35.472641, 25.500572>,  <40.903568, 35.540726, 25.351048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078518, 35.472641, 25.500572>,  <41.370098, 35.359169, 25.749781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078518, 35.472641, 25.500572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016950, -0.902340, -0.430692,
		-0.684358, -0.324513, 0.652952,
		-0.728949, 0.283680, -0.623023,
		40.859833, 35.557743, 25.313665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016361, 34.739231, 25.577496>,  <41.370098, 35.359169, 25.749781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016361, 34.739231, 25.577496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892563, 34.998016, 25.298738>,  <40.818283, 35.153286, 25.131485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892563, 34.998016, 25.298738>,  <41.016361, 34.739231, 25.577496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892563, 34.998016, 25.298738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181292, -0.759577, -0.624641,
		-0.933460, -0.066983, 0.352373,
		-0.309495, 0.646960, -0.696891,
		40.799713, 35.192104, 25.089672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422276, 34.384647, 25.279108>,  <41.016361, 34.739231, 25.577496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422276, 34.384647, 25.279108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507950, 34.654850, 24.996885>,  <40.559357, 34.816971, 24.827553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507950, 34.654850, 24.996885>,  <40.422276, 34.384647, 25.279108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507950, 34.654850, 24.996885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347974, -0.622162, -0.701305,
		-0.912709, 0.395727, 0.101800,
		0.214189, 0.675511, -0.705556,
		40.572205, 34.857502, 24.785219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855038, 34.520668, 24.909130>,  <40.422276, 34.384647, 25.279108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855038, 34.520668, 24.909130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156849, 34.612877, 24.663349>,  <40.337936, 34.668201, 24.515881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156849, 34.612877, 24.663349>,  <39.855038, 34.520668, 24.909130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156849, 34.612877, 24.663349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333808, -0.671306, -0.661755,
		-0.565036, 0.704420, -0.429566,
		0.754524, 0.230523, -0.614453,
		40.383205, 34.682034, 24.479013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635155, 34.543682, 24.171871>,  <39.855038, 34.520668, 24.909130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635155, 34.543682, 24.171871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032543, 34.510715, 24.140312>,  <40.270977, 34.490936, 24.121376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032543, 34.510715, 24.140312>,  <39.635155, 34.543682, 24.171871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032543, 34.510715, 24.140312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114067, -0.702861, -0.702122,
		0.002412, 0.706537, -0.707672,
		0.993470, -0.082415, -0.078897,
		40.330585, 34.485992, 24.116644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930988, 34.465454, 23.363909>,  <39.635155, 34.543682, 24.171871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930988, 34.465454, 23.363909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179131, 34.283871, 23.619747>,  <40.328014, 34.174923, 23.773251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179131, 34.283871, 23.619747>,  <39.930988, 34.465454, 23.363909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179131, 34.283871, 23.619747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020483, -0.824577, -0.565379,
		0.784054, 0.337635, -0.520829,
		0.620355, -0.453956, 0.639597,
		40.365238, 34.147682, 23.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197075, 34.076530, 22.893423>,  <39.930988, 34.465454, 23.363909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197075, 34.076530, 22.893423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302006, 33.910202, 23.241739>,  <40.364964, 33.810406, 23.450729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302006, 33.910202, 23.241739>,  <40.197075, 34.076530, 22.893423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302006, 33.910202, 23.241739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023199, -0.899416, -0.436478,
		0.964700, 0.134701, -0.226294,
		0.262327, -0.415821, 0.870791,
		40.380703, 33.785458, 23.502977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732121, 33.579868, 22.737007>,  <40.197075, 34.076530, 22.893423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732121, 33.579868, 22.737007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580883, 33.466019, 23.089378>,  <40.490139, 33.397709, 23.300800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580883, 33.466019, 23.089378>,  <40.732121, 33.579868, 22.737007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580883, 33.466019, 23.089378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000169, -0.951588, -0.307376,
		0.925766, -0.116069, 0.359840,
		-0.378097, -0.284619, 0.880928,
		40.467453, 33.380634, 23.353657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050476, 32.959465, 22.880962>,  <40.732121, 33.579868, 22.737007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050476, 32.959465, 22.880962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728039, 32.955372, 23.117645>,  <40.534576, 32.952915, 23.259655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728039, 32.955372, 23.117645>,  <41.050476, 32.959465, 22.880962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728039, 32.955372, 23.117645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115577, -0.977874, -0.174370,
		0.580398, -0.208945, 0.787071,
		-0.806089, -0.010237, 0.591705,
		40.486214, 32.952301, 23.295156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164871, 32.341579, 23.179569>,  <41.050476, 32.959465, 22.880962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164871, 32.341579, 23.179569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778004, 32.427868, 23.233318>,  <40.545883, 32.479641, 23.265568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778004, 32.427868, 23.233318>,  <41.164871, 32.341579, 23.179569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778004, 32.427868, 23.233318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234799, -0.960771, -0.147610,
		0.097261, -0.174314, 0.979875,
		-0.967166, 0.215717, 0.134374,
		40.487854, 32.492584, 23.273630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934433, 31.879253, 23.691103>,  <41.164871, 32.341579, 23.179569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934433, 31.879253, 23.691103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619678, 31.986319, 23.468689>,  <40.430828, 32.050556, 23.335241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619678, 31.986319, 23.468689>,  <40.934433, 31.879253, 23.691103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619678, 31.986319, 23.468689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150152, -0.957003, -0.248192,
		-0.598557, -0.111809, 0.793239,
		-0.786882, 0.267664, -0.556033,
		40.383614, 32.066616, 23.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346031, 31.521851, 23.867960>,  <40.934433, 31.879253, 23.691103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346031, 31.521851, 23.867960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230942, 31.617176, 23.496923>,  <40.161888, 31.674372, 23.274302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230942, 31.617176, 23.496923>,  <40.346031, 31.521851, 23.867960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230942, 31.617176, 23.496923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228250, -0.957699, -0.175252,
		-0.930118, 0.161300, 0.329944,
		-0.287719, 0.238315, -0.927590,
		40.144627, 31.688671, 23.218647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728081, 31.061548, 23.751055>,  <40.346031, 31.521851, 23.867960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728081, 31.061548, 23.751055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834663, 31.198151, 23.390526>,  <39.898613, 31.280111, 23.174210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834663, 31.198151, 23.390526>,  <39.728081, 31.061548, 23.751055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834663, 31.198151, 23.390526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257516, -0.875910, -0.408004,
		-0.928810, 0.340817, -0.145445,
		0.266452, 0.341504, -0.901320,
		39.914600, 31.300602, 23.120131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108524, 30.906479, 23.259502>,  <39.728081, 31.061548, 23.751055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108524, 30.906479, 23.259502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437275, 30.928349, 23.032690>,  <39.634525, 30.941471, 22.896603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437275, 30.928349, 23.032690>,  <39.108524, 30.906479, 23.259502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437275, 30.928349, 23.032690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194827, -0.908382, -0.369980,
		-0.535307, 0.414552, -0.735930,
		0.821881, 0.054673, -0.567029,
		39.683838, 30.944750, 22.862581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867264, 30.643696, 22.633860>,  <39.108524, 30.906479, 23.259502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867264, 30.643696, 22.633860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264896, 30.603386, 22.617624>,  <39.503475, 30.579201, 22.607883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264896, 30.603386, 22.617624>,  <38.867264, 30.643696, 22.633860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264896, 30.603386, 22.617624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106692, -0.835105, -0.539645,
		0.020489, 0.540781, -0.840914,
		0.994081, -0.100775, -0.040586,
		39.563122, 30.573153, 22.605448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901318, 30.280298, 22.067533>,  <38.867264, 30.643696, 22.633860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901318, 30.280298, 22.067533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280239, 30.254576, 22.193066>,  <39.507591, 30.239143, 22.268385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280239, 30.254576, 22.193066>,  <38.901318, 30.280298, 22.067533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280239, 30.254576, 22.193066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079255, -0.902148, -0.424085,
		0.310390, 0.426608, -0.849508,
		0.947300, -0.064305, 0.313829,
		39.564430, 30.235285, 22.287214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194912, 29.999912, 21.476465>,  <38.901318, 30.280298, 22.067533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194912, 29.999912, 21.476465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410572, 29.906273, 21.800076>,  <39.539967, 29.850090, 21.994242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410572, 29.906273, 21.800076>,  <39.194912, 29.999912, 21.476465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410572, 29.906273, 21.800076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129966, -0.925963, -0.354545,
		0.832124, 0.296297, -0.468804,
		0.539146, -0.234096, 0.809025,
		39.572315, 29.836044, 22.042784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691574, 29.541979, 21.175245>,  <39.194912, 29.999912, 21.476465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691574, 29.541979, 21.175245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704746, 29.444788, 21.563034>,  <39.712650, 29.386473, 21.795708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704746, 29.444788, 21.563034>,  <39.691574, 29.541979, 21.175245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704746, 29.444788, 21.563034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332344, -0.912138, -0.239899,
		0.942583, 0.330099, 0.050715,
		0.032931, -0.242979, 0.969473,
		39.714626, 29.371895, 21.853876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256325, 29.215343, 21.373686>,  <39.691574, 29.541979, 21.175245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256325, 29.215343, 21.373686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006641, 29.088913, 21.659470>,  <39.856831, 29.013054, 21.830940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006641, 29.088913, 21.659470>,  <40.256325, 29.215343, 21.373686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006641, 29.088913, 21.659470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308340, -0.939938, -0.146436,
		0.717833, 0.128890, 0.684180,
		-0.624213, -0.316077, 0.714461,
		39.819378, 28.994089, 21.873808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710068, 28.832853, 21.828053>,  <40.256325, 29.215343, 21.373686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710068, 28.832853, 21.828053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335640, 28.707209, 21.891443>,  <40.110985, 28.631823, 21.929478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335640, 28.707209, 21.891443>,  <40.710068, 28.832853, 21.828053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335640, 28.707209, 21.891443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312048, -0.949290, -0.038401,
		0.162501, 0.013506, 0.986616,
		-0.936066, -0.314111, 0.158475,
		40.054821, 28.612976, 21.938986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828182, 28.386652, 22.341768>,  <40.710068, 28.832853, 21.828053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828182, 28.386652, 22.341768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494205, 28.292107, 22.142969>,  <40.293819, 28.235380, 22.023689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494205, 28.292107, 22.142969>,  <40.828182, 28.386652, 22.341768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494205, 28.292107, 22.142969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277078, -0.960810, -0.008543,
		-0.475500, -0.144840, 0.867710,
		-0.834942, -0.236361, -0.496997,
		40.243725, 28.221199, 21.993870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544495, 27.769682, 22.569065>,  <40.828182, 28.386652, 22.341768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544495, 27.769682, 22.569065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552158, 27.419521, 22.762274>,  <40.556755, 27.209425, 22.878199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552158, 27.419521, 22.762274>,  <40.544495, 27.769682, 22.569065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552158, 27.419521, 22.762274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612749, 0.392028, 0.686188,
		-0.790046, 0.282825, 0.543910,
		0.019157, -0.875400, 0.483020,
		40.557907, 27.156902, 22.907181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186138, 27.810680, 23.225313>,  <40.544495, 27.769682, 22.569065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186138, 27.810680, 23.225313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448952, 27.511482, 23.262869>,  <40.606640, 27.331963, 23.285402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448952, 27.511482, 23.262869>,  <40.186138, 27.810680, 23.225313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448952, 27.511482, 23.262869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325024, 0.393445, 0.859977,
		-0.680199, -0.534513, 0.501622,
		0.657030, -0.747995, 0.093892,
		40.646061, 27.287085, 23.291037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140560, 27.768917, 23.839409>,  <40.186138, 27.810680, 23.225313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140560, 27.768917, 23.839409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463188, 27.546658, 23.758705>,  <40.656765, 27.413301, 23.710283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463188, 27.546658, 23.758705>,  <40.140560, 27.768917, 23.839409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463188, 27.546658, 23.758705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479908, 0.416194, 0.772315,
		-0.345165, -0.719748, 0.602348,
		0.806566, -0.555648, -0.201757,
		40.705158, 27.379963, 23.698177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263958, 27.336803, 24.454735>,  <40.140560, 27.768917, 23.839409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263958, 27.336803, 24.454735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603970, 27.390303, 24.250946>,  <40.807976, 27.422403, 24.128672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603970, 27.390303, 24.250946>,  <40.263958, 27.336803, 24.454735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603970, 27.390303, 24.250946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389588, 0.491321, 0.778990,
		0.354505, -0.860648, 0.365529,
		0.850028, 0.133750, -0.509474,
		40.858978, 27.430428, 24.098104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833672, 27.133682, 24.939264>,  <40.263958, 27.336803, 24.454735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833672, 27.133682, 24.939264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002125, 27.379107, 24.672073>,  <41.103195, 27.526361, 24.511759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002125, 27.379107, 24.672073>,  <40.833672, 27.133682, 24.939264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002125, 27.379107, 24.672073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480226, 0.473931, 0.738087,
		0.769437, -0.631610, -0.095062,
		0.421130, 0.613562, -0.667975,
		41.128464, 27.563175, 24.471682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492821, 27.183966, 25.104721>,  <40.833672, 27.133682, 24.939264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492821, 27.183966, 25.104721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484413, 27.502548, 24.862989>,  <41.479370, 27.693699, 24.717951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484413, 27.502548, 24.862989>,  <41.492821, 27.183966, 25.104721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484413, 27.502548, 24.862989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566679, 0.507479, 0.649108,
		0.823670, -0.328816, -0.462003,
		-0.021020, 0.796458, -0.604328,
		41.478107, 27.741486, 24.681690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175720, 27.644707, 25.212536>,  <41.492821, 27.183966, 25.104721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175720, 27.644707, 25.212536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894318, 27.865795, 25.033840>,  <41.725475, 27.998447, 24.926622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894318, 27.865795, 25.033840>,  <42.175720, 27.644707, 25.212536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894318, 27.865795, 25.033840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342322, 0.814419, 0.468548,
		0.622810, 0.176697, -0.762158,
		-0.703508, 0.552720, -0.446741,
		41.683266, 28.031610, 24.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532558, 28.200521, 24.892355>,  <42.175720, 27.644707, 25.212536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532558, 28.200521, 24.892355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160629, 28.331114, 24.960285>,  <41.937473, 28.409470, 25.001043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160629, 28.331114, 24.960285>,  <42.532558, 28.200521, 24.892355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160629, 28.331114, 24.960285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366292, 0.776490, 0.512732,
		0.035528, 0.538956, -0.841584,
		-0.929822, 0.326482, 0.169828,
		41.881683, 28.429058, 25.011234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504192, 28.842222, 24.595528>,  <42.532558, 28.200521, 24.892355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504192, 28.842222, 24.595528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195511, 28.847078, 24.849874>,  <42.010303, 28.849991, 25.002483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195511, 28.847078, 24.849874>,  <42.504192, 28.842222, 24.595528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195511, 28.847078, 24.849874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238102, 0.932619, 0.271162,
		-0.589730, 0.360658, -0.722596,
		-0.771703, 0.012139, 0.635867,
		41.964001, 28.850719, 25.040634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236149, 29.410660, 24.395910>,  <42.504192, 28.842222, 24.595528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236149, 29.410660, 24.395910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121578, 29.333853, 24.771376>,  <42.052834, 29.287769, 24.996655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121578, 29.333853, 24.771376>,  <42.236149, 29.410660, 24.395910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121578, 29.333853, 24.771376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192504, 0.948198, 0.252709,
		-0.938562, 0.253080, -0.234630,
		-0.286431, -0.192016, 0.938662,
		42.035648, 29.276249, 25.052975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675453, 30.008226, 24.521507>,  <42.236149, 29.410660, 24.395910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675453, 30.008226, 24.521507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799824, 29.844055, 24.864407>,  <41.874447, 29.745552, 25.070147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799824, 29.844055, 24.864407>,  <41.675453, 30.008226, 24.521507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799824, 29.844055, 24.864407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031221, 0.897056, 0.440812,
		-0.949920, -0.163825, 0.266106,
		0.310928, -0.410428, 0.857247,
		41.893101, 29.720926, 25.121580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248749, 30.252945, 24.980484>,  <41.675453, 30.008226, 24.521507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248749, 30.252945, 24.980484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569798, 30.149260, 25.195372>,  <41.762428, 30.087048, 25.324305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569798, 30.149260, 25.195372>,  <41.248749, 30.252945, 24.980484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569798, 30.149260, 25.195372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116175, 0.815458, 0.567038,
		-0.585064, -0.517529, 0.624391,
		0.802623, -0.259215, 0.537219,
		41.810585, 30.071495, 25.356537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060516, 30.501862, 25.571386>,  <41.248749, 30.252945, 24.980484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060516, 30.501862, 25.571386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453167, 30.434971, 25.608145>,  <41.688759, 30.394836, 25.630199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453167, 30.434971, 25.608145>,  <41.060516, 30.501862, 25.571386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453167, 30.434971, 25.608145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076009, 0.784432, 0.615539,
		-0.175021, -0.597245, 0.782730,
		0.981626, -0.167227, 0.091896,
		41.747654, 30.384802, 25.635714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200039, 30.578629, 26.272367>,  <41.060516, 30.501862, 25.571386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200039, 30.578629, 26.272367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544888, 30.638220, 26.078644>,  <41.751797, 30.673975, 25.962410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544888, 30.638220, 26.078644>,  <41.200039, 30.578629, 26.272367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544888, 30.638220, 26.078644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153507, 0.834097, 0.529828,
		0.482895, -0.531120, 0.696222,
		0.862119, 0.148976, -0.484312,
		41.803524, 30.682913, 25.933350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490963, 31.018244, 26.734665>,  <41.200039, 30.578629, 26.272367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490963, 31.018244, 26.734665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737419, 31.041628, 26.420479>,  <41.885292, 31.055658, 26.231968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737419, 31.041628, 26.420479>,  <41.490963, 31.018244, 26.734665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737419, 31.041628, 26.420479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357647, 0.867741, 0.345129,
		0.701756, -0.493566, 0.513741,
		0.616139, 0.058459, -0.785465,
		41.922260, 31.059166, 26.184839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043537, 31.239855, 27.041649>,  <41.490963, 31.018244, 26.734665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043537, 31.239855, 27.041649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046707, 31.320875, 26.649954>,  <42.048611, 31.369488, 26.414936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046707, 31.320875, 26.649954>,  <42.043537, 31.239855, 27.041649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046707, 31.320875, 26.649954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146087, 0.968530, 0.201517,
		0.989240, -0.144651, -0.021915,
		0.007924, 0.202550, -0.979240,
		42.049084, 31.381639, 26.356182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659313, 31.639881, 26.932207>,  <42.043537, 31.239855, 27.041649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659313, 31.639881, 26.932207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406189, 31.722048, 26.633583>,  <42.254314, 31.771349, 26.454409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406189, 31.722048, 26.633583>,  <42.659313, 31.639881, 26.932207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406189, 31.722048, 26.633583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121056, 0.978558, 0.166642,
		0.764783, 0.015078, -0.644112,
		-0.632814, 0.205419, -0.746559,
		42.216347, 31.783674, 26.409615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934216, 32.275986, 26.565029>,  <42.659313, 31.639881, 26.932207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934216, 32.275986, 26.565029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555191, 32.262070, 26.437954>,  <42.327778, 32.253719, 26.361710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555191, 32.262070, 26.437954>,  <42.934216, 32.275986, 26.565029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555191, 32.262070, 26.437954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079536, 0.988452, 0.128988,
		0.309531, 0.147491, -0.939381,
		-0.947557, -0.034789, -0.317687,
		42.270924, 32.251633, 26.342648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868958, 32.912571, 26.227232>,  <42.934216, 32.275986, 26.565029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868958, 32.912571, 26.227232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493233, 32.801037, 26.307180>,  <42.267799, 32.734116, 26.355150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493233, 32.801037, 26.307180>,  <42.868958, 32.912571, 26.227232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493233, 32.801037, 26.307180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179069, 0.895425, 0.407613,
		-0.292626, 0.347084, -0.891012,
		-0.939311, -0.278831, 0.199872,
		42.211441, 32.717388, 26.367142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426876, 33.424561, 25.898376>,  <42.868958, 32.912571, 26.227232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426876, 33.424561, 25.898376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204781, 33.234035, 26.171093>,  <42.071526, 33.119720, 26.334723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204781, 33.234035, 26.171093>,  <42.426876, 33.424561, 25.898376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204781, 33.234035, 26.171093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291637, 0.879213, 0.376738,
		-0.778884, 0.010343, -0.627082,
		-0.555236, -0.476316, 0.681789,
		42.038208, 33.091141, 26.375629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834736, 33.862988, 26.023453>,  <42.426876, 33.424561, 25.898376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834736, 33.862988, 26.023453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766102, 33.636532, 26.345955>,  <41.724922, 33.500660, 26.539455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766102, 33.636532, 26.345955>,  <41.834736, 33.862988, 26.023453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766102, 33.636532, 26.345955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424567, 0.780988, 0.458040,
		-0.888989, -0.263715, -0.374370,
		-0.171587, -0.566137, 0.806255,
		41.714626, 33.466690, 26.587831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138767, 34.068810, 26.225363>,  <41.834736, 33.862988, 26.023453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138767, 34.068810, 26.225363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338943, 33.904774, 26.530359>,  <41.459049, 33.806355, 26.713358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338943, 33.904774, 26.530359>,  <41.138767, 34.068810, 26.225363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338943, 33.904774, 26.530359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262017, 0.767668, 0.584836,
		-0.825172, -0.492460, 0.276721,
		0.500438, -0.410085, 0.762491,
		41.489075, 33.781750, 26.759106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680508, 34.235321, 26.758869>,  <41.138767, 34.068810, 26.225363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680508, 34.235321, 26.758869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035835, 34.146683, 26.919762>,  <41.249031, 34.093498, 27.016296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035835, 34.146683, 26.919762>,  <40.680508, 34.235321, 26.758869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035835, 34.146683, 26.919762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031533, 0.844375, 0.534823,
		-0.458148, -0.487775, 0.743085,
		0.888316, -0.221597, 0.402230,
		41.302330, 34.080204, 27.040430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617916, 34.309631, 27.426380>,  <40.680508, 34.235321, 26.758869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617916, 34.309631, 27.426380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013428, 34.344315, 27.377708>,  <41.250732, 34.365124, 27.348505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013428, 34.344315, 27.377708>,  <40.617916, 34.309631, 27.426380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013428, 34.344315, 27.377708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021800, 0.889378, 0.456653,
		0.147816, -0.448875, 0.881284,
		0.988775, 0.086713, -0.121679,
		41.310059, 34.370327, 27.341206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912384, 34.463799, 28.098278>,  <40.617916, 34.309631, 27.426380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912384, 34.463799, 28.098278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183365, 34.602566, 27.838831>,  <41.345955, 34.685825, 27.683163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183365, 34.602566, 27.838831>,  <40.912384, 34.463799, 28.098278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183365, 34.602566, 27.838831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200536, 0.761281, 0.616633,
		0.707703, -0.547811, 0.446162,
		0.677453, 0.346921, -0.648616,
		41.386600, 34.706642, 27.644245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393372, 34.738190, 28.489244>,  <40.912384, 34.463799, 28.098278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393372, 34.738190, 28.489244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472576, 34.919193, 28.141447>,  <41.520100, 35.027798, 27.932768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472576, 34.919193, 28.141447>,  <41.393372, 34.738190, 28.489244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472576, 34.919193, 28.141447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316649, 0.809968, 0.493645,
		0.927645, -0.373072, 0.017096,
		0.198012, 0.452514, -0.869496,
		41.531979, 35.054947, 27.880598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054203, 35.044701, 28.679268>,  <41.393372, 34.738190, 28.489244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054203, 35.044701, 28.679268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918594, 35.217762, 28.345112>,  <41.837227, 35.321598, 28.144619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918594, 35.217762, 28.345112>,  <42.054203, 35.044701, 28.679268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918594, 35.217762, 28.345112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351900, 0.881836, 0.313898,
		0.872484, -0.187554, -0.451215,
		-0.339025, 0.432653, -0.835388,
		41.816887, 35.347557, 28.094496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624565, 35.346954, 28.362509>,  <42.054203, 35.044701, 28.679268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624565, 35.346954, 28.362509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289837, 35.540188, 28.259462>,  <42.089001, 35.656128, 28.197634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289837, 35.540188, 28.259462>,  <42.624565, 35.346954, 28.362509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289837, 35.540188, 28.259462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423021, 0.869237, 0.255894,
		0.347548, 0.105159, -0.931747,
		-0.836818, 0.483084, -0.257617,
		42.038792, 35.685112, 28.182177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743164, 36.018204, 27.949448>,  <42.624565, 35.346954, 28.362509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743164, 36.018204, 27.949448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370461, 36.076088, 28.082645>,  <42.146839, 36.110821, 28.162565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370461, 36.076088, 28.082645>,  <42.743164, 36.018204, 27.949448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370461, 36.076088, 28.082645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249398, 0.921632, 0.297314,
		-0.263873, 0.360073, -0.894829,
		-0.931757, 0.144715, 0.332995,
		42.090935, 36.119503, 28.182545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662525, 36.730942, 27.961210>,  <42.743164, 36.018204, 27.949448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662525, 36.730942, 27.961210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363194, 36.586708, 28.183914>,  <42.183594, 36.500168, 28.317537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363194, 36.586708, 28.183914>,  <42.662525, 36.730942, 27.961210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363194, 36.586708, 28.183914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105240, 0.764176, 0.636364,
		-0.654924, 0.534804, -0.533909,
		-0.748331, -0.360581, 0.556760,
		42.138695, 36.478535, 28.350943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291054, 37.326267, 28.033306>,  <42.662525, 36.730942, 27.961210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291054, 37.326267, 28.033306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160889, 37.070713, 28.312143>,  <42.082790, 36.917381, 28.479445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160889, 37.070713, 28.312143>,  <42.291054, 37.326267, 28.033306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160889, 37.070713, 28.312143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061210, 0.749903, 0.658710,
		-0.943588, 0.171686, -0.283136,
		-0.325416, -0.638881, 0.697091,
		42.063263, 36.879047, 28.521271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889652, 37.723869, 28.528940>,  <42.291054, 37.326267, 28.033306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889652, 37.723869, 28.528940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962002, 37.385353, 28.729370>,  <42.005409, 37.182243, 28.849628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962002, 37.385353, 28.729370>,  <41.889652, 37.723869, 28.528940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962002, 37.385353, 28.729370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097105, 0.491624, 0.865377,
		-0.978701, -0.205179, 0.006742,
		0.180872, -0.846291, 0.501077,
		42.016262, 37.131466, 28.879694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419205, 37.664730, 29.060478>,  <41.889652, 37.723869, 28.528940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419205, 37.664730, 29.060478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745861, 37.461834, 29.170612>,  <41.941853, 37.340096, 29.236692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745861, 37.461834, 29.170612>,  <41.419205, 37.664730, 29.060478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745861, 37.461834, 29.170612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066497, 0.391188, 0.917905,
		-0.573306, -0.767906, 0.285729,
		0.816638, -0.507241, 0.275334,
		41.990852, 37.309662, 29.253212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267323, 37.507851, 29.840563>,  <41.419205, 37.664730, 29.060478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267323, 37.507851, 29.840563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661072, 37.463032, 29.786230>,  <41.897324, 37.436142, 29.753630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661072, 37.463032, 29.786230>,  <41.267323, 37.507851, 29.840563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661072, 37.463032, 29.786230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167189, 0.352694, 0.920682,
		-0.055249, -0.929006, 0.365916,
		0.984376, -0.112044, -0.135834,
		41.956383, 37.429420, 29.745480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366135, 37.408619, 30.444933>,  <41.267323, 37.507851, 29.840563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366135, 37.408619, 30.444933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734203, 37.452744, 30.294668>,  <41.955044, 37.479218, 30.204510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734203, 37.452744, 30.294668>,  <41.366135, 37.408619, 30.444933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734203, 37.452744, 30.294668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312728, 0.370215, 0.874724,
		0.235568, -0.922373, 0.306163,
		0.920168, 0.110311, -0.375663,
		42.010254, 37.485836, 30.181969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838684, 37.111107, 30.904722>,  <41.366135, 37.408619, 30.444933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838684, 37.111107, 30.904722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995335, 37.422890, 30.709141>,  <42.089325, 37.609959, 30.591791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995335, 37.422890, 30.709141>,  <41.838684, 37.111107, 30.904722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995335, 37.422890, 30.709141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335678, 0.373747, 0.864658,
		0.856710, -0.502751, -0.115279,
		0.391622, 0.779458, -0.488955,
		42.112820, 37.656727, 30.562454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498875, 37.264881, 31.227915>,  <41.838684, 37.111107, 30.904722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498875, 37.264881, 31.227915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423164, 37.593838, 31.013308>,  <42.377739, 37.791210, 30.884544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423164, 37.593838, 31.013308>,  <42.498875, 37.264881, 31.227915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423164, 37.593838, 31.013308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516323, 0.548112, 0.658015,
		0.835216, -0.152472, -0.528361,
		-0.189272, 0.822390, -0.536517,
		42.366383, 37.840553, 30.852352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955357, 37.697029, 31.409752>,  <42.498875, 37.264881, 31.227915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955357, 37.697029, 31.409752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691723, 37.954529, 31.254215>,  <42.533543, 38.109028, 31.160892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691723, 37.954529, 31.254215>,  <42.955357, 37.697029, 31.409752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691723, 37.954529, 31.254215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242527, 0.671337, 0.700348,
		0.711892, 0.367282, -0.598593,
		-0.659083, 0.643747, -0.388844,
		42.493999, 38.147652, 31.137562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306080, 38.282433, 31.408794>,  <42.955357, 37.697029, 31.409752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306080, 38.282433, 31.408794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918808, 38.378815, 31.381781>,  <42.686443, 38.436646, 31.365572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918808, 38.378815, 31.381781>,  <43.306080, 38.282433, 31.408794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918808, 38.378815, 31.381781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140093, 0.745527, 0.651585,
		0.207350, 0.621394, -0.755564,
		-0.968184, 0.240955, -0.067532,
		42.628353, 38.451099, 31.361521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273849, 38.963737, 31.192402>,  <43.306080, 38.282433, 31.408794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273849, 38.963737, 31.192402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938568, 38.873276, 31.390903>,  <42.737400, 38.819000, 31.510004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938568, 38.873276, 31.390903>,  <43.273849, 38.963737, 31.192402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938568, 38.873276, 31.390903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204053, 0.713804, 0.669960,
		-0.505741, 0.662825, -0.552167,
		-0.838205, -0.226155, 0.496252,
		42.687107, 38.805428, 31.539780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041233, 39.609108, 31.416489>,  <43.273849, 38.963737, 31.192402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041233, 39.609108, 31.416489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808025, 39.366776, 31.633028>,  <42.668102, 39.221375, 31.762951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808025, 39.366776, 31.633028>,  <43.041233, 39.609108, 31.416489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808025, 39.366776, 31.633028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070567, 0.701549, 0.709119,
		-0.809391, 0.375226, -0.451766,
		-0.583016, -0.605834, 0.541348,
		42.633121, 39.185024, 31.795433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368679, 39.715580, 31.646807>,  <43.041233, 39.609108, 31.416489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368679, 39.715580, 31.646807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573112, 39.531979, 31.937490>,  <42.695774, 39.421818, 32.111900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573112, 39.531979, 31.937490>,  <42.368679, 39.715580, 31.646807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573112, 39.531979, 31.937490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008789, 0.848220, 0.529571,
		-0.859486, -0.264268, 0.437546,
		0.511084, -0.459005, 0.726710,
		42.726437, 39.394276, 32.155502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067352, 39.980675, 32.277687>,  <42.368679, 39.715580, 31.646807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067352, 39.980675, 32.277687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438927, 39.847996, 32.343475>,  <42.661873, 39.768387, 32.382946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438927, 39.847996, 32.343475>,  <42.067352, 39.980675, 32.277687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438927, 39.847996, 32.343475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183679, 0.798597, 0.573153,
		-0.321458, -0.502215, 0.802773,
		0.928938, -0.331697, 0.164469,
		42.717609, 39.748486, 32.392815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157448, 39.969200, 32.987877>,  <42.067352, 39.980675, 32.277687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157448, 39.969200, 32.987877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520615, 39.994755, 32.822178>,  <42.738514, 40.010090, 32.722759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520615, 39.994755, 32.822178>,  <42.157448, 39.969200, 32.987877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520615, 39.994755, 32.822178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219448, 0.769568, 0.599673,
		0.357102, -0.635360, 0.684687,
		0.907921, 0.063891, -0.414243,
		42.792992, 40.013924, 32.697906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672321, 39.960201, 33.575237>,  <42.157448, 39.969200, 32.987877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672321, 39.960201, 33.575237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821327, 40.153305, 33.258205>,  <42.910732, 40.269165, 33.067986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821327, 40.153305, 33.258205>,  <42.672321, 39.960201, 33.575237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821327, 40.153305, 33.258205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003357, 0.854741, 0.519043,
		0.928021, -0.190690, 0.320023,
		0.372513, 0.482757, -0.792578,
		42.933083, 40.298134, 33.020432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177376, 40.381153, 33.920567>,  <42.672321, 39.960201, 33.575237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177376, 40.381153, 33.920567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132141, 40.517445, 33.547234>,  <43.105000, 40.599220, 33.323235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132141, 40.517445, 33.547234>,  <43.177376, 40.381153, 33.920567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132141, 40.517445, 33.547234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206833, 0.926856, 0.313300,
		0.971819, -0.157616, -0.175285,
		-0.113083, 0.340726, -0.933337,
		43.098217, 40.619663, 33.267231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769146, 40.795757, 33.940300>,  <43.177376, 40.381153, 33.920567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769146, 40.795757, 33.940300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639938, 40.945660, 33.592686>,  <43.562416, 41.035603, 33.384117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639938, 40.945660, 33.592686>,  <43.769146, 40.795757, 33.940300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639938, 40.945660, 33.592686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241593, 0.920485, 0.307149,
		0.915037, -0.110738, -0.387872,
		-0.323017, 0.374760, -0.869031,
		43.543034, 41.058086, 33.331978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163094, 41.352146, 33.807869>,  <43.769146, 40.795757, 33.940300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163094, 41.352146, 33.807869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826767, 41.406082, 33.598167>,  <43.624969, 41.438442, 33.472347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826767, 41.406082, 33.598167>,  <44.163094, 41.352146, 33.807869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826767, 41.406082, 33.598167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005156, 0.970431, 0.241323,
		0.541289, 0.200206, -0.816654,
		-0.840821, 0.134836, -0.524252,
		43.574520, 41.446533, 33.440891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340588, 41.880157, 33.321514>,  <44.163094, 41.352146, 33.807869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340588, 41.880157, 33.321514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948048, 41.873909, 33.398155>,  <43.712524, 41.870159, 33.444138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948048, 41.873909, 33.398155>,  <44.340588, 41.880157, 33.321514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948048, 41.873909, 33.398155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020013, 0.982972, 0.182664,
		-0.191191, 0.183092, -0.964325,
		-0.981349, -0.015625, 0.191599,
		43.653645, 41.869221, 33.455635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904179, 42.183643, 32.771626>,  <44.340588, 41.880157, 33.321514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904179, 42.183643, 32.771626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783688, 42.228664, 33.150379>,  <43.711391, 42.255676, 33.377632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783688, 42.228664, 33.150379>,  <43.904179, 42.183643, 32.771626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783688, 42.228664, 33.150379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426225, 0.904180, 0.028121,
		-0.852991, 0.412057, -0.320335,
		-0.301228, 0.112548, 0.946887,
		43.693317, 42.262428, 33.434444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467327, 42.848495, 32.890026>,  <43.904179, 42.183643, 32.771626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467327, 42.848495, 32.890026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607075, 42.733902, 33.246872>,  <43.690922, 42.665146, 33.460979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607075, 42.733902, 33.246872>,  <43.467327, 42.848495, 32.890026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607075, 42.733902, 33.246872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193632, 0.953633, 0.230412,
		-0.916759, 0.092243, 0.388643,
		0.349369, -0.286486, 0.892114,
		43.711887, 42.647957, 33.514507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420006, 43.378845, 33.404209>,  <43.467327, 42.848495, 32.890026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420006, 43.378845, 33.404209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724991, 43.146660, 33.518551>,  <43.907982, 43.007347, 33.587154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724991, 43.146660, 33.518551>,  <43.420006, 43.378845, 33.404209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724991, 43.146660, 33.518551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606317, 0.795220, -0.002424,
		-0.225908, 0.175165, 0.958271,
		0.762460, -0.580468, 0.285852,
		43.953728, 42.972519, 33.604305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628952, 43.766727, 33.915295>,  <43.420006, 43.378845, 33.404209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628952, 43.766727, 33.915295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931801, 43.541298, 33.783146>,  <44.113510, 43.406040, 33.703857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931801, 43.541298, 33.783146>,  <43.628952, 43.766727, 33.915295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931801, 43.541298, 33.783146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580769, 0.812235, -0.054606,
		0.299110, -0.150524, 0.942271,
		0.757126, -0.563575, -0.330367,
		44.158939, 43.372227, 33.684036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267265, 43.537060, 34.343327>,  <43.628952, 43.766727, 33.915295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267265, 43.537060, 34.343327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120762, 43.904747, 34.401154>,  <44.032860, 44.125359, 34.435848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120762, 43.904747, 34.401154>,  <44.267265, 43.537060, 34.343327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120762, 43.904747, 34.401154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519053, 0.072877, 0.851630,
		0.772296, 0.386951, -0.503813,
		-0.366255, 0.919216, 0.144566,
		44.010887, 44.180511, 34.444523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812435, 44.131905, 34.311760>,  <44.267265, 43.537060, 34.343327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812435, 44.131905, 34.311760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501648, 44.240936, 34.538750>,  <44.315178, 44.306355, 34.674942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501648, 44.240936, 34.538750>,  <44.812435, 44.131905, 34.311760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501648, 44.240936, 34.538750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608802, 0.095842, 0.787512,
		0.160270, 0.957348, -0.240411,
		-0.776965, 0.272577, 0.567475,
		44.268559, 44.322708, 34.708992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776848, 44.815231, 34.556187>,  <44.812435, 44.131905, 34.311760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776848, 44.815231, 34.556187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626183, 44.535225, 34.798874>,  <44.535782, 44.367222, 34.944485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626183, 44.535225, 34.798874>,  <44.776848, 44.815231, 34.556187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626183, 44.535225, 34.798874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731880, 0.176618, 0.658148,
		-0.567870, 0.691942, 0.445802,
		-0.376664, -0.700016, 0.606714,
		44.513184, 44.325222, 34.980888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731422, 45.071323, 35.185085>,  <44.776848, 44.815231, 34.556187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731422, 45.071323, 35.185085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768360, 44.681145, 35.265060>,  <44.790524, 44.447037, 35.313046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768360, 44.681145, 35.265060>,  <44.731422, 45.071323, 35.185085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768360, 44.681145, 35.265060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742926, 0.201191, 0.638422,
		-0.662972, 0.089580, 0.743265,
		0.092349, -0.975447, 0.199935,
		44.796066, 44.388512, 35.325043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838703, 45.012051, 35.911781>,  <44.731422, 45.071323, 35.185085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838703, 45.012051, 35.911781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963375, 44.656120, 35.778473>,  <45.038177, 44.442562, 35.698486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963375, 44.656120, 35.778473>,  <44.838703, 45.012051, 35.911781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963375, 44.656120, 35.778473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729499, -0.000654, 0.683982,
		-0.608840, -0.456307, 0.648920,
		0.311681, -0.889822, -0.333274,
		45.056881, 44.389175, 35.678490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972385, 44.459419, 36.511723>,  <44.838703, 45.012051, 35.911781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972385, 44.459419, 36.511723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.200600, 44.342381, 36.204769>,  <45.337528, 44.272160, 36.020599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.200600, 44.342381, 36.204769>,  <44.972385, 44.459419, 36.511723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200600, 44.342381, 36.204769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818594, 0.127242, 0.560101,
		-0.066240, -0.947733, 0.312112,
		0.570540, -0.292594, -0.767381,
		45.371761, 44.254601, 35.974556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342655, 43.958958, 36.825504>,  <44.972385, 44.459419, 36.511723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342655, 43.958958, 36.825504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538776, 44.063202, 36.492836>,  <45.656448, 44.125748, 36.293236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538776, 44.063202, 36.492836>,  <45.342655, 43.958958, 36.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538776, 44.063202, 36.492836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842077, 0.104406, 0.529156,
		0.224737, -0.959781, -0.168266,
		0.490305, 0.260614, -0.831673,
		45.685867, 44.141388, 36.243336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022717, 43.466061, 36.762268>,  <45.342655, 43.958958, 36.825504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022717, 43.466061, 36.762268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005184, 43.830395, 36.598091>,  <45.994663, 44.048996, 36.499584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005184, 43.830395, 36.598091>,  <46.022717, 43.466061, 36.762268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005184, 43.830395, 36.598091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665535, 0.333024, 0.667952,
		0.745079, -0.243885, -0.620788,
		-0.043833, 0.910832, -0.410443,
		45.992035, 44.103645, 36.474957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728268, 43.737068, 36.566898>,  <46.022717, 43.466061, 36.762268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728268, 43.737068, 36.566898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456837, 44.021580, 36.640240>,  <46.293980, 44.192287, 36.684246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456837, 44.021580, 36.640240>,  <46.728268, 43.737068, 36.566898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456837, 44.021580, 36.640240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565397, 0.346446, 0.748533,
		0.468893, 0.611604, -0.637244,
		-0.678576, 0.711278, 0.183353,
		46.253265, 44.234962, 36.695244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047813, 44.420460, 36.678280>,  <46.728268, 43.737068, 36.566898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047813, 44.420460, 36.678280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705418, 44.469707, 36.879124>,  <46.499981, 44.499256, 36.999630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705418, 44.469707, 36.879124>,  <47.047813, 44.420460, 36.678280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705418, 44.469707, 36.879124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461970, 0.618145, 0.635988,
		-0.232077, 0.776362, -0.586005,
		-0.855993, 0.123119, 0.502114,
		46.448620, 44.506641, 37.029758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.923363, 45.115456, 36.545807>,  <47.047813, 44.420460, 36.678280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.923363, 45.115456, 36.545807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777119, 45.012432, 36.903576>,  <46.689373, 44.950619, 37.118237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777119, 45.012432, 36.903576>,  <46.923363, 45.115456, 36.545807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777119, 45.012432, 36.903576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410688, 0.817708, 0.403346,
		-0.835264, 0.514796, -0.193183,
		-0.365608, -0.257562, 0.894423,
		46.667435, 44.935162, 37.171902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457336, 45.620079, 36.953976>,  <46.923363, 45.115456, 36.545807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457336, 45.620079, 36.953976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714108, 45.374699, 37.137981>,  <46.868168, 45.227470, 37.248386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714108, 45.374699, 37.137981>,  <46.457336, 45.620079, 36.953976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714108, 45.374699, 37.137981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557065, 0.785365, 0.269964,
		-0.526887, 0.082961, 0.845877,
		0.641925, -0.613449, 0.460013,
		46.906685, 45.190662, 37.275986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989662, 45.323875, 36.357506>,  <46.457336, 45.620079, 36.953976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989662, 45.323875, 36.357506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219631, 44.998768, 36.319843>,  <46.357613, 44.803703, 36.297245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219631, 44.998768, 36.319843>,  <45.989662, 45.323875, 36.357506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219631, 44.998768, 36.319843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693924, -0.423377, -0.582427,
		0.433516, 0.400190, -0.807411,
		0.574921, -0.812773, -0.094160,
		46.392109, 44.754936, 36.291595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043484, 45.161137, 35.609089>,  <45.989662, 45.323875, 36.357506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043484, 45.161137, 35.609089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105923, 44.843075, 35.843479>,  <46.143387, 44.652237, 35.984112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105923, 44.843075, 35.843479>,  <46.043484, 45.161137, 35.609089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105923, 44.843075, 35.843479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575184, -0.555462, -0.600521,
		0.802992, -0.243304, -0.544065,
		0.156098, -0.795151, 0.585976,
		46.152752, 44.604530, 36.019272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.315903, 44.540104, 35.168217>,  <46.043484, 45.161137, 35.609089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.315903, 44.540104, 35.168217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124535, 44.429031, 35.501446>,  <46.009712, 44.362389, 35.701382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124535, 44.429031, 35.501446>,  <46.315903, 44.540104, 35.168217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124535, 44.429031, 35.501446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697118, -0.456790, -0.552603,
		0.533986, -0.845125, 0.024960,
		-0.478420, -0.277682, 0.833071,
		45.981010, 44.345726, 35.751366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070427, 43.878277, 34.920383>,  <46.315903, 44.540104, 35.168217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070427, 43.878277, 34.920383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855400, 43.968636, 35.245342>,  <45.726383, 44.022850, 35.440319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855400, 43.968636, 35.245342>,  <46.070427, 43.878277, 34.920383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855400, 43.968636, 35.245342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827466, -0.326692, -0.456696,
		0.162238, -0.917738, 0.362540,
		-0.537567, 0.225896, 0.812399,
		45.694130, 44.036404, 35.489063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676388, 43.287300, 35.169903>,  <46.070427, 43.878277, 34.920383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.676388, 43.287300, 35.169903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493179, 43.628704, 35.269291>,  <45.383255, 43.833546, 35.328922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493179, 43.628704, 35.269291>,  <45.676388, 43.287300, 35.169903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493179, 43.628704, 35.269291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798937, -0.272690, -0.536041,
		-0.389762, -0.444028, 0.806799,
		-0.458023, 0.853510, 0.248467,
		45.355774, 43.884758, 35.343830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096817, 43.146347, 35.587761>,  <45.676388, 43.287300, 35.169903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096817, 43.146347, 35.587761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057766, 43.472042, 35.358856>,  <45.034336, 43.667458, 35.221512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057766, 43.472042, 35.358856>,  <45.096817, 43.146347, 35.587761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057766, 43.472042, 35.358856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841397, -0.374631, -0.389490,
		-0.531525, 0.443478, 0.721671,
		-0.097630, 0.814236, -0.572266,
		45.028477, 43.716312, 35.187176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401203, 43.567425, 35.602482>,  <45.096817, 43.146347, 35.587761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401203, 43.567425, 35.602482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595539, 43.572102, 35.252895>,  <44.712139, 43.574909, 35.043144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595539, 43.572102, 35.252895>,  <44.401203, 43.567425, 35.602482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595539, 43.572102, 35.252895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757623, -0.492980, -0.427759,
		-0.435851, 0.869962, -0.230651,
		0.485840, 0.011692, -0.873969,
		44.741291, 43.575611, 34.990704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049820, 42.926205, 35.551346>,  <44.401203, 43.567425, 35.602482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049820, 42.926205, 35.551346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937859, 42.607925, 35.766201>,  <43.870682, 42.416958, 35.895115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937859, 42.607925, 35.766201>,  <44.049820, 42.926205, 35.551346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937859, 42.607925, 35.766201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374002, -0.424918, -0.824359,
		0.884182, -0.431628, -0.178659,
		-0.279901, -0.795702, 0.537134,
		43.853889, 42.369213, 35.927341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537334, 42.257339, 35.440243>,  <44.049820, 42.926205, 35.551346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537334, 42.257339, 35.440243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148762, 42.218319, 35.526779>,  <43.915619, 42.194908, 35.578701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148762, 42.218319, 35.526779>,  <44.537334, 42.257339, 35.440243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148762, 42.218319, 35.526779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170537, -0.346989, -0.922234,
		0.165034, -0.932782, 0.320440,
		-0.971433, -0.097553, 0.216338,
		43.857330, 42.189053, 35.591682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306808, 41.571293, 35.277855>,  <44.537334, 42.257339, 35.440243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306808, 41.571293, 35.277855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986816, 41.807228, 35.233791>,  <43.794823, 41.948788, 35.207352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986816, 41.807228, 35.233791>,  <44.306808, 41.571293, 35.277855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986816, 41.807228, 35.233791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165155, -0.392941, -0.904611,
		-0.576857, -0.705473, 0.411757,
		-0.799975, 0.589835, -0.110159,
		43.746822, 41.984177, 35.200745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719627, 41.193249, 35.006573>,  <44.306808, 41.571293, 35.277855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719627, 41.193249, 35.006573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767189, 41.552464, 34.837158>,  <43.795727, 41.767994, 34.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767189, 41.552464, 34.837158>,  <43.719627, 41.193249, 35.006573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767189, 41.552464, 34.837158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052050, -0.431615, -0.900555,
		-0.991541, 0.085030, -0.098062,
		0.118900, 0.898042, -0.423538,
		43.802860, 41.821877, 34.710098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557087, 41.467754, 34.375309>,  <43.719627, 41.193249, 35.006573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557087, 41.467754, 34.375309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925423, 41.550789, 34.507343>,  <44.146423, 41.600609, 34.586563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925423, 41.550789, 34.507343>,  <43.557087, 41.467754, 34.375309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925423, 41.550789, 34.507343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389367, -0.443836, -0.807096,
		-0.021036, 0.871733, -0.489529,
		0.920842, 0.207585, 0.330087,
		44.201675, 41.613064, 34.606369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300602, 42.124630, 34.410557>,  <43.557087, 41.467754, 34.375309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300602, 42.124630, 34.410557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346954, 42.322346, 34.065941>,  <43.374767, 42.440975, 33.859173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346954, 42.322346, 34.065941>,  <43.300602, 42.124630, 34.410557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346954, 42.322346, 34.065941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618718, -0.642619, -0.451916,
		-0.777019, 0.585419, 0.231358,
		0.115885, 0.494293, -0.861537,
		43.381721, 42.470634, 33.807480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578930, 42.209450, 34.188251>,  <43.300602, 42.124630, 34.410557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578930, 42.209450, 34.188251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835796, 42.252346, 33.884640>,  <42.989918, 42.278084, 33.702473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835796, 42.252346, 33.884640>,  <42.578930, 42.209450, 34.188251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835796, 42.252346, 33.884640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414681, -0.784179, -0.461631,
		-0.644716, 0.611198, -0.459106,
		0.642169, 0.107238, -0.759025,
		43.028446, 42.284519, 33.656933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338120, 41.993866, 33.480968>,  <42.578930, 42.209450, 34.188251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338120, 41.993866, 33.480968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735878, 41.960419, 33.455120>,  <42.974533, 41.940350, 33.439613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735878, 41.960419, 33.455120>,  <42.338120, 41.993866, 33.480968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735878, 41.960419, 33.455120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103751, -0.888662, -0.446672,
		-0.020073, 0.450875, -0.892361,
		0.994401, -0.083618, -0.064617,
		43.034199, 41.935333, 33.435734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466629, 41.751019, 32.845654>,  <42.338120, 41.993866, 33.480968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466629, 41.751019, 32.845654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783653, 41.645390, 33.065514>,  <42.973866, 41.582012, 33.197430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783653, 41.645390, 33.065514>,  <42.466629, 41.751019, 32.845654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783653, 41.645390, 33.065514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108783, -0.948137, -0.298667,
		0.600018, 0.176917, -0.780179,
		0.792556, -0.264076, 0.549653,
		43.021420, 41.566166, 33.230408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865635, 41.410576, 32.388699>,  <42.466629, 41.751019, 32.845654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865635, 41.410576, 32.388699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969196, 41.281216, 32.752758>,  <43.031334, 41.203598, 32.971195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969196, 41.281216, 32.752758>,  <42.865635, 41.410576, 32.388699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969196, 41.281216, 32.752758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116396, -0.924969, -0.361779,
		0.958865, 0.199604, -0.201835,
		0.258903, -0.323405, 0.910153,
		43.046867, 41.184193, 33.025803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119297, 40.902668, 32.016434>,  <42.865635, 41.410576, 32.388699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119297, 40.902668, 32.016434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110542, 40.823166, 32.408356>,  <43.105289, 40.775467, 32.643509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110542, 40.823166, 32.408356>,  <43.119297, 40.902668, 32.016434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110542, 40.823166, 32.408356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217928, -0.957422, -0.189342,
		0.975719, 0.209382, 0.064272,
		-0.021891, -0.198752, 0.979806,
		43.103973, 40.763542, 32.702297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840744, 40.582115, 32.274952>,  <43.119297, 40.902668, 32.016434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840744, 40.582115, 32.274952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506485, 40.473526, 32.465946>,  <43.305931, 40.408371, 32.580544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506485, 40.473526, 32.465946>,  <43.840744, 40.582115, 32.274952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506485, 40.473526, 32.465946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200260, -0.960065, -0.195373,
		0.511461, -0.067640, 0.856640,
		-0.835646, -0.271477, 0.477490,
		43.255791, 40.392082, 32.609192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084976, 40.005978, 32.388252>,  <43.840744, 40.582115, 32.274952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084976, 40.005978, 32.388252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693275, 40.008148, 32.469288>,  <43.458256, 40.009453, 32.517910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693275, 40.008148, 32.469288>,  <44.084976, 40.005978, 32.388252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693275, 40.008148, 32.469288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061053, -0.961102, -0.269361,
		0.193243, -0.276140, 0.941490,
		-0.979250, 0.005429, 0.202585,
		43.399502, 40.009777, 32.530064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903160, 39.326687, 32.634811>,  <44.084976, 40.005978, 32.388252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903160, 39.326687, 32.634811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530834, 39.457138, 32.568825>,  <43.307438, 39.535408, 32.529232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530834, 39.457138, 32.568825>,  <43.903160, 39.326687, 32.634811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530834, 39.457138, 32.568825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228407, -0.871459, -0.434039,
		-0.285317, -0.366332, 0.885661,
		-0.930819, 0.326130, -0.164969,
		43.251587, 39.554977, 32.519333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521545, 38.882950, 33.079239>,  <43.903160, 39.326687, 32.634811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521545, 38.882950, 33.079239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314137, 39.025784, 32.768467>,  <43.189690, 39.111485, 32.582005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314137, 39.025784, 32.768467>,  <43.521545, 38.882950, 33.079239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314137, 39.025784, 32.768467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078835, -0.924719, -0.372396,
		-0.851421, -0.131847, 0.507639,
		-0.518523, 0.357086, -0.776932,
		43.158581, 39.132908, 32.535389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057419, 38.281429, 33.520405>,  <43.521545, 38.882950, 33.079239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057419, 38.281429, 33.520405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411068, 38.115093, 33.605644>,  <43.623257, 38.015293, 33.656788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411068, 38.115093, 33.605644>,  <43.057419, 38.281429, 33.520405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411068, 38.115093, 33.605644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408112, -0.909312, -0.081214,
		0.227543, -0.015164, -0.973650,
		0.884120, -0.415838, 0.213096,
		43.676304, 37.990341, 33.669575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081936, 37.722710, 33.053288>,  <43.057419, 38.281429, 33.520405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081936, 37.722710, 33.053288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341198, 37.628258, 33.342876>,  <43.496754, 37.571587, 33.516632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341198, 37.628258, 33.342876>,  <43.081936, 37.722710, 33.053288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341198, 37.628258, 33.342876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314448, -0.948863, -0.027963,
		0.693555, -0.209528, -0.689260,
		0.648154, -0.236130, 0.723974,
		43.535645, 37.557419, 33.560070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472549, 37.204967, 32.743889>,  <43.081936, 37.722710, 33.053288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472549, 37.204967, 32.743889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454247, 37.208366, 33.143456>,  <43.443264, 37.210407, 33.383194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454247, 37.208366, 33.143456>,  <43.472549, 37.204967, 32.743889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454247, 37.208366, 33.143456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272241, -0.962220, -0.004285,
		0.961141, -0.272142, 0.046339,
		-0.045755, 0.008497, 0.998917,
		43.440521, 37.210915, 33.443130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855625, 36.605896, 33.040867>,  <43.472549, 37.204967, 32.743889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855625, 36.605896, 33.040867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589489, 36.718651, 33.317375>,  <43.429806, 36.786304, 33.483280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589489, 36.718651, 33.317375>,  <43.855625, 36.605896, 33.040867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589489, 36.718651, 33.317375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343464, -0.937735, 0.051815,
		0.662836, -0.202952, 0.720735,
		-0.665343, 0.281891, 0.691271,
		43.389885, 36.803219, 33.524757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586613, 35.935158, 33.310501>,  <43.855625, 36.605896, 33.040867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586613, 35.935158, 33.310501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659565, 35.650600, 33.039013>,  <43.703335, 35.479866, 32.876122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659565, 35.650600, 33.039013>,  <43.586613, 35.935158, 33.310501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659565, 35.650600, 33.039013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896873, -0.162526, 0.411345,
		-0.402937, -0.683745, 0.608388,
		0.182376, -0.711392, -0.678720,
		43.714279, 35.437183, 32.835396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785072, 35.342354, 33.526825>,  <43.586613, 35.935158, 33.310501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785072, 35.342354, 33.526825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987026, 35.307644, 33.183300>,  <44.108200, 35.286819, 32.977184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987026, 35.307644, 33.183300>,  <43.785072, 35.342354, 33.526825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987026, 35.307644, 33.183300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808063, -0.302333, 0.505598,
		-0.303533, -0.949242, -0.082503,
		0.504878, -0.086798, -0.858815,
		44.138493, 35.281612, 32.925655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062458, 35.109547, 33.249500>,  <43.785072, 35.342354, 33.526825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062458, 35.109547, 33.249500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854225, 34.923698, 32.962971>,  <42.729286, 34.812187, 32.791054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854225, 34.923698, 32.962971>,  <43.062458, 35.109547, 33.249500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854225, 34.923698, 32.962971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230375, 0.731416, -0.641839,
		0.822144, -0.499153, -0.273725,
		-0.520583, -0.464625, -0.716322,
		42.698051, 34.784309, 32.748074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302673, 35.057991, 33.984890>,  <43.062458, 35.109547, 33.249500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302673, 35.057991, 33.984890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675472, 35.014286, 34.123135>,  <43.899151, 34.988064, 34.206081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675472, 35.014286, 34.123135>,  <43.302673, 35.057991, 33.984890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675472, 35.014286, 34.123135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198830, 0.951337, -0.235425,
		-0.303066, 0.288132, 0.908367,
		0.931997, -0.109261, 0.345607,
		43.955070, 34.981506, 34.226818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362095, 35.700172, 34.449615>,  <43.302673, 35.057991, 33.984890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362095, 35.700172, 34.449615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708675, 35.560658, 34.306721>,  <43.916622, 35.476948, 34.220985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708675, 35.560658, 34.306721>,  <43.362095, 35.700172, 34.449615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708675, 35.560658, 34.306721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282884, 0.932543, -0.224366,
		0.411394, 0.093345, 0.906665,
		0.866448, -0.348783, -0.357236,
		43.968609, 35.456024, 34.199551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950150, 35.834297, 34.864071>,  <43.362095, 35.700172, 34.449615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950150, 35.834297, 34.864071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043163, 35.791584, 34.477386>,  <44.098972, 35.765957, 34.245377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043163, 35.791584, 34.477386>,  <43.950150, 35.834297, 34.864071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043163, 35.791584, 34.477386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292162, 0.955718, -0.035288,
		0.927668, -0.274229, 0.253436,
		0.232536, -0.106780, -0.966708,
		44.112923, 35.759548, 34.187374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605804, 36.112007, 34.632912>,  <43.950150, 35.834297, 34.864071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605804, 36.112007, 34.632912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364986, 36.139156, 34.314682>,  <44.220497, 36.155445, 34.123745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364986, 36.139156, 34.314682>,  <44.605804, 36.112007, 34.632912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364986, 36.139156, 34.314682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206531, 0.975709, -0.073048,
		0.771290, -0.208289, -0.601438,
		-0.602043, 0.067874, -0.795573,
		44.184372, 36.159519, 34.076012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785664, 36.232361, 33.790661>,  <44.605804, 36.112007, 34.632912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785664, 36.232361, 33.790661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428104, 36.391464, 33.873344>,  <44.213570, 36.486927, 33.922955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428104, 36.391464, 33.873344>,  <44.785664, 36.232361, 33.790661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428104, 36.391464, 33.873344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328518, 0.895038, -0.301632,
		-0.304991, -0.201721, -0.930747,
		-0.893899, 0.397763, 0.206710,
		44.159935, 36.510792, 33.935356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411484, 36.528599, 33.807762>,  <44.785664, 36.232361, 33.790661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411484, 36.528599, 33.807762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279697, 36.502823, 34.184547>,  <45.200626, 36.487358, 34.410618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279697, 36.502823, 34.184547>,  <45.411484, 36.528599, 33.807762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279697, 36.502823, 34.184547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844410, -0.466447, 0.263438,
		0.422400, 0.882199, 0.208096,
		-0.329470, -0.064442, 0.941964,
		45.180855, 36.483490, 34.467136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855835, 36.821194, 34.404331>,  <45.411484, 36.528599, 33.807762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855835, 36.821194, 34.404331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655781, 36.515427, 34.567074>,  <45.535748, 36.331966, 34.664719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655781, 36.515427, 34.567074>,  <45.855835, 36.821194, 34.404331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655781, 36.515427, 34.567074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864744, -0.416117, 0.281184,
		-0.045644, 0.492452, 0.869142,
		-0.500134, -0.764419, 0.406852,
		45.505741, 36.286102, 34.689129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297451, 36.788685, 34.945110>,  <45.855835, 36.821194, 34.404331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297451, 36.788685, 34.945110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095901, 36.443378, 34.957016>,  <45.974972, 36.236195, 34.964161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095901, 36.443378, 34.957016>,  <46.297451, 36.788685, 34.945110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095901, 36.443378, 34.957016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822083, -0.468696, 0.323270,
		-0.265115, 0.187359, 0.945838,
		-0.503878, -0.863262, 0.029766,
		45.944736, 36.184399, 34.965946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.645123, 36.333733, 35.465309>,  <46.297451, 36.788685, 34.945110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.645123, 36.333733, 35.465309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436771, 36.103832, 35.212852>,  <46.311760, 35.965893, 35.061378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436771, 36.103832, 35.212852>,  <46.645123, 36.333733, 35.465309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.436771, 36.103832, 35.212852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692933, -0.716483, 0.080599,
		-0.498530, -0.395359, 0.771466,
		-0.520877, -0.574755, -0.631145,
		46.280510, 35.931404, 35.023510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579273, 35.573326, 35.734028>,  <46.645123, 36.333733, 35.465309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579273, 35.573326, 35.734028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594780, 35.611729, 35.336178>,  <46.604084, 35.634769, 35.097469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594780, 35.611729, 35.336178>,  <46.579273, 35.573326, 35.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594780, 35.611729, 35.336178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790034, -0.612408, -0.028321,
		-0.611836, -0.784690, -0.099590,
		0.038766, 0.096007, -0.994625,
		46.606411, 35.640530, 35.037788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.523041, 34.854599, 35.452023>,  <46.579273, 35.573326, 35.734028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.523041, 34.854599, 35.452023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710205, 35.130886, 35.231487>,  <46.822502, 35.296658, 35.099167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710205, 35.130886, 35.231487>,  <46.523041, 34.854599, 35.452023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710205, 35.130886, 35.231487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870462, -0.468062, 0.152357,
		-0.152825, -0.551208, -0.820253,
		0.467910, 0.690715, -0.551337,
		46.850578, 35.338100, 35.066086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781898, 34.652302, 34.758308>,  <46.523041, 34.854599, 35.452023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781898, 34.652302, 34.758308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011360, 34.948952, 34.897400>,  <47.149036, 35.126942, 34.980854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011360, 34.948952, 34.897400>,  <46.781898, 34.652302, 34.758308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011360, 34.948952, 34.897400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781962, -0.622224, 0.037059,
		0.243847, 0.250649, -0.936864,
		0.573650, 0.741628, 0.347725,
		47.183456, 35.171440, 35.001717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290916, 34.827766, 34.392277>,  <46.781898, 34.652302, 34.758308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290916, 34.827766, 34.392277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365364, 34.877853, 34.782082>,  <47.410034, 34.907906, 35.015965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365364, 34.877853, 34.782082>,  <47.290916, 34.827766, 34.392277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365364, 34.877853, 34.782082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694236, -0.718622, -0.040249,
		0.695268, 0.684034, -0.220682,
		0.186118, 0.125222, 0.974515,
		47.421200, 34.915421, 35.074436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.920723, 35.024055, 34.512489>,  <47.290916, 34.827766, 34.392277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.920723, 35.024055, 34.512489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851936, 34.864628, 34.872837>,  <47.810665, 34.768970, 35.089046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851936, 34.864628, 34.872837>,  <47.920723, 35.024055, 34.512489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.851936, 34.864628, 34.872837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706033, -0.687609, -0.169444,
		0.686984, 0.606908, 0.399646,
		-0.171963, -0.398568, 0.900873,
		47.800346, 34.745056, 35.143101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.928467, 30.305321, 28.115919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620094, 30.459759, 27.913300>,  <37.435070, 30.552422, 27.791729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620094, 30.459759, 27.913300>,  <37.928467, 30.305321, 28.115919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620094, 30.459759, 27.913300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076661, 0.733284, 0.675587,
		0.632284, 0.559666, -0.535715,
		-0.770935, 0.386094, -0.506548,
		37.388813, 30.575586, 27.761335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176125, 30.992935, 27.827749>,  <37.928467, 30.305321, 28.115919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176125, 30.992935, 27.827749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777592, 31.011175, 27.798798>,  <37.538471, 31.022120, 27.781427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777592, 31.011175, 27.798798>,  <38.176125, 30.992935, 27.827749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777592, 31.011175, 27.798798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003060, 0.826542, 0.562866,
		0.085489, 0.561025, -0.823373,
		-0.996334, 0.045599, -0.072377,
		37.478691, 31.024855, 27.777084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070599, 31.593660, 27.570755>,  <38.176125, 30.992935, 27.827749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070599, 31.593660, 27.570755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732697, 31.507811, 27.766844>,  <37.529953, 31.456301, 27.884497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732697, 31.507811, 27.766844>,  <38.070599, 31.593660, 27.570755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732697, 31.507811, 27.766844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056633, 0.875056, 0.480697,
		-0.532142, 0.433836, -0.727057,
		-0.844759, -0.214623, 0.490224,
		37.479267, 31.443424, 27.913912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588295, 32.243565, 27.514303>,  <38.070599, 31.593660, 27.570755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588295, 32.243565, 27.514303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443214, 32.028984, 27.819111>,  <37.356167, 31.900236, 28.001995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443214, 32.028984, 27.819111>,  <37.588295, 32.243565, 27.514303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443214, 32.028984, 27.819111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025087, 0.811783, 0.583421,
		-0.931569, 0.230722, -0.280973,
		-0.362697, -0.536448, 0.762020,
		37.334404, 31.868050, 28.047716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088593, 32.635170, 27.773674>,  <37.588295, 32.243565, 27.514303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088593, 32.635170, 27.773674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164276, 32.381271, 28.073353>,  <37.209686, 32.228931, 28.253160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164276, 32.381271, 28.073353>,  <37.088593, 32.635170, 27.773674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164276, 32.381271, 28.073353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130023, 0.740067, 0.659845,
		-0.973291, -0.222260, 0.057494,
		0.189207, -0.634745, 0.749199,
		37.221039, 32.190849, 28.298113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503666, 32.804283, 28.292683>,  <37.088593, 32.635170, 27.773674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503666, 32.804283, 28.292683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783455, 32.592369, 28.484547>,  <36.951328, 32.465221, 28.599665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783455, 32.592369, 28.484547>,  <36.503666, 32.804283, 28.292683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783455, 32.592369, 28.484547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193923, 0.505287, 0.840880,
		-0.687849, -0.681187, 0.250695,
		0.699469, -0.529783, 0.479659,
		36.993298, 32.433434, 28.628445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238693, 32.581982, 28.979841>,  <36.503666, 32.804283, 28.292683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238693, 32.581982, 28.979841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638603, 32.587196, 28.986580>,  <36.878548, 32.590324, 28.990623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638603, 32.587196, 28.986580>,  <36.238693, 32.581982, 28.979841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638603, 32.587196, 28.986580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021157, 0.699887, 0.713940,
		-0.002484, -0.714135, 0.700004,
		0.999773, 0.013036, 0.016847,
		36.938534, 32.591106, 28.991634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407196, 32.626034, 29.757572>,  <36.238693, 32.581982, 28.979841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407196, 32.626034, 29.757572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736240, 32.749092, 29.566298>,  <36.933666, 32.822929, 29.451532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736240, 32.749092, 29.566298>,  <36.407196, 32.626034, 29.757572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736240, 32.749092, 29.566298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052922, 0.795907, 0.603101,
		0.566134, -0.521425, 0.638442,
		0.822613, 0.307648, -0.478185,
		36.983025, 32.841385, 29.422842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823196, 32.705784, 30.279318>,  <36.407196, 32.626034, 29.757572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823196, 32.705784, 30.279318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961742, 32.930027, 29.978453>,  <37.044872, 33.064571, 29.797934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961742, 32.930027, 29.978453>,  <36.823196, 32.705784, 30.279318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961742, 32.930027, 29.978453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153780, 0.757018, 0.635039,
		0.925408, -0.335625, 0.175997,
		0.346368, 0.560606, -0.752164,
		37.065655, 33.098209, 29.752804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365009, 32.992340, 30.652376>,  <36.823196, 32.705784, 30.279318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365009, 32.992340, 30.652376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293770, 33.210148, 30.324528>,  <37.251026, 33.340832, 30.127819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293770, 33.210148, 30.324528>,  <37.365009, 32.992340, 30.652376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293770, 33.210148, 30.324528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204864, 0.835203, 0.510359,
		0.962451, -0.077017, -0.260300,
		-0.178097, 0.544522, -0.819620,
		37.240341, 33.373505, 30.078642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914001, 33.462326, 30.689026>,  <37.365009, 32.992340, 30.652376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914001, 33.462326, 30.689026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641117, 33.625267, 30.446161>,  <37.477386, 33.723030, 30.300442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641117, 33.625267, 30.446161>,  <37.914001, 33.462326, 30.689026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641117, 33.625267, 30.446161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228642, 0.907631, 0.352037,
		0.694483, 0.101342, -0.712336,
		-0.682214, 0.407353, -0.607163,
		37.436451, 33.747475, 30.264013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210934, 33.848175, 30.209612>,  <37.914001, 33.462326, 30.689026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210934, 33.848175, 30.209612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837826, 33.987591, 30.246397>,  <37.613960, 34.071239, 30.268469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837826, 33.987591, 30.246397>,  <38.210934, 33.848175, 30.209612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837826, 33.987591, 30.246397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359685, 0.883158, 0.301096,
		0.023724, 0.313932, -0.949149,
		-0.932772, 0.348538, 0.091965,
		37.557995, 34.092152, 30.273987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211151, 34.557823, 30.048323>,  <38.210934, 33.848175, 30.209612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211151, 34.557823, 30.048323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856197, 34.550365, 30.232580>,  <37.643223, 34.545891, 30.343136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856197, 34.550365, 30.232580>,  <38.211151, 34.557823, 30.048323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856197, 34.550365, 30.232580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240964, 0.833079, 0.497912,
		-0.393037, 0.552840, -0.734772,
		-0.887388, -0.018644, 0.460645,
		37.589981, 34.544773, 30.370773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971577, 35.300087, 30.071840>,  <38.211151, 34.557823, 30.048323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971577, 35.300087, 30.071840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745598, 35.116261, 30.345959>,  <37.610008, 35.005966, 30.510429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745598, 35.116261, 30.345959>,  <37.971577, 35.300087, 30.071840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745598, 35.116261, 30.345959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073253, 0.799322, 0.596421,
		-0.821868, 0.387148, -0.417912,
		-0.564949, -0.459566, 0.685296,
		37.576115, 34.978390, 30.551548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300274, 35.622524, 30.160051>,  <37.971577, 35.300087, 30.071840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300274, 35.622524, 30.160051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375710, 35.424065, 30.499054>,  <37.420971, 35.304989, 30.702456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375710, 35.424065, 30.499054>,  <37.300274, 35.622524, 30.160051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375710, 35.424065, 30.499054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003423, 0.863322, 0.504642,
		-0.982049, -0.092271, 0.164514,
		0.188593, -0.496147, 0.847509,
		37.432289, 35.275219, 30.753307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871006, 35.915371, 30.777195>,  <37.300274, 35.622524, 30.160051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871006, 35.915371, 30.777195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189777, 35.728371, 30.930218>,  <37.381039, 35.616169, 31.022032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189777, 35.728371, 30.930218>,  <36.871006, 35.915371, 30.777195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189777, 35.728371, 30.930218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053399, 0.685334, 0.726268,
		-0.601711, -0.558354, 0.571126,
		0.796927, -0.467501, 0.382557,
		37.428856, 35.588120, 31.044985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849571, 36.166862, 31.436785>,  <36.871006, 35.915371, 30.777195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849571, 36.166862, 31.436785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209938, 35.993782, 31.423351>,  <37.426159, 35.889935, 31.415291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209938, 35.993782, 31.423351>,  <36.849571, 36.166862, 31.436785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209938, 35.993782, 31.423351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379001, 0.746690, 0.546637,
		-0.211453, -0.505201, 0.836696,
		0.900914, -0.432697, -0.033582,
		37.480213, 35.863972, 31.413277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173096, 36.151222, 32.060646>,  <36.849571, 36.166862, 31.436785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173096, 36.151222, 32.060646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507538, 36.117050, 31.843897>,  <37.708202, 36.096546, 31.713846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507538, 36.117050, 31.843897>,  <37.173096, 36.151222, 32.060646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507538, 36.117050, 31.843897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496824, 0.536732, 0.681971,
		0.232583, -0.839417, 0.491208,
		0.836104, -0.085430, -0.541877,
		37.758369, 36.091423, 31.681334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786552, 36.207729, 32.557148>,  <37.173096, 36.151222, 32.060646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786552, 36.207729, 32.557148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996490, 36.253517, 32.219761>,  <38.122452, 36.280991, 32.017330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996490, 36.253517, 32.219761>,  <37.786552, 36.207729, 32.557148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996490, 36.253517, 32.219761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521523, 0.739902, 0.424923,
		0.672723, -0.662905, 0.328634,
		0.524840, 0.114465, -0.843469,
		38.153942, 36.287857, 31.966721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545094, 36.261803, 32.718403>,  <37.786552, 36.207729, 32.557148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545094, 36.261803, 32.718403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513081, 36.444328, 32.363918>,  <38.493874, 36.553844, 32.151226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513081, 36.444328, 32.363918>,  <38.545094, 36.261803, 32.718403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513081, 36.444328, 32.363918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465952, 0.803076, 0.371426,
		0.881183, -0.383207, -0.276890,
		-0.080031, 0.456312, -0.886213,
		38.489071, 36.581223, 32.098053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207218, 36.476017, 32.484390>,  <38.545094, 36.261803, 32.718403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207218, 36.476017, 32.484390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932835, 36.712727, 32.315033>,  <38.768204, 36.854752, 32.213417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932835, 36.712727, 32.315033>,  <39.207218, 36.476017, 32.484390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932835, 36.712727, 32.315033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480237, 0.805341, 0.347561,
		0.546652, 0.035085, -0.836624,
		-0.685962, 0.591773, -0.423392,
		38.727047, 36.890259, 32.188015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580826, 37.061268, 32.317173>,  <39.207218, 36.476017, 32.484390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580826, 37.061268, 32.317173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201439, 37.187225, 32.331341>,  <38.973808, 37.262798, 32.339840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201439, 37.187225, 32.331341>,  <39.580826, 37.061268, 32.317173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201439, 37.187225, 32.331341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303651, 0.871229, 0.385689,
		0.090593, 0.376568, -0.921948,
		-0.948467, 0.314892, 0.035418,
		38.916901, 37.281693, 32.341965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200325, 37.316738, 32.058163>,  <39.580826, 37.061268, 32.317173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200325, 37.316738, 32.058163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.558887, 37.192909, 32.185047>,  <40.774025, 37.118614, 32.261177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.558887, 37.192909, 32.185047>,  <40.200325, 37.316738, 32.058163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558887, 37.192909, 32.185047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105972, -0.844607, -0.524794,
		0.430376, 0.436814, -0.789918,
		0.896408, -0.309568, 0.317208,
		40.827808, 37.100040, 32.280209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680260, 37.085064, 31.474129>,  <40.200325, 37.316738, 32.058163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680260, 37.085064, 31.474129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.811813, 36.915291, 31.811575>,  <40.890747, 36.813427, 32.014042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.811813, 36.915291, 31.811575>,  <40.680260, 37.085064, 31.474129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811813, 36.915291, 31.811575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115711, -0.868469, -0.482051,
		0.937255, 0.256154, -0.236512,
		0.328883, -0.424437, 0.843617,
		40.910477, 36.787960, 32.064659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306828, 36.822170, 31.332298>,  <40.680260, 37.085064, 31.474129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306828, 36.822170, 31.332298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.184593, 36.601040, 31.642395>,  <41.111252, 36.468361, 31.828453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.184593, 36.601040, 31.642395>,  <41.306828, 36.822170, 31.332298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184593, 36.601040, 31.642395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005171, -0.813211, -0.581945,
		0.952151, -0.181842, 0.245646,
		-0.305584, -0.552830, 0.775240,
		41.092918, 36.435192, 31.874968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794235, 36.277740, 31.370935>,  <41.306828, 36.822170, 31.332298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794235, 36.277740, 31.370935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.495564, 36.149017, 31.603802>,  <41.316360, 36.071785, 31.743521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.495564, 36.149017, 31.603802>,  <41.794235, 36.277740, 31.370935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495564, 36.149017, 31.603802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037873, -0.894336, -0.445790,
		0.664108, -0.310813, 0.679967,
		-0.746676, -0.321805, 0.582165,
		41.271561, 36.052475, 31.778452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032101, 35.544079, 31.534298>,  <41.794235, 36.277740, 31.370935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032101, 35.544079, 31.534298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.651230, 35.550545, 31.656345>,  <41.422707, 35.554424, 31.729574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.651230, 35.550545, 31.656345>,  <42.032101, 35.544079, 31.534298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651230, 35.550545, 31.656345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057268, -0.990346, -0.126233,
		0.300133, -0.137670, 0.943911,
		-0.952177, 0.016169, 0.305120,
		41.365578, 35.555397, 31.747881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973103, 35.087212, 32.127903>,  <42.032101, 35.544079, 31.534298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973103, 35.087212, 32.127903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.634495, 35.126602, 31.918631>,  <41.431332, 35.150234, 31.793068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.634495, 35.126602, 31.918631>,  <41.973103, 35.087212, 32.127903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634495, 35.126602, 31.918631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050747, -0.963342, -0.263431,
		-0.529939, -0.249548, 0.810488,
		-0.846516, 0.098473, -0.523177,
		41.380539, 35.156143, 31.761677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631901, 34.373428, 32.081841>,  <41.973103, 35.087212, 32.127903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631901, 34.373428, 32.081841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.425266, 34.545219, 31.785547>,  <41.301285, 34.648293, 31.607771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.425266, 34.545219, 31.785547>,  <41.631901, 34.373428, 32.081841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425266, 34.545219, 31.785547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057184, -0.880480, -0.470622,
		-0.854321, -0.200761, 0.479408,
		-0.516591, 0.429476, -0.740732,
		41.270290, 34.674061, 31.563328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032017, 33.902058, 31.916332>,  <41.631901, 34.373428, 32.081841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032017, 33.902058, 31.916332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120312, 34.139660, 31.606899>,  <41.173290, 34.282223, 31.421240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120312, 34.139660, 31.606899>,  <41.032017, 33.902058, 31.916332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120312, 34.139660, 31.606899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002087, -0.793432, -0.608655,
		-0.975330, 0.132741, -0.176383,
		0.220742, 0.594008, -0.773581,
		41.186535, 34.317863, 31.374825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522064, 33.733349, 31.403088>,  <41.032017, 33.902058, 31.916332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522064, 33.733349, 31.403088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.823681, 33.902824, 31.202324>,  <41.004650, 34.004509, 31.081865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.823681, 33.902824, 31.202324>,  <40.522064, 33.733349, 31.403088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823681, 33.902824, 31.202324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033156, -0.738612, -0.673315,
		-0.655990, 0.524348, -0.542896,
		0.754041, 0.423688, -0.501907,
		41.049892, 34.029930, 31.051752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200172, 33.832340, 30.749809>,  <40.522064, 33.733349, 31.403088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200172, 33.832340, 30.749809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.596466, 33.859848, 30.702965>,  <40.834244, 33.876350, 30.674858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.596466, 33.859848, 30.702965>,  <40.200172, 33.832340, 30.749809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596466, 33.859848, 30.702965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079220, -0.407790, -0.909633,
		-0.110310, 0.910483, -0.398564,
		0.990735, 0.068767, -0.117112,
		40.893688, 33.880478, 30.667831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239403, 34.101807, 29.973526>,  <40.200172, 33.832340, 30.749809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239403, 34.101807, 29.973526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.568848, 33.917515, 30.105825>,  <40.766514, 33.806938, 30.185205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.568848, 33.917515, 30.105825>,  <40.239403, 34.101807, 29.973526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568848, 33.917515, 30.105825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006151, -0.575878, -0.817513,
		0.567123, 0.675346, -0.471465,
		0.823610, -0.460730, 0.330747,
		40.815929, 33.779297, 30.205050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708733, 33.975903, 29.339630>,  <40.239403, 34.101807, 29.973526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708733, 33.975903, 29.339630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793530, 33.735859, 29.648155>,  <40.844410, 33.591831, 29.833271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793530, 33.735859, 29.648155>,  <40.708733, 33.975903, 29.339630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793530, 33.735859, 29.648155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158607, -0.799916, -0.578773,
		0.964314, 0.000362, -0.264761,
		0.211996, -0.600112, 0.771313,
		40.857128, 33.555824, 29.879549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053860, 33.467365, 28.997395>,  <40.708733, 33.975903, 29.339630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053860, 33.467365, 28.997395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.948109, 33.301685, 29.345774>,  <40.884659, 33.202278, 29.554800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.948109, 33.301685, 29.345774>,  <41.053860, 33.467365, 28.997395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948109, 33.301685, 29.345774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036741, -0.898096, -0.438262,
		0.963721, -0.147865, 0.222214,
		-0.264373, -0.414198, 0.870946,
		40.868797, 33.177425, 29.607058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381710, 32.813587, 28.894484>,  <41.053860, 33.467365, 28.997395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381710, 32.813587, 28.894484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.131466, 32.755844, 29.201149>,  <40.981319, 32.721199, 29.385149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.131466, 32.755844, 29.201149>,  <41.381710, 32.813587, 28.894484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131466, 32.755844, 29.201149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280207, -0.875573, -0.393518,
		0.728078, -0.461013, 0.507316,
		-0.625609, -0.144358, 0.766664,
		40.943783, 32.712536, 29.431149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480057, 32.088795, 29.295462>,  <41.381710, 32.813587, 28.894484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480057, 32.088795, 29.295462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.098091, 32.164948, 29.386583>,  <40.868912, 32.210640, 29.441256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.098091, 32.164948, 29.386583>,  <41.480057, 32.088795, 29.295462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098091, 32.164948, 29.386583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229144, -0.960514, -0.157819,
		0.188764, -0.202904, 0.960832,
		-0.954914, 0.190378, 0.227805,
		40.811615, 32.222061, 29.454926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216347, 31.562302, 29.836340>,  <41.480057, 32.088795, 29.295462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216347, 31.562302, 29.836340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897442, 31.712812, 29.647541>,  <40.706097, 31.803118, 29.534262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897442, 31.712812, 29.647541>,  <41.216347, 31.562302, 29.836340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897442, 31.712812, 29.647541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276170, -0.922677, -0.269067,
		-0.536745, -0.084166, 0.839536,
		-0.797267, 0.376275, -0.471998,
		40.658260, 31.825695, 29.505941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571308, 31.095947, 29.966372>,  <41.216347, 31.562302, 29.836340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571308, 31.095947, 29.966372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.448895, 31.304657, 29.647852>,  <40.375446, 31.429884, 29.456739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.448895, 31.304657, 29.647852>,  <40.571308, 31.095947, 29.966372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448895, 31.304657, 29.647852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299598, -0.846717, -0.439671,
		-0.903651, 0.104016, 0.415447,
		-0.306033, 0.521776, -0.796300,
		40.357086, 31.461189, 29.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865971, 30.951159, 29.770651>,  <40.571308, 31.095947, 29.966372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865971, 30.951159, 29.770651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.025253, 31.085682, 29.429283>,  <40.120823, 31.166395, 29.224463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.025253, 31.085682, 29.429283>,  <39.865971, 30.951159, 29.770651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025253, 31.085682, 29.429283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409596, -0.767275, -0.493478,
		-0.820768, 0.546065, -0.167786,
		0.398209, 0.336306, -0.853421,
		40.144714, 31.186573, 29.173256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.326550, 30.934977, 29.289148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.648949, 30.955524, 29.053276>,  <39.842388, 30.967854, 28.911753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.648949, 30.955524, 29.053276>,  <39.326550, 30.934977, 29.289148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648949, 30.955524, 29.053276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325643, -0.793432, -0.514221,
		-0.494284, 0.606488, -0.622780,
		0.806002, 0.051367, -0.589679,
		39.890751, 30.970934, 28.876371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058640, 30.931795, 28.687275>,  <39.326550, 30.934977, 29.289148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058640, 30.931795, 28.687275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436615, 30.825584, 28.610773>,  <39.663403, 30.761858, 28.564873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436615, 30.825584, 28.610773>,  <39.058640, 30.931795, 28.687275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436615, 30.825584, 28.610773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327228, -0.771015, -0.546313,
		-0.002399, 0.578819, -0.815453,
		0.944942, -0.265528, -0.191255,
		39.720097, 30.745926, 28.553396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103268, 30.790796, 27.901196>,  <39.058640, 30.931795, 28.687275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103268, 30.790796, 27.901196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418900, 30.604452, 28.061361>,  <39.608276, 30.492645, 28.157461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418900, 30.604452, 28.061361>,  <39.103268, 30.790796, 27.901196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418900, 30.604452, 28.061361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084252, -0.727741, -0.680658,
		0.608490, 0.503355, -0.613493,
		0.789076, -0.465862, 0.400414,
		39.655621, 30.464693, 28.181486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553307, 30.628658, 27.308199>,  <39.103268, 30.790796, 27.901196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553307, 30.628658, 27.308199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.638493, 30.382872, 27.612061>,  <39.689606, 30.235399, 27.794378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.638493, 30.382872, 27.612061>,  <39.553307, 30.628658, 27.308199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638493, 30.382872, 27.612061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134977, -0.788537, -0.599992,
		0.967691, 0.025242, -0.250871,
		0.212966, -0.614469, 0.759654,
		39.702381, 30.198530, 27.839956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000145, 30.154116, 27.017239>,  <39.553307, 30.628658, 27.308199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000145, 30.154116, 27.017239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867027, 29.963020, 27.342449>,  <39.787155, 29.848364, 27.537575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867027, 29.963020, 27.342449>,  <40.000145, 30.154116, 27.017239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867027, 29.963020, 27.342449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101705, -0.875327, -0.472714,
		0.937497, -0.074630, 0.339896,
		-0.332799, -0.477737, 0.813027,
		39.767189, 29.819698, 27.586357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384335, 29.571260, 27.008858>,  <40.000145, 30.154116, 27.017239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384335, 29.571260, 27.008858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086922, 29.504156, 27.267782>,  <39.908474, 29.463894, 27.423138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086922, 29.504156, 27.267782>,  <40.384335, 29.571260, 27.008858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086922, 29.504156, 27.267782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019906, -0.962038, -0.272190,
		0.668401, -0.215268, 0.711969,
		-0.743535, -0.167759, 0.647312,
		39.863861, 29.453829, 27.461975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367149, 28.951694, 27.019047>,  <40.384335, 29.571260, 27.008858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367149, 28.951694, 27.019047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013859, 28.973114, 27.205397>,  <39.801884, 28.985966, 27.317207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013859, 28.973114, 27.205397>,  <40.367149, 28.951694, 27.019047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013859, 28.973114, 27.205397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304314, -0.821314, -0.482532,
		0.356793, -0.567958, 0.741702,
		-0.883228, 0.053547, 0.465877,
		39.748890, 28.989178, 27.345160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200996, 28.328218, 27.368008>,  <40.367149, 28.951694, 27.019047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200996, 28.328218, 27.368008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840405, 28.493677, 27.317049>,  <39.624050, 28.592953, 27.286474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840405, 28.493677, 27.317049>,  <40.200996, 28.328218, 27.368008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840405, 28.493677, 27.317049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302000, -0.811991, -0.499466,
		-0.310048, -0.411785, 0.856915,
		-0.901480, 0.413647, -0.127398,
		39.569962, 28.617771, 27.278830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778576, 27.774397, 27.326330>,  <40.200996, 28.328218, 27.368008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778576, 27.774397, 27.326330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.572884, 28.066587, 27.146564>,  <39.449471, 28.241901, 27.038706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.572884, 28.066587, 27.146564>,  <39.778576, 27.774397, 27.326330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572884, 28.066587, 27.146564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266707, -0.634223, -0.725692,
		-0.815130, -0.253309, 0.520959,
		-0.514228, 0.730476, -0.449415,
		39.418613, 28.285730, 27.011740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025673, 27.554770, 27.304407>,  <39.778576, 27.774397, 27.326330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025673, 27.554770, 27.304407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.089668, 27.820726, 27.012566>,  <39.128067, 27.980301, 26.837460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.089668, 27.820726, 27.012566>,  <39.025673, 27.554770, 27.304407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089668, 27.820726, 27.012566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521040, -0.570890, -0.634510,
		-0.838404, 0.481668, 0.255098,
		0.159990, 0.664891, -0.729605,
		39.137665, 28.020193, 26.793684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442963, 27.507895, 26.862236>,  <39.025673, 27.554770, 27.304407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442963, 27.507895, 26.862236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.694832, 27.716349, 26.631784>,  <38.845955, 27.841421, 26.493513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.694832, 27.716349, 26.631784>,  <38.442963, 27.507895, 26.862236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694832, 27.716349, 26.631784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344438, -0.477453, -0.808332,
		-0.696326, 0.707428, -0.121142,
		0.629676, 0.521137, -0.576128,
		38.883736, 27.872690, 26.458946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177628, 27.582861, 26.259398>,  <38.442963, 27.507895, 26.862236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177628, 27.582861, 26.259398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.558434, 27.657057, 26.162016>,  <38.786915, 27.701574, 26.103586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.558434, 27.657057, 26.162016>,  <38.177628, 27.582861, 26.259398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558434, 27.657057, 26.162016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122176, -0.498991, -0.857952,
		-0.280623, 0.846523, -0.452382,
		0.952010, 0.185491, -0.243453,
		38.844036, 27.712704, 26.088980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114605, 27.790764, 25.587776>,  <38.177628, 27.582861, 26.259398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114605, 27.790764, 25.587776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.496891, 27.686480, 25.642380>,  <38.726261, 27.623909, 25.675142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.496891, 27.686480, 25.642380>,  <38.114605, 27.790764, 25.587776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496891, 27.686480, 25.642380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035658, -0.563037, -0.825662,
		0.292121, 0.784231, -0.547400,
		0.955716, -0.260712, 0.136511,
		38.783607, 27.608267, 25.683332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409763, 27.889893, 24.919821>,  <38.114605, 27.790764, 25.587776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409763, 27.889893, 24.919821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660797, 27.639645, 25.105181>,  <38.811417, 27.489496, 25.216396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660797, 27.639645, 25.105181>,  <38.409763, 27.889893, 24.919821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660797, 27.639645, 25.105181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118868, -0.511233, -0.851182,
		0.769419, 0.589274, -0.246477,
		0.627586, -0.625618, 0.463399,
		38.849072, 27.451960, 25.244200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902851, 27.821060, 24.458593>,  <38.409763, 27.889893, 24.919821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902851, 27.821060, 24.458593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.951065, 27.502523, 24.695679>,  <38.979992, 27.311401, 24.837929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.951065, 27.502523, 24.695679>,  <38.902851, 27.821060, 24.458593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951065, 27.502523, 24.695679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153632, -0.574908, -0.803665,
		0.980749, 0.187930, 0.053047,
		0.120536, -0.796344, 0.592712,
		38.987225, 27.263620, 24.873493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399090, 27.403500, 24.150368>,  <38.902851, 27.821060, 24.458593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399090, 27.403500, 24.150368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211174, 27.142735, 24.388460>,  <39.098423, 26.986275, 24.531317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211174, 27.142735, 24.388460>,  <39.399090, 27.403500, 24.150368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211174, 27.142735, 24.388460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095337, -0.707798, -0.699952,
		0.877613, -0.272085, 0.394671,
		-0.469794, -0.651914, 0.595233,
		39.070236, 26.947161, 24.567030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800308, 26.850727, 24.126463>,  <39.399090, 27.403500, 24.150368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800308, 26.850727, 24.126463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449848, 26.705824, 24.253662>,  <39.239571, 26.618881, 24.329983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449848, 26.705824, 24.253662>,  <39.800308, 26.850727, 24.126463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449848, 26.705824, 24.253662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049879, -0.724300, -0.687678,
		0.479444, -0.586650, 0.652668,
		-0.876154, -0.362258, 0.317999,
		39.187000, 26.597147, 24.349062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809578, 26.115053, 24.017443>,  <39.800308, 26.850727, 24.126463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809578, 26.115053, 24.017443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.415192, 26.181807, 24.018860>,  <39.178558, 26.221859, 24.019711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.415192, 26.181807, 24.018860>,  <39.809578, 26.115053, 24.017443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415192, 26.181807, 24.018860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135586, -0.788327, -0.600131,
		-0.097358, -0.592192, 0.799894,
		-0.985970, 0.166882, 0.003543,
		39.119400, 26.231871, 24.019922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493652, 25.505962, 24.229580>,  <39.809578, 26.115053, 24.017443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493652, 25.505962, 24.229580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184795, 25.688686, 24.052891>,  <38.999481, 25.798321, 23.946877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184795, 25.688686, 24.052891>,  <39.493652, 25.505962, 24.229580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184795, 25.688686, 24.052891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319001, -0.879850, -0.352282,
		-0.549576, -0.131102, 0.825093,
		-0.772143, 0.456811, -0.441723,
		38.953152, 25.825729, 23.920374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001236, 25.016224, 24.207602>,  <39.493652, 25.505962, 24.229580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001236, 25.016224, 24.207602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870441, 25.271845, 23.929123>,  <38.791965, 25.425217, 23.762035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870441, 25.271845, 23.929123>,  <39.001236, 25.016224, 24.207602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870441, 25.271845, 23.929123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301495, -0.768741, -0.564036,
		-0.895645, 0.025468, 0.444040,
		-0.326987, 0.639053, -0.696198,
		38.772346, 25.463560, 23.720264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324886, 24.771816, 23.981691>,  <39.001236, 25.016224, 24.207602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324886, 24.771816, 23.981691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.452244, 25.007210, 23.684420>,  <38.528656, 25.148445, 23.506056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.452244, 25.007210, 23.684420>,  <38.324886, 24.771816, 23.981691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452244, 25.007210, 23.684420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236277, -0.709970, -0.663412,
		-0.918041, 0.386820, -0.087003,
		0.318391, 0.588483, -0.743179,
		38.547760, 25.183754, 23.461466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779541, 24.681103, 23.425991>,  <38.324886, 24.771816, 23.981691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779541, 24.681103, 23.425991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110847, 24.823656, 23.253035>,  <38.309631, 24.909189, 23.149261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110847, 24.823656, 23.253035>,  <37.779541, 24.681103, 23.425991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110847, 24.823656, 23.253035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008697, -0.779753, -0.626027,
		-0.560265, 0.514758, -0.648944,
		0.828268, 0.356385, -0.432391,
		38.359329, 24.930573, 23.123318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096970, 25.093353, 23.494232>,  <37.779541, 24.681103, 23.425991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096970, 25.093353, 23.494232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.063110, 24.872454, 23.825979>,  <37.042793, 24.739914, 24.025028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.063110, 24.872454, 23.825979>,  <37.096970, 25.093353, 23.494232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063110, 24.872454, 23.825979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923455, -0.356114, -0.142875,
		0.374253, 0.753792, 0.540122,
		-0.084647, -0.552250, 0.829370,
		37.037716, 24.706779, 24.074791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283356, 24.779303, 22.865736>,  <37.096970, 25.093353, 23.494232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283356, 24.779303, 22.865736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142757, 24.757851, 22.491877>,  <37.058399, 24.744980, 22.267561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142757, 24.757851, 22.491877>,  <37.283356, 24.779303, 22.865736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142757, 24.757851, 22.491877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399258, 0.911603, 0.097843,
		0.846783, 0.407558, -0.341841,
		-0.351500, -0.053631, -0.934650,
		37.037308, 24.741762, 22.211481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546864, 25.362640, 22.372499>,  <37.283356, 24.779303, 22.865736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546864, 25.362640, 22.372499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.178925, 25.267546, 22.247683>,  <36.958160, 25.210489, 22.172792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.178925, 25.267546, 22.247683>,  <37.546864, 25.362640, 22.372499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178925, 25.267546, 22.247683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316300, 0.919984, 0.231483,
		0.232041, 0.311627, -0.921436,
		-0.919843, -0.237736, -0.312042,
		36.902973, 25.196224, 22.154070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268341, 25.921213, 21.837221>,  <37.546864, 25.362640, 22.372499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268341, 25.921213, 21.837221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.952217, 25.735785, 21.997477>,  <36.762543, 25.624527, 22.093630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.952217, 25.735785, 21.997477>,  <37.268341, 25.921213, 21.837221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952217, 25.735785, 21.997477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380003, 0.883780, 0.273002,
		-0.480634, 0.063512, -0.874618,
		-0.790309, -0.463572, 0.400640,
		36.715126, 25.596712, 22.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647823, 26.268265, 21.649593>,  <37.268341, 25.921213, 21.837221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647823, 26.268265, 21.649593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535965, 26.062515, 21.973869>,  <36.468849, 25.939066, 22.168434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535965, 26.062515, 21.973869>,  <36.647823, 26.268265, 21.649593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535965, 26.062515, 21.973869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406598, 0.828369, 0.385335,
		-0.869755, -0.221865, -0.440797,
		-0.279650, -0.514374, 0.810688,
		36.452068, 25.908203, 22.217075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927612, 26.518938, 21.837168>,  <36.647823, 26.268265, 21.649593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927612, 26.518938, 21.837168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098431, 26.352383, 22.158228>,  <36.200924, 26.252449, 22.350864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098431, 26.352383, 22.158228>,  <35.927612, 26.518938, 21.837168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098431, 26.352383, 22.158228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226966, 0.809885, 0.540900,
		-0.875281, -0.413165, 0.251354,
		0.427048, -0.416390, 0.802651,
		36.226543, 26.227465, 22.399023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544106, 26.647854, 22.359600>,  <35.927612, 26.518938, 21.837168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544106, 26.647854, 22.359600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886513, 26.554846, 22.544279>,  <36.091957, 26.499041, 22.655087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886513, 26.554846, 22.544279>,  <35.544106, 26.647854, 22.359600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886513, 26.554846, 22.544279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082546, 0.820186, 0.566111,
		-0.510312, -0.522713, 0.682900,
		0.856019, -0.232522, 0.461699,
		36.143318, 26.485088, 22.682789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390308, 26.873363, 22.964453>,  <35.544106, 26.647854, 22.359600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390308, 26.873363, 22.964453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789124, 26.845762, 22.950886>,  <36.028412, 26.829203, 22.942745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789124, 26.845762, 22.950886>,  <35.390308, 26.873363, 22.964453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789124, 26.845762, 22.950886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075556, 0.797566, 0.598482,
		-0.014246, -0.599273, 0.800418,
		0.997040, -0.069002, -0.033916,
		36.088234, 26.825062, 22.940710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513283, 27.003372, 23.663193>,  <35.390308, 26.873363, 22.964453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513283, 27.003372, 23.663193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862591, 27.050079, 23.473974>,  <36.072174, 27.078104, 23.360443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862591, 27.050079, 23.473974>,  <35.513283, 27.003372, 23.663193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862591, 27.050079, 23.473974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281906, 0.670783, 0.685988,
		0.397410, -0.732404, 0.552855,
		0.873266, 0.116766, -0.473045,
		36.124569, 27.085110, 23.332060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143318, 26.939013, 24.240728>,  <35.513283, 27.003372, 23.663193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143318, 26.939013, 24.240728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285938, 27.154911, 23.935692>,  <36.371510, 27.284451, 23.752670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285938, 27.154911, 23.935692>,  <36.143318, 26.939013, 24.240728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285938, 27.154911, 23.935692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370032, 0.667906, 0.645738,
		0.857876, -0.512419, 0.038415,
		0.356546, 0.539749, -0.762592,
		36.392902, 27.316835, 23.706915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802975, 27.050558, 24.499031>,  <36.143318, 26.939013, 24.240728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802975, 27.050558, 24.499031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763092, 27.311537, 24.198532>,  <36.739162, 27.468124, 24.018232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763092, 27.311537, 24.198532>,  <36.802975, 27.050558, 24.499031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763092, 27.311537, 24.198532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228731, 0.749818, 0.620850,
		0.968370, -0.109930, -0.223997,
		-0.099707, 0.652448, -0.751246,
		36.733181, 27.507271, 23.973158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439404, 27.502916, 24.478676>,  <36.802975, 27.050558, 24.499031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439404, 27.502916, 24.478676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.169456, 27.720402, 24.279102>,  <37.007488, 27.850893, 24.159359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.169456, 27.720402, 24.279102>,  <37.439404, 27.502916, 24.478676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169456, 27.720402, 24.279102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222298, 0.794494, 0.565122,
		0.703664, 0.270469, -0.657042,
		-0.674864, 0.543715, -0.498932,
		36.966999, 27.883516, 24.129423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936012, 28.019361, 24.282486>,  <37.439404, 27.502916, 24.478676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936012, 28.019361, 24.282486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553715, 28.136871, 24.276049>,  <37.324337, 28.207376, 24.272186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553715, 28.136871, 24.276049>,  <37.936012, 28.019361, 24.282486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553715, 28.136871, 24.276049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205961, 0.707112, 0.676441,
		0.210098, 0.643188, -0.736321,
		-0.955740, 0.293772, -0.016091,
		37.266994, 28.225002, 24.271221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886440, 28.738520, 24.232916>,  <37.936012, 28.019361, 24.282486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886440, 28.738520, 24.232916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548473, 28.620670, 24.411497>,  <37.345695, 28.549961, 24.518646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548473, 28.620670, 24.411497>,  <37.886440, 28.738520, 24.232916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548473, 28.620670, 24.411497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135662, 0.689325, 0.711637,
		-0.517414, 0.661838, -0.542451,
		-0.844913, -0.294621, 0.446453,
		37.294998, 28.532284, 24.545433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583458, 29.346014, 24.453169>,  <37.886440, 28.738520, 24.232916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583458, 29.346014, 24.453169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407970, 29.066727, 24.679447>,  <37.302677, 28.899155, 24.815214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407970, 29.066727, 24.679447>,  <37.583458, 29.346014, 24.453169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407970, 29.066727, 24.679447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003225, 0.630735, 0.775992,
		-0.898618, 0.338619, -0.278968,
		-0.438721, -0.698220, 0.565697,
		37.276356, 28.857262, 24.849155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141857, 29.704523, 24.751053>,  <37.583458, 29.346014, 24.453169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141857, 29.704523, 24.751053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132545, 29.372025, 24.973221>,  <37.126957, 29.172525, 25.106522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132545, 29.372025, 24.973221>,  <37.141857, 29.704523, 24.751053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132545, 29.372025, 24.973221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050679, 0.553874, 0.831057,
		-0.998444, 0.047494, 0.029234,
		-0.023278, -0.831245, 0.555419,
		37.125561, 29.122652, 25.139847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859722, 30.000744, 25.383595>,  <37.141857, 29.704523, 24.751053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859722, 30.000744, 25.383595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910046, 29.627720, 25.518950>,  <36.940239, 29.403906, 25.600163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910046, 29.627720, 25.518950>,  <36.859722, 30.000744, 25.383595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910046, 29.627720, 25.518950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028036, 0.344305, 0.938439,
		-0.991658, -0.108579, 0.069462,
		0.125811, -0.932558, 0.338389,
		36.947788, 29.347952, 25.620466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222488, 29.668648, 25.763527>,  <36.859722, 30.000744, 25.383595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222488, 29.668648, 25.763527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575039, 29.530935, 25.892925>,  <36.786568, 29.448307, 25.970564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575039, 29.530935, 25.892925>,  <36.222488, 29.668648, 25.763527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575039, 29.530935, 25.892925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122923, 0.494048, 0.860701,
		-0.456146, -0.798365, 0.393121,
		0.881374, -0.344282, 0.323495,
		36.839451, 29.427650, 25.989973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107876, 29.515263, 26.426628>,  <36.222488, 29.668648, 25.763527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107876, 29.515263, 26.426628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.500500, 29.574383, 26.378124>,  <36.736073, 29.609856, 26.349022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.500500, 29.574383, 26.378124>,  <36.107876, 29.515263, 26.426628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500500, 29.574383, 26.378124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004250, 0.617251, 0.786755,
		0.191132, -0.772759, 0.605238,
		0.981555, 0.147802, -0.121261,
		36.794968, 29.618723, 26.341745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183292, 29.651196, 27.079277>,  <36.107876, 29.515263, 26.426628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183292, 29.651196, 27.079277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541172, 29.757353, 26.935564>,  <36.755898, 29.821047, 26.849337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541172, 29.757353, 26.935564>,  <36.183292, 29.651196, 27.079277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541172, 29.757353, 26.935564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115600, 0.639366, 0.760163,
		0.431454, -0.721649, 0.541360,
		0.894697, 0.265394, -0.359280,
		36.809582, 29.836971, 26.827780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710159, 29.644312, 27.657347>,  <36.183292, 29.651196, 27.079277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710159, 29.644312, 27.657347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.895901, 29.881767, 27.394449>,  <37.007347, 30.024240, 27.236712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.895901, 29.881767, 27.394449>,  <36.710159, 29.644312, 27.657347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895901, 29.881767, 27.394449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299790, 0.592938, 0.747362,
		0.833366, -0.544078, 0.097369,
		0.464357, 0.593636, -0.657243,
		37.035210, 30.059858, 27.197277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384781, 29.799942, 28.026731>,  <36.710159, 29.644312, 27.657347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384781, 29.799942, 28.026731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293983, 30.057842, 27.734766>,  <37.239506, 30.212582, 27.559587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293983, 30.057842, 27.734766>,  <37.384781, 29.799942, 28.026731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293983, 30.057842, 27.734766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013421, 0.747335, 0.664313,
		0.973805, 0.160588, -0.160983,
		-0.226989, 0.644750, -0.729913,
		37.225887, 30.251266, 27.515793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.335659, 32.791050, 30.786978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.148388, 32.997826, 30.500320>,  <41.036026, 33.121891, 30.328325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.148388, 32.997826, 30.500320>,  <41.335659, 32.791050, 30.786978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148388, 32.997826, 30.500320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462484, 0.834419, 0.299755,
		0.752938, -0.191097, -0.629735,
		-0.468181, 0.516939, -0.716645,
		41.007935, 33.152908, 30.285326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958038, 33.257587, 30.515598>,  <41.335659, 32.791050, 30.786978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958038, 33.257587, 30.515598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606346, 33.424873, 30.424343>,  <41.395329, 33.525246, 30.369589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606346, 33.424873, 30.424343>,  <41.958038, 33.257587, 30.515598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606346, 33.424873, 30.424343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217949, 0.778960, 0.587979,
		0.423611, 0.467249, -0.776037,
		-0.879234, 0.418210, -0.228140,
		41.342575, 33.550335, 30.355902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154118, 33.945667, 30.486179>,  <41.958038, 33.257587, 30.515598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154118, 33.945667, 30.486179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.755085, 33.938786, 30.513124>,  <41.515667, 33.934654, 30.529291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.755085, 33.938786, 30.513124>,  <42.154118, 33.945667, 30.486179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755085, 33.938786, 30.513124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025176, 0.813723, 0.580707,
		-0.064808, 0.580998, -0.811321,
		-0.997580, -0.017209, 0.067363,
		41.455811, 33.933624, 30.533333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934902, 34.617268, 30.388309>,  <42.154118, 33.945667, 30.486179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934902, 34.617268, 30.388309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643364, 34.418644, 30.576868>,  <41.468441, 34.299469, 30.690004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643364, 34.418644, 30.576868>,  <41.934902, 34.617268, 30.388309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643364, 34.418644, 30.576868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215327, 0.819794, 0.530633,
		-0.649942, 0.285243, -0.704424,
		-0.728842, -0.496562, 0.471398,
		41.424713, 34.269676, 30.718288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314041, 35.012794, 30.287733>,  <41.934902, 34.617268, 30.388309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314041, 35.012794, 30.287733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264072, 34.792915, 30.618122>,  <41.234089, 34.660988, 30.816355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264072, 34.792915, 30.618122>,  <41.314041, 35.012794, 30.287733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264072, 34.792915, 30.618122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126055, 0.834540, 0.536333,
		-0.984126, -0.037117, -0.173547,
		-0.124925, -0.549695, 0.825971,
		41.226597, 34.628006, 30.865913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676441, 35.260006, 30.568672>,  <41.314041, 35.012794, 30.287733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676441, 35.260006, 30.568672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.855675, 35.069218, 30.871120>,  <40.963215, 34.954746, 31.052589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.855675, 35.069218, 30.871120>,  <40.676441, 35.260006, 30.568672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855675, 35.069218, 30.871120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146298, 0.795258, 0.588354,
		-0.881938, -0.374254, 0.286566,
		0.448088, -0.476968, 0.756121,
		40.990101, 34.926128, 31.097958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259377, 35.306931, 31.132547>,  <40.676441, 35.260006, 30.568672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259377, 35.306931, 31.132547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.599625, 35.253731, 31.336021>,  <40.803772, 35.221809, 31.458105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.599625, 35.253731, 31.336021>,  <40.259377, 35.306931, 31.132547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599625, 35.253731, 31.336021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098328, 0.910170, 0.402397,
		-0.516509, -0.392304, 0.761128,
		0.850617, -0.133001, 0.508685,
		40.854809, 35.213829, 31.488626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068741, 35.531075, 31.739346>,  <40.259377, 35.306931, 31.132547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068741, 35.531075, 31.739346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.468643, 35.536663, 31.746107>,  <40.708584, 35.540016, 31.750164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.468643, 35.536663, 31.746107>,  <40.068741, 35.531075, 31.739346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468643, 35.536663, 31.746107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020092, 0.892409, 0.450780,
		-0.008786, -0.451011, 0.892475,
		0.999760, 0.013971, 0.016902,
		40.768570, 35.540855, 31.751179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226719, 35.636768, 32.440536>,  <40.068741, 35.531075, 31.739346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226719, 35.636768, 32.440536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.544422, 35.757896, 32.229843>,  <40.735043, 35.830574, 32.103428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.544422, 35.757896, 32.229843>,  <40.226719, 35.636768, 32.440536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544422, 35.757896, 32.229843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118136, 0.773427, 0.622780,
		0.595985, -0.556875, 0.578526,
		0.794258, 0.302822, -0.526738,
		40.782700, 35.848743, 32.071823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720169, 35.851547, 32.956909>,  <40.226719, 35.636768, 32.440536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720169, 35.851547, 32.956909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821663, 36.041737, 32.619972>,  <40.882557, 36.155849, 32.417809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821663, 36.041737, 32.619972>,  <40.720169, 35.851547, 32.956909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821663, 36.041737, 32.619972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085516, 0.856408, 0.509168,
		0.963487, -0.201226, 0.176637,
		0.253731, 0.475472, -0.842346,
		40.897781, 36.184380, 32.367268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304222, 36.173141, 33.162998>,  <40.720169, 35.851547, 32.956909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304222, 36.173141, 33.162998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.164078, 36.343143, 32.829144>,  <41.079990, 36.445145, 32.628830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.164078, 36.343143, 32.829144>,  <41.304222, 36.173141, 33.162998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164078, 36.343143, 32.829144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243751, 0.901790, 0.356875,
		0.904339, -0.078407, -0.419550,
		-0.350365, 0.425002, -0.834636,
		41.058968, 36.470646, 32.578754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904106, 36.604465, 32.837429>,  <41.304222, 36.173141, 33.162998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904106, 36.604465, 32.837429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550602, 36.750721, 32.720619>,  <41.338501, 36.838474, 32.650532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550602, 36.750721, 32.720619>,  <41.904106, 36.604465, 32.837429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550602, 36.750721, 32.720619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290450, 0.917920, 0.270301,
		0.366888, 0.154062, -0.917419,
		-0.883760, 0.365635, -0.292026,
		41.285473, 36.860413, 32.633011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078880, 37.158627, 32.392982>,  <41.904106, 36.604465, 32.837429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078880, 37.158627, 32.392982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707623, 37.236301, 32.520004>,  <41.484867, 37.282906, 32.596218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707623, 37.236301, 32.520004>,  <42.078880, 37.158627, 32.392982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707623, 37.236301, 32.520004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271878, 0.936363, 0.222050,
		-0.254223, 0.292429, -0.921876,
		-0.928145, 0.194187, 0.317550,
		41.429180, 37.294559, 32.615269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915302, 37.838036, 32.122658>,  <42.078880, 37.158627, 32.392982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915302, 37.838036, 32.122658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735191, 37.742683, 32.466850>,  <41.627125, 37.685474, 32.673367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735191, 37.742683, 32.466850>,  <41.915302, 37.838036, 32.122658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735191, 37.742683, 32.466850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273834, 0.880398, 0.387188,
		-0.849861, 0.409972, -0.331149,
		-0.450279, -0.238376, 0.860480,
		41.600109, 37.671169, 32.724995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819656, 38.557137, 32.548508>,  <41.915302, 37.838036, 32.122658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819656, 38.557137, 32.548508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050106, 38.766739, 32.297592>,  <42.188377, 38.892502, 32.147041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050106, 38.766739, 32.297592>,  <41.819656, 38.557137, 32.548508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050106, 38.766739, 32.297592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246546, -0.620301, -0.744608,
		-0.779289, 0.583646, -0.228181,
		0.576128, 0.524008, -0.627290,
		42.222946, 38.923943, 32.109406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449371, 38.667923, 31.900936>,  <41.819656, 38.557137, 32.548508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449371, 38.667923, 31.900936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827496, 38.715271, 31.779366>,  <42.054371, 38.743679, 31.706423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827496, 38.715271, 31.779366>,  <41.449371, 38.667923, 31.900936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827496, 38.715271, 31.779366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218017, -0.463755, -0.858720,
		-0.242596, 0.878020, -0.412587,
		0.945312, 0.118371, -0.303929,
		42.111088, 38.750782, 31.688187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445522, 38.919735, 31.185198>,  <41.449371, 38.667923, 31.900936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445522, 38.919735, 31.185198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811142, 38.763885, 31.230278>,  <42.030514, 38.670376, 31.257326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811142, 38.763885, 31.230278>,  <41.445522, 38.919735, 31.185198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811142, 38.763885, 31.230278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105130, -0.495956, -0.861960,
		0.391737, 0.776027, -0.494291,
		0.914051, -0.389627, 0.112701,
		42.085358, 38.646999, 31.264088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778431, 39.034801, 30.511776>,  <41.445522, 38.919735, 31.185198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778431, 39.034801, 30.511776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972584, 38.739456, 30.699064>,  <42.089077, 38.562248, 30.811438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972584, 38.739456, 30.699064>,  <41.778431, 39.034801, 30.511776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972584, 38.739456, 30.699064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134353, -0.466184, -0.874427,
		0.863917, 0.487338, -0.127076,
		0.485382, -0.738359, 0.468220,
		42.118198, 38.517948, 30.839531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349823, 38.873817, 30.075817>,  <41.778431, 39.034801, 30.511776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349823, 38.873817, 30.075817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341209, 38.557629, 30.320665>,  <42.336040, 38.367916, 30.467575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341209, 38.557629, 30.320665>,  <42.349823, 38.873817, 30.075817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341209, 38.557629, 30.320665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101382, -0.610833, -0.785242,
		0.994615, 0.045150, 0.093292,
		-0.021532, -0.790471, 0.612121,
		42.334751, 38.320488, 30.504301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883762, 38.394669, 29.817633>,  <42.349823, 38.873817, 30.075817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883762, 38.394669, 29.817633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.652107, 38.164143, 30.048271>,  <42.513115, 38.025826, 30.186655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.652107, 38.164143, 30.048271>,  <42.883762, 38.394669, 29.817633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652107, 38.164143, 30.048271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025353, -0.694207, -0.719329,
		0.814838, -0.431207, 0.387428,
		-0.579135, -0.576314, 0.576598,
		42.478367, 37.991249, 30.221251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184631, 37.803650, 29.793268>,  <42.883762, 38.394669, 29.817633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184631, 37.803650, 29.793268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807186, 37.704929, 29.881525>,  <42.580719, 37.645699, 29.934479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807186, 37.704929, 29.881525>,  <43.184631, 37.803650, 29.793268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807186, 37.704929, 29.881525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049620, -0.764407, -0.642821,
		0.327309, -0.595627, 0.733551,
		-0.943614, -0.246800, 0.220643,
		42.524101, 37.630890, 29.947718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236641, 37.173565, 29.700405>,  <43.184631, 37.803650, 29.793268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236641, 37.173565, 29.700405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841618, 37.235165, 29.687649>,  <42.604603, 37.272125, 29.679995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841618, 37.235165, 29.687649>,  <43.236641, 37.173565, 29.700405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841618, 37.235165, 29.687649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075984, -0.644775, -0.760587,
		-0.137694, -0.748699, 0.648453,
		-0.987556, 0.154000, -0.031892,
		42.545349, 37.281364, 29.678082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940639, 36.494686, 29.561562>,  <43.236641, 37.173565, 29.700405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940639, 36.494686, 29.561562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639000, 36.743809, 29.478184>,  <42.458015, 36.893280, 29.428156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639000, 36.743809, 29.478184>,  <42.940639, 36.494686, 29.561562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639000, 36.743809, 29.478184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227409, -0.545365, -0.806761,
		-0.616135, -0.560973, 0.552890,
		-0.754097, 0.622806, -0.208448,
		42.412769, 36.930649, 29.415649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409592, 36.079010, 29.591713>,  <42.940639, 36.494686, 29.561562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409592, 36.079010, 29.591713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.296173, 36.397461, 29.377880>,  <42.228123, 36.588531, 29.249580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.296173, 36.397461, 29.377880>,  <42.409592, 36.079010, 29.591713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296173, 36.397461, 29.377880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313044, -0.603770, -0.733120,
		-0.906423, -0.040527, 0.420421,
		-0.283549, 0.796128, -0.534584,
		42.211109, 36.636299, 29.217505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777149, 35.934044, 29.294558>,  <42.409592, 36.079010, 29.591713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777149, 35.934044, 29.294558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.881203, 36.242889, 29.062635>,  <41.943634, 36.428196, 28.923483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.881203, 36.242889, 29.062635>,  <41.777149, 35.934044, 29.294558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881203, 36.242889, 29.062635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474589, -0.420698, -0.773162,
		-0.840891, 0.476292, 0.257000,
		0.260131, 0.772113, -0.579804,
		41.959244, 36.474522, 28.888695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101322, 36.098465, 28.945919>,  <41.777149, 35.934044, 29.294558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101322, 36.098465, 28.945919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429489, 36.224426, 28.755026>,  <41.626389, 36.300003, 28.640490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429489, 36.224426, 28.755026>,  <41.101322, 36.098465, 28.945919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429489, 36.224426, 28.755026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287538, -0.494206, -0.820416,
		-0.494206, 0.810305, -0.314907,
		0.820416, 0.314907, -0.477233,
		41.675613, 36.318897, 28.611856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826744, 36.233448, 28.461760>,  <41.101322, 36.098465, 28.945919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826744, 36.233448, 28.461760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.216801, 36.201088, 28.379240>,  <41.450832, 36.181671, 28.329727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.216801, 36.201088, 28.379240>,  <40.826744, 36.233448, 28.461760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216801, 36.201088, 28.379240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200378, -0.719452, -0.665010,
		-0.094623, 0.689815, -0.717776,
		0.975138, -0.080902, -0.206300,
		41.509342, 36.176819, 28.317350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912689, 36.233673, 27.647221>,  <40.826744, 36.233448, 28.461760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912689, 36.233673, 27.647221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.257465, 36.088776, 27.789114>,  <41.464333, 36.001839, 27.874250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.257465, 36.088776, 27.789114>,  <40.912689, 36.233673, 27.647221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257465, 36.088776, 27.789114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063792, -0.771587, -0.632917,
		0.502977, 0.522909, -0.688172,
		0.861943, -0.362242, 0.354733,
		41.516048, 35.980103, 27.895535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892368, 36.644817, 27.184101>,  <40.912689, 36.233673, 27.647221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892368, 36.644817, 27.184101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.626545, 36.781239, 26.918154>,  <40.467052, 36.863091, 26.758585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.626545, 36.781239, 26.918154>,  <40.892368, 36.644817, 27.184101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626545, 36.781239, 26.918154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367572, 0.625470, 0.688242,
		0.650579, 0.701764, -0.290301,
		-0.664558, 0.341049, -0.664867,
		40.427177, 36.883553, 26.718695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087124, 37.326134, 27.173683>,  <40.892368, 36.644817, 27.184101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087124, 37.326134, 27.173683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722885, 37.316277, 27.008661>,  <40.504341, 37.310364, 26.909649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722885, 37.316277, 27.008661>,  <41.087124, 37.326134, 27.173683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722885, 37.316277, 27.008661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280273, 0.770437, 0.572603,
		0.303737, 0.637040, -0.708466,
		-0.910599, -0.024643, -0.412555,
		40.449707, 37.308884, 26.884895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761204, 38.084305, 27.348753>,  <41.087124, 37.326134, 27.173683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761204, 38.084305, 27.348753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.457462, 37.857456, 27.221159>,  <40.275215, 37.721348, 27.144604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.457462, 37.857456, 27.221159>,  <40.761204, 38.084305, 27.348753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457462, 37.857456, 27.221159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609373, 0.447963, 0.654212,
		-0.228125, 0.691160, -0.685753,
		-0.759357, -0.567121, -0.318983,
		40.229656, 37.687321, 27.125463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157455, 38.501030, 27.256159>,  <40.761204, 38.084305, 27.348753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157455, 38.501030, 27.256159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992664, 38.138100, 27.289715>,  <39.893791, 37.920341, 27.309849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992664, 38.138100, 27.289715>,  <40.157455, 38.501030, 27.256159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992664, 38.138100, 27.289715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770923, 0.396154, 0.498737,
		-0.485751, 0.140794, -0.862684,
		-0.411975, -0.907325, 0.083891,
		39.869072, 37.865902, 27.314882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498608, 38.621120, 27.076157>,  <40.157455, 38.501030, 27.256159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498608, 38.621120, 27.076157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510872, 38.306782, 27.323221>,  <39.518230, 38.118179, 27.471460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510872, 38.306782, 27.323221>,  <39.498608, 38.621120, 27.076157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510872, 38.306782, 27.323221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611906, 0.473859, 0.633268,
		-0.790336, -0.397367, -0.466335,
		0.030663, -0.785848, 0.617659,
		39.520069, 38.071026, 27.508518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917538, 38.647339, 27.449448>,  <39.498608, 38.621120, 27.076157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917538, 38.647339, 27.449448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115719, 38.408104, 27.701424>,  <39.234627, 38.264565, 27.852610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115719, 38.408104, 27.701424>,  <38.917538, 38.647339, 27.449448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115719, 38.408104, 27.701424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616556, 0.268700, 0.740039,
		-0.611871, -0.755047, -0.235624,
		0.495452, -0.598084, 0.629938,
		39.264355, 38.228680, 27.890406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409851, 38.326019, 27.896538>,  <38.917538, 38.647339, 27.449448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409851, 38.326019, 27.896538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.742153, 38.271732, 28.112474>,  <38.941536, 38.239159, 28.242037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.742153, 38.271732, 28.112474>,  <38.409851, 38.326019, 27.896538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742153, 38.271732, 28.112474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527761, 0.116281, 0.841396,
		-0.176967, -0.983900, 0.024973,
		0.830754, -0.135719, 0.539841,
		38.991379, 38.231018, 28.274427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121979, 37.911560, 28.330160>,  <38.409851, 38.326019, 27.896538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121979, 37.911560, 28.330160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446678, 38.061531, 28.509268>,  <38.641499, 38.151512, 28.616734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446678, 38.061531, 28.509268>,  <38.121979, 37.911560, 28.330160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446678, 38.061531, 28.509268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504978, 0.065457, 0.860646,
		0.293370, -0.924740, 0.242465,
		0.811746, 0.374927, 0.447771,
		38.690201, 38.174007, 28.643599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281723, 37.518982, 28.969837>,  <38.121979, 37.911560, 28.330160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281723, 37.518982, 28.969837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465099, 37.867886, 29.037941>,  <38.575127, 38.077229, 29.078804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465099, 37.867886, 29.037941>,  <38.281723, 37.518982, 28.969837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465099, 37.867886, 29.037941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404994, 0.034514, 0.913668,
		0.791082, -0.487818, 0.369083,
		0.458442, 0.872263, 0.170260,
		38.602631, 38.129566, 29.089020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488132, 37.443729, 29.619215>,  <38.281723, 37.518982, 28.969837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488132, 37.443729, 29.619215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521599, 37.838440, 29.563694>,  <38.541679, 38.075268, 29.530380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521599, 37.838440, 29.563694>,  <38.488132, 37.443729, 29.619215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521599, 37.838440, 29.563694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355599, 0.159687, 0.920896,
		0.930886, -0.027691, 0.364258,
		0.083668, 0.986779, -0.138804,
		38.546700, 38.134472, 29.522053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515614, 37.811108, 30.381878>,  <38.488132, 37.443729, 29.619215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515614, 37.811108, 30.381878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448902, 38.121136, 30.138088>,  <38.408875, 38.307152, 29.991816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448902, 38.121136, 30.138088>,  <38.515614, 37.811108, 30.381878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448902, 38.121136, 30.138088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409536, 0.507836, 0.757881,
		0.896921, 0.375996, 0.232724,
		-0.166774, 0.775068, -0.609472,
		38.398869, 38.353657, 29.955246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101421, 37.746616, 30.714777>,  <38.515614, 37.811108, 30.381878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101421, 37.746616, 30.714777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333504, 37.719124, 31.039404>,  <39.472752, 37.702629, 31.234180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333504, 37.719124, 31.039404>,  <39.101421, 37.746616, 30.714777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333504, 37.719124, 31.039404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799040, 0.241075, -0.550834,
		-0.157790, 0.968070, 0.194791,
		0.580205, -0.068730, 0.811566,
		39.507565, 37.698505, 31.282873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.598701, 34.326420, 24.007418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202995, 34.356705, 24.057417>,  <40.965572, 34.374874, 24.087416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202995, 34.356705, 24.057417>,  <41.598701, 34.326420, 24.007418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202995, 34.356705, 24.057417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121593, 0.900891, 0.416667,
		-0.081065, 0.427393, -0.900424,
		-0.989264, 0.075708, 0.124998,
		40.906216, 34.379417, 24.094917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417793, 35.009430, 23.829882>,  <41.598701, 34.326420, 24.007418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417793, 35.009430, 23.829882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083912, 34.909653, 24.026266>,  <40.883583, 34.849785, 24.144096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083912, 34.909653, 24.026266>,  <41.417793, 35.009430, 23.829882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083912, 34.909653, 24.026266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022654, 0.906327, 0.421969,
		-0.550231, 0.341098, -0.762167,
		-0.834705, -0.249447, 0.490962,
		40.833500, 34.834820, 24.173555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027649, 35.619125, 23.758371>,  <41.417793, 35.009430, 23.829882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027649, 35.619125, 23.758371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897823, 35.425243, 24.083263>,  <40.819927, 35.308914, 24.278198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897823, 35.425243, 24.083263>,  <41.027649, 35.619125, 23.758371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897823, 35.425243, 24.083263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128932, 0.873374, 0.469674,
		-0.937035, 0.047716, -0.345960,
		-0.324563, -0.484707, 0.812230,
		40.800453, 35.279831, 24.326933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501293, 36.020638, 24.017433>,  <41.027649, 35.619125, 23.758371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501293, 36.020638, 24.017433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590115, 35.791218, 24.332832>,  <40.643406, 35.653564, 24.522072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590115, 35.791218, 24.332832>,  <40.501293, 36.020638, 24.017433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590115, 35.791218, 24.332832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142935, 0.780804, 0.608206,
		-0.964501, -0.247759, 0.091400,
		0.222054, -0.573551, 0.788500,
		40.656731, 35.619152, 24.569382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011795, 36.021774, 24.458523>,  <40.501293, 36.020638, 24.017433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011795, 36.021774, 24.458523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266678, 35.869633, 24.726641>,  <40.419609, 35.778347, 24.887512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266678, 35.869633, 24.726641>,  <40.011795, 36.021774, 24.458523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266678, 35.869633, 24.726641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378139, 0.603548, 0.701955,
		-0.671547, -0.700756, 0.240760,
		0.637209, -0.380355, 0.670294,
		40.457840, 35.755527, 24.927729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657345, 35.809326, 25.205616>,  <40.011795, 36.021774, 24.458523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657345, 35.809326, 25.205616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043709, 35.905861, 25.243084>,  <40.275528, 35.963783, 25.265564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043709, 35.905861, 25.243084>,  <39.657345, 35.809326, 25.205616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043709, 35.905861, 25.243084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228446, 0.624398, 0.746953,
		0.121782, -0.742888, 0.658245,
		0.965910, 0.241339, 0.093669,
		40.333481, 35.978264, 25.271185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693142, 35.770493, 25.898870>,  <39.657345, 35.809326, 25.205616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693142, 35.770493, 25.898870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030422, 35.953091, 25.785294>,  <40.232792, 36.062649, 25.717148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030422, 35.953091, 25.785294>,  <39.693142, 35.770493, 25.898870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030422, 35.953091, 25.785294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051117, 0.593856, 0.802946,
		0.535162, -0.662531, 0.524074,
		0.843202, 0.456495, -0.283942,
		40.283382, 36.090038, 25.700111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046051, 35.830219, 26.512583>,  <39.693142, 35.770493, 25.898870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046051, 35.830219, 26.512583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226616, 36.098015, 26.276613>,  <40.334953, 36.258694, 26.135031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226616, 36.098015, 26.276613>,  <40.046051, 35.830219, 26.512583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226616, 36.098015, 26.276613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021276, 0.669002, 0.742957,
		0.892064, -0.322825, 0.316237,
		0.451408, 0.669493, -0.589924,
		40.362038, 36.298862, 26.099636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613445, 36.023598, 26.868952>,  <40.046051, 35.830219, 26.512583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613445, 36.023598, 26.868952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523273, 36.318810, 26.614552>,  <40.469170, 36.495937, 26.461912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523273, 36.318810, 26.614552>,  <40.613445, 36.023598, 26.868952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523273, 36.318810, 26.614552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227218, 0.594973, 0.770959,
		0.947392, 0.318310, 0.033567,
		-0.225433, 0.738028, -0.635999,
		40.455643, 36.540218, 26.423752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359138, 35.993610, 27.085213>,  <40.613445, 36.023598, 26.868952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359138, 35.993610, 27.085213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548420, 35.788292, 27.371599>,  <41.661987, 35.665100, 27.543432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548420, 35.788292, 27.371599>,  <41.359138, 35.993610, 27.085213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548420, 35.788292, 27.371599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167666, -0.850338, -0.498812,
		0.864852, 0.115994, -0.488442,
		0.473200, -0.513294, 0.715968,
		41.690380, 35.634304, 27.586390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768768, 35.495140, 26.712639>,  <41.359138, 35.993610, 27.085213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768768, 35.495140, 26.712639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720119, 35.351513, 27.082781>,  <41.690929, 35.265335, 27.304865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720119, 35.351513, 27.082781>,  <41.768768, 35.495140, 26.712639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720119, 35.351513, 27.082781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051042, -0.928778, -0.367106,
		0.991263, -0.091880, 0.094631,
		-0.121621, -0.359068, 0.925353,
		41.683632, 35.243793, 27.360386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333359, 35.022198, 26.847027>,  <41.768768, 35.495140, 26.712639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333359, 35.022198, 26.847027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042458, 34.931675, 27.106222>,  <41.867916, 34.877361, 27.261740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042458, 34.931675, 27.106222>,  <42.333359, 35.022198, 26.847027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042458, 34.931675, 27.106222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145135, -0.973437, -0.177080,
		0.670852, -0.034736, 0.740778,
		-0.727251, -0.226307, 0.647990,
		41.824284, 34.863785, 27.300619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576859, 34.496750, 27.385111>,  <42.333359, 35.022198, 26.847027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576859, 34.496750, 27.385111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179745, 34.453587, 27.364176>,  <41.941479, 34.427689, 27.351616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179745, 34.453587, 27.364176>,  <42.576859, 34.496750, 27.385111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179745, 34.453587, 27.364176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117562, -0.961946, -0.246655,
		-0.023727, -0.251028, 0.967689,
		-0.992782, -0.107911, -0.052336,
		41.881908, 34.421215, 27.348475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438381, 33.833828, 27.632198>,  <42.576859, 34.496750, 27.385111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438381, 33.833828, 27.632198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089100, 33.891705, 27.446045>,  <41.879532, 33.926430, 27.334352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089100, 33.891705, 27.446045>,  <42.438381, 33.833828, 27.632198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089100, 33.891705, 27.446045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008184, -0.959132, -0.282842,
		-0.487289, -0.243169, 0.838700,
		-0.873203, 0.144690, -0.465384,
		41.827141, 33.935112, 27.306429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078030, 33.286327, 27.873459>,  <42.438381, 33.833828, 27.632198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078030, 33.286327, 27.873459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920013, 33.428314, 27.534533>,  <41.825203, 33.513504, 27.331177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920013, 33.428314, 27.534533>,  <42.078030, 33.286327, 27.873459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920013, 33.428314, 27.534533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056732, -0.911148, -0.408156,
		-0.916909, -0.209309, 0.339806,
		-0.395044, 0.354964, -0.847314,
		41.801502, 33.534805, 27.280338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728992, 32.756886, 27.661596>,  <42.078030, 33.286327, 27.873459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728992, 32.756886, 27.661596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719059, 32.970062, 27.323280>,  <41.713097, 33.097969, 27.120291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719059, 32.970062, 27.323280>,  <41.728992, 32.756886, 27.661596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719059, 32.970062, 27.323280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130840, -0.837040, -0.531267,
		-0.991092, -0.123859, -0.048939,
		-0.024838, 0.532938, -0.845789,
		41.711609, 33.129944, 27.069544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331627, 32.419945, 27.216864>,  <41.728992, 32.756886, 27.661596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331627, 32.419945, 27.216864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551281, 32.641148, 26.966225>,  <41.683075, 32.773869, 26.815842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551281, 32.641148, 26.966225>,  <41.331627, 32.419945, 27.216864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551281, 32.641148, 26.966225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333472, -0.832480, -0.442464,
		-0.766318, 0.034021, -0.641561,
		0.549139, 0.553010, -0.626599,
		41.716022, 32.807049, 26.778246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983440, 32.296150, 26.582581>,  <41.331627, 32.419945, 27.216864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983440, 32.296150, 26.582581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363541, 32.404221, 26.520567>,  <41.591599, 32.469063, 26.483358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363541, 32.404221, 26.520567>,  <40.983440, 32.296150, 26.582581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363541, 32.404221, 26.520567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151401, -0.835556, -0.528132,
		-0.272225, 0.478385, -0.834890,
		0.950248, 0.270174, -0.155032,
		41.648617, 32.485271, 26.474058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073685, 32.188293, 25.867962>,  <40.983440, 32.296150, 26.582581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073685, 32.188293, 25.867962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443748, 32.202065, 26.019165>,  <41.665787, 32.210327, 26.109886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443748, 32.202065, 26.019165>,  <41.073685, 32.188293, 25.867962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443748, 32.202065, 26.019165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217015, -0.865025, -0.452367,
		0.311413, 0.500546, -0.807760,
		0.925163, 0.034423, 0.378006,
		41.721298, 32.212391, 26.132566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605724, 32.199467, 25.341677>,  <41.073685, 32.188293, 25.867962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605724, 32.199467, 25.341677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750397, 32.038292, 25.677971>,  <41.837200, 31.941587, 25.879747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750397, 32.038292, 25.677971>,  <41.605724, 32.199467, 25.341677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750397, 32.038292, 25.677971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174221, -0.856686, -0.485528,
		0.915879, 0.322079, -0.239647,
		0.361680, -0.402933, 0.840733,
		41.858902, 31.917412, 25.930191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159573, 31.783768, 25.147032>,  <41.605724, 32.199467, 25.341677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159573, 31.783768, 25.147032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102840, 31.637913, 25.515146>,  <42.068802, 31.550400, 25.736015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102840, 31.637913, 25.515146>,  <42.159573, 31.783768, 25.147032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102840, 31.637913, 25.515146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113181, -0.929559, -0.350870,
		0.983399, 0.054394, 0.173112,
		-0.141833, -0.364638, 0.920284,
		42.060291, 31.528521, 25.791231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730263, 31.386593, 25.274714>,  <42.159573, 31.783768, 25.147032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730263, 31.386593, 25.274714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460964, 31.248772, 25.536407>,  <42.299385, 31.166079, 25.693424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460964, 31.248772, 25.536407>,  <42.730263, 31.386593, 25.274714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460964, 31.248772, 25.536407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241049, -0.938732, -0.246327,
		0.699025, -0.008136, 0.715050,
		-0.673245, -0.344551, 0.654237,
		42.258991, 31.145407, 25.732679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883621, 30.797998, 25.137854>,  <42.730263, 31.386593, 25.274714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883621, 30.797998, 25.137854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583744, 30.779642, 25.401928>,  <42.403816, 30.768629, 25.560373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583744, 30.779642, 25.401928>,  <42.883621, 30.797998, 25.137854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583744, 30.779642, 25.401928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094743, -0.979874, -0.175700,
		0.654964, -0.194270, 0.730261,
		-0.749697, -0.045890, 0.660188,
		42.358833, 30.765875, 25.599985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.471695, 30.636208, 24.893282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.797417, 30.786322, 24.716166>,  <34.992851, 30.876390, 24.609896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.797417, 30.786322, 24.716166>,  <34.471695, 30.636208, 24.893282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797417, 30.786322, 24.716166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256420, 0.451795, 0.854476,
		0.520726, -0.809346, 0.271669,
		0.814305, 0.375287, -0.442794,
		35.041710, 30.898907, 24.583328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084202, 30.433220, 25.327929>,  <34.471695, 30.636208, 24.893282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084202, 30.433220, 25.327929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130379, 30.762625, 25.105759>,  <35.158085, 30.960268, 24.972456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130379, 30.762625, 25.105759>,  <35.084202, 30.433220, 25.327929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130379, 30.762625, 25.105759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271004, 0.511841, 0.815215,
		0.955631, -0.244630, -0.164090,
		0.115438, 0.823514, -0.555427,
		35.165009, 31.009680, 24.939131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741470, 30.705833, 25.605377>,  <35.084202, 30.433220, 25.327929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741470, 30.705833, 25.605377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569786, 31.009586, 25.409779>,  <35.466774, 31.191837, 25.292419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569786, 31.009586, 25.409779>,  <35.741470, 30.705833, 25.605377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569786, 31.009586, 25.409779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134738, 0.589176, 0.796691,
		0.893098, 0.276062, -0.355198,
		-0.429210, 0.759382, -0.488996,
		35.441025, 31.237402, 25.263081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206272, 31.339725, 25.647457>,  <35.741470, 30.705833, 25.605377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206272, 31.339725, 25.647457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.852360, 31.509991, 25.571587>,  <35.640015, 31.612150, 25.526064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.852360, 31.509991, 25.571587>,  <36.206272, 31.339725, 25.647457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852360, 31.509991, 25.571587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215415, 0.734507, 0.643503,
		0.413235, 0.528499, -0.741570,
		-0.884779, 0.425663, -0.189678,
		35.586926, 31.637690, 25.514683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373421, 32.012943, 25.767754>,  <36.206272, 31.339725, 25.647457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373421, 32.012943, 25.767754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974037, 32.008228, 25.746080>,  <35.734406, 32.005398, 25.733076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974037, 32.008228, 25.746080>,  <36.373421, 32.012943, 25.767754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974037, 32.008228, 25.746080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040823, 0.817551, 0.574407,
		0.037524, 0.575735, -0.816775,
		-0.998461, -0.011789, -0.054181,
		35.674500, 32.004692, 25.729826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041180, 32.691296, 25.524160>,  <36.373421, 32.012943, 25.767754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041180, 32.691296, 25.524160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.755547, 32.509247, 25.736935>,  <35.584167, 32.400017, 25.864599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.755547, 32.509247, 25.736935>,  <36.041180, 32.691296, 25.524160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755547, 32.509247, 25.736935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079959, 0.807889, 0.583886,
		-0.695481, 0.374409, -0.613290,
		-0.714082, -0.455119, 0.531933,
		35.541321, 32.372711, 25.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520824, 33.115326, 25.655519>,  <36.041180, 32.691296, 25.524160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520824, 33.115326, 25.655519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406929, 32.883648, 25.961056>,  <35.338593, 32.744640, 26.144379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406929, 32.883648, 25.961056>,  <35.520824, 33.115326, 25.655519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406929, 32.883648, 25.961056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072426, 0.781549, 0.619625,
		-0.955867, 0.231751, -0.180584,
		-0.284734, -0.579200, 0.763842,
		35.321510, 32.709888, 26.190208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045242, 33.565041, 26.079891>,  <35.520824, 33.115326, 25.655519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045242, 33.565041, 26.079891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165726, 33.263901, 26.313984>,  <35.238014, 33.083218, 26.454439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165726, 33.263901, 26.313984>,  <35.045242, 33.565041, 26.079891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165726, 33.263901, 26.313984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012047, 0.610682, 0.791784,
		-0.953482, -0.245542, 0.174874,
		0.301209, -0.752846, 0.585232,
		35.256088, 33.038048, 26.489553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533333, 33.441849, 26.667631>,  <35.045242, 33.565041, 26.079891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533333, 33.441849, 26.667631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899284, 33.320057, 26.773680>,  <35.118855, 33.246983, 26.837309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899284, 33.320057, 26.773680>,  <34.533333, 33.441849, 26.667631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899284, 33.320057, 26.773680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010135, 0.639150, 0.769015,
		-0.403605, -0.706242, 0.581658,
		0.914877, -0.304484, 0.265122,
		35.173748, 33.228710, 26.853216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464283, 33.337784, 27.349672>,  <34.533333, 33.441849, 26.667631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464283, 33.337784, 27.349672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862617, 33.344944, 27.313911>,  <35.101620, 33.349239, 27.292456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862617, 33.344944, 27.313911>,  <34.464283, 33.337784, 27.349672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862617, 33.344944, 27.313911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061847, 0.587857, 0.806597,
		0.066990, -0.808767, 0.584302,
		0.995835, 0.017897, -0.089400,
		35.161369, 33.350311, 27.287092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665291, 33.397587, 27.990953>,  <34.464283, 33.337784, 27.349672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665291, 33.397587, 27.990953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003452, 33.509304, 27.808834>,  <35.206348, 33.576336, 27.699562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003452, 33.509304, 27.808834>,  <34.665291, 33.397587, 27.990953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003452, 33.509304, 27.808834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337365, 0.381650, 0.860539,
		0.414115, -0.881098, 0.228418,
		0.845395, 0.279302, -0.455299,
		35.257072, 33.593094, 27.672245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220463, 33.195061, 28.431032>,  <34.665291, 33.397587, 27.990953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220463, 33.195061, 28.431032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368595, 33.492146, 28.207878>,  <35.457474, 33.670395, 28.073986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368595, 33.492146, 28.207878>,  <35.220463, 33.195061, 28.431032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368595, 33.492146, 28.207878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272757, 0.487167, 0.829621,
		0.887951, -0.459404, -0.022164,
		0.370334, 0.742708, -0.557887,
		35.479694, 33.714958, 28.040512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810162, 33.537861, 28.850428>,  <35.220463, 33.195061, 28.431032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810162, 33.537861, 28.850428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723331, 33.787838, 28.550476>,  <35.671234, 33.937824, 28.370504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723331, 33.787838, 28.550476>,  <35.810162, 33.537861, 28.850428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723331, 33.787838, 28.550476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278882, 0.775885, 0.565886,
		0.935469, -0.086287, -0.342714,
		-0.217079, 0.624945, -0.749880,
		35.658207, 33.975323, 28.325512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387218, 33.913925, 28.702551>,  <35.810162, 33.537861, 28.850428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387218, 33.913925, 28.702551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072517, 34.136757, 28.596207>,  <35.883698, 34.270454, 28.532400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072517, 34.136757, 28.596207>,  <36.387218, 33.913925, 28.702551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072517, 34.136757, 28.596207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271772, 0.699333, 0.661115,
		0.554215, 0.447883, -0.701602,
		-0.786756, 0.557076, -0.265859,
		35.836491, 34.303879, 28.516449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064236, 34.165730, 29.080488>,  <36.387218, 33.913925, 28.702551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064236, 34.165730, 29.080488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147812, 33.904255, 29.371428>,  <37.197960, 33.747372, 29.545992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147812, 33.904255, 29.371428>,  <37.064236, 34.165730, 29.080488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147812, 33.904255, 29.371428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037920, -0.748621, -0.661913,
		0.977192, 0.110723, -0.181209,
		0.208945, -0.653687, 0.727348,
		37.210495, 33.708149, 29.589632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662178, 33.748981, 28.799664>,  <37.064236, 34.165730, 29.080488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662178, 33.748981, 28.799664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509418, 33.547779, 29.109797>,  <37.417763, 33.427059, 29.295877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509418, 33.547779, 29.109797>,  <37.662178, 33.748981, 28.799664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509418, 33.547779, 29.109797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077209, -0.853351, -0.515587,
		0.920974, -0.137040, 0.364730,
		-0.381899, -0.503002, 0.775334,
		37.394848, 33.396877, 29.342396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100590, 33.155228, 28.867920>,  <37.662178, 33.748981, 28.799664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100590, 33.155228, 28.867920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751747, 33.059395, 29.038580>,  <37.542442, 33.001896, 29.140976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751747, 33.059395, 29.038580>,  <38.100590, 33.155228, 28.867920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751747, 33.059395, 29.038580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060500, -0.918041, -0.391842,
		0.485561, -0.315916, 0.815124,
		-0.872107, -0.239578, 0.426652,
		37.490116, 32.987522, 29.166576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215916, 32.488476, 29.032671>,  <38.100590, 33.155228, 28.867920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215916, 32.488476, 29.032671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818237, 32.526875, 29.013243>,  <37.579632, 32.549915, 29.001587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818237, 32.526875, 29.013243>,  <38.215916, 32.488476, 29.032671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818237, 32.526875, 29.013243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066169, -0.901562, -0.427559,
		-0.084835, -0.421864, 0.902682,
		-0.994196, 0.096001, -0.048569,
		37.519978, 32.555676, 28.998672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920689, 31.779655, 29.280529>,  <38.215916, 32.488476, 29.032671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920689, 31.779655, 29.280529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.640518, 31.974854, 29.072199>,  <37.472416, 32.091972, 28.947201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.640518, 31.974854, 29.072199>,  <37.920689, 31.779655, 29.280529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640518, 31.974854, 29.072199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203786, -0.836096, -0.509328,
		-0.684009, -0.250612, 0.685073,
		-0.700430, 0.487993, -0.520826,
		37.430389, 32.121250, 28.915951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405636, 31.278921, 29.235729>,  <37.920689, 31.779655, 29.280529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405636, 31.278921, 29.235729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318878, 31.558474, 28.963106>,  <37.266823, 31.726206, 28.799532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318878, 31.558474, 28.963106>,  <37.405636, 31.278921, 29.235729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318878, 31.558474, 28.963106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106343, -0.710937, -0.695169,
		-0.970385, -0.078301, 0.228522,
		-0.216897, 0.698883, -0.681556,
		37.253807, 31.768139, 28.758640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746479, 31.080111, 28.935087>,  <37.405636, 31.278921, 29.235729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746479, 31.080111, 28.935087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.953381, 31.302948, 28.675209>,  <37.077522, 31.436649, 28.519283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.953381, 31.302948, 28.675209>,  <36.746479, 31.080111, 28.935087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953381, 31.302948, 28.675209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098510, -0.715334, -0.691804,
		-0.850146, 0.421837, -0.315127,
		0.517250, 0.557092, -0.649694,
		37.108555, 31.470076, 28.480301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335278, 31.087858, 28.395458>,  <36.746479, 31.080111, 28.935087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335278, 31.087858, 28.395458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.683067, 31.205114, 28.236422>,  <36.891743, 31.275467, 28.140999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.683067, 31.205114, 28.236422>,  <36.335278, 31.087858, 28.395458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683067, 31.205114, 28.236422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109391, -0.670640, -0.733673,
		-0.481710, 0.681404, -0.551039,
		0.869476, 0.293139, -0.397593,
		36.943909, 31.293056, 28.117144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199802, 30.969355, 27.757816>,  <36.335278, 31.087858, 28.395458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199802, 30.969355, 27.757816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.598141, 31.004763, 27.766371>,  <36.837143, 31.026009, 27.771503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.598141, 31.004763, 27.766371>,  <36.199802, 30.969355, 27.757816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598141, 31.004763, 27.766371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071818, -0.618976, -0.782119,
		-0.055996, 0.780405, -0.622761,
		0.995845, 0.088521, 0.021387,
		36.896893, 31.031319, 27.772787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423714, 31.129663, 27.087141>,  <36.199802, 30.969355, 27.757816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423714, 31.129663, 27.087141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717121, 30.950218, 27.291374>,  <36.893166, 30.842550, 27.413914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717121, 30.950218, 27.291374>,  <36.423714, 31.129663, 27.087141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717121, 30.950218, 27.291374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163172, -0.613019, -0.773035,
		0.659792, 0.650348, -0.376459,
		0.733518, -0.448615, 0.510584,
		36.937176, 30.815634, 27.444550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831104, 31.127476, 26.591711>,  <36.423714, 31.129663, 27.087141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831104, 31.127476, 26.591711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.957439, 30.866367, 26.867142>,  <37.033241, 30.709703, 27.032400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.957439, 30.866367, 26.867142>,  <36.831104, 31.127476, 26.591711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957439, 30.866367, 26.867142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070114, -0.707683, -0.703043,
		0.946217, 0.270329, -0.177748,
		0.315842, -0.652769, 0.688576,
		37.052193, 30.670536, 27.073715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528080, 30.925871, 26.389957>,  <36.831104, 31.127476, 26.591711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528080, 30.925871, 26.389957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335823, 30.653734, 26.611269>,  <37.220470, 30.490452, 26.744057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335823, 30.653734, 26.611269>,  <37.528080, 30.925871, 26.389957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335823, 30.653734, 26.611269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146840, -0.684471, -0.714099,
		0.864537, -0.261980, 0.428885,
		-0.480639, -0.680342, 0.553281,
		37.191631, 30.449631, 26.777254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944344, 30.249855, 26.410954>,  <37.528080, 30.925871, 26.389957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944344, 30.249855, 26.410954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591187, 30.105494, 26.531120>,  <37.379292, 30.018875, 26.603220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591187, 30.105494, 26.531120>,  <37.944344, 30.249855, 26.410954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591187, 30.105494, 26.531120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125087, -0.797400, -0.590345,
		0.452610, -0.483632, 0.749162,
		-0.882892, -0.360906, 0.300415,
		37.326321, 29.997221, 26.621244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052341, 29.536602, 26.640533>,  <37.944344, 30.249855, 26.410954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052341, 29.536602, 26.640533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665977, 29.560741, 26.539833>,  <37.434158, 29.575226, 26.479414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665977, 29.560741, 26.539833>,  <38.052341, 29.536602, 26.640533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665977, 29.560741, 26.539833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086408, -0.841530, -0.533256,
		-0.244035, -0.536830, 0.807627,
		-0.965909, 0.060348, -0.251749,
		37.376205, 29.578846, 26.464308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460598, 29.159239, 27.063242>,  <38.052341, 29.536602, 26.640533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460598, 29.159239, 27.063242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813618, 28.989279, 27.143806>,  <39.025429, 28.887302, 27.192144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813618, 28.989279, 27.143806>,  <38.460598, 29.159239, 27.063242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813618, 28.989279, 27.143806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228361, 0.761729, 0.606317,
		-0.411043, -0.489111, 0.769295,
		0.882550, -0.424899, 0.201410,
		39.078384, 28.861809, 27.204229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559959, 29.174673, 27.839146>,  <38.460598, 29.159239, 27.063242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559959, 29.174673, 27.839146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924385, 29.146818, 27.676609>,  <39.143040, 29.130106, 27.579086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924385, 29.146818, 27.676609>,  <38.559959, 29.174673, 27.839146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924385, 29.146818, 27.676609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345730, 0.665954, 0.661042,
		0.224572, -0.742736, 0.630802,
		0.911064, -0.069635, -0.406341,
		39.197704, 29.125927, 27.554707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960617, 29.154421, 28.339005>,  <38.559959, 29.174673, 27.839146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960617, 29.154421, 28.339005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.199039, 29.278198, 28.042639>,  <39.342094, 29.352465, 27.864819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.199039, 29.278198, 28.042639>,  <38.960617, 29.154421, 28.339005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199039, 29.278198, 28.042639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434106, 0.652074, 0.621572,
		0.675473, -0.692131, 0.254344,
		0.596060, 0.309443, -0.740916,
		39.377857, 29.371031, 27.820364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510544, 29.320593, 28.720894>,  <38.960617, 29.154421, 28.339005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510544, 29.320593, 28.720894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601177, 29.469849, 28.361023>,  <39.655560, 29.559402, 28.145100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601177, 29.469849, 28.361023>,  <39.510544, 29.320593, 28.720894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601177, 29.469849, 28.361023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254791, 0.868831, 0.424517,
		0.940074, -0.325421, 0.101793,
		0.226588, 0.373142, -0.899680,
		39.669155, 29.581791, 28.091120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201847, 29.416460, 28.751076>,  <39.510544, 29.320593, 28.720894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201847, 29.416460, 28.751076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050545, 29.657658, 28.470129>,  <39.959763, 29.802376, 28.301561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050545, 29.657658, 28.470129>,  <40.201847, 29.416460, 28.751076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050545, 29.657658, 28.470129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538437, 0.760503, 0.362934,
		0.753000, -0.240900, -0.612338,
		-0.378254, 0.602995, -0.702368,
		39.937069, 29.838556, 28.259418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747021, 29.859280, 28.589876>,  <40.201847, 29.416460, 28.751076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747021, 29.859280, 28.589876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.421738, 30.048120, 28.453749>,  <40.226570, 30.161425, 28.372072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.421738, 30.048120, 28.453749>,  <40.747021, 29.859280, 28.589876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421738, 30.048120, 28.453749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285062, 0.832930, 0.474307,
		0.507385, 0.288696, -0.811921,
		-0.813204, 0.472104, -0.340320,
		40.177776, 30.189753, 28.351652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931171, 30.464117, 28.179691>,  <40.747021, 29.859280, 28.589876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931171, 30.464117, 28.179691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.555756, 30.546993, 28.290119>,  <40.330505, 30.596718, 28.356377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.555756, 30.546993, 28.290119>,  <40.931171, 30.464117, 28.179691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555756, 30.546993, 28.290119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289651, 0.907759, 0.303442,
		-0.187735, 0.364757, -0.911980,
		-0.938540, 0.207189, 0.276070,
		40.274193, 30.609150, 28.372940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946617, 31.129520, 28.208038>,  <40.931171, 30.464117, 28.179691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946617, 31.129520, 28.208038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586624, 31.092279, 28.378382>,  <40.370628, 31.069935, 28.480589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586624, 31.092279, 28.378382>,  <40.946617, 31.129520, 28.208038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586624, 31.092279, 28.378382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073347, 0.930656, 0.358468,
		-0.429703, 0.353852, -0.830749,
		-0.899986, -0.093102, 0.425860,
		40.316628, 31.064348, 28.506140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757286, 31.819328, 28.286106>,  <40.946617, 31.129520, 28.208038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757286, 31.819328, 28.286106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.510372, 31.626036, 28.534445>,  <40.362225, 31.510061, 28.683447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.510372, 31.626036, 28.534445>,  <40.757286, 31.819328, 28.286106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510372, 31.626036, 28.534445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032286, 0.772913, 0.633690,
		-0.786078, 0.411211, -0.461506,
		-0.617284, -0.483229, 0.620846,
		40.325188, 31.481068, 28.720699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098801, 32.276356, 28.466305>,  <40.757286, 31.819328, 28.286106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098801, 32.276356, 28.466305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.181065, 32.008766, 28.752012>,  <40.230423, 31.848213, 28.923437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.181065, 32.008766, 28.752012>,  <40.098801, 32.276356, 28.466305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181065, 32.008766, 28.752012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102661, 0.711098, 0.695558,
		-0.973224, -0.216374, 0.077565,
		0.205657, -0.668971, 0.714271,
		40.242764, 31.808075, 28.966293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590080, 32.387417, 28.980709>,  <40.098801, 32.276356, 28.466305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590080, 32.387417, 28.980709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922028, 32.216789, 29.124577>,  <40.121197, 32.114414, 29.210897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922028, 32.216789, 29.124577>,  <39.590080, 32.387417, 28.980709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922028, 32.216789, 29.124577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031778, 0.679695, 0.732807,
		-0.557057, -0.596702, 0.577611,
		0.829866, -0.426570, 0.359666,
		40.170986, 32.088818, 29.232477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562092, 32.494610, 29.773130>,  <39.590080, 32.387417, 28.980709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562092, 32.494610, 29.773130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.945705, 32.420135, 29.687719>,  <40.175873, 32.375450, 29.636473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.945705, 32.420135, 29.687719>,  <39.562092, 32.494610, 29.773130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945705, 32.420135, 29.687719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282459, 0.570414, 0.771262,
		-0.021797, -0.799977, 0.599634,
		0.959032, -0.186184, -0.213528,
		40.233414, 32.364281, 29.623661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990505, 32.533775, 30.366089>,  <39.562092, 32.494610, 29.773130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990505, 32.533775, 30.366089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.275757, 32.582794, 30.089994>,  <40.446907, 32.612206, 29.924337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.275757, 32.582794, 30.089994>,  <39.990505, 32.533775, 30.366089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275757, 32.582794, 30.089994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384293, 0.755141, 0.531113,
		0.586309, -0.644007, 0.491423,
		0.713134, 0.122545, -0.690233,
		40.489697, 32.619556, 29.882925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602013, 32.562614, 30.732889>,  <39.990505, 32.533775, 30.366089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602013, 32.562614, 30.732889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684452, 32.756359, 30.392792>,  <40.733917, 32.872608, 30.188734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684452, 32.756359, 30.392792>,  <40.602013, 32.562614, 30.732889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684452, 32.756359, 30.392792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428892, 0.736275, 0.523404,
		0.879531, -0.472536, -0.055993,
		0.206101, 0.484365, -0.850243,
		40.746281, 32.901669, 30.137718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.022469, 30.245451, 25.701872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.627117, 30.303612, 25.684174>,  <42.389904, 30.338509, 25.673553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.627117, 30.303612, 25.684174>,  <43.022469, 30.245451, 25.701872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627117, 30.303612, 25.684174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135330, -0.974456, -0.179222,
		-0.069177, -0.171151, 0.982813,
		-0.988383, 0.145402, -0.044248,
		42.330601, 30.347233, 25.670898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704872, 29.731129, 26.180861>,  <43.022469, 30.245451, 25.701872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704872, 29.731129, 26.180861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.426491, 29.819462, 25.907545>,  <42.259464, 29.872461, 25.743555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.426491, 29.819462, 25.907545>,  <42.704872, 29.731129, 26.180861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426491, 29.819462, 25.907545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208175, -0.972722, -0.102346,
		-0.687253, 0.071016, 0.722938,
		-0.695950, 0.220835, -0.683290,
		42.217705, 29.885712, 25.702559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381836, 29.123432, 26.230309>,  <42.704872, 29.731129, 26.180861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381836, 29.123432, 26.230309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.236191, 29.301508, 25.903082>,  <42.148804, 29.408354, 25.706747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.236191, 29.301508, 25.903082>,  <42.381836, 29.123432, 26.230309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236191, 29.301508, 25.903082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424058, -0.861276, -0.279961,
		-0.829215, 0.244970, 0.502387,
		-0.364112, 0.445189, -0.818064,
		42.126957, 29.435064, 25.657661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636139, 28.961334, 26.211826>,  <42.381836, 29.123432, 26.230309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636139, 28.961334, 26.211826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.755302, 29.064259, 25.844120>,  <41.826801, 29.126013, 25.623497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.755302, 29.064259, 25.844120>,  <41.636139, 28.961334, 26.211826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755302, 29.064259, 25.844120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606771, -0.692379, -0.390437,
		-0.736941, 0.674095, -0.050135,
		0.297904, 0.257309, -0.919263,
		41.844673, 29.141451, 25.568340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945995, 28.949173, 25.825615>,  <41.636139, 28.961334, 26.211826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945995, 28.949173, 25.825615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260983, 28.913986, 25.581598>,  <41.449974, 28.892874, 25.435188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260983, 28.913986, 25.581598>,  <40.945995, 28.949173, 25.825615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260983, 28.913986, 25.581598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485705, -0.697899, -0.526334,
		-0.379446, 0.710773, -0.592302,
		0.787471, -0.087968, -0.610041,
		41.497223, 28.887596, 25.398586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673771, 28.893797, 25.110062>,  <40.945995, 28.949173, 25.825615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673771, 28.893797, 25.110062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.046310, 28.750544, 25.083725>,  <41.269833, 28.664593, 25.067923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.046310, 28.750544, 25.083725>,  <40.673771, 28.893797, 25.110062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046310, 28.750544, 25.083725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305731, -0.670866, -0.675623,
		0.197792, 0.649369, -0.734301,
		0.931346, -0.358132, -0.065840,
		41.325714, 28.643105, 25.063972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860939, 28.905647, 24.440241>,  <40.673771, 28.893797, 25.110062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860939, 28.905647, 24.440241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.128410, 28.642569, 24.578983>,  <41.288891, 28.484722, 24.662228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.128410, 28.642569, 24.578983>,  <40.860939, 28.905647, 24.440241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128410, 28.642569, 24.578983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129206, -0.562162, -0.816872,
		0.732242, 0.501407, -0.460882,
		0.668676, -0.657697, 0.346854,
		41.329014, 28.445259, 24.683039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461357, 28.714613, 23.918938>,  <40.860939, 28.905647, 24.440241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461357, 28.714613, 23.918938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.429604, 28.408649, 24.174629>,  <41.410553, 28.225071, 24.328045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.429604, 28.408649, 24.174629>,  <41.461357, 28.714613, 23.918938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429604, 28.408649, 24.174629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071966, -0.643976, -0.761653,
		0.994243, -0.014459, 0.106167,
		-0.079382, -0.764909, 0.639228,
		41.405788, 28.179176, 24.366398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836201, 28.254301, 23.556295>,  <41.461357, 28.714613, 23.918938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836201, 28.254301, 23.556295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.625923, 28.050854, 23.829044>,  <41.499756, 27.928785, 23.992695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.625923, 28.050854, 23.829044>,  <41.836201, 28.254301, 23.556295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625923, 28.050854, 23.829044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147326, -0.735023, -0.661843,
		0.837818, -0.448386, 0.311466,
		-0.525696, -0.508617, 0.681874,
		41.468216, 27.898268, 24.033607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061729, 27.490679, 23.588367>,  <41.836201, 28.254301, 23.556295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061729, 27.490679, 23.588367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691265, 27.471201, 23.737951>,  <41.468987, 27.459515, 23.827702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691265, 27.471201, 23.737951>,  <42.061729, 27.490679, 23.588367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691265, 27.471201, 23.737951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132474, -0.886426, -0.443508,
		0.353085, -0.460302, 0.814526,
		-0.926165, -0.048693, 0.373962,
		41.413414, 27.456593, 23.850140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795650, 26.703789, 23.438812>,  <42.061729, 27.490679, 23.588367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795650, 26.703789, 23.438812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460785, 26.897676, 23.540167>,  <41.259865, 27.014009, 23.600979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460785, 26.897676, 23.540167>,  <41.795650, 26.703789, 23.438812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460785, 26.897676, 23.540167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517697, -0.552753, -0.653034,
		-0.176477, -0.677875, 0.713682,
		-0.837165, 0.484717, 0.253385,
		41.209637, 27.043091, 23.616182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341625, 26.214264, 23.603476>,  <41.795650, 26.703789, 23.438812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341625, 26.214264, 23.603476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.125099, 26.534693, 23.501287>,  <40.995182, 26.726950, 23.439976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.125099, 26.534693, 23.501287>,  <41.341625, 26.214264, 23.603476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125099, 26.534693, 23.501287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511764, -0.554969, -0.655825,
		-0.667140, -0.224267, 0.710372,
		-0.541315, 0.801070, -0.255470,
		40.962704, 26.775013, 23.424646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617390, 26.019972, 23.576210>,  <41.341625, 26.214264, 23.603476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617390, 26.019972, 23.576210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.655949, 26.333256, 23.330515>,  <40.679085, 26.521227, 23.183098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.655949, 26.333256, 23.330515>,  <40.617390, 26.019972, 23.576210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655949, 26.333256, 23.330515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588225, -0.452991, -0.669918,
		-0.802932, 0.425885, 0.417040,
		0.096393, 0.783212, -0.614238,
		40.684868, 26.568220, 23.146244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057602, 25.567261, 23.120792>,  <40.617390, 26.019972, 23.576210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057602, 25.567261, 23.120792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.742611, 25.756256, 22.962482>,  <39.553616, 25.869654, 22.867496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.742611, 25.756256, 22.962482>,  <40.057602, 25.567261, 23.120792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742611, 25.756256, 22.962482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262589, 0.838129, 0.478107,
		0.557611, 0.272571, -0.784076,
		-0.787475, 0.472487, -0.395775,
		39.506367, 25.898003, 22.843750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460407, 25.482054, 22.524292>,  <40.057602, 25.567261, 23.120792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460407, 25.482054, 22.524292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.111664, 25.356968, 22.675060>,  <38.902416, 25.281916, 22.765520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.111664, 25.356968, 22.675060>,  <39.460407, 25.482054, 22.524292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111664, 25.356968, 22.675060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100109, 0.639569, 0.762188,
		-0.479413, 0.702255, -0.526309,
		-0.871861, -0.312715, 0.376920,
		38.850105, 25.263153, 22.788136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964111, 26.007666, 22.565975>,  <39.460407, 25.482054, 22.524292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964111, 26.007666, 22.565975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.817394, 25.760506, 22.844160>,  <38.729362, 25.612209, 23.011070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.817394, 25.760506, 22.844160>,  <38.964111, 26.007666, 22.565975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817394, 25.760506, 22.844160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041955, 0.735816, 0.675881,
		-0.929357, 0.277086, -0.243967,
		-0.366792, -0.617899, 0.695460,
		38.707355, 25.575136, 23.052797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404671, 26.316408, 22.818974>,  <38.964111, 26.007666, 22.565975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404671, 26.316408, 22.818974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514191, 26.049915, 23.096437>,  <38.579903, 25.890020, 23.262917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514191, 26.049915, 23.096437>,  <38.404671, 26.316408, 22.818974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514191, 26.049915, 23.096437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008088, 0.722791, 0.691019,
		-0.961751, -0.183593, 0.203292,
		0.273804, -0.666233, 0.693661,
		38.596333, 25.850046, 23.304535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923435, 26.458302, 23.353743>,  <38.404671, 26.316408, 22.818974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923435, 26.458302, 23.353743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.233799, 26.272684, 23.524685>,  <38.420017, 26.161314, 23.627251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.233799, 26.272684, 23.524685>,  <37.923435, 26.458302, 23.353743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233799, 26.272684, 23.524685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005147, 0.672754, 0.739848,
		-0.630827, -0.576253, 0.519605,
		0.775906, -0.464042, 0.427357,
		38.466572, 26.133471, 23.652893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831955, 26.423925, 24.101334>,  <37.923435, 26.458302, 23.353743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831955, 26.423925, 24.101334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.226791, 26.362444, 24.083292>,  <38.463692, 26.325556, 24.072468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.226791, 26.362444, 24.083292>,  <37.831955, 26.423925, 24.101334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226791, 26.362444, 24.083292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118543, 0.511550, 0.851037,
		-0.107733, -0.845395, 0.523165,
		0.987087, -0.153703, -0.045104,
		38.522919, 26.316334, 24.069761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052940, 26.091541, 24.695532>,  <37.831955, 26.423925, 24.101334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052940, 26.091541, 24.695532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.408577, 26.241360, 24.590288>,  <38.621960, 26.331251, 24.527142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.408577, 26.241360, 24.590288>,  <38.052940, 26.091541, 24.695532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408577, 26.241360, 24.590288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127197, 0.350009, 0.928070,
		0.439697, -0.858608, 0.263550,
		0.889094, 0.374547, -0.263110,
		38.675304, 26.353724, 24.511354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478531, 25.968046, 25.310440>,  <38.052940, 26.091541, 24.695532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478531, 25.968046, 25.310440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641708, 26.259985, 25.091021>,  <38.739616, 26.435148, 24.959370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641708, 26.259985, 25.091021>,  <38.478531, 25.968046, 25.310440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641708, 26.259985, 25.091021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009872, 0.604306, 0.796691,
		0.912952, -0.319593, 0.253730,
		0.407947, 0.729845, -0.548547,
		38.764091, 26.478939, 24.926456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087849, 26.188959, 25.647892>,  <38.478531, 25.968046, 25.310440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087849, 26.188959, 25.647892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996559, 26.514866, 25.434700>,  <38.941788, 26.710409, 25.306784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996559, 26.514866, 25.434700>,  <39.087849, 26.188959, 25.647892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996559, 26.514866, 25.434700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218723, 0.576342, 0.787395,
		0.948723, 0.063125, -0.309742,
		-0.228222, 0.814767, -0.532982,
		38.928093, 26.759296, 25.274805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524590, 26.603453, 25.937475>,  <39.087849, 26.188959, 25.647892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524590, 26.603453, 25.937475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.339001, 26.874716, 25.709499>,  <39.227646, 27.037474, 25.572714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.339001, 26.874716, 25.709499>,  <39.524590, 26.603453, 25.937475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339001, 26.874716, 25.709499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191531, 0.704962, 0.682894,
		0.864896, 0.207683, -0.456971,
		-0.463973, 0.678156, -0.569942,
		39.199810, 27.078163, 25.538517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007050, 27.161472, 25.829540>,  <39.524590, 26.603453, 25.937475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007050, 27.161472, 25.829540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.627548, 27.281397, 25.789568>,  <39.399849, 27.353352, 25.765585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.627548, 27.281397, 25.789568>,  <40.007050, 27.161472, 25.829540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627548, 27.281397, 25.789568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154253, 0.715310, 0.681570,
		0.275822, 0.631226, -0.724897,
		-0.948751, 0.299810, -0.099930,
		39.342922, 27.371340, 25.759588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067696, 27.810343, 25.738264>,  <40.007050, 27.161472, 25.829540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067696, 27.810343, 25.738264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.688141, 27.787315, 25.862394>,  <39.460407, 27.773499, 25.936872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.688141, 27.787315, 25.862394>,  <40.067696, 27.810343, 25.738264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688141, 27.787315, 25.862394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170835, 0.733070, 0.658349,
		-0.265392, 0.677713, -0.685765,
		-0.948885, -0.057567, 0.310328,
		39.403477, 27.770044, 25.955492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810429, 28.534534, 25.833324>,  <40.067696, 27.810343, 25.738264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810429, 28.534534, 25.833324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532856, 28.311916, 26.016068>,  <39.366314, 28.178347, 26.125713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532856, 28.311916, 26.016068>,  <39.810429, 28.534534, 25.833324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532856, 28.311916, 26.016068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101343, 0.703661, 0.703272,
		-0.712873, 0.441724, -0.544695,
		-0.693932, -0.556544, 0.456855,
		39.324677, 28.144953, 26.153124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363941, 28.979259, 25.929249>,  <39.810429, 28.534534, 25.833324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363941, 28.979259, 25.929249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.326744, 28.683094, 26.195524>,  <39.304424, 28.505396, 26.355289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.326744, 28.683094, 26.195524>,  <39.363941, 28.979259, 25.929249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326744, 28.683094, 26.195524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079828, 0.660890, 0.746226,
		-0.992461, 0.122535, -0.002354,
		-0.092995, -0.740412, 0.665689,
		39.298847, 28.460970, 26.395231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748108, 29.191772, 26.366653>,  <39.363941, 28.979259, 25.929249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748108, 29.191772, 26.366653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981853, 28.933306, 26.563013>,  <39.122101, 28.778225, 26.680828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981853, 28.933306, 26.563013>,  <38.748108, 29.191772, 26.366653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981853, 28.933306, 26.563013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166023, 0.496940, 0.851755,
		-0.794324, -0.579238, 0.183117,
		0.584368, -0.646168, 0.490898,
		39.157166, 28.739456, 26.710283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044262, 28.952394, 26.223642>,  <38.748108, 29.191772, 26.366653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044262, 28.952394, 26.223642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.680016, 29.100306, 26.149847>,  <37.461468, 29.189053, 26.105570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.680016, 29.100306, 26.149847>,  <38.044262, 28.952394, 26.223642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680016, 29.100306, 26.149847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181677, -0.759207, -0.624978,
		-0.371169, -0.535600, 0.758529,
		-0.910619, 0.369780, -0.184488,
		37.406830, 29.211239, 26.094500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505798, 28.403774, 26.204454>,  <38.044262, 28.952394, 26.223642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505798, 28.403774, 26.204454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335907, 28.710575, 26.012074>,  <37.233971, 28.894655, 25.896645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335907, 28.710575, 26.012074>,  <37.505798, 28.403774, 26.204454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335907, 28.710575, 26.012074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312019, -0.622720, -0.717540,
		-0.849853, -0.154693, 0.503806,
		-0.424729, 0.767000, -0.480954,
		37.208488, 28.940676, 25.867788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792442, 28.232744, 25.990419>,  <37.505798, 28.403774, 26.204454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792442, 28.232744, 25.990419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903160, 28.516623, 25.731277>,  <36.969589, 28.686949, 25.575792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903160, 28.516623, 25.731277>,  <36.792442, 28.232744, 25.990419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903160, 28.516623, 25.731277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372322, -0.542325, -0.753167,
		-0.885867, 0.449684, 0.114122,
		0.276796, 0.709696, -0.647855,
		36.986198, 28.729532, 25.536921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474312, 28.006021, 25.430155>,  <36.792442, 28.232744, 25.990419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474312, 28.006021, 25.430155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715538, 28.280048, 25.266695>,  <36.860275, 28.444464, 25.168619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715538, 28.280048, 25.266695>,  <36.474312, 28.006021, 25.430155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715538, 28.280048, 25.266695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147161, -0.407947, -0.901067,
		-0.783999, 0.603541, -0.145205,
		0.603067, 0.685067, -0.408648,
		36.896458, 28.485569, 25.144100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074951, 28.326107, 24.980246>,  <36.474312, 28.006021, 25.430155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074951, 28.326107, 24.980246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448597, 28.391153, 24.853130>,  <36.672783, 28.430182, 24.776861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448597, 28.391153, 24.853130>,  <36.074951, 28.326107, 24.980246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448597, 28.391153, 24.853130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213596, -0.458668, -0.862555,
		-0.286026, 0.873601, -0.393713,
		0.934112, 0.162618, -0.317789,
		36.728832, 28.439939, 24.757793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025059, 28.639278, 24.369295>,  <36.074951, 28.326107, 24.980246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025059, 28.639278, 24.369295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.399738, 28.506876, 24.323648>,  <36.624546, 28.427435, 24.296261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.399738, 28.506876, 24.323648>,  <36.025059, 28.639278, 24.369295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399738, 28.506876, 24.323648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277418, -0.502818, -0.818666,
		0.213603, 0.798505, -0.562818,
		0.936703, -0.331005, -0.114116,
		36.680748, 28.407574, 24.289413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167656, 28.758635, 23.643175>,  <36.025059, 28.639278, 24.369295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167656, 28.758635, 23.643175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.393497, 28.464890, 23.793871>,  <36.529003, 28.288643, 23.884289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.393497, 28.464890, 23.793871>,  <36.167656, 28.758635, 23.643175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393497, 28.464890, 23.793871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270450, -0.595864, -0.756177,
		0.779791, 0.325055, -0.535038,
		0.564608, -0.734361, 0.376738,
		36.562881, 28.244581, 23.906893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191612, 29.118540, 22.967756>,  <36.167656, 28.758635, 23.643175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191612, 29.118540, 22.967756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866165, 29.174759, 22.742092>,  <35.670898, 29.208490, 22.606693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866165, 29.174759, 22.742092>,  <36.191612, 29.118540, 22.967756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866165, 29.174759, 22.742092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188830, 0.853860, 0.485043,
		0.549884, 0.501169, -0.668175,
		-0.813616, 0.140546, -0.564159,
		35.622082, 29.216923, 22.572844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235458, 29.788496, 22.733561>,  <36.191612, 29.118540, 22.967756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235458, 29.788496, 22.733561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850178, 29.683516, 22.710339>,  <35.619011, 29.620527, 22.696405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850178, 29.683516, 22.710339>,  <36.235458, 29.788496, 22.733561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850178, 29.683516, 22.710339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251144, 0.801722, 0.542373,
		-0.095802, 0.536993, -0.838129,
		-0.963197, -0.262452, -0.058057,
		35.561218, 29.604780, 22.692921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865520, 30.401794, 22.466520>,  <36.235458, 29.788496, 22.733561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865520, 30.401794, 22.466520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596401, 30.162979, 22.641279>,  <35.434929, 30.019690, 22.746134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596401, 30.162979, 22.641279>,  <35.865520, 30.401794, 22.466520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596401, 30.162979, 22.641279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214775, 0.722735, 0.656906,
		-0.707961, 0.348134, -0.614487,
		-0.672803, -0.597040, 0.436898,
		35.394562, 29.983868, 22.772348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159363, 30.688120, 22.455833>,  <35.865520, 30.401794, 22.466520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159363, 30.688120, 22.455833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170376, 30.423580, 22.755661>,  <35.176983, 30.264856, 22.935558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170376, 30.423580, 22.755661>,  <35.159363, 30.688120, 22.455833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170376, 30.423580, 22.755661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210672, 0.729174, 0.651094,
		-0.977169, -0.175843, -0.119250,
		0.027536, -0.661351, 0.749571,
		35.178638, 30.225174, 22.980532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733543, 31.001616, 22.937260>,  <35.159363, 30.688120, 22.455833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733543, 31.001616, 22.937260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884991, 30.716064, 23.172894>,  <34.975861, 30.544733, 23.314274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884991, 30.716064, 23.172894>,  <34.733543, 31.001616, 22.937260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884991, 30.716064, 23.172894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120018, 0.593229, 0.796037,
		-0.917737, -0.372098, 0.138931,
		0.378621, -0.713878, 0.589087,
		34.998577, 30.501902, 23.349619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265301, 30.955683, 23.543642>,  <34.733543, 31.001616, 22.937260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265301, 30.955683, 23.543642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618717, 30.793394, 23.637236>,  <34.830769, 30.696020, 23.693392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618717, 30.793394, 23.637236>,  <34.265301, 30.955683, 23.543642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618717, 30.793394, 23.637236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018254, 0.529032, 0.848405,
		-0.468000, -0.745329, 0.474827,
		0.883540, -0.405722, 0.233982,
		34.883778, 30.671679, 23.707430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139908, 30.783642, 24.256071>,  <34.265301, 30.955683, 23.543642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139908, 30.783642, 24.256071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534534, 30.820593, 24.202175>,  <34.771309, 30.842764, 24.169838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534534, 30.820593, 24.202175>,  <34.139908, 30.783642, 24.256071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534534, 30.820593, 24.202175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058156, 0.572155, 0.818081,
		0.152663, -0.814927, 0.559096,
		0.986566, 0.092376, -0.134740,
		34.830505, 30.848305, 24.161753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.342060, 28.150457, 21.051334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516335, 27.964165, 21.359430>,  <39.620899, 27.852388, 21.544289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516335, 27.964165, 21.359430>,  <39.342060, 28.150457, 21.051334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516335, 27.964165, 21.359430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169224, 0.798086, 0.578293,
		-0.884048, -0.382297, 0.268901,
		0.435686, -0.465734, 0.770240,
		39.647041, 27.824444, 21.590502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938690, 28.213833, 21.662424>,  <39.342060, 28.150457, 21.051334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938690, 28.213833, 21.662424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321873, 28.168711, 21.767954>,  <39.551781, 28.141638, 21.831272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321873, 28.168711, 21.767954>,  <38.938690, 28.213833, 21.662424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321873, 28.168711, 21.767954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051043, 0.837810, 0.543570,
		-0.282351, -0.534181, 0.796824,
		0.957953, -0.112805, 0.263823,
		39.609257, 28.134869, 21.847101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892365, 28.237370, 22.434937>,  <38.938690, 28.213833, 21.662424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892365, 28.237370, 22.434937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.236958, 28.347620, 22.264343>,  <39.443714, 28.413771, 22.161987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.236958, 28.347620, 22.264343>,  <38.892365, 28.237370, 22.434937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236958, 28.347620, 22.264343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145382, 0.938587, 0.312920,
		0.486538, -0.207572, 0.848643,
		0.861478, 0.275625, -0.426481,
		39.495399, 28.430307, 22.136398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015648, 28.791512, 22.785845>,  <38.892365, 28.237370, 22.434937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015648, 28.791512, 22.785845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.288979, 28.824198, 22.495632>,  <39.452976, 28.843809, 22.321505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.288979, 28.824198, 22.495632>,  <39.015648, 28.791512, 22.785845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288979, 28.824198, 22.495632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098724, 0.974250, 0.202708,
		0.723411, -0.210142, 0.657659,
		0.683322, 0.081714, -0.725530,
		39.493977, 28.848713, 22.277973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637974, 29.099161, 23.121868>,  <39.015648, 28.791512, 22.785845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637974, 29.099161, 23.121868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.652046, 29.178686, 22.730106>,  <39.660488, 29.226400, 22.495049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.652046, 29.178686, 22.730106>,  <39.637974, 29.099161, 23.121868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652046, 29.178686, 22.730106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180366, 0.962657, 0.201890,
		0.982970, -0.183754, -0.001991,
		0.035182, 0.198811, -0.979406,
		39.662601, 29.238329, 22.436285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278980, 29.490360, 23.109802>,  <39.637974, 29.099161, 23.121868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278980, 29.490360, 23.109802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.079155, 29.575684, 22.773962>,  <39.959259, 29.626879, 22.572456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.079155, 29.575684, 22.773962>,  <40.278980, 29.490360, 23.109802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079155, 29.575684, 22.773962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277508, 0.957539, 0.078154,
		0.820623, -0.193954, -0.537549,
		-0.499566, 0.213309, -0.839603,
		39.929287, 29.639677, 22.522081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750870, 29.915419, 22.700113>,  <40.278980, 29.490360, 23.109802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750870, 29.915419, 22.700113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386326, 30.024878, 22.577120>,  <40.167599, 30.090553, 22.503323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386326, 30.024878, 22.577120>,  <40.750870, 29.915419, 22.700113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386326, 30.024878, 22.577120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288586, 0.957448, -0.003257,
		0.293509, -0.091704, -0.951548,
		-0.911356, 0.273648, -0.307485,
		40.112919, 30.106972, 22.484875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833466, 30.535742, 22.420321>,  <40.750870, 29.915419, 22.700113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833466, 30.535742, 22.420321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.438515, 30.573101, 22.471483>,  <40.201542, 30.595516, 22.502180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.438515, 30.573101, 22.471483>,  <40.833466, 30.535742, 22.420321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438515, 30.573101, 22.471483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113380, 0.980730, 0.159102,
		-0.110581, 0.171596, -0.978941,
		-0.987379, 0.093398, 0.127905,
		40.142300, 30.601120, 22.509855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670685, 31.140715, 22.007549>,  <40.833466, 30.535742, 22.420321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670685, 31.140715, 22.007549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.379101, 31.090761, 22.276775>,  <40.204151, 31.060789, 22.438311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.379101, 31.090761, 22.276775>,  <40.670685, 31.140715, 22.007549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379101, 31.090761, 22.276775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083173, 0.959777, 0.268160,
		-0.679483, 0.251460, -0.689253,
		-0.728961, -0.124883, 0.673067,
		40.160412, 31.053297, 22.478695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253548, 31.773514, 22.025448>,  <40.670685, 31.140715, 22.007549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253548, 31.773514, 22.025448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114361, 31.616243, 22.365877>,  <40.030849, 31.521881, 22.570135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114361, 31.616243, 22.365877>,  <40.253548, 31.773514, 22.025448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114361, 31.616243, 22.365877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021430, 0.910906, 0.412056,
		-0.937261, 0.125144, -0.325393,
		-0.347969, -0.393177, 0.851075,
		40.009972, 31.498291, 22.621201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704464, 32.158432, 22.113779>,  <40.253548, 31.773514, 22.025448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704464, 32.158432, 22.113779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829861, 32.022350, 22.468403>,  <39.905098, 31.940701, 22.681177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829861, 32.022350, 22.468403>,  <39.704464, 32.158432, 22.113779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829861, 32.022350, 22.468403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047042, 0.938037, 0.343326,
		-0.948426, -0.065924, 0.310068,
		0.313489, -0.340206, 0.886558,
		39.923908, 31.920288, 22.734369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320503, 32.426743, 22.656971>,  <39.704464, 32.158432, 22.113779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320503, 32.426743, 22.656971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650444, 32.329861, 22.861309>,  <39.848408, 32.271732, 22.983912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650444, 32.329861, 22.861309>,  <39.320503, 32.426743, 22.656971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650444, 32.329861, 22.861309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027109, 0.919488, 0.392183,
		-0.564703, -0.309643, 0.765004,
		0.824848, -0.242206, 0.510843,
		39.897900, 32.257198, 23.014563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585712, 32.079346, 22.671856>,  <39.320503, 32.426743, 22.656971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585712, 32.079346, 22.671856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302113, 32.314327, 22.515793>,  <38.131954, 32.455315, 22.422155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302113, 32.314327, 22.515793>,  <38.585712, 32.079346, 22.671856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302113, 32.314327, 22.515793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398908, -0.790312, -0.465059,
		-0.581546, -0.174088, 0.794668,
		-0.708997, 0.587453, -0.390157,
		38.089413, 32.490562, 22.398746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912056, 31.745733, 22.716146>,  <38.585712, 32.079346, 22.671856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912056, 31.745733, 22.716146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.899952, 32.005852, 22.412516>,  <37.892689, 32.161922, 22.230337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.899952, 32.005852, 22.412516>,  <37.912056, 31.745733, 22.716146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899952, 32.005852, 22.412516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273577, -0.735814, -0.619462,
		-0.961374, 0.188919, 0.200174,
		-0.030263, 0.650297, -0.759077,
		37.890873, 32.200939, 22.184793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291054, 31.654263, 22.403717>,  <37.912056, 31.745733, 22.716146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291054, 31.654263, 22.403717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.509628, 31.851990, 22.133293>,  <37.640774, 31.970627, 21.971039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.509628, 31.851990, 22.133293>,  <37.291054, 31.654263, 22.403717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509628, 31.851990, 22.133293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358073, -0.591837, -0.722158,
		-0.757092, 0.636693, -0.146400,
		0.546438, 0.494319, -0.676058,
		37.673561, 32.000286, 21.930475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871025, 31.640600, 21.772379>,  <37.291054, 31.654263, 22.403717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871025, 31.640600, 21.772379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233261, 31.767851, 21.660168>,  <37.450603, 31.844200, 21.592840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233261, 31.767851, 21.660168>,  <36.871025, 31.640600, 21.772379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233261, 31.767851, 21.660168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148587, -0.381533, -0.912335,
		-0.397266, 0.867888, -0.298245,
		0.905594, 0.318125, -0.280527,
		37.504940, 31.863289, 21.576010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776009, 32.001720, 21.109489>,  <36.871025, 31.640600, 21.772379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776009, 32.001720, 21.109489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.157787, 31.889956, 21.151363>,  <37.386856, 31.822897, 21.176487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.157787, 31.889956, 21.151363>,  <36.776009, 32.001720, 21.109489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157787, 31.889956, 21.151363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032149, -0.445106, -0.894901,
		0.296640, 0.850771, -0.433813,
		0.954448, -0.279410, 0.104685,
		37.444122, 31.806133, 21.182768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173691, 32.059219, 20.460449>,  <36.776009, 32.001720, 21.109489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173691, 32.059219, 20.460449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.369091, 31.778521, 20.667879>,  <37.486332, 31.610102, 20.792337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.369091, 31.778521, 20.667879>,  <37.173691, 32.059219, 20.460449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369091, 31.778521, 20.667879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071805, -0.559967, -0.825398,
		0.869606, 0.440441, -0.223153,
		0.488498, -0.701747, 0.518576,
		37.515640, 31.567997, 20.823452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609684, 31.826895, 20.019283>,  <37.173691, 32.059219, 20.460449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609684, 31.826895, 20.019283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.622684, 31.524672, 20.280993>,  <37.630486, 31.343338, 20.438019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.622684, 31.524672, 20.280993>,  <37.609684, 31.826895, 20.019283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622684, 31.524672, 20.280993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245090, -0.628609, -0.738093,
		0.968955, 0.184345, 0.164749,
		0.032502, -0.755558, 0.654275,
		37.632435, 31.298004, 20.477276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155434, 31.471571, 19.810261>,  <37.609684, 31.826895, 20.019283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155434, 31.471571, 19.810261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.947968, 31.204012, 20.023262>,  <37.823486, 31.043476, 20.151062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.947968, 31.204012, 20.023262>,  <38.155434, 31.471571, 19.810261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947968, 31.204012, 20.023262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153970, -0.685720, -0.711394,
		0.840998, -0.286987, 0.458650,
		-0.518667, -0.668899, 0.532502,
		37.792366, 31.003342, 20.183012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486610, 30.812449, 19.686003>,  <38.155434, 31.471571, 19.810261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486610, 30.812449, 19.686003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132931, 30.697945, 19.833649>,  <37.920723, 30.629242, 19.922237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132931, 30.697945, 19.833649>,  <38.486610, 30.812449, 19.686003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132931, 30.697945, 19.833649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072818, -0.865025, -0.496417,
		0.461399, -0.412053, 0.785699,
		-0.884199, -0.286260, 0.369117,
		37.867672, 30.612066, 19.944384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589748, 30.136435, 20.106596>,  <38.486610, 30.812449, 19.686003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589748, 30.136435, 20.106596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.209026, 30.144020, 19.984144>,  <37.980595, 30.148571, 19.910673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.209026, 30.144020, 19.984144>,  <38.589748, 30.136435, 20.106596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209026, 30.144020, 19.984144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102072, -0.921611, -0.374453,
		-0.289232, -0.387652, 0.875255,
		-0.951802, 0.018964, -0.306128,
		37.923485, 30.149710, 19.892305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474274, 29.377279, 20.177919>,  <38.589748, 30.136435, 20.106596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474274, 29.377279, 20.177919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.155071, 29.543472, 20.003309>,  <37.963551, 29.643188, 19.898544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.155071, 29.543472, 20.003309>,  <38.474274, 29.377279, 20.177919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155071, 29.543472, 20.003309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121139, -0.820156, -0.559168,
		-0.590342, -0.393342, 0.704825,
		-0.798011, 0.415482, -0.436523,
		37.915668, 29.668118, 19.872353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870956, 28.999216, 20.423548>,  <38.474274, 29.377279, 20.177919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870956, 28.999216, 20.423548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.803909, 29.166237, 20.066324>,  <37.763683, 29.266449, 19.851990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.803909, 29.166237, 20.066324>,  <37.870956, 28.999216, 20.423548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803909, 29.166237, 20.066324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093880, -0.908519, -0.407160,
		-0.981372, 0.015595, 0.191480,
		-0.167614, 0.417551, -0.893060,
		37.753624, 29.291502, 19.798407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293751, 28.749485, 20.124832>,  <37.870956, 28.999216, 20.423548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293751, 28.749485, 20.124832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.520100, 28.887199, 19.825163>,  <37.655907, 28.969828, 19.645361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.520100, 28.887199, 19.825163>,  <37.293751, 28.749485, 20.124832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520100, 28.887199, 19.825163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091275, -0.876899, -0.471929,
		-0.819428, 0.335430, -0.464784,
		0.565868, 0.344288, -0.749172,
		37.689861, 28.990486, 19.600410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887768, 28.316946, 19.755163>,  <37.293751, 28.749485, 20.124832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887768, 28.316946, 19.755163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.632339, 28.023365, 19.847723>,  <36.479084, 27.847216, 19.903259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.632339, 28.023365, 19.847723>,  <36.887768, 28.316946, 19.755163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632339, 28.023365, 19.847723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260326, 0.488978, 0.832545,
		-0.724197, 0.471397, -0.503312,
		-0.638568, -0.733952, 0.231400,
		36.440769, 27.803179, 19.917143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240673, 28.559526, 19.866407>,  <36.887768, 28.316946, 19.755163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240673, 28.559526, 19.866407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.216141, 28.208532, 20.056675>,  <36.201424, 27.997936, 20.170835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.216141, 28.208532, 20.056675>,  <36.240673, 28.559526, 19.866407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216141, 28.208532, 20.056675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558887, 0.425039, 0.712031,
		-0.826973, -0.222178, -0.516480,
		-0.061326, -0.877485, 0.475668,
		36.197742, 27.945288, 20.199375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542194, 28.668089, 20.202785>,  <36.240673, 28.559526, 19.866407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542194, 28.668089, 20.202785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.732849, 28.360762, 20.373667>,  <35.847244, 28.176365, 20.476194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.732849, 28.360762, 20.373667>,  <35.542194, 28.668089, 20.202785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732849, 28.360762, 20.373667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325986, 0.296834, 0.897565,
		-0.816423, -0.567078, -0.108978,
		0.476641, -0.768318, 0.427202,
		35.875843, 28.130266, 20.501827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026054, 28.272150, 20.553881>,  <35.542194, 28.668089, 20.202785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026054, 28.272150, 20.553881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.380253, 28.202059, 20.726019>,  <35.592770, 28.160004, 20.829302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.380253, 28.202059, 20.726019>,  <35.026054, 28.272150, 20.553881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380253, 28.202059, 20.726019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346206, 0.368911, 0.862581,
		-0.309906, -0.912798, 0.266004,
		0.885495, -0.175227, 0.430344,
		35.645901, 28.149490, 20.855122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825989, 28.076294, 21.231646>,  <35.026054, 28.272150, 20.553881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825989, 28.076294, 21.231646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.221157, 28.127470, 21.266602>,  <35.458260, 28.158175, 21.287575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.221157, 28.127470, 21.266602>,  <34.825989, 28.076294, 21.231646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221157, 28.127470, 21.266602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118152, 0.257211, 0.959105,
		0.100227, -0.957849, 0.269221,
		0.987924, 0.127938, 0.087392,
		35.517536, 28.165852, 21.292820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001095, 27.797647, 21.871817>,  <34.825989, 28.076294, 21.231646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001095, 27.797647, 21.871817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.276775, 28.073376, 21.782524>,  <35.442184, 28.238813, 21.728949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.276775, 28.073376, 21.782524>,  <35.001095, 27.797647, 21.871817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276775, 28.073376, 21.782524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132703, 0.422964, 0.896377,
		0.712311, -0.588163, 0.382984,
		0.689204, 0.689323, -0.223231,
		35.483536, 28.280172, 21.715555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379936, 27.891615, 22.478397>,  <35.001095, 27.797647, 21.871817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379936, 27.891615, 22.478397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.423668, 28.212873, 22.244131>,  <35.449905, 28.405628, 22.103571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.423668, 28.212873, 22.244131>,  <35.379936, 27.891615, 22.478397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423668, 28.212873, 22.244131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286002, 0.589700, 0.755286,
		0.951972, 0.084927, 0.294172,
		0.109329, 0.803144, -0.585667,
		35.456467, 28.453817, 22.068432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792446, 28.333918, 22.923086>,  <35.379936, 27.891615, 22.478397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792446, 28.333918, 22.923086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.656502, 28.572449, 22.632187>,  <35.574936, 28.715569, 22.457647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.656502, 28.572449, 22.632187>,  <35.792446, 28.333918, 22.923086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656502, 28.572449, 22.632187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117301, 0.740360, 0.661898,
		0.933133, 0.310257, -0.181666,
		-0.339857, 0.596329, -0.727248,
		35.554546, 28.751347, 22.414013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461418, 28.445845, 23.036108>,  <35.792446, 28.333918, 22.923086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461418, 28.445845, 23.036108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.546883, 28.165121, 23.307936>,  <36.598160, 27.996687, 23.471031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.546883, 28.165121, 23.307936>,  <36.461418, 28.445845, 23.036108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546883, 28.165121, 23.307936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287535, -0.709996, -0.642830,
		0.933634, -0.058051, -0.353494,
		0.213662, -0.701810, 0.679567,
		36.610981, 27.954578, 23.511806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830776, 28.001585, 22.697390>,  <36.461418, 28.445845, 23.036108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830776, 28.001585, 22.697390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.693027, 27.797932, 23.012907>,  <36.610378, 27.675739, 23.202217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.693027, 27.797932, 23.012907>,  <36.830776, 28.001585, 22.697390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693027, 27.797932, 23.012907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104123, -0.814288, -0.571046,
		0.933042, -0.278782, 0.227403,
		-0.344369, -0.509132, 0.788793,
		36.589718, 27.645191, 23.249544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213203, 27.434370, 22.732300>,  <36.830776, 28.001585, 22.697390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213203, 27.434370, 22.732300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.877060, 27.325392, 22.919733>,  <36.675373, 27.260006, 23.032192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.877060, 27.325392, 22.919733>,  <37.213203, 27.434370, 22.732300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877060, 27.325392, 22.919733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053882, -0.902204, -0.427930,
		0.539343, -0.334368, 0.772856,
		-0.840361, -0.272444, 0.468581,
		36.624950, 27.243658, 23.060307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405338, 26.807592, 22.992451>,  <37.213203, 27.434370, 22.732300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405338, 26.807592, 22.992451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.005600, 26.794699, 22.999126>,  <36.765759, 26.786963, 23.003132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.005600, 26.794699, 22.999126>,  <37.405338, 26.807592, 22.992451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005600, 26.794699, 22.999126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027637, -0.973765, -0.225869,
		0.023530, -0.225259, 0.974015,
		-0.999341, -0.032233, 0.016687,
		36.705799, 26.785028, 23.004133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213680, 26.290545, 23.386070>,  <37.405338, 26.807592, 22.992451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213680, 26.290545, 23.386070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.876431, 26.347799, 23.178745>,  <36.674080, 26.382153, 23.054350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.876431, 26.347799, 23.178745>,  <37.213680, 26.290545, 23.386070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876431, 26.347799, 23.178745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113047, -0.989561, -0.089384,
		-0.525697, -0.016768, 0.850506,
		-0.843127, 0.143136, -0.518314,
		36.623493, 26.390739, 23.023251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685726, 25.744989, 23.534943>,  <37.213680, 26.290545, 23.386070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685726, 25.744989, 23.534943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.582512, 25.877716, 23.171995>,  <36.520584, 25.957352, 22.954227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.582512, 25.877716, 23.171995>,  <36.685726, 25.744989, 23.534943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582512, 25.877716, 23.171995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086101, -0.943333, -0.320482,
		-0.962290, -0.004571, 0.271986,
		-0.258038, 0.331815, -0.907367,
		36.505100, 25.977261, 22.899786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151512, 25.232258, 23.274160>,  <36.685726, 25.744989, 23.534943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151512, 25.232258, 23.274160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.281029, 25.437700, 22.956327>,  <36.358738, 25.560966, 22.765627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.281029, 25.437700, 22.956327>,  <36.151512, 25.232258, 23.274160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281029, 25.437700, 22.956327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104462, -0.815286, -0.569558,
		-0.940343, 0.267424, -0.210333,
		0.323795, 0.513608, -0.794584,
		36.378166, 25.591784, 22.717953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757294, 24.917139, 22.829264>,  <36.151512, 25.232258, 23.274160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757294, 24.917139, 22.829264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.038704, 25.106384, 22.617144>,  <36.207550, 25.219931, 22.489872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.038704, 25.106384, 22.617144>,  <35.757294, 24.917139, 22.829264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038704, 25.106384, 22.617144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077930, -0.793054, -0.604145,
		-0.706386, 0.383705, -0.594802,
		0.703524, 0.473113, -0.530301,
		36.249760, 25.248318, 22.458054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628208, 24.809242, 22.147764>,  <35.757294, 24.917139, 22.829264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628208, 24.809242, 22.147764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.014332, 24.913260, 22.157171>,  <36.246006, 24.975670, 22.162815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.014332, 24.913260, 22.157171>,  <35.628208, 24.809242, 22.147764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014332, 24.913260, 22.157171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228690, -0.798578, -0.556753,
		-0.125998, 0.542818, -0.830345,
		0.965311, 0.260041, 0.023518,
		36.303925, 24.991272, 22.164227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.874798, 37.728073, 32.315083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235207, 37.615677, 32.182892>,  <38.451450, 37.548241, 32.103577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235207, 37.615677, 32.182892>,  <37.874798, 37.728073, 32.315083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235207, 37.615677, 32.182892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406848, -0.811677, -0.419112,
		-0.150473, 0.512080, -0.845655,
		0.901017, -0.280988, -0.330474,
		38.505512, 37.531380, 32.083748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991966, 37.631546, 31.483896>,  <37.874798, 37.728073, 32.315083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991966, 37.631546, 31.483896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223904, 37.384159, 31.696037>,  <38.363068, 37.235725, 31.823322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223904, 37.384159, 31.696037>,  <37.991966, 37.631546, 31.483896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223904, 37.384159, 31.696037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375569, -0.780578, -0.499646,
		0.722997, 0.090534, -0.684893,
		0.579848, -0.618467, 0.530354,
		38.397858, 37.198620, 31.855143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218307, 37.172634, 30.989788>,  <37.991966, 37.631546, 31.483896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218307, 37.172634, 30.989788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306427, 36.989616, 31.334375>,  <38.359299, 36.879807, 31.541128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306427, 36.989616, 31.334375>,  <38.218307, 37.172634, 30.989788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306427, 36.989616, 31.334375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276261, -0.876269, -0.394757,
		0.935494, -0.151026, -0.319440,
		0.220297, -0.457541, 0.861467,
		38.372517, 36.852352, 31.592815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584019, 36.576157, 30.770418>,  <38.218307, 37.172634, 30.989788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584019, 36.576157, 30.770418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453758, 36.483849, 31.137177>,  <38.375603, 36.428463, 31.357231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453758, 36.483849, 31.137177>,  <38.584019, 36.576157, 30.770418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453758, 36.483849, 31.137177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415894, -0.835938, -0.358106,
		0.849108, -0.497948, 0.176247,
		-0.325649, -0.230770, 0.916896,
		38.356064, 36.414616, 31.412245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681107, 35.874058, 30.847919>,  <38.584019, 36.576157, 30.770418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681107, 35.874058, 30.847919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389061, 35.983135, 31.098539>,  <38.213833, 36.048580, 31.248911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389061, 35.983135, 31.098539>,  <38.681107, 35.874058, 30.847919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389061, 35.983135, 31.098539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514115, -0.823223, -0.240810,
		0.450125, -0.497940, 0.741245,
		-0.730119, 0.272690, 0.626552,
		38.170025, 36.064941, 31.286505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749413, 35.419765, 31.304331>,  <38.681107, 35.874058, 30.847919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749413, 35.419765, 31.304331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366394, 35.534592, 31.314951>,  <38.136585, 35.603489, 31.321323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366394, 35.534592, 31.314951>,  <38.749413, 35.419765, 31.304331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366394, 35.534592, 31.314951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286462, -0.937060, -0.199647,
		-0.032433, -0.198776, 0.979508,
		-0.957543, 0.287067, 0.026550,
		38.079132, 35.620712, 31.322916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390408, 34.923317, 31.681164>,  <38.749413, 35.419765, 31.304331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390408, 34.923317, 31.681164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.105259, 35.120186, 31.481333>,  <37.934170, 35.238308, 31.361433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.105259, 35.120186, 31.481333>,  <38.390408, 34.923317, 31.681164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105259, 35.120186, 31.481333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350372, -0.867040, -0.354232,
		-0.607499, -0.077483, 0.790532,
		-0.712870, 0.492176, -0.499578,
		37.891399, 35.267838, 31.331459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726906, 34.580185, 31.789070>,  <38.390408, 34.923317, 31.681164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726906, 34.580185, 31.789070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628162, 34.799122, 31.469200>,  <37.568916, 34.930485, 31.277277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628162, 34.799122, 31.469200>,  <37.726906, 34.580185, 31.789070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628162, 34.799122, 31.469200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281138, -0.830175, -0.481426,
		-0.927375, 0.105977, 0.358811,
		-0.246855, 0.547338, -0.799677,
		37.554104, 34.963322, 31.229298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080093, 34.292133, 31.540173>,  <37.726906, 34.580185, 31.789070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080093, 34.292133, 31.540173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210209, 34.518097, 31.236841>,  <37.288280, 34.653675, 31.054842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210209, 34.518097, 31.236841>,  <37.080093, 34.292133, 31.540173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210209, 34.518097, 31.236841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175251, -0.752037, -0.635395,
		-0.929232, 0.339586, -0.145630,
		0.325291, 0.564908, -0.758330,
		37.307796, 34.687569, 31.009342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487045, 34.390213, 31.029408>,  <37.080093, 34.292133, 31.540173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487045, 34.390213, 31.029408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835484, 34.427250, 30.836489>,  <37.044548, 34.449471, 30.720737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835484, 34.427250, 30.836489>,  <36.487045, 34.390213, 31.029408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835484, 34.427250, 30.836489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284407, -0.705513, -0.649126,
		-0.400372, 0.702622, -0.588238,
		0.871100, 0.092593, -0.482298,
		37.096813, 34.455029, 30.691799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224850, 34.313904, 30.316959>,  <36.487045, 34.390213, 31.029408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224850, 34.313904, 30.316959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623466, 34.285179, 30.300241>,  <36.862637, 34.267944, 30.290211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623466, 34.285179, 30.300241>,  <36.224850, 34.313904, 30.316959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623466, 34.285179, 30.300241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079939, -0.691492, -0.717948,
		0.022653, 0.718806, -0.694841,
		0.996542, -0.071809, -0.041796,
		36.922428, 34.263638, 30.287703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602459, 34.457176, 29.643349>,  <36.224850, 34.313904, 30.316959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602459, 34.457176, 29.643349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852337, 34.196430, 29.815313>,  <37.002266, 34.039982, 29.918491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852337, 34.196430, 29.815313>,  <36.602459, 34.457176, 29.643349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852337, 34.196430, 29.815313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138622, -0.634389, -0.760483,
		0.768465, 0.415476, -0.486664,
		0.624697, -0.651866, 0.429912,
		37.039745, 34.000870, 29.944286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575783, 34.745815, 28.913872>,  <36.602459, 34.457176, 29.643349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575783, 34.745815, 28.913872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181572, 34.747654, 28.846096>,  <35.945045, 34.748756, 28.805431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181572, 34.747654, 28.846096>,  <36.575783, 34.745815, 28.913872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181572, 34.747654, 28.846096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095905, 0.809126, 0.579757,
		0.139760, 0.587618, -0.796977,
		-0.985530, 0.004593, -0.169439,
		35.885914, 34.749031, 28.795265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380383, 35.461971, 28.811138>,  <36.575783, 34.745815, 28.913872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380383, 35.461971, 28.811138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036324, 35.279385, 28.902163>,  <35.829887, 35.169830, 28.956778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036324, 35.279385, 28.902163>,  <36.380383, 35.461971, 28.811138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036324, 35.279385, 28.902163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261106, 0.777336, 0.572339,
		-0.438146, 0.432879, -0.787810,
		-0.860147, -0.456470, 0.227559,
		35.778278, 35.142445, 28.970430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810867, 35.946251, 28.775961>,  <36.380383, 35.461971, 28.811138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810867, 35.946251, 28.775961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666073, 35.648605, 29.000551>,  <35.579197, 35.470016, 29.135305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666073, 35.648605, 29.000551>,  <35.810867, 35.946251, 28.775961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666073, 35.648605, 29.000551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355087, 0.666983, 0.655017,
		-0.861904, 0.037735, -0.505665,
		-0.361987, -0.744117, 0.561476,
		35.557476, 35.425369, 29.168995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133312, 36.164799, 28.898376>,  <35.810867, 35.946251, 28.775961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133312, 36.164799, 28.898376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198200, 35.894566, 29.186062>,  <35.237133, 35.732426, 29.358673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198200, 35.894566, 29.186062>,  <35.133312, 36.164799, 28.898376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198200, 35.894566, 29.186062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279945, 0.667408, 0.690070,
		-0.946210, -0.313285, -0.080859,
		0.162223, -0.675588, 0.719211,
		35.246868, 35.691891, 29.401825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579140, 36.109291, 29.318220>,  <35.133312, 36.164799, 28.898376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579140, 36.109291, 29.318220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860207, 35.941597, 29.548178>,  <35.028847, 35.840981, 29.686152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860207, 35.941597, 29.548178>,  <34.579140, 36.109291, 29.318220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860207, 35.941597, 29.548178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295255, 0.563326, 0.771679,
		-0.647367, -0.711973, 0.272048,
		0.702666, -0.419236, 0.574892,
		35.071007, 35.815826, 29.720646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356998, 36.198036, 29.930023>,  <34.579140, 36.109291, 29.318220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356998, 36.198036, 29.930023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734978, 36.092236, 30.007086>,  <34.961765, 36.028755, 30.053324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734978, 36.092236, 30.007086>,  <34.356998, 36.198036, 29.930023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734978, 36.092236, 30.007086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016116, 0.625655, 0.779934,
		-0.326835, -0.733889, 0.595471,
		0.944944, -0.264506, 0.192659,
		35.018459, 36.012882, 30.064884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347729, 35.961563, 30.554323>,  <34.356998, 36.198036, 29.930023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347729, 35.961563, 30.554323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697910, 36.140968, 30.482302>,  <34.908020, 36.248611, 30.439089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697910, 36.140968, 30.482302>,  <34.347729, 35.961563, 30.554323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697910, 36.140968, 30.482302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151086, 0.607852, 0.779544,
		0.459078, -0.655252, 0.599910,
		0.875455, 0.448509, -0.180052,
		34.960548, 36.275520, 30.428286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619289, 36.075573, 31.251152>,  <34.347729, 35.961563, 30.554323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619289, 36.075573, 31.251152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833908, 36.292698, 30.992702>,  <34.962677, 36.422974, 30.837633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833908, 36.292698, 30.992702>,  <34.619289, 36.075573, 31.251152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833908, 36.292698, 30.992702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080869, 0.795218, 0.600906,
		0.839989, -0.270161, 0.470565,
		0.536543, 0.542809, -0.646127,
		34.994873, 36.455540, 30.798864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048061, 36.410313, 31.680185>,  <34.619289, 36.075573, 31.251152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048061, 36.410313, 31.680185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089951, 36.646011, 31.359730>,  <35.115082, 36.787430, 31.167456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089951, 36.646011, 31.359730>,  <35.048061, 36.410313, 31.680185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089951, 36.646011, 31.359730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185929, 0.779764, 0.597828,
		0.976967, -0.211558, -0.027902,
		0.104719, 0.589246, -0.801138,
		35.121365, 36.822784, 31.119389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718216, 36.851227, 31.795626>,  <35.048061, 36.410313, 31.680185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718216, 36.851227, 31.795626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.480728, 37.026852, 31.525894>,  <35.338234, 37.132225, 31.364056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.480728, 37.026852, 31.525894>,  <35.718216, 36.851227, 31.795626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480728, 37.026852, 31.525894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173320, 0.888127, 0.425665,
		0.785782, 0.135852, -0.603399,
		-0.593722, 0.439061, -0.674329,
		35.302612, 37.158569, 31.323595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137749, 37.324554, 31.539820>,  <35.718216, 36.851227, 31.795626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137749, 37.324554, 31.539820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768642, 37.451733, 31.452719>,  <35.547180, 37.528042, 31.400457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768642, 37.451733, 31.452719>,  <36.137749, 37.324554, 31.539820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768642, 37.451733, 31.452719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236988, 0.913767, 0.329950,
		0.303884, 0.252860, -0.918540,
		-0.922763, 0.317949, -0.217755,
		35.491814, 37.547119, 31.387392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161018, 38.072456, 31.265526>,  <36.137749, 37.324554, 31.539820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161018, 38.072456, 31.265526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767918, 38.043324, 31.333513>,  <35.532055, 38.025845, 31.374306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767918, 38.043324, 31.333513>,  <36.161018, 38.072456, 31.265526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767918, 38.043324, 31.333513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002475, 0.924260, 0.381756,
		-0.184902, 0.374752, -0.908500,
		-0.982754, -0.072836, 0.169970,
		35.473091, 38.021473, 31.384504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807236, 38.682240, 30.973114>,  <36.161018, 38.072456, 31.265526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807236, 38.682240, 30.973114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559757, 38.533730, 31.250059>,  <35.411270, 38.444622, 31.416227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559757, 38.533730, 31.250059>,  <35.807236, 38.682240, 30.973114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559757, 38.533730, 31.250059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105188, 0.912497, 0.395329,
		-0.778558, 0.171760, -0.603612,
		-0.618695, -0.371280, 0.692364,
		35.374149, 38.422344, 31.457767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199589, 39.187157, 31.034689>,  <35.807236, 38.682240, 30.973114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199589, 39.187157, 31.034689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230602, 38.944523, 31.351179>,  <35.249210, 38.798943, 31.541073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230602, 38.944523, 31.351179>,  <35.199589, 39.187157, 31.034689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230602, 38.944523, 31.351179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062516, 0.789095, 0.611082,
		-0.995028, -0.096843, 0.023259,
		0.077532, -0.606589, 0.791226,
		35.253860, 38.762547, 31.588547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793716, 39.325459, 30.525208>,  <35.199589, 39.187157, 31.034689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793716, 39.325459, 30.525208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648300, 39.607903, 30.282146>,  <35.561050, 39.777370, 30.136309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648300, 39.607903, 30.282146>,  <35.793716, 39.325459, 30.525208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648300, 39.607903, 30.282146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085377, -0.674793, -0.733052,
		-0.927659, -0.214611, 0.305598,
		-0.363537, 0.706113, -0.607655,
		35.539238, 39.819736, 30.099850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008190, 39.241833, 30.169699>,  <35.793716, 39.325459, 30.525208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008190, 39.241833, 30.169699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292553, 39.425190, 29.956348>,  <35.463169, 39.535202, 29.828339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292553, 39.425190, 29.956348>,  <35.008190, 39.241833, 30.169699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292553, 39.425190, 29.956348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064213, -0.712931, -0.698288,
		-0.700348, 0.530669, -0.477393,
		0.710908, 0.458389, -0.533375,
		35.505825, 39.562706, 29.796335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758934, 39.452103, 29.442869>,  <35.008190, 39.241833, 30.169699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758934, 39.452103, 29.442869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152431, 39.382378, 29.460100>,  <35.388531, 39.340542, 29.470438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152431, 39.382378, 29.460100>,  <34.758934, 39.452103, 29.442869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152431, 39.382378, 29.460100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064327, -0.566128, -0.821803,
		0.167636, 0.805676, -0.568140,
		0.983748, -0.174311, 0.043077,
		35.447556, 39.330086, 29.473022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978813, 39.410393, 28.804007>,  <34.758934, 39.452103, 29.442869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978813, 39.410393, 28.804007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285152, 39.236248, 28.993296>,  <35.468956, 39.131763, 29.106869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285152, 39.236248, 28.993296>,  <34.978813, 39.410393, 28.804007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285152, 39.236248, 28.993296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159202, -0.584649, -0.795513,
		0.623004, 0.684579, -0.378442,
		0.765847, -0.435359, 0.473224,
		35.514908, 39.105640, 29.135263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539997, 39.490948, 28.342916>,  <34.978813, 39.410393, 28.804007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539997, 39.490948, 28.342916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633694, 39.189579, 28.588678>,  <35.689911, 39.008759, 28.736135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633694, 39.189579, 28.588678>,  <35.539997, 39.490948, 28.342916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633694, 39.189579, 28.588678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283679, -0.551513, -0.784449,
		0.929870, 0.358041, 0.084544,
		0.234238, -0.753419, 0.614404,
		35.703964, 38.963554, 28.772999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242294, 39.190979, 28.011204>,  <35.539997, 39.490948, 28.342916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242294, 39.190979, 28.011204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087872, 38.913097, 28.253969>,  <35.995216, 38.746368, 28.399628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087872, 38.913097, 28.253969>,  <36.242294, 39.190979, 28.011204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087872, 38.913097, 28.253969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191248, -0.703900, -0.684068,
		0.902432, -0.148020, 0.404608,
		-0.386059, -0.694705, 0.606913,
		35.972054, 38.704685, 28.436043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783855, 38.711727, 28.214638>,  <36.242294, 39.190979, 28.011204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783855, 38.711727, 28.214638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423756, 38.539383, 28.239662>,  <36.207695, 38.435978, 28.254677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423756, 38.539383, 28.239662>,  <36.783855, 38.711727, 28.214638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423756, 38.539383, 28.239662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316436, -0.746212, -0.585692,
		0.299033, -0.507472, 0.808116,
		-0.900249, -0.430858, 0.062560,
		36.153683, 38.410126, 28.258430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964180, 38.006905, 28.228678>,  <36.783855, 38.711727, 28.214638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964180, 38.006905, 28.228678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584774, 38.049011, 28.109186>,  <36.357132, 38.074276, 28.037491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584774, 38.049011, 28.109186>,  <36.964180, 38.006905, 28.228678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584774, 38.049011, 28.109186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149307, -0.683178, -0.714826,
		-0.279335, -0.722625, 0.632286,
		-0.948514, 0.105270, -0.298728,
		36.300220, 38.080593, 28.019567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822937, 37.343246, 27.963659>,  <36.964180, 38.006905, 28.228678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822937, 37.343246, 27.963659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518196, 37.570839, 27.839828>,  <36.335350, 37.707394, 27.765530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518196, 37.570839, 27.839828>,  <36.822937, 37.343246, 27.963659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518196, 37.570839, 27.839828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012659, -0.464758, -0.885347,
		-0.647625, -0.678424, 0.346875,
		-0.761854, 0.568982, -0.309577,
		36.289639, 37.741535, 27.746956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342964, 36.862553, 27.555891>,  <36.822937, 37.343246, 27.963659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342964, 36.862553, 27.555891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281048, 37.242218, 27.446251>,  <36.243896, 37.470016, 27.380466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281048, 37.242218, 27.446251>,  <36.342964, 36.862553, 27.555891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281048, 37.242218, 27.446251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038881, -0.271375, -0.961688,
		-0.987182, -0.159518, 0.005102,
		-0.154791, 0.949163, -0.274099,
		36.234612, 37.526966, 27.364021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954666, 36.726021, 27.015934>,  <36.342964, 36.862553, 27.555891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954666, 36.726021, 27.015934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092781, 37.100498, 26.989674>,  <36.175652, 37.325184, 26.973917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092781, 37.100498, 26.989674>,  <35.954666, 36.726021, 27.015934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092781, 37.100498, 26.989674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113963, -0.111260, -0.987235,
		-0.931552, 0.333399, -0.145109,
		0.345288, 0.936198, -0.065649,
		36.196369, 37.381359, 26.969978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469315, 37.136944, 26.600611>,  <35.954666, 36.726021, 27.015934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469315, 37.136944, 26.600611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821178, 37.326977, 26.609470>,  <36.032299, 37.440994, 26.614786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821178, 37.326977, 26.609470>,  <35.469315, 37.136944, 26.600611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821178, 37.326977, 26.609470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054161, -0.053798, -0.997082,
		-0.472502, 0.878297, -0.073055,
		0.879664, 0.475079, 0.022150,
		36.085079, 37.469501, 26.616116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473312, 37.460079, 25.923227>,  <35.469315, 37.136944, 26.600611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473312, 37.460079, 25.923227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855236, 37.467537, 26.041887>,  <36.084389, 37.472012, 26.113083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855236, 37.467537, 26.041887>,  <35.473312, 37.460079, 25.923227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855236, 37.467537, 26.041887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282763, -0.364601, -0.887193,
		0.091614, 0.930977, -0.353396,
		0.954805, 0.018648, 0.296648,
		36.141678, 37.473133, 26.130882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832886, 37.546143, 25.241093>,  <35.473312, 37.460079, 25.923227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832886, 37.546143, 25.241093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115631, 37.450184, 25.507263>,  <36.285278, 37.392609, 25.666965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115631, 37.450184, 25.507263>,  <35.832886, 37.546143, 25.241093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115631, 37.450184, 25.507263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470871, -0.542418, -0.695747,
		0.527847, 0.805128, -0.270456,
		0.706866, -0.239898, 0.665425,
		36.327690, 37.378216, 25.706890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506847, 37.586647, 24.929436>,  <35.832886, 37.546143, 25.241093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506847, 37.586647, 24.929436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569157, 37.337414, 25.236031>,  <36.606541, 37.187874, 25.419987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569157, 37.337414, 25.236031>,  <36.506847, 37.586647, 24.929436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569157, 37.337414, 25.236031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505203, -0.616538, -0.603864,
		0.848826, 0.481296, 0.218745,
		0.155772, -0.623085, 0.766485,
		36.615887, 37.150490, 25.465977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185280, 37.434311, 24.913023>,  <36.506847, 37.586647, 24.929436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185280, 37.434311, 24.913023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021576, 37.129173, 25.113253>,  <36.923355, 36.946091, 25.233391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021576, 37.129173, 25.113253>,  <37.185280, 37.434311, 24.913023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021576, 37.129173, 25.113253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535228, -0.645036, -0.545399,
		0.738943, 0.044713, 0.672282,
		-0.409260, -0.762843, 0.500576,
		36.898796, 36.900322, 25.263426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745541, 36.891155, 25.116493>,  <37.185280, 37.434311, 24.913023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745541, 36.891155, 25.116493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397640, 36.694145, 25.128801>,  <37.188900, 36.575939, 25.136187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397640, 36.694145, 25.128801>,  <37.745541, 36.891155, 25.116493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397640, 36.694145, 25.128801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463395, -0.836575, -0.292244,
		0.169677, -0.239923, 0.955849,
		-0.869755, -0.492523, 0.030769,
		37.136715, 36.546387, 25.138031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823711, 36.153011, 25.482309>,  <37.745541, 36.891155, 25.116493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823711, 36.153011, 25.482309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490326, 36.120022, 25.263754>,  <37.290295, 36.100227, 25.132620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490326, 36.120022, 25.263754>,  <37.823711, 36.153011, 25.482309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490326, 36.120022, 25.263754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270803, -0.922884, -0.273771,
		-0.481674, -0.376141, 0.791523,
		-0.833460, -0.082478, -0.546390,
		37.240288, 36.095280, 25.099836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602859, 35.512829, 25.654465>,  <37.823711, 36.153011, 25.482309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602859, 35.512829, 25.654465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.441929, 35.613621, 25.302410>,  <37.345371, 35.674095, 25.091177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.441929, 35.613621, 25.302410>,  <37.602859, 35.512829, 25.654465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441929, 35.613621, 25.302410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223309, -0.905327, -0.361271,
		-0.887844, -0.341891, 0.307968,
		-0.402326, 0.251980, -0.880136,
		37.321232, 35.689217, 25.038368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303974, 34.833923, 25.354069>,  <37.602859, 35.512829, 25.654465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303974, 34.833923, 25.354069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305389, 35.072041, 25.032669>,  <37.306236, 35.214912, 24.839828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305389, 35.072041, 25.032669>,  <37.303974, 34.833923, 25.354069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305389, 35.072041, 25.032669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407987, -0.734450, -0.542338,
		-0.912981, -0.325900, -0.245469,
		0.003536, 0.595292, -0.803501,
		37.306450, 35.250629, 24.791618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914940, 34.460869, 24.843538>,  <37.303974, 34.833923, 25.354069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914940, 34.460869, 24.843538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124432, 34.749699, 24.662735>,  <37.250126, 34.922997, 24.554253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124432, 34.749699, 24.662735>,  <36.914940, 34.460869, 24.843538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124432, 34.749699, 24.662735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181685, -0.613068, -0.768855,
		-0.832286, 0.320548, -0.452271,
		0.523728, 0.722078, -0.452009,
		37.281551, 34.966324, 24.527132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561722, 34.604477, 24.117699>,  <36.914940, 34.460869, 24.843538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561722, 34.604477, 24.117699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944481, 34.720608, 24.114422>,  <37.174137, 34.790287, 24.112455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944481, 34.720608, 24.114422>,  <36.561722, 34.604477, 24.117699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944481, 34.720608, 24.114422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127318, -0.444654, -0.886608,
		-0.261045, 0.847347, -0.462450,
		0.956894, 0.290322, -0.008192,
		37.231548, 34.807705, 24.111963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654533, 34.805832, 23.485561>,  <36.561722, 34.604477, 24.117699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654533, 34.805832, 23.485561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013424, 34.698582, 23.625900>,  <37.228760, 34.634232, 23.710104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013424, 34.698582, 23.625900>,  <36.654533, 34.805832, 23.485561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013424, 34.698582, 23.625900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176817, -0.509908, -0.841861,
		0.404623, 0.817376, -0.410094,
		0.897227, -0.268125, 0.350846,
		37.282593, 34.618145, 23.731153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029701, 34.685600, 22.897568>,  <36.654533, 34.805832, 23.485561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029701, 34.685600, 22.897568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246456, 34.509415, 23.183882>,  <37.376511, 34.403702, 23.355669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246456, 34.509415, 23.183882>,  <37.029701, 34.685600, 22.897568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246456, 34.509415, 23.183882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436515, -0.580283, -0.687550,
		0.718198, 0.685028, -0.122181,
		0.541891, -0.440464, 0.715784,
		37.409023, 34.377277, 23.398617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728806, 34.637501, 22.680807>,  <37.029701, 34.685600, 22.897568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728806, 34.637501, 22.680807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696457, 34.342583, 22.949093>,  <37.677048, 34.165634, 23.110065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696457, 34.342583, 22.949093>,  <37.728806, 34.637501, 22.680807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696457, 34.342583, 22.949093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280447, -0.662568, -0.694517,
		0.956456, 0.131931, 0.260357,
		-0.080875, -0.737291, 0.670717,
		37.672195, 34.121395, 23.150309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349232, 34.313435, 22.491201>,  <37.728806, 34.637501, 22.680807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349232, 34.313435, 22.491201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.165356, 34.046562, 22.725657>,  <38.055031, 33.886440, 22.866329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.165356, 34.046562, 22.725657>,  <38.349232, 34.313435, 22.491201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165356, 34.046562, 22.725657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363834, -0.743559, -0.561021,
		0.810131, -0.044636, 0.584547,
		-0.459687, -0.667179, 0.586140,
		38.027451, 33.846409, 22.901499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789898, 33.735943, 22.505648>,  <38.349232, 34.313435, 22.491201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789898, 33.735943, 22.505648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453953, 33.550652, 22.618824>,  <38.252388, 33.439476, 22.686729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453953, 33.550652, 22.618824>,  <38.789898, 33.735943, 22.505648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453953, 33.550652, 22.618824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213754, -0.761388, -0.612043,
		0.498945, -0.453550, 0.738476,
		-0.839859, -0.463228, 0.282943,
		38.201996, 33.411682, 22.703707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916336, 33.017010, 22.575106>,  <38.789898, 33.735943, 22.505648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916336, 33.017010, 22.575106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.527832, 33.051445, 22.486345>,  <38.294731, 33.072105, 22.433088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.527832, 33.051445, 22.486345>,  <38.916336, 33.017010, 22.575106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527832, 33.051445, 22.486345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063520, -0.804726, -0.590238,
		-0.229384, -0.587371, 0.776131,
		-0.971262, 0.086092, -0.221901,
		38.236454, 33.077274, 22.419775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242504, 32.780640, 23.277378>,  <38.916336, 33.017010, 22.575106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242504, 32.780640, 23.277378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.631481, 32.688061, 23.288599>,  <39.864868, 32.632511, 23.295332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.631481, 32.688061, 23.288599>,  <39.242504, 32.780640, 23.277378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631481, 32.688061, 23.288599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199292, 0.887647, 0.415170,
		-0.120990, -0.398139, 0.909311,
		0.972443, -0.231450, 0.028051,
		39.923214, 32.618626, 23.297014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403545, 32.908154, 24.004658>,  <39.242504, 32.780640, 23.277378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403545, 32.908154, 24.004658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.747650, 32.913017, 23.800777>,  <39.954113, 32.915936, 23.678450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.747650, 32.913017, 23.800777>,  <39.403545, 32.908154, 24.004658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747650, 32.913017, 23.800777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243447, 0.868590, 0.431608,
		0.447970, -0.495383, 0.744257,
		0.860265, 0.012160, -0.509702,
		40.005730, 32.916664, 23.647867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912655, 33.093277, 24.486490>,  <39.403545, 32.908154, 24.004658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912655, 33.093277, 24.486490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.087364, 33.183987, 24.138283>,  <40.192192, 33.238411, 23.929359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.087364, 33.183987, 24.138283>,  <39.912655, 33.093277, 24.486490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087364, 33.183987, 24.138283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282337, 0.884248, 0.372010,
		0.854114, -0.408265, 0.322195,
		0.436779, 0.226771, -0.870517,
		40.218399, 33.252018, 23.877129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652664, 33.160194, 24.649588>,  <39.912655, 33.093277, 24.486490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652664, 33.160194, 24.649588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.561756, 33.369377, 24.320986>,  <40.507210, 33.494884, 24.123825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.561756, 33.369377, 24.320986>,  <40.652664, 33.160194, 24.649588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561756, 33.369377, 24.320986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306967, 0.839043, 0.449197,
		0.924186, -0.150085, -0.351220,
		-0.227271, 0.522954, -0.821503,
		40.493576, 33.526264, 24.074535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218365, 33.729511, 24.620258>,  <40.652664, 33.160194, 24.649588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218365, 33.729511, 24.620258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.942436, 33.857510, 24.360491>,  <40.776878, 33.934311, 24.204630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.942436, 33.857510, 24.360491>,  <41.218365, 33.729511, 24.620258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942436, 33.857510, 24.360491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130520, 0.937285, 0.323205,
		0.712116, 0.138192, -0.688327,
		-0.689823, 0.320000, -0.649419,
		40.735489, 33.953510, 24.165665>
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
