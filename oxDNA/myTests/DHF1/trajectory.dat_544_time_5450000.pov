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
	<2.314077, 3.953233, 4.019584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.581379, 4.214436, 3.877026>,  <2.741760, 4.371157, 3.791490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.581379, 4.214436, 3.877026>,  <2.314077, 3.953233, 4.019584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.581379, 4.214436, 3.877026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309788, -0.679820, -0.664737,
		-0.676363, 0.333806, -0.656586,
		0.668254, 0.653006, -0.356397,
		2.781855, 4.410337, 3.770107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.284066, 4.019654, 3.341450>,  <2.314077, 3.953233, 4.019584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.284066, 4.019654, 3.341450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.669434, 4.083782, 3.427353>,  <2.900654, 4.122259, 3.478895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.669434, 4.083782, 3.427353>,  <2.284066, 4.019654, 3.341450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.669434, 4.083782, 3.427353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267367, -0.629984, -0.729133,
		0.018398, 0.759880, -0.649803,
		0.963419, 0.160321, 0.214757,
		2.958459, 4.131878, 3.491780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.671102, 4.327942, 2.740966>,  <2.284066, 4.019654, 3.341450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.671102, 4.327942, 2.740966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.905453, 4.093609, 2.964947>,  <3.046063, 3.953009, 3.099335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.905453, 4.093609, 2.964947>,  <2.671102, 4.327942, 2.740966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.905453, 4.093609, 2.964947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122403, -0.619061, -0.775746,
		0.801102, 0.523032, -0.290986,
		0.585878, -0.585834, 0.559951,
		3.081216, 3.917859, 3.132932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.404579, 4.208263, 2.490144>,  <2.671102, 4.327942, 2.740966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.404579, 4.208263, 2.490144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.316257, 3.887184, 2.711746>,  <3.263264, 3.694537, 2.844707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.316257, 3.887184, 2.711746>,  <3.404579, 4.208263, 2.490144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.316257, 3.887184, 2.711746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249240, -0.595603, -0.763633,
		0.942934, -0.030534, 0.331576,
		-0.220804, -0.802698, 0.554005,
		3.250016, 3.646375, 2.877948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.907440, 3.715051, 2.396471>,  <3.404579, 4.208263, 2.490144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.907440, 3.715051, 2.396471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.612000, 3.480186, 2.528961>,  <3.434735, 3.339268, 2.608455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.612000, 3.480186, 2.528961>,  <3.907440, 3.715051, 2.396471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.612000, 3.480186, 2.528961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288795, -0.719546, -0.631547,
		0.609151, -0.370806, 0.701027,
		-0.738602, -0.587160, 0.331225,
		3.390419, 3.304038, 2.628329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.211169, 3.174121, 2.351531>,  <3.907440, 3.715051, 2.396471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.211169, 3.174121, 2.351531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.838760, 3.037807, 2.403786>,  <3.615315, 2.956019, 2.435139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.838760, 3.037807, 2.403786>,  <4.211169, 3.174121, 2.351531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.838760, 3.037807, 2.403786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181772, -0.743366, -0.643713,
		0.316479, -0.575564, 0.754034,
		-0.931021, -0.340784, 0.130638,
		3.559454, 2.935572, 2.442977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.138439, 2.407168, 2.387477>,  <4.211169, 3.174121, 2.351531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.138439, 2.407168, 2.387477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.766418, 2.480194, 2.259930>,  <3.543206, 2.524010, 2.183402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.766418, 2.480194, 2.259930>,  <4.138439, 2.407168, 2.387477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.766418, 2.480194, 2.259930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092718, -0.723134, -0.684457,
		-0.355541, -0.666144, 0.655624,
		-0.930050, 0.182565, -0.318867,
		3.487403, 2.534964, 2.164269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.762127, 1.753569, 2.153912>,  <4.138439, 2.407168, 2.387477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.762127, 1.753569, 2.153912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.562004, 2.036243, 1.953796>,  <3.441930, 2.205848, 1.833727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.562004, 2.036243, 1.953796>,  <3.762127, 1.753569, 2.153912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.562004, 2.036243, 1.953796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061105, -0.547543, -0.834544,
		-0.863689, -0.448099, 0.230758,
		-0.500308, 0.706686, -0.500288,
		3.411912, 2.248249, 1.803710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.769941, 1.723437, 0.586525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.458000, 1.944771, 0.469460>,  <3.270836, 2.077571, 0.399220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.458000, 1.944771, 0.469460>,  <3.769941, 1.723437, 0.586525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.458000, 1.944771, 0.469460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015271, 0.450583, 0.892604,
		0.625779, 0.700568, -0.342937,
		-0.779851, 0.553335, -0.292664,
		3.224045, 2.110771, 0.381660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.861535, 2.573356, 0.693700>,  <3.769941, 1.723437, 0.586525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.861535, 2.573356, 0.693700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.502869, 2.406235, 0.752258>,  <3.287669, 2.305962, 0.787393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.502869, 2.406235, 0.752258>,  <3.861535, 2.573356, 0.693700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.502869, 2.406235, 0.752258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062811, 0.447398, 0.892127,
		-0.438231, 0.790743, -0.427409,
		-0.896665, -0.417804, 0.146396,
		3.233869, 2.280894, 0.796177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.299723, 3.074620, 0.908030>,  <3.861535, 2.573356, 0.693700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.299723, 3.074620, 0.908030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.196716, 2.727348, 1.077713>,  <3.134912, 2.518986, 1.179523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.196716, 2.727348, 1.077713>,  <3.299723, 3.074620, 0.908030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.196716, 2.727348, 1.077713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112665, 0.462996, 0.879171,
		-0.959683, 0.178608, -0.217043,
		-0.257517, -0.868178, 0.424207,
		3.119461, 2.466895, 1.204975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.639119, 3.136520, 1.281212>,  <3.299723, 3.074620, 0.908030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.639119, 3.136520, 1.281212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.848763, 2.835617, 1.440922>,  <2.974549, 2.655076, 1.536748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.848763, 2.835617, 1.440922>,  <2.639119, 3.136520, 1.281212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.848763, 2.835617, 1.440922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185598, 0.356669, 0.915609,
		-0.831182, -0.553983, 0.047317,
		0.524109, -0.752256, 0.399275,
		3.005995, 2.609940, 1.560704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.267836, 2.787457, 1.760667>,  <2.639119, 3.136520, 1.281212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.267836, 2.787457, 1.760667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.646690, 2.724197, 1.872326>,  <2.874003, 2.686242, 1.939321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.646690, 2.724197, 1.872326>,  <2.267836, 2.787457, 1.760667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.646690, 2.724197, 1.872326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168376, 0.495599, 0.852075,
		-0.273100, -0.854032, 0.442771,
		0.947136, -0.158149, 0.279147,
		2.930831, 2.676753, 1.956070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.224068, 2.659800, 2.420348>,  <2.267836, 2.787457, 1.760667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.224068, 2.659800, 2.420348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.618698, 2.724907, 2.415066>,  <2.855476, 2.763971, 2.411896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.618698, 2.724907, 2.415066>,  <2.224068, 2.659800, 2.420348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.618698, 2.724907, 2.415066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044387, 0.345103, 0.937515,
		0.157156, -0.924343, 0.347695,
		0.986576, 0.162769, -0.013206,
		2.914671, 2.773737, 2.411104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.491559, 2.462286, 3.102535>,  <2.224068, 2.659800, 2.420348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.491559, 2.462286, 3.102535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.772484, 2.707245, 2.957359>,  <2.941039, 2.854220, 2.870254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.772484, 2.707245, 2.957359>,  <2.491559, 2.462286, 3.102535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.772484, 2.707245, 2.957359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030201, 0.535015, 0.844303,
		0.711229, -0.582002, 0.394242,
		0.702311, 0.612399, -0.362941,
		2.983177, 2.890964, 2.848477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.039265, 2.613589, 3.609485>,  <2.491559, 2.462286, 3.102535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.039265, 2.613589, 3.609485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.080444, 2.938042, 3.379192>,  <3.105152, 3.132714, 3.241017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.080444, 2.938042, 3.379192>,  <3.039265, 2.613589, 3.609485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.080444, 2.938042, 3.379192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139586, 0.584859, 0.799034,
		0.984844, -0.001895, 0.173433,
		0.102948, 0.811132, -0.575731,
		3.111329, 3.181381, 3.206473>
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
