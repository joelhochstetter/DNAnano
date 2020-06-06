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
	<24.701225, 35.069618, 34.786076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413492, 34.885445, 34.994137>,  <24.240852, 34.774940, 35.118973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413492, 34.885445, 34.994137>,  <24.701225, 35.069618, 34.786076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413492, 34.885445, 34.994137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603544, 0.043499, -0.796142,
		0.343945, -0.886627, -0.309183,
		-0.719331, -0.460434, 0.520157,
		24.197693, 34.747314, 35.150185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416481, 34.406021, 34.504715>,  <24.701225, 35.069618, 34.786076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416481, 34.406021, 34.504715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151108, 34.612465, 34.721413>,  <23.991884, 34.736332, 34.851429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151108, 34.612465, 34.721413>,  <24.416481, 34.406021, 34.504715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.151108, 34.612465, 34.721413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510882, 0.216534, -0.831933,
		-0.546675, -0.828699, 0.120015,
		-0.663435, 0.516110, 0.541742,
		23.952078, 34.767300, 34.883934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177603, 34.128578, 34.389168>,  <24.416481, 34.406021, 34.504715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177603, 34.128578, 34.389168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205313, 34.499138, 34.537212>,  <25.221939, 34.721474, 34.626038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205313, 34.499138, 34.537212>,  <25.177603, 34.128578, 34.389168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205313, 34.499138, 34.537212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105028, 0.362168, -0.926177,
		-0.992053, 0.103034, -0.072209,
		0.069276, 0.926401, 0.370111,
		25.226095, 34.777058, 34.648247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957623, 34.510372, 33.899830>,  <25.177603, 34.128578, 34.389168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957623, 34.510372, 33.899830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136505, 34.780865, 34.133999>,  <25.243834, 34.943161, 34.274502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136505, 34.780865, 34.133999>,  <24.957623, 34.510372, 33.899830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136505, 34.780865, 34.133999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304068, 0.500597, -0.810522,
		-0.841160, 0.540478, 0.018249,
		0.447204, 0.676230, 0.585424,
		25.270666, 34.983734, 34.309628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688725, 35.241993, 33.851429>,  <24.957623, 34.510372, 33.899830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688725, 35.241993, 33.851429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067535, 35.255074, 33.979221>,  <25.294823, 35.262920, 34.055897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067535, 35.255074, 33.979221>,  <24.688725, 35.241993, 33.851429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067535, 35.255074, 33.979221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210361, 0.688509, -0.694049,
		-0.242659, 0.724490, 0.645159,
		0.947029, 0.032701, 0.319477,
		25.351645, 35.264885, 34.075066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787811, 35.926426, 34.161617>,  <24.688725, 35.241993, 33.851429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787811, 35.926426, 34.161617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104069, 35.775066, 33.969078>,  <25.293823, 35.684250, 33.853554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104069, 35.775066, 33.969078>,  <24.787811, 35.926426, 34.161617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104069, 35.775066, 33.969078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068728, 0.726343, -0.683888,
		0.608407, 0.573793, 0.548271,
		0.790643, -0.378401, -0.481348,
		25.341261, 35.661545, 33.824673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180471, 36.475277, 34.119041>,  <24.787811, 35.926426, 34.161617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180471, 36.475277, 34.119041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223969, 36.230118, 33.805984>,  <25.250067, 36.083023, 33.618149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223969, 36.230118, 33.805984>,  <25.180471, 36.475277, 34.119041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223969, 36.230118, 33.805984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334836, 0.718724, -0.609361,
		0.935980, 0.328322, -0.127064,
		0.108743, -0.612895, -0.782646,
		25.256592, 36.046249, 33.571190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712311, 36.718090, 33.608978>,  <25.180471, 36.475277, 34.119041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712311, 36.718090, 33.608978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505501, 36.447239, 33.399529>,  <25.381414, 36.284729, 33.273857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505501, 36.447239, 33.399529>,  <25.712311, 36.718090, 33.608978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505501, 36.447239, 33.399529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016596, 0.619548, -0.784783,
		0.855810, -0.397062, -0.331558,
		-0.517024, -0.677128, -0.523626,
		25.350393, 36.244102, 33.242439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067656, 36.609032, 32.994091>,  <25.712311, 36.718090, 33.608978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067656, 36.609032, 32.994091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689840, 36.508278, 32.909805>,  <25.463150, 36.447826, 32.859234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689840, 36.508278, 32.909805>,  <26.067656, 36.609032, 32.994091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689840, 36.508278, 32.909805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016410, 0.677043, -0.735761,
		0.327984, -0.691498, -0.643628,
		-0.944541, -0.251880, -0.210712,
		25.406479, 36.432713, 32.846592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975666, 36.565170, 32.196564>,  <26.067656, 36.609032, 32.994091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975666, 36.565170, 32.196564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609322, 36.596439, 32.354088>,  <25.389515, 36.615200, 32.448601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609322, 36.596439, 32.354088>,  <25.975666, 36.565170, 32.196564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609322, 36.596439, 32.354088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239071, 0.681830, -0.691341,
		-0.322552, -0.727322, -0.605775,
		-0.915863, 0.078171, 0.393807,
		25.334562, 36.619892, 32.472229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566429, 36.405685, 31.634480>,  <25.975666, 36.565170, 32.196564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566429, 36.405685, 31.634480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391613, 36.628227, 31.917171>,  <25.286724, 36.761753, 32.086784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391613, 36.628227, 31.917171>,  <25.566429, 36.405685, 31.634480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391613, 36.628227, 31.917171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272108, 0.667136, -0.693460,
		-0.857295, -0.495375, -0.140176,
		-0.437039, 0.556356, 0.706728,
		25.260502, 36.795135, 32.129189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800549, 36.679272, 31.406013>,  <25.566429, 36.405685, 31.634480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800549, 36.679272, 31.406013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970482, 36.925652, 31.671381>,  <25.072441, 37.073479, 31.830601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970482, 36.925652, 31.671381>,  <24.800549, 36.679272, 31.406013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970482, 36.925652, 31.671381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185217, 0.776476, -0.602312,
		-0.886121, 0.133006, 0.443958,
		0.424834, 0.615950, 0.663417,
		25.097933, 37.110435, 31.870405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427702, 37.309746, 31.415131>,  <24.800549, 36.679272, 31.406013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427702, 37.309746, 31.415131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803308, 37.355072, 31.544996>,  <25.028673, 37.382267, 31.622915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803308, 37.355072, 31.544996>,  <24.427702, 37.309746, 31.415131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803308, 37.355072, 31.544996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085670, 0.837285, -0.540014,
		-0.333028, 0.534896, 0.776517,
		0.939017, 0.113316, 0.324663,
		25.085014, 37.389069, 31.642395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891211, 37.823837, 31.266314>,  <24.427702, 37.309746, 31.415131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891211, 37.823837, 31.266314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641417, 37.920223, 31.563488>,  <24.491541, 37.978054, 31.741793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641417, 37.920223, 31.563488>,  <24.891211, 37.823837, 31.266314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641417, 37.920223, 31.563488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124834, -0.908197, 0.399494,
		0.770996, 0.342222, 0.537075,
		-0.624485, 0.240964, 0.742937,
		24.454071, 37.992512, 31.786369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294188, 37.966190, 31.861086>,  <24.891211, 37.823837, 31.266314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294188, 37.966190, 31.861086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943041, 37.774864, 31.870598>,  <24.732353, 37.660069, 31.876305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943041, 37.774864, 31.870598>,  <25.294188, 37.966190, 31.861086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943041, 37.774864, 31.870598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416097, -0.737201, 0.532351,
		-0.237102, 0.477228, 0.846189,
		-0.877864, -0.478318, 0.023781,
		24.679682, 37.631371, 31.877731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015266, 37.909031, 32.535511>,  <25.294188, 37.966190, 31.861086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015266, 37.909031, 32.535511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921926, 37.610565, 32.286098>,  <24.865923, 37.431488, 32.136452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921926, 37.610565, 32.286098>,  <25.015266, 37.909031, 32.535511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921926, 37.610565, 32.286098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435627, -0.653504, 0.619001,
		-0.869355, -0.127184, 0.477542,
		-0.233349, -0.746161, -0.623532,
		24.851921, 37.386715, 32.099037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592188, 37.515415, 33.012226>,  <25.015266, 37.909031, 32.535511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592188, 37.515415, 33.012226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748199, 37.289753, 32.721130>,  <24.841806, 37.154354, 32.546471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748199, 37.289753, 32.721130>,  <24.592188, 37.515415, 33.012226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748199, 37.289753, 32.721130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161360, -0.736229, 0.657214,
		-0.906555, -0.373759, -0.196117,
		0.390027, -0.564155, -0.727742,
		24.865208, 37.120506, 32.502808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186089, 36.819565, 33.024349>,  <24.592188, 37.515415, 33.012226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186089, 36.819565, 33.024349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520021, 36.752838, 32.814499>,  <24.720381, 36.712803, 32.688587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520021, 36.752838, 32.814499>,  <24.186089, 36.819565, 33.024349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520021, 36.752838, 32.814499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108586, -0.884364, 0.453992,
		-0.539692, -0.435973, -0.720180,
		0.834830, -0.166814, -0.524625,
		24.770470, 36.702793, 32.657112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.144272, 36.144413, 32.712986>,  <24.186089, 36.819565, 33.024349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.144272, 36.144413, 32.712986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532749, 36.235134, 32.742233>,  <24.765835, 36.289566, 32.759781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532749, 36.235134, 32.742233>,  <24.144272, 36.144413, 32.712986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532749, 36.235134, 32.742233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120841, -0.733205, 0.669185,
		0.205382, -0.641072, -0.739490,
		0.971193, 0.226799, 0.073119,
		24.824106, 36.303173, 32.764168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499670, 35.543461, 32.525066>,  <24.144272, 36.144413, 32.712986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499670, 35.543461, 32.525066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761263, 35.758453, 32.738014>,  <24.918219, 35.887451, 32.865784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761263, 35.758453, 32.738014>,  <24.499670, 35.543461, 32.525066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.761263, 35.758453, 32.738014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175926, -0.792477, 0.583978,
		0.735772, -0.288252, -0.612822,
		0.653980, 0.537485, 0.532371,
		24.957457, 35.919701, 32.897724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156139, 35.184246, 32.558270>,  <24.499670, 35.543461, 32.525066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156139, 35.184246, 32.558270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074415, 35.409286, 32.878704>,  <25.025381, 35.544312, 33.070965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074415, 35.409286, 32.878704>,  <25.156139, 35.184246, 32.558270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074415, 35.409286, 32.878704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267088, -0.755259, 0.598539,
		0.941765, 0.336247, 0.004041,
		-0.204309, 0.562604, 0.801084,
		25.013123, 35.578068, 33.119030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856869, 35.258144, 32.991665>,  <25.156139, 35.184246, 32.558270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856869, 35.258144, 32.991665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501621, 35.197975, 33.165386>,  <25.288473, 35.161873, 33.269619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501621, 35.197975, 33.165386>,  <25.856869, 35.258144, 32.991665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501621, 35.197975, 33.165386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343874, -0.844431, 0.410715,
		0.304958, 0.514108, 0.801682,
		-0.888117, -0.150427, 0.434304,
		25.235186, 35.152847, 33.295677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161322, 34.876644, 33.390942>,  <25.856869, 35.258144, 32.991665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161322, 34.876644, 33.390942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777863, 34.777737, 33.447304>,  <25.547787, 34.718391, 33.481121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777863, 34.777737, 33.447304>,  <26.161322, 34.876644, 33.390942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777863, 34.777737, 33.447304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267596, -0.951712, 0.150455,
		0.096895, 0.181939, 0.978524,
		-0.958647, -0.247271, 0.140903,
		25.490269, 34.703556, 33.489574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594873, 35.128941, 34.022648>,  <26.161322, 34.876644, 33.390942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594873, 35.128941, 34.022648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270420, 35.362850, 34.026649>,  <26.075748, 35.503197, 34.029049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270420, 35.362850, 34.026649>,  <26.594873, 35.128941, 34.022648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270420, 35.362850, 34.026649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202128, -0.296336, 0.933450,
		0.548826, 0.755129, 0.358567,
		-0.811131, 0.584778, 0.010004,
		26.027081, 35.538284, 34.029652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480974, 35.522747, 34.650150>,  <26.594873, 35.128941, 34.022648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480974, 35.522747, 34.650150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111244, 35.483829, 34.502556>,  <25.889406, 35.460480, 34.413998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111244, 35.483829, 34.502556>,  <26.480974, 35.522747, 34.650150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111244, 35.483829, 34.502556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325555, -0.303394, 0.895526,
		-0.199082, 0.947885, 0.248759,
		-0.924327, -0.097299, -0.368988,
		25.833946, 35.454639, 34.391861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008224, 35.756657, 35.140591>,  <26.480974, 35.522747, 34.650150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008224, 35.756657, 35.140591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793335, 35.521866, 34.898319>,  <25.664402, 35.380993, 34.752956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793335, 35.521866, 34.898319>,  <26.008224, 35.756657, 35.140591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793335, 35.521866, 34.898319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399586, -0.455281, 0.795645,
		-0.742780, 0.669460, 0.010040,
		-0.537223, -0.586977, -0.605680,
		25.632168, 35.345772, 34.716614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883741, 35.406189, 35.806721>,  <26.008224, 35.756657, 35.140591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883741, 35.406189, 35.806721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851379, 35.056587, 35.998379>,  <25.831963, 34.846828, 36.113373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851379, 35.056587, 35.998379>,  <25.883741, 35.406189, 35.806721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851379, 35.056587, 35.998379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731698, -0.378504, -0.566880,
		0.676811, 0.304724, 0.670127,
		-0.080904, -0.874001, 0.479142,
		25.827108, 34.794388, 36.142120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494286, 35.790817, 36.295086>,  <25.883741, 35.406189, 35.806721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494286, 35.790817, 36.295086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676786, 35.802322, 36.650841>,  <25.786287, 35.809227, 36.864292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676786, 35.802322, 36.650841>,  <25.494286, 35.790817, 36.295086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676786, 35.802322, 36.650841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838649, -0.348042, -0.418969,
		0.297492, 0.937037, -0.182919,
		0.456253, 0.028765, 0.889385,
		25.813662, 35.810951, 36.917656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903606, 36.412971, 36.471889>,  <25.494286, 35.790817, 36.295086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903606, 36.412971, 36.471889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058413, 36.051643, 36.545895>,  <26.151297, 35.834846, 36.590298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058413, 36.051643, 36.545895>,  <25.903606, 36.412971, 36.471889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058413, 36.051643, 36.545895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657616, 0.129755, -0.742094,
		0.646345, 0.408866, 0.644257,
		0.387013, -0.903323, 0.185011,
		26.174517, 35.780647, 36.601398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724852, 36.377388, 36.617409>,  <25.903606, 36.412971, 36.471889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724852, 36.377388, 36.617409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623814, 36.042439, 36.423504>,  <26.563190, 35.841469, 36.307159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623814, 36.042439, 36.423504>,  <26.724852, 36.377388, 36.617409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623814, 36.042439, 36.423504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790896, 0.109925, -0.601997,
		0.557386, -0.535459, 0.634511,
		-0.252596, -0.837377, -0.484763,
		26.548035, 35.791225, 36.278076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293749, 35.819332, 36.543789>,  <26.724852, 36.377388, 36.617409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293749, 35.819332, 36.543789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014151, 35.883652, 36.265064>,  <26.846392, 35.922241, 36.097828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014151, 35.883652, 36.265064>,  <27.293749, 35.819332, 36.543789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014151, 35.883652, 36.265064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708336, 0.021726, -0.705541,
		-0.098309, -0.986749, -0.129084,
		-0.698996, 0.160796, -0.696813,
		26.804451, 35.931892, 36.056019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209286, 35.234306, 35.974880>,  <27.293749, 35.819332, 36.543789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209286, 35.234306, 35.974880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142868, 35.621666, 35.900433>,  <27.103018, 35.854080, 35.855762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142868, 35.621666, 35.900433>,  <27.209286, 35.234306, 35.974880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142868, 35.621666, 35.900433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737261, -0.003434, -0.675600,
		-0.654887, -0.249396, -0.713390,
		-0.166042, 0.968396, -0.186118,
		27.093056, 35.912186, 35.844597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312944, 35.202148, 35.280365>,  <27.209286, 35.234306, 35.974880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312944, 35.202148, 35.280365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382782, 35.561703, 35.441124>,  <27.424685, 35.777435, 35.537579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382782, 35.561703, 35.441124>,  <27.312944, 35.202148, 35.280365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382782, 35.561703, 35.441124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848089, 0.070090, -0.525197,
		-0.500262, 0.432537, -0.750100,
		0.174592, 0.898888, 0.401893,
		27.435160, 35.831367, 35.561691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439329, 35.712944, 34.668381>,  <27.312944, 35.202148, 35.280365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439329, 35.712944, 34.668381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605692, 35.803570, 35.020676>,  <27.705509, 35.857944, 35.232052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605692, 35.803570, 35.020676>,  <27.439329, 35.712944, 34.668381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605692, 35.803570, 35.020676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880125, 0.143505, -0.452533,
		-0.228916, 0.963367, -0.139718,
		0.415905, 0.226561, 0.880734,
		27.730463, 35.871536, 35.284897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886990, 36.373398, 34.586933>,  <27.439329, 35.712944, 34.668381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886990, 36.373398, 34.586933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002758, 36.104630, 34.859627>,  <28.072220, 35.943367, 35.023243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002758, 36.104630, 34.859627>,  <27.886990, 36.373398, 34.586933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002758, 36.104630, 34.859627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915656, -0.013202, -0.401745,
		0.278941, 0.740504, 0.611429,
		0.289422, -0.671922, 0.681730,
		28.089584, 35.903053, 35.064144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434824, 36.459812, 35.139305>,  <27.886990, 36.373398, 34.586933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434824, 36.459812, 35.139305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427469, 36.087166, 34.994110>,  <28.423056, 35.863579, 34.906994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427469, 36.087166, 34.994110>,  <28.434824, 36.459812, 35.139305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427469, 36.087166, 34.994110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977110, 0.060214, -0.204036,
		0.211939, -0.358426, 0.909182,
		-0.018387, -0.931614, -0.362983,
		28.421953, 35.807682, 34.885216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123259, 36.173599, 35.428230>,  <28.434824, 36.459812, 35.139305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123259, 36.173599, 35.428230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990475, 36.002579, 35.091896>,  <28.910805, 35.899967, 34.890095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990475, 36.002579, 35.091896>,  <29.123259, 36.173599, 35.428230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990475, 36.002579, 35.091896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931398, -0.007451, -0.363927,
		0.149332, -0.903961, 0.400692,
		-0.331962, -0.427549, -0.840835,
		28.890886, 35.874313, 34.839645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609442, 35.638546, 35.265869>,  <29.123259, 36.173599, 35.428230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609442, 35.638546, 35.265869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441124, 35.716534, 34.911488>,  <29.340134, 35.763329, 34.698860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441124, 35.716534, 34.911488>,  <29.609442, 35.638546, 35.265869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441124, 35.716534, 34.911488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904518, 0.015767, -0.426144,
		-0.069116, -0.980682, -0.182990,
		-0.420797, 0.194971, -0.885955,
		29.314884, 35.775024, 34.645702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055956, 35.214790, 34.873669>,  <29.609442, 35.638546, 35.265869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055956, 35.214790, 34.873669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866573, 35.458225, 34.618965>,  <29.752943, 35.604286, 34.466145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866573, 35.458225, 34.618965>,  <30.055956, 35.214790, 34.873669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866573, 35.458225, 34.618965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810410, 0.017768, -0.585594,
		-0.345069, -0.793291, -0.501615,
		-0.473458, 0.608584, -0.636760,
		29.724535, 35.640800, 34.427937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401285, 35.076950, 34.357517>,  <30.055956, 35.214790, 34.873669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401285, 35.076950, 34.357517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246500, 35.433193, 34.261955>,  <30.153629, 35.646938, 34.204620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246500, 35.433193, 34.261955>,  <30.401285, 35.076950, 34.357517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246500, 35.433193, 34.261955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773227, 0.172256, -0.610285,
		-0.502373, -0.420884, -0.755300,
		-0.386964, 0.890609, -0.238901,
		30.130411, 35.700375, 34.190285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842508, 35.631657, 34.035080>,  <30.401285, 35.076950, 34.357517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842508, 35.631657, 34.035080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637371, 35.691917, 33.697018>,  <30.514288, 35.728073, 33.494179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637371, 35.691917, 33.697018>,  <30.842508, 35.631657, 34.035080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637371, 35.691917, 33.697018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787961, 0.308157, 0.533064,
		0.340748, 0.939331, -0.039330,
		-0.512844, 0.150650, -0.845160,
		30.483519, 35.737114, 33.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648607, 36.366047, 33.994892>,  <30.842508, 35.631657, 34.035080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648607, 36.366047, 33.994892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417223, 36.115566, 33.785797>,  <30.278393, 35.965279, 33.660339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417223, 36.115566, 33.785797>,  <30.648607, 36.366047, 33.994892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417223, 36.115566, 33.785797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787314, 0.261008, 0.558580,
		-0.213347, 0.734673, -0.644002,
		-0.578463, -0.626203, -0.522734,
		30.243685, 35.927704, 33.628979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975267, 36.688072, 33.891392>,  <30.648607, 36.366047, 33.994892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975267, 36.688072, 33.891392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907471, 36.294228, 33.874397>,  <29.866793, 36.057919, 33.864201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907471, 36.294228, 33.874397>,  <29.975267, 36.688072, 33.891392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907471, 36.294228, 33.874397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924996, 0.144059, 0.351611,
		-0.340081, 0.098891, -0.935182,
		-0.169492, -0.984615, -0.042483,
		29.856623, 35.998844, 33.861652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236975, 36.588570, 33.716484>,  <29.975267, 36.688072, 33.891392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236975, 36.588570, 33.716484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372227, 36.255733, 33.892345>,  <29.453379, 36.056030, 33.997864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372227, 36.255733, 33.892345>,  <29.236975, 36.588570, 33.716484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372227, 36.255733, 33.892345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930962, -0.227359, 0.285689,
		-0.137758, -0.505903, -0.851519,
		0.338131, -0.832087, 0.439656,
		29.473665, 36.006107, 34.024242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802244, 36.044998, 33.530251>,  <29.236975, 36.588570, 33.716484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802244, 36.044998, 33.530251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954634, 35.951595, 33.888096>,  <29.046068, 35.895554, 34.102802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954634, 35.951595, 33.888096>,  <28.802244, 36.044998, 33.530251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954634, 35.951595, 33.888096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887082, -0.365097, 0.282470,
		0.260661, -0.901209, -0.346234,
		0.380973, -0.233509, 0.894613,
		29.068926, 35.881542, 34.156479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561804, 35.447517, 33.654770>,  <28.802244, 36.044998, 33.530251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561804, 35.447517, 33.654770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654737, 35.616360, 34.005276>,  <28.710497, 35.717667, 34.215580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654737, 35.616360, 34.005276>,  <28.561804, 35.447517, 33.654770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654737, 35.616360, 34.005276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915579, -0.209116, 0.343490,
		0.328232, -0.882096, 0.337891,
		0.232333, 0.422110, 0.876267,
		28.724438, 35.742992, 34.268154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569454, 34.944847, 34.265144>,  <28.561804, 35.447517, 33.654770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569454, 34.944847, 34.265144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475649, 35.315834, 34.381630>,  <28.419365, 35.538425, 34.451523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475649, 35.315834, 34.381630>,  <28.569454, 34.944847, 34.265144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475649, 35.315834, 34.381630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857029, -0.338644, 0.388357,
		0.458807, -0.158503, 0.874284,
		-0.234515, 0.927468, 0.291214,
		28.405294, 35.594074, 34.468994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375383, 34.965714, 34.948380>,  <28.569454, 34.944847, 34.265144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375383, 34.965714, 34.948380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214550, 35.266342, 34.739201>,  <28.118050, 35.446720, 34.613693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214550, 35.266342, 34.739201>,  <28.375383, 34.965714, 34.948380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214550, 35.266342, 34.739201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862449, -0.119117, 0.491927,
		0.307425, 0.648809, 0.696086,
		-0.402083, 0.751570, -0.522946,
		28.093925, 35.491814, 34.582317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856413, 34.544346, 35.331039>,  <28.375383, 34.965714, 34.948380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856413, 34.544346, 35.331039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953327, 34.204067, 35.517635>,  <29.011477, 33.999901, 35.629593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953327, 34.204067, 35.517635>,  <28.856413, 34.544346, 35.331039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953327, 34.204067, 35.517635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926367, -0.345740, -0.149356,
		0.288340, -0.395952, -0.871827,
		0.242288, -0.850697, 0.466488,
		29.026014, 33.948856, 35.657581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767395, 33.993855, 34.884430>,  <28.856413, 34.544346, 35.331039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767395, 33.993855, 34.884430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656879, 33.856030, 35.243305>,  <28.590570, 33.773335, 35.458630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656879, 33.856030, 35.243305>,  <28.767395, 33.993855, 34.884430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656879, 33.856030, 35.243305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832974, -0.379798, -0.402378,
		0.479393, -0.858505, -0.182077,
		-0.276291, -0.344563, 0.897184,
		28.573992, 33.752659, 35.512459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974758, 33.266209, 34.828621>,  <28.767395, 33.993855, 34.884430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974758, 33.266209, 34.828621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276215, 33.069847, 34.653790>,  <29.457088, 32.952030, 34.548889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276215, 33.069847, 34.653790>,  <28.974758, 33.266209, 34.828621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276215, 33.069847, 34.653790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631418, 0.355994, 0.688898,
		-0.182585, -0.795161, 0.578257,
		0.753641, -0.490904, -0.437079,
		29.502306, 32.922577, 34.522667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334396, 32.634991, 35.158192>,  <28.974758, 33.266209, 34.828621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334396, 32.634991, 35.158192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623005, 32.838413, 34.970242>,  <29.796169, 32.960468, 34.857471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623005, 32.838413, 34.970242>,  <29.334396, 32.634991, 35.158192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623005, 32.838413, 34.970242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314168, 0.364279, 0.876698,
		0.617016, -0.780173, 0.103061,
		0.721519, 0.508558, -0.469871,
		29.839460, 32.990982, 34.829281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053022, 32.471733, 35.415016>,  <29.334396, 32.634991, 35.158192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053022, 32.471733, 35.415016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027161, 32.862274, 35.332504>,  <30.011644, 33.096600, 35.282997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027161, 32.862274, 35.332504>,  <30.053022, 32.471733, 35.415016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027161, 32.862274, 35.332504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232778, 0.215767, 0.948292,
		0.970378, 0.013292, -0.241224,
		-0.064653, 0.976354, -0.206281,
		30.007765, 33.155182, 35.270618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052130, 31.884315, 35.902458>,  <30.053022, 32.471733, 35.415016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052130, 31.884315, 35.902458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099957, 31.552937, 36.121319>,  <30.128653, 31.354109, 36.252636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099957, 31.552937, 36.121319>,  <30.052130, 31.884315, 35.902458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099957, 31.552937, 36.121319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766719, 0.273071, 0.581011,
		-0.630750, -0.488982, -0.602538,
		0.119569, -0.828450, 0.547151,
		30.135828, 31.304401, 36.285465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738121, 32.137688, 35.778374>,  <30.052130, 31.884315, 35.902458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738121, 32.137688, 35.778374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101746, 31.996513, 35.866959>,  <31.319921, 31.911810, 35.920109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101746, 31.996513, 35.866959>,  <30.738121, 32.137688, 35.778374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101746, 31.996513, 35.866959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308520, -0.212949, 0.927075,
		-0.280038, -0.911093, -0.302471,
		0.909062, -0.352935, 0.221457,
		31.374464, 31.890633, 35.933395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605207, 31.561062, 36.208488>,  <30.738121, 32.137688, 35.778374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605207, 31.561062, 36.208488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990379, 31.641514, 36.280396>,  <31.221481, 31.689785, 36.323540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990379, 31.641514, 36.280396>,  <30.605207, 31.561062, 36.208488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990379, 31.641514, 36.280396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122991, -0.265757, 0.956162,
		0.240087, -0.942825, -0.231168,
		0.962929, 0.201131, 0.179764,
		31.279259, 31.701853, 36.334324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821470, 30.947088, 36.475796>,  <30.605207, 31.561062, 36.208488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821470, 30.947088, 36.475796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062353, 31.237597, 36.608387>,  <31.206882, 31.411901, 36.687943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062353, 31.237597, 36.608387>,  <30.821470, 30.947088, 36.475796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062353, 31.237597, 36.608387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171966, -0.287452, 0.942231,
		0.779598, -0.624422, -0.048212,
		0.602209, 0.726271, 0.331476,
		31.243015, 31.455477, 36.707829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253748, 30.603662, 37.019447>,  <30.821470, 30.947088, 36.475796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253748, 30.603662, 37.019447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278833, 30.997972, 37.081825>,  <31.293884, 31.234558, 37.119251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278833, 30.997972, 37.081825>,  <31.253748, 30.603662, 37.019447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278833, 30.997972, 37.081825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131946, -0.146687, 0.980343,
		0.989271, -0.082055, 0.120870,
		0.062712, 0.985774, 0.155940,
		31.297647, 31.293705, 37.128609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538036, 30.516598, 37.407360>,  <31.253748, 30.603662, 37.019447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538036, 30.516598, 37.407360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253223, 30.426340, 37.673321>,  <30.082335, 30.372187, 37.832897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253223, 30.426340, 37.673321>,  <30.538036, 30.516598, 37.407360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253223, 30.426340, 37.673321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674474, 0.043416, 0.737021,
		-0.195171, 0.973242, 0.121277,
		-0.712034, -0.225643, 0.664900,
		30.039614, 30.358646, 37.872791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990318, 30.644894, 37.923088>,  <30.538036, 30.516598, 37.407360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990318, 30.644894, 37.923088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167732, 30.951357, 38.109112>,  <31.274181, 31.135235, 38.220726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167732, 30.951357, 38.109112>,  <30.990318, 30.644894, 37.923088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167732, 30.951357, 38.109112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068683, 0.546417, -0.834692,
		-0.893621, 0.338274, 0.294977,
		0.443535, 0.766158, 0.465057,
		31.300793, 31.181204, 38.248631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677177, 31.315773, 37.736160>,  <30.990318, 30.644894, 37.923088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677177, 31.315773, 37.736160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058981, 31.393557, 37.826576>,  <31.288063, 31.440226, 37.880825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058981, 31.393557, 37.826576>,  <30.677177, 31.315773, 37.736160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058981, 31.393557, 37.826576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101379, 0.501278, -0.859327,
		-0.280413, 0.843153, 0.458761,
		0.954511, 0.194458, 0.226043,
		31.345335, 31.451895, 37.894390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875801, 31.997673, 37.759197>,  <30.677177, 31.315773, 37.736160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875801, 31.997673, 37.759197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209143, 31.790136, 37.682957>,  <31.409147, 31.665615, 37.637215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209143, 31.790136, 37.682957>,  <30.875801, 31.997673, 37.759197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209143, 31.790136, 37.682957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049022, 0.412841, -0.909483,
		0.550564, 0.748576, 0.369477,
		0.833352, -0.518841, -0.190599,
		31.459148, 31.634483, 37.625778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534260, 32.439011, 37.578156>,  <30.875801, 31.997673, 37.759197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534260, 32.439011, 37.578156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561392, 32.070496, 37.424988>,  <31.577671, 31.849386, 37.333088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561392, 32.070496, 37.424988>,  <31.534260, 32.439011, 37.578156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561392, 32.070496, 37.424988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160440, 0.388883, -0.907210,
		0.984712, 0.000099, 0.174188,
		0.067828, -0.921287, -0.382922,
		31.581739, 31.794109, 37.310112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153221, 32.298157, 37.123814>,  <31.534260, 32.439011, 37.578156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153221, 32.298157, 37.123814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899796, 32.015926, 36.996841>,  <31.747740, 31.846588, 36.920658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899796, 32.015926, 36.996841>,  <32.153221, 32.298157, 37.123814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899796, 32.015926, 36.996841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302218, 0.151987, -0.941044,
		0.712225, -0.692141, 0.116945,
		-0.633562, -0.705578, -0.317426,
		31.709726, 31.804253, 36.901615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520660, 31.826740, 36.730488>,  <32.153221, 32.298157, 37.123814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520660, 31.826740, 36.730488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141014, 31.791838, 36.609444>,  <31.913227, 31.770897, 36.536816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141014, 31.791838, 36.609444>,  <32.520660, 31.826740, 36.730488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141014, 31.791838, 36.609444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293584, 0.102657, -0.950405,
		0.114001, -0.990882, -0.071813,
		-0.949111, -0.087264, -0.302610,
		31.856281, 31.765661, 36.518661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464584, 31.310419, 36.148293>,  <32.520660, 31.826740, 36.730488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464584, 31.310419, 36.148293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140045, 31.541672, 36.113720>,  <31.945320, 31.680424, 36.092976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140045, 31.541672, 36.113720>,  <32.464584, 31.310419, 36.148293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140045, 31.541672, 36.113720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185307, 0.114137, -0.976030,
		-0.554410, -0.807920, -0.199737,
		-0.811352, 0.578133, -0.086435,
		31.896639, 31.715111, 36.087788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076073, 31.105114, 35.661373>,  <32.464584, 31.310419, 36.148293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076073, 31.105114, 35.661373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986052, 31.494175, 35.684364>,  <31.932039, 31.727612, 35.698158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986052, 31.494175, 35.684364>,  <32.076073, 31.105114, 35.661373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986052, 31.494175, 35.684364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322758, 0.130077, -0.937500,
		-0.919336, -0.192435, -0.343205,
		-0.225051, 0.972650, 0.057475,
		31.918537, 31.785971, 35.701607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588156, 31.163849, 34.978378>,  <32.076073, 31.105114, 35.661373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588156, 31.163849, 34.978378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805471, 31.476641, 35.100590>,  <31.935860, 31.664316, 35.173916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805471, 31.476641, 35.100590>,  <31.588156, 31.163849, 34.978378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805471, 31.476641, 35.100590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297229, 0.161201, -0.941100,
		-0.785171, 0.602101, -0.144848,
		0.543288, 0.781978, 0.305532,
		31.968458, 31.711233, 35.192249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441889, 31.694656, 34.538479>,  <31.588156, 31.163849, 34.978378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441889, 31.694656, 34.538479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811039, 31.729019, 34.688641>,  <32.032528, 31.749636, 34.778736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811039, 31.729019, 34.688641>,  <31.441889, 31.694656, 34.538479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811039, 31.729019, 34.688641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358827, 0.162087, -0.919223,
		-0.139814, 0.983030, 0.118760,
		0.922873, 0.085906, 0.375400,
		32.087902, 31.754791, 34.801262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786160, 32.320522, 34.266544>,  <31.441889, 31.694656, 34.538479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786160, 32.320522, 34.266544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109554, 32.113503, 34.378609>,  <32.303593, 31.989290, 34.445847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109554, 32.113503, 34.378609>,  <31.786160, 32.320522, 34.266544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109554, 32.113503, 34.378609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393064, 0.120570, -0.911572,
		0.438004, 0.847116, 0.300910,
		0.808488, -0.517549, 0.280161,
		32.352100, 31.958239, 34.462658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300430, 32.738918, 34.094479>,  <31.786160, 32.320522, 34.266544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300430, 32.738918, 34.094479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439899, 32.364323, 34.109501>,  <32.523582, 32.139565, 34.118515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439899, 32.364323, 34.109501>,  <32.300430, 32.738918, 34.094479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439899, 32.364323, 34.109501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516573, 0.158587, -0.841429,
		0.782034, 0.312786, 0.539061,
		0.348675, -0.936491, 0.037556,
		32.544502, 32.083374, 34.120770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962227, 32.745434, 33.735405>,  <32.300430, 32.738918, 34.094479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962227, 32.745434, 33.735405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910408, 32.348965, 33.746727>,  <32.879318, 32.111084, 33.753521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910408, 32.348965, 33.746727>,  <32.962227, 32.745434, 33.735405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910408, 32.348965, 33.746727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510473, -0.091138, -0.855050,
		0.850080, -0.096316, 0.517772,
		-0.129544, -0.991170, 0.028308,
		32.871544, 32.051613, 33.755219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609627, 32.546833, 33.464504>,  <32.962227, 32.745434, 33.735405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609627, 32.546833, 33.464504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407997, 32.203812, 33.423485>,  <33.287022, 31.997999, 33.398872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407997, 32.203812, 33.423485>,  <33.609627, 32.546833, 33.464504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407997, 32.203812, 33.423485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505535, -0.196690, -0.840088,
		0.700248, -0.475308, 0.532668,
		-0.504071, -0.857552, -0.102553,
		33.256775, 31.946547, 33.392719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144821, 31.967247, 33.348156>,  <33.609627, 32.546833, 33.464504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144821, 31.967247, 33.348156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779854, 31.864576, 33.220650>,  <33.560875, 31.802973, 33.144146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779854, 31.864576, 33.220650>,  <34.144821, 31.967247, 33.348156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779854, 31.864576, 33.220650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396589, -0.362168, -0.843535,
		0.101070, -0.896075, 0.432244,
		-0.912416, -0.256679, -0.318770,
		33.506130, 31.787573, 33.125019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270622, 31.306812, 32.977558>,  <34.144821, 31.967247, 33.348156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270622, 31.306812, 32.977558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913490, 31.435003, 32.850971>,  <33.699211, 31.511917, 32.775017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913490, 31.435003, 32.850971>,  <34.270622, 31.306812, 32.977558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913490, 31.435003, 32.850971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182936, -0.384046, -0.905010,
		-0.411581, -0.865909, 0.284258,
		-0.892824, 0.320484, -0.316472,
		33.645641, 31.531147, 32.756031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115925, 30.796049, 32.476322>,  <34.270622, 31.306812, 32.977558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115925, 30.796049, 32.476322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856186, 31.086884, 32.387161>,  <33.700340, 31.261385, 32.333664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856186, 31.086884, 32.387161>,  <34.115925, 30.796049, 32.476322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856186, 31.086884, 32.387161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132060, -0.180848, -0.974605,
		-0.748936, -0.662296, 0.021414,
		-0.649350, 0.727089, -0.222907,
		33.661381, 31.305010, 32.320290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710735, 30.531048, 31.940500>,  <34.115925, 30.796049, 32.476322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710735, 30.531048, 31.940500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729816, 30.930349, 31.926590>,  <33.741264, 31.169931, 31.918243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729816, 30.930349, 31.926590>,  <33.710735, 30.531048, 31.940500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729816, 30.930349, 31.926590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191052, -0.043289, -0.980625,
		-0.980420, 0.040132, -0.192784,
		0.047700, 0.998256, -0.034775,
		33.744125, 31.229826, 31.916157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284286, 30.723124, 31.361937>,  <33.710735, 30.531048, 31.940500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284286, 30.723124, 31.361937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541794, 31.019623, 31.437950>,  <33.696297, 31.197521, 31.483559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541794, 31.019623, 31.437950>,  <33.284286, 30.723124, 31.361937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541794, 31.019623, 31.437950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123523, 0.144422, -0.981776,
		-0.755184, 0.655511, 0.001414,
		0.643770, 0.741247, 0.190036,
		33.734924, 31.241997, 31.494961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144012, 31.044270, 30.810936>,  <33.284286, 30.723124, 31.361937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144012, 31.044270, 30.810936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479691, 31.203529, 30.959118>,  <33.681095, 31.299086, 31.048027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479691, 31.203529, 30.959118>,  <33.144012, 31.044270, 30.810936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479691, 31.203529, 30.959118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233798, 0.350903, -0.906756,
		-0.491016, 0.847553, 0.201389,
		0.839191, 0.398147, 0.370455,
		33.731449, 31.322973, 31.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128685, 31.764133, 30.638206>,  <33.144012, 31.044270, 30.810936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128685, 31.764133, 30.638206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505497, 31.648108, 30.705673>,  <33.731583, 31.578491, 30.746153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505497, 31.648108, 30.705673>,  <33.128685, 31.764133, 30.638206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505497, 31.648108, 30.705673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296576, 0.484690, -0.822872,
		0.156935, 0.825190, 0.542617,
		0.942027, -0.290064, 0.168667,
		33.788105, 31.561089, 30.756273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446995, 32.352787, 30.628534>,  <33.128685, 31.764133, 30.638206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446995, 32.352787, 30.628534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731857, 32.077358, 30.573820>,  <33.902775, 31.912102, 30.540993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731857, 32.077358, 30.573820>,  <33.446995, 32.352787, 30.628534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731857, 32.077358, 30.573820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325149, 0.496205, -0.805021,
		0.622184, 0.528825, 0.577262,
		0.712155, -0.688568, -0.136784,
		33.945503, 31.870789, 30.532785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945332, 32.722927, 30.253782>,  <33.446995, 32.352787, 30.628534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945332, 32.722927, 30.253782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047176, 32.341976, 30.186672>,  <34.108284, 32.113407, 30.146406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047176, 32.341976, 30.186672>,  <33.945332, 32.722927, 30.253782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047176, 32.341976, 30.186672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381311, 0.258309, -0.887625,
		0.888692, 0.162030, 0.428921,
		0.254616, -0.952378, -0.167773,
		34.123562, 32.056263, 30.136341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637539, 32.784641, 30.031088>,  <33.945332, 32.722927, 30.253782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637539, 32.784641, 30.031088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509117, 32.427715, 29.904156>,  <34.432064, 32.213558, 29.827995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509117, 32.427715, 29.904156>,  <34.637539, 32.784641, 30.031088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509117, 32.427715, 29.904156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334805, 0.206496, -0.919383,
		0.885907, -0.401414, 0.232455,
		-0.321052, -0.892315, -0.317331,
		34.412800, 32.160019, 29.808956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047794, 32.608089, 29.532339>,  <34.637539, 32.784641, 30.031088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047794, 32.608089, 29.532339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741779, 32.355511, 29.481750>,  <34.558170, 32.203964, 29.451397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741779, 32.355511, 29.481750>,  <35.047794, 32.608089, 29.532339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741779, 32.355511, 29.481750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199108, -0.045164, -0.978936,
		0.612432, -0.774105, 0.160278,
		-0.765039, -0.631444, -0.126471,
		34.512268, 32.166077, 29.443810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292747, 31.977571, 29.029301>,  <35.047794, 32.608089, 29.532339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292747, 31.977571, 29.029301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895813, 32.025959, 29.019264>,  <34.657650, 32.054993, 29.013243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895813, 32.025959, 29.019264>,  <35.292747, 31.977571, 29.029301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895813, 32.025959, 29.019264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016968, -0.067714, -0.997561,
		-0.122376, -0.990344, 0.065142,
		-0.992339, 0.120972, -0.025090,
		34.598110, 32.062248, 29.011738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120178, 31.571613, 28.585577>,  <35.292747, 31.977571, 29.029301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120178, 31.571613, 28.585577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789536, 31.793621, 28.622847>,  <34.591152, 31.926825, 28.645208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789536, 31.793621, 28.622847>,  <35.120178, 31.571613, 28.585577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789536, 31.793621, 28.622847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197361, -0.130838, -0.971561,
		-0.527043, -0.821484, 0.217690,
		-0.826604, 0.555018, 0.093172,
		34.541553, 31.960127, 28.650799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494415, 31.100716, 28.427145>,  <35.120178, 31.571613, 28.585577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494415, 31.100716, 28.427145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387558, 31.482260, 28.372318>,  <34.323444, 31.711185, 28.339422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387558, 31.482260, 28.372318>,  <34.494415, 31.100716, 28.427145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387558, 31.482260, 28.372318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483466, -0.255703, -0.837183,
		-0.833603, -0.157382, 0.529468,
		-0.267144, 0.953859, -0.137066,
		34.307415, 31.768417, 28.331198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714108, 31.158678, 28.209198>,  <34.494415, 31.100716, 28.427145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714108, 31.158678, 28.209198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907669, 31.485964, 28.085030>,  <34.023804, 31.682335, 28.010529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907669, 31.485964, 28.085030>,  <33.714108, 31.158678, 28.209198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907669, 31.485964, 28.085030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356388, -0.139719, -0.923832,
		-0.799267, 0.557674, 0.223993,
		0.483901, 0.818217, -0.310421,
		34.052841, 31.731428, 27.991903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211460, 31.456518, 27.832634>,  <33.714108, 31.158678, 28.209198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211460, 31.456518, 27.832634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541771, 31.646202, 27.710508>,  <33.739956, 31.760012, 27.637232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541771, 31.646202, 27.710508>,  <33.211460, 31.456518, 27.832634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541771, 31.646202, 27.710508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385672, 0.079797, -0.919178,
		-0.411521, 0.876788, 0.248784,
		0.825777, 0.474210, -0.305315,
		33.789505, 31.788465, 27.618914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911690, 31.801098, 27.315170>,  <33.211460, 31.456518, 27.832634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911690, 31.801098, 27.315170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299431, 31.876881, 27.252611>,  <33.532074, 31.922350, 27.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299431, 31.876881, 27.252611>,  <32.911690, 31.801098, 27.315170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299431, 31.876881, 27.252611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198348, 0.227930, -0.953261,
		-0.144954, 0.955068, 0.258523,
		0.969354, 0.189457, -0.156396,
		33.590237, 31.933718, 27.205692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000431, 32.552975, 27.083628>,  <32.911690, 31.801098, 27.315170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000431, 32.552975, 27.083628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300961, 32.321499, 26.956741>,  <33.481277, 32.182613, 26.880610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300961, 32.321499, 26.956741>,  <33.000431, 32.552975, 27.083628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300961, 32.321499, 26.956741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217735, 0.236392, -0.946948,
		0.622977, 0.780536, 0.051606,
		0.751326, -0.578690, -0.317217,
		33.526360, 32.147892, 26.861576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236141, 32.926872, 26.654699>,  <33.000431, 32.552975, 27.083628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236141, 32.926872, 26.654699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382336, 32.571880, 26.542421>,  <33.470055, 32.358883, 26.475054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382336, 32.571880, 26.542421>,  <33.236141, 32.926872, 26.654699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382336, 32.571880, 26.542421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081712, 0.269802, -0.959442,
		0.927221, 0.373603, 0.026092,
		0.365491, -0.887483, -0.280694,
		33.491982, 32.305634, 26.458214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626160, 33.033318, 26.051746>,  <33.236141, 32.926872, 26.654699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626160, 33.033318, 26.051746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555328, 32.639671, 26.046606>,  <33.512829, 32.403484, 26.043522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555328, 32.639671, 26.046606>,  <33.626160, 33.033318, 26.051746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555328, 32.639671, 26.046606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084356, 0.028183, -0.996037,
		0.980576, -0.175289, -0.088007,
		-0.177075, -0.984114, -0.012849,
		33.502205, 32.344437, 26.042751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143562, 32.680576, 25.631546>,  <33.626160, 33.033318, 26.051746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143562, 32.680576, 25.631546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836548, 32.424458, 25.619493>,  <33.652340, 32.270786, 25.612263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836548, 32.424458, 25.619493>,  <34.143562, 32.680576, 25.631546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836548, 32.424458, 25.619493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047775, -0.010270, -0.998805,
		0.639224, -0.768058, 0.038473,
		-0.767535, -0.640298, -0.030129,
		33.606289, 32.232368, 25.610455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325573, 31.995670, 25.245375>,  <34.143562, 32.680576, 25.631546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325573, 31.995670, 25.245375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926460, 32.010601, 25.223351>,  <33.686993, 32.019558, 25.210136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926460, 32.010601, 25.223351>,  <34.325573, 31.995670, 25.245375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926460, 32.010601, 25.223351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043452, -0.260970, -0.964368,
		-0.050367, -0.964625, 0.258770,
		-0.997785, 0.037328, -0.055059,
		33.627125, 32.021801, 25.206833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131130, 31.556116, 24.693592>,  <34.325573, 31.995670, 25.245375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131130, 31.556116, 24.693592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831749, 31.815592, 24.748762>,  <33.652122, 31.971277, 24.781864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831749, 31.815592, 24.748762>,  <34.131130, 31.556116, 24.693592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831749, 31.815592, 24.748762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170708, 0.012524, -0.985242,
		-0.640843, -0.760951, 0.101363,
		-0.748451, 0.648689, 0.137926,
		33.607212, 32.010197, 24.790140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465809, 31.274851, 24.410339>,  <34.131130, 31.556116, 24.693592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465809, 31.274851, 24.410339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461315, 31.674778, 24.416553>,  <33.458618, 31.914734, 24.420282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461315, 31.674778, 24.416553>,  <33.465809, 31.274851, 24.410339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461315, 31.674778, 24.416553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207651, 0.012862, -0.978118,
		-0.978139, -0.014216, 0.207468,
		-0.011236, 0.999816, 0.015533,
		33.457943, 31.974724, 24.421213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953991, 31.507959, 23.899820>,  <33.465809, 31.274851, 24.410339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953991, 31.507959, 23.899820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130329, 31.865171, 23.935946>,  <33.236134, 32.079498, 23.957621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130329, 31.865171, 23.935946>,  <32.953991, 31.507959, 23.899820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130329, 31.865171, 23.935946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195693, 0.193825, -0.961320,
		-0.875991, 0.406120, 0.260206,
		0.440845, 0.893028, 0.090314,
		33.262581, 32.133080, 23.963039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508488, 32.035301, 23.546791>,  <32.953991, 31.507959, 23.899820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508488, 32.035301, 23.546791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872658, 32.193684, 23.594713>,  <33.091160, 32.288712, 23.623466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872658, 32.193684, 23.594713>,  <32.508488, 32.035301, 23.546791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872658, 32.193684, 23.594713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031388, 0.354896, -0.934379,
		-0.412488, 0.846919, 0.335533,
		0.910422, 0.395952, 0.119807,
		33.145786, 32.312469, 23.630655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435059, 32.694038, 23.165997>,  <32.508488, 32.035301, 23.546791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435059, 32.694038, 23.165997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827034, 32.631626, 23.215582>,  <33.062222, 32.594177, 23.245333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827034, 32.631626, 23.215582>,  <32.435059, 32.694038, 23.165997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827034, 32.631626, 23.215582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164177, 0.279542, -0.945993,
		0.112953, 0.947370, 0.299552,
		0.979943, -0.156032, 0.123961,
		33.121017, 32.584816, 23.252769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692665, 33.255692, 22.881439>,  <32.435059, 32.694038, 23.165997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692665, 33.255692, 22.881439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989555, 32.988213, 22.863743>,  <33.167690, 32.827724, 22.853125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989555, 32.988213, 22.863743>,  <32.692665, 33.255692, 22.881439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989555, 32.988213, 22.863743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148362, 0.228334, -0.962212,
		0.653526, 0.707611, 0.268682,
		0.742221, -0.668693, -0.044240,
		33.212223, 32.787605, 22.850471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220757, 33.591957, 22.574703>,  <32.692665, 33.255692, 22.881439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220757, 33.591957, 22.574703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331402, 33.211060, 22.522991>,  <33.397789, 32.982521, 22.491964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331402, 33.211060, 22.522991>,  <33.220757, 33.591957, 22.574703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331402, 33.211060, 22.522991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341303, 0.223107, -0.913092,
		0.898330, 0.208452, 0.386719,
		0.276615, -0.952246, -0.129278,
		33.414387, 32.925385, 22.484207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911495, 33.602791, 22.332245>,  <33.220757, 33.591957, 22.574703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911495, 33.602791, 22.332245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750153, 33.259472, 22.205355>,  <33.653347, 33.053482, 22.129221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750153, 33.259472, 22.205355>,  <33.911495, 33.602791, 22.332245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750153, 33.259472, 22.205355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388962, 0.152971, -0.908465,
		0.828257, -0.489826, 0.272142,
		-0.403360, -0.858295, -0.317223,
		33.629143, 33.001984, 22.110188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366413, 33.268047, 21.908665>,  <33.911495, 33.602791, 22.332245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366413, 33.268047, 21.908665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069717, 33.023617, 21.798098>,  <33.891701, 32.876957, 21.731756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069717, 33.023617, 21.798098>,  <34.366413, 33.268047, 21.908665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069717, 33.023617, 21.798098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321401, 0.037881, -0.946185,
		0.588661, -0.790666, 0.168302,
		-0.741741, -0.611075, -0.276420,
		33.847195, 32.840294, 21.715172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643295, 32.726589, 21.530842>,  <34.366413, 33.268047, 21.908665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643295, 32.726589, 21.530842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260155, 32.729633, 21.415983>,  <34.030270, 32.731461, 21.347067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260155, 32.729633, 21.415983>,  <34.643295, 32.726589, 21.530842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260155, 32.729633, 21.415983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286599, -0.041886, -0.957135,
		-0.019300, -0.999093, 0.037943,
		-0.957857, 0.007599, -0.287147,
		33.972797, 32.731915, 21.329840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467442, 32.132523, 21.097803>,  <34.643295, 32.726589, 21.530842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467442, 32.132523, 21.097803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223103, 32.435101, 21.004290>,  <34.076500, 32.616650, 20.948181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223103, 32.435101, 21.004290>,  <34.467442, 32.132523, 21.097803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223103, 32.435101, 21.004290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289318, -0.061593, -0.955250,
		-0.736997, -0.651146, -0.181230,
		-0.610844, 0.756449, -0.233782,
		34.039848, 32.662037, 20.934155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128735, 31.924456, 20.538189>,  <34.467442, 32.132523, 21.097803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128735, 31.924456, 20.538189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135803, 32.324318, 20.530472>,  <34.140045, 32.564236, 20.525841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135803, 32.324318, 20.530472>,  <34.128735, 31.924456, 20.538189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135803, 32.324318, 20.530472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300190, -0.023711, -0.953585,
		-0.953716, 0.011058, -0.300506,
		0.017670, 0.999658, -0.019294,
		34.141106, 32.624214, 20.524683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215271, 31.999559, 19.877073>,  <34.128735, 31.924456, 20.538189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215271, 31.999559, 19.877073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226753, 32.389496, 19.965488>,  <34.233643, 32.623459, 20.018538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226753, 32.389496, 19.965488>,  <34.215271, 31.999559, 19.877073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226753, 32.389496, 19.965488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192444, 0.211605, -0.958221,
		-0.980888, 0.070040, -0.181529,
		0.028702, 0.974842, 0.221040,
		34.235363, 32.681950, 20.031801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813271, 32.336761, 19.484880>,  <34.215271, 31.999559, 19.877073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813271, 32.336761, 19.484880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024708, 32.658073, 19.594667>,  <34.151569, 32.850861, 19.660540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024708, 32.658073, 19.594667>,  <33.813271, 32.336761, 19.484880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024708, 32.658073, 19.594667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169249, 0.217108, -0.961363,
		-0.831830, 0.554625, -0.021191,
		0.528595, 0.803278, 0.274467,
		34.183285, 32.899055, 19.677008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447048, 32.905338, 19.159843>,  <33.813271, 32.336761, 19.484880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447048, 32.905338, 19.159843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816933, 33.013035, 19.267485>,  <34.038864, 33.077652, 19.332069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816933, 33.013035, 19.267485>,  <33.447048, 32.905338, 19.159843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816933, 33.013035, 19.267485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121876, 0.460323, -0.879346,
		-0.360628, 0.845940, 0.392853,
		0.924713, 0.269237, 0.269105,
		34.094345, 33.093807, 19.348217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507965, 33.463146, 18.737885>,  <33.447048, 32.905338, 19.159843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507965, 33.463146, 18.737885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890400, 33.401852, 18.837816>,  <34.119862, 33.365074, 18.897776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890400, 33.401852, 18.837816>,  <33.507965, 33.463146, 18.737885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890400, 33.401852, 18.837816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289190, 0.354836, -0.889079,
		0.047587, 0.922286, 0.383568,
		0.956088, -0.153233, 0.249830,
		34.177227, 33.355881, 18.912766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609417, 33.990170, 18.346153>,  <33.507965, 33.463146, 18.737885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609417, 33.990170, 18.346153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566982, 33.743202, 18.034374>,  <33.541523, 33.595024, 17.847305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566982, 33.743202, 18.034374>,  <33.609417, 33.990170, 18.346153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566982, 33.743202, 18.034374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731614, 0.482400, -0.481695,
		0.673414, -0.621359, 0.400533,
		-0.106088, -0.617416, -0.779450,
		33.535156, 33.557976, 17.800539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751629, 34.703934, 18.178280>,  <33.609417, 33.990170, 18.346153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751629, 34.703934, 18.178280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711033, 34.372093, 17.958656>,  <33.686676, 34.172989, 17.826883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711033, 34.372093, 17.958656>,  <33.751629, 34.703934, 18.178280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711033, 34.372093, 17.958656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287506, 0.552817, -0.782134,
		0.952386, 0.078475, -0.294622,
		-0.101494, -0.829599, -0.549057,
		33.680584, 34.123215, 17.793940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378731, 34.996471, 18.215160>,  <33.751629, 34.703934, 18.178280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378731, 34.996471, 18.215160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488163, 34.868038, 18.577831>,  <34.553822, 34.790977, 18.795433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488163, 34.868038, 18.577831>,  <34.378731, 34.996471, 18.215160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488163, 34.868038, 18.577831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961373, 0.061624, -0.268262,
		0.030261, 0.945045, 0.325538,
		0.273581, -0.321081, 0.906675,
		34.570236, 34.771713, 18.849834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871071, 35.398918, 18.315552>,  <34.378731, 34.996471, 18.215160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871071, 35.398918, 18.315552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935066, 35.146183, 18.618917>,  <34.973465, 34.994541, 18.800936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935066, 35.146183, 18.618917>,  <34.871071, 35.398918, 18.315552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935066, 35.146183, 18.618917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986853, 0.120204, -0.108036,
		-0.022904, 0.765727, 0.642758,
		0.159988, -0.631833, 0.758413,
		34.983063, 34.956635, 18.846441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406475, 35.692280, 18.858099>,  <34.871071, 35.398918, 18.315552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406475, 35.692280, 18.858099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413120, 35.292633, 18.842661>,  <35.417107, 35.052845, 18.833399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413120, 35.292633, 18.842661>,  <35.406475, 35.692280, 18.858099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413120, 35.292633, 18.842661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993634, 0.020799, -0.110716,
		0.111421, -0.036510, 0.993102,
		0.016613, -0.999117, -0.038595,
		35.418106, 34.992897, 18.831083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805088, 35.502647, 19.495224>,  <35.406475, 35.692280, 18.858099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805088, 35.502647, 19.495224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845554, 35.243122, 19.193546>,  <35.869835, 35.087406, 19.012541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845554, 35.243122, 19.193546>,  <35.805088, 35.502647, 19.495224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845554, 35.243122, 19.193546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994362, 0.090145, 0.055832,
		0.031762, -0.755589, 0.654276,
		0.101166, -0.648814, -0.754192,
		35.875904, 35.048477, 18.967289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090408, 34.798790, 19.599564>,  <35.805088, 35.502647, 19.495224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090408, 34.798790, 19.599564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206512, 34.895611, 19.229233>,  <36.276176, 34.953705, 19.007034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206512, 34.895611, 19.229233>,  <36.090408, 34.798790, 19.599564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206512, 34.895611, 19.229233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956532, -0.044916, 0.288146,
		0.028162, -0.969223, -0.244570,
		0.290263, 0.242054, -0.925828,
		36.293591, 34.968227, 18.951485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798103, 35.057026, 19.683001>,  <36.090408, 34.798790, 19.599564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798103, 35.057026, 19.683001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683033, 34.832382, 19.993315>,  <36.613991, 34.697598, 20.179502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683033, 34.832382, 19.993315>,  <36.798103, 35.057026, 19.683001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683033, 34.832382, 19.993315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789174, 0.319940, 0.524255,
		-0.542629, 0.763045, 0.351164,
		-0.287679, -0.561605, 0.775784,
		36.596729, 34.663902, 20.226049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537319, 35.360153, 20.351332>,  <36.798103, 35.057026, 19.683001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537319, 35.360153, 20.351332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726246, 35.011417, 20.403193>,  <36.839603, 34.802174, 20.434309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726246, 35.011417, 20.403193>,  <36.537319, 35.360153, 20.351332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726246, 35.011417, 20.403193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731773, 0.469853, 0.493707,
		-0.491351, -0.138311, 0.859910,
		0.472316, -0.871842, 0.129650,
		36.867939, 34.749866, 20.442087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994431, 35.839153, 20.248159>,  <36.537319, 35.360153, 20.351332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994431, 35.839153, 20.248159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897846, 35.450996, 20.245584>,  <35.839897, 35.218102, 20.244040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897846, 35.450996, 20.245584>,  <35.994431, 35.839153, 20.248159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897846, 35.450996, 20.245584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224618, 0.049437, 0.973192,
		-0.944057, 0.236432, -0.229904,
		-0.241459, -0.970390, -0.006435,
		35.825409, 35.159878, 20.243654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284225, 35.878521, 20.412153>,  <35.994431, 35.839153, 20.248159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284225, 35.878521, 20.412153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462372, 35.533604, 20.508575>,  <35.569260, 35.326653, 20.566429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462372, 35.533604, 20.508575>,  <35.284225, 35.878521, 20.412153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462372, 35.533604, 20.508575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371021, 0.067291, 0.926183,
		-0.814859, -0.501925, -0.289958,
		0.445363, -0.862289, 0.241057,
		35.595982, 35.274918, 20.580893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749981, 35.424725, 20.748409>,  <35.284225, 35.878521, 20.412153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749981, 35.424725, 20.748409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095928, 35.246262, 20.840448>,  <35.303497, 35.139183, 20.895672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095928, 35.246262, 20.840448>,  <34.749981, 35.424725, 20.748409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095928, 35.246262, 20.840448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255421, 0.003497, 0.966824,
		-0.432158, -0.894949, -0.110933,
		0.864870, -0.446155, 0.230100,
		35.355389, 35.112415, 20.909479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538345, 34.827457, 21.118183>,  <34.749981, 35.424725, 20.748409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538345, 34.827457, 21.118183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921757, 34.892281, 21.211962>,  <35.151802, 34.931175, 21.268229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921757, 34.892281, 21.211962>,  <34.538345, 34.827457, 21.118183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921757, 34.892281, 21.211962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240038, 0.015563, 0.970639,
		0.153651, -0.986659, 0.053817,
		0.958526, 0.162058, 0.234444,
		35.209316, 34.940899, 21.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624962, 34.365223, 21.682907>,  <34.538345, 34.827457, 21.118183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624962, 34.365223, 21.682907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916077, 34.638981, 21.700460>,  <35.090748, 34.803234, 21.710993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916077, 34.638981, 21.700460>,  <34.624962, 34.365223, 21.682907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916077, 34.638981, 21.700460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130733, 0.075634, 0.988528,
		0.673224, -0.725178, 0.144519,
		0.727790, 0.684395, 0.043885,
		35.134415, 34.844299, 21.713627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046978, 34.147640, 22.204809>,  <34.624962, 34.365223, 21.682907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046978, 34.147640, 22.204809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153248, 34.531822, 22.171459>,  <35.217010, 34.762329, 22.151449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153248, 34.531822, 22.171459>,  <35.046978, 34.147640, 22.204809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153248, 34.531822, 22.171459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068240, 0.067533, 0.995381,
		0.961644, -0.270137, -0.047600,
		0.265675, 0.960450, -0.083377,
		35.232952, 34.819958, 22.146446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696571, 34.284866, 22.561989>,  <35.046978, 34.147640, 22.204809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696571, 34.284866, 22.561989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485985, 34.624683, 22.548687>,  <35.359631, 34.828575, 22.540707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485985, 34.624683, 22.548687>,  <35.696571, 34.284866, 22.561989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485985, 34.624683, 22.548687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034153, 0.060214, 0.997601,
		0.849508, 0.524071, -0.060715,
		-0.526469, 0.849544, -0.033253,
		35.328045, 34.879547, 22.538712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059402, 34.698570, 22.981482>,  <35.696571, 34.284866, 22.561989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059402, 34.698570, 22.981482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692390, 34.855385, 22.954824>,  <35.472183, 34.949474, 22.938829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692390, 34.855385, 22.954824>,  <36.059402, 34.698570, 22.981482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692390, 34.855385, 22.954824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004692, 0.156906, 0.987602,
		0.397636, 0.906469, -0.142126,
		-0.917531, 0.392039, -0.066645,
		35.417130, 34.972996, 22.934832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049698, 35.198872, 23.510988>,  <36.059402, 34.698570, 22.981482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049698, 35.198872, 23.510988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669285, 35.125053, 23.411804>,  <35.441036, 35.080761, 23.352295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669285, 35.125053, 23.411804>,  <36.049698, 35.198872, 23.510988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669285, 35.125053, 23.411804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245784, -0.034942, 0.968695,
		-0.187436, 0.982202, -0.012129,
		-0.951030, -0.184549, -0.247959,
		35.383976, 35.069687, 23.337416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733624, 35.324818, 24.135681>,  <36.049698, 35.198872, 23.510988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733624, 35.324818, 24.135681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429981, 35.162827, 23.931822>,  <35.247795, 35.065632, 23.809505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429981, 35.162827, 23.931822>,  <35.733624, 35.324818, 24.135681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429981, 35.162827, 23.931822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391386, -0.341661, 0.854450,
		-0.520165, 0.848090, 0.100854,
		-0.759109, -0.404982, -0.509650,
		35.202248, 35.041332, 23.778927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267948, 35.648018, 24.370594>,  <35.733624, 35.324818, 24.135681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267948, 35.648018, 24.370594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094669, 35.318142, 24.225138>,  <34.990704, 35.120216, 24.137863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094669, 35.318142, 24.225138>,  <35.267948, 35.648018, 24.370594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094669, 35.318142, 24.225138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320537, -0.236123, 0.917334,
		-0.842378, 0.513943, -0.162056,
		-0.433193, -0.824687, -0.363643,
		34.964710, 35.070736, 24.116045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539577, 35.750862, 24.498943>,  <35.267948, 35.648018, 24.370594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539577, 35.750862, 24.498943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624882, 35.364178, 24.442389>,  <34.676064, 35.132168, 24.408455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624882, 35.364178, 24.442389>,  <34.539577, 35.750862, 24.498943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624882, 35.364178, 24.442389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304135, -0.203217, 0.930702,
		-0.928451, -0.155482, -0.337349,
		0.213262, -0.966711, -0.141389,
		34.688862, 35.074165, 24.399971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001522, 35.474907, 24.678272>,  <34.539577, 35.750862, 24.498943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001522, 35.474907, 24.678272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279644, 35.190952, 24.723204>,  <34.446518, 35.020580, 24.750162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279644, 35.190952, 24.723204>,  <34.001522, 35.474907, 24.678272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279644, 35.190952, 24.723204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268350, -0.111430, 0.956855,
		-0.666741, -0.695446, -0.267976,
		0.695302, -0.709886, 0.112329,
		34.488235, 34.977985, 24.756903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720478, 34.876816, 25.119619>,  <34.001522, 35.474907, 24.678272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720478, 34.876816, 25.119619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118771, 34.857639, 25.151175>,  <34.357746, 34.846134, 25.170109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118771, 34.857639, 25.151175>,  <33.720478, 34.876816, 25.119619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118771, 34.857639, 25.151175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084385, -0.126166, 0.988414,
		-0.037427, -0.990850, -0.129672,
		0.995730, -0.047935, 0.078890,
		34.417488, 34.843258, 25.174841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684341, 34.401062, 25.607868>,  <33.720478, 34.876816, 25.119619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684341, 34.401062, 25.607868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045849, 34.572266, 25.606878>,  <34.262753, 34.674988, 25.606285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045849, 34.572266, 25.606878>,  <33.684341, 34.401062, 25.607868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045849, 34.572266, 25.606878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052912, -0.105990, 0.992958,
		0.424737, -0.897536, -0.118437,
		0.903769, 0.428012, -0.002472,
		34.316978, 34.700668, 25.606136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080086, 33.997898, 25.997368>,  <33.684341, 34.401062, 25.607868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080086, 33.997898, 25.997368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239361, 34.364815, 25.995296>,  <34.334927, 34.584965, 25.994055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239361, 34.364815, 25.995296>,  <34.080086, 33.997898, 25.997368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239361, 34.364815, 25.995296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009830, 0.001377, 0.999951,
		0.917252, -0.398217, -0.008468,
		0.398186, 0.917290, -0.005177,
		34.358818, 34.640003, 25.993744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592552, 33.886436, 26.566769>,  <34.080086, 33.997898, 25.997368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592552, 33.886436, 26.566769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580494, 34.282848, 26.514687>,  <34.573261, 34.520695, 26.483437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580494, 34.282848, 26.514687>,  <34.592552, 33.886436, 26.566769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580494, 34.282848, 26.514687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154391, 0.133319, 0.978974,
		0.987550, 0.009405, -0.157025,
		-0.030142, 0.991029, -0.130207,
		34.571453, 34.580158, 26.475624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101078, 34.148273, 26.969767>,  <34.592552, 33.886436, 26.566769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101078, 34.148273, 26.969767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905827, 34.487289, 26.886421>,  <34.788677, 34.690697, 26.836414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905827, 34.487289, 26.886421>,  <35.101078, 34.148273, 26.969767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905827, 34.487289, 26.886421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060942, 0.271252, 0.960577,
		0.870642, 0.456186, -0.184056,
		-0.488127, 0.847536, -0.208363,
		34.759388, 34.741550, 26.823912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420647, 34.562481, 27.388445>,  <35.101078, 34.148273, 26.969767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420647, 34.562481, 27.388445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074005, 34.754078, 27.332499>,  <34.866020, 34.869034, 27.298931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074005, 34.754078, 27.332499>,  <35.420647, 34.562481, 27.388445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074005, 34.754078, 27.332499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041731, 0.348881, 0.936238,
		0.497244, 0.805513, -0.322331,
		-0.866607, 0.478989, -0.139864,
		34.814022, 34.897774, 27.290539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490597, 35.220718, 27.637524>,  <35.420647, 34.562481, 27.388445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490597, 35.220718, 27.637524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092426, 35.182823, 27.632610>,  <34.853523, 35.160088, 27.629662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092426, 35.182823, 27.632610>,  <35.490597, 35.220718, 27.637524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092426, 35.182823, 27.632610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041765, 0.315942, 0.947859,
		-0.085915, 0.944037, -0.318454,
		-0.995427, -0.094735, -0.012283,
		34.793797, 35.154404, 27.628925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252651, 35.826870, 27.908119>,  <35.490597, 35.220718, 27.637524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252651, 35.826870, 27.908119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954887, 35.562908, 27.948860>,  <34.776230, 35.404530, 27.973305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954887, 35.562908, 27.948860>,  <35.252651, 35.826870, 27.908119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954887, 35.562908, 27.948860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136631, 0.299849, 0.944152,
		-0.653595, 0.688920, -0.313375,
		-0.744410, -0.659909, 0.101852,
		34.731564, 35.364937, 27.979416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728886, 36.150520, 28.146620>,  <35.252651, 35.826870, 27.908119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728886, 36.150520, 28.146620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642529, 35.776253, 28.258270>,  <34.590714, 35.551693, 28.325260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642529, 35.776253, 28.258270>,  <34.728886, 36.150520, 28.146620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642529, 35.776253, 28.258270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259462, 0.330563, 0.907418,
		-0.941313, 0.123480, -0.314137,
		-0.215889, -0.935671, 0.279125,
		34.577763, 35.495552, 28.342009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044632, 36.194992, 28.702602>,  <34.728886, 36.150520, 28.146620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044632, 36.194992, 28.702602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178120, 35.820179, 28.743784>,  <34.258213, 35.595291, 28.768494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178120, 35.820179, 28.743784>,  <34.044632, 36.194992, 28.702602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178120, 35.820179, 28.743784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392221, -0.038708, 0.919056,
		-0.857202, -0.347086, -0.380442,
		0.333718, -0.937034, 0.102954,
		34.278236, 35.539070, 28.774670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529137, 35.926456, 29.153131>,  <34.044632, 36.194992, 28.702602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529137, 35.926456, 29.153131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844387, 35.681458, 29.177471>,  <34.033539, 35.534458, 29.192076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844387, 35.681458, 29.177471>,  <33.529137, 35.926456, 29.153131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844387, 35.681458, 29.177471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260101, -0.241810, 0.934813,
		-0.557857, -0.752578, -0.349888,
		0.788126, -0.612498, 0.060851,
		34.080826, 35.497707, 29.195726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253231, 35.415287, 29.469559>,  <33.529137, 35.926456, 29.153131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253231, 35.415287, 29.469559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643288, 35.363415, 29.541426>,  <33.877323, 35.332291, 29.584545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643288, 35.363415, 29.541426>,  <33.253231, 35.415287, 29.469559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643288, 35.363415, 29.541426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221521, -0.589089, 0.777112,
		0.005065, -0.797595, -0.603172,
		0.975143, -0.129679, 0.179668,
		33.935829, 35.324512, 29.595325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415958, 34.674118, 29.718332>,  <33.253231, 35.415287, 29.469559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415958, 34.674118, 29.718332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742767, 34.876244, 29.829418>,  <33.938854, 34.997520, 29.896070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742767, 34.876244, 29.829418>,  <33.415958, 34.674118, 29.718332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742767, 34.876244, 29.829418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144777, -0.286431, 0.947099,
		0.558132, -0.814009, -0.160863,
		0.817024, 0.505317, 0.277717,
		33.987873, 35.027840, 29.912733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809040, 34.212460, 30.105564>,  <33.415958, 34.674118, 29.718332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809040, 34.212460, 30.105564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954144, 34.575417, 30.190460>,  <34.041206, 34.793190, 30.241398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954144, 34.575417, 30.190460>,  <33.809040, 34.212460, 30.105564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954144, 34.575417, 30.190460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064782, -0.202650, 0.977106,
		0.929629, -0.368202, -0.014730,
		0.362757, 0.907392, 0.212242,
		34.062969, 34.847633, 30.254133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336140, 34.072952, 30.450106>,  <33.809040, 34.212460, 30.105564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336140, 34.072952, 30.450106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233971, 34.447105, 30.547941>,  <34.172668, 34.671597, 30.606644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233971, 34.447105, 30.547941>,  <34.336140, 34.072952, 30.450106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233971, 34.447105, 30.547941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036662, -0.243429, 0.969226,
		0.966135, 0.256527, 0.027884,
		-0.255421, 0.935380, 0.244590,
		34.157345, 34.727718, 30.621319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942444, 34.280777, 30.848053>,  <34.336140, 34.072952, 30.450106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942444, 34.280777, 30.848053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630672, 34.511002, 30.947021>,  <34.443607, 34.649136, 31.006403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630672, 34.511002, 30.947021>,  <34.942444, 34.280777, 30.848053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630672, 34.511002, 30.947021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188362, -0.161367, 0.968752,
		0.597501, 0.801680, 0.017361,
		-0.779431, 0.575561, 0.247423,
		34.396843, 34.683670, 31.021248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089115, 34.705078, 31.447889>,  <34.942444, 34.280777, 30.848053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089115, 34.705078, 31.447889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689888, 34.727203, 31.436625>,  <34.450352, 34.740479, 31.429867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689888, 34.727203, 31.436625>,  <35.089115, 34.705078, 31.447889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689888, 34.727203, 31.436625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043390, -0.297360, 0.953779,
		0.044385, 0.953162, 0.299187,
		-0.998072, 0.055315, -0.028160,
		34.390465, 34.743797, 31.428177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007252, 35.097961, 32.015869>,  <35.089115, 34.705078, 31.447889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007252, 35.097961, 32.015869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664299, 34.905415, 31.943005>,  <34.458527, 34.789886, 31.899284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664299, 34.905415, 31.943005>,  <35.007252, 35.097961, 32.015869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664299, 34.905415, 31.943005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150324, -0.104294, 0.983120,
		-0.492243, 0.870290, 0.017058,
		-0.857379, -0.481370, -0.182164,
		34.407085, 34.761002, 31.888355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479511, 35.368706, 32.505707>,  <35.007252, 35.097961, 32.015869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479511, 35.368706, 32.505707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360741, 35.003418, 32.394089>,  <34.289478, 34.784245, 32.327118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360741, 35.003418, 32.394089>,  <34.479511, 35.368706, 32.505707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360741, 35.003418, 32.394089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177571, -0.234322, 0.955804,
		-0.938244, 0.333358, -0.092583,
		-0.296931, -0.913217, -0.279046,
		34.271660, 34.729454, 32.310375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781120, 35.419888, 32.744114>,  <34.479511, 35.368706, 32.505707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781120, 35.419888, 32.744114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925785, 35.050766, 32.690998>,  <34.012585, 34.829292, 32.659126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925785, 35.050766, 32.690998>,  <33.781120, 35.419888, 32.744114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925785, 35.050766, 32.690998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433259, -0.292477, 0.852493,
		-0.825522, -0.250781, -0.505591,
		0.361663, -0.922803, -0.132793,
		34.034283, 34.773926, 32.651161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240849, 34.964867, 33.034412>,  <33.781120, 35.419888, 32.744114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240849, 34.964867, 33.034412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577263, 34.750317, 33.006252>,  <33.779110, 34.621586, 32.989357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577263, 34.750317, 33.006252>,  <33.240849, 34.964867, 33.034412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577263, 34.750317, 33.006252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206274, -0.438266, 0.874857,
		-0.500111, -0.721263, -0.479238,
		0.841035, -0.536380, -0.070404,
		33.829575, 34.589401, 32.985130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118706, 34.344139, 33.369572>,  <33.240849, 34.964867, 33.034412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118706, 34.344139, 33.369572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518661, 34.345478, 33.375259>,  <33.758636, 34.346283, 33.378670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518661, 34.345478, 33.375259>,  <33.118706, 34.344139, 33.369572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518661, 34.345478, 33.375259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010104, -0.544211, 0.838888,
		0.010549, -0.838942, -0.544119,
		0.999893, 0.003351, 0.014217,
		33.818630, 34.346485, 33.379524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312454, 33.750721, 33.642994>,  <33.118706, 34.344139, 33.369572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312454, 33.750721, 33.642994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658848, 33.949692, 33.663528>,  <33.866684, 34.069077, 33.675850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658848, 33.949692, 33.663528>,  <33.312454, 33.750721, 33.642994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658848, 33.949692, 33.663528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265263, -0.543962, 0.796079,
		0.423920, -0.675773, -0.603012,
		0.865983, 0.497431, 0.051338,
		33.918644, 34.098923, 33.678928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842972, 33.205528, 33.631393>,  <33.312454, 33.750721, 33.642994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842972, 33.205528, 33.631393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977795, 33.543369, 33.797787>,  <34.058689, 33.746075, 33.897625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977795, 33.543369, 33.797787>,  <33.842972, 33.205528, 33.631393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977795, 33.543369, 33.797787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282063, -0.512135, 0.811270,
		0.898240, -0.156108, -0.410847,
		0.337055, 0.844600, 0.415988,
		34.078911, 33.796749, 33.922585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411743, 33.016010, 33.977436>,  <33.842972, 33.205528, 33.631393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411743, 33.016010, 33.977436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309021, 33.359966, 34.153908>,  <34.247387, 33.566341, 34.259792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309021, 33.359966, 34.153908>,  <34.411743, 33.016010, 33.977436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309021, 33.359966, 34.153908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405752, -0.318385, 0.856736,
		0.877163, 0.399026, -0.267139,
		-0.256807, 0.859889, 0.441181,
		34.231979, 33.617931, 34.286263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992851, 33.201511, 34.387703>,  <34.411743, 33.016010, 33.977436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992851, 33.201511, 34.387703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661388, 33.361813, 34.544025>,  <34.462513, 33.457993, 34.637821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661388, 33.361813, 34.544025>,  <34.992851, 33.201511, 34.387703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661388, 33.361813, 34.544025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173181, -0.480371, 0.859798,
		0.532298, 0.780156, 0.328658,
		-0.828654, 0.400751, 0.390809,
		34.412792, 33.482037, 34.661266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478714, 32.590038, 34.587830>,  <34.992851, 33.201511, 34.387703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478714, 32.590038, 34.587830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781475, 32.349148, 34.689358>,  <35.963131, 32.204613, 34.750275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781475, 32.349148, 34.689358>,  <35.478714, 32.590038, 34.587830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781475, 32.349148, 34.689358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578182, 0.436021, -0.689632,
		0.304643, 0.668738, 0.678220,
		0.756901, -0.602226, 0.253821,
		36.008545, 32.168480, 34.765503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020412, 33.032215, 34.600586>,  <35.478714, 32.590038, 34.587830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020412, 33.032215, 34.600586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166176, 32.660877, 34.571224>,  <36.253635, 32.438076, 34.553608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166176, 32.660877, 34.571224>,  <36.020412, 33.032215, 34.600586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166176, 32.660877, 34.571224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690961, 0.322390, -0.647022,
		0.624323, 0.185058, 0.758929,
		0.364407, -0.928342, -0.073408,
		36.275497, 32.382374, 34.549202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779842, 33.109100, 34.501797>,  <36.020412, 33.032215, 34.600586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779842, 33.109100, 34.501797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676388, 32.743870, 34.375687>,  <36.614315, 32.524731, 34.300022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676388, 32.743870, 34.375687>,  <36.779842, 33.109100, 34.501797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676388, 32.743870, 34.375687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547188, 0.130479, -0.826777,
		0.796048, -0.386345, 0.465879,
		-0.258634, -0.913078, -0.315272,
		36.598797, 32.469948, 34.281105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354248, 32.914291, 34.218571>,  <36.779842, 33.109100, 34.501797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354248, 32.914291, 34.218571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104256, 32.634190, 34.080559>,  <36.954262, 32.466129, 33.997749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104256, 32.634190, 34.080559>,  <37.354248, 32.914291, 34.218571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104256, 32.634190, 34.080559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485529, -0.002588, -0.874217,
		0.611281, -0.713889, 0.341611,
		-0.624978, -0.700254, -0.345032,
		36.916763, 32.424114, 33.977051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820171, 32.302116, 33.908623>,  <37.354248, 32.914291, 34.218571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820171, 32.302116, 33.908623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451759, 32.328892, 33.755146>,  <37.230713, 32.344959, 33.663059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451759, 32.328892, 33.755146>,  <37.820171, 32.302116, 33.908623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451759, 32.328892, 33.755146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387548, 0.059319, -0.919939,
		-0.038826, -0.995992, -0.080579,
		-0.921032, 0.066945, -0.383692,
		37.175449, 32.348976, 33.640038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926743, 31.934015, 33.355492>,  <37.820171, 32.302116, 33.908623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926743, 31.934015, 33.355492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594360, 32.132099, 33.254074>,  <37.394932, 32.250950, 33.193222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594360, 32.132099, 33.254074>,  <37.926743, 31.934015, 33.355492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594360, 32.132099, 33.254074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349867, 0.110803, -0.930224,
		-0.432562, -0.861679, -0.265329,
		-0.830953, 0.495209, -0.253544,
		37.345074, 32.280663, 33.178009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723682, 31.695999, 32.694511>,  <37.926743, 31.934015, 33.355492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723682, 31.695999, 32.694511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532516, 32.046959, 32.711330>,  <37.417816, 32.257534, 32.721424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532516, 32.046959, 32.711330>,  <37.723682, 31.695999, 32.694511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532516, 32.046959, 32.711330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311698, 0.214146, -0.925735,
		-0.821244, -0.429316, -0.375827,
		-0.477915, 0.877399, 0.042049,
		37.389141, 32.310177, 32.723946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310127, 31.684742, 32.081860>,  <37.723682, 31.695999, 32.694511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310127, 31.684742, 32.081860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367401, 32.062836, 32.199181>,  <37.401764, 32.289692, 32.269573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367401, 32.062836, 32.199181>,  <37.310127, 31.684742, 32.081860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367401, 32.062836, 32.199181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082441, 0.283937, -0.955292,
		-0.986256, 0.160964, -0.037270,
		0.143185, 0.945236, 0.293304,
		37.410358, 32.346405, 32.287170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020729, 32.058498, 31.614553>,  <37.310127, 31.684742, 32.081860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020729, 32.058498, 31.614553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220318, 32.356827, 31.791088>,  <37.340073, 32.535824, 31.897009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220318, 32.356827, 31.791088>,  <37.020729, 32.058498, 31.614553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220318, 32.356827, 31.791088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239964, 0.370445, -0.897323,
		-0.832733, 0.553644, 0.005871,
		0.498972, 0.745821, 0.441336,
		37.370010, 32.580574, 31.923489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732594, 32.641811, 31.397982>,  <37.020729, 32.058498, 31.614553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732594, 32.641811, 31.397982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105991, 32.723698, 31.515749>,  <37.330029, 32.772831, 31.586411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105991, 32.723698, 31.515749>,  <36.732594, 32.641811, 31.397982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105991, 32.723698, 31.515749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163862, 0.486785, -0.858015,
		-0.318969, 0.849195, 0.420865,
		0.933492, 0.204716, 0.294420,
		37.386040, 32.785114, 31.604074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828403, 33.232887, 31.070347>,  <36.732594, 32.641811, 31.397982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828403, 33.232887, 31.070347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197205, 33.109867, 31.164427>,  <37.418488, 33.036057, 31.220875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197205, 33.109867, 31.164427>,  <36.828403, 33.232887, 31.070347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197205, 33.109867, 31.164427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350395, 0.404388, -0.844804,
		0.164704, 0.861328, 0.480611,
		0.922007, -0.307547, 0.235200,
		37.473808, 33.017605, 31.234987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165657, 33.898842, 31.118010>,  <36.828403, 33.232887, 31.070347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165657, 33.898842, 31.118010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409679, 33.590981, 31.042673>,  <37.556091, 33.406265, 30.997471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409679, 33.590981, 31.042673>,  <37.165657, 33.898842, 31.118010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409679, 33.590981, 31.042673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185335, 0.369708, -0.910476,
		0.770381, 0.520531, 0.368185,
		0.610052, -0.769652, -0.188343,
		37.592693, 33.360085, 30.986170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622139, 34.180508, 30.686125>,  <37.165657, 33.898842, 31.118010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622139, 34.180508, 30.686125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693459, 33.791611, 30.625517>,  <37.736252, 33.558273, 30.589151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693459, 33.791611, 30.625517>,  <37.622139, 34.180508, 30.686125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693459, 33.791611, 30.625517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273566, 0.196896, -0.941485,
		0.945183, 0.126417, 0.301079,
		0.178301, -0.972240, -0.151519,
		37.746948, 33.499939, 30.580061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317757, 34.126926, 30.324606>,  <37.622139, 34.180508, 30.686125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317757, 34.126926, 30.324606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077644, 33.816032, 30.249159>,  <37.933578, 33.629498, 30.203890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077644, 33.816032, 30.249159>,  <38.317757, 34.126926, 30.324606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077644, 33.816032, 30.249159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039443, 0.264318, -0.963629,
		0.798819, -0.571005, -0.189320,
		-0.600277, -0.777232, -0.188620,
		37.897560, 33.582863, 30.192574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613071, 33.774502, 29.809635>,  <38.317757, 34.126926, 30.324606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613071, 33.774502, 29.809635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221642, 33.693001, 29.821445>,  <37.986782, 33.644100, 29.828531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221642, 33.693001, 29.821445>,  <38.613071, 33.774502, 29.809635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221642, 33.693001, 29.821445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063446, 0.162012, -0.984747,
		0.195870, -0.965522, -0.171469,
		-0.978575, -0.203762, 0.029525,
		37.928070, 33.631874, 29.830303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488007, 33.430412, 29.248053>,  <38.613071, 33.774502, 29.809635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488007, 33.430412, 29.248053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105438, 33.511204, 29.332394>,  <37.875896, 33.559681, 29.382998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105438, 33.511204, 29.332394>,  <38.488007, 33.430412, 29.248053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105438, 33.511204, 29.332394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172557, 0.191538, -0.966197,
		-0.235542, -0.960477, -0.148337,
		-0.956422, 0.201984, 0.210852,
		37.818512, 33.571800, 29.395649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998295, 32.983494, 28.784685>,  <38.488007, 33.430412, 29.248053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998295, 32.983494, 28.784685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804169, 33.306446, 28.918915>,  <37.687695, 33.500217, 28.999453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804169, 33.306446, 28.918915>,  <37.998295, 32.983494, 28.784685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804169, 33.306446, 28.918915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310555, 0.199601, -0.929363,
		-0.817328, -0.555249, 0.153865,
		-0.485316, 0.807377, 0.335575,
		37.658573, 33.548660, 29.019587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239521, 32.907833, 28.602510>,  <37.998295, 32.983494, 28.784685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239521, 32.907833, 28.602510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317200, 33.298611, 28.638008>,  <37.363808, 33.533077, 28.659307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317200, 33.298611, 28.638008>,  <37.239521, 32.907833, 28.602510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317200, 33.298611, 28.638008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334521, 0.150994, -0.930213,
		-0.922163, 0.150955, 0.356129,
		0.194194, 0.976941, 0.088744,
		37.375458, 33.591694, 28.664631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657166, 33.200829, 28.330662>,  <37.239521, 32.907833, 28.602510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657166, 33.200829, 28.330662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918991, 33.502998, 28.342520>,  <37.076088, 33.684299, 28.349634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918991, 33.502998, 28.342520>,  <36.657166, 33.200829, 28.330662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918991, 33.502998, 28.342520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260006, 0.261764, -0.929450,
		-0.709887, 0.600679, 0.367756,
		0.654566, 0.755423, 0.029643,
		37.115360, 33.729626, 28.351412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320278, 33.715210, 27.898756>,  <36.657166, 33.200829, 28.330662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320278, 33.715210, 27.898756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692276, 33.858402, 27.932133>,  <36.915474, 33.944317, 27.952158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692276, 33.858402, 27.932133>,  <36.320278, 33.715210, 27.898756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692276, 33.858402, 27.932133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058171, 0.367481, -0.928210,
		-0.362943, 0.858376, 0.362579,
		0.929994, 0.357979, 0.083442,
		36.971275, 33.965797, 27.957165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302299, 34.420502, 27.670692>,  <36.320278, 33.715210, 27.898756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302299, 34.420502, 27.670692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686306, 34.320999, 27.619316>,  <36.916710, 34.261299, 27.588491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686306, 34.320999, 27.619316>,  <36.302299, 34.420502, 27.670692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686306, 34.320999, 27.619316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057443, 0.273999, -0.960013,
		0.273999, 0.929003, 0.248753,
		0.960013, -0.248753, -0.128440,
		36.974312, 34.246372, 27.580784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599823, 34.915062, 27.276930>,  <36.302299, 34.420502, 27.670692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599823, 34.915062, 27.276930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838570, 34.600521, 27.213188>,  <36.981819, 34.411797, 27.174944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838570, 34.600521, 27.213188>,  <36.599823, 34.915062, 27.276930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838570, 34.600521, 27.213188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071695, 0.145543, -0.986751,
		0.799129, 0.600385, 0.030492,
		0.596869, -0.786355, -0.159353,
		37.017632, 34.364616, 27.165382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992847, 35.136364, 26.810503>,  <36.599823, 34.915062, 27.276930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992847, 35.136364, 26.810503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053497, 34.742313, 26.778172>,  <37.089886, 34.505882, 26.758772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053497, 34.742313, 26.778172>,  <36.992847, 35.136364, 26.810503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053497, 34.742313, 26.778172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039027, 0.075744, -0.996363,
		0.987668, 0.154226, -0.026962,
		0.151623, -0.985128, -0.080829,
		37.098984, 34.446774, 26.753923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418018, 35.087662, 26.212549>,  <36.992847, 35.136364, 26.810503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418018, 35.087662, 26.212549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249962, 34.726120, 26.244843>,  <37.149128, 34.509193, 26.264219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249962, 34.726120, 26.244843>,  <37.418018, 35.087662, 26.212549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249962, 34.726120, 26.244843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010484, -0.084128, -0.996400,
		0.907397, -0.419477, 0.025870,
		-0.420143, -0.903859, 0.080736,
		37.123920, 34.454964, 26.269064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858223, 34.526627, 25.874619>,  <37.418018, 35.087662, 26.212549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858223, 34.526627, 25.874619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495625, 34.357761, 25.877104>,  <37.278065, 34.256443, 25.878595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495625, 34.357761, 25.877104>,  <37.858223, 34.526627, 25.874619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495625, 34.357761, 25.877104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197925, -0.437908, -0.876962,
		0.372944, -0.793734, 0.480519,
		-0.906498, -0.422164, 0.006215,
		37.223675, 34.231113, 25.878969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992897, 33.980442, 25.525518>,  <37.858223, 34.526627, 25.874619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992897, 33.980442, 25.525518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595581, 34.015701, 25.495560>,  <37.357193, 34.036858, 25.477585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595581, 34.015701, 25.495560>,  <37.992897, 33.980442, 25.525518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595581, 34.015701, 25.495560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028656, -0.439782, -0.897647,
		-0.112062, -0.893769, 0.434304,
		-0.993288, 0.088147, -0.074895,
		37.297596, 34.042145, 25.473091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849087, 33.433338, 25.196075>,  <37.992897, 33.980442, 25.525518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849087, 33.433338, 25.196075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515873, 33.651405, 25.158440>,  <37.315945, 33.782246, 25.135859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515873, 33.651405, 25.158440>,  <37.849087, 33.433338, 25.196075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515873, 33.651405, 25.158440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115757, -0.338068, -0.933976,
		-0.540983, -0.767138, 0.344728,
		-0.833029, 0.545169, -0.094088,
		37.265965, 33.814957, 25.130213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392330, 32.930393, 24.953337>,  <37.849087, 33.433338, 25.196075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392330, 32.930393, 24.953337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275768, 33.297806, 24.846460>,  <37.205830, 33.518253, 24.782335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275768, 33.297806, 24.846460>,  <37.392330, 32.930393, 24.953337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275768, 33.297806, 24.846460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241606, -0.340928, -0.908513,
		-0.925586, -0.200190, 0.321270,
		-0.291405, 0.918527, -0.267191,
		37.188347, 33.573364, 24.766302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845028, 32.807526, 24.477818>,  <37.392330, 32.930393, 24.953337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845028, 32.807526, 24.477818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928288, 33.190495, 24.397802>,  <36.978245, 33.420277, 24.349792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928288, 33.190495, 24.397802>,  <36.845028, 32.807526, 24.477818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928288, 33.190495, 24.397802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225391, -0.152063, -0.962328,
		-0.951773, 0.245399, 0.184142,
		0.208153, 0.957421, -0.200040,
		36.990734, 33.477722, 24.337790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336880, 33.040344, 24.046041>,  <36.845028, 32.807526, 24.477818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336880, 33.040344, 24.046041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644688, 33.287785, 23.982584>,  <36.829372, 33.436249, 23.944510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644688, 33.287785, 23.982584>,  <36.336880, 33.040344, 24.046041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644688, 33.287785, 23.982584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097082, -0.132215, -0.986456,
		-0.631199, 0.774500, -0.041687,
		0.769521, 0.618603, -0.158643,
		36.875546, 33.473366, 23.934992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062954, 33.442905, 23.594776>,  <36.336880, 33.040344, 24.046041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062954, 33.442905, 23.594776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459217, 33.468040, 23.546368>,  <36.696976, 33.483120, 23.517323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459217, 33.468040, 23.546368>,  <36.062954, 33.442905, 23.594776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459217, 33.468040, 23.546368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097040, -0.298657, -0.949414,
		-0.095802, 0.952290, -0.289769,
		0.990659, 0.062837, -0.121022,
		36.756416, 33.486893, 23.510061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111107, 33.833160, 22.941351>,  <36.062954, 33.442905, 23.594776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111107, 33.833160, 22.941351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480541, 33.691235, 22.999437>,  <36.702202, 33.606079, 23.034288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480541, 33.691235, 22.999437>,  <36.111107, 33.833160, 22.941351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480541, 33.691235, 22.999437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040843, -0.285553, -0.957492,
		0.381202, 0.890260, -0.249242,
		0.923589, -0.354818, 0.145214,
		36.757618, 33.584789, 23.043001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579639, 34.085598, 22.473217>,  <36.111107, 33.833160, 22.941351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579639, 34.085598, 22.473217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767014, 33.750519, 22.585522>,  <36.879440, 33.549473, 22.652905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767014, 33.750519, 22.585522>,  <36.579639, 34.085598, 22.473217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767014, 33.750519, 22.585522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096238, -0.364274, -0.926306,
		0.878238, 0.406898, -0.251259,
		0.468439, -0.837698, 0.280761,
		36.907547, 33.499210, 22.669750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195328, 34.001587, 21.952276>,  <36.579639, 34.085598, 22.473217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195328, 34.001587, 21.952276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128128, 33.641289, 22.112495>,  <37.087811, 33.425110, 22.208628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128128, 33.641289, 22.112495>,  <37.195328, 34.001587, 21.952276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128128, 33.641289, 22.112495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076336, -0.393216, -0.916272,
		0.982827, -0.184507, -0.002700,
		-0.167997, -0.900743, 0.400548,
		37.077728, 33.371067, 22.232660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706184, 33.543419, 21.611464>,  <37.195328, 34.001587, 21.952276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706184, 33.543419, 21.611464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417744, 33.313282, 21.765858>,  <37.244678, 33.175198, 21.858494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417744, 33.313282, 21.765858>,  <37.706184, 33.543419, 21.611464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417744, 33.313282, 21.765858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083385, -0.480995, -0.872749,
		0.687790, -0.661528, 0.298872,
		-0.721104, -0.575347, 0.385986,
		37.201412, 33.140678, 21.881653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792324, 32.920109, 21.157543>,  <37.706184, 33.543419, 21.611464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792324, 32.920109, 21.157543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446747, 32.893391, 21.357199>,  <37.239399, 32.877361, 21.476992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446747, 32.893391, 21.357199>,  <37.792324, 32.920109, 21.157543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446747, 32.893391, 21.357199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341533, -0.650677, -0.678215,
		0.370079, -0.756412, 0.539336,
		-0.863943, -0.066792, 0.499141,
		37.187565, 32.873352, 21.506941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741940, 32.206005, 21.206432>,  <37.792324, 32.920109, 21.157543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741940, 32.206005, 21.206432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381405, 32.372650, 21.253820>,  <37.165085, 32.472637, 21.282253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381405, 32.372650, 21.253820>,  <37.741940, 32.206005, 21.206432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381405, 32.372650, 21.253820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397504, -0.687028, -0.608262,
		-0.172013, -0.595340, 0.784845,
		-0.901333, 0.416608, 0.118472,
		37.111004, 32.497631, 21.289362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200340, 31.648752, 21.474016>,  <37.741940, 32.206005, 21.206432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200340, 31.648752, 21.474016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053486, 31.954601, 21.262142>,  <36.965374, 32.138111, 21.135017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053486, 31.954601, 21.262142>,  <37.200340, 31.648752, 21.474016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053486, 31.954601, 21.262142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361462, -0.641973, -0.676177,
		-0.857063, -0.056787, 0.512072,
		-0.367135, 0.764621, -0.529685,
		36.943344, 32.183987, 21.103237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697376, 31.150703, 21.426313>,  <37.200340, 31.648752, 21.474016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697376, 31.150703, 21.426313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840977, 30.833284, 21.229784>,  <36.927135, 30.642832, 21.111866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840977, 30.833284, 21.229784>,  <36.697376, 31.150703, 21.426313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840977, 30.833284, 21.229784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237590, -0.431375, 0.870326,
		-0.902591, -0.429179, 0.033677,
		0.358998, -0.793549, -0.491324,
		36.948677, 30.595219, 21.082386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446472, 30.524359, 21.762197>,  <36.697376, 31.150703, 21.426313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446472, 30.524359, 21.762197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784954, 30.425335, 21.573456>,  <36.988045, 30.365921, 21.460211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784954, 30.425335, 21.573456>,  <36.446472, 30.524359, 21.762197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784954, 30.425335, 21.573456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401995, -0.284663, 0.870268,
		-0.349761, -0.926112, -0.141367,
		0.846207, -0.247557, -0.471857,
		37.038815, 30.351067, 21.431898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487255, 29.822407, 21.955292>,  <36.446472, 30.524359, 21.762197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487255, 29.822407, 21.955292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851494, 29.935688, 21.834892>,  <37.070038, 30.003656, 21.762653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851494, 29.935688, 21.834892>,  <36.487255, 29.822407, 21.955292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851494, 29.935688, 21.834892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356391, -0.169321, 0.918867,
		0.209263, -0.943994, -0.255116,
		0.910601, 0.283205, -0.300998,
		37.124676, 30.020649, 21.744593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963753, 29.196096, 22.059122>,  <36.487255, 29.822407, 21.955292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963753, 29.196096, 22.059122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189140, 29.526077, 22.041428>,  <37.324371, 29.724066, 22.030811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189140, 29.526077, 22.041428>,  <36.963753, 29.196096, 22.059122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189140, 29.526077, 22.041428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463427, -0.271299, 0.843583,
		0.683914, -0.495834, -0.535174,
		0.563469, 0.824952, -0.044238,
		37.358181, 29.773563, 22.028156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578674, 28.956711, 22.342558>,  <36.963753, 29.196096, 22.059122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578674, 28.956711, 22.342558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607822, 29.354168, 22.376879>,  <37.625313, 29.592642, 22.397470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607822, 29.354168, 22.376879>,  <37.578674, 28.956711, 22.342558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607822, 29.354168, 22.376879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475656, -0.110242, 0.872696,
		0.876608, -0.022783, -0.480666,
		0.072872, 0.993644, 0.085802,
		37.629684, 29.652262, 22.402620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246597, 29.011744, 22.560186>,  <37.578674, 28.956711, 22.342558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246597, 29.011744, 22.560186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042812, 29.344479, 22.648275>,  <37.920544, 29.544121, 22.701128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042812, 29.344479, 22.648275>,  <38.246597, 29.011744, 22.560186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042812, 29.344479, 22.648275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368258, -0.020535, 0.929497,
		0.777713, 0.554638, -0.295870,
		-0.509458, 0.831839, 0.220220,
		37.889977, 29.594030, 22.714342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741692, 29.495819, 22.838905>,  <38.246597, 29.011744, 22.560186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741692, 29.495819, 22.838905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385113, 29.617165, 22.973543>,  <38.171165, 29.689972, 23.054325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385113, 29.617165, 22.973543>,  <38.741692, 29.495819, 22.838905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385113, 29.617165, 22.973543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365538, 0.042461, 0.929828,
		0.267785, 0.951928, -0.148743,
		-0.891445, 0.303365, 0.336595,
		38.117680, 29.708174, 23.074522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929195, 30.043007, 23.158548>,  <38.741692, 29.495819, 22.838905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929195, 30.043007, 23.158548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577099, 29.946844, 23.322193>,  <38.365841, 29.889147, 23.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577099, 29.946844, 23.322193>,  <38.929195, 30.043007, 23.158548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577099, 29.946844, 23.322193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372102, 0.185308, 0.909506,
		-0.294462, 0.952820, -0.073661,
		-0.880246, -0.240405, 0.409112,
		38.313026, 29.874722, 23.444927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911846, 30.473658, 23.721685>,  <38.929195, 30.043007, 23.158548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911846, 30.473658, 23.721685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625217, 30.208519, 23.808550>,  <38.453239, 30.049437, 23.860668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625217, 30.208519, 23.808550>,  <38.911846, 30.473658, 23.721685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625217, 30.208519, 23.808550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188108, 0.116158, 0.975255,
		-0.671667, 0.739692, 0.041451,
		-0.716574, -0.662844, 0.217162,
		38.410244, 30.009666, 23.873699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320694, 30.804960, 24.117844>,  <38.911846, 30.473658, 23.721685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320694, 30.804960, 24.117844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341686, 30.411856, 24.188753>,  <38.354282, 30.175993, 24.231298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341686, 30.411856, 24.188753>,  <38.320694, 30.804960, 24.117844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341686, 30.411856, 24.188753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000251, 0.177506, 0.984120,
		-0.998622, -0.051694, 0.009069,
		0.052482, -0.982761, 0.177274,
		38.357430, 30.117027, 24.241936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959076, 30.744873, 24.724815>,  <38.320694, 30.804960, 24.117844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959076, 30.744873, 24.724815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117260, 30.377728, 24.711327>,  <38.212170, 30.157440, 24.703234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117260, 30.377728, 24.711327>,  <37.959076, 30.744873, 24.724815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117260, 30.377728, 24.711327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348273, 0.115878, 0.930203,
		-0.849891, -0.379605, 0.365493,
		0.395462, -0.917863, -0.033723,
		38.235897, 30.102369, 24.701210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754433, 30.453300, 25.292923>,  <37.959076, 30.744873, 24.724815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754433, 30.453300, 25.292923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061863, 30.227901, 25.171757>,  <38.246323, 30.092663, 25.099056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061863, 30.227901, 25.171757>,  <37.754433, 30.453300, 25.292923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061863, 30.227901, 25.171757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395239, 0.045907, 0.917430,
		-0.503065, -0.824841, 0.258000,
		0.768578, -0.563499, -0.302915,
		38.292435, 30.058851, 25.080883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811069, 29.908096, 25.753241>,  <37.754433, 30.453300, 25.292923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811069, 29.908096, 25.753241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174267, 29.945158, 25.589794>,  <38.392185, 29.967396, 25.491726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174267, 29.945158, 25.589794>,  <37.811069, 29.908096, 25.753241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174267, 29.945158, 25.589794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415484, -0.073201, 0.906650,
		0.054096, -0.993004, -0.104963,
		0.907990, 0.092656, -0.408617,
		38.446663, 29.972956, 25.467209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215851, 29.230576, 25.925177>,  <37.811069, 29.908096, 25.753241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215851, 29.230576, 25.925177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447727, 29.551489, 25.868183>,  <38.586853, 29.744038, 25.833986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447727, 29.551489, 25.868183>,  <38.215851, 29.230576, 25.925177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447727, 29.551489, 25.868183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387991, -0.118001, 0.914078,
		0.716537, -0.585162, -0.379683,
		0.579687, 0.802284, -0.142485,
		38.621632, 29.792173, 25.825438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912987, 29.055090, 26.239050>,  <38.215851, 29.230576, 25.925177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912987, 29.055090, 26.239050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957897, 29.450468, 26.198324>,  <38.984844, 29.687695, 26.173889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957897, 29.450468, 26.198324>,  <38.912987, 29.055090, 26.239050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957897, 29.450468, 26.198324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421021, 0.045489, 0.905910,
		0.900075, -0.144579, -0.411050,
		0.112277, 0.988447, -0.101814,
		38.991581, 29.747002, 26.167780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573303, 29.249304, 26.540640>,  <38.912987, 29.055090, 26.239050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573303, 29.249304, 26.540640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394958, 29.607128, 26.528170>,  <39.287952, 29.821823, 26.520687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394958, 29.607128, 26.528170>,  <39.573303, 29.249304, 26.540640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394958, 29.607128, 26.528170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408731, 0.234456, 0.882025,
		0.796333, 0.380520, -0.470169,
		-0.445862, 0.894558, -0.031175,
		39.261200, 29.875496, 26.518818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079010, 29.802080, 26.796701>,  <39.573303, 29.249304, 26.540640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079010, 29.802080, 26.796701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698574, 29.916788, 26.842653>,  <39.470314, 29.985613, 26.870224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698574, 29.916788, 26.842653>,  <40.079010, 29.802080, 26.796701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698574, 29.916788, 26.842653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227549, 0.398793, 0.888361,
		0.208943, 0.871049, -0.444541,
		-0.951086, 0.286772, 0.114881,
		39.413250, 30.002819, 26.877117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164486, 30.427126, 27.088585>,  <40.079010, 29.802080, 26.796701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164486, 30.427126, 27.088585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794109, 30.313885, 27.188578>,  <39.571884, 30.245939, 27.248573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794109, 30.313885, 27.188578>,  <40.164486, 30.427126, 27.088585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794109, 30.313885, 27.188578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142437, 0.351249, 0.925384,
		-0.349785, 0.892455, -0.284911,
		-0.925938, -0.283104, 0.249980,
		39.516327, 30.228954, 27.263573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974934, 30.907419, 27.660021>,  <40.164486, 30.427126, 27.088585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974934, 30.907419, 27.660021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647308, 30.679279, 27.684790>,  <39.450733, 30.542395, 27.699652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647308, 30.679279, 27.684790>,  <39.974934, 30.907419, 27.660021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647308, 30.679279, 27.684790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164194, 0.336469, 0.927269,
		-0.549703, 0.749326, -0.369238,
		-0.819064, -0.570350, 0.061923,
		39.401588, 30.508175, 27.703367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400154, 31.338285, 27.812454>,  <39.974934, 30.907419, 27.660021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400154, 31.338285, 27.812454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290714, 30.969189, 27.921034>,  <39.225048, 30.747730, 27.986181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290714, 30.969189, 27.921034>,  <39.400154, 31.338285, 27.812454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290714, 30.969189, 27.921034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193401, 0.329232, 0.924231,
		-0.942198, 0.200375, -0.268539,
		-0.273604, -0.922744, 0.271449,
		39.208633, 30.692366, 28.002468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772270, 31.432549, 28.047239>,  <39.400154, 31.338285, 27.812454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772270, 31.432549, 28.047239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898888, 31.085314, 28.200195>,  <38.974857, 30.876972, 28.291969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898888, 31.085314, 28.200195>,  <38.772270, 31.432549, 28.047239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898888, 31.085314, 28.200195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369561, 0.258410, 0.892552,
		-0.873628, -0.423847, -0.239014,
		0.316542, -0.868088, 0.382392,
		38.993851, 30.824888, 28.314913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173157, 31.198034, 28.470404>,  <38.772270, 31.432549, 28.047239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173157, 31.198034, 28.470404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501038, 31.010515, 28.602047>,  <38.697765, 30.898003, 28.681032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501038, 31.010515, 28.602047>,  <38.173157, 31.198034, 28.470404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501038, 31.010515, 28.602047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243533, 0.234806, 0.941041,
		-0.518435, -0.851524, 0.078303,
		0.819705, -0.468799, 0.329106,
		38.746948, 30.869875, 28.700779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950970, 30.785896, 29.012161>,  <38.173157, 31.198034, 28.470404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950970, 30.785896, 29.012161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343849, 30.775835, 29.086622>,  <38.579578, 30.769798, 29.131300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343849, 30.775835, 29.086622>,  <37.950970, 30.785896, 29.012161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343849, 30.775835, 29.086622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180348, 0.150907, 0.971958,
		-0.052539, -0.988228, 0.143684,
		0.982199, -0.025152, 0.186154,
		38.638508, 30.768290, 29.142467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067066, 30.317245, 29.595749>,  <37.950970, 30.785896, 29.012161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067066, 30.317245, 29.595749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374569, 30.572882, 29.586132>,  <38.559071, 30.726263, 29.580362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374569, 30.572882, 29.586132>,  <38.067066, 30.317245, 29.595749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374569, 30.572882, 29.586132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121034, 0.182297, 0.975766,
		0.627986, -0.747215, 0.217494,
		0.768755, 0.639092, -0.024041,
		38.605194, 30.764608, 29.578920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577412, 30.083546, 30.101318>,  <38.067066, 30.317245, 29.595749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577412, 30.083546, 30.101318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656925, 30.470535, 30.038729>,  <38.704632, 30.702728, 30.001175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656925, 30.470535, 30.038729>,  <38.577412, 30.083546, 30.101318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656925, 30.470535, 30.038729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160773, 0.125306, 0.979005,
		0.966767, -0.219764, -0.130635,
		0.198780, 0.967472, -0.156474,
		38.716560, 30.760777, 29.991787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205490, 30.209257, 30.479115>,  <38.577412, 30.083546, 30.101318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205490, 30.209257, 30.479115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035217, 30.566628, 30.421732>,  <38.933052, 30.781050, 30.387302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035217, 30.566628, 30.421732>,  <39.205490, 30.209257, 30.479115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035217, 30.566628, 30.421732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077876, 0.121776, 0.989498,
		0.901514, 0.432387, 0.017738,
		-0.425686, 0.893427, -0.143455,
		38.907513, 30.834656, 30.378695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684860, 30.640043, 30.713539>,  <39.205490, 30.209257, 30.479115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684860, 30.640043, 30.713539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328472, 30.821636, 30.717064>,  <39.114639, 30.930592, 30.719179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328472, 30.821636, 30.717064>,  <39.684860, 30.640043, 30.713539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328472, 30.821636, 30.717064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081175, 0.140160, 0.986796,
		0.446753, 0.879918, -0.161730,
		-0.890967, 0.453983, 0.008810,
		39.061184, 30.957830, 30.719707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808186, 31.247908, 31.106514>,  <39.684860, 30.640043, 30.713539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808186, 31.247908, 31.106514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413147, 31.185661, 31.114899>,  <39.176125, 31.148314, 31.119928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413147, 31.185661, 31.114899>,  <39.808186, 31.247908, 31.106514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413147, 31.185661, 31.114899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026539, 0.296990, 0.954512,
		-0.154760, 0.942115, -0.297436,
		-0.987595, -0.155614, 0.020960,
		39.116867, 31.138977, 31.121187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518337, 31.873810, 31.386303>,  <39.808186, 31.247908, 31.106514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518337, 31.873810, 31.386303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263035, 31.573723, 31.455368>,  <39.109856, 31.393671, 31.496807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263035, 31.573723, 31.455368>,  <39.518337, 31.873810, 31.386303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263035, 31.573723, 31.455368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037120, 0.194033, 0.980292,
		-0.768932, 0.632082, -0.095994,
		-0.638251, -0.750215, 0.172661,
		39.071560, 31.348658, 31.507166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094627, 32.005306, 32.080803>,  <39.518337, 31.873810, 31.386303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094627, 32.005306, 32.080803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028614, 31.617451, 32.008617>,  <38.989006, 31.384737, 31.965307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028614, 31.617451, 32.008617>,  <39.094627, 32.005306, 32.080803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028614, 31.617451, 32.008617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058744, -0.192307, 0.979575,
		-0.984537, 0.151065, 0.088698,
		-0.165036, -0.969638, -0.180459,
		38.979103, 31.326559, 31.954479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566166, 31.754555, 32.576019>,  <39.094627, 32.005306, 32.080803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566166, 31.754555, 32.576019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762447, 31.432980, 32.441620>,  <38.880215, 31.240034, 32.360981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762447, 31.432980, 32.441620>,  <38.566166, 31.754555, 32.576019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762447, 31.432980, 32.441620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155205, -0.298808, 0.941608,
		-0.857392, -0.514199, -0.021852,
		0.490704, -0.803936, -0.336002,
		38.909660, 31.191799, 32.340820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545391, 31.329193, 33.049484>,  <38.566166, 31.754555, 32.576019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545391, 31.329193, 33.049484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822201, 31.107292, 32.864727>,  <38.988289, 30.974152, 32.753872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822201, 31.107292, 32.864727>,  <38.545391, 31.329193, 33.049484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822201, 31.107292, 32.864727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217284, -0.450105, 0.866137,
		-0.688395, -0.699752, -0.190945,
		0.692026, -0.554755, -0.461895,
		39.029808, 30.940866, 32.726158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401134, 30.643244, 33.266430>,  <38.545391, 31.329193, 33.049484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401134, 30.643244, 33.266430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779430, 30.690458, 33.145336>,  <39.006409, 30.718788, 33.072681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779430, 30.690458, 33.145336>,  <38.401134, 30.643244, 33.266430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779430, 30.690458, 33.145336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324898, -0.329676, 0.886428,
		0.004828, -0.936686, -0.350138,
		0.945737, 0.118039, -0.302735,
		39.063152, 30.725870, 33.054516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793179, 29.975519, 33.459595>,  <38.401134, 30.643244, 33.266430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793179, 29.975519, 33.459595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076153, 30.252436, 33.402653>,  <39.245937, 30.418585, 33.368488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076153, 30.252436, 33.402653>,  <38.793179, 29.975519, 33.459595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076153, 30.252436, 33.402653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480099, -0.322889, 0.815627,
		0.518685, -0.645352, -0.560792,
		0.707440, 0.692289, -0.142355,
		39.288383, 30.460123, 33.359947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428860, 29.671608, 33.493088>,  <38.793179, 29.975519, 33.459595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428860, 29.671608, 33.493088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514355, 30.047201, 33.600887>,  <39.565651, 30.272556, 33.665565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514355, 30.047201, 33.600887>,  <39.428860, 29.671608, 33.493088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514355, 30.047201, 33.600887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411313, -0.336726, 0.847017,
		0.886080, -0.070191, -0.458186,
		0.213736, 0.938983, 0.269496,
		39.578476, 30.328896, 33.681736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042061, 29.532850, 33.834663>,  <39.428860, 29.671608, 33.493088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042061, 29.532850, 33.834663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880032, 29.879452, 33.951344>,  <39.782814, 30.087412, 34.021351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880032, 29.879452, 33.951344>,  <40.042061, 29.532850, 33.834663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880032, 29.879452, 33.951344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162657, -0.245655, 0.955613,
		0.899697, 0.434543, -0.041434,
		-0.405077, 0.866502, 0.291696,
		39.758507, 30.139402, 34.038853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562862, 29.787621, 34.278042>,  <40.042061, 29.532850, 33.834663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562862, 29.787621, 34.278042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222500, 29.976599, 34.369915>,  <40.018284, 30.089985, 34.425041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222500, 29.976599, 34.369915>,  <40.562862, 29.787621, 34.278042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222500, 29.976599, 34.369915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108191, -0.270253, 0.956691,
		0.514057, 0.838904, 0.178846,
		-0.850906, 0.472444, 0.229687,
		39.967228, 30.118332, 34.438820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662354, 30.238400, 34.904305>,  <40.562862, 29.787621, 34.278042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662354, 30.238400, 34.904305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263157, 30.224888, 34.925705>,  <40.023636, 30.216782, 34.938545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263157, 30.224888, 34.925705>,  <40.662354, 30.238400, 34.904305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263157, 30.224888, 34.925705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061402, -0.313000, 0.947766,
		-0.015267, 0.949152, 0.314447,
		-0.997996, -0.033777, 0.053502,
		39.963757, 30.214754, 34.941757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341412, 30.704998, 35.405106>,  <40.662354, 30.238400, 34.904305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341412, 30.704998, 35.405106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085316, 30.404709, 35.339981>,  <39.931656, 30.224535, 35.300907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085316, 30.404709, 35.339981>,  <40.341412, 30.704998, 35.405106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085316, 30.404709, 35.339981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150528, -0.085222, 0.984926,
		-0.753280, 0.655098, -0.058441,
		-0.640243, -0.750722, -0.162807,
		39.893242, 30.179493, 35.291138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056786, 30.724632, 35.966255>,  <40.341412, 30.704998, 35.405106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056786, 30.724632, 35.966255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921665, 30.370115, 35.839523>,  <39.840591, 30.157406, 35.763485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921665, 30.370115, 35.839523>,  <40.056786, 30.724632, 35.966255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921665, 30.370115, 35.839523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041789, -0.322161, 0.945762,
		-0.940289, 0.332719, 0.071789,
		-0.337800, -0.886290, -0.316829,
		39.820324, 30.104229, 35.744476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469784, 30.523859, 36.491581>,  <40.056786, 30.724632, 35.966255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469784, 30.523859, 36.491581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534813, 30.889044, 36.641285>,  <40.573830, 31.108154, 36.731106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534813, 30.889044, 36.641285>,  <40.469784, 30.523859, 36.491581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534813, 30.889044, 36.641285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364177, -0.297003, 0.882703,
		0.917031, -0.279797, 0.284196,
		0.162571, 0.912964, 0.374257,
		40.583584, 31.162933, 36.753563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679230, 30.389652, 37.083096>,  <40.469784, 30.523859, 36.491581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679230, 30.389652, 37.083096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532742, 30.761160, 37.105968>,  <40.444847, 30.984064, 37.119694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532742, 30.761160, 37.105968>,  <40.679230, 30.389652, 37.083096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532742, 30.761160, 37.105968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482524, -0.242091, 0.841761,
		0.795647, 0.280676, 0.536812,
		-0.366219, 0.928769, 0.057186,
		40.422874, 31.039791, 37.123123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344440, 30.378597, 37.779465>,  <40.679230, 30.389652, 37.083096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344440, 30.378597, 37.779465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232056, 30.734959, 37.636719>,  <40.164627, 30.948776, 37.551071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232056, 30.734959, 37.636719>,  <40.344440, 30.378597, 37.779465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232056, 30.734959, 37.636719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723567, 0.047643, 0.688608,
		0.630485, 0.451686, 0.631243,
		-0.280960, 0.890904, -0.356863,
		40.147766, 31.002230, 37.529659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379837, 30.967258, 38.282310>,  <40.344440, 30.378597, 37.779465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379837, 30.967258, 38.282310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093601, 31.010878, 38.006325>,  <39.921860, 31.037048, 37.840736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093601, 31.010878, 38.006325>,  <40.379837, 30.967258, 38.282310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093601, 31.010878, 38.006325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693704, 0.004887, 0.720243,
		0.081912, 0.994025, 0.072149,
		-0.715587, 0.109047, -0.689959,
		39.878925, 31.043592, 37.799335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952095, 31.304762, 38.682968>,  <40.379837, 30.967258, 38.282310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952095, 31.304762, 38.682968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745605, 31.189316, 38.360424>,  <39.621712, 31.120049, 38.166897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745605, 31.189316, 38.360424>,  <39.952095, 31.304762, 38.682968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745605, 31.189316, 38.360424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834909, -0.040256, 0.548913,
		-0.190886, 0.956598, -0.220188,
		-0.516226, -0.288617, -0.806357,
		39.590736, 31.102732, 38.118519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329376, 31.649622, 38.630814>,  <39.952095, 31.304762, 38.682968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329376, 31.649622, 38.630814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214279, 31.348812, 38.393608>,  <39.145222, 31.168327, 38.251286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214279, 31.348812, 38.393608>,  <39.329376, 31.649622, 38.630814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214279, 31.348812, 38.393608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906955, 0.015080, 0.420957,
		-0.307627, 0.658965, -0.686390,
		-0.287746, -0.752023, -0.593013,
		39.127956, 31.123205, 38.215706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571117, 31.758488, 38.469620>,  <39.329376, 31.649622, 38.630814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571117, 31.758488, 38.469620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658489, 31.381672, 38.367760>,  <38.710915, 31.155582, 38.306644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658489, 31.381672, 38.367760>,  <38.571117, 31.758488, 38.469620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658489, 31.381672, 38.367760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873778, -0.305003, 0.378796,
		-0.434511, 0.139769, -0.889756,
		0.218434, -0.942039, -0.254654,
		38.724018, 31.099060, 38.291363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031467, 31.517645, 38.182655>,  <38.571117, 31.758488, 38.469620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031467, 31.517645, 38.182655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217117, 31.183510, 38.300503>,  <38.328506, 30.983028, 38.371212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217117, 31.183510, 38.300503>,  <38.031467, 31.517645, 38.182655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217117, 31.183510, 38.300503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813212, -0.269999, 0.515545,
		-0.351106, -0.478867, -0.804619,
		0.464124, -0.835337, 0.294622,
		38.356354, 30.932909, 38.388889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529976, 30.989103, 38.135750>,  <38.031467, 31.517645, 38.182655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529976, 30.989103, 38.135750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782139, 30.910065, 38.436028>,  <37.933437, 30.862642, 38.616196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782139, 30.910065, 38.436028>,  <37.529976, 30.989103, 38.135750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782139, 30.910065, 38.436028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775354, -0.113359, 0.621270,
		-0.037661, -0.973708, -0.224667,
		0.630404, -0.197594, 0.750699,
		37.971260, 30.850786, 38.661236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315582, 30.328062, 38.352840>,  <37.529976, 30.989103, 38.135750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315582, 30.328062, 38.352840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501225, 30.534121, 38.641071>,  <37.612610, 30.657755, 38.814011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501225, 30.534121, 38.641071>,  <37.315582, 30.328062, 38.352840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501225, 30.534121, 38.641071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801425, -0.102268, 0.589287,
		0.377261, -0.850979, 0.365388,
		0.464103, 0.515146, 0.720578,
		37.640457, 30.688663, 38.857246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431019, 29.853703, 38.974220>,  <37.315582, 30.328062, 38.352840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431019, 29.853703, 38.974220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405670, 30.244293, 39.056664>,  <37.390461, 30.478647, 39.106129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405670, 30.244293, 39.056664>,  <37.431019, 29.853703, 38.974220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405670, 30.244293, 39.056664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691699, -0.191842, 0.696239,
		0.719400, -0.098442, 0.687584,
		-0.063368, 0.976476, 0.206104,
		37.386662, 30.537235, 39.118496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421120, 30.016775, 39.710808>,  <37.431019, 29.853703, 38.974220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421120, 30.016775, 39.710808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234943, 30.342670, 39.572495>,  <37.123238, 30.538208, 39.489506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234943, 30.342670, 39.572495>,  <37.421120, 30.016775, 39.710808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234943, 30.342670, 39.572495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690250, -0.089592, 0.718003,
		0.554006, 0.572864, 0.604073,
		-0.465438, 0.814739, -0.345785,
		37.095310, 30.587091, 39.468758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785995, 29.970114, 40.076481>,  <37.421120, 30.016775, 39.710808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785995, 29.970114, 40.076481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824051, 30.365042, 40.025654>,  <36.846882, 30.601999, 39.995155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824051, 30.365042, 40.025654>,  <36.785995, 29.970114, 40.076481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824051, 30.365042, 40.025654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711771, 0.156709, 0.684707,
		0.695939, 0.025306, 0.717655,
		0.095136, 0.987321, -0.127072,
		36.852592, 30.661238, 39.987534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990536, 30.362167, 40.754269>,  <36.785995, 29.970114, 40.076481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990536, 30.362167, 40.754269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769623, 30.580004, 40.501793>,  <36.637074, 30.710707, 40.350307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769623, 30.580004, 40.501793>,  <36.990536, 30.362167, 40.754269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769623, 30.580004, 40.501793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723201, 0.063641, 0.687699,
		0.414685, 0.836282, 0.358703,
		-0.552282, 0.544593, -0.631192,
		36.603939, 30.743382, 40.312435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679516, 31.026150, 41.122131>,  <36.990536, 30.362167, 40.754269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679516, 31.026150, 41.122131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453384, 30.920540, 40.809544>,  <36.317707, 30.857174, 40.621990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453384, 30.920540, 40.809544>,  <36.679516, 31.026150, 41.122131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453384, 30.920540, 40.809544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820974, 0.088189, 0.564113,
		-0.080023, 0.960476, -0.266613,
		-0.565330, -0.264024, -0.781469,
		36.283787, 30.841333, 40.575104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086052, 31.347757, 41.269077>,  <36.679516, 31.026150, 41.122131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086052, 31.347757, 41.269077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998814, 31.058220, 41.007240>,  <35.946472, 30.884499, 40.850140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998814, 31.058220, 41.007240>,  <36.086052, 31.347757, 41.269077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998814, 31.058220, 41.007240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924297, -0.062074, 0.376593,
		-0.313227, 0.687168, -0.655507,
		-0.218093, -0.723842, -0.654590,
		35.933384, 30.841066, 40.810863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354168, 31.413935, 41.171398>,  <36.086052, 31.347757, 41.269077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354168, 31.413935, 41.171398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433514, 31.038315, 41.059090>,  <35.481121, 30.812943, 40.991703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433514, 31.038315, 41.059090>,  <35.354168, 31.413935, 41.171398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433514, 31.038315, 41.059090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809334, -0.318516, 0.493484,
		-0.552838, 0.129350, -0.823188,
		0.198366, -0.939051, -0.280775,
		35.493023, 30.756599, 40.974857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744301, 31.108135, 41.237370>,  <35.354168, 31.413935, 41.171398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744301, 31.108135, 41.237370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948704, 30.767778, 41.188618>,  <35.071346, 30.563564, 41.159367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948704, 30.767778, 41.188618>,  <34.744301, 31.108135, 41.237370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948704, 30.767778, 41.188618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757934, -0.512917, 0.403054,
		-0.405470, -0.113586, -0.907024,
		0.511009, -0.850890, -0.121882,
		35.102005, 30.512510, 41.152054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331474, 30.670420, 40.967400>,  <34.744301, 31.108135, 41.237370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331474, 30.670420, 40.967400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607075, 30.422956, 41.118416>,  <34.772434, 30.274479, 41.209026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607075, 30.422956, 41.118416>,  <34.331474, 30.670420, 40.967400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607075, 30.422956, 41.118416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721968, -0.540203, 0.432370,
		-0.063539, -0.570478, -0.818852,
		0.689003, -0.618656, 0.377543,
		34.813774, 30.237360, 41.231678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418171, 29.910082, 40.666176>,  <34.331474, 30.670420, 40.967400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418171, 29.910082, 40.666176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510052, 29.967419, 41.051235>,  <34.565178, 30.001820, 41.282272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510052, 29.967419, 41.051235>,  <34.418171, 29.910082, 40.666176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510052, 29.967419, 41.051235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661791, -0.702239, 0.262475,
		0.713633, -0.697362, -0.066441,
		0.229697, 0.143340, 0.962649,
		34.578960, 30.010420, 41.340031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784794, 29.321962, 40.910851>,  <34.418171, 29.910082, 40.666176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784794, 29.321962, 40.910851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622845, 29.496723, 41.232147>,  <34.525677, 29.601580, 41.424923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622845, 29.496723, 41.232147>,  <34.784794, 29.321962, 40.910851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622845, 29.496723, 41.232147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640755, -0.762256, 0.091641,
		0.652313, -0.477577, 0.588564,
		-0.404871, 0.436904, 0.803240,
		34.501385, 29.627794, 41.473118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958153, 29.041103, 41.560753>,  <34.784794, 29.321962, 40.910851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958153, 29.041103, 41.560753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590202, 29.194218, 41.594952>,  <34.369434, 29.286087, 41.615471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590202, 29.194218, 41.594952>,  <34.958153, 29.041103, 41.560753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590202, 29.194218, 41.594952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378736, -0.923554, 0.060057,
		0.101951, 0.022863, 0.994527,
		-0.919872, 0.382786, 0.085499,
		34.314240, 29.309053, 41.620602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600765, 28.947565, 42.291775>,  <34.958153, 29.041103, 41.560753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600765, 28.947565, 42.291775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394131, 28.950750, 41.949295>,  <34.270149, 28.952662, 41.743809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394131, 28.950750, 41.949295>,  <34.600765, 28.947565, 42.291775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394131, 28.950750, 41.949295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006367, -0.999965, -0.005461,
		-0.856212, 0.002631, 0.516618,
		-0.516585, 0.007965, -0.856199,
		34.239155, 28.953140, 41.692436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185032, 29.514696, 42.439857>,  <34.600765, 28.947565, 42.291775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185032, 29.514696, 42.439857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036373, 29.885839, 42.452240>,  <33.947178, 30.108524, 42.459671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036373, 29.885839, 42.452240>,  <34.185032, 29.514696, 42.439857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036373, 29.885839, 42.452240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928357, 0.371631, 0.006547,
		-0.005431, 0.031176, -0.999499,
		-0.371649, 0.927857, 0.030961,
		33.924877, 30.164196, 42.461529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749287, 29.919605, 42.723591>,  <34.185032, 29.514696, 42.439857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749287, 29.919605, 42.723591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635151, 29.843523, 42.347847>,  <34.566669, 29.797874, 42.122398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635151, 29.843523, 42.347847>,  <34.749287, 29.919605, 42.723591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635151, 29.843523, 42.347847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827743, 0.445164, -0.341570,
		0.483139, -0.875015, 0.030417,
		-0.285338, -0.190204, -0.939364,
		34.549549, 29.786463, 42.066036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385635, 29.709545, 42.323837>,  <34.749287, 29.919605, 42.723591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385635, 29.709545, 42.323837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145203, 29.784693, 42.013123>,  <35.000942, 29.829782, 41.826694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145203, 29.784693, 42.013123>,  <35.385635, 29.709545, 42.323837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145203, 29.784693, 42.013123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794264, 0.248150, -0.554587,
		0.088570, -0.950330, -0.298377,
		-0.601082, 0.187871, -0.776791,
		34.964878, 29.841055, 41.780087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736073, 29.599836, 41.840080>,  <35.385635, 29.709545, 42.323837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736073, 29.599836, 41.840080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449959, 29.809189, 41.654850>,  <35.278290, 29.934801, 41.543713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449959, 29.809189, 41.654850>,  <35.736073, 29.599836, 41.840080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449959, 29.809189, 41.654850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671143, 0.329793, -0.663931,
		-0.194770, -0.785690, -0.587159,
		-0.715285, 0.523381, -0.463077,
		35.235374, 29.966204, 41.515926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740093, 29.389927, 41.105892>,  <35.736073, 29.599836, 41.840080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740093, 29.389927, 41.105892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559532, 29.746855, 41.106094>,  <35.451195, 29.961012, 41.106216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559532, 29.746855, 41.106094>,  <35.740093, 29.389927, 41.105892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559532, 29.746855, 41.106094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579142, 0.293403, -0.760598,
		-0.678845, -0.343044, -0.649223,
		-0.451402, 0.892320, 0.000503,
		35.424110, 30.014551, 41.106247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645573, 29.661812, 40.375023>,  <35.740093, 29.389927, 41.105892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645573, 29.661812, 40.375023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568203, 29.997164, 40.578869>,  <35.521782, 30.198374, 40.701176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568203, 29.997164, 40.578869>,  <35.645573, 29.661812, 40.375023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568203, 29.997164, 40.578869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488614, 0.532743, -0.690971,
		-0.850789, 0.115351, -0.512691,
		-0.193429, 0.838379, 0.509614,
		35.510174, 30.248678, 40.731754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447372, 30.174265, 39.845093>,  <35.645573, 29.661812, 40.375023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447372, 30.174265, 39.845093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570305, 30.400873, 40.150928>,  <35.644066, 30.536839, 40.334431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570305, 30.400873, 40.150928>,  <35.447372, 30.174265, 39.845093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570305, 30.400873, 40.150928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637687, 0.473777, -0.607364,
		-0.706330, 0.674234, -0.215654,
		0.307333, 0.566519, 0.764593,
		35.662506, 30.570829, 40.380306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503429, 30.895144, 39.565067>,  <35.447372, 30.174265, 39.845093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503429, 30.895144, 39.565067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741985, 30.857046, 39.883877>,  <35.885117, 30.834187, 40.075165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741985, 30.857046, 39.883877>,  <35.503429, 30.895144, 39.565067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741985, 30.857046, 39.883877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746994, 0.429295, -0.507647,
		-0.293809, 0.898128, 0.327173,
		0.596385, -0.095246, 0.797027,
		35.920902, 30.828472, 40.122986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839638, 31.520987, 39.674660>,  <35.503429, 30.895144, 39.565067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839638, 31.520987, 39.674660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062599, 31.227291, 39.829681>,  <36.196377, 31.051073, 39.922695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062599, 31.227291, 39.829681>,  <35.839638, 31.520987, 39.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062599, 31.227291, 39.829681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786110, 0.316576, -0.530858,
		0.267088, 0.600558, 0.753654,
		0.557400, -0.734241, 0.387551,
		36.229820, 31.007019, 39.945946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420891, 31.856377, 39.836143>,  <35.839638, 31.520987, 39.674660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420891, 31.856377, 39.836143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497025, 31.468256, 39.776428>,  <36.542706, 31.235384, 39.740601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497025, 31.468256, 39.776428>,  <36.420891, 31.856377, 39.836143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497025, 31.468256, 39.776428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871036, 0.237062, -0.430231,
		0.452845, -0.048147, 0.890289,
		0.190339, -0.970301, -0.149289,
		36.554127, 31.177166, 39.731640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916237, 31.677599, 39.249630>,  <36.420891, 31.856377, 39.836143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916237, 31.677599, 39.249630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016876, 31.359058, 39.469635>,  <37.077259, 31.167934, 39.601639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016876, 31.359058, 39.469635>,  <36.916237, 31.677599, 39.249630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016876, 31.359058, 39.469635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938002, 0.060639, -0.341284,
		0.238430, 0.601784, 0.762238,
		0.251600, -0.796353, 0.550017,
		37.092358, 31.120152, 39.634640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621037, 31.713009, 39.707043>,  <36.916237, 31.677599, 39.249630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621037, 31.713009, 39.707043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584091, 31.325073, 39.616817>,  <37.561924, 31.092312, 39.562683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584091, 31.325073, 39.616817>,  <37.621037, 31.713009, 39.707043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584091, 31.325073, 39.616817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868393, 0.032378, -0.494818,
		0.487198, -0.241577, 0.839213,
		-0.092365, -0.969841, -0.225558,
		37.556381, 31.034121, 39.549149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278324, 31.427914, 39.747791>,  <37.621037, 31.713009, 39.707043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278324, 31.427914, 39.747791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076321, 31.188366, 39.499172>,  <37.955116, 31.044638, 39.350002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076321, 31.188366, 39.499172>,  <38.278324, 31.427914, 39.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076321, 31.188366, 39.499172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829352, -0.137253, -0.541606,
		0.239041, -0.788999, 0.565986,
		-0.505010, -0.598867, -0.621548,
		37.924816, 31.008705, 39.312706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691395, 30.874094, 39.707546>,  <38.278324, 31.427914, 39.747791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691395, 30.874094, 39.707546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460316, 30.859688, 39.381367>,  <38.321667, 30.851044, 39.185658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460316, 30.859688, 39.381367>,  <38.691395, 30.874094, 39.707546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460316, 30.859688, 39.381367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806283, -0.180809, -0.563220,
		-0.127155, -0.982858, 0.133496,
		-0.577702, -0.036019, -0.815452,
		38.287006, 30.848883, 39.136730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010311, 30.334475, 39.280895>,  <38.691395, 30.874094, 39.707546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010311, 30.334475, 39.280895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703350, 30.463247, 39.059101>,  <38.519173, 30.540510, 38.926025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703350, 30.463247, 39.059101>,  <39.010311, 30.334475, 39.280895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703350, 30.463247, 39.059101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560030, -0.084523, -0.824149,
		-0.312187, -0.942982, -0.115428,
		-0.767402, 0.321932, -0.554486,
		38.473129, 30.559826, 38.892754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906948, 29.842718, 38.775230>,  <39.010311, 30.334475, 39.280895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906948, 29.842718, 38.775230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751717, 30.193834, 38.662888>,  <38.658577, 30.404503, 38.595482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751717, 30.193834, 38.662888>,  <38.906948, 29.842718, 38.775230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751717, 30.193834, 38.662888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803071, 0.172558, -0.570351,
		-0.452184, -0.446888, -0.771894,
		-0.388079, 0.877790, -0.280855,
		38.635292, 30.457170, 38.578632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098885, 29.864246, 38.040043>,  <38.906948, 29.842718, 38.775230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098885, 29.864246, 38.040043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988026, 30.236120, 38.137100>,  <38.921513, 30.459244, 38.195335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988026, 30.236120, 38.137100>,  <39.098885, 29.864246, 38.040043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988026, 30.236120, 38.137100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647275, 0.367286, -0.667935,
		-0.710089, -0.028056, -0.703553,
		-0.277145, 0.929685, 0.242645,
		38.904881, 30.515026, 38.209892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053604, 30.153961, 37.419926>,  <39.098885, 29.864246, 38.040043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053604, 30.153961, 37.419926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135406, 30.410288, 37.715908>,  <39.184490, 30.564083, 37.893497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135406, 30.410288, 37.715908>,  <39.053604, 30.153961, 37.419926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135406, 30.410288, 37.715908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699934, 0.432722, -0.568193,
		-0.684301, 0.634119, -0.360034,
		0.204508, 0.640815, 0.739954,
		39.196758, 30.602533, 37.937893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940590, 30.784386, 37.085663>,  <39.053604, 30.153961, 37.419926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940590, 30.784386, 37.085663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156391, 30.887934, 37.406143>,  <39.285870, 30.950064, 37.598431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156391, 30.887934, 37.406143>,  <38.940590, 30.784386, 37.085663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156391, 30.887934, 37.406143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568121, 0.590388, -0.573307,
		-0.621434, 0.764478, 0.171444,
		0.539499, 0.258871, 0.801203,
		39.318241, 30.965595, 37.646503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095715, 31.458138, 36.887413>,  <38.940590, 30.784386, 37.085663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095715, 31.458138, 36.887413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347256, 31.388910, 37.190620>,  <39.498180, 31.347374, 37.372543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347256, 31.388910, 37.190620>,  <39.095715, 31.458138, 36.887413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347256, 31.388910, 37.190620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754377, 0.371922, -0.540916,
		-0.188310, 0.911988, 0.364441,
		0.628852, -0.173066, 0.758019,
		39.535912, 31.336990, 37.418026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574944, 31.990862, 36.882122>,  <39.095715, 31.458138, 36.887413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574944, 31.990862, 36.882122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759300, 31.699524, 37.084938>,  <39.869915, 31.524721, 37.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759300, 31.699524, 37.084938>,  <39.574944, 31.990862, 36.882122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759300, 31.699524, 37.084938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868105, 0.251342, -0.428044,
		0.184322, 0.637449, 0.748120,
		0.460890, -0.728345, 0.507044,
		39.897568, 31.481020, 37.237053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063072, 32.267952, 37.230618>,  <39.574944, 31.990862, 36.882122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063072, 32.267952, 37.230618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161156, 31.883614, 37.179001>,  <40.220005, 31.653011, 37.148033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161156, 31.883614, 37.179001>,  <40.063072, 32.267952, 37.230618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161156, 31.883614, 37.179001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815691, 0.276416, -0.508175,
		0.523944, 0.019355, 0.851532,
		0.245213, -0.960843, -0.129039,
		40.234718, 31.595360, 37.140289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807972, 32.322029, 37.295750>,  <40.063072, 32.267952, 37.230618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807972, 32.322029, 37.295750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721302, 31.970779, 37.125126>,  <40.669300, 31.760029, 37.022751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721302, 31.970779, 37.125126>,  <40.807972, 32.322029, 37.295750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721302, 31.970779, 37.125126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721057, 0.150602, -0.676310,
		0.658124, -0.454112, 0.600546,
		-0.216677, -0.878124, -0.426555,
		40.656300, 31.707342, 36.997158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410858, 31.978437, 37.123844>,  <40.807972, 32.322029, 37.295750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410858, 31.978437, 37.123844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133549, 31.837290, 36.872494>,  <40.967163, 31.752602, 36.721684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133549, 31.837290, 36.872494>,  <41.410858, 31.978437, 37.123844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133549, 31.837290, 36.872494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646161, 0.081764, -0.758809,
		0.319138, -0.932094, 0.171325,
		-0.693273, -0.352868, -0.628376,
		40.925568, 31.731430, 36.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705509, 31.462835, 36.696991>,  <41.410858, 31.978437, 37.123844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705509, 31.462835, 36.696991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413967, 31.639561, 36.487774>,  <41.239044, 31.745596, 36.362244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413967, 31.639561, 36.487774>,  <41.705509, 31.462835, 36.696991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413967, 31.639561, 36.487774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630752, 0.136139, -0.763949,
		-0.266315, -0.886718, -0.377899,
		-0.728854, 0.441812, -0.523044,
		41.195312, 31.772104, 36.330860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916622, 31.181076, 36.138424>,  <41.705509, 31.462835, 36.696991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916622, 31.181076, 36.138424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688614, 31.507872, 36.103546>,  <41.551807, 31.703949, 36.082619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688614, 31.507872, 36.103546>,  <41.916622, 31.181076, 36.138424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688614, 31.507872, 36.103546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616083, 0.354793, -0.703252,
		-0.543611, -0.454591, -0.705573,
		-0.570024, 0.816988, -0.087196,
		41.517605, 31.752968, 36.077389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813828, 31.260796, 35.328632>,  <41.916622, 31.181076, 36.138424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813828, 31.260796, 35.328632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793781, 31.597710, 35.543312>,  <41.781754, 31.799858, 35.672119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793781, 31.597710, 35.543312>,  <41.813828, 31.260796, 35.328632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793781, 31.597710, 35.543312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673050, 0.425507, -0.604936,
		-0.737897, 0.330905, -0.588226,
		-0.050118, 0.842286, 0.536696,
		41.778748, 31.850395, 35.704323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635246, 31.912043, 34.772160>,  <41.813828, 31.260796, 35.328632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635246, 31.912043, 34.772160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807251, 32.014698, 35.118389>,  <41.910454, 32.076290, 35.326126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807251, 32.014698, 35.118389>,  <41.635246, 31.912043, 34.772160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807251, 32.014698, 35.118389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725868, 0.471822, -0.500500,
		-0.536846, 0.843517, 0.016603,
		0.430014, 0.256639, 0.865578,
		41.936256, 32.091690, 35.378063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844776, 32.564323, 34.555683>,  <41.635246, 31.912043, 34.772160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844776, 32.564323, 34.555683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053829, 32.411743, 34.860668>,  <42.179260, 32.320194, 35.043659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053829, 32.411743, 34.860668>,  <41.844776, 32.564323, 34.555683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053829, 32.411743, 34.860668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852169, 0.260828, -0.453626,
		-0.025836, 0.886828, 0.461377,
		0.522628, -0.381451, 0.762466,
		42.210617, 32.297306, 35.089409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414001, 33.028709, 34.522671>,  <41.844776, 32.564323, 34.555683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414001, 33.028709, 34.522671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575092, 32.717556, 34.715633>,  <42.671745, 32.530865, 34.831409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575092, 32.717556, 34.715633>,  <42.414001, 33.028709, 34.522671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575092, 32.717556, 34.715633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895961, 0.227200, -0.381620,
		0.187252, 0.585904, 0.788450,
		0.402728, -0.777879, 0.482404,
		42.695911, 32.484192, 34.860355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634834, 33.698898, 34.731812>,  <42.414001, 33.028709, 34.522671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634834, 33.698898, 34.731812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727734, 33.538754, 35.086388>,  <42.783474, 33.442665, 35.299133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727734, 33.538754, 35.086388>,  <42.634834, 33.698898, 34.731812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727734, 33.538754, 35.086388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968418, 0.010198, -0.249121,
		0.090699, 0.916301, 0.390086,
		0.232248, -0.400361, 0.886438,
		42.797409, 33.418644, 35.352318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957150, 34.220066, 35.263203>,  <42.634834, 33.698898, 34.731812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957150, 34.220066, 35.263203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093685, 33.844555, 35.281918>,  <43.175606, 33.619247, 35.293144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093685, 33.844555, 35.281918>,  <42.957150, 34.220066, 35.263203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093685, 33.844555, 35.281918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886760, 0.305119, -0.347217,
		0.311684, 0.160004, 0.936617,
		0.341336, -0.938776, 0.046785,
		43.196087, 33.562923, 35.295952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463249, 34.088398, 35.752522>,  <42.957150, 34.220066, 35.263203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463249, 34.088398, 35.752522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498260, 33.876137, 35.415298>,  <43.519268, 33.748779, 35.212963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498260, 33.876137, 35.415298>,  <43.463249, 34.088398, 35.752522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498260, 33.876137, 35.415298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822507, 0.515938, -0.239353,
		0.561979, -0.672472, 0.481623,
		0.087530, -0.530650, -0.843060,
		43.524521, 33.716942, 35.162380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067661, 33.687340, 35.608383>,  <43.463249, 34.088398, 35.752522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067661, 33.687340, 35.608383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934723, 33.822220, 35.256058>,  <43.854958, 33.903149, 35.044662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934723, 33.822220, 35.256058>,  <44.067661, 33.687340, 35.608383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934723, 33.822220, 35.256058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901560, 0.387874, -0.191686,
		0.277008, -0.857815, -0.432919,
		-0.332350, 0.337204, -0.880816,
		43.835018, 33.923382, 34.991814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758617, 33.786957, 35.300888>,  <44.067661, 33.687340, 35.608383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758617, 33.786957, 35.300888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509022, 33.979038, 35.054298>,  <44.359264, 34.094288, 34.906345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509022, 33.979038, 35.054298>,  <44.758617, 33.786957, 35.300888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509022, 33.979038, 35.054298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776819, 0.295602, -0.556032,
		-0.084776, -0.825849, -0.557482,
		-0.623991, 0.480201, -0.616475,
		44.321823, 34.123100, 34.869354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916981, 33.517212, 34.645187>,  <44.758617, 33.786957, 35.300888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916981, 33.517212, 34.645187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751534, 33.880871, 34.664623>,  <44.652264, 34.099068, 34.676285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751534, 33.880871, 34.664623>,  <44.916981, 33.517212, 34.645187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751534, 33.880871, 34.664623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871493, 0.410804, -0.267843,
		-0.263471, -0.068439, -0.962237,
		-0.413622, 0.909151, 0.048591,
		44.627445, 34.153618, 34.679199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979244, 33.908733, 34.004459>,  <44.916981, 33.517212, 34.645187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979244, 33.908733, 34.004459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931435, 34.182796, 34.291870>,  <44.902748, 34.347233, 34.464317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931435, 34.182796, 34.291870>,  <44.979244, 33.908733, 34.004459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931435, 34.182796, 34.291870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778647, 0.513694, -0.360316,
		-0.615973, 0.516410, -0.594893,
		-0.119522, 0.685156, 0.718523,
		44.895576, 34.388344, 34.507427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.486988, 34.098713, 33.543819>,  <44.979244, 33.908733, 34.004459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.486988, 34.098713, 33.543819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808666, 34.297329, 33.413151>,  <46.001675, 34.416496, 33.334751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808666, 34.297329, 33.413151>,  <45.486988, 34.098713, 33.543819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808666, 34.297329, 33.413151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394971, -0.035748, 0.917998,
		0.444143, -0.867278, -0.224866,
		0.804198, 0.496538, -0.326672,
		46.049927, 34.446289, 33.315147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131008, 33.810459, 33.609295>,  <45.486988, 34.098713, 33.543819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131008, 33.810459, 33.609295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007660, 34.184750, 33.677792>,  <45.933651, 34.409325, 33.718891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007660, 34.184750, 33.677792>,  <46.131008, 33.810459, 33.609295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007660, 34.184750, 33.677792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951181, -0.305718, -0.042312,
		0.012760, -0.175932, 0.984320,
		-0.308368, 0.935727, 0.171244,
		45.915150, 34.465469, 33.729164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.689404, 34.093658, 34.128361>,  <46.131008, 33.810459, 33.609295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.689404, 34.093658, 34.128361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021698, 34.103218, 34.350822>,  <47.221073, 34.108952, 34.484299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021698, 34.103218, 34.350822>,  <46.689404, 34.093658, 34.128361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021698, 34.103218, 34.350822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545229, -0.236400, -0.804264,
		0.112256, 0.971362, -0.209416,
		0.830737, 0.023896, 0.556152,
		47.270920, 34.110386, 34.517670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081688, 34.627384, 33.867115>,  <46.689404, 34.093658, 34.128361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081688, 34.627384, 33.867115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322098, 34.342770, 34.012707>,  <47.466343, 34.172001, 34.100063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322098, 34.342770, 34.012707>,  <47.081688, 34.627384, 33.867115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322098, 34.342770, 34.012707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547106, 0.034291, -0.836361,
		0.582624, 0.701807, 0.409898,
		0.601020, -0.711541, 0.363984,
		47.502403, 34.129307, 34.121902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.847889, 34.756828, 33.718575>,  <47.081688, 34.627384, 33.867115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.847889, 34.756828, 33.718575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778408, 34.365017, 33.759266>,  <47.736717, 34.129929, 33.783680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778408, 34.365017, 33.759266>,  <47.847889, 34.756828, 33.718575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778408, 34.365017, 33.759266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651573, -0.191771, -0.733946,
		0.738431, -0.061206, 0.671546,
		-0.173705, -0.979529, 0.101729,
		47.726295, 34.071159, 33.789783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781525, 35.548401, 33.897255>,  <47.847889, 34.756828, 33.718575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781525, 35.548401, 33.897255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421700, 35.699005, 33.985821>,  <47.205803, 35.789368, 34.038960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421700, 35.699005, 33.985821>,  <47.781525, 35.548401, 33.897255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421700, 35.699005, 33.985821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156871, -0.194602, 0.968257,
		0.407649, 0.905741, 0.115993,
		-0.899563, 0.376513, 0.221414,
		47.151829, 35.811958, 34.052246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.855362, 35.404278, 34.622105>,  <47.781525, 35.548401, 33.897255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.855362, 35.404278, 34.622105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766666, 35.033531, 34.743263>,  <47.713448, 34.811085, 34.815960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766666, 35.033531, 34.743263>,  <47.855362, 35.404278, 34.622105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766666, 35.033531, 34.743263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625453, 0.103120, 0.773418,
		-0.748091, 0.360948, 0.556846,
		-0.221742, -0.926867, 0.302899,
		47.700142, 34.755470, 34.834133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.662071, 28.630684, 26.267702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355507, 28.881100, 26.325241>,  <34.171570, 29.031349, 26.359764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355507, 28.881100, 26.325241>,  <34.662071, 28.630684, 26.267702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355507, 28.881100, 26.325241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347087, 0.215171, 0.912816,
		0.540507, 0.749517, -0.382199,
		-0.766409, 0.626039, 0.143846,
		34.125584, 29.068911, 26.368395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954624, 29.278465, 26.435806>,  <34.662071, 28.630684, 26.267702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954624, 29.278465, 26.435806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585091, 29.294476, 26.588081>,  <34.363369, 29.304083, 26.679445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585091, 29.294476, 26.588081>,  <34.954624, 29.278465, 26.435806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585091, 29.294476, 26.588081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376226, 0.278264, 0.883755,
		-0.070557, 0.959670, -0.272130,
		-0.923838, 0.040027, 0.380686,
		34.307938, 29.306484, 26.702288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773376, 29.993950, 26.671448>,  <34.954624, 29.278465, 26.435806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773376, 29.993950, 26.671448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.523018, 29.748615, 26.864143>,  <34.372803, 29.601414, 26.979761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.523018, 29.748615, 26.864143>,  <34.773376, 29.993950, 26.671448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523018, 29.748615, 26.864143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490284, 0.170939, 0.854635,
		-0.606529, 0.771100, 0.193720,
		-0.625895, -0.613339, 0.481737,
		34.335251, 29.564613, 27.008665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642567, 30.291697, 27.286621>,  <34.773376, 29.993950, 26.671448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642567, 30.291697, 27.286621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496563, 29.933006, 27.386740>,  <34.408962, 29.717793, 27.446810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496563, 29.933006, 27.386740>,  <34.642567, 30.291697, 27.286621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496563, 29.933006, 27.386740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211538, 0.181931, 0.960288,
		-0.906653, 0.403462, 0.123286,
		-0.365010, -0.896727, 0.250295,
		34.387058, 29.663988, 27.461828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387474, 30.392662, 27.994860>,  <34.642567, 30.291697, 27.286621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387474, 30.392662, 27.994860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425453, 29.995546, 27.965590>,  <34.448238, 29.757277, 27.948027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425453, 29.995546, 27.965590>,  <34.387474, 30.392662, 27.994860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425453, 29.995546, 27.965590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221242, -0.050627, 0.973904,
		-0.970586, -0.108656, 0.214840,
		0.094944, -0.992789, -0.073177,
		34.453938, 29.697710, 27.943636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830952, 30.090508, 28.456453>,  <34.387474, 30.392662, 27.994860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830952, 30.090508, 28.456453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119823, 29.822222, 28.388800>,  <34.293144, 29.661251, 28.348207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119823, 29.822222, 28.388800>,  <33.830952, 30.090508, 28.456453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119823, 29.822222, 28.388800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060812, -0.182007, 0.981415,
		-0.689031, -0.719040, -0.090654,
		0.722176, -0.670712, -0.169134,
		34.336475, 29.621008, 28.338058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706272, 29.668779, 28.980906>,  <33.830952, 30.090508, 28.456453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706272, 29.668779, 28.980906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.054089, 29.516739, 28.854786>,  <34.262779, 29.425514, 28.779114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.054089, 29.516739, 28.854786>,  <33.706272, 29.668779, 28.980906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054089, 29.516739, 28.854786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206672, -0.299774, 0.931355,
		-0.448529, -0.875019, -0.182111,
		0.869545, -0.380103, -0.315299,
		34.314953, 29.402708, 28.760197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739700, 29.099243, 29.280790>,  <33.706272, 29.668779, 28.980906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739700, 29.099243, 29.280790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.120560, 29.190392, 29.199306>,  <34.349075, 29.245081, 29.150417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.120560, 29.190392, 29.199306>,  <33.739700, 29.099243, 29.280790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120560, 29.190392, 29.199306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260322, -0.255325, 0.931151,
		0.160170, -0.939619, -0.302426,
		0.952144, 0.227871, -0.203708,
		34.406204, 29.258753, 29.138195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246346, 28.555017, 29.505985>,  <33.739700, 29.099243, 29.280790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246346, 28.555017, 29.505985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486145, 28.874838, 29.491468>,  <34.630024, 29.066730, 29.482758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486145, 28.874838, 29.491468>,  <34.246346, 28.555017, 29.505985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486145, 28.874838, 29.491468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174475, -0.086298, 0.980873,
		0.781128, -0.594363, -0.191238,
		0.599497, 0.799553, -0.036292,
		34.665993, 29.114704, 29.480581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867821, 28.382114, 29.958582>,  <34.246346, 28.555017, 29.505985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867821, 28.382114, 29.958582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.882622, 28.780149, 29.921850>,  <34.891502, 29.018970, 29.899811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.882622, 28.780149, 29.921850>,  <34.867821, 28.382114, 29.958582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882622, 28.780149, 29.921850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478989, 0.062986, 0.875558,
		0.877040, -0.076384, -0.474305,
		0.037004, 0.995087, -0.091829,
		34.893723, 29.078676, 29.894302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566845, 28.537830, 30.073080>,  <34.867821, 28.382114, 29.958582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566845, 28.537830, 30.073080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363644, 28.878633, 30.123703>,  <35.241722, 29.083115, 30.154078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363644, 28.878633, 30.123703>,  <35.566845, 28.537830, 30.073080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363644, 28.878633, 30.123703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458904, 0.143372, 0.876842,
		0.728929, 0.503519, -0.463822,
		-0.508005, 0.852005, 0.126559,
		35.211243, 29.134235, 30.161671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064648, 29.032999, 30.064854>,  <35.566845, 28.537830, 30.073080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064648, 29.032999, 30.064854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753033, 29.178225, 30.269320>,  <35.566063, 29.265360, 30.392000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753033, 29.178225, 30.269320>,  <36.064648, 29.032999, 30.064854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753033, 29.178225, 30.269320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594963, 0.170873, 0.785380,
		0.197797, 0.915963, -0.349124,
		-0.779035, 0.363062, 0.511166,
		35.519321, 29.287144, 30.422668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285126, 29.566999, 30.461426>,  <36.064648, 29.032999, 30.064854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285126, 29.566999, 30.461426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941830, 29.484568, 30.649448>,  <35.735851, 29.435108, 30.762262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941830, 29.484568, 30.649448>,  <36.285126, 29.566999, 30.461426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941830, 29.484568, 30.649448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446461, 0.152005, 0.881798,
		-0.253171, 0.966657, -0.038450,
		-0.858241, -0.206079, 0.470058,
		35.684357, 29.422745, 30.790466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361668, 29.831539, 31.154510>,  <36.285126, 29.566999, 30.461426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361668, 29.831539, 31.154510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009846, 29.652018, 31.217697>,  <35.798752, 29.544304, 31.255610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009846, 29.652018, 31.217697>,  <36.361668, 29.831539, 31.154510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009846, 29.652018, 31.217697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242763, -0.137777, 0.960252,
		-0.409201, 0.882945, 0.230136,
		-0.879557, -0.448805, 0.157968,
		35.745979, 29.517376, 31.265087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117256, 30.152472, 31.854719>,  <36.361668, 29.831539, 31.154510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117256, 30.152472, 31.854719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939877, 29.802109, 31.778677>,  <35.833450, 29.591890, 31.733051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939877, 29.802109, 31.778677>,  <36.117256, 30.152472, 31.854719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939877, 29.802109, 31.778677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072328, -0.246378, 0.966471,
		-0.893378, 0.414827, 0.172607,
		-0.443445, -0.875909, -0.190106,
		35.806843, 29.539335, 31.721645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632481, 30.033766, 32.421757>,  <36.117256, 30.152472, 31.854719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632481, 30.033766, 32.421757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689808, 29.672396, 32.260124>,  <35.724205, 29.455574, 32.163143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689808, 29.672396, 32.260124>,  <35.632481, 30.033766, 32.421757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689808, 29.672396, 32.260124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238856, -0.364653, 0.899987,
		-0.960421, -0.225500, 0.163527,
		0.143317, -0.903426, -0.404082,
		35.732803, 29.401367, 32.138901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296703, 29.570587, 32.871273>,  <35.632481, 30.033766, 32.421757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296703, 29.570587, 32.871273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564163, 29.358421, 32.662823>,  <35.724640, 29.231121, 32.537754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564163, 29.358421, 32.662823>,  <35.296703, 29.570587, 32.871273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564163, 29.358421, 32.662823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359831, -0.382498, 0.851009,
		-0.650719, -0.756540, -0.064895,
		0.668645, -0.530416, -0.521126,
		35.764755, 29.199297, 32.506485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235775, 28.777039, 33.121571>,  <35.296703, 29.570587, 32.871273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235775, 28.777039, 33.121571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574169, 28.803587, 32.909950>,  <35.777206, 28.819515, 32.782978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574169, 28.803587, 32.909950>,  <35.235775, 28.777039, 33.121571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574169, 28.803587, 32.909950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517578, -0.340630, 0.784910,
		-0.128116, -0.937852, -0.322521,
		0.845990, 0.066370, -0.529052,
		35.827965, 28.823498, 32.751236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626492, 28.143759, 33.161751>,  <35.235775, 28.777039, 33.121571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626492, 28.143759, 33.161751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879860, 28.451923, 33.132782>,  <36.031879, 28.636822, 33.115398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879860, 28.451923, 33.132782>,  <35.626492, 28.143759, 33.161751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879860, 28.451923, 33.132782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450874, -0.291390, 0.843685,
		0.628880, -0.567062, -0.531931,
		0.633421, 0.770411, -0.072424,
		36.069885, 28.683046, 33.111053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417019, 27.941767, 33.179050>,  <35.626492, 28.143759, 33.161751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417019, 27.941767, 33.179050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361404, 28.303108, 33.341347>,  <36.328033, 28.519913, 33.438725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361404, 28.303108, 33.341347>,  <36.417019, 27.941767, 33.179050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361404, 28.303108, 33.341347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263349, -0.361236, 0.894514,
		0.954628, 0.231224, -0.187670,
		-0.139040, 0.903351, 0.405739,
		36.319691, 28.574114, 33.463070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935299, 28.261326, 33.575855>,  <36.417019, 27.941767, 33.179050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935299, 28.261326, 33.575855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590771, 28.383051, 33.738586>,  <36.384052, 28.456087, 33.836227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590771, 28.383051, 33.738586>,  <36.935299, 28.261326, 33.575855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590771, 28.383051, 33.738586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285443, -0.372572, 0.883013,
		0.420288, 0.876688, 0.234041,
		-0.861325, 0.304315, 0.406832,
		36.332375, 28.474346, 33.860638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457611, 28.386570, 34.094307>,  <36.935299, 28.261326, 33.575855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457611, 28.386570, 34.094307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816639, 28.255863, 34.212696>,  <38.032055, 28.177439, 34.283730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816639, 28.255863, 34.212696>,  <37.457611, 28.386570, 34.094307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816639, 28.255863, 34.212696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291156, -0.064767, -0.954481,
		0.331063, 0.942883, 0.037008,
		0.897567, -0.326768, 0.295968,
		38.085907, 28.157833, 34.301487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923023, 28.794626, 33.713951>,  <37.457611, 28.386570, 34.094307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923023, 28.794626, 33.713951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147163, 28.486330, 33.835251>,  <38.281647, 28.301352, 33.908031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147163, 28.486330, 33.835251>,  <37.923023, 28.794626, 33.713951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147163, 28.486330, 33.835251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369209, -0.095294, -0.924448,
		0.741409, 0.629980, 0.231166,
		0.560355, -0.770743, 0.303246,
		38.315269, 28.255108, 33.926224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543343, 28.958502, 33.491238>,  <37.923023, 28.794626, 33.713951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543343, 28.958502, 33.491238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568504, 28.562733, 33.543526>,  <38.583599, 28.325272, 33.574898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568504, 28.562733, 33.543526>,  <38.543343, 28.958502, 33.491238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568504, 28.562733, 33.543526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484302, -0.084264, -0.870834,
		0.872637, 0.118085, 0.473878,
		0.062902, -0.989422, 0.130721,
		38.587376, 28.265905, 33.582741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239037, 28.850037, 33.151657>,  <38.543343, 28.958502, 33.491238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239037, 28.850037, 33.151657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029064, 28.510267, 33.173286>,  <38.903080, 28.306406, 33.186264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029064, 28.510267, 33.173286>,  <39.239037, 28.850037, 33.151657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029064, 28.510267, 33.173286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095535, -0.121933, -0.987930,
		0.845766, -0.513430, 0.145156,
		-0.524932, -0.849424, 0.054077,
		38.871586, 28.255440, 33.189510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562653, 28.419178, 32.718945>,  <39.239037, 28.850037, 33.151657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562653, 28.419178, 32.718945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199379, 28.253250, 32.741276>,  <38.981415, 28.153692, 32.754677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199379, 28.253250, 32.741276>,  <39.562653, 28.419178, 32.718945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199379, 28.253250, 32.741276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053153, -0.018009, -0.998424,
		0.415173, -0.909725, -0.005693,
		-0.908188, -0.414822, 0.055832,
		38.926922, 28.128803, 32.758026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616436, 27.968712, 32.181873>,  <39.562653, 28.419178, 32.718945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616436, 27.968712, 32.181873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234104, 28.044184, 32.272018>,  <39.004704, 28.089466, 32.326103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234104, 28.044184, 32.272018>,  <39.616436, 27.968712, 32.181873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234104, 28.044184, 32.272018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202509, 0.132934, -0.970216,
		-0.213017, -0.973000, -0.088854,
		-0.955832, 0.188678, 0.225359,
		38.947353, 28.100786, 32.339626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135681, 27.460569, 31.856400>,  <39.616436, 27.968712, 32.181873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135681, 27.460569, 31.856400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920147, 27.787268, 31.938944>,  <38.790825, 27.983286, 31.988470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920147, 27.787268, 31.938944>,  <39.135681, 27.460569, 31.856400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920147, 27.787268, 31.938944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289535, 0.050485, -0.955835,
		-0.791092, -0.574785, 0.209273,
		-0.538835, 0.816745, 0.206359,
		38.758495, 28.032291, 32.000851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445225, 27.355019, 31.582991>,  <39.135681, 27.460569, 31.856400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445225, 27.355019, 31.582991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477810, 27.751448, 31.625206>,  <38.497360, 27.989305, 31.650536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477810, 27.751448, 31.625206>,  <38.445225, 27.355019, 31.582991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477810, 27.751448, 31.625206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513537, 0.132491, -0.847777,
		-0.854192, 0.014868, 0.519746,
		0.081466, 0.991073, 0.105538,
		38.502251, 28.048769, 31.656868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840446, 27.503696, 31.309038>,  <38.445225, 27.355019, 31.582991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840446, 27.503696, 31.309038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035435, 27.852749, 31.321003>,  <38.152428, 28.062180, 31.328182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035435, 27.852749, 31.321003>,  <37.840446, 27.503696, 31.309038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035435, 27.852749, 31.321003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268427, 0.182371, -0.945879,
		-0.830857, 0.453055, 0.323137,
		0.487466, 0.872629, 0.029912,
		38.181675, 28.114538, 31.329977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398331, 28.007113, 31.018089>,  <37.840446, 27.503696, 31.309038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398331, 28.007113, 31.018089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731983, 28.226044, 30.990774>,  <37.932175, 28.357403, 30.974386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731983, 28.226044, 30.990774>,  <37.398331, 28.007113, 31.018089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731983, 28.226044, 30.990774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222487, 0.220587, -0.949653,
		-0.504710, 0.807324, 0.305771,
		0.834127, 0.547330, -0.068287,
		37.982220, 28.390244, 30.970287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265884, 28.709772, 30.748003>,  <37.398331, 28.007113, 31.018089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265884, 28.709772, 30.748003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636265, 28.585526, 30.662085>,  <37.858494, 28.510979, 30.610533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636265, 28.585526, 30.662085>,  <37.265884, 28.709772, 30.748003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636265, 28.585526, 30.662085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195459, 0.092497, -0.976340,
		0.323134, 0.946025, 0.024935,
		0.925948, -0.310615, -0.214798,
		37.914051, 28.492340, 30.597645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548382, 29.135237, 30.313576>,  <37.265884, 28.709772, 30.748003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548382, 29.135237, 30.313576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.800194, 28.828688, 30.262405>,  <37.951283, 28.644758, 30.231703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.800194, 28.828688, 30.262405>,  <37.548382, 29.135237, 30.313576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800194, 28.828688, 30.262405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018238, 0.150025, -0.988514,
		0.776760, 0.624635, 0.080469,
		0.629533, -0.766370, -0.127925,
		37.989052, 28.598776, 30.224028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983727, 29.340532, 29.731020>,  <37.548382, 29.135237, 30.313576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983727, 29.340532, 29.731020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.030506, 28.943649, 29.748207>,  <38.058575, 28.705519, 29.758520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.030506, 28.943649, 29.748207>,  <37.983727, 29.340532, 29.731020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030506, 28.943649, 29.748207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134773, -0.058721, -0.989135,
		0.983951, 0.109889, -0.140590,
		0.116951, -0.992208, 0.042968,
		38.065590, 28.645987, 29.761097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502201, 29.260754, 29.224436>,  <37.983727, 29.340532, 29.731020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502201, 29.260754, 29.224436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318394, 28.914532, 29.304098>,  <38.208111, 28.706799, 29.351896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318394, 28.914532, 29.304098>,  <38.502201, 29.260754, 29.224436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318394, 28.914532, 29.304098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180146, -0.128741, -0.975178,
		0.869709, -0.483986, -0.096767,
		-0.459515, -0.865554, 0.199155,
		38.180538, 28.654865, 29.363844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672443, 28.815239, 28.547049>,  <38.502201, 29.260754, 29.224436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672443, 28.815239, 28.547049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367298, 28.624659, 28.721880>,  <38.184212, 28.510309, 28.826778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367298, 28.624659, 28.721880>,  <38.672443, 28.815239, 28.547049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367298, 28.624659, 28.721880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360615, -0.247561, -0.899261,
		0.536660, -0.843627, 0.017038,
		-0.762858, -0.476453, 0.437081,
		38.138439, 28.481722, 28.853004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608829, 28.278788, 28.129063>,  <38.672443, 28.815239, 28.547049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608829, 28.278788, 28.129063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265594, 28.304756, 28.332819>,  <38.059654, 28.320337, 28.455072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265594, 28.304756, 28.332819>,  <38.608829, 28.278788, 28.129063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265594, 28.304756, 28.332819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507437, -0.259299, -0.821749,
		0.078736, -0.963613, 0.255443,
		-0.858084, 0.064920, 0.509389,
		38.008171, 28.324232, 28.485636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309639, 27.707897, 27.878857>,  <38.608829, 28.278788, 28.129063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309639, 27.707897, 27.878857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021832, 27.935459, 28.038177>,  <37.849148, 28.071997, 28.133770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021832, 27.935459, 28.038177>,  <38.309639, 27.707897, 27.878857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021832, 27.935459, 28.038177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619309, -0.266103, -0.738678,
		-0.314256, -0.778156, 0.543798,
		-0.719513, 0.568913, 0.398295,
		37.805977, 28.106131, 28.157667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720303, 27.353941, 27.741528>,  <38.309639, 27.707897, 27.878857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720303, 27.353941, 27.741528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573517, 27.722162, 27.795065>,  <37.485447, 27.943096, 27.827187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573517, 27.722162, 27.795065>,  <37.720303, 27.353941, 27.741528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573517, 27.722162, 27.795065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576159, -0.111961, -0.809633,
		-0.730327, -0.374222, 0.571472,
		-0.366965, 0.920555, 0.133843,
		37.463428, 27.998329, 27.835218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062214, 27.335987, 27.801855>,  <37.720303, 27.353941, 27.741528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062214, 27.335987, 27.801855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158287, 27.684868, 27.631411>,  <37.215931, 27.894197, 27.529144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158287, 27.684868, 27.631411>,  <37.062214, 27.335987, 27.801855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158287, 27.684868, 27.631411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519112, -0.255518, -0.815618,
		-0.820265, 0.417099, 0.391400,
		0.240184, 0.872204, -0.426113,
		37.230343, 27.946529, 27.503576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.428463, 27.569452, 27.483744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702362, 27.796503, 27.300909>,  <36.866699, 27.932734, 27.191208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702362, 27.796503, 27.300909>,  <36.428463, 27.569452, 27.483744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702362, 27.796503, 27.300909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571198, 0.028484, -0.820318,
		-0.452613, 0.822795, 0.343730,
		0.684744, 0.567625, -0.457086,
		36.907784, 27.966791, 27.163784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080078, 28.038883, 27.136644>,  <36.428463, 27.569452, 27.483744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080078, 28.038883, 27.136644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.429127, 28.053169, 26.941811>,  <36.638557, 28.061741, 26.824911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.429127, 28.053169, 26.941811>,  <36.080078, 28.038883, 27.136644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429127, 28.053169, 26.941811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486097, 0.160065, -0.859121,
		0.047280, 0.986460, 0.157038,
		0.872625, 0.035717, -0.487084,
		36.690914, 28.063885, 26.795685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040409, 28.562813, 26.727205>,  <36.080078, 28.038883, 27.136644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040409, 28.562813, 26.727205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331165, 28.354336, 26.548323>,  <36.505619, 28.229250, 26.440992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331165, 28.354336, 26.548323>,  <36.040409, 28.562813, 26.727205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331165, 28.354336, 26.548323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268679, 0.383461, -0.883611,
		0.632017, 0.762441, 0.138700,
		0.726887, -0.521192, -0.447206,
		36.549232, 28.197979, 26.414162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111729, 28.957644, 26.206617>,  <36.040409, 28.562813, 26.727205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111729, 28.957644, 26.206617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306862, 28.618883, 26.121973>,  <36.423943, 28.415627, 26.071186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306862, 28.618883, 26.121973>,  <36.111729, 28.957644, 26.206617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306862, 28.618883, 26.121973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128182, 0.170285, -0.977022,
		0.863474, 0.503749, -0.025487,
		0.487834, -0.846900, -0.211609,
		36.453213, 28.364813, 26.058491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573906, 29.186090, 25.753128>,  <36.111729, 28.957644, 26.206617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573906, 29.186090, 25.753128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536579, 28.794981, 25.678026>,  <36.514183, 28.560316, 25.632965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536579, 28.794981, 25.678026>,  <36.573906, 29.186090, 25.753128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536579, 28.794981, 25.678026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446568, 0.209647, -0.869842,
		0.889871, 0.002676, -0.456205,
		-0.093315, -0.977774, -0.187754,
		36.508583, 28.501650, 25.621700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685822, 29.161610, 24.994085>,  <36.573906, 29.186090, 25.753128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685822, 29.161610, 24.994085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527477, 28.811806, 25.106174>,  <36.432472, 28.601923, 25.173428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527477, 28.811806, 25.106174>,  <36.685822, 29.161610, 24.994085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527477, 28.811806, 25.106174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450174, -0.081169, -0.889244,
		0.800400, -0.478163, -0.361551,
		-0.395857, -0.874512, 0.280225,
		36.408722, 28.549452, 25.190243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811382, 28.743469, 24.435856>,  <36.685822, 29.161610, 24.994085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811382, 28.743469, 24.435856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522930, 28.559179, 24.642817>,  <36.349857, 28.448605, 24.766993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522930, 28.559179, 24.642817>,  <36.811382, 28.743469, 24.435856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522930, 28.559179, 24.642817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398125, -0.335608, -0.853735,
		0.566981, -0.821645, 0.058591,
		-0.721130, -0.460725, 0.517401,
		36.306591, 28.420961, 24.798037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812180, 28.019379, 24.240025>,  <36.811382, 28.743469, 24.435856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812180, 28.019379, 24.240025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451706, 28.113485, 24.385639>,  <36.235424, 28.169950, 24.473009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451706, 28.113485, 24.385639>,  <36.812180, 28.019379, 24.240025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451706, 28.113485, 24.385639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433157, -0.458130, -0.776204,
		-0.015839, -0.857185, 0.514765,
		-0.901180, 0.235269, 0.364039,
		36.181351, 28.184067, 24.494850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439938, 27.394739, 24.258110>,  <36.812180, 28.019379, 24.240025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439938, 27.394739, 24.258110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168186, 27.688095, 24.248425>,  <36.005135, 27.864109, 24.242613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168186, 27.688095, 24.248425>,  <36.439938, 27.394739, 24.258110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168186, 27.688095, 24.248425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382415, -0.382030, -0.841316,
		-0.626263, -0.562311, 0.540001,
		-0.679377, 0.733390, -0.024215,
		35.964375, 27.908112, 24.241159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745514, 27.093304, 24.070330>,  <36.439938, 27.394739, 24.258110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745514, 27.093304, 24.070330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719761, 27.476274, 23.957767>,  <35.704311, 27.706057, 23.890230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719761, 27.476274, 23.957767>,  <35.745514, 27.093304, 24.070330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719761, 27.476274, 23.957767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517451, -0.273146, -0.810948,
		-0.853288, 0.093403, 0.513007,
		-0.064381, 0.957428, -0.281404,
		35.700447, 27.763502, 23.873346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119534, 27.072105, 23.616886>,  <35.745514, 27.093304, 24.070330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119534, 27.072105, 23.616886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254696, 27.445576, 23.569443>,  <35.335793, 27.669659, 23.540977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254696, 27.445576, 23.569443>,  <35.119534, 27.072105, 23.616886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254696, 27.445576, 23.569443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464276, 0.055736, -0.883935,
		-0.818699, 0.353753, 0.452317,
		0.337905, 0.933677, -0.118608,
		35.356068, 27.725679, 23.533861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581436, 27.582071, 23.384422>,  <35.119534, 27.072105, 23.616886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581436, 27.582071, 23.384422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929688, 27.735390, 23.261072>,  <35.138638, 27.827381, 23.187061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929688, 27.735390, 23.261072>,  <34.581436, 27.582071, 23.384422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929688, 27.735390, 23.261072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424428, 0.268286, -0.864803,
		-0.248742, 0.883803, 0.396258,
		0.870625, 0.383296, -0.308377,
		35.190876, 27.850378, 23.168560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422928, 28.227222, 23.124372>,  <34.581436, 27.582071, 23.384422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422928, 28.227222, 23.124372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776672, 28.165964, 22.947989>,  <34.988918, 28.129210, 22.842157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776672, 28.165964, 22.947989>,  <34.422928, 28.227222, 23.124372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776672, 28.165964, 22.947989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350394, 0.406360, -0.843858,
		0.308420, 0.900788, 0.305710,
		0.884365, -0.153144, -0.440960,
		35.041981, 28.120022, 22.815701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597992, 28.806330, 22.588612>,  <34.422928, 28.227222, 23.124372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597992, 28.806330, 22.588612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.875900, 28.539967, 22.479908>,  <35.042645, 28.380148, 22.414686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.875900, 28.539967, 22.479908>,  <34.597992, 28.806330, 22.588612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875900, 28.539967, 22.479908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082320, 0.448992, -0.889736,
		0.714502, 0.595794, 0.366765,
		0.694774, -0.665910, -0.271760,
		35.084332, 28.340193, 22.398380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191826, 29.221851, 22.307501>,  <34.597992, 28.806330, 22.588612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191826, 29.221851, 22.307501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198151, 28.859282, 22.138672>,  <35.201946, 28.641741, 22.037374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198151, 28.859282, 22.138672>,  <35.191826, 29.221851, 22.307501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198151, 28.859282, 22.138672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041450, 0.421169, -0.906034,
		0.999015, 0.031825, -0.030910,
		0.015817, -0.906424, -0.422074,
		35.202896, 28.587355, 22.012051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489796, 29.406853, 21.676313>,  <35.191826, 29.221851, 22.307501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489796, 29.406853, 21.676313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.365715, 29.030073, 21.624926>,  <35.291267, 28.804005, 21.594093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.365715, 29.030073, 21.624926>,  <35.489796, 29.406853, 21.676313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365715, 29.030073, 21.624926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035097, 0.123694, -0.991700,
		0.950023, -0.312135, -0.005310,
		-0.310201, -0.941951, -0.128467,
		35.272655, 28.747488, 21.586386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036884, 29.031616, 21.277454>,  <35.489796, 29.406853, 21.676313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036884, 29.031616, 21.277454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667240, 28.883389, 21.240149>,  <35.445454, 28.794453, 21.217766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667240, 28.883389, 21.240149>,  <36.036884, 29.031616, 21.277454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667240, 28.883389, 21.240149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041818, 0.144533, -0.988616,
		0.379832, -0.917490, -0.118067,
		-0.924110, -0.370571, -0.093265,
		35.390007, 28.772217, 21.212170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115738, 28.718405, 20.680351>,  <36.036884, 29.031616, 21.277454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115738, 28.718405, 20.680351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719410, 28.750366, 20.723986>,  <35.481613, 28.769543, 20.750166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719410, 28.750366, 20.723986>,  <36.115738, 28.718405, 20.680351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719410, 28.750366, 20.723986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085477, 0.255013, -0.963152,
		-0.104777, -0.963631, -0.245841,
		-0.990815, 0.079902, 0.109088,
		35.422165, 28.774336, 20.756712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839397, 28.566776, 20.091751>,  <36.115738, 28.718405, 20.680351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839397, 28.566776, 20.091751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553318, 28.803446, 20.240564>,  <35.381668, 28.945448, 20.329853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553318, 28.803446, 20.240564>,  <35.839397, 28.566776, 20.091751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553318, 28.803446, 20.240564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185851, 0.352135, -0.917312,
		-0.673753, -0.725207, -0.141885,
		-0.715203, 0.591672, 0.372033,
		35.338757, 28.980947, 20.352175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132431, 28.434998, 19.630842>,  <35.839397, 28.566776, 20.091751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132431, 28.434998, 19.630842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065071, 28.784863, 19.812660>,  <35.024654, 28.994781, 19.921751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065071, 28.784863, 19.812660>,  <35.132431, 28.434998, 19.630842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065071, 28.784863, 19.812660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488353, 0.326531, -0.809252,
		-0.856244, -0.358254, 0.372156,
		-0.168398, 0.874661, 0.454545,
		35.014553, 29.047260, 19.949024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446693, 28.584436, 19.596733>,  <35.132431, 28.434998, 19.630842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446693, 28.584436, 19.596733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608177, 28.946207, 19.651909>,  <34.705067, 29.163269, 19.685015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608177, 28.946207, 19.651909>,  <34.446693, 28.584436, 19.596733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608177, 28.946207, 19.651909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390832, 0.306815, -0.867822,
		-0.827205, 0.296436, 0.477344,
		0.403710, 0.904428, 0.137942,
		34.729290, 29.217535, 19.693291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926506, 29.169437, 19.576763>,  <34.446693, 28.584436, 19.596733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926506, 29.169437, 19.576763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.300674, 29.265659, 19.473137>,  <34.525177, 29.323393, 19.410961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.300674, 29.265659, 19.473137>,  <33.926506, 29.169437, 19.576763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300674, 29.265659, 19.473137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304363, 0.175182, -0.936309,
		-0.179850, 0.954696, 0.237086,
		0.935423, 0.240555, -0.259068,
		34.581303, 29.337826, 19.395416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371731, 29.054913, 18.967569>,  <33.926506, 29.169437, 19.576763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371731, 29.054913, 18.967569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645966, 29.119602, 18.683651>,  <33.810509, 29.158415, 18.513300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645966, 29.119602, 18.683651>,  <33.371731, 29.054913, 18.967569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645966, 29.119602, 18.683651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455477, -0.665308, -0.591529,
		-0.567897, 0.728843, -0.382467,
		0.685589, 0.161723, -0.709798,
		33.851643, 29.168119, 18.470711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000908, 29.139938, 18.385857>,  <33.371731, 29.054913, 18.967569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000908, 29.139938, 18.385857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370998, 29.042086, 18.269850>,  <33.593052, 28.983374, 18.200245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370998, 29.042086, 18.269850>,  <33.000908, 29.139938, 18.385857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370998, 29.042086, 18.269850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379284, -0.576489, -0.723743,
		0.009857, 0.779626, -0.626168,
		0.925228, -0.244629, -0.290017,
		33.648567, 28.968697, 18.182844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977150, 29.912233, 18.710587>,  <33.000908, 29.139938, 18.385857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977150, 29.912233, 18.710587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731438, 30.191654, 18.857388>,  <32.584011, 30.359306, 18.945469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731438, 30.191654, 18.857388>,  <32.977150, 29.912233, 18.710587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731438, 30.191654, 18.857388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353071, -0.172626, 0.919533,
		0.705695, 0.694425, -0.140598,
		-0.614276, 0.698551, 0.367003,
		32.547153, 30.401220, 18.967489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384472, 30.368547, 19.149889>,  <32.977150, 29.912233, 18.710587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384472, 30.368547, 19.149889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009201, 30.425381, 19.276150>,  <32.784039, 30.459480, 19.351906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009201, 30.425381, 19.276150>,  <33.384472, 30.368547, 19.149889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009201, 30.425381, 19.276150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320543, 0.012341, 0.947154,
		0.130680, 0.989778, -0.057122,
		-0.938176, 0.142084, 0.315653,
		32.727749, 30.468006, 19.370846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458565, 30.834417, 19.688747>,  <33.384472, 30.368547, 19.149889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458565, 30.834417, 19.688747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102238, 30.667253, 19.760069>,  <32.888439, 30.566956, 19.802862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102238, 30.667253, 19.760069>,  <33.458565, 30.834417, 19.688747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102238, 30.667253, 19.760069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230585, -0.077681, 0.969947,
		-0.391498, 0.905162, 0.165563,
		-0.890820, -0.417908, 0.178305,
		32.834991, 30.541882, 19.813560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122875, 31.218784, 20.251610>,  <33.458565, 30.834417, 19.688747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122875, 31.218784, 20.251610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947895, 30.859644, 20.231613>,  <32.842907, 30.644159, 20.219614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947895, 30.859644, 20.231613>,  <33.122875, 31.218784, 20.251610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947895, 30.859644, 20.231613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142878, -0.124287, 0.981906,
		-0.887819, 0.422392, 0.182653,
		-0.437451, -0.897852, -0.049994,
		32.816658, 30.590288, 20.216616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670010, 31.233665, 20.846035>,  <33.122875, 31.218784, 20.251610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670010, 31.233665, 20.846035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707726, 30.847183, 20.750072>,  <32.730354, 30.615294, 20.692495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707726, 30.847183, 20.750072>,  <32.670010, 31.233665, 20.846035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707726, 30.847183, 20.750072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058540, -0.235183, 0.970187,
		-0.993822, -0.105525, 0.034386,
		0.094292, -0.966206, -0.239907,
		32.736012, 30.557322, 20.678101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146378, 30.862133, 21.255587>,  <32.670010, 31.233665, 20.846035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146378, 30.862133, 21.255587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434311, 30.617859, 21.123583>,  <32.607071, 30.471294, 21.044380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434311, 30.617859, 21.123583>,  <32.146378, 30.862133, 21.255587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434311, 30.617859, 21.123583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242410, -0.224327, 0.943883,
		-0.650446, -0.759433, -0.013441,
		0.719831, -0.610687, -0.330007,
		32.650261, 30.434652, 21.024580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141113, 30.147293, 21.744370>,  <32.146378, 30.862133, 21.255587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141113, 30.147293, 21.744370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.496136, 30.168377, 21.561296>,  <32.709148, 30.181028, 21.451452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.496136, 30.168377, 21.561296>,  <32.141113, 30.147293, 21.744370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496136, 30.168377, 21.561296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458926, -0.188424, 0.868265,
		-0.040469, -0.980672, -0.191428,
		0.887552, 0.052713, -0.457681,
		32.762402, 30.184191, 21.423992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530880, 29.612757, 21.994291>,  <32.141113, 30.147293, 21.744370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530880, 29.612757, 21.994291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.805016, 29.851101, 21.826832>,  <32.969498, 29.994108, 21.726357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.805016, 29.851101, 21.826832>,  <32.530880, 29.612757, 21.994291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805016, 29.851101, 21.826832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550125, -0.046937, 0.833762,
		0.477157, -0.801714, -0.359966,
		0.685335, 0.595862, -0.418647,
		33.010616, 30.029860, 21.701239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207230, 29.306915, 22.151484>,  <32.530880, 29.612757, 21.994291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207230, 29.306915, 22.151484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263451, 29.696957, 22.082874>,  <33.297184, 29.930981, 22.041710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263451, 29.696957, 22.082874>,  <33.207230, 29.306915, 22.151484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263451, 29.696957, 22.082874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486389, 0.082893, 0.869802,
		0.862365, -0.205675, -0.462629,
		0.140548, 0.975103, -0.171522,
		33.305614, 29.989487, 22.031418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880554, 29.442133, 22.202250>,  <33.207230, 29.306915, 22.151484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880554, 29.442133, 22.202250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687870, 29.787828, 22.260284>,  <33.572262, 29.995245, 22.295105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687870, 29.787828, 22.260284>,  <33.880554, 29.442133, 22.202250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687870, 29.787828, 22.260284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414875, 0.079072, 0.906436,
		0.771905, 0.496829, -0.396641,
		-0.481707, 0.864239, 0.145086,
		33.543358, 30.047100, 22.303810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352512, 29.831514, 22.473246>,  <33.880554, 29.442133, 22.202250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352512, 29.831514, 22.473246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021015, 30.025913, 22.584238>,  <33.822117, 30.142553, 22.650833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021015, 30.025913, 22.584238>,  <34.352512, 29.831514, 22.473246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021015, 30.025913, 22.584238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305352, -0.022833, 0.951966,
		0.468989, 0.873661, -0.129478,
		-0.828739, 0.485998, 0.277483,
		33.772392, 30.171713, 22.667482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522171, 30.071440, 23.119329>,  <34.352512, 29.831514, 22.473246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522171, 30.071440, 23.119329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124859, 30.115002, 23.103653>,  <33.886471, 30.141138, 23.094246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124859, 30.115002, 23.103653>,  <34.522171, 30.071440, 23.119329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124859, 30.115002, 23.103653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055956, -0.155411, 0.986264,
		0.101318, 0.981828, 0.160461,
		-0.993279, 0.108905, -0.039193,
		33.826874, 30.147673, 23.091894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354683, 30.579271, 23.702852>,  <34.522171, 30.071440, 23.119329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354683, 30.579271, 23.702852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037357, 30.351622, 23.616364>,  <33.846962, 30.215033, 23.564470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037357, 30.351622, 23.616364>,  <34.354683, 30.579271, 23.702852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037357, 30.351622, 23.616364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057184, -0.283929, 0.957139,
		-0.606123, 0.771675, 0.192699,
		-0.793312, -0.569125, -0.216223,
		33.799362, 30.180883, 23.551497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859844, 30.642387, 24.257303>,  <34.354683, 30.579271, 23.702852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859844, 30.642387, 24.257303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.737751, 30.305811, 24.078949>,  <33.664494, 30.103865, 23.971937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.737751, 30.305811, 24.078949>,  <33.859844, 30.642387, 24.257303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737751, 30.305811, 24.078949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195273, -0.402974, 0.894137,
		-0.932041, 0.359989, -0.041309,
		-0.305233, -0.841439, -0.445885,
		33.646179, 30.053379, 23.945183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277100, 30.434406, 24.717226>,  <33.859844, 30.642387, 24.257303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277100, 30.434406, 24.717226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404327, 30.114836, 24.513052>,  <33.480663, 29.923092, 24.390547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404327, 30.114836, 24.513052>,  <33.277100, 30.434406, 24.717226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404327, 30.114836, 24.513052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005734, -0.540008, 0.841641,
		-0.948050, -0.264772, -0.176340,
		0.318068, -0.798929, -0.510436,
		33.499748, 29.875156, 24.359921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808830, 29.862427, 24.902361>,  <33.277100, 30.434406, 24.717226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808830, 29.862427, 24.902361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137218, 29.680243, 24.764626>,  <33.334251, 29.570932, 24.681984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137218, 29.680243, 24.764626>,  <32.808830, 29.862427, 24.902361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137218, 29.680243, 24.764626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047512, -0.546485, 0.836120,
		-0.569001, -0.702783, -0.427004,
		0.820962, -0.455466, -0.344341,
		33.383507, 29.543604, 24.661324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610268, 29.195911, 24.912416>,  <32.808830, 29.862427, 24.902361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610268, 29.195911, 24.912416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009933, 29.206972, 24.924446>,  <33.249733, 29.213608, 24.931664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009933, 29.206972, 24.924446>,  <32.610268, 29.195911, 24.912416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009933, 29.206972, 24.924446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014193, -0.455317, 0.890216,
		0.038307, -0.889900, -0.454544,
		0.999165, 0.027650, 0.030073,
		33.309685, 29.215267, 24.933468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785015, 28.716911, 25.453142>,  <32.610268, 29.195911, 24.912416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785015, 28.716911, 25.453142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122105, 28.925205, 25.398508>,  <33.324360, 29.050180, 25.365728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122105, 28.925205, 25.398508>,  <32.785015, 28.716911, 25.453142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122105, 28.925205, 25.398508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290590, -0.226428, 0.929671,
		0.453184, -0.823145, -0.342136,
		0.842723, 0.520733, -0.136584,
		33.374920, 29.081425, 25.357533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329144, 28.284626, 25.740725>,  <32.785015, 28.716911, 25.453142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329144, 28.284626, 25.740725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453171, 28.663763, 25.711182>,  <33.527588, 28.891245, 25.693457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453171, 28.663763, 25.711182>,  <33.329144, 28.284626, 25.740725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453171, 28.663763, 25.711182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324973, -0.032661, 0.945159,
		0.893450, -0.317061, -0.318150,
		0.310064, 0.947843, -0.073856,
		33.546188, 28.948116, 25.689026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974300, 28.223679, 26.072639>,  <33.329144, 28.284626, 25.740725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974300, 28.223679, 26.072639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894390, 28.615335, 26.057819>,  <33.846443, 28.850328, 26.048927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894390, 28.615335, 26.057819>,  <33.974300, 28.223679, 26.072639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894390, 28.615335, 26.057819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451106, 0.125478, 0.883605,
		0.869823, 0.159810, -0.466764,
		-0.199778, 0.979140, -0.037052,
		33.834457, 28.909077, 26.046703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.250141, 27.375608, 29.909361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.208336, 27.770651, 29.862526>,  <38.183250, 28.007677, 29.834425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.208336, 27.770651, 29.862526>,  <38.250141, 27.375608, 29.909361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208336, 27.770651, 29.862526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421155, 0.150605, 0.894397,
		0.900946, 0.044167, -0.431677,
		-0.104515, 0.987607, -0.117086,
		38.176983, 28.066933, 29.827400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923626, 27.676891, 30.084644>,  <38.250141, 27.375608, 29.909361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923626, 27.676891, 30.084644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.630230, 27.944946, 30.130108>,  <38.454193, 28.105778, 30.157385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.630230, 27.944946, 30.130108>,  <38.923626, 27.676891, 30.084644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630230, 27.944946, 30.130108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367292, 0.250074, 0.895857,
		0.571923, 0.698844, -0.429560,
		-0.733486, 0.670135, 0.113657,
		38.410183, 28.145987, 30.164206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192108, 28.049303, 30.512465>,  <38.923626, 27.676891, 30.084644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192108, 28.049303, 30.512465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817898, 28.190584, 30.514824>,  <38.593372, 28.275352, 30.516239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817898, 28.190584, 30.514824>,  <39.192108, 28.049303, 30.512465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817898, 28.190584, 30.514824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179265, 0.460296, 0.869478,
		0.304385, 0.814479, -0.493936,
		-0.935529, 0.353202, 0.005900,
		38.537239, 28.296545, 30.516594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226070, 28.614170, 30.911324>,  <39.192108, 28.049303, 30.512465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226070, 28.614170, 30.911324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831642, 28.550470, 30.930485>,  <38.594986, 28.512251, 30.941982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831642, 28.550470, 30.930485>,  <39.226070, 28.614170, 30.911324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831642, 28.550470, 30.930485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012622, 0.215557, 0.976410,
		-0.165821, 0.963418, -0.210545,
		-0.986075, -0.159251, 0.047904,
		38.535820, 28.502695, 30.944857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971634, 29.143047, 31.293411>,  <39.226070, 28.614170, 30.911324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971634, 29.143047, 31.293411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.711842, 28.839075, 31.303848>,  <38.555965, 28.656693, 31.310110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.711842, 28.839075, 31.303848>,  <38.971634, 29.143047, 31.293411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711842, 28.839075, 31.303848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037872, 0.001942, 0.999281,
		-0.759433, 0.650003, 0.027519,
		-0.649482, -0.759929, 0.026092,
		38.516998, 28.611097, 31.311676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531525, 29.329126, 31.840269>,  <38.971634, 29.143047, 31.293411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531525, 29.329126, 31.840269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.500511, 28.935303, 31.777493>,  <38.481903, 28.699009, 31.739826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.500511, 28.935303, 31.777493>,  <38.531525, 29.329126, 31.840269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500511, 28.935303, 31.777493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039458, -0.160323, 0.986276,
		-0.996208, 0.070279, 0.051280,
		-0.077536, -0.984559, -0.156942,
		38.477249, 28.639935, 31.730410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007591, 29.024979, 32.390156>,  <38.531525, 29.329126, 31.840269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007591, 29.024979, 32.390156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225777, 28.717936, 32.255547>,  <38.356689, 28.533710, 32.174782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225777, 28.717936, 32.255547>,  <38.007591, 29.024979, 32.390156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225777, 28.717936, 32.255547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126828, -0.321301, 0.938446,
		-0.828484, -0.554568, -0.077904,
		0.545463, -0.767606, -0.336527,
		38.389416, 28.487654, 32.154587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657223, 28.391294, 32.645149>,  <38.007591, 29.024979, 32.390156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657223, 28.391294, 32.645149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034634, 28.303911, 32.545521>,  <38.261078, 28.251480, 32.485744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034634, 28.303911, 32.545521>,  <37.657223, 28.391294, 32.645149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034634, 28.303911, 32.545521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105407, -0.514793, 0.850810,
		-0.314089, -0.829014, -0.462692,
		0.943524, -0.218459, -0.249075,
		38.317692, 28.238373, 32.470798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723663, 27.692904, 32.836628>,  <37.657223, 28.391294, 32.645149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723663, 27.692904, 32.836628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112858, 27.783352, 32.817978>,  <38.346375, 27.837620, 32.806789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112858, 27.783352, 32.817978>,  <37.723663, 27.692904, 32.836628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112858, 27.783352, 32.817978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093132, -0.199620, 0.975438,
		0.211259, -0.953427, -0.215285,
		0.972983, 0.226120, -0.046623,
		38.404755, 27.851187, 32.803989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106407, 27.160522, 33.234722>,  <37.723663, 27.692904, 32.836628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106407, 27.160522, 33.234722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327152, 27.494091, 33.236473>,  <38.459599, 27.694233, 33.237522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327152, 27.494091, 33.236473>,  <38.106407, 27.160522, 33.234722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327152, 27.494091, 33.236473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025102, -0.021856, 0.999446,
		0.833557, -0.551448, -0.032994,
		0.551863, 0.833923, 0.004375,
		38.492710, 27.744268, 33.237785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527088, 26.982548, 33.777954>,  <38.106407, 27.160522, 33.234722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527088, 26.982548, 33.777954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551338, 27.377125, 33.716953>,  <38.565887, 27.613871, 33.680355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551338, 27.377125, 33.716953>,  <38.527088, 26.982548, 33.777954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551338, 27.377125, 33.716953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038430, 0.154972, 0.987171,
		0.997420, -0.053990, 0.047305,
		0.060628, 0.986442, -0.152498,
		38.569527, 27.673058, 33.671204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071339, 27.252939, 34.161278>,  <38.527088, 26.982548, 33.777954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071339, 27.252939, 34.161278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815018, 27.554201, 34.101772>,  <38.661224, 27.734959, 34.066071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815018, 27.554201, 34.101772>,  <39.071339, 27.252939, 34.161278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815018, 27.554201, 34.101772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073657, 0.253194, 0.964607,
		0.764162, 0.607168, -0.217723,
		-0.640805, 0.753153, -0.148759,
		38.622776, 27.780148, 34.057144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362331, 27.778891, 34.498650>,  <39.071339, 27.252939, 34.161278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362331, 27.778891, 34.498650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.972549, 27.852968, 34.447834>,  <38.738682, 27.897415, 34.417347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.972549, 27.852968, 34.447834>,  <39.362331, 27.778891, 34.498650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972549, 27.852968, 34.447834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059837, 0.331121, 0.941689,
		0.216459, 0.925236, -0.311581,
		-0.974456, 0.185193, -0.127037,
		38.680214, 27.908525, 34.409721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169102, 28.432777, 34.691837>,  <39.362331, 27.778891, 34.498650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169102, 28.432777, 34.691837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823158, 28.233202, 34.714062>,  <38.615593, 28.113457, 34.727398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823158, 28.233202, 34.714062>,  <39.169102, 28.432777, 34.691837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823158, 28.233202, 34.714062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072096, 0.232969, 0.969808,
		-0.496817, 0.834738, -0.237456,
		-0.864856, -0.498937, 0.055561,
		38.563702, 28.083521, 34.730732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310299, 29.023460, 35.150143>,  <39.169102, 28.432777, 34.691837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310299, 29.023460, 35.150143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.481461, 29.334169, 35.334980>,  <39.584156, 29.520594, 35.445881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.481461, 29.334169, 35.334980>,  <39.310299, 29.023460, 35.150143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481461, 29.334169, 35.334980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121978, 0.556214, -0.822039,
		-0.895556, 0.295388, 0.332754,
		0.427903, 0.776770, 0.462090,
		39.609833, 29.567200, 35.473606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844383, 29.465879, 35.091331>,  <39.310299, 29.023460, 35.150143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844383, 29.465879, 35.091331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.176697, 29.679504, 35.154034>,  <39.376087, 29.807680, 35.191654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.176697, 29.679504, 35.154034>,  <38.844383, 29.465879, 35.091331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176697, 29.679504, 35.154034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187370, 0.533543, -0.824757,
		-0.524107, 0.655826, 0.543328,
		0.830786, 0.534064, 0.156752,
		39.425934, 29.839724, 35.201057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692722, 30.239935, 35.033619>,  <38.844383, 29.465879, 35.091331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692722, 30.239935, 35.033619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090351, 30.235525, 34.990337>,  <39.328926, 30.232880, 34.964371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090351, 30.235525, 34.990337>,  <38.692722, 30.239935, 35.033619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090351, 30.235525, 34.990337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086557, 0.522186, -0.848428,
		0.065852, 0.852761, 0.518134,
		0.994068, -0.011023, -0.108199,
		39.388573, 30.232218, 34.957878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942226, 30.898230, 34.764378>,  <38.692722, 30.239935, 35.033619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942226, 30.898230, 34.764378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250942, 30.663618, 34.666134>,  <39.436172, 30.522852, 34.607189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250942, 30.663618, 34.666134>,  <38.942226, 30.898230, 34.764378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250942, 30.663618, 34.666134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072201, 0.302922, -0.950276,
		0.631763, 0.751149, 0.191445,
		0.771792, -0.586527, -0.245609,
		39.482479, 30.487659, 34.592453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403599, 31.354198, 34.458408>,  <38.942226, 30.898230, 34.764378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403599, 31.354198, 34.458408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508175, 30.991310, 34.326595>,  <39.570923, 30.773577, 34.247505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508175, 30.991310, 34.326595>,  <39.403599, 31.354198, 34.458408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508175, 30.991310, 34.326595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005414, 0.342784, -0.939398,
		0.965204, 0.243816, 0.094531,
		0.261444, -0.907223, -0.329536,
		39.586609, 30.719143, 34.227734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929054, 31.551077, 33.926758>,  <39.403599, 31.354198, 34.458408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929054, 31.551077, 33.926758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.807926, 31.175375, 33.862133>,  <39.735249, 30.949955, 33.823360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.807926, 31.175375, 33.862133>,  <39.929054, 31.551077, 33.926758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807926, 31.175375, 33.862133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098776, 0.199536, -0.974899,
		0.947914, -0.279264, -0.153200,
		-0.302823, -0.939253, -0.161558,
		39.717079, 30.893599, 33.813667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180565, 31.440216, 33.204052>,  <39.929054, 31.551077, 33.926758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180565, 31.440216, 33.204052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.916241, 31.140890, 33.227245>,  <39.757648, 30.961294, 33.241161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.916241, 31.140890, 33.227245>,  <40.180565, 31.440216, 33.204052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916241, 31.140890, 33.227245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091177, 0.003357, -0.995829,
		0.744998, -0.663337, -0.070447,
		-0.660806, -0.748313, 0.057980,
		39.717999, 30.916395, 33.244640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323257, 30.914186, 32.733318>,  <40.180565, 31.440216, 33.204052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323257, 30.914186, 32.733318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937763, 30.849453, 32.818199>,  <39.706467, 30.810612, 32.869125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937763, 30.849453, 32.818199>,  <40.323257, 30.914186, 32.733318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937763, 30.849453, 32.818199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179738, -0.194132, -0.964369,
		0.197265, -0.967534, 0.158003,
		-0.963733, -0.161837, 0.212198,
		39.648643, 30.800901, 32.881859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067280, 30.378408, 32.299328>,  <40.323257, 30.914186, 32.733318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067280, 30.378408, 32.299328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.744350, 30.585758, 32.412121>,  <39.550594, 30.710169, 32.479797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.744350, 30.585758, 32.412121>,  <40.067280, 30.378408, 32.299328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744350, 30.585758, 32.412121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314416, 0.026514, -0.948915,
		-0.499372, -0.854741, 0.141581,
		-0.807323, 0.518376, 0.281985,
		39.502151, 30.741270, 32.496716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503910, 30.109175, 31.858490>,  <40.067280, 30.378408, 32.299328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503910, 30.109175, 31.858490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334671, 30.435429, 32.016342>,  <39.233128, 30.631180, 32.111053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334671, 30.435429, 32.016342>,  <39.503910, 30.109175, 31.858490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334671, 30.435429, 32.016342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588002, 0.084214, -0.804464,
		-0.689381, -0.572408, 0.443963,
		-0.423094, 0.815633, 0.394632,
		39.207745, 30.680119, 32.134731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766773, 30.100826, 31.775223>,  <39.503910, 30.109175, 31.858490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766773, 30.100826, 31.775223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854172, 30.488548, 31.820318>,  <38.906612, 30.721182, 31.847376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854172, 30.488548, 31.820318>,  <38.766773, 30.100826, 31.775223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854172, 30.488548, 31.820318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509820, 0.211898, -0.833776,
		-0.832071, 0.124704, 0.540470,
		0.218500, 0.969303, 0.112737,
		38.919724, 30.779339, 31.854139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136421, 30.507095, 31.538269>,  <38.766773, 30.100826, 31.775223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136421, 30.507095, 31.538269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462994, 30.738007, 31.532724>,  <38.658936, 30.876553, 31.529398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462994, 30.738007, 31.532724>,  <38.136421, 30.507095, 31.538269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462994, 30.738007, 31.532724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235387, 0.310790, -0.920870,
		-0.527288, 0.755090, 0.389622,
		0.816431, 0.577276, -0.013863,
		38.707924, 30.911190, 31.528566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851070, 30.970362, 31.242067>,  <38.136421, 30.507095, 31.538269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851070, 30.970362, 31.242067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244007, 31.023754, 31.189625>,  <38.479771, 31.055790, 31.158159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244007, 31.023754, 31.189625>,  <37.851070, 30.970362, 31.242067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244007, 31.023754, 31.189625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154923, 0.187386, -0.969992,
		-0.104909, 0.973174, 0.204757,
		0.982340, 0.133483, -0.131109,
		38.538708, 31.063799, 31.150291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007664, 31.555258, 30.951891>,  <37.851070, 30.970362, 31.242067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007664, 31.555258, 30.951891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325336, 31.342783, 30.833830>,  <38.515942, 31.215298, 30.762993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325336, 31.342783, 30.833830>,  <38.007664, 31.555258, 30.951891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325336, 31.342783, 30.833830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198625, 0.232115, -0.952193,
		0.574301, 0.814840, 0.078835,
		0.794183, -0.531186, -0.295151,
		38.563591, 31.183428, 30.745285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302631, 32.306095, 30.970436>,  <38.007664, 31.555258, 30.951891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302631, 32.306095, 30.970436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.109772, 32.656448, 30.962791>,  <37.994057, 32.866661, 30.958204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.109772, 32.656448, 30.962791>,  <38.302631, 32.306095, 30.970436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109772, 32.656448, 30.962791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127751, -0.048706, 0.990610,
		0.866727, 0.480059, 0.135378,
		-0.482145, 0.875883, -0.019113,
		37.965130, 32.919212, 30.957058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664974, 32.674622, 31.443832>,  <38.302631, 32.306095, 30.970436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664974, 32.674622, 31.443832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303520, 32.837761, 31.391516>,  <38.086647, 32.935646, 31.360126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303520, 32.837761, 31.391516>,  <38.664974, 32.674622, 31.443832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303520, 32.837761, 31.391516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215981, -0.170212, 0.961447,
		0.369862, 0.897044, 0.241897,
		-0.903634, 0.407848, -0.130790,
		38.032429, 32.960114, 31.352278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625366, 33.152359, 31.942617>,  <38.664974, 32.674622, 31.443832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625366, 33.152359, 31.942617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.245674, 33.064877, 31.852175>,  <38.017857, 33.012386, 31.797909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.245674, 33.064877, 31.852175>,  <38.625366, 33.152359, 31.942617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245674, 33.064877, 31.852175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182162, -0.203842, 0.961907,
		-0.256466, 0.954262, 0.153653,
		-0.949232, -0.218707, -0.226109,
		37.960903, 32.999264, 31.784342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151112, 33.512794, 32.324860>,  <38.625366, 33.152359, 31.942617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151112, 33.512794, 32.324860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892204, 33.226223, 32.220730>,  <37.736858, 33.054279, 32.158253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892204, 33.226223, 32.220730>,  <38.151112, 33.512794, 32.324860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892204, 33.226223, 32.220730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250503, -0.122620, 0.960319,
		-0.719924, 0.686796, -0.100100,
		-0.647269, -0.716432, -0.260322,
		37.698025, 33.011292, 32.142632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610264, 33.525787, 32.793156>,  <38.151112, 33.512794, 32.324860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610264, 33.525787, 32.793156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564617, 33.166492, 32.623383>,  <37.537228, 32.950916, 32.521519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564617, 33.166492, 32.623383>,  <37.610264, 33.525787, 32.793156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564617, 33.166492, 32.623383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440274, -0.337251, 0.832118,
		-0.890582, 0.281827, -0.356984,
		-0.114120, -0.898240, -0.424431,
		37.530380, 32.897022, 32.496052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824066, 33.468403, 32.870895>,  <37.610264, 33.525787, 32.793156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824066, 33.468403, 32.870895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006580, 33.115654, 32.823399>,  <37.116089, 32.904003, 32.794903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006580, 33.115654, 32.823399>,  <36.824066, 33.468403, 32.870895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006580, 33.115654, 32.823399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553837, -0.385897, 0.737800,
		-0.696468, -0.270887, -0.664495,
		0.456287, -0.881875, -0.118738,
		37.143467, 32.851093, 32.787777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260201, 32.969513, 32.903004>,  <36.824066, 33.468403, 32.870895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260201, 32.969513, 32.903004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.600277, 32.780071, 32.994984>,  <36.804321, 32.666405, 33.050171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.600277, 32.780071, 32.994984>,  <36.260201, 32.969513, 32.903004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600277, 32.780071, 32.994984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434090, -0.383463, 0.815182,
		-0.297898, -0.792877, -0.531604,
		0.850190, -0.473605, 0.229947,
		36.855335, 32.637989, 33.063969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012920, 32.279293, 33.023994>,  <36.260201, 32.969513, 32.903004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012920, 32.279293, 33.023994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354958, 32.318539, 33.227638>,  <36.560181, 32.342087, 33.349823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354958, 32.318539, 33.227638>,  <36.012920, 32.279293, 33.023994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354958, 32.318539, 33.227638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456738, -0.322164, 0.829217,
		0.245377, -0.941586, -0.230666,
		0.855091, 0.098117, 0.509109,
		36.611485, 32.347973, 33.380371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084530, 31.678423, 33.329235>,  <36.012920, 32.279293, 33.023994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084530, 31.678423, 33.329235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.336143, 31.912516, 33.533909>,  <36.487114, 32.052971, 33.656712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.336143, 31.912516, 33.533909>,  <36.084530, 31.678423, 33.329235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336143, 31.912516, 33.533909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458278, -0.252506, 0.852187,
		0.627928, -0.770549, 0.109363,
		0.629037, 0.585231, 0.511681,
		36.524857, 32.088085, 33.687412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238274, 31.281450, 33.915329>,  <36.084530, 31.678423, 33.329235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238274, 31.281450, 33.915329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.390011, 31.625767, 34.051056>,  <36.481052, 31.832355, 34.132492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.390011, 31.625767, 34.051056>,  <36.238274, 31.281450, 33.915329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390011, 31.625767, 34.051056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156459, -0.301773, 0.940454,
		0.911930, -0.409847, 0.020202,
		0.379346, 0.860789, 0.339320,
		36.503815, 31.884003, 34.152851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667770, 31.112301, 34.452805>,  <36.238274, 31.281450, 33.915329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667770, 31.112301, 34.452805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578003, 31.500282, 34.490383>,  <36.524143, 31.733070, 34.512932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578003, 31.500282, 34.490383>,  <36.667770, 31.112301, 34.452805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578003, 31.500282, 34.490383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380770, -0.176022, 0.907761,
		0.897023, 0.167946, 0.408832,
		-0.224418, 0.969954, 0.093947,
		36.510677, 31.791269, 34.518566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008492, 31.486752, 35.106239>,  <36.667770, 31.112301, 34.452805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008492, 31.486752, 35.106239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.674084, 31.675047, 34.993469>,  <36.473438, 31.788025, 34.925808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.674084, 31.675047, 34.993469>,  <37.008492, 31.486752, 35.106239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674084, 31.675047, 34.993469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363144, -0.089490, 0.927425,
		0.411344, 0.877723, 0.245760,
		-0.836016, 0.470738, -0.281929,
		36.423279, 31.816269, 34.908890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.130772, 33.746490, 27.481564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771893, 33.921825, 27.503084>,  <37.556564, 34.027027, 27.515997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771893, 33.921825, 27.503084>,  <38.130772, 33.746490, 27.481564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771893, 33.921825, 27.503084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053928, -0.012176, 0.998471,
		0.438326, 0.898726, -0.012715,
		-0.897197, 0.438341, 0.053804,
		37.502735, 34.053329, 27.519226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162529, 34.370399, 27.870901>,  <38.130772, 33.746490, 27.481564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162529, 34.370399, 27.870901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792118, 34.222828, 27.902836>,  <37.569874, 34.134285, 27.921997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792118, 34.222828, 27.902836>,  <38.162529, 34.370399, 27.870901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792118, 34.222828, 27.902836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044464, 0.103421, 0.993643,
		-0.374837, 0.923687, -0.079367,
		-0.926024, -0.368926, 0.079837,
		37.514313, 34.112148, 27.926786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809513, 34.868610, 28.300308>,  <38.162529, 34.370399, 27.870901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809513, 34.868610, 28.300308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639545, 34.508247, 28.335649>,  <37.537563, 34.292030, 28.356855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639545, 34.508247, 28.335649>,  <37.809513, 34.868610, 28.300308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639545, 34.508247, 28.335649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033738, 0.113298, 0.992988,
		-0.904602, 0.418959, -0.078538,
		-0.424920, -0.900909, 0.088355,
		37.512070, 34.237976, 28.362156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428833, 34.876015, 28.897587>,  <37.809513, 34.868610, 28.300308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428833, 34.876015, 28.897587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442528, 34.481289, 28.834305>,  <37.450745, 34.244453, 28.796335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442528, 34.481289, 28.834305>,  <37.428833, 34.876015, 28.897587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442528, 34.481289, 28.834305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081890, -0.160536, 0.983627,
		-0.996053, -0.020717, -0.086306,
		0.034233, -0.986812, -0.158205,
		37.452797, 34.185246, 28.786842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996166, 34.539581, 29.458908>,  <37.428833, 34.876015, 28.897587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996166, 34.539581, 29.458908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194817, 34.230595, 29.300589>,  <37.314007, 34.045200, 29.205597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194817, 34.230595, 29.300589>,  <36.996166, 34.539581, 29.458908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194817, 34.230595, 29.300589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094541, -0.405153, 0.909348,
		-0.862802, -0.489023, -0.128178,
		0.496624, -0.772468, -0.395799,
		37.343803, 33.998856, 29.181849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622456, 33.833961, 29.782642>,  <36.996166, 34.539581, 29.458908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622456, 33.833961, 29.782642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988304, 33.764854, 29.636425>,  <37.207813, 33.723392, 29.548695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988304, 33.764854, 29.636425>,  <36.622456, 33.833961, 29.782642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988304, 33.764854, 29.636425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194387, -0.604857, 0.772245,
		-0.354515, -0.777368, -0.519633,
		0.914622, -0.172763, -0.365541,
		37.262691, 33.713024, 29.526762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722309, 33.120220, 29.803652>,  <36.622456, 33.833961, 29.782642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722309, 33.120220, 29.803652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094074, 33.266647, 29.784964>,  <37.317135, 33.354504, 29.773750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094074, 33.266647, 29.784964>,  <36.722309, 33.120220, 29.803652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094074, 33.266647, 29.784964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212054, -0.426145, 0.879451,
		0.302029, -0.827282, -0.473691,
		0.929415, 0.366068, -0.046720,
		37.372898, 33.376469, 29.770948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218319, 32.550735, 29.943771>,  <36.722309, 33.120220, 29.803652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218319, 32.550735, 29.943771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454765, 32.864849, 30.017426>,  <37.596634, 33.053318, 30.061617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454765, 32.864849, 30.017426>,  <37.218319, 32.550735, 29.943771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454765, 32.864849, 30.017426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333422, -0.445772, 0.830733,
		0.734444, -0.429668, -0.525336,
		0.591119, 0.785285, 0.184134,
		37.632103, 33.100433, 30.072666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752934, 32.222984, 30.332712>,  <37.218319, 32.550735, 29.943771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752934, 32.222984, 30.332712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756443, 32.613739, 30.418142>,  <37.758549, 32.848190, 30.469400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756443, 32.613739, 30.418142>,  <37.752934, 32.222984, 30.332712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756443, 32.613739, 30.418142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045759, -0.213755, 0.975815,
		0.998914, 0.001209, -0.046577,
		0.008777, 0.976887, 0.213578,
		37.759075, 32.906803, 30.482216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504276, 32.066883, 30.204420>,  <37.752934, 32.222984, 30.332712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504276, 32.066883, 30.204420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633327, 31.690699, 30.247210>,  <38.710758, 31.464989, 30.272884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633327, 31.690699, 30.247210>,  <38.504276, 32.066883, 30.204420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633327, 31.690699, 30.247210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015533, -0.107743, -0.994057,
		0.946397, 0.322376, -0.020154,
		0.322632, -0.940460, 0.106975,
		38.730118, 31.408560, 30.279303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042141, 32.031151, 29.730556>,  <38.504276, 32.066883, 30.204420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042141, 32.031151, 29.730556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940510, 31.654520, 29.818993>,  <38.879532, 31.428541, 29.872055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940510, 31.654520, 29.818993>,  <39.042141, 32.031151, 29.730556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940510, 31.654520, 29.818993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216863, -0.278235, -0.935711,
		0.942558, -0.189797, 0.274886,
		-0.254078, -0.941575, 0.221092,
		38.864288, 31.372047, 29.885321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604115, 31.545887, 29.622660>,  <39.042141, 32.031151, 29.730556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604115, 31.545887, 29.622660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293583, 31.294857, 29.599113>,  <39.107265, 31.144239, 29.584986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293583, 31.294857, 29.599113>,  <39.604115, 31.545887, 29.622660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293583, 31.294857, 29.599113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372928, -0.382012, -0.845572,
		0.508173, -0.678394, 0.530606,
		-0.776328, -0.627574, -0.058864,
		39.060684, 31.106585, 29.581455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893669, 30.937801, 29.370157>,  <39.604115, 31.545887, 29.622660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893669, 30.937801, 29.370157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505756, 30.901075, 29.279736>,  <39.273010, 30.879040, 29.225483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505756, 30.901075, 29.279736>,  <39.893669, 30.937801, 29.370157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505756, 30.901075, 29.279736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243988, -0.361880, -0.899729,
		0.000803, -0.927692, 0.373345,
		-0.969778, -0.091814, -0.226055,
		39.214825, 30.873531, 29.211920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696514, 30.172840, 29.175882>,  <39.893669, 30.937801, 29.370157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696514, 30.172840, 29.175882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399635, 30.384247, 29.011049>,  <39.221508, 30.511091, 28.912149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399635, 30.384247, 29.011049>,  <39.696514, 30.172840, 29.175882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399635, 30.384247, 29.011049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156098, -0.461643, -0.873223,
		-0.651751, -0.712429, 0.260129,
		-0.742196, 0.528518, -0.412085,
		39.176975, 30.542803, 28.887424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346695, 29.712822, 28.795404>,  <39.696514, 30.172840, 29.175882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346695, 29.712822, 28.795404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208778, 30.057714, 28.646984>,  <39.126030, 30.264650, 28.557932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208778, 30.057714, 28.646984>,  <39.346695, 29.712822, 28.795404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208778, 30.057714, 28.646984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042428, -0.380570, -0.923778,
		-0.937720, -0.334254, 0.094634,
		-0.344791, 0.862230, -0.371050,
		39.105339, 30.316383, 28.535669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927265, 29.472166, 28.243347>,  <39.346695, 29.712822, 28.795404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927265, 29.472166, 28.243347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987988, 29.861994, 28.177410>,  <39.024422, 30.095890, 28.137848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987988, 29.861994, 28.177410>,  <38.927265, 29.472166, 28.243347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987988, 29.861994, 28.177410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005134, -0.165994, -0.986113,
		-0.988397, 0.150545, -0.020195,
		0.151807, 0.974568, -0.164841,
		39.033531, 30.154364, 28.127958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439098, 29.652988, 27.787561>,  <38.927265, 29.472166, 28.243347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439098, 29.652988, 27.787561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717442, 29.938900, 27.759642>,  <38.884449, 30.110447, 27.742889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717442, 29.938900, 27.759642>,  <38.439098, 29.652988, 27.787561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717442, 29.938900, 27.759642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115620, 0.015578, -0.993171,
		-0.708809, 0.699178, 0.093482,
		0.695860, 0.714778, -0.069797,
		38.926201, 30.153334, 27.738703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224628, 30.107166, 27.333433>,  <38.439098, 29.652988, 27.787561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224628, 30.107166, 27.333433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618782, 30.175127, 27.328472>,  <38.855274, 30.215904, 27.325495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618782, 30.175127, 27.328472>,  <38.224628, 30.107166, 27.333433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618782, 30.175127, 27.328472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022421, 0.057167, -0.998113,
		-0.168874, 0.983801, 0.060140,
		0.985383, 0.169904, -0.012404,
		38.914398, 30.226099, 27.324751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283855, 30.746260, 27.045528>,  <38.224628, 30.107166, 27.333433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283855, 30.746260, 27.045528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621414, 30.546913, 26.966059>,  <38.823948, 30.427305, 26.918377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621414, 30.546913, 26.966059>,  <38.283855, 30.746260, 27.045528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621414, 30.546913, 26.966059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209349, 0.035068, -0.977212,
		0.493975, 0.866258, -0.074739,
		0.843897, -0.498365, -0.198673,
		38.874584, 30.397404, 26.906456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546242, 30.993044, 26.492935>,  <38.283855, 30.746260, 27.045528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546242, 30.993044, 26.492935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784504, 30.671768, 26.496515>,  <38.927460, 30.479002, 26.498663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784504, 30.671768, 26.496515>,  <38.546242, 30.993044, 26.492935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784504, 30.671768, 26.496515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117950, -0.098486, -0.988124,
		0.794533, 0.587526, -0.153400,
		0.595656, -0.803190, 0.008952,
		38.963200, 30.430811, 26.499201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978828, 31.035452, 25.901901>,  <38.546242, 30.993044, 26.492935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978828, 31.035452, 25.901901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984989, 30.643333, 25.980677>,  <38.988686, 30.408062, 26.027943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984989, 30.643333, 25.980677>,  <38.978828, 31.035452, 25.901901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984989, 30.643333, 25.980677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180635, -0.196449, -0.963732,
		0.983430, -0.020729, -0.180102,
		0.015403, -0.980295, 0.196938,
		38.989609, 30.349245, 26.039759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529568, 30.709066, 25.498327>,  <38.978828, 31.035452, 25.901901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529568, 30.709066, 25.498327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248478, 30.443539, 25.600718>,  <39.079823, 30.284222, 25.662151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248478, 30.443539, 25.600718>,  <39.529568, 30.709066, 25.498327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248478, 30.443539, 25.600718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250500, -0.105896, -0.962308,
		0.665904, -0.740359, -0.091871,
		-0.702724, -0.663819, 0.255976,
		39.037663, 30.244392, 25.677511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621204, 30.103258, 24.997530>,  <39.529568, 30.709066, 25.498327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621204, 30.103258, 24.997530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249195, 30.068979, 25.140474>,  <39.025990, 30.048412, 25.226240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249195, 30.068979, 25.140474>,  <39.621204, 30.103258, 24.997530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249195, 30.068979, 25.140474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336205, -0.194219, -0.921545,
		0.148381, -0.977208, 0.151817,
		-0.930027, -0.085698, 0.357360,
		38.970188, 30.043270, 25.247683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.330605, 32.066826, 25.185148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.729969, 32.062847, 25.207315>,  <32.969589, 32.060459, 25.220615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.729969, 32.062847, 25.207315>,  <32.330605, 32.066826, 25.185148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729969, 32.062847, 25.207315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055602, -0.019496, 0.998263,
		-0.008836, -0.999761, -0.020017,
		0.998414, -0.009933, 0.055416,
		33.029491, 32.059864, 25.223940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582378, 31.521915, 25.703733>,  <32.330605, 32.066826, 25.185148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582378, 31.521915, 25.703733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.913761, 31.739485, 25.650354>,  <33.112591, 31.870026, 25.618328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.913761, 31.739485, 25.650354>,  <32.582378, 31.521915, 25.703733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913761, 31.739485, 25.650354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218634, -0.094732, 0.971198,
		0.515616, -0.833770, -0.197401,
		0.828456, 0.543924, -0.133446,
		33.162296, 31.902662, 25.610321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151497, 31.054846, 25.951864>,  <32.582378, 31.521915, 25.703733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151497, 31.054846, 25.951864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263546, 31.438831, 25.952101>,  <33.330776, 31.669222, 25.952244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263546, 31.438831, 25.952101>,  <33.151497, 31.054846, 25.951864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263546, 31.438831, 25.952101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251443, -0.073969, 0.965042,
		0.926448, -0.270183, -0.262097,
		0.280124, 0.959964, 0.000592,
		33.347584, 31.726820, 25.952278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820034, 31.081572, 26.089432>,  <33.151497, 31.054846, 25.951864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820034, 31.081572, 26.089432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731060, 31.457205, 26.194231>,  <33.677677, 31.682585, 26.257111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731060, 31.457205, 26.194231>,  <33.820034, 31.081572, 26.089432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731060, 31.457205, 26.194231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288829, -0.193194, 0.937686,
		0.931182, 0.284248, -0.228261,
		-0.222437, 0.939084, 0.261997,
		33.664330, 31.738930, 26.272831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465363, 31.310099, 26.516176>,  <33.820034, 31.081572, 26.089432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465363, 31.310099, 26.516176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.196117, 31.592617, 26.603878>,  <34.034573, 31.762127, 26.656498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.196117, 31.592617, 26.603878>,  <34.465363, 31.310099, 26.516176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196117, 31.592617, 26.603878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324828, 0.016015, 0.945638,
		0.664388, 0.707736, -0.240204,
		-0.673109, 0.706295, 0.219252,
		33.994186, 31.804506, 26.669653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848099, 31.874125, 26.818382>,  <34.465363, 31.310099, 26.516176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848099, 31.874125, 26.818382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.467606, 31.912022, 26.935808>,  <34.239311, 31.934759, 27.006264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.467606, 31.912022, 26.935808>,  <34.848099, 31.874125, 26.818382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467606, 31.912022, 26.935808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308093, 0.244561, 0.919385,
		0.015310, 0.964994, -0.261824,
		-0.951233, 0.094742, 0.293563,
		34.182236, 31.940445, 27.023878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859207, 32.432838, 27.207285>,  <34.848099, 31.874125, 26.818382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859207, 32.432838, 27.207285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.540916, 32.226452, 27.334156>,  <34.349941, 32.102619, 27.410278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.540916, 32.226452, 27.334156>,  <34.859207, 32.432838, 27.207285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540916, 32.226452, 27.334156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234312, 0.220656, 0.946789,
		-0.558495, 0.827704, -0.054686,
		-0.795727, -0.515963, 0.317176,
		34.302197, 32.071663, 27.429310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557709, 32.875359, 27.668434>,  <34.859207, 32.432838, 27.207285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557709, 32.875359, 27.668434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407207, 32.520302, 27.774654>,  <34.316906, 32.307266, 27.838387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407207, 32.520302, 27.774654>,  <34.557709, 32.875359, 27.668434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407207, 32.520302, 27.774654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247519, 0.179894, 0.952036,
		-0.892841, 0.423938, 0.152022,
		-0.376257, -0.887645, 0.265550,
		34.294331, 32.254009, 27.854319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103069, 33.028343, 28.227144>,  <34.557709, 32.875359, 27.668434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103069, 33.028343, 28.227144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.129528, 32.629669, 28.246075>,  <34.145405, 32.390465, 28.257433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.129528, 32.629669, 28.246075>,  <34.103069, 33.028343, 28.227144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129528, 32.629669, 28.246075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181141, 0.034649, 0.982847,
		-0.981230, -0.073587, -0.178249,
		0.066148, -0.996687, 0.047328,
		34.149372, 32.330662, 28.260273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524830, 32.720673, 28.626839>,  <34.103069, 33.028343, 28.227144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524830, 32.720673, 28.626839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841175, 32.476238, 28.640104>,  <34.030983, 32.329578, 28.648064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841175, 32.476238, 28.640104>,  <33.524830, 32.720673, 28.626839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841175, 32.476238, 28.640104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132996, -0.118720, 0.983981,
		-0.597363, -0.782608, -0.175164,
		0.790866, -0.611090, 0.033165,
		34.078434, 32.292912, 28.650053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331356, 32.095528, 28.873371>,  <33.524830, 32.720673, 28.626839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331356, 32.095528, 28.873371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.726665, 32.099426, 28.934326>,  <33.963852, 32.101765, 28.970900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.726665, 32.099426, 28.934326>,  <33.331356, 32.095528, 28.873371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726665, 32.099426, 28.934326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148856, -0.161010, 0.975663,
		0.034044, -0.986905, -0.157671,
		0.988273, 0.009746, 0.152388,
		34.023148, 32.102348, 28.980043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445457, 31.481918, 29.198843>,  <33.331356, 32.095528, 28.873371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445457, 31.481918, 29.198843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.773655, 31.700424, 29.266230>,  <33.970573, 31.831528, 29.306662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.773655, 31.700424, 29.266230>,  <33.445457, 31.481918, 29.198843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773655, 31.700424, 29.266230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009005, -0.282316, 0.959279,
		0.571579, -0.788603, -0.226721,
		0.820497, 0.546263, 0.168467,
		34.019806, 31.864304, 29.316771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943642, 31.028664, 29.343689>,  <33.445457, 31.481918, 29.198843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943642, 31.028664, 29.343689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.078053, 31.375748, 29.490202>,  <34.158699, 31.583998, 29.578110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.078053, 31.375748, 29.490202>,  <33.943642, 31.028664, 29.343689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078053, 31.375748, 29.490202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075303, -0.412404, 0.907883,
		0.938836, -0.277493, -0.203921,
		0.336029, 0.867710, 0.366284,
		34.178860, 31.636061, 29.600086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431129, 30.861979, 29.779438>,  <33.943642, 31.028664, 29.343689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431129, 30.861979, 29.779438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335716, 31.227943, 29.909691>,  <34.278469, 31.447523, 29.987843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335716, 31.227943, 29.909691>,  <34.431129, 30.861979, 29.779438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335716, 31.227943, 29.909691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054460, -0.347385, 0.936140,
		0.969606, 0.205566, 0.132689,
		-0.238532, 0.914913, 0.325632,
		34.264156, 31.502417, 30.007380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092480, 30.362911, 29.843256>,  <34.431129, 30.861979, 29.779438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092480, 30.362911, 29.843256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008018, 29.972027, 29.851988>,  <34.957340, 29.737497, 29.857227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008018, 29.972027, 29.851988>,  <35.092480, 30.362911, 29.843256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008018, 29.972027, 29.851988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161316, 0.012814, -0.986819,
		0.964049, -0.211891, -0.160346,
		-0.211153, -0.977209, 0.021828,
		34.944672, 29.678864, 29.858536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527756, 30.073452, 29.350206>,  <35.092480, 30.362911, 29.843256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527756, 30.073452, 29.350206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.256535, 29.782110, 29.389683>,  <35.093800, 29.607306, 29.413368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.256535, 29.782110, 29.389683>,  <35.527756, 30.073452, 29.350206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256535, 29.782110, 29.389683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064147, -0.075120, -0.995109,
		0.732205, -0.681071, 0.004214,
		-0.678057, -0.728354, 0.098692,
		35.053116, 29.563604, 29.419291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686100, 29.660826, 28.790688>,  <35.527756, 30.073452, 29.350206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686100, 29.660826, 28.790688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320366, 29.534075, 28.891541>,  <35.100925, 29.458025, 28.952053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320366, 29.534075, 28.891541>,  <35.686100, 29.660826, 28.790688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320366, 29.534075, 28.891541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237209, -0.085514, -0.967688,
		0.328200, -0.944603, 0.003023,
		-0.914340, -0.316878, 0.252134,
		35.046062, 29.439011, 28.967180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554661, 29.159021, 28.416239>,  <35.686100, 29.660826, 28.790688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554661, 29.159021, 28.416239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.175674, 29.249447, 28.506758>,  <34.948284, 29.303701, 28.561069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.175674, 29.249447, 28.506758>,  <35.554661, 29.159021, 28.416239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175674, 29.249447, 28.506758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247651, -0.070672, -0.966268,
		-0.202445, -0.971545, 0.122944,
		-0.947462, 0.226063, 0.226297,
		34.891438, 29.317266, 28.574648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147419, 28.650398, 28.081926>,  <35.554661, 29.159021, 28.416239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147419, 28.650398, 28.081926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.885086, 28.935698, 28.180845>,  <34.727684, 29.106878, 28.240196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.885086, 28.935698, 28.180845>,  <35.147419, 28.650398, 28.081926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885086, 28.935698, 28.180845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407178, -0.058371, -0.911482,
		-0.635680, -0.698475, 0.328701,
		-0.655834, 0.713250, 0.247298,
		34.688335, 29.149673, 28.255035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582397, 28.366877, 27.706633>,  <35.147419, 28.650398, 28.081926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582397, 28.366877, 27.706633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.526020, 28.751869, 27.799385>,  <34.492195, 28.982864, 27.855036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.526020, 28.751869, 27.799385>,  <34.582397, 28.366877, 27.706633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526020, 28.751869, 27.799385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523334, 0.126389, -0.842702,
		-0.840391, -0.240123, 0.485885,
		-0.140942, 0.962480, 0.231881,
		34.483738, 29.040613, 27.868950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898533, 28.508301, 27.742971>,  <34.582397, 28.366877, 27.706633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898533, 28.508301, 27.742971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067505, 28.855782, 27.639502>,  <34.168888, 29.064270, 27.577419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067505, 28.855782, 27.639502>,  <33.898533, 28.508301, 27.742971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067505, 28.855782, 27.639502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624880, 0.072387, -0.777357,
		-0.656568, 0.490016, 0.573413,
		0.422426, 0.868703, -0.258674,
		34.194233, 29.116392, 27.561899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349598, 29.046625, 27.643320>,  <33.898533, 28.508301, 27.742971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349598, 29.046625, 27.643320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.662655, 29.180326, 27.433271>,  <33.850487, 29.260548, 27.307241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.662655, 29.180326, 27.433271>,  <33.349598, 29.046625, 27.643320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662655, 29.180326, 27.433271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562736, 0.019301, -0.826411,
		-0.266094, 0.942286, 0.203201,
		0.782638, 0.334252, -0.525123,
		33.897446, 29.280602, 27.275734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071121, 29.352304, 27.162300>,  <33.349598, 29.046625, 27.643320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071121, 29.352304, 27.162300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.444263, 29.347576, 27.018280>,  <33.668148, 29.344738, 26.931868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.444263, 29.347576, 27.018280>,  <33.071121, 29.352304, 27.162300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444263, 29.347576, 27.018280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352022, 0.182373, -0.918052,
		0.076517, 0.983158, 0.165967,
		0.932859, -0.011822, -0.360048,
		33.724121, 29.344030, 26.910265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203671, 29.945957, 26.677441>,  <33.071121, 29.352304, 27.162300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203671, 29.945957, 26.677441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.490498, 29.683371, 26.583742>,  <33.662594, 29.525818, 26.527523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.490498, 29.683371, 26.583742>,  <33.203671, 29.945957, 26.677441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490498, 29.683371, 26.583742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170473, 0.160691, -0.972171,
		0.675839, 0.737041, 0.003316,
		0.717064, -0.656466, -0.234247,
		33.705616, 29.486431, 26.513468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728958, 30.198174, 26.182936>,  <33.203671, 29.945957, 26.677441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728958, 30.198174, 26.182936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784107, 29.805649, 26.129240>,  <33.817196, 29.570135, 26.097023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784107, 29.805649, 26.129240>,  <33.728958, 30.198174, 26.182936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784107, 29.805649, 26.129240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095315, 0.121759, -0.987973,
		0.985853, 0.149009, -0.076746,
		0.137872, -0.981311, -0.134239,
		33.825470, 29.511255, 26.088968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163662, 30.142342, 25.622543>,  <33.728958, 30.198174, 26.182936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163662, 30.142342, 25.622543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.952042, 29.803473, 25.642176>,  <33.825069, 29.600151, 25.653955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.952042, 29.803473, 25.642176>,  <34.163662, 30.142342, 25.622543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952042, 29.803473, 25.642176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040511, -0.032556, -0.998648,
		0.847624, -0.530322, -0.017096,
		-0.529048, -0.847171, 0.049079,
		33.793327, 29.549322, 25.656898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465099, 29.773832, 25.209314>,  <34.163662, 30.142342, 25.622543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465099, 29.773832, 25.209314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.131535, 29.559053, 25.260344>,  <33.931396, 29.430187, 25.290960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.131535, 29.559053, 25.260344>,  <34.465099, 29.773832, 25.209314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131535, 29.559053, 25.260344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165869, 0.023377, -0.985870,
		0.526377, -0.843292, -0.108557,
		-0.833915, -0.536946, 0.127571,
		33.881359, 29.397970, 25.298615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596790, 29.184074, 24.844021>,  <34.465099, 29.773832, 25.209314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596790, 29.184074, 24.844021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198189, 29.198475, 24.874176>,  <33.959026, 29.207115, 24.892269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198189, 29.198475, 24.874176>,  <34.596790, 29.184074, 24.844021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198189, 29.198475, 24.874176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070824, 0.114542, -0.990891,
		-0.044312, -0.992766, -0.111592,
		-0.996504, 0.036005, 0.075387,
		33.899239, 29.209276, 24.896791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036190, 28.536327, 25.005592>,  <34.596790, 29.184074, 24.844021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036190, 28.536327, 25.005592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380035, 28.431664, 24.830050>,  <35.586342, 28.368866, 24.724724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380035, 28.431664, 24.830050>,  <35.036190, 28.536327, 25.005592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380035, 28.431664, 24.830050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457237, 0.010624, 0.889281,
		-0.228027, -0.965102, 0.128773,
		0.859615, -0.261660, -0.438858,
		35.637920, 28.353167, 24.698393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243988, 27.890842, 25.420214>,  <35.036190, 28.536327, 25.005592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243988, 27.890842, 25.420214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.560646, 28.040581, 25.227064>,  <35.750641, 28.130424, 25.111174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.560646, 28.040581, 25.227064>,  <35.243988, 27.890842, 25.420214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560646, 28.040581, 25.227064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590227, -0.264295, 0.762745,
		0.157911, -0.888826, -0.430177,
		0.791642, 0.374348, -0.482874,
		35.798138, 28.152885, 25.082201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805687, 27.476217, 25.645247>,  <35.243988, 27.890842, 25.420214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805687, 27.476217, 25.645247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.004688, 27.782618, 25.482405>,  <36.124088, 27.966457, 25.384699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.004688, 27.782618, 25.482405>,  <35.805687, 27.476217, 25.645247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004688, 27.782618, 25.482405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662232, -0.032247, 0.748605,
		0.560303, -0.642032, -0.523312,
		0.497503, 0.765999, -0.407106,
		36.153938, 28.012417, 25.360273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492970, 27.206034, 25.415815>,  <35.805687, 27.476217, 25.645247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492970, 27.206034, 25.415815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504421, 27.595833, 25.504843>,  <36.511292, 27.829712, 25.558260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504421, 27.595833, 25.504843>,  <36.492970, 27.206034, 25.415815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504421, 27.595833, 25.504843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671158, -0.183744, 0.718182,
		0.740761, 0.128820, -0.659301,
		0.028627, 0.974496, 0.222569,
		36.513008, 27.888182, 25.571613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063347, 27.270313, 25.677650>,  <36.492970, 27.206034, 25.415815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063347, 27.270313, 25.677650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875908, 27.604734, 25.791798>,  <36.763447, 27.805387, 25.860287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875908, 27.604734, 25.791798>,  <37.063347, 27.270313, 25.677650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875908, 27.604734, 25.791798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370866, -0.107011, 0.922501,
		0.801796, 0.538113, -0.259918,
		-0.468595, 0.836052, 0.285368,
		36.735329, 27.855551, 25.877409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575668, 27.560495, 25.947350>,  <37.063347, 27.270313, 25.677650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575668, 27.560495, 25.947350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256401, 27.759632, 26.083044>,  <37.064842, 27.879114, 26.164461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256401, 27.759632, 26.083044>,  <37.575668, 27.560495, 25.947350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256401, 27.759632, 26.083044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448866, 0.115879, 0.886054,
		0.401806, 0.859491, -0.315956,
		-0.798167, 0.497844, 0.339235,
		37.016953, 27.908985, 26.184814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817825, 28.247391, 26.199940>,  <37.575668, 27.560495, 25.947350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817825, 28.247391, 26.199940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466484, 28.209984, 26.387453>,  <37.255680, 28.187540, 26.499960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466484, 28.209984, 26.387453>,  <37.817825, 28.247391, 26.199940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466484, 28.209984, 26.387453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418660, 0.322804, 0.848835,
		-0.230706, 0.941834, -0.244382,
		-0.878350, -0.093518, 0.468781,
		37.202980, 28.181929, 26.528088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707767, 28.841801, 26.606827>,  <37.817825, 28.247391, 26.199940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707767, 28.841801, 26.606827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468536, 28.565208, 26.768892>,  <37.324997, 28.399254, 26.866131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468536, 28.565208, 26.768892>,  <37.707767, 28.841801, 26.606827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468536, 28.565208, 26.768892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285933, 0.288172, 0.913892,
		-0.748694, 0.662430, 0.025367,
		-0.598080, -0.691479, 0.405164,
		37.289112, 28.357765, 26.890442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270638, 29.158751, 27.111767>,  <37.707767, 28.841801, 26.606827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270638, 29.158751, 27.111767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264164, 28.771679, 27.212437>,  <37.260281, 28.539436, 27.272839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264164, 28.771679, 27.212437>,  <37.270638, 29.158751, 27.111767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264164, 28.771679, 27.212437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172677, 0.245220, 0.953965,
		-0.984846, 0.058892, 0.163128,
		-0.016179, -0.967677, 0.251673,
		37.259312, 28.481377, 27.287939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005672, 29.157923, 27.805361>,  <37.270638, 29.158751, 27.111767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005672, 29.157923, 27.805361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188229, 28.802172, 27.816069>,  <37.297760, 28.588720, 27.822495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188229, 28.802172, 27.816069>,  <37.005672, 29.157923, 27.805361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188229, 28.802172, 27.816069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176156, 0.119804, 0.977044,
		-0.872170, -0.441194, 0.211347,
		0.456386, -0.889379, 0.026771,
		37.325146, 28.535358, 27.824100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941975, 28.987793, 28.551979>,  <37.005672, 29.157923, 27.805361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941975, 28.987793, 28.551979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181973, 28.690660, 28.433184>,  <37.325974, 28.512381, 28.361906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181973, 28.690660, 28.433184>,  <36.941975, 28.987793, 28.551979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181973, 28.690660, 28.433184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486646, 0.044252, 0.872478,
		-0.634964, -0.668012, 0.388048,
		0.599997, -0.742833, -0.296987,
		37.361973, 28.467810, 28.344088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907909, 28.492641, 29.112356>,  <36.941975, 28.987793, 28.551979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907909, 28.492641, 29.112356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248657, 28.416792, 28.917067>,  <37.453106, 28.371283, 28.799892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248657, 28.416792, 28.917067>,  <36.907909, 28.492641, 29.112356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248657, 28.416792, 28.917067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474178, -0.116652, 0.872667,
		-0.222432, -0.974903, -0.009456,
		0.851868, -0.189625, -0.488225,
		37.504219, 28.359905, 28.770599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120312, 27.964037, 29.419516>,  <36.907909, 28.492641, 29.112356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120312, 27.964037, 29.419516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458984, 28.104599, 29.259689>,  <37.662186, 28.188936, 29.163794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458984, 28.104599, 29.259689>,  <37.120312, 27.964037, 29.419516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458984, 28.104599, 29.259689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409684, 0.048671, 0.910928,
		0.339552, -0.934958, -0.102757,
		0.846678, 0.351405, -0.399563,
		37.712986, 28.210020, 29.139820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619644, 27.455973, 29.540670>,  <37.120312, 27.964037, 29.419516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619644, 27.455973, 29.540670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.787460, 27.816841, 29.500528>,  <37.888149, 28.033363, 29.476444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.787460, 27.816841, 29.500528>,  <37.619644, 27.455973, 29.540670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787460, 27.816841, 29.500528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382510, -0.075446, 0.920866,
		0.823209, -0.424725, -0.376743,
		0.419539, 0.902173, -0.100354,
		37.913322, 28.087494, 29.470423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.299446, 29.298000, 24.782232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.993702, 29.544268, 24.858862>,  <38.810253, 29.692028, 24.904840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.993702, 29.544268, 24.858862>,  <39.299446, 29.298000, 24.782232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993702, 29.544268, 24.858862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530572, -0.431731, -0.729453,
		-0.366392, -0.659212, 0.656656,
		-0.764363, 0.615669, 0.191576,
		38.764393, 29.728968, 24.916334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779892, 28.908945, 24.531982>,  <39.299446, 29.298000, 24.782232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779892, 28.908945, 24.531982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.603195, 29.261320, 24.599890>,  <38.497177, 29.472744, 24.640635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.603195, 29.261320, 24.599890>,  <38.779892, 28.908945, 24.531982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603195, 29.261320, 24.599890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557106, -0.121028, -0.821575,
		-0.703208, -0.457499, 0.544237,
		-0.441737, 0.880936, 0.169767,
		38.470673, 29.525600, 24.650820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116955, 28.813103, 24.393400>,  <38.779892, 28.908945, 24.531982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116955, 28.813103, 24.393400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.184467, 29.206001, 24.360655>,  <38.224976, 29.441740, 24.341007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.184467, 29.206001, 24.360655>,  <38.116955, 28.813103, 24.393400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184467, 29.206001, 24.360655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618851, 0.040962, -0.784439,
		-0.767160, 0.183062, 0.614779,
		0.168784, 0.982248, -0.081863,
		38.235104, 29.500675, 24.336096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509045, 29.131445, 24.148844>,  <38.116955, 28.813103, 24.393400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509045, 29.131445, 24.148844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.794670, 29.399599, 24.068150>,  <37.966045, 29.560492, 24.019733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.794670, 29.399599, 24.068150>,  <37.509045, 29.131445, 24.148844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794670, 29.399599, 24.068150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460407, 0.232604, -0.856692,
		-0.527390, 0.704612, 0.474744,
		0.714063, 0.670386, -0.201735,
		38.008888, 29.600716, 24.007629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152302, 29.709356, 23.887512>,  <37.509045, 29.131445, 24.148844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152302, 29.709356, 23.887512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.526695, 29.766878, 23.758980>,  <37.751331, 29.801392, 23.681860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.526695, 29.766878, 23.758980>,  <37.152302, 29.709356, 23.887512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526695, 29.766878, 23.758980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350231, 0.287894, -0.891322,
		-0.035669, 0.946803, 0.319830,
		0.935984, 0.143807, -0.321331,
		37.807491, 29.810020, 23.662580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973076, 30.191021, 23.440836>,  <37.152302, 29.709356, 23.887512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973076, 30.191021, 23.440836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.327854, 30.045895, 23.326511>,  <37.540722, 29.958818, 23.257915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.327854, 30.045895, 23.326511>,  <36.973076, 30.191021, 23.440836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327854, 30.045895, 23.326511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254978, 0.131341, -0.957985,
		0.385109, 0.922559, 0.023984,
		0.886948, -0.362814, -0.285813,
		37.593937, 29.937050, 23.240767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278191, 30.687084, 23.034676>,  <36.973076, 30.191021, 23.440836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278191, 30.687084, 23.034676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473557, 30.351460, 22.938814>,  <37.590775, 30.150085, 22.881296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473557, 30.351460, 22.938814>,  <37.278191, 30.687084, 23.034676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473557, 30.351460, 22.938814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109609, 0.213475, -0.970780,
		0.865703, 0.500407, 0.012295,
		0.488410, -0.839059, -0.239655,
		37.620079, 30.099741, 22.866917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794018, 30.882940, 22.609282>,  <37.278191, 30.687084, 23.034676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794018, 30.882940, 22.609282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.767517, 30.490562, 22.536226>,  <37.751617, 30.255135, 22.492393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.767517, 30.490562, 22.536226>,  <37.794018, 30.882940, 22.609282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767517, 30.490562, 22.536226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240807, 0.193349, -0.951119,
		0.968309, -0.019028, -0.249027,
		-0.066247, -0.980945, -0.182640,
		37.747643, 30.196280, 22.481434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126118, 30.799633, 21.978449>,  <37.794018, 30.882940, 22.609282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126118, 30.799633, 21.978449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886463, 30.479774, 21.994463>,  <37.742672, 30.287859, 22.004070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886463, 30.479774, 21.994463>,  <38.126118, 30.799633, 21.978449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886463, 30.479774, 21.994463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197517, 0.099164, -0.975271,
		0.775902, -0.592226, -0.217357,
		-0.599135, -0.799647, 0.040033,
		37.706722, 30.239880, 22.006474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354389, 30.308132, 21.395790>,  <38.126118, 30.799633, 21.978449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354389, 30.308132, 21.395790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.976303, 30.244942, 21.510067>,  <37.749451, 30.207027, 21.578632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.976303, 30.244942, 21.510067>,  <38.354389, 30.308132, 21.395790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976303, 30.244942, 21.510067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301430, 0.086277, -0.949577,
		0.125369, -0.983665, -0.129171,
		-0.945210, -0.157983, 0.285690,
		37.692741, 30.197548, 21.595774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125011, 30.041845, 20.829502>,  <38.354389, 30.308132, 21.395790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125011, 30.041845, 20.829502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792877, 30.131306, 21.033669>,  <37.593597, 30.184982, 21.156168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792877, 30.131306, 21.033669>,  <38.125011, 30.041845, 20.829502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792877, 30.131306, 21.033669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474171, 0.197625, -0.857966,
		-0.292756, -0.954424, -0.058046,
		-0.830335, 0.223651, 0.510416,
		37.543777, 30.198400, 21.186794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644844, 29.653526, 20.506445>,  <38.125011, 30.041845, 20.829502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644844, 29.653526, 20.506445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.448330, 29.947517, 20.693396>,  <37.330421, 30.123913, 20.805567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.448330, 29.947517, 20.693396>,  <37.644844, 29.653526, 20.506445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448330, 29.947517, 20.693396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201132, 0.426364, -0.881907,
		-0.847457, -0.527274, -0.061640,
		-0.491288, 0.734980, 0.467377,
		37.300945, 30.168011, 20.833609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093533, 29.876827, 20.008184>,  <37.644844, 29.653526, 20.506445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093533, 29.876827, 20.008184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128288, 30.184519, 20.261400>,  <37.149139, 30.369133, 20.413330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128288, 30.184519, 20.261400>,  <37.093533, 29.876827, 20.008184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128288, 30.184519, 20.261400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254511, 0.631495, -0.732419,
		-0.963159, -0.097479, 0.250645,
		0.086886, 0.769228, 0.633040,
		37.154354, 30.415287, 20.451313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331451, 29.906324, 19.738272>,  <37.093533, 29.876827, 20.008184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331451, 29.906324, 19.738272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.085155, 29.767412, 19.455357>,  <35.937378, 29.684065, 19.285608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.085155, 29.767412, 19.455357>,  <36.331451, 29.906324, 19.738272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085155, 29.767412, 19.455357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118672, -0.928268, 0.352469,
		-0.778958, 0.133096, 0.612788,
		-0.615744, -0.347280, -0.707287,
		35.900433, 29.663229, 19.243170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727077, 30.373161, 19.407961>,  <36.331451, 29.906324, 19.738272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727077, 30.373161, 19.407961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599380, 30.718136, 19.250841>,  <35.522762, 30.925119, 19.156570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599380, 30.718136, 19.250841>,  <35.727077, 30.373161, 19.407961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599380, 30.718136, 19.250841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935351, -0.353373, -0.015671,
		-0.152320, 0.362401, 0.919491,
		-0.319244, 0.862434, -0.392797,
		35.503609, 30.976866, 19.133001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349987, 30.304787, 20.024349>,  <35.727077, 30.373161, 19.407961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349987, 30.304787, 20.024349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106640, 29.998381, 19.941303>,  <34.960632, 29.814537, 19.891476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106640, 29.998381, 19.941303>,  <35.349987, 30.304787, 20.024349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106640, 29.998381, 19.941303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226732, -0.418443, 0.879488,
		-0.760577, 0.487981, 0.428248,
		-0.608371, -0.766016, -0.207617,
		34.924129, 29.768576, 19.879019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852531, 30.167728, 20.551340>,  <35.349987, 30.304787, 20.024349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852531, 30.167728, 20.551340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918610, 29.826637, 20.353123>,  <34.958256, 29.621983, 20.234192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918610, 29.826637, 20.353123>,  <34.852531, 30.167728, 20.551340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918610, 29.826637, 20.353123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199589, -0.463148, 0.863515,
		-0.965855, -0.241553, 0.093686,
		0.165195, -0.852729, -0.495545,
		34.968166, 29.570818, 20.204460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316833, 29.593380, 20.794432>,  <34.852531, 30.167728, 20.551340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316833, 29.593380, 20.794432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659904, 29.414577, 20.692789>,  <34.865749, 29.307295, 20.631804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659904, 29.414577, 20.692789>,  <34.316833, 29.593380, 20.794432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659904, 29.414577, 20.692789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052287, -0.415810, 0.907947,
		-0.511521, -0.792013, -0.333259,
		0.857679, -0.447008, -0.254108,
		34.917210, 29.280476, 20.616556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160686, 28.879002, 20.987082>,  <34.316833, 29.593380, 20.794432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160686, 28.879002, 20.987082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542156, 28.812769, 20.886618>,  <34.771038, 28.773029, 20.826340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542156, 28.812769, 20.886618>,  <34.160686, 28.879002, 20.987082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542156, 28.812769, 20.886618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150917, -0.458887, 0.875584,
		-0.260234, -0.872929, -0.412641,
		0.953679, -0.165582, -0.251158,
		34.828259, 28.763094, 20.811270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270985, 28.153555, 21.075811>,  <34.160686, 28.879002, 20.987082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270985, 28.153555, 21.075811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616341, 28.353184, 21.105452>,  <34.823555, 28.472961, 21.123236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616341, 28.353184, 21.105452>,  <34.270985, 28.153555, 21.075811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616341, 28.353184, 21.105452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112177, -0.333068, 0.936206,
		0.491915, -0.799996, -0.343551,
		0.863387, 0.499072, 0.074100,
		34.875355, 28.502905, 21.127682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760921, 27.626802, 21.171667>,  <34.270985, 28.153555, 21.075811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760921, 27.626802, 21.171667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.905552, 27.969656, 21.318409>,  <34.992332, 28.175367, 21.406454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.905552, 27.969656, 21.318409>,  <34.760921, 27.626802, 21.171667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905552, 27.969656, 21.318409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172132, -0.448085, 0.877263,
		0.916314, -0.254052, -0.309558,
		0.361579, 0.857133, 0.366856,
		35.014027, 28.226795, 21.428465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422485, 27.467239, 21.418751>,  <34.760921, 27.626802, 21.171667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422485, 27.467239, 21.418751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.312122, 27.796453, 21.617342>,  <35.245907, 27.993982, 21.736498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.312122, 27.796453, 21.617342>,  <35.422485, 27.467239, 21.418751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312122, 27.796453, 21.617342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184944, -0.461420, 0.867691,
		0.943224, 0.331221, -0.024907,
		-0.275905, 0.823033, 0.496480,
		35.229351, 28.043364, 21.766287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752068, 27.320629, 22.036638>,  <35.422485, 27.467239, 21.418751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752068, 27.320629, 22.036638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549911, 27.651741, 22.134092>,  <35.428619, 27.850409, 22.192564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549911, 27.651741, 22.134092>,  <35.752068, 27.320629, 22.036638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549911, 27.651741, 22.134092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070912, -0.241550, 0.967794,
		0.859972, 0.506391, 0.063378,
		-0.505391, 0.827781, 0.243636,
		35.398293, 27.900076, 22.207184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174763, 27.598234, 22.543617>,  <35.752068, 27.320629, 22.036638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174763, 27.598234, 22.543617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817726, 27.768646, 22.602654>,  <35.603504, 27.870893, 22.638075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817726, 27.768646, 22.602654>,  <36.174763, 27.598234, 22.543617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817726, 27.768646, 22.602654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186200, 0.050181, 0.981230,
		0.410626, 0.903317, -0.124117,
		-0.892590, 0.426029, 0.147592,
		35.549950, 27.896456, 22.646931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391598, 28.177502, 22.895317>,  <36.174763, 27.598234, 22.543617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391598, 28.177502, 22.895317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.000454, 28.114429, 22.950357>,  <35.765770, 28.076586, 22.983381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.000454, 28.114429, 22.950357>,  <36.391598, 28.177502, 22.895317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000454, 28.114429, 22.950357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110407, 0.169871, 0.979262,
		-0.177787, 0.972769, -0.148700,
		-0.977856, -0.157683, 0.137601,
		35.707096, 28.067125, 22.991638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129887, 28.650425, 23.187347>,  <36.391598, 28.177502, 22.895317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129887, 28.650425, 23.187347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861378, 28.379314, 23.307350>,  <35.700272, 28.216648, 23.379353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861378, 28.379314, 23.307350>,  <36.129887, 28.650425, 23.187347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861378, 28.379314, 23.307350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206452, 0.217764, 0.953916,
		-0.711875, 0.702278, -0.006251,
		-0.671276, -0.677779, 0.300007,
		35.659996, 28.175982, 23.397352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619213, 29.002508, 23.553442>,  <36.129887, 28.650425, 23.187347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619213, 29.002508, 23.553442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657059, 28.619087, 23.660942>,  <35.679768, 28.389034, 23.725443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657059, 28.619087, 23.660942>,  <35.619213, 29.002508, 23.553442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657059, 28.619087, 23.660942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217864, 0.283353, 0.933941,
		-0.971383, -0.029812, 0.235642,
		0.094613, -0.958552, 0.268750,
		35.685444, 28.331522, 23.741568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084641, 28.893568, 24.105579>,  <35.619213, 29.002508, 23.553442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084641, 28.893568, 24.105579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350147, 28.597460, 24.148308>,  <35.509453, 28.419796, 24.173944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350147, 28.597460, 24.148308>,  <35.084641, 28.893568, 24.105579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350147, 28.597460, 24.148308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308887, 0.401391, 0.862249,
		-0.681175, -0.539339, 0.495091,
		0.663770, -0.740269, 0.106823,
		35.549278, 28.375380, 24.180355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336590, 28.758896, 24.204735>,  <35.084641, 28.893568, 24.105579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336590, 28.758896, 24.204735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059078, 29.005667, 24.353369>,  <33.892570, 29.153728, 24.442549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059078, 29.005667, 24.353369>,  <34.336590, 28.758896, 24.204735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059078, 29.005667, 24.353369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242851, 0.285332, -0.927151,
		-0.678008, -0.733476, -0.048136,
		-0.693778, 0.616926, 0.371583,
		33.850945, 29.190744, 24.464844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720230, 28.737469, 23.732428>,  <34.336590, 28.758896, 24.204735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720230, 28.737469, 23.732428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695786, 29.097036, 23.905960>,  <33.681118, 29.312777, 24.010080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695786, 29.097036, 23.905960>,  <33.720230, 28.737469, 23.732428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695786, 29.097036, 23.905960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293962, 0.399156, -0.868482,
		-0.953861, -0.180607, 0.239853,
		-0.061116, 0.898919, 0.433831,
		33.677452, 29.366713, 24.036110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139256, 28.992165, 23.466089>,  <33.720230, 28.737469, 23.732428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139256, 28.992165, 23.466089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309719, 29.322809, 23.613113>,  <33.411999, 29.521196, 23.701328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309719, 29.322809, 23.613113>,  <33.139256, 28.992165, 23.466089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309719, 29.322809, 23.613113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288655, 0.509314, -0.810726,
		-0.857359, 0.239403, 0.455656,
		0.426163, 0.826611, 0.367560,
		33.437569, 29.570793, 23.723381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714878, 29.521488, 23.303701>,  <33.139256, 28.992165, 23.466089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714878, 29.521488, 23.303701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052078, 29.719454, 23.387997>,  <33.254398, 29.838234, 23.438574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052078, 29.719454, 23.387997>,  <32.714878, 29.521488, 23.303701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052078, 29.719454, 23.387997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020565, 0.421136, -0.906764,
		-0.537520, 0.760069, 0.365196,
		0.843000, 0.494914, 0.210738,
		33.304977, 29.867928, 23.451218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575630, 30.220871, 23.186010>,  <32.714878, 29.521488, 23.303701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575630, 30.220871, 23.186010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.971573, 30.198139, 23.133940>,  <33.209141, 30.184500, 23.102697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.971573, 30.198139, 23.133940>,  <32.575630, 30.220871, 23.186010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971573, 30.198139, 23.133940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084158, 0.503660, -0.859793,
		0.114425, 0.862031, 0.493770,
		0.989861, -0.056828, -0.130178,
		33.268532, 30.181091, 23.094887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642960, 30.797401, 22.842758>,  <32.575630, 30.220871, 23.186010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642960, 30.797401, 22.842758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995346, 30.613708, 22.797155>,  <33.206779, 30.503492, 22.769794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995346, 30.613708, 22.797155>,  <32.642960, 30.797401, 22.842758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995346, 30.613708, 22.797155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089618, 0.398518, -0.912772,
		0.464607, 0.793908, 0.392238,
		0.880971, -0.459232, -0.114006,
		33.259636, 30.475939, 22.762953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091915, 31.258118, 22.464258>,  <32.642960, 30.797401, 22.842758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091915, 31.258118, 22.464258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221386, 30.880852, 22.434135>,  <33.299068, 30.654491, 22.416061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221386, 30.880852, 22.434135>,  <33.091915, 31.258118, 22.464258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221386, 30.880852, 22.434135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054689, 0.098106, -0.993672,
		0.944587, 0.317508, 0.083335,
		0.323675, -0.943167, -0.075305,
		33.318489, 30.597902, 22.411545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780659, 31.706352, 22.388117>,  <33.091915, 31.258118, 22.464258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780659, 31.706352, 22.388117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708000, 32.098927, 22.412724>,  <33.664406, 32.334473, 22.427488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708000, 32.098927, 22.412724>,  <33.780659, 31.706352, 22.388117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708000, 32.098927, 22.412724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155469, -0.090434, 0.983693,
		0.970996, 0.169123, 0.169010,
		-0.181650, 0.981437, 0.061518,
		33.653503, 32.393356, 22.431179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245373, 31.992788, 22.901827>,  <33.780659, 31.706352, 22.388117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245373, 31.992788, 22.901827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.933937, 32.243557, 22.890757>,  <33.747074, 32.394020, 22.884113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.933937, 32.243557, 22.890757>,  <34.245373, 31.992788, 22.901827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933937, 32.243557, 22.890757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027801, 0.009602, 0.999567,
		0.626918, 0.779022, 0.009953,
		-0.778589, 0.626924, -0.027677,
		33.700359, 32.431633, 22.882454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408058, 32.513138, 23.352259>,  <34.245373, 31.992788, 22.901827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408058, 32.513138, 23.352259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.009228, 32.525276, 23.324219>,  <33.769928, 32.532558, 23.307394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.009228, 32.525276, 23.324219>,  <34.408058, 32.513138, 23.352259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009228, 32.525276, 23.324219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069360, 0.024818, 0.997283,
		0.032004, 0.999231, -0.022640,
		-0.997078, 0.030347, -0.070101,
		33.710106, 32.534382, 23.303188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163773, 32.993038, 23.870329>,  <34.408058, 32.513138, 23.352259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163773, 32.993038, 23.870329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823917, 32.810535, 23.764545>,  <33.620003, 32.701035, 23.701075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823917, 32.810535, 23.764545>,  <34.163773, 32.993038, 23.870329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823917, 32.810535, 23.764545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258134, -0.077482, 0.962997,
		-0.459865, 0.886468, -0.051943,
		-0.849642, -0.456257, -0.264459,
		33.569023, 32.673656, 23.685207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640301, 33.359760, 24.201571>,  <34.163773, 32.993038, 23.870329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640301, 33.359760, 24.201571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554363, 32.972137, 24.152960>,  <33.502800, 32.739563, 24.123793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554363, 32.972137, 24.152960>,  <33.640301, 33.359760, 24.201571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554363, 32.972137, 24.152960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151604, -0.089833, 0.984351,
		-0.964809, 0.229910, -0.127613,
		-0.214848, -0.969057, -0.121527,
		33.489910, 32.681419, 24.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094849, 33.186249, 24.613974>,  <33.640301, 33.359760, 24.201571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094849, 33.186249, 24.613974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224865, 32.811668, 24.561199>,  <33.302876, 32.586922, 24.529533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224865, 32.811668, 24.561199>,  <33.094849, 33.186249, 24.613974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224865, 32.811668, 24.561199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173853, -0.196304, 0.965008,
		-0.929583, -0.290727, -0.226612,
		0.325039, -0.936452, -0.131937,
		33.322376, 32.530731, 24.521618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557785, 32.726589, 24.876230>,  <33.094849, 33.186249, 24.613974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557785, 32.726589, 24.876230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.904297, 32.526779, 24.878574>,  <33.112206, 32.406891, 24.879980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.904297, 32.526779, 24.878574>,  <32.557785, 32.726589, 24.876230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904297, 32.526779, 24.878574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168880, -0.281793, 0.944496,
		-0.470151, -0.819185, -0.328471,
		0.866278, -0.499528, 0.005859,
		33.164181, 32.376923, 24.880333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.406593, 33.292885, 20.695204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.534012, 32.934643, 20.819410>,  <36.610462, 32.719696, 20.893934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.534012, 32.934643, 20.819410>,  <36.406593, 33.292885, 20.695204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534012, 32.934643, 20.819410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231664, 0.244093, 0.941674,
		-0.919163, -0.371901, -0.129725,
		0.318545, -0.895605, 0.310518,
		36.629574, 32.665962, 20.912565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947990, 33.053905, 21.314402>,  <36.406593, 33.292885, 20.695204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947990, 33.053905, 21.314402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.297539, 32.860893, 21.338114>,  <36.507267, 32.745087, 21.352341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.297539, 32.860893, 21.338114>,  <35.947990, 33.053905, 21.314402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297539, 32.860893, 21.338114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085308, 0.272243, 0.958439,
		-0.478619, -0.832493, 0.279069,
		0.873869, -0.482534, 0.059282,
		36.559700, 32.716133, 21.355898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032509, 32.567463, 21.968712>,  <35.947990, 33.053905, 21.314402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032509, 32.567463, 21.968712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.396572, 32.678589, 21.845787>,  <36.615009, 32.745262, 21.772032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.396572, 32.678589, 21.845787>,  <36.032509, 32.567463, 21.968712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396572, 32.678589, 21.845787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191670, 0.375247, 0.906891,
		0.367227, -0.884324, 0.288297,
		0.910169, 0.277777, -0.307299,
		36.669617, 32.761932, 21.753593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410145, 32.268097, 22.433388>,  <36.032509, 32.567463, 21.968712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410145, 32.268097, 22.433388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667633, 32.534321, 22.282310>,  <36.822124, 32.694057, 22.191664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667633, 32.534321, 22.282310>,  <36.410145, 32.268097, 22.433388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667633, 32.534321, 22.282310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074178, 0.436953, 0.896420,
		0.761658, -0.605060, 0.231905,
		0.643720, 0.665564, -0.377692,
		36.860748, 32.733990, 22.169003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885128, 32.223354, 22.826849>,  <36.410145, 32.268097, 22.433388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885128, 32.223354, 22.826849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.939007, 32.582706, 22.659628>,  <36.971333, 32.798317, 22.559296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.939007, 32.582706, 22.659628>,  <36.885128, 32.223354, 22.826849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939007, 32.582706, 22.659628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088727, 0.409268, 0.908090,
		0.986907, -0.159406, -0.024586,
		0.134692, 0.898382, -0.418053,
		36.979416, 32.852222, 22.534212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592854, 32.536240, 23.076389>,  <36.885128, 32.223354, 22.826849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592854, 32.536240, 23.076389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.358784, 32.830383, 22.939674>,  <37.218342, 33.006870, 22.857645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.358784, 32.830383, 22.939674>,  <37.592854, 32.536240, 23.076389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358784, 32.830383, 22.939674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323595, 0.598231, 0.733079,
		0.743545, 0.318378, -0.588027,
		-0.585173, 0.735360, -0.341787,
		37.183231, 33.050991, 22.837139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976757, 33.066841, 23.213936>,  <37.592854, 32.536240, 23.076389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976757, 33.066841, 23.213936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.608551, 33.217262, 23.171537>,  <37.387627, 33.307514, 23.146099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.608551, 33.217262, 23.171537>,  <37.976757, 33.066841, 23.213936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608551, 33.217262, 23.171537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080923, 0.448919, 0.889901,
		0.382231, 0.810591, -0.443668,
		-0.920517, 0.376051, -0.105995,
		37.332397, 33.330078, 23.139738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962078, 33.827404, 23.290438>,  <37.976757, 33.066841, 23.213936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962078, 33.827404, 23.290438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.588680, 33.712288, 23.376013>,  <37.364643, 33.643219, 23.427359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.588680, 33.712288, 23.376013>,  <37.962078, 33.827404, 23.290438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588680, 33.712288, 23.376013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030675, 0.530323, 0.847241,
		-0.357287, 0.797454, -0.486224,
		-0.933491, -0.287793, 0.213940,
		37.308632, 33.625950, 23.440195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849857, 34.240345, 23.759453>,  <37.962078, 33.827404, 23.290438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849857, 34.240345, 23.759453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.553268, 33.978939, 23.820309>,  <37.375317, 33.822098, 23.856823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.553268, 33.978939, 23.820309>,  <37.849857, 34.240345, 23.759453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553268, 33.978939, 23.820309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026304, 0.254879, 0.966615,
		-0.670471, 0.712713, -0.206175,
		-0.741469, -0.653511, 0.152142,
		37.330826, 33.782887, 23.865952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250790, 34.696621, 23.965683>,  <37.849857, 34.240345, 23.759453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250790, 34.696621, 23.965683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.204140, 34.318527, 24.087616>,  <37.176147, 34.091671, 24.160776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.204140, 34.318527, 24.087616>,  <37.250790, 34.696621, 23.965683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204140, 34.318527, 24.087616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263586, 0.325380, 0.908103,
		-0.957560, 0.025561, -0.287100,
		-0.116629, -0.945238, 0.304833,
		37.169151, 34.034954, 24.179066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641037, 34.719822, 24.366436>,  <37.250790, 34.696621, 23.965683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641037, 34.719822, 24.366436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.816853, 34.381397, 24.487085>,  <36.922340, 34.178341, 24.559475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.816853, 34.381397, 24.487085>,  <36.641037, 34.719822, 24.366436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816853, 34.381397, 24.487085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329294, 0.160641, 0.930462,
		-0.835686, -0.508297, -0.207996,
		0.439539, -0.846067, 0.301625,
		36.948715, 34.127579, 24.577572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166534, 34.406647, 24.821520>,  <36.641037, 34.719822, 24.366436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166534, 34.406647, 24.821520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.504341, 34.226864, 24.937992>,  <36.707024, 34.118992, 25.007875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.504341, 34.226864, 24.937992>,  <36.166534, 34.406647, 24.821520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504341, 34.226864, 24.937992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260039, 0.131157, 0.956649,
		-0.468165, -0.883620, -0.006114,
		0.844512, -0.449460, 0.291179,
		36.757694, 34.092026, 25.025345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434864, 34.120724, 24.825439>,  <36.166534, 34.406647, 24.821520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434864, 34.120724, 24.825439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.113800, 34.356865, 24.791456>,  <34.921162, 34.498550, 24.771067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.113800, 34.356865, 24.791456>,  <35.434864, 34.120724, 24.825439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113800, 34.356865, 24.791456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128262, 0.031741, -0.991232,
		-0.582484, -0.806518, -0.101198,
		-0.802659, 0.590357, -0.084957,
		34.873001, 34.533974, 24.765968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082905, 33.867790, 24.285809>,  <35.434864, 34.120724, 24.825439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082905, 33.867790, 24.285809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.930031, 34.236820, 24.306971>,  <34.838306, 34.458237, 24.319668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.930031, 34.236820, 24.306971>,  <35.082905, 33.867790, 24.285809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930031, 34.236820, 24.306971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025541, 0.067777, -0.997374,
		-0.923734, -0.379827, -0.049466,
		-0.382182, 0.922571, 0.052907,
		34.815376, 34.513592, 24.322844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545753, 33.933399, 23.729740>,  <35.082905, 33.867790, 24.285809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545753, 33.933399, 23.729740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.628231, 34.311634, 23.830414>,  <34.677715, 34.538574, 23.890818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.628231, 34.311634, 23.830414>,  <34.545753, 33.933399, 23.729740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628231, 34.311634, 23.830414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009613, 0.255244, -0.966829,
		-0.978464, 0.201772, 0.043540,
		0.206192, 0.945589, 0.251686,
		34.690090, 34.595310, 23.905920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243717, 34.388901, 23.321234>,  <34.545753, 33.933399, 23.729740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243717, 34.388901, 23.321234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.549835, 34.609818, 23.453470>,  <34.733505, 34.742367, 23.532812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.549835, 34.609818, 23.453470>,  <34.243717, 34.388901, 23.321234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549835, 34.609818, 23.453470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118176, 0.384313, -0.915608,
		-0.632737, 0.739779, 0.228846,
		0.765296, 0.552295, 0.330594,
		34.779423, 34.775505, 23.552649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149094, 34.908966, 22.978453>,  <34.243717, 34.388901, 23.321234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149094, 34.908966, 22.978453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.523079, 34.966415, 23.108202>,  <34.747471, 35.000885, 23.186050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.523079, 34.966415, 23.108202>,  <34.149094, 34.908966, 22.978453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523079, 34.966415, 23.108202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246277, 0.395325, -0.884910,
		-0.255329, 0.907243, 0.334242,
		0.934962, 0.143627, 0.324371,
		34.803566, 35.009502, 23.205513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294460, 35.611664, 22.771242>,  <34.149094, 34.908966, 22.978453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294460, 35.611664, 22.771242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.633480, 35.407635, 22.829880>,  <34.836891, 35.285217, 22.865063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.633480, 35.407635, 22.829880>,  <34.294460, 35.611664, 22.771242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633480, 35.407635, 22.829880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261851, 0.161647, -0.951475,
		0.461626, 0.844805, 0.270566,
		0.847547, -0.510073, 0.146593,
		34.887745, 35.254612, 22.873857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722607, 36.008743, 22.379557>,  <34.294460, 35.611664, 22.771242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722607, 36.008743, 22.379557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921227, 35.666367, 22.437248>,  <35.040398, 35.460941, 22.471863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921227, 35.666367, 22.437248>,  <34.722607, 36.008743, 22.379557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921227, 35.666367, 22.437248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329855, 0.032379, -0.943476,
		0.802889, 0.516060, 0.298413,
		0.496553, -0.855940, 0.144228,
		35.070194, 35.409584, 22.480516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346172, 36.148346, 22.036600>,  <34.722607, 36.008743, 22.379557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346172, 36.148346, 22.036600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.327541, 35.750401, 22.072557>,  <35.316360, 35.511635, 22.094131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.327541, 35.750401, 22.072557>,  <35.346172, 36.148346, 22.036600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327541, 35.750401, 22.072557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422673, -0.101166, -0.900618,
		0.905085, -0.003956, 0.425214,
		-0.046580, -0.994862, 0.089891,
		35.313568, 35.451942, 22.099525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934513, 35.877941, 21.733686>,  <35.346172, 36.148346, 22.036600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934513, 35.877941, 21.733686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695366, 35.559017, 21.700575>,  <35.551880, 35.367664, 21.680708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695366, 35.559017, 21.700575>,  <35.934513, 35.877941, 21.733686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695366, 35.559017, 21.700575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429142, -0.231140, -0.873162,
		0.677049, -0.557557, 0.480350,
		-0.597865, -0.797311, -0.082778,
		35.516006, 35.319824, 21.675741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348972, 35.256210, 21.674992>,  <35.934513, 35.877941, 21.733686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348972, 35.256210, 21.674992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979671, 35.176857, 21.543386>,  <35.758091, 35.129246, 21.464422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979671, 35.176857, 21.543386>,  <36.348972, 35.256210, 21.674992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979671, 35.176857, 21.543386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363343, -0.172570, -0.915533,
		0.124845, -0.964814, 0.231405,
		-0.923253, -0.198379, -0.329014,
		35.702694, 35.117344, 21.444683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545540, 34.722980, 21.296762>,  <36.348972, 35.256210, 21.674992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545540, 34.722980, 21.296762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.173721, 34.822105, 21.187563>,  <35.950630, 34.881580, 21.122044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.173721, 34.822105, 21.187563>,  <36.545540, 34.722980, 21.296762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173721, 34.822105, 21.187563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219029, -0.224475, -0.949546,
		-0.296587, -0.942445, 0.154384,
		-0.929549, 0.247808, -0.272999,
		35.894855, 34.896446, 21.105663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284229, 34.199715, 20.796034>,  <36.545540, 34.722980, 21.296762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284229, 34.199715, 20.796034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.056610, 34.518665, 20.715662>,  <35.920040, 34.710037, 20.667439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.056610, 34.518665, 20.715662>,  <36.284229, 34.199715, 20.796034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056610, 34.518665, 20.715662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105860, -0.171280, -0.979519,
		-0.815463, -0.578662, 0.013055,
		-0.569046, 0.797379, -0.200930,
		35.885895, 34.757877, 20.655382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669506, 33.934181, 20.307070>,  <36.284229, 34.199715, 20.796034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669506, 33.934181, 20.307070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.767700, 34.321934, 20.309271>,  <35.826614, 34.554585, 20.310593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.767700, 34.321934, 20.309271>,  <35.669506, 33.934181, 20.307070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767700, 34.321934, 20.309271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198177, -0.044625, -0.979150,
		-0.948928, 0.241454, -0.203065,
		0.245481, 0.969386, 0.005504,
		35.841343, 34.612751, 20.310923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286987, 33.489109, 19.769220>,  <35.669506, 33.934181, 20.307070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286987, 33.489109, 19.769220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.928764, 33.382938, 19.626375>,  <34.713829, 33.319237, 19.540668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.928764, 33.382938, 19.626375>,  <35.286987, 33.489109, 19.769220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928764, 33.382938, 19.626375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309995, -0.203555, 0.928692,
		-0.319188, 0.942399, 0.100015,
		-0.895557, -0.265423, -0.357112,
		34.660099, 33.303310, 19.519241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746681, 33.950981, 20.103905>,  <35.286987, 33.489109, 19.769220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746681, 33.950981, 20.103905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.588543, 33.608696, 19.970358>,  <34.493660, 33.403324, 19.890230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.588543, 33.608696, 19.970358>,  <34.746681, 33.950981, 20.103905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588543, 33.608696, 19.970358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554458, -0.067466, 0.829473,
		-0.732312, 0.513041, -0.447782,
		-0.395344, -0.855709, -0.333865,
		34.469940, 33.351982, 19.870199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334686, 33.806576, 20.661190>,  <34.746681, 33.950981, 20.103905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334686, 33.806576, 20.661190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290943, 33.488575, 20.422523>,  <34.264698, 33.297775, 20.279324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290943, 33.488575, 20.422523>,  <34.334686, 33.806576, 20.661190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290943, 33.488575, 20.422523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536015, -0.458347, 0.708947,
		-0.837095, 0.397355, -0.376006,
		-0.109362, -0.795001, -0.596668,
		34.258133, 33.250076, 20.243523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707275, 33.828735, 20.446199>,  <34.334686, 33.806576, 20.661190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707275, 33.828735, 20.446199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.855354, 33.458858, 20.481749>,  <33.944202, 33.236931, 20.503078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.855354, 33.458858, 20.481749>,  <33.707275, 33.828735, 20.446199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855354, 33.458858, 20.481749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665693, -0.197341, 0.719659,
		-0.647926, -0.325576, -0.688616,
		0.370196, -0.924693, 0.088872,
		33.966412, 33.181450, 20.508410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157143, 33.568302, 20.664043>,  <33.707275, 33.828735, 20.446199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157143, 33.568302, 20.664043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.439098, 33.293385, 20.734184>,  <33.608273, 33.128433, 20.776268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.439098, 33.293385, 20.734184>,  <33.157143, 33.568302, 20.664043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439098, 33.293385, 20.734184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323716, -0.091746, 0.941696,
		-0.631137, -0.720559, -0.287160,
		0.704893, -0.687298, 0.175352,
		33.650566, 33.087196, 20.786789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768623, 32.976742, 20.945820>,  <33.157143, 33.568302, 20.664043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768623, 32.976742, 20.945820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.135895, 32.883705, 21.074100>,  <33.356258, 32.827885, 21.151070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.135895, 32.883705, 21.074100>,  <32.768623, 32.976742, 20.945820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135895, 32.883705, 21.074100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378315, -0.274510, 0.884037,
		-0.117583, -0.933031, -0.340041,
		0.918178, -0.232590, 0.320702,
		33.411350, 32.813927, 21.170311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712311, 32.361477, 21.290800>,  <32.768623, 32.976742, 20.945820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712311, 32.361477, 21.290800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.067474, 32.491879, 21.420624>,  <33.280571, 32.570118, 21.498518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.067474, 32.491879, 21.420624>,  <32.712311, 32.361477, 21.290800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067474, 32.491879, 21.420624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223751, -0.310399, 0.923898,
		0.401937, -0.892958, -0.202663,
		0.887909, 0.326003, 0.324561,
		33.333847, 32.589680, 21.517992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113262, 31.871662, 21.683720>,  <32.712311, 32.361477, 21.290800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113262, 31.871662, 21.683720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.237339, 32.231106, 21.807835>,  <33.311783, 32.446774, 21.882303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.237339, 32.231106, 21.807835>,  <33.113262, 31.871662, 21.683720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237339, 32.231106, 21.807835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001367, -0.326810, 0.945089,
		0.950674, -0.292733, -0.102601,
		0.310190, 0.898611, 0.310290,
		33.330395, 32.500690, 21.900921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594788, 31.236814, 21.766737>,  <33.113262, 31.871662, 21.683720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594788, 31.236814, 21.766737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.518993, 30.850700, 21.838652>,  <33.473518, 30.619032, 21.881800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.518993, 30.850700, 21.838652>,  <33.594788, 31.236814, 21.766737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518993, 30.850700, 21.838652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211703, -0.138633, -0.967452,
		0.958790, -0.221377, -0.178085,
		-0.189483, -0.965284, 0.179786,
		33.462147, 30.561115, 21.892588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963810, 30.757515, 21.191381>,  <33.594788, 31.236814, 21.766737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963810, 30.757515, 21.191381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.669193, 30.544752, 21.358517>,  <33.492424, 30.417095, 21.458797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.669193, 30.544752, 21.358517>,  <33.963810, 30.757515, 21.191381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669193, 30.544752, 21.358517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367583, -0.203800, -0.907385,
		0.567799, -0.821914, -0.045414,
		-0.736537, -0.531906, 0.417839,
		33.448231, 30.385180, 21.483868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916550, 30.210432, 20.861908>,  <33.963810, 30.757515, 21.191381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916550, 30.210432, 20.861908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.563107, 30.191935, 21.048281>,  <33.351040, 30.180836, 21.160105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.563107, 30.191935, 21.048281>,  <33.916550, 30.210432, 20.861908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563107, 30.191935, 21.048281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451793, -0.177066, -0.874375,
		0.122935, -0.983112, 0.135565,
		-0.883612, -0.046244, 0.465930,
		33.298023, 30.178062, 21.188059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534542, 29.602140, 20.628178>,  <33.916550, 30.210432, 20.861908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534542, 29.602140, 20.628178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.260067, 29.862684, 20.757717>,  <33.095383, 30.019011, 20.835442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.260067, 29.862684, 20.757717>,  <33.534542, 29.602140, 20.628178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260067, 29.862684, 20.757717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481364, -0.072809, -0.873491,
		-0.545380, -0.755266, 0.363503,
		-0.686184, 0.651362, 0.323849,
		33.054211, 30.058092, 20.854872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837128, 29.284546, 20.507360>,  <33.534542, 29.602140, 20.628178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837128, 29.284546, 20.507360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.830685, 29.683464, 20.536034>,  <32.826817, 29.922815, 20.553238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.830685, 29.683464, 20.536034>,  <32.837128, 29.284546, 20.507360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830685, 29.683464, 20.536034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416875, 0.058463, -0.907082,
		-0.908821, -0.044495, 0.414806,
		-0.016110, 0.997298, 0.071681,
		32.825851, 29.982653, 20.557537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133087, 29.498436, 20.401487>,  <32.837128, 29.284546, 20.507360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133087, 29.498436, 20.401487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343964, 29.829578, 20.324835>,  <32.470490, 30.028265, 20.278843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343964, 29.829578, 20.324835>,  <32.133087, 29.498436, 20.401487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343964, 29.829578, 20.324835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550771, 0.161171, -0.818948,
		-0.647087, 0.537286, 0.540927,
		0.527191, 0.827858, -0.191630,
		32.502121, 30.077936, 20.267345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719074, 29.939510, 20.012070>,  <32.133087, 29.498436, 20.401487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719074, 29.939510, 20.012070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064903, 30.129406, 19.946173>,  <32.272400, 30.243343, 19.906635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064903, 30.129406, 19.946173>,  <31.719074, 29.939510, 20.012070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064903, 30.129406, 19.946173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365588, 0.369311, -0.854374,
		-0.344763, 0.798895, 0.492854,
		0.864572, 0.474738, -0.164742,
		32.324276, 30.271828, 19.896749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512129, 30.659389, 19.781614>,  <31.719074, 29.939510, 20.012070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512129, 30.659389, 19.781614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.887024, 30.584179, 19.664154>,  <32.111961, 30.539053, 19.593678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.887024, 30.584179, 19.664154>,  <31.512129, 30.659389, 19.781614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887024, 30.584179, 19.664154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205261, 0.383276, -0.900537,
		0.281876, 0.904293, 0.320626,
		0.937237, -0.188028, -0.293652,
		32.168194, 30.527771, 19.576057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752245, 31.248796, 19.527605>,  <31.512129, 30.659389, 19.781614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752245, 31.248796, 19.527605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978987, 30.974413, 19.345118>,  <32.115032, 30.809782, 19.235624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978987, 30.974413, 19.345118>,  <31.752245, 31.248796, 19.527605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978987, 30.974413, 19.345118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168127, 0.445806, -0.879199,
		0.806480, 0.575081, 0.137378,
		0.566854, -0.685959, -0.456220,
		32.149044, 30.768625, 19.208252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.328876, 29.235229, 33.896412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674232, 29.309645, 34.084003>,  <35.881447, 29.354294, 34.196560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674232, 29.309645, 34.084003>,  <35.328876, 29.235229, 33.896412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674232, 29.309645, 34.084003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497406, -0.158175, -0.852976,
		-0.084504, 0.969727, -0.229104,
		0.863392, 0.186037, 0.468982,
		35.933250, 29.365456, 34.224697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779114, 29.531872, 33.518192>,  <35.328876, 29.235229, 33.896412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779114, 29.531872, 33.518192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054089, 29.381193, 33.766556>,  <36.219074, 29.290787, 33.915573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054089, 29.381193, 33.766556>,  <35.779114, 29.531872, 33.518192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054089, 29.381193, 33.766556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628644, -0.119449, -0.768465,
		0.363646, 0.918603, 0.154694,
		0.687436, -0.376697, 0.620912,
		36.260319, 29.268185, 33.952827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452415, 29.753036, 33.287827>,  <35.779114, 29.531872, 33.518192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452415, 29.753036, 33.287827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515305, 29.358049, 33.282345>,  <36.553040, 29.121058, 33.279057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515305, 29.358049, 33.282345>,  <36.452415, 29.753036, 33.287827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515305, 29.358049, 33.282345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321892, -0.038123, -0.946008,
		0.933631, 0.153144, -0.323852,
		0.157222, -0.987468, -0.013703,
		36.562469, 29.061810, 33.278233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954388, 29.497932, 32.745731>,  <36.452415, 29.753036, 33.287827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954388, 29.497932, 32.745731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679142, 29.224874, 32.844112>,  <36.513996, 29.061039, 32.903141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679142, 29.224874, 32.844112>,  <36.954388, 29.497932, 32.745731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679142, 29.224874, 32.844112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265979, -0.078070, -0.960812,
		0.675097, -0.726567, -0.127849,
		-0.688114, -0.682646, 0.245956,
		36.472710, 29.020081, 32.917900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020889, 29.020334, 32.337082>,  <36.954388, 29.497932, 32.745731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020889, 29.020334, 32.337082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.641705, 28.960922, 32.449726>,  <36.414192, 28.925276, 32.517311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.641705, 28.960922, 32.449726>,  <37.020889, 29.020334, 32.337082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641705, 28.960922, 32.449726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273294, -0.074142, -0.959069,
		0.163330, -0.986125, 0.029691,
		-0.947963, -0.148530, 0.281612,
		36.357315, 28.916363, 32.534210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748486, 28.578030, 31.846636>,  <37.020889, 29.020334, 32.337082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748486, 28.578030, 31.846636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439960, 28.751133, 32.033310>,  <36.254845, 28.854994, 32.145313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439960, 28.751133, 32.033310>,  <36.748486, 28.578030, 31.846636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439960, 28.751133, 32.033310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394218, 0.250818, -0.884128,
		-0.499665, -0.865917, -0.022859,
		-0.771315, 0.432756, 0.466685,
		36.208565, 28.880960, 32.173317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122509, 28.243290, 31.586565>,  <36.748486, 28.578030, 31.846636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122509, 28.243290, 31.586565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020214, 28.593645, 31.750233>,  <35.958839, 28.803858, 31.848434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020214, 28.593645, 31.750233>,  <36.122509, 28.243290, 31.586565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020214, 28.593645, 31.750233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550241, 0.216126, -0.806551,
		-0.794881, -0.431404, 0.426679,
		-0.255733, 0.875888, 0.409171,
		35.943493, 28.856411, 31.872984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437477, 28.294376, 31.592955>,  <36.122509, 28.243290, 31.586565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437477, 28.294376, 31.592955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.562717, 28.672791, 31.626398>,  <35.637859, 28.899839, 31.646463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.562717, 28.672791, 31.626398>,  <35.437477, 28.294376, 31.592955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562717, 28.672791, 31.626398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619621, 0.270197, -0.736928,
		-0.719749, 0.178926, 0.670781,
		0.313099, 0.946033, 0.083607,
		35.656647, 28.956600, 31.651480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789204, 28.799225, 31.705641>,  <35.437477, 28.294376, 31.592955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789204, 28.799225, 31.705641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089489, 29.000347, 31.534241>,  <35.269661, 29.121021, 31.431400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089489, 29.000347, 31.534241>,  <34.789204, 28.799225, 31.705641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089489, 29.000347, 31.534241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603038, 0.256697, -0.755282,
		-0.269766, 0.825404, 0.495918,
		0.750714, 0.502807, -0.428502,
		35.314705, 29.151190, 31.405689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490280, 29.208006, 31.339245>,  <34.789204, 28.799225, 31.705641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490280, 29.208006, 31.339245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.843239, 29.284906, 31.167467>,  <35.055012, 29.331047, 31.064402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.843239, 29.284906, 31.167467>,  <34.490280, 29.208006, 31.339245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843239, 29.284906, 31.167467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466306, 0.235562, -0.852683,
		-0.062768, 0.952654, 0.297506,
		0.882394, 0.192250, -0.429443,
		35.107956, 29.342581, 31.038635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489616, 29.950506, 30.925762>,  <34.490280, 29.208006, 31.339245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489616, 29.950506, 30.925762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798176, 29.738634, 30.784687>,  <34.983311, 29.611511, 30.700043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798176, 29.738634, 30.784687>,  <34.489616, 29.950506, 30.925762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798176, 29.738634, 30.784687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230342, 0.284232, -0.930674,
		0.593203, 0.799158, 0.097248,
		0.771397, -0.529678, -0.352686,
		35.029594, 29.579731, 30.678881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618179, 30.321014, 30.382397>,  <34.489616, 29.950506, 30.925762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618179, 30.321014, 30.382397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766991, 29.953907, 30.326824>,  <34.856277, 29.733643, 30.293480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766991, 29.953907, 30.326824>,  <34.618179, 30.321014, 30.382397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766991, 29.953907, 30.326824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237411, 0.050617, -0.970089,
		0.897348, 0.393882, -0.199057,
		0.372025, -0.917766, -0.138933,
		34.878597, 29.678577, 30.285145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878120, 30.988173, 30.370691>,  <34.618179, 30.321014, 30.382397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878120, 30.988173, 30.370691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574959, 31.246284, 30.409044>,  <34.393063, 31.401152, 30.432056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574959, 31.246284, 30.409044>,  <34.878120, 30.988173, 30.370691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574959, 31.246284, 30.409044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153301, -0.319032, 0.935263,
		0.634097, 0.694142, 0.340718,
		-0.757905, 0.645280, 0.095884,
		34.347588, 31.439869, 30.437809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003662, 31.197367, 31.065529>,  <34.878120, 30.988173, 30.370691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003662, 31.197367, 31.065529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635956, 31.313780, 30.959505>,  <34.415333, 31.383627, 30.895891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635956, 31.313780, 30.959505>,  <35.003662, 31.197367, 31.065529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635956, 31.313780, 30.959505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308890, -0.115916, 0.944008,
		0.244012, 0.949665, 0.196454,
		-0.919263, 0.291032, -0.265057,
		34.360176, 31.401089, 30.879988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956871, 31.748478, 31.460413>,  <35.003662, 31.197367, 31.065529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956871, 31.748478, 31.460413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585464, 31.642042, 31.356831>,  <34.362621, 31.578180, 31.294682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585464, 31.642042, 31.356831>,  <34.956871, 31.748478, 31.460413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585464, 31.642042, 31.356831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308510, 0.164817, 0.936833,
		-0.206599, 0.949754, -0.235126,
		-0.928514, -0.266087, -0.258958,
		34.306911, 31.562216, 31.279142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478352, 32.258183, 31.753120>,  <34.956871, 31.748478, 31.460413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478352, 32.258183, 31.753120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.225147, 31.961298, 31.665098>,  <34.073223, 31.783169, 31.612284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.225147, 31.961298, 31.665098>,  <34.478352, 32.258183, 31.753120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225147, 31.961298, 31.665098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471165, 0.143829, 0.870239,
		-0.614248, 0.654554, -0.440748,
		-0.633011, -0.742208, -0.220057,
		34.035244, 31.738636, 31.599081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720226, 32.432655, 31.803135>,  <34.478352, 32.258183, 31.753120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720226, 32.432655, 31.803135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763977, 32.048100, 31.904146>,  <33.790230, 31.817368, 31.964754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763977, 32.048100, 31.904146>,  <33.720226, 32.432655, 31.803135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763977, 32.048100, 31.904146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497830, 0.166911, 0.851062,
		-0.860349, -0.218806, -0.460351,
		0.109380, -0.961387, 0.252530,
		33.796791, 31.759684, 31.979906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084896, 32.407379, 32.057796>,  <33.720226, 32.432655, 31.803135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084896, 32.407379, 32.057796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243443, 32.052979, 32.154045>,  <33.338570, 31.840338, 32.211796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243443, 32.052979, 32.154045>,  <33.084896, 32.407379, 32.057796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243443, 32.052979, 32.154045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556340, -0.023299, 0.830628,
		-0.730331, -0.463098, -0.502153,
		0.396362, -0.886001, 0.240624,
		33.362350, 31.787178, 32.226231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521656, 31.938761, 32.296082>,  <33.084896, 32.407379, 32.057796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521656, 31.938761, 32.296082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865822, 31.803926, 32.448956>,  <33.072319, 31.723026, 32.540680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865822, 31.803926, 32.448956>,  <32.521656, 31.938761, 32.296082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865822, 31.803926, 32.448956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427863, -0.070477, 0.901092,
		-0.276812, -0.938831, -0.204867,
		0.860411, -0.337088, 0.382182,
		33.123947, 31.702801, 32.563610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419785, 31.273584, 32.585629>,  <32.521656, 31.938761, 32.296082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419785, 31.273584, 32.585629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735790, 31.434517, 32.770672>,  <32.925396, 31.531076, 32.881699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735790, 31.434517, 32.770672>,  <32.419785, 31.273584, 32.585629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735790, 31.434517, 32.770672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463896, -0.101051, 0.880108,
		0.400842, -0.909900, 0.106808,
		0.790017, 0.402332, 0.462604,
		32.972794, 31.555216, 32.909454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439953, 30.966665, 33.197701>,  <32.419785, 31.273584, 32.585629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439953, 30.966665, 33.197701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696041, 31.262651, 33.280235>,  <32.849693, 31.440243, 33.329758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696041, 31.262651, 33.280235>,  <32.439953, 30.966665, 33.197701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696041, 31.262651, 33.280235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282186, -0.023294, 0.959077,
		0.714489, -0.672242, 0.193895,
		0.640216, 0.739964, 0.206340,
		32.888107, 31.484640, 33.342136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634464, 30.767359, 33.860367>,  <32.439953, 30.966665, 33.197701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634464, 30.767359, 33.860367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738907, 31.150522, 33.812634>,  <32.801571, 31.380421, 33.783993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738907, 31.150522, 33.812634>,  <32.634464, 30.767359, 33.860367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738907, 31.150522, 33.812634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190602, 0.172344, 0.966420,
		0.946306, -0.229591, 0.227579,
		0.261103, 0.957907, -0.119330,
		32.817238, 31.437895, 33.776836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041977, 30.954578, 34.359753>,  <32.634464, 30.767359, 33.860367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041977, 30.954578, 34.359753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937271, 31.335310, 34.295872>,  <32.874447, 31.563749, 34.257545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937271, 31.335310, 34.295872>,  <33.041977, 30.954578, 34.359753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937271, 31.335310, 34.295872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145991, 0.124516, 0.981418,
		0.954027, 0.280211, 0.106365,
		-0.261760, 0.951829, -0.159700,
		32.858742, 31.620859, 34.247963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418400, 31.387844, 34.871117>,  <33.041977, 30.954578, 34.359753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418400, 31.387844, 34.871117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077492, 31.555618, 34.746086>,  <32.872948, 31.656282, 34.671066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077492, 31.555618, 34.746086>,  <33.418400, 31.387844, 34.871117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077492, 31.555618, 34.746086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308052, 0.080502, 0.947957,
		0.422770, 0.904208, 0.060598,
		-0.852273, 0.419436, -0.312577,
		32.821812, 31.681450, 34.652313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261127, 31.897900, 35.325237>,  <33.418400, 31.387844, 34.871117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261127, 31.897900, 35.325237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901340, 31.861912, 35.154186>,  <32.685467, 31.840319, 35.051556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901340, 31.861912, 35.154186>,  <33.261127, 31.897900, 35.325237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901340, 31.861912, 35.154186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436222, 0.242748, 0.866477,
		0.025849, 0.965908, -0.257591,
		-0.899468, -0.089969, -0.427625,
		32.631500, 31.834921, 35.025898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986931, 32.391075, 35.536213>,  <33.261127, 31.897900, 35.325237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986931, 32.391075, 35.536213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672688, 32.162735, 35.440754>,  <32.484142, 32.025730, 35.383480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672688, 32.162735, 35.440754>,  <32.986931, 32.391075, 35.536213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672688, 32.162735, 35.440754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410880, 0.192954, 0.891037,
		-0.462599, 0.798061, -0.386136,
		-0.785608, -0.570848, -0.238647,
		32.437004, 31.991480, 35.369160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385349, 32.908657, 35.153183>,  <32.986931, 32.391075, 35.536213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385349, 32.908657, 35.153183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634132, 33.142746, 35.361290>,  <33.783401, 33.283199, 35.486156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634132, 33.142746, 35.361290>,  <33.385349, 32.908657, 35.153183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634132, 33.142746, 35.361290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137712, 0.572313, -0.808389,
		-0.770843, 0.574435, 0.275365,
		0.621962, 0.585220, 0.520270,
		33.820721, 33.318314, 35.517372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141205, 33.596107, 35.319241>,  <33.385349, 32.908657, 35.153183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141205, 33.596107, 35.319241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536015, 33.559795, 35.266254>,  <33.772900, 33.538010, 35.234463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536015, 33.559795, 35.266254>,  <33.141205, 33.596107, 35.319241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536015, 33.559795, 35.266254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047816, 0.621330, -0.782088,
		0.153303, 0.778272, 0.608926,
		0.987022, -0.090780, -0.132466,
		33.832123, 33.532562, 35.226513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429798, 34.246799, 34.969372>,  <33.141205, 33.596107, 35.319241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429798, 34.246799, 34.969372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757751, 34.027981, 34.901802>,  <33.954525, 33.896690, 34.861259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757751, 34.027981, 34.901802>,  <33.429798, 34.246799, 34.969372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757751, 34.027981, 34.901802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158265, 0.500096, -0.851385,
		0.550222, 0.671303, 0.496598,
		0.819883, -0.547044, -0.168920,
		34.003716, 33.863869, 34.851128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021004, 34.808002, 34.886726>,  <33.429798, 34.246799, 34.969372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021004, 34.808002, 34.886726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087215, 34.454319, 34.712009>,  <34.126942, 34.242111, 34.607182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087215, 34.454319, 34.712009>,  <34.021004, 34.808002, 34.886726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087215, 34.454319, 34.712009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134800, 0.459026, -0.878137,
		0.976950, 0.086475, 0.195171,
		0.165525, -0.884204, -0.436788,
		34.136871, 34.189056, 34.580975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608913, 34.808960, 34.510372>,  <34.021004, 34.808002, 34.886726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608913, 34.808960, 34.510372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414135, 34.512695, 34.325195>,  <34.297268, 34.334938, 34.214088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414135, 34.512695, 34.325195>,  <34.608913, 34.808960, 34.510372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414135, 34.512695, 34.325195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155192, 0.448219, -0.880349,
		0.859536, -0.500524, -0.103313,
		-0.486943, -0.740659, -0.462938,
		34.268051, 34.290497, 34.186314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970600, 34.678295, 33.998142>,  <34.608913, 34.808960, 34.510372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970600, 34.678295, 33.998142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632614, 34.488964, 33.898540>,  <34.429825, 34.375366, 33.838779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632614, 34.488964, 33.898540>,  <34.970600, 34.678295, 33.998142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632614, 34.488964, 33.898540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116206, 0.291969, -0.949342,
		0.522051, -0.831092, -0.191699,
		-0.844961, -0.473328, -0.249001,
		34.379128, 34.346966, 33.823841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125450, 34.367290, 33.355198>,  <34.970600, 34.678295, 33.998142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125450, 34.367290, 33.355198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725792, 34.383854, 33.354549>,  <34.485996, 34.393791, 33.354160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725792, 34.383854, 33.354549>,  <35.125450, 34.367290, 33.355198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725792, 34.383854, 33.354549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018747, 0.416721, -0.908841,
		-0.036958, -0.908091, -0.417139,
		-0.999141, 0.041409, -0.001623,
		34.426048, 34.396275, 33.354061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903908, 33.938606, 32.800003>,  <35.125450, 34.367290, 33.355198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903908, 33.938606, 32.800003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599670, 34.176605, 32.903900>,  <34.417126, 34.319405, 32.966240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599670, 34.176605, 32.903900>,  <34.903908, 33.938606, 32.800003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599670, 34.176605, 32.903900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237282, 0.117635, -0.964292,
		-0.604310, -0.795069, 0.051710,
		-0.760596, 0.595002, 0.259744,
		34.371490, 34.355106, 32.981823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380154, 33.536919, 32.449081>,  <34.903908, 33.938606, 32.800003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380154, 33.536919, 32.449081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268448, 33.914101, 32.521568>,  <34.201424, 34.140411, 32.565060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268448, 33.914101, 32.521568>,  <34.380154, 33.536919, 32.449081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268448, 33.914101, 32.521568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144301, 0.145373, -0.978797,
		-0.949309, -0.299496, 0.095472,
		-0.279267, 0.942958, 0.181221,
		34.184669, 34.196987, 32.575935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969452, 33.624252, 31.825245>,  <34.380154, 33.536919, 32.449081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969452, 33.624252, 31.825245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041634, 33.975128, 32.003220>,  <34.084942, 34.185654, 32.110004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041634, 33.975128, 32.003220>,  <33.969452, 33.624252, 31.825245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041634, 33.975128, 32.003220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032413, 0.457423, -0.888658,
		-0.983049, 0.145939, 0.110975,
		0.180452, 0.877192, 0.444939,
		34.095768, 34.238285, 32.136700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416008, 33.981674, 31.493225>,  <33.969452, 33.624252, 31.825245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416008, 33.981674, 31.493225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707855, 34.218246, 31.630548>,  <33.882965, 34.360191, 31.712942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707855, 34.218246, 31.630548>,  <33.416008, 33.981674, 31.493225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707855, 34.218246, 31.630548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010737, 0.492052, -0.870500,
		-0.683769, 0.638820, 0.352660,
		0.729619, 0.591434, 0.343309,
		33.926743, 34.395676, 31.733541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106705, 34.680744, 31.443329>,  <33.416008, 33.981674, 31.493225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106705, 34.680744, 31.443329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505806, 34.705643, 31.433474>,  <33.745266, 34.720581, 31.427561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505806, 34.705643, 31.433474>,  <33.106705, 34.680744, 31.443329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505806, 34.705643, 31.433474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058234, 0.625405, -0.778124,
		-0.033030, 0.777813, 0.627627,
		0.997756, 0.062251, -0.024638,
		33.805134, 34.724319, 31.426083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256432, 35.470474, 31.253096>,  <33.106705, 34.680744, 31.443329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256432, 35.470474, 31.253096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588005, 35.254749, 31.193754>,  <33.786949, 35.125317, 31.158150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588005, 35.254749, 31.193754>,  <33.256432, 35.470474, 31.253096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588005, 35.254749, 31.193754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164995, 0.489187, -0.856430,
		0.534453, 0.685449, 0.494489,
		0.828937, -0.539309, -0.148352,
		33.836685, 35.092957, 31.149248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668968, 35.933365, 30.909702>,  <33.256432, 35.470474, 31.253096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668968, 35.933365, 30.909702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831043, 35.574684, 30.838425>,  <33.928288, 35.359474, 30.795658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831043, 35.574684, 30.838425>,  <33.668968, 35.933365, 30.909702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831043, 35.574684, 30.838425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274019, 0.305065, -0.912058,
		0.872204, 0.320723, 0.369320,
		0.405184, -0.896701, -0.178194,
		33.952599, 35.305676, 30.784966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277645, 36.106209, 30.568672>,  <33.668968, 35.933365, 30.909702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277645, 36.106209, 30.568672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188629, 35.722317, 30.500101>,  <34.135220, 35.491982, 30.458960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188629, 35.722317, 30.500101>,  <34.277645, 36.106209, 30.568672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188629, 35.722317, 30.500101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399712, 0.070558, -0.913921,
		0.889216, -0.271908, 0.367915,
		-0.222543, -0.959733, -0.171427,
		34.121864, 35.434399, 30.448673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939106, 35.874626, 30.285576>,  <34.277645, 36.106209, 30.568672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939106, 35.874626, 30.285576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641834, 35.632591, 30.171347>,  <34.463470, 35.487370, 30.102808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641834, 35.632591, 30.171347>,  <34.939106, 35.874626, 30.285576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641834, 35.632591, 30.171347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313457, 0.062212, -0.947562,
		0.591120, -0.793728, 0.143432,
		-0.743184, -0.605083, -0.285574,
		34.418880, 35.451065, 30.085674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233311, 35.413418, 29.842697>,  <34.939106, 35.874626, 30.285576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233311, 35.413418, 29.842697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846390, 35.364929, 29.753584>,  <34.614239, 35.335835, 29.700115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846390, 35.364929, 29.753584>,  <35.233311, 35.413418, 29.842697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846390, 35.364929, 29.753584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229738, -0.046604, -0.972136,
		0.107463, -0.991531, 0.072929,
		-0.967301, -0.121224, -0.222784,
		34.556198, 35.328564, 29.686749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286797, 34.995461, 29.268772>,  <35.233311, 35.413418, 29.842697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286797, 34.995461, 29.268772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910084, 35.128323, 29.247890>,  <34.684055, 35.208038, 29.235361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910084, 35.128323, 29.247890>,  <35.286797, 34.995461, 29.268772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910084, 35.128323, 29.247890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002658, -0.147912, -0.988997,
		-0.336221, -0.931556, 0.138417,
		-0.941779, 0.332153, -0.052207,
		34.627548, 35.227966, 29.232229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877743, 34.465015, 28.940838>,  <35.286797, 34.995461, 29.268772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877743, 34.465015, 28.940838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.688454, 34.806839, 28.855247>,  <34.574883, 35.011932, 28.803894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.688454, 34.806839, 28.855247>,  <34.877743, 34.465015, 28.940838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688454, 34.806839, 28.855247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033320, -0.225358, -0.973706,
		-0.880314, -0.467906, 0.078170,
		-0.473219, 0.854563, -0.213976,
		34.546490, 35.063210, 28.791054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247875, 34.249668, 28.483059>,  <34.877743, 34.465015, 28.940838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247875, 34.249668, 28.483059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333939, 34.638317, 28.443762>,  <34.385578, 34.871506, 28.420183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333939, 34.638317, 28.443762>,  <34.247875, 34.249668, 28.483059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333939, 34.638317, 28.443762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173097, -0.061063, -0.983010,
		-0.961116, 0.228510, 0.155047,
		0.215160, 0.971625, -0.098243,
		34.398487, 34.929806, 28.414289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760014, 34.461407, 27.956169>,  <34.247875, 34.249668, 28.483059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760014, 34.461407, 27.956169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037018, 34.749111, 27.978401>,  <34.203220, 34.921734, 27.991739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037018, 34.749111, 27.978401>,  <33.760014, 34.461407, 27.956169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037018, 34.749111, 27.978401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086973, 0.159721, -0.983323,
		-0.716142, 0.676131, 0.173166,
		0.692514, 0.719260, 0.055578,
		34.244774, 34.964890, 27.995075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464012, 35.037331, 27.566811>,  <33.760014, 34.461407, 27.956169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464012, 35.037331, 27.566811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862392, 35.072479, 27.574444>,  <34.101421, 35.093567, 27.579023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862392, 35.072479, 27.574444>,  <33.464012, 35.037331, 27.566811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862392, 35.072479, 27.574444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017308, 0.020910, -0.999632,
		-0.088240, 0.995912, 0.019304,
		0.995949, 0.087873, 0.019083,
		34.161179, 35.098843, 27.580168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617031, 35.537842, 27.138153>,  <33.464012, 35.037331, 27.566811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617031, 35.537842, 27.138153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946587, 35.314449, 27.176718>,  <34.144321, 35.180412, 27.199858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946587, 35.314449, 27.176718>,  <33.617031, 35.537842, 27.138153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946587, 35.314449, 27.176718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211219, 0.144718, -0.966666,
		0.525915, 0.816794, 0.237195,
		0.823893, -0.558484, 0.096413,
		34.193756, 35.146904, 27.205641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086491, 35.803078, 26.723789>,  <33.617031, 35.537842, 27.138153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086491, 35.803078, 26.723789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310463, 35.475105, 26.771427>,  <34.444847, 35.278320, 26.800009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310463, 35.475105, 26.771427>,  <34.086491, 35.803078, 26.723789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310463, 35.475105, 26.771427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011898, -0.151681, -0.988358,
		0.828453, 0.551996, -0.094687,
		0.559931, -0.819935, 0.119093,
		34.478443, 35.229126, 26.807156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428658, 35.811718, 26.140062>,  <34.086491, 35.803078, 26.723789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428658, 35.811718, 26.140062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513184, 35.438782, 26.257427>,  <34.563900, 35.215019, 26.327847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513184, 35.438782, 26.257427>,  <34.428658, 35.811718, 26.140062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513184, 35.438782, 26.257427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268429, -0.233291, -0.934624,
		0.939837, 0.276259, 0.200969,
		0.211314, -0.932339, 0.293411,
		34.576576, 35.159081, 26.345451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121059, 35.668686, 26.070822>,  <34.428658, 35.811718, 26.140062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121059, 35.668686, 26.070822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866264, 35.361839, 26.040396>,  <34.713387, 35.177731, 26.022141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866264, 35.361839, 26.040396>,  <35.121059, 35.668686, 26.070822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866264, 35.361839, 26.040396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345493, -0.195886, -0.917749,
		0.689119, -0.610872, 0.389809,
		-0.636985, -0.767114, -0.076063,
		34.675167, 35.131706, 26.017576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453732, 35.229027, 25.631670>,  <35.121059, 35.668686, 26.070822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453732, 35.229027, 25.631670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098358, 35.046360, 25.613169>,  <34.885136, 34.936760, 25.602068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098358, 35.046360, 25.613169>,  <35.453732, 35.229027, 25.631670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098358, 35.046360, 25.613169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113499, -0.120931, -0.986151,
		0.444754, -0.881378, 0.159270,
		-0.888432, -0.456672, -0.046251,
		34.831829, 34.909359, 25.599293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671997, 34.617123, 25.299009>,  <35.453732, 35.229027, 25.631670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671997, 34.617123, 25.299009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288277, 34.723572, 25.261232>,  <35.058044, 34.787441, 25.238567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288277, 34.723572, 25.261232>,  <35.671997, 34.617123, 25.299009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288277, 34.723572, 25.261232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091840, -0.022230, -0.995526,
		-0.267037, -0.963681, -0.003116,
		-0.959300, 0.266128, -0.094440,
		35.000488, 34.803410, 25.232901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987545, 33.965427, 25.560261>,  <35.671997, 34.617123, 25.299009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987545, 33.965427, 25.560261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386169, 33.975655, 25.528711>,  <36.625343, 33.981792, 25.509783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386169, 33.975655, 25.528711>,  <35.987545, 33.965427, 25.560261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386169, 33.975655, 25.528711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078162, 0.027660, 0.996557,
		0.027660, -0.999290, 0.025567,
		-0.996557, -0.025567, 0.078871,
		36.685135, 33.983326, 25.505051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067722, 33.727474, 26.204884>,  <35.987545, 33.965427, 25.560261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067722, 33.727474, 26.204884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430344, 33.842258, 26.081072>,  <36.647919, 33.911129, 26.006784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430344, 33.842258, 26.081072>,  <36.067722, 33.727474, 26.204884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430344, 33.842258, 26.081072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260614, 0.196289, 0.945278,
		0.332018, -0.937615, 0.103160,
		0.906556, 0.286965, -0.309527,
		36.702312, 33.928349, 25.988214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573235, 33.291290, 26.473040>,  <36.067722, 33.727474, 26.204884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573235, 33.291290, 26.473040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.754307, 33.641109, 26.403469>,  <36.862949, 33.851002, 26.361727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.754307, 33.641109, 26.403469>,  <36.573235, 33.291290, 26.473040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754307, 33.641109, 26.403469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349518, 0.005411, 0.936914,
		0.820315, -0.484914, -0.303220,
		0.452682, 0.874545, -0.173925,
		36.890110, 33.903473, 26.351292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261063, 33.167671, 26.616064>,  <36.573235, 33.291290, 26.473040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261063, 33.167671, 26.616064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.227112, 33.565010, 26.647217>,  <37.206741, 33.803413, 26.665909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.227112, 33.565010, 26.647217>,  <37.261063, 33.167671, 26.616064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227112, 33.565010, 26.647217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238846, -0.055601, 0.969464,
		0.967341, 0.100882, -0.232537,
		-0.084872, 0.993344, 0.077881,
		37.201649, 33.863014, 26.670582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754883, 33.318447, 27.079447>,  <37.261063, 33.167671, 26.616064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754883, 33.318447, 27.079447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.515213, 33.638382, 27.093605>,  <37.371410, 33.830341, 27.102100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.515213, 33.638382, 27.093605>,  <37.754883, 33.318447, 27.079447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515213, 33.638382, 27.093605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124512, 0.049420, 0.990987,
		0.790875, 0.598184, -0.129200,
		-0.599177, 0.799834, 0.035396,
		37.335461, 33.878330, 27.104223>
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
