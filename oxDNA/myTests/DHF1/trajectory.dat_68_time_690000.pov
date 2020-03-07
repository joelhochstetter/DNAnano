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
	<2.892678, 3.501183, 3.842509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.733584, 3.724873, 4.133459>,  <2.638128, 3.859087, 4.308029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.733584, 3.724873, 4.133459>,  <2.892678, 3.501183, 3.842509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.733584, 3.724873, 4.133459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068039, 0.772619, -0.631214,
		-0.914975, -0.300545, -0.269248,
		-0.397734, 0.559225, 0.727376,
		2.614264, 3.892640, 4.351672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.087462, 3.665562, 3.838135>,  <2.892678, 3.501183, 3.842509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.087462, 3.665562, 3.838135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.333868, 3.948914, 3.975962>,  <2.481712, 4.118924, 4.058658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.333868, 3.948914, 3.975962>,  <2.087462, 3.665562, 3.838135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.333868, 3.948914, 3.975962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231470, 0.580881, -0.780384,
		-0.752959, 0.400971, 0.521800,
		0.616015, 0.708378, 0.344566,
		2.518672, 4.161427, 4.079331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.623299, 4.227313, 4.008793>,  <2.087462, 3.665562, 3.838135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.623299, 4.227313, 4.008793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.992398, 4.330246, 3.894032>,  <2.213858, 4.392006, 3.825175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.992398, 4.330246, 3.894032>,  <1.623299, 4.227313, 4.008793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.992398, 4.330246, 3.894032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346966, 0.230605, -0.909085,
		-0.167775, 0.938403, 0.302076,
		0.922749, 0.257332, -0.286904,
		2.269223, 4.407446, 3.807960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.604180, 4.984142, 3.817383>,  <1.623299, 4.227313, 4.008793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.604180, 4.984142, 3.817383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.908752, 4.781635, 3.655436>,  <2.091496, 4.660131, 3.558267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.908752, 4.781635, 3.655436>,  <1.604180, 4.984142, 3.817383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.908752, 4.781635, 3.655436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207251, 0.401659, -0.892030,
		0.614224, 0.763128, 0.200911,
		0.761431, -0.506266, -0.404868,
		2.137182, 4.629755, 3.533975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.098829, 5.348925, 3.335968>,  <1.604180, 4.984142, 3.817383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.098829, 5.348925, 3.335968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019392, 4.969982, 3.235508>,  <1.971730, 4.742617, 3.175232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019392, 4.969982, 3.235508>,  <2.098829, 5.348925, 3.335968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.019392, 4.969982, 3.235508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346394, 0.307561, -0.886238,
		0.916828, -0.089002, -0.389238,
		-0.198591, -0.947357, -0.251151,
		1.959815, 4.685775, 3.160163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.323285, 5.300107, 2.612395>,  <2.098829, 5.348925, 3.335968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.323285, 5.300107, 2.612395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.053121, 5.009670, 2.663948>,  <1.891022, 4.835408, 2.694880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.053121, 5.009670, 2.663948>,  <2.323285, 5.300107, 2.612395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053121, 5.009670, 2.663948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374708, 0.187381, -0.908010,
		0.635148, -0.661573, -0.398631,
		-0.675411, -0.726091, 0.128882,
		1.850497, 4.791843, 2.702613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.243174, 4.915966, 1.907704>,  <2.323285, 5.300107, 2.612395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.243174, 4.915966, 1.907704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.910242, 4.813236, 2.104179>,  <1.710483, 4.751598, 2.222065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.910242, 4.813236, 2.104179>,  <2.243174, 4.915966, 1.907704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.910242, 4.813236, 2.104179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551324, 0.292197, -0.781450,
		0.057171, -0.921229, -0.384797,
		-0.832330, -0.256824, 0.491190,
		1.660543, 4.736189, 2.251536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.878865, 4.585175, 1.408422>,  <2.243174, 4.915966, 1.907704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.878865, 4.585175, 1.408422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.585048, 4.671310, 1.665817>,  <1.408757, 4.722992, 1.820254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.585048, 4.671310, 1.665817>,  <1.878865, 4.585175, 1.408422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.585048, 4.671310, 1.665817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564069, 0.333361, -0.755444,
		-0.377190, -0.917878, -0.123402,
		-0.734543, 0.215339, 0.643487,
		1.364685, 4.735912, 1.858863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.477248, 0.706178, 0.607560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.329603, 0.835258, 0.956184>,  <0.241016, 0.912707, 1.165359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.329603, 0.835258, 0.956184>,  <0.477248, 0.706178, 0.607560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.329603, 0.835258, 0.956184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471318, -0.743252, 0.474801,
		0.801009, 0.586038, 0.122248,
		-0.369112, 0.322702, 0.871562,
		0.218869, 0.932069, 1.217653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.118685, 0.861421, 1.021212>,  <0.477248, 0.706178, 0.607560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.118685, 0.861421, 1.021212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.781591, 0.775146, 1.218506>,  <0.579336, 0.723382, 1.336882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.781591, 0.775146, 1.218506>,  <1.118685, 0.861421, 1.021212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.781591, 0.775146, 1.218506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500135, -0.652663, 0.569119,
		0.199165, 0.726299, 0.657893,
		-0.842733, -0.215687, 0.493235,
		0.528772, 0.710440, 1.366476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.245161, 0.829129, 1.753581>,  <1.118685, 0.861421, 1.021212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.245161, 0.829129, 1.753581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920916, 0.601738, 1.697384>,  <0.726368, 0.465303, 1.663666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920916, 0.601738, 1.697384>,  <1.245161, 0.829129, 1.753581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.920916, 0.601738, 1.697384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393195, -0.706189, 0.588808,
		-0.433939, 0.422055, 0.795969,
		-0.810614, -0.568478, -0.140493,
		0.677732, 0.431195, 1.655236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.675769, 0.761812, 2.397519>,  <1.245161, 0.829129, 1.753581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.675769, 0.761812, 2.397519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.726559, 0.434166, 2.173759>,  <0.757032, 0.237578, 2.039504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.726559, 0.434166, 2.173759>,  <0.675769, 0.761812, 2.397519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.726559, 0.434166, 2.173759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637050, -0.364934, 0.678963,
		-0.760293, -0.442575, 0.475480,
		0.126973, -0.819115, -0.559400,
		0.764651, 0.188431, 2.005939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.497878, 0.210564, 2.788089>,  <0.675769, 0.761812, 2.397519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.497878, 0.210564, 2.788089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.729229, 0.040970, 2.509315>,  <0.868040, -0.060787, 2.342052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.729229, 0.040970, 2.509315>,  <0.497878, 0.210564, 2.788089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.729229, 0.040970, 2.509315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502694, -0.487606, 0.713821,
		-0.642479, -0.763201, -0.068885,
		0.578377, -0.423986, -0.696932,
		0.902742, -0.086226, 2.300236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.579947, -0.550301, 2.836882>,  <0.497878, 0.210564, 2.788089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.579947, -0.550301, 2.836882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920420, -0.457672, 2.648472>,  <1.124703, -0.402095, 2.535426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920420, -0.457672, 2.648472>,  <0.579947, -0.550301, 2.836882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.920420, -0.457672, 2.648472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524345, -0.415338, 0.743342,
		-0.023498, -0.879698, -0.474951,
		0.851182, 0.231572, -0.471025,
		1.175774, -0.388201, 2.507164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.930130, -1.194525, 2.783886>,  <0.579947, -0.550301, 2.836882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.930130, -1.194525, 2.783886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.191309, -0.891609, 2.778675>,  <1.348017, -0.709859, 2.775549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.191309, -0.891609, 2.778675>,  <0.930130, -1.194525, 2.783886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.191309, -0.891609, 2.778675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567037, -0.477361, 0.671265,
		0.502124, -0.445688, -0.741104,
		0.652948, 0.757291, -0.013027,
		1.387193, -0.664422, 2.774767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.650991, -1.480003, 2.585413>,  <0.930130, -1.194525, 2.783886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.650991, -1.480003, 2.585413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.719234, -1.132195, 2.770809>,  <1.760181, -0.923509, 2.882047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.719234, -1.132195, 2.770809>,  <1.650991, -1.480003, 2.585413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.719234, -1.132195, 2.770809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646315, -0.453812, 0.613459,
		0.743754, 0.194900, -0.639410,
		0.170609, 0.869522, 0.463491,
		1.770417, -0.871338, 2.909856>
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
