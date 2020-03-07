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
	<5.709419, 4.901754, 0.175746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.347519, 4.845505, 0.014923>,  <5.130379, 4.811755, -0.081571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.347519, 4.845505, 0.014923>,  <5.709419, 4.901754, 0.175746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.347519, 4.845505, 0.014923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215901, -0.662275, 0.717481,
		-0.367168, 0.735946, 0.568833,
		-0.904751, -0.140624, -0.402057,
		5.076094, 4.803318, -0.105694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.181578, 5.111565, 0.695724>,  <5.709419, 4.901754, 0.175746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.181578, 5.111565, 0.695724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.066795, 4.832100, 0.433571>,  <4.997926, 4.664421, 0.276279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.066795, 4.832100, 0.433571>,  <5.181578, 5.111565, 0.695724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.066795, 4.832100, 0.433571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293205, -0.587264, 0.754422,
		-0.911969, 0.408648, -0.036332,
		-0.286957, -0.698661, -0.655384,
		4.980709, 4.622501, 0.236956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.477145, 4.873789, 0.798359>,  <5.181578, 5.111565, 0.695724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.477145, 4.873789, 0.798359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.665638, 4.545647, 0.668770>,  <4.778734, 4.348762, 0.591016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.665638, 4.545647, 0.668770>,  <4.477145, 4.873789, 0.798359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.665638, 4.545647, 0.668770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373940, -0.518487, 0.768986,
		-0.798818, -0.241224, -0.551091,
		0.471231, -0.820355, -0.323973,
		4.807007, 4.299540, 0.571578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.934196, 4.330882, 0.700700>,  <4.477145, 4.873789, 0.798359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.934196, 4.330882, 0.700700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308327, 4.214058, 0.780563>,  <4.532805, 4.143963, 0.828482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308327, 4.214058, 0.780563>,  <3.934196, 4.330882, 0.700700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.308327, 4.214058, 0.780563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293019, -0.323275, 0.899796,
		-0.198249, -0.900108, -0.387947,
		0.935327, -0.292060, 0.199660,
		4.588925, 4.126440, 0.840461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.887982, 3.681888, 0.892305>,  <3.934196, 4.330882, 0.700700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.887982, 3.681888, 0.892305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.233181, 3.805374, 1.052269>,  <4.440300, 3.879466, 1.148248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.233181, 3.805374, 1.052269>,  <3.887982, 3.681888, 0.892305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.233181, 3.805374, 1.052269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370831, -0.150500, 0.916425,
		0.343103, -0.939172, -0.015400,
		0.862998, 0.308717, 0.399911,
		4.492080, 3.897989, 1.172242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.993026, 3.184372, 1.404337>,  <3.887982, 3.681888, 0.892305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.993026, 3.184372, 1.404337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.238934, 3.480209, 1.513924>,  <4.386478, 3.657712, 1.579676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.238934, 3.480209, 1.513924>,  <3.993026, 3.184372, 1.404337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.238934, 3.480209, 1.513924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263085, -0.135173, 0.955256,
		0.743535, -0.659340, 0.111476,
		0.614770, 0.739594, 0.273968,
		4.423365, 3.702088, 1.596114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.302166, 2.913530, 1.908798>,  <3.993026, 3.184372, 1.404337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.302166, 2.913530, 1.908798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.410648, 3.291435, 1.982414>,  <4.475738, 3.518178, 2.026584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.410648, 3.291435, 1.982414>,  <4.302166, 2.913530, 1.908798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.410648, 3.291435, 1.982414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219718, -0.125392, 0.967471,
		0.937108, -0.302820, 0.173574,
		0.271205, 0.944763, 0.184041,
		4.492010, 3.574864, 2.037627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.809915, 2.906439, 2.488097>,  <4.302166, 2.913530, 1.908798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.809915, 2.906439, 2.488097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609737, 3.250984, 2.453201>,  <4.489631, 3.457711, 2.432264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609737, 3.250984, 2.453201>,  <4.809915, 2.906439, 2.488097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.609737, 3.250984, 2.453201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273115, -0.061446, 0.960017,
		0.821562, 0.504261, 0.266001,
		-0.500444, 0.861362, -0.087239,
		4.459604, 3.509393, 2.427030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.561271, 3.065632, 3.354430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.450105, 3.448593, 3.323082>,  <3.383405, 3.678370, 3.304273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.450105, 3.448593, 3.323082>,  <3.561271, 3.065632, 3.354430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.450105, 3.448593, 3.323082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798367, 0.184839, -0.573101,
		-0.534202, -0.221842, -0.815729,
		-0.277917, 0.957403, -0.078370,
		3.366730, 3.735814, 3.299571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.569782, 3.243851, 2.589390>,  <3.561271, 3.065632, 3.354430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.569782, 3.243851, 2.589390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.624372, 3.579071, 2.800690>,  <3.657125, 3.780203, 2.927469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.624372, 3.579071, 2.800690>,  <3.569782, 3.243851, 2.589390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.624372, 3.579071, 2.800690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689750, 0.302365, -0.657891,
		-0.711069, 0.454145, -0.536780,
		0.136475, 0.838050, 0.528249,
		3.665314, 3.830486, 2.959164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.344151, 3.856605, 2.227754>,  <3.569782, 3.243851, 2.589390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.344151, 3.856605, 2.227754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.654909, 3.884079, 2.478104>,  <3.841364, 3.900563, 2.628313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.654909, 3.884079, 2.478104>,  <3.344151, 3.856605, 2.227754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.654909, 3.884079, 2.478104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610594, 0.160399, -0.775530,
		-0.153656, 0.984660, 0.082675,
		0.776894, 0.068684, 0.625874,
		3.887977, 3.904684, 2.665866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.682238, 4.567078, 2.323331>,  <3.344151, 3.856605, 2.227754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.682238, 4.567078, 2.323331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.936571, 4.263458, 2.379272>,  <4.089171, 4.081286, 2.412837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.936571, 4.263458, 2.379272>,  <3.682238, 4.567078, 2.323331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.936571, 4.263458, 2.379272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519142, 0.286507, -0.805236,
		0.571145, 0.584600, 0.576225,
		0.635834, -0.759050, 0.139854,
		4.127321, 4.035743, 2.421229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.346139, 4.848123, 2.170943>,  <3.682238, 4.567078, 2.323331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.346139, 4.848123, 2.170943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.417521, 4.455307, 2.146446>,  <4.460350, 4.219617, 2.131748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.417521, 4.455307, 2.146446>,  <4.346139, 4.848123, 2.170943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.417521, 4.455307, 2.146446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617006, 0.160169, -0.770487,
		0.766458, 0.099711, 0.634508,
		0.178454, -0.982041, -0.061240,
		4.471057, 4.160695, 2.128074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.079451, 4.726582, 2.005173>,  <4.346139, 4.848123, 2.170943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.079451, 4.726582, 2.005173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.872431, 4.410004, 1.875092>,  <4.748219, 4.220057, 1.797043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.872431, 4.410004, 1.875092>,  <5.079451, 4.726582, 2.005173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.872431, 4.410004, 1.875092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420542, 0.095711, -0.902211,
		0.745176, -0.603699, 0.283301,
		-0.517549, -0.791446, -0.325202,
		4.717166, 4.172570, 1.777531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.588191, 4.334361, 1.663724>,  <5.079451, 4.726582, 2.005173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.588191, 4.334361, 1.663724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.239389, 4.206070, 1.515808>,  <5.030108, 4.129096, 1.427058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.239389, 4.206070, 1.515808>,  <5.588191, 4.334361, 1.663724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.239389, 4.206070, 1.515808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385102, 0.016845, -0.922720,
		0.302171, -0.947022, 0.108824,
		-0.872003, -0.320727, -0.369790,
		4.977788, 4.109852, 1.404871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.857101, 3.925536, 1.133922>,  <5.588191, 4.334361, 1.663724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.857101, 3.925536, 1.133922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.471686, 4.006348, 1.063744>,  <5.240438, 4.054835, 1.021636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.471686, 4.006348, 1.063744>,  <5.857101, 3.925536, 1.133922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.471686, 4.006348, 1.063744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217932, 0.212081, -0.952642,
		-0.155253, -0.956141, -0.248376,
		-0.963536, 0.202030, -0.175447,
		5.182625, 4.066957, 1.011109>
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
