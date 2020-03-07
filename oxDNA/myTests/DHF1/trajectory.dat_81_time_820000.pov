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
	<1.721428, 3.742672, 1.649373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.625283, 3.537945, 1.979286>,  <1.567596, 3.415108, 2.177234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.625283, 3.537945, 1.979286>,  <1.721428, 3.742672, 1.649373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.625283, 3.537945, 1.979286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045394, -0.854691, -0.517149,
		0.969621, -0.086863, 0.228669,
		-0.240363, -0.511819, 0.824783,
		1.553174, 3.384399, 2.226721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.307144, 3.380215, 2.030847>,  <1.721428, 3.742672, 1.649373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.307144, 3.380215, 2.030847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.943903, 3.215321, 2.001427>,  <1.725958, 3.116384, 1.983775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.943903, 3.215321, 2.001427>,  <2.307144, 3.380215, 2.030847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.943903, 3.215321, 2.001427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392523, -0.776822, -0.492417,
		0.145857, -0.476035, 0.867246,
		-0.908103, -0.412236, -0.073550,
		1.671472, 3.091650, 1.979362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.170305, 2.692093, 2.420547>,  <2.307144, 3.380215, 2.030847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.170305, 2.692093, 2.420547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.985466, 2.725483, 2.067390>,  <1.874563, 2.745517, 1.855496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.985466, 2.725483, 2.067390>,  <2.170305, 2.692093, 2.420547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.985466, 2.725483, 2.067390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427855, -0.851047, -0.304398,
		-0.776792, -0.518412, 0.357552,
		-0.462097, 0.083474, -0.882892,
		1.846837, 2.750525, 1.802523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.699695, 2.049424, 2.264409>,  <2.170305, 2.692093, 2.420547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.699695, 2.049424, 2.264409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.913777, 2.256725, 1.997585>,  <2.042227, 2.381106, 1.837491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.913777, 2.256725, 1.997585>,  <1.699695, 2.049424, 2.264409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.913777, 2.256725, 1.997585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553731, -0.811595, -0.186268,
		-0.637917, -0.269680, -0.721343,
		0.535205, 0.518253, -0.667060,
		2.074339, 2.412201, 1.797467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.588046, 1.626372, 1.618616>,  <1.699695, 2.049424, 2.264409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.588046, 1.626372, 1.618616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.922556, 1.844990, 1.636213>,  <2.123262, 1.976160, 1.646772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.922556, 1.844990, 1.636213>,  <1.588046, 1.626372, 1.618616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.922556, 1.844990, 1.636213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517761, -0.760725, -0.391434,
		-0.180468, 0.350125, -0.919154,
		0.836275, 0.546543, 0.043994,
		2.173438, 2.008953, 1.649412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.015693, 1.518442, 0.919090>,  <1.588046, 1.626372, 1.618616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.015693, 1.518442, 0.919090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.195577, 1.616966, 1.262506>,  <2.303507, 1.676081, 1.468557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.195577, 1.616966, 1.262506>,  <2.015693, 1.518442, 0.919090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.195577, 1.616966, 1.262506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658269, -0.741085, -0.132191,
		0.603692, 0.624599, -0.495411,
		0.449708, 0.246311, 0.858542,
		2.330489, 1.690859, 1.520069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.723184, 1.611152, 0.717169>,  <2.015693, 1.518442, 0.919090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.723184, 1.611152, 0.717169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.694155, 1.527988, 1.107349>,  <2.676737, 1.478090, 1.341458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.694155, 1.527988, 1.107349>,  <2.723184, 1.611152, 0.717169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.694155, 1.527988, 1.107349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730249, -0.677225, -0.090015,
		0.679316, 0.705790, 0.200974,
		-0.072573, -0.207910, 0.975452,
		2.672383, 1.465615, 1.399985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.380287, 1.758794, 0.875493>,  <2.723184, 1.611152, 0.717169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.380287, 1.758794, 0.875493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.170036, 1.473499, 1.060970>,  <3.043886, 1.302323, 1.172257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.170036, 1.473499, 1.060970>,  <3.380287, 1.758794, 0.875493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.170036, 1.473499, 1.060970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559409, -0.700426, -0.443243,
		0.640920, 0.026414, 0.767153,
		-0.525626, -0.713236, 0.463694,
		3.012348, 1.259529, 1.200078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.548570, 0.631891, 2.586040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.322422, 0.308838, 2.519003>,  <4.186733, 0.115006, 2.478781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.322422, 0.308838, 2.519003>,  <4.548570, 0.631891, 2.586040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.322422, 0.308838, 2.519003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561571, 0.525710, -0.638958,
		0.604149, -0.267131, -0.750763,
		-0.565369, -0.807632, -0.167594,
		4.152811, 0.066548, 2.468725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.402065, 0.506785, 1.806287>,  <4.548570, 0.631891, 2.586040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.402065, 0.506785, 1.806287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.097298, 0.388672, 2.036865>,  <3.914438, 0.317804, 2.175212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.097298, 0.388672, 2.036865>,  <4.402065, 0.506785, 1.806287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.097298, 0.388672, 2.036865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583045, 0.700264, -0.411932,
		-0.282028, -0.649953, -0.705706,
		-0.761917, -0.295282, 0.576446,
		3.868722, 0.300087, 2.209799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.739885, 0.476777, 1.428449>,  <4.402065, 0.506785, 1.806287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.739885, 0.476777, 1.428449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.648972, 0.528374, 1.814548>,  <3.594423, 0.559332, 2.046208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.648972, 0.528374, 1.814548>,  <3.739885, 0.476777, 1.428449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.648972, 0.528374, 1.814548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497142, 0.836930, -0.228905,
		-0.837372, -0.531892, -0.126093,
		-0.227283, 0.128993, 0.965248,
		3.580786, 0.567071, 2.104123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.040532, 0.422291, 1.750893>,  <3.739885, 0.476777, 1.428449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.040532, 0.422291, 1.750893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.261723, 0.712631, 1.914532>,  <3.394437, 0.886835, 2.012715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.261723, 0.712631, 1.914532>,  <3.040532, 0.422291, 1.750893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.261723, 0.712631, 1.914532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767415, 0.634916, -0.089202,
		-0.324489, -0.264620, 0.908120,
		0.552975, 0.725850, 0.409097,
		3.427615, 0.930386, 2.037261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.671406, 0.682990, 2.246905>,  <3.040532, 0.422291, 1.750893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.671406, 0.682990, 2.246905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.917904, 0.973755, 2.125685>,  <3.065803, 1.148214, 2.052952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.917904, 0.973755, 2.125685>,  <2.671406, 0.682990, 2.246905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.917904, 0.973755, 2.125685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763779, 0.645460, -0.004893,
		0.192051, 0.234480, 0.952962,
		0.616246, 0.726912, -0.303052,
		3.102778, 1.191828, 2.034769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.706796, 1.334098, 2.716092>,  <2.671406, 0.682990, 2.246905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.706796, 1.334098, 2.716092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.739136, 1.400452, 2.322962>,  <2.758539, 1.440264, 2.087084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.739136, 1.400452, 2.322962>,  <2.706796, 1.334098, 2.716092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.739136, 1.400452, 2.322962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771210, 0.635075, 0.043749,
		0.631425, 0.754428, 0.179277,
		0.080849, 0.165885, -0.982826,
		2.763390, 1.450217, 2.028114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.842858, 1.956020, 2.678094>,  <2.706796, 1.334098, 2.716092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.842858, 1.956020, 2.678094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.678867, 1.874168, 2.322556>,  <2.580473, 1.825058, 2.109233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.678867, 1.874168, 2.322556>,  <2.842858, 1.956020, 2.678094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.678867, 1.874168, 2.322556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523390, 0.850877, 0.045523,
		0.746983, 0.483876, -0.455940,
		-0.409976, -0.204629, -0.888846,
		2.555875, 1.812780, 2.055902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.925594, 2.548477, 2.157793>,  <2.842858, 1.956020, 2.678094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.925594, 2.548477, 2.157793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.594692, 2.332314, 2.096333>,  <2.396151, 2.202615, 2.059456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.594692, 2.332314, 2.096333>,  <2.925594, 2.548477, 2.157793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.594692, 2.332314, 2.096333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531663, 0.841401, -0.096848,
		0.181619, 0.001573, -0.983368,
		-0.827254, -0.540410, -0.153651,
		2.346516, 2.170191, 2.050237>
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
