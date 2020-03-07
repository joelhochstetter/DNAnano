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
	<1.406628, 1.547481, 1.390953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.565466, 1.381008, 1.063757>,  <1.660769, 1.281125, 0.867439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.565466, 1.381008, 1.063757>,  <1.406628, 1.547481, 1.390953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.565466, 1.381008, 1.063757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744035, 0.667796, 0.021429,
		0.537333, -0.617123, 0.574832,
		0.397095, -0.416181, -0.817990,
		1.684595, 1.256154, 0.818360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.085276, 1.440969, 1.516926>,  <1.406628, 1.547481, 1.390953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.085276, 1.440969, 1.516926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.041679, 1.502323, 1.124071>,  <2.015521, 1.539136, 0.888358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.041679, 1.502323, 1.124071>,  <2.085276, 1.440969, 1.516926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.041679, 1.502323, 1.124071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711194, 0.702322, 0.030761,
		0.694495, -0.695137, -0.185635,
		-0.108993, 0.153386, -0.982137,
		2.008982, 1.548339, 0.829430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.696707, 1.232047, 1.160819>,  <2.085276, 1.440969, 1.516926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.696707, 1.232047, 1.160819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.491556, 1.522312, 0.977354>,  <2.368465, 1.696471, 0.867275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.491556, 1.522312, 0.977354>,  <2.696707, 1.232047, 1.160819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.491556, 1.522312, 0.977354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792864, 0.605248, 0.070996,
		0.329123, -0.327244, -0.885770,
		-0.512878, 0.725662, -0.458661,
		2.337693, 1.740011, 0.839756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.111800, 1.422736, 0.579024>,  <2.696707, 1.232047, 1.160819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.111800, 1.422736, 0.579024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.865286, 1.693214, 0.740494>,  <2.717377, 1.855501, 0.837376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.865286, 1.693214, 0.740494>,  <3.111800, 1.422736, 0.579024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.865286, 1.693214, 0.740494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782106, 0.585545, 0.213186,
		-0.092215, 0.447100, -0.889718,
		-0.616285, 0.676195, 0.403675,
		2.680400, 1.896073, 0.861596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.328942, 1.986495, 0.286257>,  <3.111800, 1.422736, 0.579024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.328942, 1.986495, 0.286257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.104181, 2.137814, 0.580511>,  <2.969325, 2.228605, 0.757063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.104181, 2.137814, 0.580511>,  <3.328942, 1.986495, 0.286257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.104181, 2.137814, 0.580511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715483, 0.668580, 0.202695,
		-0.415152, 0.640229, -0.646340,
		-0.561902, 0.378296, 0.735635,
		2.935611, 2.251302, 0.801202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.327119, 2.781485, 0.304065>,  <3.328942, 1.986495, 0.286257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.327119, 2.781485, 0.304065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.220161, 2.684151, 0.677008>,  <3.155987, 2.625750, 0.900773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.220161, 2.684151, 0.677008>,  <3.327119, 2.781485, 0.304065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.220161, 2.684151, 0.677008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631529, 0.686553, 0.360301,
		-0.727786, 0.685152, -0.029907,
		-0.267394, -0.243335, 0.932357,
		3.139943, 2.611150, 0.956715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.176519, 3.441638, 0.620712>,  <3.327119, 2.781485, 0.304065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.176519, 3.441638, 0.620712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.248762, 3.192574, 0.925257>,  <3.292108, 3.043135, 1.107984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.248762, 3.192574, 0.925257>,  <3.176519, 3.441638, 0.620712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.248762, 3.192574, 0.925257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662742, 0.649015, 0.373568,
		-0.726743, 0.437118, 0.529881,
		0.180607, -0.622662, 0.761363,
		3.302944, 3.005775, 1.153666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.027831, 3.829566, 1.223647>,  <3.176519, 3.441638, 0.620712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.027831, 3.829566, 1.223647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.285376, 3.534958, 1.306576>,  <3.439902, 3.358193, 1.356333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.285376, 3.534958, 1.306576>,  <3.027831, 3.829566, 1.223647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.285376, 3.534958, 1.306576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694798, 0.676280, 0.244744,
		-0.320466, -0.013535, 0.947163,
		0.643861, -0.736520, 0.207321,
		3.478534, 3.314002, 1.368772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.446679, 4.202086, 1.217955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.633358, 3.950272, 1.466431>,  <4.745366, 3.799183, 1.615516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.633358, 3.950272, 1.466431>,  <4.446679, 4.202086, 1.217955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.633358, 3.950272, 1.466431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684062, -0.702138, -0.197639,
		0.560582, -0.332694, -0.758329,
		0.466698, -0.629537, 0.621189,
		4.773367, 3.761410, 1.652787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.818661, 3.595021, 0.906993>,  <4.446679, 4.202086, 1.217955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.818661, 3.595021, 0.906993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.634262, 3.557289, 1.259942>,  <4.523623, 3.534650, 1.471712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.634262, 3.557289, 1.259942>,  <4.818661, 3.595021, 0.906993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.634262, 3.557289, 1.259942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653470, -0.636643, -0.409466,
		0.600382, -0.765367, 0.231849,
		-0.460998, -0.094330, 0.882374,
		4.495963, 3.528990, 1.524654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.702302, 2.821675, 1.141120>,  <4.818661, 3.595021, 0.906993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.702302, 2.821675, 1.141120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.417877, 3.039215, 1.319386>,  <4.247222, 3.169739, 1.426346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.417877, 3.039215, 1.319386>,  <4.702302, 2.821675, 1.141120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.417877, 3.039215, 1.319386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702596, -0.574262, -0.420217,
		0.027394, -0.611924, 0.790442,
		-0.711062, 0.543850, 0.445666,
		4.204559, 3.202370, 1.453086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.332932, 2.295726, 1.463314>,  <4.702302, 2.821675, 1.141120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.332932, 2.295726, 1.463314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.072647, 2.599434, 1.459702>,  <3.916476, 2.781659, 1.457535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.072647, 2.599434, 1.459702>,  <4.332932, 2.295726, 1.463314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.072647, 2.599434, 1.459702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747362, -0.642518, -0.169174,
		-0.134251, -0.103334, 0.985545,
		-0.650712, 0.759271, -0.009031,
		3.877434, 2.827215, 1.456993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.640360, 2.065364, 1.915359>,  <4.332932, 2.295726, 1.463314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.640360, 2.065364, 1.915359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.510689, 2.384644, 1.712268>,  <3.432886, 2.576211, 1.590414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.510689, 2.384644, 1.712268>,  <3.640360, 2.065364, 1.915359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.510689, 2.384644, 1.712268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801135, -0.517069, -0.301367,
		-0.503079, 0.309056, 0.807091,
		-0.324182, 0.798201, -0.507722,
		3.413435, 2.624103, 1.559950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.837920, 2.222501, 2.132351>,  <3.640360, 2.065364, 1.915359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.837920, 2.222501, 2.132351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.922703, 2.370056, 1.770358>,  <2.973572, 2.458589, 1.553162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.922703, 2.370056, 1.770358>,  <2.837920, 2.222501, 2.132351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.922703, 2.370056, 1.770358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813583, -0.446438, -0.372526,
		-0.541439, 0.815239, 0.205496,
		0.211957, 0.368888, -0.904984,
		2.986290, 2.480723, 1.498863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.279236, 2.586607, 1.943590>,  <2.837920, 2.222501, 2.132351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.279236, 2.586607, 1.943590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.470680, 2.482040, 1.608307>,  <2.585546, 2.419300, 1.407137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.470680, 2.482040, 1.608307>,  <2.279236, 2.586607, 1.943590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.470680, 2.482040, 1.608307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861851, -0.322277, -0.391599,
		-0.167765, 0.909834, -0.379547,
		0.478610, -0.261417, -0.838209,
		2.614263, 2.403615, 1.356844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.771322, 2.629514, 1.422330>,  <2.279236, 2.586607, 1.943590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.771322, 2.629514, 1.422330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053589, 2.394913, 1.263309>,  <2.222949, 2.254152, 1.167896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053589, 2.394913, 1.263309>,  <1.771322, 2.629514, 1.422330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053589, 2.394913, 1.263309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708540, -0.586017, -0.393135,
		-0.002399, 0.559105, -0.829093,
		0.705667, -0.586503, -0.397554,
		2.265289, 2.218962, 1.144043>
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
