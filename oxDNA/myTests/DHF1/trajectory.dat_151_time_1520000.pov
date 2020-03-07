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
	<2.521592, 1.531264, 1.847338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.137589, 1.616211, 1.920311>,  <1.907186, 1.667179, 1.964095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.137589, 1.616211, 1.920311>,  <2.521592, 1.531264, 1.847338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.137589, 1.616211, 1.920311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242155, 0.956890, 0.160379,
		-0.140508, 0.198143, -0.970050,
		-0.960010, 0.212368, 0.182432,
		1.849586, 1.679921, 1.975041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.358793, 2.147072, 1.398962>,  <2.521592, 1.531264, 1.847338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.358793, 2.147072, 1.398962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.139221, 2.145706, 1.733307>,  <2.007478, 2.144886, 1.933914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.139221, 2.145706, 1.733307>,  <2.358793, 2.147072, 1.398962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.139221, 2.145706, 1.733307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183842, 0.975012, 0.124717,
		-0.815402, 0.222127, -0.534584,
		-0.548928, -0.003415, 0.835862,
		1.974543, 2.144682, 1.984066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.683375, 2.533025, 1.432050>,  <2.358793, 2.147072, 1.398962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.683375, 2.533025, 1.432050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.893089, 2.533226, 1.772667>,  <2.018918, 2.533347, 1.977037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.893089, 2.533226, 1.772667>,  <1.683375, 2.533025, 1.432050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.893089, 2.533226, 1.772667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314116, 0.929363, -0.193948,
		-0.791490, 0.369167, 0.487094,
		0.524286, 0.000504, 0.851542,
		2.050375, 2.533377, 2.028130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.453788, 3.204926, 1.853519>,  <1.683375, 2.533025, 1.432050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.453788, 3.204926, 1.853519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.805977, 3.052216, 1.965958>,  <2.017290, 2.960590, 2.033421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.805977, 3.052216, 1.965958>,  <1.453788, 3.204926, 1.853519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.805977, 3.052216, 1.965958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437844, 0.882192, -0.173291,
		-0.181823, 0.275655, 0.943904,
		0.880473, -0.381775, 0.281096,
		2.070119, 2.937683, 2.050287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.811589, 3.476447, 2.498768>,  <1.453788, 3.204926, 1.853519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.811589, 3.476447, 2.498768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.076813, 3.334946, 2.234886>,  <2.235947, 3.250045, 2.076557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.076813, 3.334946, 2.234886>,  <1.811589, 3.476447, 2.498768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.076813, 3.334946, 2.234886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370333, 0.920905, -0.121602,
		0.650542, -0.163681, 0.741622,
		0.663060, -0.353754, -0.659704,
		2.275731, 3.228819, 2.036975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.533125, 3.601034, 2.748304>,  <1.811589, 3.476447, 2.498768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.533125, 3.601034, 2.748304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.530067, 3.561661, 2.350258>,  <2.528233, 3.538037, 2.111430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.530067, 3.561661, 2.350258>,  <2.533125, 3.601034, 2.748304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.530067, 3.561661, 2.350258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451030, 0.887828, -0.091286,
		0.892476, -0.449524, 0.037609,
		-0.007645, -0.098434, -0.995114,
		2.527774, 3.532131, 2.051723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.197167, 3.820954, 2.547886>,  <2.533125, 3.601034, 2.748304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.197167, 3.820954, 2.547886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.987793, 3.855583, 2.208824>,  <2.862168, 3.876361, 2.005387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.987793, 3.855583, 2.208824>,  <3.197167, 3.820954, 2.547886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.987793, 3.855583, 2.208824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630144, 0.708950, -0.316713,
		0.573527, -0.699925, -0.425644,
		-0.523436, 0.086574, -0.847656,
		2.830762, 3.881555, 1.954527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.665287, 3.686464, 2.063485>,  <3.197167, 3.820954, 2.547886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.665287, 3.686464, 2.063485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.371094, 3.892601, 1.887535>,  <3.194578, 4.016283, 1.781965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.371094, 3.892601, 1.887535>,  <3.665287, 3.686464, 2.063485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.371094, 3.892601, 1.887535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672548, 0.633983, -0.381765,
		0.082133, -0.576617, -0.812876,
		-0.735482, 0.515342, -0.439874,
		3.150449, 4.047204, 1.755573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.249121, 4.635868, 1.774207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.108494, 4.929733, 1.542114>,  <4.024117, 5.106052, 1.402858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.108494, 4.929733, 1.542114>,  <4.249121, 4.635868, 1.774207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.108494, 4.929733, 1.542114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935053, -0.305727, 0.179461,
		-0.045550, 0.605641, 0.794433,
		-0.351569, 0.734663, -0.580233,
		4.003023, 5.150132, 1.368044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.640902, 4.973391, 2.112498>,  <4.249121, 4.635868, 1.774207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.640902, 4.973391, 2.112498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.615536, 4.984413, 1.713455>,  <3.600316, 4.991026, 1.474030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.615536, 4.984413, 1.713455>,  <3.640902, 4.973391, 2.112498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.615536, 4.984413, 1.713455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862090, -0.505107, 0.040848,
		-0.502772, 0.862617, 0.055787,
		-0.063415, 0.027556, -0.997607,
		3.596511, 4.992680, 1.414173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.041860, 5.181266, 1.889145>,  <3.640902, 4.973391, 2.112498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.041860, 5.181266, 1.889145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159256, 4.958229, 1.578545>,  <3.229693, 4.824407, 1.392184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159256, 4.958229, 1.578545>,  <3.041860, 5.181266, 1.889145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.159256, 4.958229, 1.578545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926770, -0.365161, -0.088070,
		-0.234441, 0.745486, -0.623930,
		0.293489, -0.557592, -0.776502,
		3.247303, 4.790951, 1.345594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.472731, 5.121495, 1.484080>,  <3.041860, 5.181266, 1.889145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.472731, 5.121495, 1.484080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.715622, 4.814636, 1.401367>,  <2.861357, 4.630521, 1.351740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.715622, 4.814636, 1.401367>,  <2.472731, 5.121495, 1.484080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.715622, 4.814636, 1.401367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793587, -0.598267, -0.110885,
		-0.038645, 0.231432, -0.972083,
		0.607228, -0.767148, -0.206781,
		2.897790, 4.584492, 1.339333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.084469, 4.552007, 1.263611>,  <2.472731, 5.121495, 1.484080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.084469, 4.552007, 1.263611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.436695, 4.391228, 1.364044>,  <2.648031, 4.294760, 1.424304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.436695, 4.391228, 1.364044>,  <2.084469, 4.552007, 1.263611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.436695, 4.391228, 1.364044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364909, -0.913089, -0.181962,
		0.302400, 0.068607, -0.950709,
		0.880565, -0.401948, 0.251083,
		2.700865, 4.270643, 1.439369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.201296, 3.861791, 0.915660>,  <2.084469, 4.552007, 1.263611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.201296, 3.861791, 0.915660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.460804, 3.848343, 1.219757>,  <2.616509, 3.840274, 1.402215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.460804, 3.848343, 1.219757>,  <2.201296, 3.861791, 0.915660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.460804, 3.848343, 1.219757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237834, -0.957937, 0.160599,
		0.722865, -0.285003, -0.629476,
		0.648769, -0.033619, 0.760242,
		2.655435, 3.838257, 1.447830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.680400, 3.335318, 0.739683>,  <2.201296, 3.861791, 0.915660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.680400, 3.335318, 0.739683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.646240, 3.392265, 1.134132>,  <2.625744, 3.426434, 1.370802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.646240, 3.392265, 1.134132>,  <2.680400, 3.335318, 0.739683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.646240, 3.392265, 1.134132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212798, -0.969507, 0.121542,
		0.973357, -0.199466, 0.113091,
		-0.085399, 0.142369, 0.986123,
		2.620620, 3.434976, 1.429969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.048879, 2.745265, 1.026138>,  <2.680400, 3.335318, 0.739683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.048879, 2.745265, 1.026138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804077, 2.880722, 1.312012>,  <2.657196, 2.961997, 1.483536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804077, 2.880722, 1.312012>,  <3.048879, 2.745265, 1.026138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.804077, 2.880722, 1.312012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373600, -0.920290, 0.116143,
		0.697047, -0.195926, 0.689738,
		-0.612004, 0.338644, 0.714683,
		2.620476, 2.982315, 1.526417>
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
