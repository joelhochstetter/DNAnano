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
	<23.982866, 35.125557, 34.735859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292852, 35.070244, 34.982533>,  <24.478844, 35.037056, 35.130539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292852, 35.070244, 34.982533>,  <23.982866, 35.125557, 34.735859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292852, 35.070244, 34.982533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600000, -0.145581, -0.786642,
		0.198560, 0.979634, -0.029849,
		0.774967, -0.138287, 0.616687,
		24.525343, 35.028759, 35.167538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711229, 35.538723, 34.651421>,  <23.982866, 35.125557, 34.735859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711229, 35.538723, 34.651421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759617, 35.165962, 34.788197>,  <24.788649, 34.942307, 34.870262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759617, 35.165962, 34.788197>,  <24.711229, 35.538723, 34.651421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759617, 35.165962, 34.788197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366285, -0.278255, -0.887925,
		0.922606, 0.232658, 0.307682,
		0.120968, -0.931904, 0.341938,
		24.795908, 34.886391, 34.890778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394388, 35.246708, 34.453503>,  <24.711229, 35.538723, 34.651421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394388, 35.246708, 34.453503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161926, 34.922729, 34.485134>,  <25.022449, 34.728344, 34.504112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161926, 34.922729, 34.485134>,  <25.394388, 35.246708, 34.453503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161926, 34.922729, 34.485134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308907, -0.309452, -0.899342,
		0.752885, -0.498229, 0.430037,
		-0.581154, -0.809943, 0.079075,
		24.987579, 34.679749, 34.508858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808420, 34.600018, 34.117252>,  <25.394388, 35.246708, 34.453503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808420, 34.600018, 34.117252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408800, 34.593899, 34.133564>,  <25.169027, 34.590229, 34.143353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408800, 34.593899, 34.133564>,  <25.808420, 34.600018, 34.117252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408800, 34.593899, 34.133564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041194, 0.027590, -0.998770,
		0.014131, -0.999503, -0.028193,
		-0.999051, -0.015275, 0.040783,
		25.109085, 34.589310, 34.145798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159245, 33.956787, 34.259003>,  <25.808420, 34.600018, 34.117252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159245, 33.956787, 34.259003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238306, 33.698307, 34.553852>,  <26.285744, 33.543217, 34.730762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238306, 33.698307, 34.553852>,  <26.159245, 33.956787, 34.259003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238306, 33.698307, 34.553852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970459, 0.235125, -0.054098,
		-0.138359, 0.726044, 0.673586,
		0.197654, -0.646202, 0.737127,
		26.297602, 33.504448, 34.774990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681618, 34.244789, 34.529896>,  <26.159245, 33.956787, 34.259003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681618, 34.244789, 34.529896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703432, 33.870140, 34.668320>,  <26.716520, 33.645351, 34.751373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703432, 33.870140, 34.668320>,  <26.681618, 34.244789, 34.529896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703432, 33.870140, 34.668320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996610, 0.029675, -0.076738,
		0.061606, 0.349069, 0.935070,
		0.054536, -0.936627, 0.346057,
		26.719793, 33.589153, 34.772137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362209, 34.595398, 34.672043>,  <26.681618, 34.244789, 34.529896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362209, 34.595398, 34.672043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740345, 34.467606, 34.645912>,  <27.967226, 34.390930, 34.630234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740345, 34.467606, 34.645912>,  <27.362209, 34.595398, 34.672043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740345, 34.467606, 34.645912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289595, -0.730409, -0.618577,
		0.149909, 0.603682, -0.783004,
		0.945337, -0.319485, -0.065328,
		28.023947, 34.371761, 34.626312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614510, 34.640236, 34.010456>,  <27.362209, 34.595398, 34.672043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614510, 34.640236, 34.010456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795574, 34.344650, 34.210072>,  <27.904213, 34.167301, 34.329842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795574, 34.344650, 34.210072>,  <27.614510, 34.640236, 34.010456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795574, 34.344650, 34.210072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461979, -0.673041, -0.577574,
		0.762674, 0.030902, -0.646044,
		0.452662, -0.738959, 0.499035,
		27.931374, 34.122963, 34.359783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751385, 34.210327, 33.483936>,  <27.614510, 34.640236, 34.010456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751385, 34.210327, 33.483936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805969, 33.980152, 33.806488>,  <27.838720, 33.842049, 34.000019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805969, 33.980152, 33.806488>,  <27.751385, 34.210327, 33.483936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805969, 33.980152, 33.806488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305394, -0.798787, -0.518337,
		0.942397, -0.175530, -0.284741,
		0.136464, -0.575438, 0.806380,
		27.846909, 33.807522, 34.048401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003563, 33.649860, 33.170288>,  <27.751385, 34.210327, 33.483936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003563, 33.649860, 33.170288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873922, 33.520706, 33.525974>,  <27.796137, 33.443214, 33.739388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873922, 33.520706, 33.525974>,  <28.003563, 33.649860, 33.170288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873922, 33.520706, 33.525974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319421, -0.847401, -0.424125,
		0.890465, -0.421494, 0.171509,
		-0.324103, -0.322885, 0.889215,
		27.776691, 33.423840, 33.792740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133724, 32.995529, 33.017147>,  <28.003563, 33.649860, 33.170288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133724, 32.995529, 33.017147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892811, 32.977165, 33.335930>,  <27.748262, 32.966148, 33.527199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892811, 32.977165, 33.335930>,  <28.133724, 32.995529, 33.017147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892811, 32.977165, 33.335930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319679, -0.900928, -0.293485,
		0.731478, -0.431533, 0.527938,
		-0.602283, -0.045907, 0.796961,
		27.712126, 32.963394, 33.575020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160124, 32.267864, 33.337769>,  <28.133724, 32.995529, 33.017147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160124, 32.267864, 33.337769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815399, 32.442234, 33.441502>,  <27.608564, 32.546856, 33.503742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815399, 32.442234, 33.441502>,  <28.160124, 32.267864, 33.337769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815399, 32.442234, 33.441502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506924, -0.757912, -0.410605,
		0.017561, -0.485327, 0.874156,
		-0.861812, 0.435920, 0.259334,
		27.556856, 32.573009, 33.519302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809349, 31.717173, 33.514080>,  <28.160124, 32.267864, 33.337769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809349, 31.717173, 33.514080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519085, 31.982901, 33.442421>,  <27.344927, 32.142338, 33.399426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519085, 31.982901, 33.442421>,  <27.809349, 31.717173, 33.514080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519085, 31.982901, 33.442421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553331, -0.718200, -0.421917,
		-0.408955, -0.207038, 0.888758,
		-0.725659, 0.664322, -0.179151,
		27.301388, 32.182198, 33.388676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242788, 31.326668, 33.668640>,  <27.809349, 31.717173, 33.514080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242788, 31.326668, 33.668640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110353, 31.631960, 33.446701>,  <27.030893, 31.815136, 33.313538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110353, 31.631960, 33.446701>,  <27.242788, 31.326668, 33.668640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110353, 31.631960, 33.446701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753748, -0.567666, -0.331087,
		-0.567666, 0.308600, 0.763230,
		0.331087, -0.763230, 0.554852,
		27.011028, 31.860929, 33.280247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505323, 31.313669, 33.805271>,  <27.242788, 31.326668, 33.668640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505323, 31.313669, 33.805271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573887, 31.507549, 33.462185>,  <26.615025, 31.623878, 33.256332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573887, 31.507549, 33.462185>,  <26.505323, 31.313669, 33.805271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573887, 31.507549, 33.462185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666967, -0.583671, -0.463123,
		-0.725103, 0.651454, 0.223235,
		0.171407, 0.484702, -0.857720,
		26.625309, 31.652960, 33.204868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880016, 31.560007, 33.522804>,  <26.505323, 31.313669, 33.805271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880016, 31.560007, 33.522804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134665, 31.543451, 33.214779>,  <26.287453, 31.533518, 33.029964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134665, 31.543451, 33.214779>,  <25.880016, 31.560007, 33.522804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134665, 31.543451, 33.214779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729996, -0.354289, -0.584453,
		-0.248636, 0.934219, -0.255762,
		0.636621, -0.041389, -0.770066,
		26.325651, 31.531034, 32.983761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390833, 31.457474, 33.046066>,  <25.880016, 31.560007, 33.522804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390833, 31.457474, 33.046066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738550, 31.397514, 32.857658>,  <25.947180, 31.361538, 32.744614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738550, 31.397514, 32.857658>,  <25.390833, 31.457474, 33.046066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738550, 31.397514, 32.857658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486143, -0.431674, -0.759818,
		-0.089432, 0.889488, -0.448123,
		0.869291, -0.149899, -0.471023,
		25.999338, 31.352545, 32.716351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218307, 31.617262, 32.414806>,  <25.390833, 31.457474, 33.046066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218307, 31.617262, 32.414806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545183, 31.388241, 32.388302>,  <25.741308, 31.250828, 32.372398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545183, 31.388241, 32.388302>,  <25.218307, 31.617262, 32.414806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545183, 31.388241, 32.388302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407698, -0.492943, -0.768629,
		0.407415, 0.655128, -0.636254,
		0.817188, -0.572550, -0.066262,
		25.790339, 31.216476, 32.368423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469345, 31.550541, 31.611866>,  <25.218307, 31.617262, 32.414806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469345, 31.550541, 31.611866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621920, 31.248337, 31.824926>,  <25.713465, 31.067015, 31.952763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621920, 31.248337, 31.824926>,  <25.469345, 31.550541, 31.611866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621920, 31.248337, 31.824926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429549, -0.655087, -0.621569,
		0.818532, 0.008290, -0.574401,
		0.381435, -0.755508, 0.532649,
		25.736351, 31.021685, 31.984720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872602, 31.218079, 31.111296>,  <25.469345, 31.550541, 31.611866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872602, 31.218079, 31.111296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797470, 30.961561, 31.408875>,  <25.752392, 30.807650, 31.587421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797470, 30.961561, 31.408875>,  <25.872602, 31.218079, 31.111296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797470, 30.961561, 31.408875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271949, -0.693863, -0.666781,
		0.943803, -0.327557, -0.044072,
		-0.187829, -0.641295, 0.743949,
		25.741121, 30.769173, 31.632059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145947, 30.548605, 30.911089>,  <25.872602, 31.218079, 31.111296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145947, 30.548605, 30.911089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876099, 30.458647, 31.192318>,  <25.714190, 30.404673, 31.361055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876099, 30.458647, 31.192318>,  <26.145947, 30.548605, 30.911089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876099, 30.458647, 31.192318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374559, -0.716442, -0.588572,
		0.636077, -0.660404, 0.399090,
		-0.674620, -0.224894, 0.703073,
		25.673712, 30.391178, 31.403240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209120, 29.859049, 31.008108>,  <26.145947, 30.548605, 30.911089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209120, 29.859049, 31.008108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838089, 29.960703, 31.117666>,  <25.615471, 30.021696, 31.183401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838089, 29.960703, 31.117666>,  <26.209120, 29.859049, 31.008108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838089, 29.960703, 31.117666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369383, -0.734028, -0.569877,
		0.056220, -0.629776, 0.774740,
		-0.927575, 0.254137, 0.273896,
		25.559816, 30.036943, 31.199835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946251, 29.201494, 31.088707>,  <26.209120, 29.859049, 31.008108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946251, 29.201494, 31.088707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621567, 29.433378, 31.060240>,  <25.426756, 29.572508, 31.043159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621567, 29.433378, 31.060240>,  <25.946251, 29.201494, 31.088707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621567, 29.433378, 31.060240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515171, -0.768043, -0.380407,
		-0.275187, -0.272115, 0.922077,
		-0.811709, 0.579710, -0.071170,
		25.378054, 29.607292, 31.038889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312883, 28.834436, 31.377867>,  <25.946251, 29.201494, 31.088707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312883, 28.834436, 31.377867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172661, 29.109947, 31.124035>,  <25.088528, 29.275253, 30.971735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172661, 29.109947, 31.124035>,  <25.312883, 28.834436, 31.377867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172661, 29.109947, 31.124035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518914, -0.706913, -0.480627,
		-0.779640, 0.160806, 0.605230,
		-0.350557, 0.688778, -0.634582,
		25.067493, 29.316580, 30.933661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.706253, 28.563004, 31.185879>,  <25.312883, 28.834436, 31.377867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.706253, 28.563004, 31.185879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737612, 28.846485, 30.905424>,  <24.756426, 29.016573, 30.737150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737612, 28.846485, 30.905424>,  <24.706253, 28.563004, 31.185879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737612, 28.846485, 30.905424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402406, -0.620967, -0.672658,
		-0.912098, 0.334876, 0.236506,
		0.078395, 0.708702, -0.701139,
		24.761129, 29.059095, 30.695082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.077175, 28.646484, 30.926922>,  <24.706253, 28.563004, 31.185879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.077175, 28.646484, 30.926922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341686, 28.717583, 30.635412>,  <24.500393, 28.760242, 30.460506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341686, 28.717583, 30.635412>,  <24.077175, 28.646484, 30.926922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341686, 28.717583, 30.635412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426157, -0.710503, -0.559979,
		-0.617332, 0.680876, -0.394093,
		0.661280, 0.177747, -0.728776,
		24.540070, 28.770906, 30.416779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.776520, 28.657734, 30.200180>,  <24.077175, 28.646484, 30.926922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.776520, 28.657734, 30.200180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151163, 28.517672, 30.195253>,  <24.375950, 28.433634, 30.192297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151163, 28.517672, 30.195253>,  <23.776520, 28.657734, 30.200180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.151163, 28.517672, 30.195253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308776, -0.808291, -0.501322,
		0.165584, 0.473347, -0.865173,
		0.936611, -0.350156, -0.012318,
		24.432146, 28.412624, 30.191559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.873522, 28.487375, 29.558367>,  <23.776520, 28.657734, 30.200180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.873522, 28.487375, 29.558367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.155430, 28.283203, 29.755449>,  <24.324574, 28.160700, 29.873699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.155430, 28.283203, 29.755449>,  <23.873522, 28.487375, 29.558367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.155430, 28.283203, 29.755449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206955, -0.812218, -0.545409,
		0.678581, 0.282418, -0.678062,
		0.704768, -0.510433, 0.492708,
		24.366859, 28.130074, 29.903261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.378088, 28.104174, 29.061512>,  <23.873522, 28.487375, 29.558367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.378088, 28.104174, 29.061512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305107, 27.921068, 29.409573>,  <24.261318, 27.811205, 29.618408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305107, 27.921068, 29.409573>,  <24.378088, 28.104174, 29.061512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.305107, 27.921068, 29.409573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016336, -0.886295, -0.462833,
		0.983079, -0.070230, 0.169183,
		-0.182451, -0.457765, 0.870151,
		24.250372, 27.783739, 29.670618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801167, 27.620407, 28.949228>,  <24.378088, 28.104174, 29.061512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801167, 27.620407, 28.949228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532681, 27.513201, 29.225674>,  <24.371590, 27.448877, 29.391541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532681, 27.513201, 29.225674>,  <24.801167, 27.620407, 28.949228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532681, 27.513201, 29.225674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022306, -0.939227, -0.342571,
		0.740927, -0.214523, 0.636402,
		-0.671215, -0.268016, 0.691113,
		24.331316, 27.432796, 29.433008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133253, 27.077217, 29.369810>,  <24.801167, 27.620407, 28.949228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133253, 27.077217, 29.369810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736063, 27.051126, 29.409292>,  <24.497749, 27.035473, 29.432981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736063, 27.051126, 29.409292>,  <25.133253, 27.077217, 29.369810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736063, 27.051126, 29.409292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047996, -0.984648, -0.167821,
		0.108136, -0.161905, 0.980864,
		-0.992977, -0.065225, 0.098705,
		24.438169, 27.031559, 29.438904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861904, 26.572685, 29.867069>,  <25.133253, 27.077217, 29.369810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861904, 26.572685, 29.867069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578812, 26.619186, 29.588329>,  <24.408957, 26.647087, 29.421085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578812, 26.619186, 29.588329>,  <24.861904, 26.572685, 29.867069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.578812, 26.619186, 29.588329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012984, -0.988343, -0.151692,
		-0.706363, -0.098309, 0.700990,
		-0.707731, 0.116251, -0.696851,
		24.366493, 26.654062, 29.379274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860252, 25.843573, 30.013426>,  <24.861904, 26.572685, 29.867069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860252, 25.843573, 30.013426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176880, 25.637646, 30.145111>,  <25.366856, 25.514090, 30.224123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176880, 25.637646, 30.145111>,  <24.860252, 25.843573, 30.013426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176880, 25.637646, 30.145111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373367, 0.833941, 0.406373,
		-0.483755, -0.198753, 0.852337,
		0.791567, -0.514819, 0.329215,
		25.414351, 25.483200, 30.243876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051672, 26.037931, 30.693661>,  <24.860252, 25.843573, 30.013426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051672, 26.037931, 30.693661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398369, 25.886246, 30.564074>,  <25.606386, 25.795235, 30.486320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398369, 25.886246, 30.564074>,  <25.051672, 26.037931, 30.693661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398369, 25.886246, 30.564074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479486, 0.812350, 0.331934,
		0.137303, -0.443040, 0.885925,
		0.866742, -0.379214, -0.323970,
		25.658392, 25.772482, 30.466883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471422, 26.026142, 31.265879>,  <25.051672, 26.037931, 30.693661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471422, 26.026142, 31.265879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700888, 26.051184, 30.939201>,  <25.838568, 26.066208, 30.743195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700888, 26.051184, 30.939201>,  <25.471422, 26.026142, 31.265879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700888, 26.051184, 30.939201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496012, 0.766918, 0.407196,
		0.651830, -0.638684, 0.408902,
		0.573663, 0.062602, -0.816696,
		25.872986, 26.069963, 30.694193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187590, 26.131926, 31.448586>,  <25.471422, 26.026142, 31.265879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187590, 26.131926, 31.448586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158983, 26.269070, 31.073921>,  <26.141819, 26.351357, 30.849123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158983, 26.269070, 31.073921>,  <26.187590, 26.131926, 31.448586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158983, 26.269070, 31.073921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589397, 0.772105, 0.237625,
		0.804672, -0.535070, -0.257300,
		-0.071517, 0.342862, -0.936659,
		26.137527, 26.371929, 30.792923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855888, 26.292385, 31.172215>,  <26.187590, 26.131926, 31.448586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855888, 26.292385, 31.172215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598246, 26.511103, 30.958244>,  <26.443661, 26.642334, 30.829863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598246, 26.511103, 30.958244>,  <26.855888, 26.292385, 31.172215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598246, 26.511103, 30.958244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522002, 0.825367, 0.215134,
		0.559142, -0.140661, -0.817052,
		-0.644107, 0.546793, -0.534923,
		26.405014, 26.675140, 30.797768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180311, 26.603563, 30.773027>,  <26.855888, 26.292385, 31.172215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180311, 26.603563, 30.773027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851223, 26.830370, 30.789125>,  <26.653770, 26.966454, 30.798784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851223, 26.830370, 30.789125>,  <27.180311, 26.603563, 30.773027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851223, 26.830370, 30.789125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564907, 0.807668, 0.168975,
		0.063308, 0.161753, -0.984798,
		-0.822723, 0.567017, 0.040243,
		26.604406, 27.000475, 30.801199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245342, 27.169514, 30.299103>,  <27.180311, 26.603563, 30.773027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245342, 27.169514, 30.299103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983110, 27.283989, 30.578619>,  <26.825771, 27.352674, 30.746328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983110, 27.283989, 30.578619>,  <27.245342, 27.169514, 30.299103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983110, 27.283989, 30.578619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603036, 0.755392, 0.256378,
		-0.454489, 0.589473, -0.667803,
		-0.655582, 0.286188, 0.698791,
		26.786436, 27.369846, 30.788256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356441, 27.906353, 30.429861>,  <27.245342, 27.169514, 30.299103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356441, 27.906353, 30.429861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122149, 27.829975, 30.744938>,  <26.981573, 27.784147, 30.933985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122149, 27.829975, 30.744938>,  <27.356441, 27.906353, 30.429861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122149, 27.829975, 30.744938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436381, 0.744671, 0.505011,
		-0.683002, 0.639534, -0.352852,
		-0.585730, -0.190946, 0.787693,
		26.946430, 27.772692, 30.981245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071493, 28.518509, 30.629650>,  <27.356441, 27.906353, 30.429861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071493, 28.518509, 30.629650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009907, 28.304024, 30.961618>,  <26.972956, 28.175333, 31.160799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009907, 28.304024, 30.961618>,  <27.071493, 28.518509, 30.629650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009907, 28.304024, 30.961618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349151, 0.756224, 0.553371,
		-0.924331, 0.374968, 0.070787,
		-0.153966, -0.536213, 0.829922,
		26.963717, 28.143160, 31.210594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825365, 28.923054, 31.160109>,  <27.071493, 28.518509, 30.629650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825365, 28.923054, 31.160109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976501, 28.622267, 31.376175>,  <27.067184, 28.441793, 31.505814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976501, 28.622267, 31.376175>,  <26.825365, 28.923054, 31.160109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976501, 28.622267, 31.376175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446307, 0.659083, 0.605326,
		-0.811200, 0.012361, 0.584639,
		0.377843, -0.751969, 0.540165,
		27.089853, 28.396677, 31.538225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780491, 29.172661, 31.882730>,  <26.825365, 28.923054, 31.160109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780491, 29.172661, 31.882730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047518, 28.875042, 31.893661>,  <27.207735, 28.696470, 31.900219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047518, 28.875042, 31.893661>,  <26.780491, 29.172661, 31.882730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047518, 28.875042, 31.893661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602614, 0.561499, 0.567077,
		-0.437275, -0.362095, 0.823212,
		0.667568, -0.744047, 0.027326,
		27.247787, 28.651829, 31.901859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921793, 29.049175, 32.554012>,  <26.780491, 29.172661, 31.882730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921793, 29.049175, 32.554012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240959, 28.917597, 32.351974>,  <27.432459, 28.838650, 32.230751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240959, 28.917597, 32.351974>,  <26.921793, 29.049175, 32.554012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240959, 28.917597, 32.351974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580266, 0.646004, 0.495954,
		0.163152, -0.688820, 0.706334,
		0.797918, -0.328945, -0.505096,
		27.480335, 28.818913, 32.200447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426603, 28.995985, 33.029610>,  <26.921793, 29.049175, 32.554012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426603, 28.995985, 33.029610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661880, 28.979534, 32.706539>,  <27.803047, 28.969664, 32.512695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661880, 28.979534, 32.706539>,  <27.426603, 28.995985, 33.029610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661880, 28.979534, 32.706539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743937, 0.419178, 0.520429,
		0.317155, -0.906972, 0.277155,
		0.588192, -0.041129, -0.807675,
		27.838339, 28.967196, 32.464237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083927, 28.701138, 33.226151>,  <27.426603, 28.995985, 33.029610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083927, 28.701138, 33.226151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144737, 28.906076, 32.888065>,  <28.181223, 29.029039, 32.685215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144737, 28.906076, 32.888065>,  <28.083927, 28.701138, 33.226151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144737, 28.906076, 32.888065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728530, 0.519815, 0.446133,
		0.667931, -0.683589, -0.294235,
		0.152024, 0.512346, -0.845216,
		28.190344, 29.059780, 32.634499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804922, 28.778250, 33.113712>,  <28.083927, 28.701138, 33.226151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804922, 28.778250, 33.113712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640127, 29.045538, 32.865921>,  <28.541250, 29.205912, 32.717247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640127, 29.045538, 32.865921>,  <28.804922, 28.778250, 33.113712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640127, 29.045538, 32.865921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622275, 0.702955, 0.344424,
		0.665614, -0.243586, -0.705425,
		-0.411985, 0.668222, -0.619474,
		28.516531, 29.246004, 32.680080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358217, 29.093731, 32.717667>,  <28.804922, 28.778250, 33.113712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358217, 29.093731, 32.717667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058769, 29.357704, 32.743153>,  <28.879101, 29.516087, 32.758446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058769, 29.357704, 32.743153>,  <29.358217, 29.093731, 32.717667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058769, 29.357704, 32.743153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626282, 0.672348, 0.394613,
		0.217576, 0.335321, -0.916635,
		-0.748620, 0.659931, 0.063719,
		28.834183, 29.555683, 32.762268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612043, 29.705919, 32.346081>,  <29.358217, 29.093731, 32.717667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612043, 29.705919, 32.346081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316059, 29.800547, 32.597950>,  <29.138468, 29.857323, 32.749073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316059, 29.800547, 32.597950>,  <29.612043, 29.705919, 32.346081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316059, 29.800547, 32.597950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577807, 0.702811, 0.414965,
		-0.344376, 0.670890, -0.656743,
		-0.739962, 0.236567, 0.629676,
		29.094070, 29.871517, 32.786854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766733, 30.335094, 32.404678>,  <29.612043, 29.705919, 32.346081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766733, 30.335094, 32.404678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526695, 30.257027, 32.714981>,  <29.382673, 30.210186, 32.901161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526695, 30.257027, 32.714981>,  <29.766733, 30.335094, 32.404678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526695, 30.257027, 32.714981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467409, 0.701452, 0.538046,
		-0.649167, 0.685473, -0.329712,
		-0.600093, -0.195171, 0.775756,
		29.346668, 30.198475, 32.947708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625299, 31.003719, 32.654575>,  <29.766733, 30.335094, 32.404678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625299, 31.003719, 32.654575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511478, 30.781208, 32.966881>,  <29.443186, 30.647701, 33.154263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511478, 30.781208, 32.966881>,  <29.625299, 31.003719, 32.654575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511478, 30.781208, 32.966881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324481, 0.710470, 0.624455,
		-0.902076, 0.431033, -0.021665,
		-0.284553, -0.556276, 0.780760,
		29.426113, 30.614325, 33.201107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214760, 31.454050, 33.039116>,  <29.625299, 31.003719, 32.654575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214760, 31.454050, 33.039116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324774, 31.167757, 33.295891>,  <29.390781, 30.995981, 33.449955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324774, 31.167757, 33.295891>,  <29.214760, 31.454050, 33.039116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324774, 31.167757, 33.295891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258077, 0.698144, 0.667825,
		-0.926149, -0.018005, 0.376727,
		0.275034, -0.715731, 0.641939,
		29.407284, 30.953037, 33.488472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889130, 31.587379, 33.623333>,  <29.214760, 31.454050, 33.039116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889130, 31.587379, 33.623333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189611, 31.355417, 33.749447>,  <29.369900, 31.216240, 33.825115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189611, 31.355417, 33.749447>,  <28.889130, 31.587379, 33.623333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189611, 31.355417, 33.749447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205275, 0.659210, 0.723398,
		-0.627340, -0.478699, 0.614241,
		0.751204, -0.579905, 0.315284,
		29.414972, 31.181446, 33.844032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810963, 31.631083, 34.325378>,  <28.889130, 31.587379, 33.623333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810963, 31.631083, 34.325378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185238, 31.536713, 34.220436>,  <29.409803, 31.480091, 34.157471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185238, 31.536713, 34.220436>,  <28.810963, 31.631083, 34.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185238, 31.536713, 34.220436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349678, 0.719257, 0.600329,
		0.047067, -0.653460, 0.755497,
		0.935687, -0.235924, -0.262354,
		29.465944, 31.465935, 34.141731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082130, 31.588404, 34.913166>,  <28.810963, 31.631083, 34.325378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082130, 31.588404, 34.913166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391438, 31.618422, 34.661316>,  <29.577023, 31.636433, 34.510208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391438, 31.618422, 34.661316>,  <29.082130, 31.588404, 34.913166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391438, 31.618422, 34.661316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446301, 0.640934, 0.624516,
		0.450415, -0.763919, 0.462120,
		0.773267, 0.075047, -0.629624,
		29.623417, 31.640936, 34.472427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736698, 31.548588, 35.274780>,  <29.082130, 31.588404, 34.913166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736698, 31.548588, 35.274780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850248, 31.700638, 34.922661>,  <29.918379, 31.791868, 34.711391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850248, 31.700638, 34.922661>,  <29.736698, 31.548588, 35.274780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850248, 31.700638, 34.922661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504182, 0.721733, 0.474239,
		0.815608, -0.578454, 0.013229,
		0.283873, 0.380123, -0.880297,
		29.935410, 31.814674, 34.658573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516153, 31.619316, 35.224892>,  <29.736698, 31.548588, 35.274780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516153, 31.619316, 35.224892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385002, 31.886480, 34.957642>,  <30.306311, 32.046780, 34.797291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385002, 31.886480, 34.957642>,  <30.516153, 31.619316, 35.224892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385002, 31.886480, 34.957642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569413, 0.704042, 0.424376,
		0.753833, -0.241295, -0.611156,
		-0.327880, 0.667909, -0.668127,
		30.286638, 32.086853, 34.757202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039688, 32.070026, 35.304993>,  <30.516153, 31.619316, 35.224892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039688, 32.070026, 35.304993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767376, 32.265419, 35.086662>,  <30.603989, 32.382656, 34.955666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767376, 32.265419, 35.086662>,  <31.039688, 32.070026, 35.304993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767376, 32.265419, 35.086662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488054, 0.858157, 0.159281,
		0.546209, -0.157957, -0.822621,
		-0.680778, 0.488485, -0.545824,
		30.563143, 32.411964, 34.922916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314062, 32.359936, 34.763058>,  <31.039688, 32.070026, 35.304993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314062, 32.359936, 34.763058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989569, 32.555485, 34.891376>,  <30.794872, 32.672813, 34.968369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989569, 32.555485, 34.891376>,  <31.314062, 32.359936, 34.763058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989569, 32.555485, 34.891376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584502, 0.693108, 0.421852,
		-0.016113, 0.529724, -0.848017,
		-0.811232, 0.488870, 0.320793,
		30.746199, 32.702145, 34.987614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414080, 33.083309, 34.604599>,  <31.314062, 32.359936, 34.763058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414080, 33.083309, 34.604599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174541, 33.042713, 34.922363>,  <31.030819, 33.018356, 35.113022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174541, 33.042713, 34.922363>,  <31.414080, 33.083309, 34.604599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174541, 33.042713, 34.922363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703127, 0.408245, 0.582194,
		-0.383399, 0.907213, -0.173116,
		-0.598847, -0.101490, 0.794406,
		30.994886, 33.012268, 35.160686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337151, 33.640137, 35.035473>,  <31.414080, 33.083309, 34.604599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337151, 33.640137, 35.035473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270845, 33.349857, 35.302570>,  <31.231062, 33.175690, 35.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270845, 33.349857, 35.302570>,  <31.337151, 33.640137, 35.035473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270845, 33.349857, 35.302570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617881, 0.451302, 0.643856,
		-0.768601, 0.519313, 0.373588,
		-0.165761, -0.725700, 0.667744,
		31.221117, 33.132149, 35.502895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855667, 33.743046, 35.627239>,  <31.337151, 33.640137, 35.035473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855667, 33.743046, 35.627239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672428, 33.408031, 35.746361>,  <31.562485, 33.207024, 35.817833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672428, 33.408031, 35.746361>,  <31.855667, 33.743046, 35.627239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672428, 33.408031, 35.746361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432973, 0.082358, 0.897637,
		-0.776325, 0.540147, 0.324900,
		-0.458097, -0.837531, 0.297805,
		31.535000, 33.156773, 35.835701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666332, 33.803082, 36.460255>,  <31.855667, 33.743046, 35.627239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666332, 33.803082, 36.460255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747375, 33.447083, 36.296864>,  <31.796001, 33.233482, 36.198830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747375, 33.447083, 36.296864>,  <31.666332, 33.803082, 36.460255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747375, 33.447083, 36.296864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480802, -0.272980, 0.833253,
		-0.853099, -0.365223, 0.372604,
		0.202610, -0.889997, -0.408479,
		31.808159, 33.180084, 36.174320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655865, 33.321938, 37.020138>,  <31.666332, 33.803082, 36.460255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655865, 33.321938, 37.020138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863899, 33.119629, 36.744835>,  <31.988720, 32.998241, 36.579651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863899, 33.119629, 36.744835>,  <31.655865, 33.321938, 37.020138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863899, 33.119629, 36.744835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564333, -0.401382, 0.721402,
		-0.641122, -0.763599, 0.076672,
		0.520088, -0.505775, -0.688259,
		32.019924, 32.967896, 36.538357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594791, 32.646107, 37.214218>,  <31.655865, 33.321938, 37.020138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594791, 32.646107, 37.214218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941475, 32.709263, 37.024952>,  <32.149487, 32.747154, 36.911392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941475, 32.709263, 37.024952>,  <31.594791, 32.646107, 37.214218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941475, 32.709263, 37.024952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498506, -0.240857, 0.832755,
		0.017515, -0.957633, -0.287460,
		0.866710, 0.157886, -0.473167,
		32.201488, 32.756630, 36.883003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055897, 32.193752, 37.501060>,  <31.594791, 32.646107, 37.214218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055897, 32.193752, 37.501060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281364, 32.485077, 37.345196>,  <32.416645, 32.659874, 37.251678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281364, 32.485077, 37.345196>,  <32.055897, 32.193752, 37.501060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281364, 32.485077, 37.345196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647614, -0.096851, 0.755789,
		0.512713, -0.678364, -0.526259,
		0.563668, 0.728315, -0.389661,
		32.450466, 32.703571, 37.228298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738350, 31.931112, 37.386223>,  <32.055897, 32.193752, 37.501060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738350, 31.931112, 37.386223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789688, 32.327774, 37.391167>,  <32.820492, 32.565769, 37.394135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789688, 32.327774, 37.391167>,  <32.738350, 31.931112, 37.386223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789688, 32.327774, 37.391167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665966, -0.095419, 0.739855,
		0.734858, -0.086724, -0.672653,
		0.128347, 0.991652, 0.012364,
		32.828194, 32.625271, 37.394875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358952, 31.938803, 37.524921>,  <32.738350, 31.931112, 37.386223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358952, 31.938803, 37.524921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237785, 32.309902, 37.612122>,  <33.165085, 32.532562, 37.664440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237785, 32.309902, 37.612122>,  <33.358952, 31.938803, 37.524921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237785, 32.309902, 37.612122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595556, 0.005694, 0.803293,
		0.744014, 0.373160, -0.554252,
		-0.302913, 0.927750, 0.218001,
		33.146912, 32.588226, 37.677521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983353, 32.382034, 37.554165>,  <33.358952, 31.938803, 37.524921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983353, 32.382034, 37.554165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721306, 32.575802, 37.786083>,  <33.564079, 32.692062, 37.925236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721306, 32.575802, 37.786083>,  <33.983353, 32.382034, 37.554165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721306, 32.575802, 37.786083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667536, 0.011692, 0.744486,
		0.353861, 0.874760, -0.331024,
		-0.655117, 0.484415, 0.579797,
		33.524773, 32.721127, 37.960022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385479, 32.852360, 37.887417>,  <33.983353, 32.382034, 37.554165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385479, 32.852360, 37.887417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053909, 32.835533, 38.110531>,  <33.854969, 32.825436, 38.244400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053909, 32.835533, 38.110531>,  <34.385479, 32.852360, 37.887417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053909, 32.835533, 38.110531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559269, -0.080893, 0.825030,
		0.010411, 0.995835, 0.090583,
		-0.828921, -0.042071, 0.557782,
		33.805233, 32.822910, 38.277866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449699, 33.258041, 38.417366>,  <34.385479, 32.852360, 37.887417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449699, 33.258041, 38.417366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168804, 33.007805, 38.553307>,  <34.000267, 32.857662, 38.634872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168804, 33.007805, 38.553307>,  <34.449699, 33.258041, 38.417366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168804, 33.007805, 38.553307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455723, -0.028239, 0.889673,
		-0.546972, 0.779642, 0.304925,
		-0.702238, -0.625588, 0.339855,
		33.958134, 32.820129, 38.655262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214745, 33.481182, 39.063522>,  <34.449699, 33.258041, 38.417366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214745, 33.481182, 39.063522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130806, 33.090092, 39.062050>,  <34.080441, 32.855438, 39.061165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130806, 33.090092, 39.062050>,  <34.214745, 33.481182, 39.063522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130806, 33.090092, 39.062050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458070, -0.101643, 0.883085,
		-0.863791, 0.183628, 0.469198,
		-0.209850, -0.977727, -0.003684,
		34.067852, 32.796772, 39.060944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967945, 33.342480, 39.745621>,  <34.214745, 33.481182, 39.063522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967945, 33.342480, 39.745621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085693, 32.995811, 39.584511>,  <34.156342, 32.787811, 39.487846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085693, 32.995811, 39.584511>,  <33.967945, 33.342480, 39.745621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085693, 32.995811, 39.584511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417482, -0.262494, 0.869946,
		-0.859684, -0.424235, 0.284550,
		0.294369, -0.866673, -0.402772,
		34.174004, 32.735809, 39.463680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069881, 33.033855, 40.289547>,  <33.967945, 33.342480, 39.745621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069881, 33.033855, 40.289547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238239, 32.768940, 40.041607>,  <34.339256, 32.609989, 39.892841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238239, 32.768940, 40.041607>,  <34.069881, 33.033855, 40.289547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238239, 32.768940, 40.041607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453052, -0.438517, 0.776175,
		-0.785869, -0.607514, 0.115482,
		0.420896, -0.662291, -0.619852,
		34.364510, 32.570251, 39.855652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903107, 32.343914, 40.503468>,  <34.069881, 33.033855, 40.289547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903107, 32.343914, 40.503468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231297, 32.319786, 40.276070>,  <34.428211, 32.305309, 40.139633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231297, 32.319786, 40.276070>,  <33.903107, 32.343914, 40.503468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231297, 32.319786, 40.276070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486690, -0.448008, 0.749948,
		-0.299925, -0.891993, -0.338223,
		0.820474, -0.060318, -0.568492,
		34.477440, 32.301689, 40.105522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121349, 31.632944, 40.594372>,  <33.903107, 32.343914, 40.503468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121349, 31.632944, 40.594372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432938, 31.845722, 40.461567>,  <34.619892, 31.973389, 40.381886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432938, 31.845722, 40.461567>,  <34.121349, 31.632944, 40.594372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432938, 31.845722, 40.461567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535682, -0.289304, 0.793315,
		0.325949, -0.795824, -0.510315,
		0.778975, 0.531946, -0.332010,
		34.666630, 32.005306, 40.361965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630009, 31.110344, 40.499088>,  <34.121349, 31.632944, 40.594372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630009, 31.110344, 40.499088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780228, 31.477011, 40.553764>,  <34.870361, 31.697010, 40.586571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780228, 31.477011, 40.553764>,  <34.630009, 31.110344, 40.499088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780228, 31.477011, 40.553764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563856, -0.343031, 0.751264,
		0.735546, -0.205066, -0.645693,
		0.375551, 0.916667, 0.136687,
		34.892895, 31.752010, 40.594769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384514, 30.917555, 40.771194>,  <34.630009, 31.110344, 40.499088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384514, 30.917555, 40.771194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310127, 31.301130, 40.856846>,  <35.265495, 31.531277, 40.908237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310127, 31.301130, 40.856846>,  <35.384514, 30.917555, 40.771194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310127, 31.301130, 40.856846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314692, -0.148322, 0.937534,
		0.930799, 0.241732, -0.274188,
		-0.185964, 0.958940, 0.214129,
		35.254337, 31.588812, 40.921085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839226, 31.183880, 41.131832>,  <35.384514, 30.917555, 40.771194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839226, 31.183880, 41.131832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536797, 31.433607, 41.210396>,  <35.355339, 31.583443, 41.257534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536797, 31.433607, 41.210396>,  <35.839226, 31.183880, 41.131832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536797, 31.433607, 41.210396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191046, -0.076493, 0.978596,
		0.625979, 0.777416, -0.061439,
		-0.756077, 0.624318, 0.196405,
		35.309975, 31.620903, 41.269318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084686, 31.629316, 41.594440>,  <35.839226, 31.183880, 41.131832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084686, 31.629316, 41.594440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688080, 31.655262, 41.639503>,  <35.450115, 31.670830, 41.666542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688080, 31.655262, 41.639503>,  <36.084686, 31.629316, 41.594440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688080, 31.655262, 41.639503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086248, -0.320180, 0.943423,
		0.097266, 0.945134, 0.311868,
		-0.991514, 0.064865, 0.112658,
		35.390625, 31.674721, 41.673302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050537, 31.881548, 42.213154>,  <36.084686, 31.629316, 41.594440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050537, 31.881548, 42.213154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686638, 31.735138, 42.134789>,  <35.468296, 31.647293, 42.087769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686638, 31.735138, 42.134789>,  <36.050537, 31.881548, 42.213154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686638, 31.735138, 42.134789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049980, -0.371902, 0.926926,
		-0.412135, 0.853063, 0.320044,
		-0.909751, -0.366023, -0.195910,
		35.413712, 31.625332, 42.076015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688477, 32.131790, 42.784363>,  <36.050537, 31.881548, 42.213154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688477, 32.131790, 42.784363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490356, 31.823553, 42.623928>,  <35.371483, 31.638611, 42.527668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490356, 31.823553, 42.623928>,  <35.688477, 32.131790, 42.784363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490356, 31.823553, 42.623928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276523, -0.297835, 0.913690,
		-0.823537, 0.563460, -0.065568,
		-0.495299, -0.770589, -0.401087,
		35.341766, 31.592377, 42.503601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220421, 32.118507, 43.283199>,  <35.688477, 32.131790, 42.784363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220421, 32.118507, 43.283199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147408, 31.788342, 43.069515>,  <35.103600, 31.590242, 42.941307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147408, 31.788342, 43.069515>,  <35.220421, 32.118507, 43.283199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147408, 31.788342, 43.069515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388046, -0.438746, 0.810508,
		-0.903383, 0.355243, -0.240211,
		-0.182536, -0.825412, -0.534206,
		35.092648, 31.540718, 42.909252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570259, 31.901947, 43.400856>,  <35.220421, 32.118507, 43.283199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570259, 31.901947, 43.400856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764938, 31.572256, 43.285080>,  <34.881744, 31.374441, 43.215614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764938, 31.572256, 43.285080>,  <34.570259, 31.901947, 43.400856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764938, 31.572256, 43.285080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325694, -0.478644, 0.815367,
		-0.810585, -0.302571, -0.501401,
		0.486699, -0.824228, -0.289436,
		34.910950, 31.324987, 43.198250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123413, 31.404491, 43.709686>,  <34.570259, 31.901947, 43.400856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123413, 31.404491, 43.709686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448109, 31.200720, 43.595444>,  <34.642925, 31.078457, 43.526897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448109, 31.200720, 43.595444>,  <34.123413, 31.404491, 43.709686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448109, 31.200720, 43.595444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068766, -0.568992, 0.819463,
		-0.579974, -0.645540, -0.496898,
		0.811727, -0.509437, -0.285610,
		34.691631, 31.047892, 43.509762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902908, 30.847311, 43.803761>,  <34.123413, 31.404491, 43.709686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902908, 30.847311, 43.803761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299793, 30.797472, 43.803833>,  <34.537922, 30.767569, 43.803875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299793, 30.797472, 43.803833>,  <33.902908, 30.847311, 43.803761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299793, 30.797472, 43.803833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071940, -0.571698, 0.817304,
		-0.101729, -0.810948, -0.576207,
		0.992208, -0.124596, 0.000181,
		34.597454, 30.760094, 43.803886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171524, 30.120173, 43.724499>,  <33.902908, 30.847311, 43.803761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171524, 30.120173, 43.724499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439106, 30.335903, 43.929100>,  <34.599655, 30.465342, 44.051861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439106, 30.335903, 43.929100>,  <34.171524, 30.120173, 43.724499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439106, 30.335903, 43.929100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223603, -0.510255, 0.830446,
		0.708877, -0.669900, -0.220741,
		0.668951, 0.539326, 0.511500,
		34.639790, 30.497702, 44.082550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345074, 29.498587, 44.243649>,  <34.171524, 30.120173, 43.724499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345074, 29.498587, 44.243649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512138, 29.835747, 44.379341>,  <34.612377, 30.038044, 44.460754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512138, 29.835747, 44.379341>,  <34.345074, 29.498587, 44.243649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512138, 29.835747, 44.379341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021058, -0.364271, 0.931055,
		0.908358, -0.396010, -0.134392,
		0.417662, 0.842902, 0.339228,
		34.637436, 30.088617, 44.481110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929272, 29.232405, 44.658146>,  <34.345074, 29.498587, 44.243649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929272, 29.232405, 44.658146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841766, 29.602854, 44.781067>,  <34.789265, 29.825123, 44.854820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841766, 29.602854, 44.781067>,  <34.929272, 29.232405, 44.658146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841766, 29.602854, 44.781067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012843, -0.317637, 0.948125,
		0.975693, 0.203468, 0.081382,
		-0.218763, 0.926125, 0.307303,
		34.776138, 29.880692, 44.873257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233086, 29.268362, 45.244171>,  <34.929272, 29.232405, 44.658146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233086, 29.268362, 45.244171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972855, 29.570093, 45.279362>,  <34.816715, 29.751133, 45.300476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972855, 29.570093, 45.279362>,  <35.233086, 29.268362, 45.244171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972855, 29.570093, 45.279362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210850, -0.290696, 0.933294,
		0.729585, 0.588628, 0.348170,
		-0.650575, 0.754329, 0.087975,
		34.777683, 29.796392, 45.305756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328979, 29.540615, 45.912189>,  <35.233086, 29.268362, 45.244171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328979, 29.540615, 45.912189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962166, 29.656609, 45.802681>,  <34.742077, 29.726206, 45.736977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962166, 29.656609, 45.802681>,  <35.328979, 29.540615, 45.912189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962166, 29.656609, 45.802681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353105, -0.271320, 0.895378,
		0.185367, 0.917766, 0.351206,
		-0.917037, 0.289986, -0.273774,
		34.687054, 29.743605, 45.720551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043774, 30.072191, 46.440075>,  <35.328979, 29.540615, 45.912189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043774, 30.072191, 46.440075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744267, 29.919977, 46.222988>,  <34.564564, 29.828650, 46.092735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744267, 29.919977, 46.222988>,  <35.043774, 30.072191, 46.440075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744267, 29.919977, 46.222988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469696, -0.273122, 0.839518,
		-0.467695, 0.883514, 0.025769,
		-0.748764, -0.380535, -0.542721,
		34.519638, 29.805817, 46.060173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555153, 30.324059, 46.765713>,  <35.043774, 30.072191, 46.440075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555153, 30.324059, 46.765713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393162, 30.014530, 46.570904>,  <34.295967, 29.828814, 46.454018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393162, 30.014530, 46.570904>,  <34.555153, 30.324059, 46.765713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393162, 30.014530, 46.570904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292398, -0.395078, 0.870871,
		-0.866311, 0.495090, -0.066266,
		-0.404979, -0.773821, -0.487024,
		34.271667, 29.782383, 46.424797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861359, 30.302814, 46.898232>,  <34.555153, 30.324059, 46.765713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861359, 30.302814, 46.898232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938824, 29.920204, 46.811001>,  <33.985302, 29.690638, 46.758663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938824, 29.920204, 46.811001>,  <33.861359, 30.302814, 46.898232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938824, 29.920204, 46.811001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462830, -0.285069, 0.839359,
		-0.865034, -0.061617, -0.497915,
		0.193659, -0.956524, -0.218076,
		33.996922, 29.633247, 46.745579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281551, 29.974297, 47.148144>,  <33.861359, 30.302814, 46.898232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281551, 29.974297, 47.148144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543510, 29.674288, 47.111103>,  <33.700687, 29.494284, 47.088879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543510, 29.674288, 47.111103>,  <33.281551, 29.974297, 47.148144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543510, 29.674288, 47.111103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436142, -0.475183, 0.764187,
		-0.617163, -0.460074, -0.638312,
		0.654898, -0.750022, -0.092608,
		33.739979, 29.449282, 47.083321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851181, 29.292070, 47.217110>,  <33.281551, 29.974297, 47.148144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851181, 29.292070, 47.217110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235954, 29.234961, 47.310326>,  <33.466816, 29.200695, 47.366257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235954, 29.234961, 47.310326>,  <32.851181, 29.292070, 47.217110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235954, 29.234961, 47.310326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272893, -0.548251, 0.790538,
		0.014895, -0.824036, -0.566341,
		0.961929, -0.142775, 0.233040,
		33.524532, 29.192127, 47.380238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015026, 28.503925, 47.379421>,  <32.851181, 29.292070, 47.217110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015026, 28.503925, 47.379421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323330, 28.674810, 47.568489>,  <33.508312, 28.777342, 47.681931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323330, 28.674810, 47.568489>,  <33.015026, 28.503925, 47.379421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323330, 28.674810, 47.568489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186935, -0.557593, 0.808793,
		0.609082, -0.711745, -0.349911,
		0.770762, 0.427211, 0.472669,
		33.554558, 28.802973, 47.710289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472046, 28.002529, 47.668816>,  <33.015026, 28.503925, 47.379421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472046, 28.002529, 47.668816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610870, 28.310703, 47.882725>,  <33.694164, 28.495607, 48.011070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610870, 28.310703, 47.882725>,  <33.472046, 28.002529, 47.668816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610870, 28.310703, 47.882725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072824, -0.546351, 0.834385,
		0.935010, -0.328527, -0.133512,
		0.347062, 0.770435, 0.534768,
		33.714989, 28.541834, 48.043156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962231, 27.710602, 48.231670>,  <33.472046, 28.002529, 47.668816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962231, 27.710602, 48.231670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866993, 28.079214, 48.354370>,  <33.809853, 28.300381, 48.427990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866993, 28.079214, 48.354370>,  <33.962231, 27.710602, 48.231670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866993, 28.079214, 48.354370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179283, -0.352107, 0.918628,
		0.954552, 0.163722, 0.249048,
		-0.238091, 0.921529, 0.306752,
		33.795567, 28.355673, 48.446396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167271, 27.645735, 48.837406>,  <33.962231, 27.710602, 48.231670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167271, 27.645735, 48.837406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923508, 27.962696, 48.848160>,  <33.777248, 28.152872, 48.854610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923508, 27.962696, 48.848160>,  <34.167271, 27.645735, 48.837406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923508, 27.962696, 48.848160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383671, -0.324402, 0.864616,
		0.693845, 0.516587, 0.501714,
		-0.609406, 0.792402, 0.026885,
		33.740685, 28.200417, 48.856224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184853, 27.959673, 49.511311>,  <34.167271, 27.645735, 48.837406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184853, 27.959673, 49.511311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838520, 28.061085, 49.338772>,  <33.630722, 28.121931, 49.235249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838520, 28.061085, 49.338772>,  <34.184853, 27.959673, 49.511311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838520, 28.061085, 49.338772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491114, -0.265886, 0.829525,
		0.095621, 0.930068, 0.354725,
		-0.865831, 0.253530, -0.431345,
		33.578770, 28.137144, 49.209370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619358, 28.088499, 50.136513>,  <34.184853, 27.959673, 49.511311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619358, 28.088499, 50.136513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390816, 28.059370, 49.809528>,  <33.253689, 28.041893, 49.613338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390816, 28.059370, 49.809528>,  <33.619358, 28.088499, 50.136513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390816, 28.059370, 49.809528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753847, -0.347193, 0.557827,
		-0.324440, 0.934962, 0.143473,
		-0.571360, -0.072825, -0.817462,
		33.219406, 28.037523, 49.564289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918625, 28.183716, 50.430130>,  <33.619358, 28.088499, 50.136513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918625, 28.183716, 50.430130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830124, 28.058674, 50.060627>,  <32.777023, 27.983648, 49.838924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830124, 28.058674, 50.060627>,  <32.918625, 28.183716, 50.430130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830124, 28.058674, 50.060627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843539, -0.413988, 0.342135,
		-0.489377, 0.854922, -0.172099,
		-0.221252, -0.312605, -0.923756,
		32.763748, 27.964891, 49.783501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161282, 28.330032, 50.335114>,  <32.918625, 28.183716, 50.430130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161282, 28.330032, 50.335114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293274, 28.028784, 50.107456>,  <32.372471, 27.848036, 49.970863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293274, 28.028784, 50.107456>,  <32.161282, 28.330032, 50.335114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293274, 28.028784, 50.107456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829713, -0.518935, 0.205627,
		-0.450210, 0.404373, -0.796111,
		0.329980, -0.753120, -0.569144,
		32.392269, 27.802849, 49.936714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489985, 28.147768, 50.027012>,  <32.161282, 28.330032, 50.335114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489985, 28.147768, 50.027012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774496, 27.866604, 50.026497>,  <31.945204, 27.697906, 50.026188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774496, 27.866604, 50.026497>,  <31.489985, 28.147768, 50.027012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774496, 27.866604, 50.026497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604445, -0.612571, 0.509317,
		-0.358789, -0.361491, -0.860578,
		0.711278, -0.702909, -0.001283,
		31.987879, 27.655731, 50.026112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401897, 27.694029, 50.604599>,  <31.489985, 28.147768, 50.027012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401897, 27.694029, 50.604599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027630, 27.590515, 50.508640>,  <30.803068, 27.528406, 50.451065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027630, 27.590515, 50.508640>,  <31.401897, 27.694029, 50.604599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027630, 27.590515, 50.508640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141337, -0.897765, 0.417184,
		-0.323334, 0.356440, 0.876587,
		-0.935670, -0.258784, -0.239900,
		30.746929, 27.512880, 50.436668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010784, 27.534178, 51.243671>,  <31.401897, 27.694029, 50.604599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010784, 27.534178, 51.243671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889885, 27.323341, 50.925972>,  <30.817347, 27.196840, 50.735352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889885, 27.323341, 50.925972>,  <31.010784, 27.534178, 51.243671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889885, 27.323341, 50.925972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061646, -0.842278, 0.535508,
		-0.951235, 0.112893, 0.287068,
		-0.302246, -0.527090, -0.794244,
		30.799212, 27.165215, 50.687698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486233, 27.010736, 51.352013>,  <31.010784, 27.534178, 51.243671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486233, 27.010736, 51.352013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731113, 26.885111, 51.061752>,  <30.878042, 26.809736, 50.887596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731113, 26.885111, 51.061752>,  <30.486233, 27.010736, 51.352013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731113, 26.885111, 51.061752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133323, -0.863593, 0.486243,
		-0.779378, -0.394426, -0.486823,
		0.612204, -0.314062, -0.725652,
		30.914774, 26.790892, 50.844055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328932, 26.331722, 51.140804>,  <30.486233, 27.010736, 51.352013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328932, 26.331722, 51.140804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718500, 26.388613, 51.070087>,  <30.952240, 26.422747, 51.027657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718500, 26.388613, 51.070087>,  <30.328932, 26.331722, 51.140804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718500, 26.388613, 51.070087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215984, -0.819870, 0.530250,
		-0.069526, -0.554603, -0.829205,
		0.973918, 0.142229, -0.176787,
		31.010675, 26.431282, 51.017052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633852, 25.762074, 50.856632>,  <30.328932, 26.331722, 51.140804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633852, 25.762074, 50.856632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902758, 25.971889, 51.065601>,  <31.064100, 26.097778, 51.190983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902758, 25.971889, 51.065601>,  <30.633852, 25.762074, 50.856632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902758, 25.971889, 51.065601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272269, -0.831396, 0.484408,
		0.688428, -0.183411, -0.701732,
		0.672262, 0.524540, 0.522419,
		31.104437, 26.129251, 51.222328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253038, 25.359911, 51.021629>,  <30.633852, 25.762074, 50.856632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253038, 25.359911, 51.021629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305794, 25.590309, 51.344326>,  <31.337446, 25.728548, 51.537945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305794, 25.590309, 51.344326>,  <31.253038, 25.359911, 51.021629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305794, 25.590309, 51.344326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411780, -0.772143, 0.483976,
		0.901689, 0.268371, -0.339019,
		0.131886, 0.575997, 0.806743,
		31.345360, 25.763107, 51.586349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849033, 25.662788, 50.781128>,  <31.253038, 25.359911, 51.021629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849033, 25.662788, 50.781128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139263, 25.743408, 50.517941>,  <32.313400, 25.791780, 50.360027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139263, 25.743408, 50.517941>,  <31.849033, 25.662788, 50.781128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139263, 25.743408, 50.517941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654084, -0.499077, 0.568415,
		-0.213810, -0.842792, -0.493950,
		0.725575, 0.201552, -0.657965,
		32.356937, 25.803873, 50.320553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129650, 24.959047, 50.650936>,  <31.849033, 25.662788, 50.781128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129650, 24.959047, 50.650936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417702, 25.231159, 50.596329>,  <32.590530, 25.394426, 50.563564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417702, 25.231159, 50.596329>,  <32.129650, 24.959047, 50.650936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417702, 25.231159, 50.596329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579165, -0.480999, 0.658185,
		0.382083, -0.553045, -0.740374,
		0.720125, 0.680280, -0.136523,
		32.633739, 25.435244, 50.555370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779190, 24.577875, 50.642456>,  <32.129650, 24.959047, 50.650936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779190, 24.577875, 50.642456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871338, 24.958008, 50.726170>,  <32.926628, 25.186087, 50.776398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871338, 24.958008, 50.726170>,  <32.779190, 24.577875, 50.642456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871338, 24.958008, 50.726170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747912, -0.310506, 0.586697,
		0.622540, 0.021366, -0.782296,
		0.230372, 0.950331, 0.209282,
		32.940449, 25.243107, 50.788956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530533, 24.689180, 50.585896>,  <32.779190, 24.577875, 50.642456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530533, 24.689180, 50.585896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363609, 24.947931, 50.841209>,  <33.263454, 25.103182, 50.994396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363609, 24.947931, 50.841209>,  <33.530533, 24.689180, 50.585896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363609, 24.947931, 50.841209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563863, -0.366505, 0.740090,
		0.712681, 0.668748, -0.211806,
		-0.417306, 0.646878, 0.638283,
		33.238419, 25.141994, 51.032696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096752, 24.470352, 50.030926>,  <33.530533, 24.689180, 50.585896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096752, 24.470352, 50.030926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821491, 24.740967, 49.926044>,  <33.656334, 24.903336, 49.863117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821491, 24.740967, 49.926044>,  <34.096752, 24.470352, 50.030926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821491, 24.740967, 49.926044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385647, 0.034936, -0.921985,
		-0.614595, -0.735581, -0.284945,
		-0.688149, 0.676535, -0.262203,
		33.615047, 24.943928, 49.847385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899532, 24.231358, 49.389236>,  <34.096752, 24.470352, 50.030926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899532, 24.231358, 49.389236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780544, 24.613249, 49.390240>,  <33.709152, 24.842382, 49.390842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780544, 24.613249, 49.390240>,  <33.899532, 24.231358, 49.389236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780544, 24.613249, 49.390240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123268, 0.041014, -0.991526,
		-0.946739, -0.294644, -0.129888,
		-0.297475, 0.954727, 0.002510,
		33.691303, 24.899666, 49.390991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417938, 24.325775, 48.849525>,  <33.899532, 24.231358, 49.389236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417938, 24.325775, 48.849525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563862, 24.689329, 48.930367>,  <33.651417, 24.907461, 48.978870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563862, 24.689329, 48.930367>,  <33.417938, 24.325775, 48.849525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563862, 24.689329, 48.930367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248433, 0.114178, -0.961896,
		-0.897329, 0.401114, -0.184144,
		0.364804, 0.908885, 0.202105,
		33.673302, 24.961994, 48.990997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214680, 24.682871, 48.303162>,  <33.417938, 24.325775, 48.849525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214680, 24.682871, 48.303162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509315, 24.899744, 48.464890>,  <33.686096, 25.029869, 48.561924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509315, 24.899744, 48.464890>,  <33.214680, 24.682871, 48.303162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509315, 24.899744, 48.464890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337023, 0.224054, -0.914448,
		-0.586388, 0.809837, -0.017693,
		0.736590, 0.542185, 0.404316,
		33.730293, 25.062399, 48.586185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115955, 25.253603, 48.081692>,  <33.214680, 24.682871, 48.303162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115955, 25.253603, 48.081692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500256, 25.237719, 48.191517>,  <33.730835, 25.228188, 48.257412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500256, 25.237719, 48.191517>,  <33.115955, 25.253603, 48.081692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500256, 25.237719, 48.191517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274490, 0.279598, -0.920043,
		-0.040235, 0.959296, 0.279523,
		0.960748, -0.039709, 0.274567,
		33.788479, 25.225805, 48.273888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329651, 25.726292, 47.720188>,  <33.115955, 25.253603, 48.081692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329651, 25.726292, 47.720188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687019, 25.576368, 47.819241>,  <33.901440, 25.486414, 47.878670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687019, 25.576368, 47.819241>,  <33.329651, 25.726292, 47.720188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687019, 25.576368, 47.819241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389835, 0.372966, -0.841977,
		0.223222, 0.848773, 0.479329,
		0.893421, -0.374807, 0.247627,
		33.955044, 25.463926, 47.893528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857353, 26.259480, 47.815018>,  <33.329651, 25.726292, 47.720188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857353, 26.259480, 47.815018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041096, 25.917446, 47.718830>,  <34.151340, 25.712227, 47.661118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041096, 25.917446, 47.718830>,  <33.857353, 26.259480, 47.815018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041096, 25.917446, 47.718830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401173, 0.441256, -0.802716,
		0.792498, 0.272261, 0.545730,
		0.459355, -0.855083, -0.240471,
		34.178902, 25.660921, 47.646690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651058, 26.353029, 47.692661>,  <33.857353, 26.259480, 47.815018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651058, 26.353029, 47.692661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577702, 26.001398, 47.516666>,  <34.533688, 25.790421, 47.411068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577702, 26.001398, 47.516666>,  <34.651058, 26.353029, 47.692661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577702, 26.001398, 47.516666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585583, 0.261816, -0.767167,
		0.789595, -0.398342, 0.466759,
		-0.183390, -0.879077, -0.439991,
		34.522686, 25.737675, 47.384670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294312, 26.147762, 47.499844>,  <34.651058, 26.353029, 47.692661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294312, 26.147762, 47.499844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036446, 25.945665, 47.270363>,  <34.881725, 25.824406, 47.132675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036446, 25.945665, 47.270363>,  <35.294312, 26.147762, 47.499844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036446, 25.945665, 47.270363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560110, 0.198574, -0.804267,
		0.520275, -0.839819, 0.154979,
		-0.644663, -0.505245, -0.573704,
		34.843048, 25.794092, 47.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671581, 25.678604, 47.017437>,  <35.294312, 26.147762, 47.499844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671581, 25.678604, 47.017437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321041, 25.701132, 46.826084>,  <35.110718, 25.714647, 46.711273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321041, 25.701132, 46.826084>,  <35.671581, 25.678604, 47.017437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321041, 25.701132, 46.826084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481653, 0.113415, -0.868992,
		0.005313, -0.991950, -0.126518,
		-0.876346, 0.056321, -0.478378,
		35.058136, 25.718027, 46.682571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783436, 25.310965, 46.350742>,  <35.671581, 25.678604, 47.017437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783436, 25.310965, 46.350742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458706, 25.538578, 46.298378>,  <35.263866, 25.675146, 46.266960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458706, 25.538578, 46.298378>,  <35.783436, 25.310965, 46.350742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458706, 25.538578, 46.298378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359248, 0.310024, -0.880242,
		-0.460301, -0.761634, -0.456110,
		-0.811828, 0.569033, -0.130911,
		35.215157, 25.709288, 46.259106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721657, 25.309603, 45.608524>,  <35.783436, 25.310965, 46.350742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721657, 25.309603, 45.608524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474407, 25.618204, 45.668789>,  <35.326057, 25.803366, 45.704948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474407, 25.618204, 45.668789>,  <35.721657, 25.309603, 45.608524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474407, 25.618204, 45.668789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292502, 0.403641, -0.866900,
		-0.729631, -0.491785, -0.475169,
		-0.618126, 0.771505, 0.150661,
		35.288971, 25.849655, 45.713985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216381, 25.447910, 45.022202>,  <35.721657, 25.309603, 45.608524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216381, 25.447910, 45.022202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280552, 25.795521, 45.209415>,  <35.319054, 26.004087, 45.321743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280552, 25.795521, 45.209415>,  <35.216381, 25.447910, 45.022202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280552, 25.795521, 45.209415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261372, 0.419852, -0.869142,
		-0.951814, 0.261763, -0.159785,
		0.160423, 0.869025, 0.468039,
		35.328678, 26.056229, 45.349827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841824, 25.892181, 44.630394>,  <35.216381, 25.447910, 45.022202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841824, 25.892181, 44.630394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051807, 26.152689, 44.849579>,  <35.177799, 26.308994, 44.981091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051807, 26.152689, 44.849579>,  <34.841824, 25.892181, 44.630394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051807, 26.152689, 44.849579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002302, 0.642719, -0.766099,
		-0.851121, 0.403435, 0.335905,
		0.524964, 0.651270, 0.547960,
		35.209297, 26.348070, 45.013966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601982, 26.583948, 44.581131>,  <34.841824, 25.892181, 44.630394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601982, 26.583948, 44.581131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983734, 26.647392, 44.682320>,  <35.212788, 26.685459, 44.743034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983734, 26.647392, 44.682320>,  <34.601982, 26.583948, 44.581131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983734, 26.647392, 44.682320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105504, 0.613457, -0.782649,
		-0.279323, 0.773637, 0.568739,
		0.954383, 0.158608, 0.252975,
		35.270050, 26.694975, 44.758213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613091, 27.232447, 44.519806>,  <34.601982, 26.583948, 44.581131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613091, 27.232447, 44.519806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996223, 27.117746, 44.512444>,  <35.226101, 27.048927, 44.508026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996223, 27.117746, 44.512444>,  <34.613091, 27.232447, 44.519806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996223, 27.117746, 44.512444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172337, 0.624556, -0.761728,
		0.229922, 0.726432, 0.647636,
		0.957829, -0.286750, -0.018408,
		35.283573, 27.031721, 44.506920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947311, 27.780428, 44.455799>,  <34.613091, 27.232447, 44.519806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947311, 27.780428, 44.455799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226772, 27.522930, 44.330914>,  <35.394451, 27.368431, 44.255981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226772, 27.522930, 44.330914>,  <34.947311, 27.780428, 44.455799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226772, 27.522930, 44.330914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100187, 0.520106, -0.848206,
		0.708408, 0.561325, 0.427870,
		0.698656, -0.643743, -0.312209,
		35.436371, 27.329807, 44.237251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405308, 28.218052, 44.170990>,  <34.947311, 27.780428, 44.455799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405308, 28.218052, 44.170990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472115, 27.850971, 44.026806>,  <35.512199, 27.630722, 43.940296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472115, 27.850971, 44.026806>,  <35.405308, 28.218052, 44.170990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472115, 27.850971, 44.026806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051313, 0.373186, -0.926336,
		0.984618, 0.136217, 0.109418,
		0.167016, -0.917702, -0.360456,
		35.522221, 27.575661, 43.918671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959030, 28.240818, 43.754929>,  <35.405308, 28.218052, 44.170990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959030, 28.240818, 43.754929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747849, 27.932735, 43.611794>,  <35.621140, 27.747887, 43.525913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747849, 27.932735, 43.611794>,  <35.959030, 28.240818, 43.754929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747849, 27.932735, 43.611794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002387, 0.422688, -0.906272,
		0.849270, -0.477615, -0.224998,
		-0.527953, -0.770207, -0.357836,
		35.589462, 27.701674, 43.504444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117214, 28.326284, 43.029728>,  <35.959030, 28.240818, 43.754929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117214, 28.326284, 43.029728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856995, 28.023180, 43.050083>,  <35.700863, 27.841318, 43.062294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856995, 28.023180, 43.050083>,  <36.117214, 28.326284, 43.029728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856995, 28.023180, 43.050083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251912, 0.152090, -0.955724,
		0.716472, -0.634560, -0.289830,
		-0.650545, -0.757761, 0.050885,
		35.661831, 27.795851, 43.065350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239231, 27.865541, 42.455326>,  <36.117214, 28.326284, 43.029728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239231, 27.865541, 42.455326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854755, 27.841085, 42.562943>,  <35.624069, 27.826412, 42.627510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854755, 27.841085, 42.562943>,  <36.239231, 27.865541, 42.455326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854755, 27.841085, 42.562943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275330, 0.150058, -0.949566,
		0.017686, -0.986785, -0.161068,
		-0.961187, -0.061140, 0.269037,
		35.566399, 27.822742, 42.643654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944065, 27.466042, 41.952339>,  <36.239231, 27.865541, 42.455326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944065, 27.466042, 41.952339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636868, 27.663834, 42.115150>,  <35.452549, 27.782509, 42.212837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636868, 27.663834, 42.115150>,  <35.944065, 27.466042, 41.952339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636868, 27.663834, 42.115150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344437, 0.216914, -0.913406,
		-0.539952, -0.841688, 0.003729,
		-0.767994, 0.494480, 0.407032,
		35.406467, 27.812178, 42.237259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407501, 27.229479, 41.600601>,  <35.944065, 27.466042, 41.952339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407501, 27.229479, 41.600601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304222, 27.577703, 41.768150>,  <35.242256, 27.786638, 41.868679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304222, 27.577703, 41.768150>,  <35.407501, 27.229479, 41.600601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304222, 27.577703, 41.768150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477884, 0.261726, -0.838526,
		-0.839620, -0.416677, 0.348452,
		-0.258196, 0.870563, 0.418873,
		35.226765, 27.838873, 41.893814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743332, 27.375677, 41.272602>,  <35.407501, 27.229479, 41.600601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743332, 27.375677, 41.272602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860882, 27.737946, 41.394844>,  <34.931412, 27.955307, 41.468189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860882, 27.737946, 41.394844>,  <34.743332, 27.375677, 41.272602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860882, 27.737946, 41.394844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386670, 0.405035, -0.828512,
		-0.874141, 0.125311, 0.469227,
		0.293875, 0.905673, 0.305604,
		34.949043, 28.009647, 41.486526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162281, 27.759478, 41.292068>,  <34.743332, 27.375677, 41.272602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162281, 27.759478, 41.292068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457561, 28.028801, 41.275509>,  <34.634731, 28.190395, 41.265572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457561, 28.028801, 41.275509>,  <34.162281, 27.759478, 41.292068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457561, 28.028801, 41.275509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485232, 0.487364, -0.725966,
		-0.468621, 0.555999, 0.686484,
		0.738203, 0.673307, -0.041399,
		34.679024, 28.230793, 41.263088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877857, 28.341244, 41.284050>,  <34.162281, 27.759478, 41.292068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877857, 28.341244, 41.284050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230621, 28.392361, 41.102543>,  <34.442280, 28.423031, 40.993641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230621, 28.392361, 41.102543>,  <33.877857, 28.341244, 41.284050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230621, 28.392361, 41.102543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418388, 0.655713, -0.628484,
		0.217224, 0.744117, 0.631747,
		0.881910, 0.127793, -0.453766,
		34.495193, 28.430698, 40.966412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789238, 28.830835, 40.668907>,  <33.877857, 28.341244, 41.284050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789238, 28.830835, 40.668907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174088, 28.740519, 40.607811>,  <34.404999, 28.686329, 40.571152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174088, 28.740519, 40.607811>,  <33.789238, 28.830835, 40.668907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174088, 28.740519, 40.607811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114236, 0.174800, -0.977955,
		0.247513, 0.958365, 0.142386,
		0.962127, -0.225790, -0.152744,
		34.462727, 28.672781, 40.561989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133011, 29.404587, 40.289894>,  <33.789238, 28.830835, 40.668907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133011, 29.404587, 40.289894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346607, 29.072193, 40.227516>,  <34.474766, 28.872757, 40.190090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346607, 29.072193, 40.227516>,  <34.133011, 29.404587, 40.289894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346607, 29.072193, 40.227516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052657, 0.151401, -0.987069,
		0.843847, 0.535301, 0.037090,
		0.533994, -0.830982, -0.155947,
		34.506805, 28.822899, 40.180733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638271, 29.626663, 39.932220>,  <34.133011, 29.404587, 40.289894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638271, 29.626663, 39.932220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635620, 29.231750, 39.868679>,  <34.634029, 28.994802, 39.830555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635620, 29.231750, 39.868679>,  <34.638271, 29.626663, 39.932220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635620, 29.231750, 39.868679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113378, 0.158572, -0.980816,
		0.993530, 0.011506, -0.112987,
		-0.006632, -0.987280, -0.158850,
		34.633629, 28.935566, 39.821026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130806, 29.452259, 39.419510>,  <34.638271, 29.626663, 39.932220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130806, 29.452259, 39.419510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858170, 29.159983, 39.435116>,  <34.694588, 28.984617, 39.444481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858170, 29.159983, 39.435116>,  <35.130806, 29.452259, 39.419510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858170, 29.159983, 39.435116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169250, 0.105553, -0.979904,
		0.711890, -0.674498, -0.195614,
		-0.681591, -0.730692, 0.039016,
		34.653690, 28.940775, 39.446819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355526, 28.988291, 38.884953>,  <35.130806, 29.452259, 39.419510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355526, 28.988291, 38.884953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966785, 28.938313, 38.964836>,  <34.733540, 28.908325, 39.012768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966785, 28.938313, 38.964836>,  <35.355526, 28.988291, 38.884953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966785, 28.938313, 38.964836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224126, 0.229336, -0.947192,
		0.072547, -0.965294, -0.250886,
		-0.971856, -0.124946, 0.199710,
		34.675228, 28.900827, 39.024750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061020, 28.758621, 38.302956>,  <35.355526, 28.988291, 38.884953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061020, 28.758621, 38.302956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711102, 28.845247, 38.476315>,  <34.501152, 28.897223, 38.580330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711102, 28.845247, 38.476315>,  <35.061020, 28.758621, 38.302956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711102, 28.845247, 38.476315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293626, 0.474565, -0.829802,
		-0.385381, -0.853163, -0.351559,
		-0.874795, 0.216563, 0.433399,
		34.448662, 28.910215, 38.606335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530140, 28.618574, 37.815197>,  <35.061020, 28.758621, 38.302956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530140, 28.618574, 37.815197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342960, 28.864687, 38.068954>,  <34.230652, 29.012356, 38.221207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342960, 28.864687, 38.068954>,  <34.530140, 28.618574, 37.815197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342960, 28.864687, 38.068954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526748, 0.382211, -0.759244,
		-0.709621, -0.689450, 0.145245,
		-0.467947, 0.615283, 0.634392,
		34.202576, 29.049273, 38.259274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923859, 28.686525, 37.466759>,  <34.530140, 28.618574, 37.815197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923859, 28.686525, 37.466759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970856, 29.001411, 37.708912>,  <33.999054, 29.190344, 37.854202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970856, 29.001411, 37.708912>,  <33.923859, 28.686525, 37.466759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970856, 29.001411, 37.708912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411700, 0.593362, -0.691682,
		-0.903713, -0.167966, 0.393814,
		0.117495, 0.787216, 0.605381,
		34.006104, 29.237576, 37.890526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387085, 29.086540, 37.382572>,  <33.923859, 28.686525, 37.466759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387085, 29.086540, 37.382572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657173, 29.337488, 37.537739>,  <33.819225, 29.488058, 37.630836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657173, 29.337488, 37.537739>,  <33.387085, 29.086540, 37.382572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657173, 29.337488, 37.537739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169079, 0.643547, -0.746498,
		-0.717973, 0.438465, 0.540614,
		0.675224, 0.627372, 0.387915,
		33.859741, 29.525700, 37.654114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047291, 29.678059, 37.456772>,  <33.387085, 29.086540, 37.382572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047291, 29.678059, 37.456772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428040, 29.800417, 37.464424>,  <33.656490, 29.873833, 37.469017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428040, 29.800417, 37.464424>,  <33.047291, 29.678059, 37.456772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428040, 29.800417, 37.464424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215531, 0.712445, -0.667809,
		-0.217912, 0.631545, 0.744087,
		0.951872, 0.305898, 0.019133,
		33.713600, 29.892187, 37.470165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134327, 30.416967, 37.643768>,  <33.047291, 29.678059, 37.456772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134327, 30.416967, 37.643768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468994, 30.338310, 37.439293>,  <33.669796, 30.291117, 37.316608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468994, 30.338310, 37.439293>,  <33.134327, 30.416967, 37.643768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468994, 30.338310, 37.439293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139250, 0.826285, -0.545768,
		0.529707, 0.527811, 0.663947,
		0.836672, -0.196643, -0.511186,
		33.719997, 30.279318, 37.285938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314812, 31.090185, 37.443638>,  <33.134327, 30.416967, 37.643768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314812, 31.090185, 37.443638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555046, 30.866886, 37.214672>,  <33.699184, 30.732906, 37.077293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555046, 30.866886, 37.214672>,  <33.314812, 31.090185, 37.443638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555046, 30.866886, 37.214672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042687, 0.692503, -0.720151,
		0.798423, 0.456945, 0.392075,
		0.600582, -0.558248, -0.572416,
		33.735222, 30.699411, 37.042946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956436, 31.490978, 37.235386>,  <33.314812, 31.090185, 37.443638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956436, 31.490978, 37.235386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931908, 31.195705, 36.966663>,  <33.917191, 31.018541, 36.805428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931908, 31.195705, 36.966663>,  <33.956436, 31.490978, 37.235386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931908, 31.195705, 36.966663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093109, 0.674370, -0.732499,
		0.993766, 0.017635, -0.110084,
		-0.061320, -0.738183, -0.671808,
		33.913513, 30.974251, 36.765121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489605, 31.660069, 36.795490>,  <33.956436, 31.490978, 37.235386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489605, 31.660069, 36.795490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224888, 31.444778, 36.586742>,  <34.066059, 31.315603, 36.461494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224888, 31.444778, 36.586742>,  <34.489605, 31.660069, 36.795490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224888, 31.444778, 36.586742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110676, 0.758626, -0.642057,
		0.741469, -0.367153, -0.561625,
		-0.661796, -0.538223, -0.521863,
		34.026352, 31.283310, 36.430183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108589, 31.098732, 36.775528>,  <34.489605, 31.660069, 36.795490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108589, 31.098732, 36.775528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465084, 31.268631, 36.711922>,  <35.678982, 31.370569, 36.673759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465084, 31.268631, 36.711922>,  <35.108589, 31.098732, 36.775528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465084, 31.268631, 36.711922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426752, -0.666677, 0.611085,
		0.153545, -0.612481, -0.775429,
		0.891239, 0.424745, -0.159013,
		35.732456, 31.396055, 36.664219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639175, 30.609371, 36.554890>,  <35.108589, 31.098732, 36.775528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639175, 30.609371, 36.554890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820965, 30.915018, 36.738007>,  <35.930038, 31.098406, 36.847878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820965, 30.915018, 36.738007>,  <35.639175, 30.609371, 36.554890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820965, 30.915018, 36.738007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378589, -0.630908, 0.677219,
		0.806302, -0.134462, -0.576018,
		0.454475, 0.764117, 0.457797,
		35.957306, 31.144253, 36.875347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296066, 30.409002, 36.636826>,  <35.639175, 30.609371, 36.554890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296066, 30.409002, 36.636826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267887, 30.701416, 36.908302>,  <36.250980, 30.876863, 37.071190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267887, 30.701416, 36.908302>,  <36.296066, 30.409002, 36.636826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267887, 30.701416, 36.908302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413310, -0.597841, 0.686849,
		0.907861, 0.328899, -0.260026,
		-0.070450, 0.731034, 0.678694,
		36.246754, 30.920727, 37.111912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960842, 30.521498, 36.972824>,  <36.296066, 30.409002, 36.636826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960842, 30.521498, 36.972824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680801, 30.655748, 37.224926>,  <36.512779, 30.736300, 37.376186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680801, 30.655748, 37.224926>,  <36.960842, 30.521498, 36.972824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680801, 30.655748, 37.224926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462813, -0.458856, 0.758456,
		0.543753, 0.822682, 0.165912,
		-0.700097, 0.335626, 0.630253,
		36.470772, 30.756435, 37.414001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342911, 30.738447, 37.449604>,  <36.960842, 30.521498, 36.972824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342911, 30.738447, 37.449604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982376, 30.691494, 37.616367>,  <36.766056, 30.663322, 37.716427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982376, 30.691494, 37.616367>,  <37.342911, 30.738447, 37.449604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982376, 30.691494, 37.616367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432535, -0.293942, 0.852356,
		0.022493, 0.948588, 0.315714,
		-0.901336, -0.117385, 0.416909,
		36.711975, 30.656279, 37.741440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434319, 31.123983, 37.974522>,  <37.342911, 30.738447, 37.449604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434319, 31.123983, 37.974522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136684, 30.876814, 38.076111>,  <36.958103, 30.728512, 38.137062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136684, 30.876814, 38.076111>,  <37.434319, 31.123983, 37.974522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136684, 30.876814, 38.076111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500314, -0.263476, 0.824782,
		-0.442737, 0.740777, 0.505206,
		-0.744089, -0.617924, 0.253971,
		36.913456, 30.691437, 38.152302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304539, 31.196730, 38.670906>,  <37.434319, 31.123983, 37.974522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304539, 31.196730, 38.670906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183140, 30.827681, 38.575695>,  <37.110302, 30.606251, 38.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183140, 30.827681, 38.575695>,  <37.304539, 31.196730, 38.670906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183140, 30.827681, 38.575695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330479, -0.336228, 0.881892,
		-0.893685, 0.188990, 0.406952,
		-0.303498, -0.922623, -0.238025,
		37.092091, 30.550894, 38.504288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026707, 31.126038, 39.289967>,  <37.304539, 31.196730, 38.670906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026707, 31.126038, 39.289967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051193, 30.741570, 39.182339>,  <37.065887, 30.510887, 39.117760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051193, 30.741570, 39.182339>,  <37.026707, 31.126038, 39.289967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051193, 30.741570, 39.182339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271342, -0.243398, 0.931199,
		-0.960534, -0.130018, 0.245906,
		0.061219, -0.961173, -0.269072,
		37.069557, 30.453218, 39.101616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727432, 30.780947, 39.830425>,  <37.026707, 31.126038, 39.289967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727432, 30.780947, 39.830425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947811, 30.508348, 39.637753>,  <37.080040, 30.344790, 39.522148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947811, 30.508348, 39.637753>,  <36.727432, 30.780947, 39.830425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947811, 30.508348, 39.637753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311991, -0.367134, 0.876284,
		-0.774025, -0.633071, 0.010347,
		0.550951, -0.681494, -0.481684,
		37.113098, 30.303900, 39.493248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650158, 30.242004, 40.345245>,  <36.727432, 30.780947, 39.830425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650158, 30.242004, 40.345245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934410, 30.129026, 40.087494>,  <37.104961, 30.061239, 39.932842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934410, 30.129026, 40.087494>,  <36.650158, 30.242004, 40.345245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934410, 30.129026, 40.087494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522038, -0.402336, 0.752065,
		-0.471675, -0.870833, -0.138466,
		0.710633, -0.282445, -0.644380,
		37.147598, 30.044292, 39.894180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672562, 29.480169, 40.378403>,  <36.650158, 30.242004, 40.345245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672562, 29.480169, 40.378403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016224, 29.646832, 40.259575>,  <37.222420, 29.746828, 40.188278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016224, 29.646832, 40.259575>,  <36.672562, 29.480169, 40.378403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016224, 29.646832, 40.259575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467005, -0.401121, 0.788040,
		0.209181, -0.815782, -0.539206,
		0.859156, 0.416655, -0.297067,
		37.273972, 29.771828, 40.170456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188324, 28.949564, 40.445759>,  <36.672562, 29.480169, 40.378403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188324, 28.949564, 40.445759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457680, 29.245193, 40.452885>,  <37.619293, 29.422571, 40.457161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457680, 29.245193, 40.452885>,  <37.188324, 28.949564, 40.445759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457680, 29.245193, 40.452885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391755, -0.377164, 0.839211,
		0.626955, -0.558140, -0.543514,
		0.673391, 0.739072, 0.017811,
		37.659698, 29.466915, 40.458229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817772, 28.677187, 40.597786>,  <37.188324, 28.949564, 40.445759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817772, 28.677187, 40.597786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863964, 29.065866, 40.680218>,  <37.891678, 29.299074, 40.729675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863964, 29.065866, 40.680218>,  <37.817772, 28.677187, 40.597786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863964, 29.065866, 40.680218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313300, -0.232509, 0.920751,
		0.942607, -0.041764, -0.331283,
		0.115481, 0.971697, 0.206079,
		37.898609, 29.357376, 40.742043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540390, 28.711355, 40.831173>,  <37.817772, 28.677187, 40.597786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540390, 28.711355, 40.831173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349224, 29.037786, 40.961166>,  <38.234524, 29.233644, 41.039162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349224, 29.037786, 40.961166>,  <38.540390, 28.711355, 40.831173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349224, 29.037786, 40.961166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245622, -0.231063, 0.941424,
		0.843368, 0.529742, -0.090019,
		-0.477912, 0.816078, 0.324988,
		38.205849, 29.282610, 41.058662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989048, 29.058439, 41.157562>,  <38.540390, 28.711355, 40.831173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989048, 29.058439, 41.157562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644630, 29.158091, 41.334888>,  <38.437981, 29.217880, 41.441284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644630, 29.158091, 41.334888>,  <38.989048, 29.058439, 41.157562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644630, 29.158091, 41.334888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358404, -0.321148, 0.876590,
		0.360754, 0.913674, 0.187236,
		-0.861048, 0.249127, 0.443320,
		38.386314, 29.232828, 41.467884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173096, 29.286831, 41.765045>,  <38.989048, 29.058439, 41.157562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173096, 29.286831, 41.765045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783218, 29.244547, 41.843838>,  <38.549294, 29.219175, 41.891113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783218, 29.244547, 41.843838>,  <39.173096, 29.286831, 41.765045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783218, 29.244547, 41.843838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221098, -0.325602, 0.919293,
		-0.033042, 0.939579, 0.340734,
		-0.974692, -0.105711, 0.196980,
		38.490810, 29.212833, 41.902931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037502, 29.671257, 42.438347>,  <39.173096, 29.286831, 41.765045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037502, 29.671257, 42.438347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757092, 29.388920, 42.397659>,  <38.588844, 29.219517, 42.373249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757092, 29.388920, 42.397659>,  <39.037502, 29.671257, 42.438347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757092, 29.388920, 42.397659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128674, -0.265489, 0.955489,
		-0.701430, 0.656735, 0.276938,
		-0.701027, -0.705844, -0.101717,
		38.546783, 29.177166, 42.367146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775467, 29.653589, 43.063580>,  <39.037502, 29.671257, 42.438347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775467, 29.653589, 43.063580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606899, 29.327805, 42.904053>,  <38.505760, 29.132334, 42.808334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606899, 29.327805, 42.904053>,  <38.775467, 29.653589, 43.063580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606899, 29.327805, 42.904053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174159, -0.358909, 0.916980,
		-0.889985, 0.455892, 0.009406,
		-0.421420, -0.814461, -0.398821,
		38.480473, 29.083466, 42.784405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132721, 29.622574, 43.292278>,  <38.775467, 29.653589, 43.063580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132721, 29.622574, 43.292278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251808, 29.252338, 43.198769>,  <38.323261, 29.030197, 43.142662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251808, 29.252338, 43.198769>,  <38.132721, 29.622574, 43.292278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251808, 29.252338, 43.198769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213992, -0.303354, 0.928538,
		-0.930360, -0.226420, -0.288384,
		0.297722, -0.925587, -0.233777,
		38.341125, 28.974663, 43.128635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535187, 29.192139, 43.544987>,  <38.132721, 29.622574, 43.292278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535187, 29.192139, 43.544987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811401, 28.911200, 43.475857>,  <37.977131, 28.742636, 43.434380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811401, 28.911200, 43.475857>,  <37.535187, 29.192139, 43.544987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811401, 28.911200, 43.475857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317032, -0.508671, 0.800465,
		-0.650115, -0.497959, -0.573923,
		0.690537, -0.702346, -0.172826,
		38.018562, 28.700497, 43.424007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219460, 28.487150, 43.582546>,  <37.535187, 29.192139, 43.544987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219460, 28.487150, 43.582546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605721, 28.423346, 43.664593>,  <37.837479, 28.385063, 43.713821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605721, 28.423346, 43.664593>,  <37.219460, 28.487150, 43.582546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605721, 28.423346, 43.664593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259002, -0.527496, 0.809115,
		-0.020866, -0.834448, -0.550691,
		0.965652, -0.159513, 0.205117,
		37.895416, 28.375492, 43.726128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326069, 27.734480, 43.723263>,  <37.219460, 28.487150, 43.582546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326069, 27.734480, 43.723263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604641, 27.953587, 43.908707>,  <37.771786, 28.085051, 44.019974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604641, 27.953587, 43.908707>,  <37.326069, 27.734480, 43.723263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604641, 27.953587, 43.908707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070512, -0.590674, 0.803824,
		0.714151, -0.592498, -0.372739,
		0.696431, 0.547769, 0.463608,
		37.813572, 28.117918, 44.047791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791534, 27.304874, 44.119560>,  <37.326069, 27.734480, 43.723263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791534, 27.304874, 44.119560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826557, 27.662142, 44.296009>,  <37.847572, 27.876501, 44.401878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826557, 27.662142, 44.296009>,  <37.791534, 27.304874, 44.119560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826557, 27.662142, 44.296009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137381, -0.427762, 0.893390,
		0.986641, -0.138827, 0.085249,
		0.087560, 0.893167, 0.441120,
		37.852825, 27.930092, 44.428345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209732, 27.219851, 44.736717>,  <37.791534, 27.304874, 44.119560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209732, 27.219851, 44.736717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044739, 27.575563, 44.815746>,  <37.945744, 27.788990, 44.863163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044739, 27.575563, 44.815746>,  <38.209732, 27.219851, 44.736717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044739, 27.575563, 44.815746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041094, -0.198499, 0.979239,
		0.910037, 0.412040, 0.045334,
		-0.412485, 0.889281, 0.197574,
		37.920994, 27.842348, 44.875019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546936, 27.290829, 45.405064>,  <38.209732, 27.219851, 44.736717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546936, 27.290829, 45.405064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226177, 27.526657, 45.366348>,  <38.033722, 27.668154, 45.343121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226177, 27.526657, 45.366348>,  <38.546936, 27.290829, 45.405064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226177, 27.526657, 45.366348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202354, -0.115581, 0.972468,
		0.562152, 0.799404, 0.211986,
		-0.801897, 0.589571, -0.096789,
		37.985607, 27.703527, 45.337311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551651, 27.823383, 45.899960>,  <38.546936, 27.290829, 45.405064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551651, 27.823383, 45.899960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165436, 27.787851, 45.802113>,  <37.933704, 27.766531, 45.743404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165436, 27.787851, 45.802113>,  <38.551651, 27.823383, 45.899960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165436, 27.787851, 45.802113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255109, 0.137243, 0.957123,
		-0.051451, 0.986546, -0.155175,
		-0.965542, -0.088831, -0.244616,
		37.875774, 27.761202, 45.728729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230610, 28.397413, 46.147243>,  <38.551651, 27.823383, 45.899960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230610, 28.397413, 46.147243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919872, 28.147243, 46.117950>,  <37.733429, 27.997143, 46.100376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919872, 28.147243, 46.117950>,  <38.230610, 28.397413, 46.147243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919872, 28.147243, 46.117950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247581, 0.196433, 0.948745,
		-0.578982, 0.755156, -0.307440,
		-0.776842, -0.625422, -0.073231,
		37.686821, 27.959618, 46.095982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689964, 28.704010, 46.407284>,  <38.230610, 28.397413, 46.147243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689964, 28.704010, 46.407284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611889, 28.312977, 46.438869>,  <37.565044, 28.078358, 46.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611889, 28.312977, 46.438869>,  <37.689964, 28.704010, 46.407284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611889, 28.312977, 46.438869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377154, 0.149138, 0.914064,
		-0.905349, 0.148630, -0.397809,
		-0.195185, -0.977582, 0.078966,
		37.553333, 28.019703, 46.462559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054249, 28.710056, 46.660042>,  <37.689964, 28.704010, 46.407284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054249, 28.710056, 46.660042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139797, 28.330015, 46.750870>,  <37.191128, 28.101990, 46.805367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139797, 28.330015, 46.750870>,  <37.054249, 28.710056, 46.660042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139797, 28.330015, 46.750870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530773, 0.082116, 0.843527,
		-0.820085, -0.300927, -0.486728,
		0.213872, -0.950105, 0.227066,
		37.203960, 28.044983, 46.818989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434387, 28.400261, 46.762939>,  <37.054249, 28.710056, 46.660042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434387, 28.400261, 46.762939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694843, 28.158012, 46.945911>,  <36.851116, 28.012663, 47.055695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694843, 28.158012, 46.945911>,  <36.434387, 28.400261, 46.762939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694843, 28.158012, 46.945911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558399, 0.025904, 0.829168,
		-0.514011, -0.795331, -0.321312,
		0.651139, -0.605622, 0.457427,
		36.890186, 27.976326, 47.083141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993462, 27.850977, 47.138474>,  <36.434387, 28.400261, 46.762939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993462, 27.850977, 47.138474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360207, 27.857683, 47.298012>,  <36.580254, 27.861706, 47.393734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360207, 27.857683, 47.298012>,  <35.993462, 27.850977, 47.138474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360207, 27.857683, 47.298012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391752, 0.229812, 0.890908,
		-0.076723, -0.973091, 0.217274,
		0.916866, 0.016764, 0.398842,
		36.635265, 27.862713, 47.417664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895191, 27.412563, 47.719582>,  <35.993462, 27.850977, 47.138474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895191, 27.412563, 47.719582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226723, 27.623484, 47.794415>,  <36.425640, 27.750036, 47.839314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226723, 27.623484, 47.794415>,  <35.895191, 27.412563, 47.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226723, 27.623484, 47.794415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300613, 0.137681, 0.943756,
		0.471887, -0.838450, 0.272627,
		0.828827, 0.527301, 0.187079,
		36.475372, 27.781673, 47.850536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010696, 27.256054, 48.360126>,  <35.895191, 27.412563, 47.719582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010696, 27.256054, 48.360126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226967, 27.587923, 48.304539>,  <36.356731, 27.787045, 48.271187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226967, 27.587923, 48.304539>,  <36.010696, 27.256054, 48.360126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226967, 27.587923, 48.304539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351549, 0.372927, 0.858685,
		0.764251, -0.415418, 0.493303,
		0.540679, 0.829671, -0.138970,
		36.389172, 27.836824, 48.262848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465179, 27.355659, 48.896278>,  <36.010696, 27.256054, 48.360126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465179, 27.355659, 48.896278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413822, 27.718126, 48.735092>,  <36.383007, 27.935606, 48.638382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413822, 27.718126, 48.735092>,  <36.465179, 27.355659, 48.896278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413822, 27.718126, 48.735092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313469, 0.348410, 0.883373,
		0.940878, 0.239737, 0.239320,
		-0.128396, 0.906166, -0.402962,
		36.375305, 27.989977, 48.614204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771877, 27.790449, 49.351528>,  <36.465179, 27.355659, 48.896278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771877, 27.790449, 49.351528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550503, 28.039282, 49.129997>,  <36.417679, 28.188581, 48.997078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550503, 28.039282, 49.129997>,  <36.771877, 27.790449, 49.351528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550503, 28.039282, 49.129997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259201, 0.503283, 0.824331,
		0.791530, 0.599769, -0.117293,
		-0.553439, 0.622080, -0.553824,
		36.384472, 28.225906, 48.963852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712723, 28.302998, 49.845921>,  <36.771877, 27.790449, 49.351528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712723, 28.302998, 49.845921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449833, 28.407171, 49.563011>,  <36.292099, 28.469675, 49.393265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449833, 28.407171, 49.563011>,  <36.712723, 28.302998, 49.845921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449833, 28.407171, 49.563011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639692, 0.303486, 0.706180,
		0.398559, 0.916554, -0.032862,
		-0.657225, 0.260433, -0.707269,
		36.252666, 28.485302, 49.350830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468407, 29.031496, 50.011074>,  <36.712723, 28.302998, 49.845921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468407, 29.031496, 50.011074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232273, 28.773273, 49.817268>,  <36.090591, 28.618340, 49.700985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232273, 28.773273, 49.817268>,  <36.468407, 29.031496, 50.011074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232273, 28.773273, 49.817268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683453, 0.080438, 0.725549,
		-0.429410, 0.759464, -0.488694,
		-0.590338, -0.645557, -0.484517,
		36.055172, 28.579607, 49.671913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781391, 29.390888, 50.036228>,  <36.468407, 29.031496, 50.011074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781391, 29.390888, 50.036228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706009, 29.009195, 49.943344>,  <35.660778, 28.780180, 49.887611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706009, 29.009195, 49.943344>,  <35.781391, 29.390888, 50.036228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706009, 29.009195, 49.943344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816023, 0.020588, 0.577653,
		-0.546435, 0.298352, -0.782557,
		-0.188456, -0.954234, -0.232212,
		35.649471, 28.722925, 49.873680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894329, 29.635521, 50.742744>,  <35.781391, 29.390888, 50.036228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894329, 29.635521, 50.742744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200695, 29.853039, 50.879951>,  <36.384514, 29.983549, 50.962276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200695, 29.853039, 50.879951>,  <35.894329, 29.635521, 50.742744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200695, 29.853039, 50.879951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301046, 0.168093, -0.938678,
		-0.568108, 0.822211, -0.034963,
		0.765914, 0.543796, 0.343018,
		36.430470, 30.016178, 50.982857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876511, 30.312605, 50.469189>,  <35.894329, 29.635521, 50.742744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876511, 30.312605, 50.469189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257713, 30.222143, 50.549816>,  <36.486435, 30.167866, 50.598190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257713, 30.222143, 50.549816>,  <35.876511, 30.312605, 50.469189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257713, 30.222143, 50.549816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224863, 0.082219, -0.970915,
		0.203006, 0.970615, 0.129210,
		0.953009, -0.226156, 0.201564,
		36.543617, 30.154297, 50.610287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263813, 30.686228, 49.924057>,  <35.876511, 30.312605, 50.469189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263813, 30.686228, 49.924057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543503, 30.473970, 50.115685>,  <36.711315, 30.346617, 50.230659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543503, 30.473970, 50.115685>,  <36.263813, 30.686228, 49.924057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543503, 30.473970, 50.115685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619689, 0.115738, -0.776267,
		0.356474, 0.839656, 0.409760,
		0.699222, -0.530643, 0.479068,
		36.753269, 30.314777, 50.259403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856033, 31.204350, 49.879025>,  <36.263813, 30.686228, 49.924057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856033, 31.204350, 49.879025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952717, 30.816385, 49.890690>,  <37.010727, 30.583607, 49.897690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952717, 30.816385, 49.890690>,  <36.856033, 31.204350, 49.879025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952717, 30.816385, 49.890690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307367, 0.048019, -0.950379,
		0.920381, 0.238681, 0.309725,
		0.241710, -0.969910, 0.029167,
		37.025230, 30.525412, 49.899441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497597, 31.163603, 49.477856>,  <36.856033, 31.204350, 49.879025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497597, 31.163603, 49.477856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359566, 30.788340, 49.489002>,  <37.276745, 30.563181, 49.495689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359566, 30.788340, 49.489002>,  <37.497597, 31.163603, 49.477856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359566, 30.788340, 49.489002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425646, -0.182889, -0.886215,
		0.836507, -0.293955, 0.462435,
		-0.345081, -0.938159, 0.027867,
		37.256042, 30.506891, 49.497364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030060, 30.850922, 49.159447>,  <37.497597, 31.163603, 49.477856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030060, 30.850922, 49.159447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731918, 30.586634, 49.123894>,  <37.553032, 30.428061, 49.102562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731918, 30.586634, 49.123894>,  <38.030060, 30.850922, 49.159447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731918, 30.586634, 49.123894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301871, -0.215618, -0.928646,
		0.594409, -0.719000, 0.360163,
		-0.745354, -0.660718, -0.088880,
		37.508312, 30.388418, 49.097229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318283, 30.164043, 48.871967>,  <38.030060, 30.850922, 49.159447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318283, 30.164043, 48.871967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936577, 30.235220, 48.775871>,  <37.707554, 30.277925, 48.718212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936577, 30.235220, 48.775871>,  <38.318283, 30.164043, 48.871967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936577, 30.235220, 48.775871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245290, 0.006608, -0.969427,
		-0.170913, -0.984019, -0.049953,
		-0.954265, 0.177940, -0.240241,
		37.650299, 30.288601, 48.703800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265301, 29.704033, 48.134975>,  <38.318283, 30.164043, 48.871967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265301, 29.704033, 48.134975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960739, 29.961864, 48.162636>,  <37.778004, 30.116564, 48.179230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960739, 29.961864, 48.162636>,  <38.265301, 29.704033, 48.134975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960739, 29.961864, 48.162636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027955, 0.073919, -0.996872,
		-0.647675, -0.760955, -0.038263,
		-0.761404, 0.644580, 0.069148,
		37.732319, 30.155239, 48.183380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775318, 29.413353, 47.753963>,  <38.265301, 29.704033, 48.134975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775318, 29.413353, 47.753963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645752, 29.790152, 47.789120>,  <37.568012, 30.016232, 47.810211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645752, 29.790152, 47.789120>,  <37.775318, 29.413353, 47.753963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645752, 29.790152, 47.789120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027667, 0.102286, -0.994370,
		-0.945683, -0.319656, -0.059194,
		-0.323911, 0.941997, 0.087886,
		37.548580, 30.072750, 47.815487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201633, 29.459070, 47.261715>,  <37.775318, 29.413353, 47.753963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201633, 29.459070, 47.261715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345421, 29.827974, 47.318592>,  <37.431694, 30.049316, 47.352718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345421, 29.827974, 47.318592>,  <37.201633, 29.459070, 47.261715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345421, 29.827974, 47.318592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030812, 0.140564, -0.989592,
		-0.932647, 0.360112, 0.022112,
		0.359472, 0.922258, 0.142193,
		37.453262, 30.104652, 47.361248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884289, 29.818808, 46.684155>,  <37.201633, 29.459070, 47.261715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884289, 29.818808, 46.684155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167301, 30.071383, 46.811081>,  <37.337109, 30.222927, 46.887238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167301, 30.071383, 46.811081>,  <36.884289, 29.818808, 46.684155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167301, 30.071383, 46.811081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213004, 0.237586, -0.947725,
		-0.673820, 0.738131, 0.033600,
		0.707528, 0.631439, 0.317315,
		37.379559, 30.260815, 46.906277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838928, 30.442375, 46.288689>,  <36.884289, 29.818808, 46.684155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838928, 30.442375, 46.288689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213417, 30.460997, 46.428013>,  <37.438110, 30.472170, 46.511608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213417, 30.460997, 46.428013>,  <36.838928, 30.442375, 46.288689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213417, 30.460997, 46.428013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338493, 0.146751, -0.929455,
		-0.094382, 0.988077, 0.121634,
		0.936223, 0.046551, 0.348308,
		37.494286, 30.474962, 46.532505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158176, 31.032993, 45.869476>,  <36.838928, 30.442375, 46.288689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158176, 31.032993, 45.869476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463543, 30.833853, 46.034081>,  <37.646763, 30.714369, 46.132843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463543, 30.833853, 46.034081>,  <37.158176, 31.032993, 45.869476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463543, 30.833853, 46.034081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592658, 0.286610, -0.752735,
		0.256808, 0.818535, 0.513859,
		0.763417, -0.497851, 0.411508,
		37.692570, 30.684498, 46.157532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675266, 31.432735, 46.047047>,  <37.158176, 31.032993, 45.869476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675266, 31.432735, 46.047047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840302, 31.076361, 45.971149>,  <37.939323, 30.862535, 45.925610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840302, 31.076361, 45.971149>,  <37.675266, 31.432735, 46.047047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840302, 31.076361, 45.971149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497443, 0.394865, -0.772419,
		0.763101, 0.224302, 0.606107,
		0.412586, -0.890938, -0.189744,
		37.964077, 30.809080, 45.914227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324211, 31.639898, 45.998383>,  <37.675266, 31.432735, 46.047047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324211, 31.639898, 45.998383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312244, 31.280577, 45.823040>,  <38.305065, 31.064983, 45.717834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312244, 31.280577, 45.823040>,  <38.324211, 31.639898, 45.998383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312244, 31.280577, 45.823040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535466, 0.355911, -0.765900,
		0.844027, -0.257635, 0.470365,
		-0.029915, -0.898305, -0.438353,
		38.303268, 31.011086, 45.691536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918392, 31.660236, 45.678955>,  <38.324211, 31.639898, 45.998383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918392, 31.660236, 45.678955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722103, 31.354362, 45.511887>,  <38.604328, 31.170839, 45.411648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722103, 31.354362, 45.511887>,  <38.918392, 31.660236, 45.678955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722103, 31.354362, 45.511887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504099, 0.141820, -0.851922,
		0.710685, -0.628606, 0.315882,
		-0.490725, -0.764684, -0.417669,
		38.574886, 31.124958, 45.386585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393555, 31.226582, 45.314323>,  <38.918392, 31.660236, 45.678955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393555, 31.226582, 45.314323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053425, 31.127666, 45.128510>,  <38.849346, 31.068317, 45.017021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053425, 31.127666, 45.128510>,  <39.393555, 31.226582, 45.314323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053425, 31.127666, 45.128510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481093, -0.007523, -0.876637,
		0.213289, -0.968912, 0.125366,
		-0.850328, -0.247289, -0.464532,
		38.798325, 31.053480, 44.989151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596336, 30.884098, 44.723682>,  <39.393555, 31.226582, 45.314323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596336, 30.884098, 44.723682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211720, 30.956631, 44.641171>,  <38.980949, 31.000151, 44.591663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211720, 30.956631, 44.641171>,  <39.596336, 30.884098, 44.723682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211720, 30.956631, 44.641171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181123, -0.145943, -0.972571,
		-0.206462, -0.972533, 0.107487,
		-0.961544, 0.181331, -0.206279,
		38.923256, 31.011030, 44.579288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305668, 30.343176, 44.341694>,  <39.596336, 30.884098, 44.723682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305668, 30.343176, 44.341694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050961, 30.644880, 44.277676>,  <38.898136, 30.825903, 44.239265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050961, 30.644880, 44.277676>,  <39.305668, 30.343176, 44.341694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050961, 30.644880, 44.277676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151497, -0.081139, -0.985122,
		-0.756024, -0.651544, -0.062601,
		-0.636771, 0.754259, -0.160050,
		38.859928, 30.871159, 44.229660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947334, 30.161089, 43.767220>,  <39.305668, 30.343176, 44.341694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947334, 30.161089, 43.767220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880917, 30.554573, 43.794758>,  <38.841064, 30.790665, 43.811279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880917, 30.554573, 43.794758>,  <38.947334, 30.161089, 43.767220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880917, 30.554573, 43.794758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058509, 0.059860, -0.996491,
		-0.984381, -0.169491, 0.047617,
		-0.166046, 0.983712, 0.068842,
		38.831104, 30.849688, 43.815411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409863, 30.293255, 43.388931>,  <38.947334, 30.161089, 43.767220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409863, 30.293255, 43.388931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600300, 30.644064, 43.414757>,  <38.714561, 30.854549, 43.430252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600300, 30.644064, 43.414757>,  <38.409863, 30.293255, 43.388931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600300, 30.644064, 43.414757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022814, 0.085707, -0.996059,
		-0.879100, 0.472742, 0.060812,
		0.476091, 0.877023, 0.064560,
		38.743126, 30.907171, 43.434124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072258, 30.757614, 42.951756>,  <38.409863, 30.293255, 43.388931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072258, 30.757614, 42.951756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446751, 30.882427, 43.016384>,  <38.671448, 30.957315, 43.055161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446751, 30.882427, 43.016384>,  <38.072258, 30.757614, 42.951756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446751, 30.882427, 43.016384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058996, 0.313713, -0.947683,
		-0.346394, 0.896784, 0.275300,
		0.936232, 0.312030, 0.161575,
		38.727619, 30.976036, 43.064857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047039, 31.384926, 42.510963>,  <38.072258, 30.757614, 42.951756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047039, 31.384926, 42.510963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429230, 31.311790, 42.603596>,  <38.658546, 31.267910, 42.659176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429230, 31.311790, 42.603596>,  <38.047039, 31.384926, 42.510963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429230, 31.311790, 42.603596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280687, 0.321284, -0.904429,
		0.090962, 0.929165, 0.358300,
		0.955479, -0.182839, 0.231580,
		38.715874, 31.256939, 42.673069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527737, 32.070080, 42.485401>,  <38.047039, 31.384926, 42.510963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527737, 32.070080, 42.485401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715996, 31.721472, 42.430347>,  <38.828953, 31.512306, 42.397316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715996, 31.721472, 42.430347>,  <38.527737, 32.070080, 42.485401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715996, 31.721472, 42.430347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484147, 0.385501, -0.785488,
		0.737625, 0.303056, 0.603379,
		0.470650, -0.871520, -0.137631,
		38.857189, 31.460016, 42.389057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135746, 32.189796, 42.180874>,  <38.527737, 32.070080, 42.485401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135746, 32.189796, 42.180874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106091, 31.796499, 42.114262>,  <39.088299, 31.560520, 42.074295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106091, 31.796499, 42.114262>,  <39.135746, 32.189796, 42.180874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106091, 31.796499, 42.114262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615059, 0.086361, -0.783737,
		0.784988, -0.160531, 0.598351,
		-0.074139, -0.983245, -0.166529,
		39.083847, 31.501526, 42.064304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820618, 31.965309, 41.957535>,  <39.135746, 32.189796, 42.180874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820618, 31.965309, 41.957535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555321, 31.688215, 41.844242>,  <39.396141, 31.521959, 41.776264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555321, 31.688215, 41.844242>,  <39.820618, 31.965309, 41.957535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555321, 31.688215, 41.844242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393739, -0.001139, -0.919222,
		0.636455, -0.721190, 0.273513,
		-0.663245, -0.692736, -0.283236,
		39.356346, 31.480394, 41.759270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249790, 31.449490, 41.573521>,  <39.820618, 31.965309, 41.957535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249790, 31.449490, 41.573521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870819, 31.400061, 41.455463>,  <39.643436, 31.370403, 41.384628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870819, 31.400061, 41.455463>,  <40.249790, 31.449490, 41.573521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870819, 31.400061, 41.455463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310886, -0.137318, -0.940475,
		0.075687, -0.982789, 0.168516,
		-0.947429, -0.123571, -0.295142,
		39.586590, 31.362989, 41.366920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266708, 30.797266, 41.272655>,  <40.249790, 31.449490, 41.573521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266708, 30.797266, 41.272655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968498, 31.017963, 41.123112>,  <39.789574, 31.150383, 41.033386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968498, 31.017963, 41.123112>,  <40.266708, 30.797266, 41.272655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968498, 31.017963, 41.123112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338754, -0.169379, -0.925504,
		-0.573965, -0.816632, -0.060630,
		-0.745526, 0.551745, -0.373855,
		39.744839, 31.183487, 41.010956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076992, 30.479942, 40.592403>,  <40.266708, 30.797266, 41.272655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076992, 30.479942, 40.592403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957230, 30.861261, 40.576500>,  <39.885372, 31.090054, 40.566956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957230, 30.861261, 40.576500>,  <40.076992, 30.479942, 40.592403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957230, 30.861261, 40.576500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292817, 0.052143, -0.954746,
		-0.908083, -0.297498, -0.294753,
		-0.299404, 0.953298, -0.039762,
		39.867409, 31.147251, 40.564571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897442, 30.562256, 39.862377>,  <40.076992, 30.479942, 40.592403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897442, 30.562256, 39.862377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898067, 30.943581, 39.983173>,  <39.898445, 31.172375, 40.055649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898067, 30.943581, 39.983173>,  <39.897442, 30.562256, 39.862377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898067, 30.943581, 39.983173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512215, 0.258599, -0.819001,
		-0.858856, 0.155967, -0.487895,
		0.001568, 0.953310, 0.301988,
		39.898537, 31.229574, 40.073769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686390, 30.955196, 39.319187>,  <39.897442, 30.562256, 39.862377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686390, 30.955196, 39.319187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856831, 31.247070, 39.533100>,  <39.959095, 31.422195, 39.661449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856831, 31.247070, 39.533100>,  <39.686390, 30.955196, 39.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856831, 31.247070, 39.533100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398134, 0.379565, -0.835117,
		-0.812359, 0.568760, -0.128781,
		0.426100, 0.729687, 0.534786,
		39.984661, 31.465977, 39.693535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538010, 31.564413, 38.988468>,  <39.686390, 30.955196, 39.319187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538010, 31.564413, 38.988468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856476, 31.647408, 39.215828>,  <40.047554, 31.697205, 39.352245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856476, 31.647408, 39.215828>,  <39.538010, 31.564413, 38.988468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856476, 31.647408, 39.215828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404159, 0.516747, -0.754737,
		-0.450314, 0.830616, 0.327557,
		0.796161, 0.207484, 0.568400,
		40.095325, 31.709652, 39.386349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581589, 32.269703, 38.859184>,  <39.538010, 31.564413, 38.988468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581589, 32.269703, 38.859184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940971, 32.155270, 38.992409>,  <40.156601, 32.086609, 39.072342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940971, 32.155270, 38.992409>,  <39.581589, 32.269703, 38.859184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940971, 32.155270, 38.992409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436684, 0.661087, -0.610140,
		-0.045629, 0.693627, 0.718888,
		0.898457, -0.286087, 0.333060,
		40.210510, 32.069443, 39.092327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999416, 32.887512, 38.816475>,  <39.581589, 32.269703, 38.859184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999416, 32.887512, 38.816475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274395, 32.600216, 38.859440>,  <40.439384, 32.427837, 38.885220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274395, 32.600216, 38.859440>,  <39.999416, 32.887512, 38.816475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274395, 32.600216, 38.859440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660864, 0.557367, -0.502593,
		0.301114, 0.416496, 0.857824,
		0.687451, -0.718243, 0.107416,
		40.480629, 32.384743, 38.891666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580204, 33.267075, 38.962589>,  <39.999416, 32.887512, 38.816475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580204, 33.267075, 38.962589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689934, 32.903194, 38.837891>,  <40.755772, 32.684868, 38.763069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689934, 32.903194, 38.837891>,  <40.580204, 33.267075, 38.962589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689934, 32.903194, 38.837891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610874, 0.415225, -0.674107,
		0.742683, -0.005516, 0.669620,
		0.274325, -0.909702, -0.311750,
		40.772232, 32.630283, 38.744366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264591, 33.367542, 38.772789>,  <40.580204, 33.267075, 38.962589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264591, 33.367542, 38.772789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179790, 33.020744, 38.592396>,  <41.128910, 32.812668, 38.484161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179790, 33.020744, 38.592396>,  <41.264591, 33.367542, 38.772789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179790, 33.020744, 38.592396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779179, 0.128582, -0.613471,
		0.589863, -0.481448, 0.648282,
		-0.211997, -0.866991, -0.450980,
		41.116192, 32.760647, 38.457100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851925, 33.005177, 38.712917>,  <41.264591, 33.367542, 38.772789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851925, 33.005177, 38.712917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621624, 32.879456, 38.410999>,  <41.483444, 32.804024, 38.229847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621624, 32.879456, 38.410999>,  <41.851925, 33.005177, 38.712917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621624, 32.879456, 38.410999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743397, 0.183097, -0.643301,
		0.340391, -0.931499, 0.128232,
		-0.575756, -0.314301, -0.754798,
		41.448898, 32.785164, 38.184559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254456, 32.646164, 38.347813>,  <41.851925, 33.005177, 38.712917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254456, 32.646164, 38.347813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966103, 32.761147, 38.095558>,  <41.793091, 32.830135, 37.944206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966103, 32.761147, 38.095558>,  <42.254456, 32.646164, 38.347813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966103, 32.761147, 38.095558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681104, 0.125563, -0.721340,
		-0.128167, -0.949529, -0.286301,
		-0.720882, 0.287453, -0.630635,
		41.749840, 32.847382, 37.906368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436951, 32.419132, 37.719017>,  <42.254456, 32.646164, 38.347813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436951, 32.419132, 37.719017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155903, 32.681561, 37.608826>,  <41.987274, 32.839020, 37.542709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155903, 32.681561, 37.608826>,  <42.436951, 32.419132, 37.719017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155903, 32.681561, 37.608826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547069, 0.250509, -0.798725,
		-0.455012, -0.711909, -0.534930,
		-0.702624, 0.656073, -0.275478,
		41.945114, 32.878384, 37.526180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267021, 32.390949, 36.952919>,  <42.436951, 32.419132, 37.719017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267021, 32.390949, 36.952919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164108, 32.759132, 37.070606>,  <42.102360, 32.980042, 37.141220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164108, 32.759132, 37.070606>,  <42.267021, 32.390949, 36.952919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164108, 32.759132, 37.070606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599893, 0.390830, -0.698127,
		-0.757585, -0.003116, -0.652729,
		-0.257281, 0.920458, 0.294218,
		42.086926, 33.035271, 37.158871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817364, 32.703346, 36.472340>,  <42.267021, 32.390949, 36.952919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817364, 32.703346, 36.472340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057709, 32.952026, 36.673317>,  <42.201916, 33.101234, 36.793903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057709, 32.952026, 36.673317>,  <41.817364, 32.703346, 36.472340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057709, 32.952026, 36.673317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559114, 0.122338, -0.820015,
		-0.571271, 0.773642, -0.274093,
		0.600866, 0.621700, 0.502442,
		42.237968, 33.138538, 36.824051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695133, 33.248890, 36.071396>,  <41.817364, 32.703346, 36.472340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695133, 33.248890, 36.071396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045166, 33.211269, 36.261292>,  <42.255188, 33.188698, 36.375229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045166, 33.211269, 36.261292>,  <41.695133, 33.248890, 36.071396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045166, 33.211269, 36.261292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479604, 0.037112, -0.876700,
		0.064832, 0.994876, 0.077582,
		0.875087, -0.094047, 0.474740,
		42.307693, 33.183056, 36.403713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196014, 33.650688, 35.784512>,  <41.695133, 33.248890, 36.071396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196014, 33.650688, 35.784512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406990, 33.383759, 35.994839>,  <42.533577, 33.223598, 36.121033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406990, 33.383759, 35.994839>,  <42.196014, 33.650688, 35.784512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406990, 33.383759, 35.994839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674914, -0.046809, -0.736411,
		0.516038, 0.743294, 0.425698,
		0.527443, -0.667326, 0.525814,
		42.565224, 33.183559, 36.152584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233318, 34.458927, 35.631084>,  <42.196014, 33.650688, 35.784512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233318, 34.458927, 35.631084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420021, 34.260437, 35.338264>,  <42.532043, 34.141342, 35.162571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420021, 34.260437, 35.338264>,  <42.233318, 34.458927, 35.631084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420021, 34.260437, 35.338264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158640, 0.767345, -0.621301,
		0.870043, 0.406127, 0.279440,
		0.466754, -0.496228, -0.732051,
		42.560047, 34.111568, 35.118649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489040, 34.971828, 35.249943>,  <42.233318, 34.458927, 35.631084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489040, 34.971828, 35.249943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527290, 34.657486, 35.005554>,  <42.550240, 34.468880, 34.858921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527290, 34.657486, 35.005554>,  <42.489040, 34.971828, 35.249943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527290, 34.657486, 35.005554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147101, 0.595892, -0.789477,
		0.984488, 0.165370, -0.058617,
		0.095626, -0.785854, -0.610975,
		42.555977, 34.421730, 34.822262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995888, 34.999786, 34.784248>,  <42.489040, 34.971828, 35.249943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995888, 34.999786, 34.784248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742104, 34.761593, 34.587128>,  <42.589832, 34.618675, 34.468853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742104, 34.761593, 34.587128>,  <42.995888, 34.999786, 34.784248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742104, 34.761593, 34.587128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031659, 0.657043, -0.753188,
		0.772308, -0.462265, -0.435719,
		-0.634459, -0.595487, -0.492805,
		42.551765, 34.582947, 34.439285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641853, 34.927193, 34.359196>,  <42.995888, 34.999786, 34.784248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641853, 34.927193, 34.359196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983665, 35.041958, 34.532387>,  <44.188751, 35.110817, 34.636303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983665, 35.041958, 34.532387>,  <43.641853, 34.927193, 34.359196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983665, 35.041958, 34.532387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304622, -0.398355, 0.865170,
		0.420703, -0.871204, -0.253006,
		0.854526, 0.286909, 0.432977,
		44.240025, 35.128029, 34.662281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068512, 34.365299, 34.717327>,  <43.641853, 34.927193, 34.359196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068512, 34.365299, 34.717327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109001, 34.724075, 34.889492>,  <44.133297, 34.939339, 34.992790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109001, 34.724075, 34.889492>,  <44.068512, 34.365299, 34.717327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109001, 34.724075, 34.889492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244590, -0.396920, 0.884664,
		0.964328, -0.194825, 0.179203,
		0.101226, 0.896938, 0.430413,
		44.139370, 34.993156, 35.018616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545681, 34.321934, 35.303669>,  <44.068512, 34.365299, 34.717327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545681, 34.321934, 35.303669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332214, 34.651035, 35.381927>,  <44.204136, 34.848495, 35.428883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332214, 34.651035, 35.381927>,  <44.545681, 34.321934, 35.303669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332214, 34.651035, 35.381927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140662, -0.314477, 0.938786,
		0.833916, 0.473478, 0.283556,
		-0.533666, 0.822753, 0.195647,
		44.172115, 34.897861, 35.440620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912598, 34.594296, 35.859913>,  <44.545681, 34.321934, 35.303669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912598, 34.594296, 35.859913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550411, 34.764015, 35.855923>,  <44.333099, 34.865849, 35.853527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550411, 34.764015, 35.855923>,  <44.912598, 34.594296, 35.859913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550411, 34.764015, 35.855923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076090, -0.139165, 0.987342,
		0.417540, 0.894764, 0.158295,
		-0.905467, 0.424299, -0.009976,
		44.278770, 34.891304, 35.852928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877251, 35.103901, 36.361500>,  <44.912598, 34.594296, 35.859913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877251, 35.103901, 36.361500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496563, 34.998405, 36.298668>,  <44.268150, 34.935108, 36.260967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496563, 34.998405, 36.298668>,  <44.877251, 35.103901, 36.361500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496563, 34.998405, 36.298668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125391, -0.133079, 0.983141,
		-0.280198, 0.955370, 0.093583,
		-0.951718, -0.263739, -0.157083,
		44.211048, 34.919285, 36.251541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513515, 35.510975, 36.873161>,  <44.877251, 35.103901, 36.361500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513515, 35.510975, 36.873161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264526, 35.223518, 36.749176>,  <44.115131, 35.051044, 36.674786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264526, 35.223518, 36.749176>,  <44.513515, 35.510975, 36.873161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264526, 35.223518, 36.749176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136087, -0.290624, 0.947111,
		-0.770718, 0.631733, 0.083108,
		-0.622474, -0.718645, -0.309959,
		44.077785, 35.007923, 36.656189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081093, 35.537758, 37.424995>,  <44.513515, 35.510975, 36.873161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081093, 35.537758, 37.424995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993431, 35.178543, 37.272419>,  <43.940834, 34.963013, 37.180874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993431, 35.178543, 37.272419>,  <44.081093, 35.537758, 37.424995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993431, 35.178543, 37.272419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028874, -0.396742, 0.917476,
		-0.975262, 0.190059, 0.112880,
		-0.219158, -0.898039, -0.381440,
		43.927685, 34.909130, 37.157986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462532, 35.352356, 37.655529>,  <44.081093, 35.537758, 37.424995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462532, 35.352356, 37.655529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692963, 35.037411, 37.567715>,  <43.831223, 34.848442, 37.515026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692963, 35.037411, 37.567715>,  <43.462532, 35.352356, 37.655529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692963, 35.037411, 37.567715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091552, -0.329046, 0.939866,
		-0.812253, -0.521335, -0.261640,
		0.576076, -0.787362, -0.219539,
		43.865788, 34.801201, 37.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107391, 34.921314, 38.094685>,  <43.462532, 35.352356, 37.655529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107391, 34.921314, 38.094685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433605, 34.718262, 37.983532>,  <43.629333, 34.596432, 37.916840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433605, 34.718262, 37.983532>,  <43.107391, 34.921314, 38.094685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433605, 34.718262, 37.983532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040491, -0.529052, 0.847623,
		-0.577293, -0.680012, -0.452014,
		0.815532, -0.507630, -0.277883,
		43.678265, 34.565975, 37.900166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949184, 34.272949, 38.215324>,  <43.107391, 34.921314, 38.094685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949184, 34.272949, 38.215324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349003, 34.280113, 38.224972>,  <43.588894, 34.284412, 38.230759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349003, 34.280113, 38.224972>,  <42.949184, 34.272949, 38.215324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349003, 34.280113, 38.224972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015224, -0.390028, 0.920677,
		0.025900, -0.920629, -0.389579,
		0.999549, 0.017915, 0.024117,
		43.648869, 34.285488, 38.232208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140434, 33.642227, 38.464027>,  <42.949184, 34.272949, 38.215324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140434, 33.642227, 38.464027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475510, 33.855534, 38.511192>,  <43.676556, 33.983517, 38.539494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475510, 33.855534, 38.511192>,  <43.140434, 33.642227, 38.464027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475510, 33.855534, 38.511192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219425, -0.526335, 0.821477,
		0.500126, -0.662271, -0.557917,
		0.837692, 0.533263, 0.117915,
		43.726818, 34.015511, 38.546566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590988, 33.211166, 38.700180>,  <43.140434, 33.642227, 38.464027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590988, 33.211166, 38.700180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808201, 33.529644, 38.806900>,  <43.938530, 33.720730, 38.870930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808201, 33.529644, 38.806900>,  <43.590988, 33.211166, 38.700180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808201, 33.529644, 38.806900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210846, -0.436835, 0.874482,
		0.812808, -0.418622, -0.405092,
		0.543035, 0.796198, 0.266798,
		43.971111, 33.768505, 38.886940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200954, 32.969143, 38.911144>,  <43.590988, 33.211166, 38.700180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200954, 32.969143, 38.911144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163376, 33.320431, 39.098717>,  <44.140827, 33.531204, 39.211262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163376, 33.320431, 39.098717>,  <44.200954, 32.969143, 38.911144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163376, 33.320431, 39.098717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166213, -0.450569, 0.877132,
		0.981604, 0.160347, -0.103642,
		-0.093948, 0.878224, 0.468932,
		44.135193, 33.583897, 39.239395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607372, 32.867161, 39.464638>,  <44.200954, 32.969143, 38.911144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607372, 32.867161, 39.464638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420609, 33.199348, 39.586174>,  <44.308552, 33.398663, 39.659096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420609, 33.199348, 39.586174>,  <44.607372, 32.867161, 39.464638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420609, 33.199348, 39.586174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135982, -0.272083, 0.952617,
		0.873789, 0.486100, 0.014108,
		-0.466906, 0.830468, 0.303844,
		44.280537, 33.448490, 39.677326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925983, 32.999550, 40.127502>,  <44.607372, 32.867161, 39.464638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925983, 32.999550, 40.127502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592091, 33.219810, 40.127907>,  <44.391754, 33.351967, 40.128147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592091, 33.219810, 40.127907>,  <44.925983, 32.999550, 40.127502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592091, 33.219810, 40.127907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155018, -0.236746, 0.959125,
		0.528381, 0.800459, 0.282981,
		-0.834735, 0.550650, 0.001007,
		44.341671, 33.385006, 40.128208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984631, 33.358894, 40.793049>,  <44.925983, 32.999550, 40.127502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984631, 33.358894, 40.793049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600792, 33.332489, 40.683643>,  <44.370487, 33.316647, 40.618000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600792, 33.332489, 40.683643>,  <44.984631, 33.358894, 40.793049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600792, 33.332489, 40.683643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262634, -0.138610, 0.954888,
		-0.100952, 0.988144, 0.115672,
		-0.959600, -0.066018, -0.273513,
		44.312912, 33.312683, 40.601589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663120, 33.656788, 41.317078>,  <44.984631, 33.358894, 40.793049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663120, 33.656788, 41.317078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371571, 33.459820, 41.126808>,  <44.196640, 33.341640, 41.012646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371571, 33.459820, 41.126808>,  <44.663120, 33.656788, 41.317078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371571, 33.459820, 41.126808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304207, -0.389495, 0.869340,
		-0.613350, 0.778344, 0.134097,
		-0.728876, -0.492417, -0.475674,
		44.152908, 33.312096, 40.984104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103668, 33.694157, 41.758179>,  <44.663120, 33.656788, 41.317078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103668, 33.694157, 41.758179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004284, 33.393917, 41.513271>,  <43.944653, 33.213772, 41.366329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004284, 33.393917, 41.513271>,  <44.103668, 33.694157, 41.758179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004284, 33.393917, 41.513271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423476, -0.484308, 0.765581,
		-0.871170, 0.449492, -0.197532,
		-0.248456, -0.750602, -0.612264,
		43.929749, 33.168736, 41.329594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273251, 33.552357, 41.760838>,  <44.103668, 33.694157, 41.758179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273251, 33.552357, 41.760838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473362, 33.227646, 41.640339>,  <43.593430, 33.032822, 41.568039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473362, 33.227646, 41.640339>,  <43.273251, 33.552357, 41.760838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473362, 33.227646, 41.640339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502334, -0.555481, 0.662647,
		-0.705255, -0.180180, -0.685675,
		0.500275, -0.811773, -0.301245,
		43.623444, 32.984116, 41.549965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774960, 33.080502, 41.849796>,  <43.273251, 33.552357, 41.760838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774960, 33.080502, 41.849796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119678, 32.880360, 41.816456>,  <43.326511, 32.760273, 41.796452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119678, 32.880360, 41.816456>,  <42.774960, 33.080502, 41.849796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119678, 32.880360, 41.816456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322169, -0.666835, 0.671966,
		-0.391801, -0.552248, -0.735876,
		0.861800, -0.500354, -0.083349,
		43.378220, 32.730255, 41.791451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568665, 32.312912, 41.744312>,  <42.774960, 33.080502, 41.849796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568665, 32.312912, 41.744312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942543, 32.318378, 41.886391>,  <43.166870, 32.321659, 41.971638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942543, 32.318378, 41.886391>,  <42.568665, 32.312912, 41.744312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942543, 32.318378, 41.886391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297347, -0.517460, 0.802384,
		0.194768, -0.855598, -0.479601,
		0.934693, 0.013671, 0.355194,
		43.222950, 32.322479, 41.992950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737133, 31.595371, 42.120491>,  <42.568665, 32.312912, 41.744312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737133, 31.595371, 42.120491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971394, 31.881916, 42.272198>,  <43.111950, 32.053844, 42.363220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971394, 31.881916, 42.272198>,  <42.737133, 31.595371, 42.120491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971394, 31.881916, 42.272198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111143, -0.392509, 0.913008,
		0.802909, -0.576854, -0.150254,
		0.585648, 0.716363, 0.379262,
		43.147087, 32.096825, 42.385975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286285, 31.319382, 42.538269>,  <42.737133, 31.595371, 42.120491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286285, 31.319382, 42.538269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210541, 31.687204, 42.675999>,  <43.165092, 31.907898, 42.758636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210541, 31.687204, 42.675999>,  <43.286285, 31.319382, 42.538269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210541, 31.687204, 42.675999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236017, -0.383011, 0.893084,
		0.953120, 0.087850, 0.289559,
		-0.189361, 0.919557, 0.344322,
		43.153732, 31.963072, 42.779297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495277, 30.698093, 42.959652>,  <43.286285, 31.319382, 42.538269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495277, 30.698093, 42.959652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856834, 30.580566, 43.084003>,  <44.073769, 30.510050, 43.158615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856834, 30.580566, 43.084003>,  <43.495277, 30.698093, 42.959652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856834, 30.580566, 43.084003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275930, -0.955845, -0.101109,
		0.326859, 0.005611, -0.945056,
		0.903894, -0.293818, 0.310879,
		44.128002, 30.492420, 43.177265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788063, 30.194656, 42.586800>,  <43.495277, 30.698093, 42.959652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788063, 30.194656, 42.586800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970963, 30.121571, 42.934948>,  <44.080704, 30.077719, 43.143837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970963, 30.121571, 42.934948>,  <43.788063, 30.194656, 42.586800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970963, 30.121571, 42.934948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211311, -0.972962, -0.093239,
		0.863869, -0.141284, -0.483497,
		0.457251, -0.182714, 0.870366,
		44.108139, 30.066757, 43.196056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325748, 29.681984, 42.561920>,  <43.788063, 30.194656, 42.586800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325748, 29.681984, 42.561920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126999, 29.682758, 42.909046>,  <44.007748, 29.683224, 43.117321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126999, 29.682758, 42.909046>,  <44.325748, 29.681984, 42.561920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126999, 29.682758, 42.909046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310928, -0.934007, -0.175939,
		0.810208, -0.357249, 0.464689,
		-0.496877, 0.001937, 0.867819,
		43.977936, 29.683340, 43.169392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850697, 29.165583, 42.540188>,  <44.325748, 29.681984, 42.561920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850697, 29.165583, 42.540188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678890, 29.132504, 42.180481>,  <44.575806, 29.112656, 41.964657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678890, 29.132504, 42.180481>,  <44.850697, 29.165583, 42.540188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678890, 29.132504, 42.180481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371675, 0.891359, -0.259494,
		0.823028, -0.445691, -0.352114,
		-0.429514, -0.082699, -0.899265,
		44.550037, 29.107695, 41.910702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240440, 29.503538, 41.988770>,  <44.850697, 29.165583, 42.540188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240440, 29.503538, 41.988770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.859413, 29.524963, 41.868935>,  <44.630798, 29.537819, 41.797035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.859413, 29.524963, 41.868935>,  <45.240440, 29.503538, 41.988770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859413, 29.524963, 41.868935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150163, 0.938942, -0.309580,
		0.264713, -0.339882, -0.902446,
		-0.952564, 0.053564, -0.299587,
		44.573643, 29.541033, 41.779060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242790, 29.832832, 41.286228>,  <45.240440, 29.503538, 41.988770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242790, 29.832832, 41.286228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895767, 29.882694, 41.478809>,  <44.687553, 29.912611, 41.594360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895767, 29.882694, 41.478809>,  <45.242790, 29.832832, 41.286228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895767, 29.882694, 41.478809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008815, 0.971780, -0.235723,
		-0.497254, -0.200260, -0.844177,
		-0.867560, 0.124655, 0.481456,
		44.635498, 29.920092, 41.623245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926716, 29.347004, 41.387108>,  <45.242790, 29.832832, 41.286228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926716, 29.347004, 41.387108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248211, 29.109760, 41.406013>,  <46.441109, 28.967415, 41.417355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248211, 29.109760, 41.406013>,  <45.926716, 29.347004, 41.387108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248211, 29.109760, 41.406013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177393, 0.163053, -0.970539,
		0.567927, 0.788440, 0.236265,
		0.803735, -0.593107, 0.047261,
		46.489330, 28.931828, 41.420193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.602573, 29.679834, 41.219055>,  <45.926716, 29.347004, 41.387108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.602573, 29.679834, 41.219055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486309, 29.317284, 41.096416>,  <46.416550, 29.099754, 41.022835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486309, 29.317284, 41.096416>,  <46.602573, 29.679834, 41.219055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486309, 29.317284, 41.096416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057915, 0.303173, -0.951174,
		0.955071, -0.294228, -0.035629,
		-0.290664, -0.906375, -0.306592,
		46.399109, 29.045372, 41.004440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095829, 29.325008, 40.683083>,  <46.602573, 29.679834, 41.219055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095829, 29.325008, 40.683083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.708984, 29.226801, 40.656483>,  <46.476879, 29.167877, 40.640522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.708984, 29.226801, 40.656483>,  <47.095829, 29.325008, 40.683083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.708984, 29.226801, 40.656483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065588, 0.493287, -0.867390,
		0.245764, -0.834499, -0.493165,
		-0.967108, -0.245518, -0.066499,
		46.418854, 29.153145, 40.636532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144703, 29.102297, 40.079838>,  <47.095829, 29.325008, 40.683083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144703, 29.102297, 40.079838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780853, 29.234653, 40.180309>,  <46.562542, 29.314068, 40.240593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780853, 29.234653, 40.180309>,  <47.144703, 29.102297, 40.079838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.780853, 29.234653, 40.180309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079598, 0.454608, -0.887128,
		-0.407734, -0.826947, -0.387184,
		-0.909625, 0.330894, 0.251183,
		46.507965, 29.333921, 40.255665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778282, 29.122087, 39.461754>,  <47.144703, 29.102297, 40.079838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778282, 29.122087, 39.461754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562935, 29.364655, 39.695820>,  <46.433727, 29.510195, 39.836258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562935, 29.364655, 39.695820>,  <46.778282, 29.122087, 39.461754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562935, 29.364655, 39.695820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144644, 0.617582, -0.773091,
		-0.830204, -0.500848, -0.244771,
		-0.538367, 0.606419, 0.585164,
		46.401424, 29.546579, 39.871368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.172440, 29.132881, 39.105949>,  <46.778282, 29.122087, 39.461754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.172440, 29.132881, 39.105949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206436, 29.453346, 39.342899>,  <46.226833, 29.645626, 39.485069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206436, 29.453346, 39.342899>,  <46.172440, 29.132881, 39.105949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206436, 29.453346, 39.342899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196496, 0.569375, -0.798249,
		-0.976814, 0.184248, -0.109031,
		0.084996, 0.801164, 0.592378,
		46.231934, 29.693695, 39.520611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706486, 29.592793, 38.767639>,  <46.172440, 29.132881, 39.105949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706486, 29.592793, 38.767639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919533, 29.824249, 39.014698>,  <46.047359, 29.963123, 39.162933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919533, 29.824249, 39.014698>,  <45.706486, 29.592793, 38.767639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919533, 29.824249, 39.014698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014098, 0.735740, -0.677117,
		-0.846239, 0.351937, 0.400025,
		0.532617, 0.578642, 0.617651,
		46.079319, 29.997843, 39.199993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334312, 30.323668, 38.840141>,  <45.706486, 29.592793, 38.767639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334312, 30.323668, 38.840141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723545, 30.359997, 38.924870>,  <45.957085, 30.381794, 38.975708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723545, 30.359997, 38.924870>,  <45.334312, 30.323668, 38.840141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723545, 30.359997, 38.924870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047844, 0.819452, -0.571148,
		-0.225450, 0.565907, 0.793046,
		0.973079, 0.090822, 0.211821,
		46.015469, 30.387243, 38.988415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437054, 30.923508, 39.065956>,  <45.334312, 30.323668, 38.840141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437054, 30.923508, 39.065956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811600, 30.848452, 38.947289>,  <46.036327, 30.803417, 38.876087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811600, 30.848452, 38.947289>,  <45.437054, 30.923508, 39.065956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811600, 30.848452, 38.947289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021127, 0.813488, -0.581198,
		0.350395, 0.550480, 0.757756,
		0.936364, -0.187639, -0.296672,
		46.092510, 30.792160, 38.858288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823917, 31.567820, 39.232914>,  <45.437054, 30.923508, 39.065956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823917, 31.567820, 39.232914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012424, 31.339119, 38.964287>,  <46.125530, 31.201899, 38.803108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012424, 31.339119, 38.964287>,  <45.823917, 31.567820, 39.232914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012424, 31.339119, 38.964287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162567, 0.804690, -0.571004,
		0.866877, 0.159922, 0.472175,
		0.471270, -0.571750, -0.671569,
		46.153805, 31.167593, 38.762817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408463, 31.917593, 39.050026>,  <45.823917, 31.567820, 39.232914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408463, 31.917593, 39.050026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361347, 31.671846, 38.737953>,  <46.333080, 31.524399, 38.550709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361347, 31.671846, 38.737953>,  <46.408463, 31.917593, 39.050026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.361347, 31.671846, 38.737953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031308, 0.787555, -0.615448,
		0.992545, -0.048065, -0.111997,
		-0.117786, -0.614367, -0.780180,
		46.326012, 31.487535, 38.503899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970921, 31.932558, 38.618664>,  <46.408463, 31.917593, 39.050026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970921, 31.932558, 38.618664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668621, 31.816051, 38.384056>,  <46.487240, 31.746147, 38.243294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668621, 31.816051, 38.384056>,  <46.970921, 31.932558, 38.618664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668621, 31.816051, 38.384056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290230, 0.653894, -0.698705,
		0.587028, -0.698274, -0.409649,
		-0.755754, -0.291267, -0.586515,
		46.441895, 31.728672, 38.208103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211697, 32.013565, 37.969547>,  <46.970921, 31.932558, 38.618664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211697, 32.013565, 37.969547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.822701, 31.974319, 37.885040>,  <46.589302, 31.950771, 37.834335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.822701, 31.974319, 37.885040>,  <47.211697, 32.013565, 37.969547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.822701, 31.974319, 37.885040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089968, 0.678369, -0.729192,
		0.214863, -0.728140, -0.650880,
		-0.972492, -0.098118, -0.211266,
		46.530952, 31.944883, 37.821659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.145096, 32.164665, 37.234329>,  <47.211697, 32.013565, 37.969547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.145096, 32.164665, 37.234329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772324, 32.201954, 37.374512>,  <46.548660, 32.224327, 37.458622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772324, 32.201954, 37.374512>,  <47.145096, 32.164665, 37.234329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772324, 32.201954, 37.374512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206523, 0.657935, -0.724203,
		-0.298087, -0.747282, -0.593897,
		-0.931929, 0.093222, 0.350453,
		46.492744, 32.229919, 37.479649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753719, 32.185848, 36.634853>,  <47.145096, 32.164665, 37.234329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.753719, 32.185848, 36.634853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531025, 32.358665, 36.918652>,  <46.397408, 32.462357, 37.088928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531025, 32.358665, 36.918652>,  <46.753719, 32.185848, 36.634853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531025, 32.358665, 36.918652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271155, 0.712800, -0.646832,
		-0.785185, -0.552500, -0.279694,
		-0.556741, 0.432042, 0.709492,
		46.364002, 32.488277, 37.131500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311028, 32.531616, 36.196747>,  <46.753719, 32.185848, 36.634853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.311028, 32.531616, 36.196747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217239, 32.689877, 36.551933>,  <46.160965, 32.784832, 36.765045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217239, 32.689877, 36.551933>,  <46.311028, 32.531616, 36.196747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217239, 32.689877, 36.551933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428924, 0.777603, -0.459737,
		-0.872380, -0.488665, -0.012621,
		-0.234472, 0.395652, 0.887966,
		46.146896, 32.808571, 36.818321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610531, 32.766327, 36.131203>,  <46.311028, 32.531616, 36.196747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610531, 32.766327, 36.131203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795734, 32.969116, 36.422020>,  <45.906857, 33.090790, 36.596512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795734, 32.969116, 36.422020>,  <45.610531, 32.766327, 36.131203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795734, 32.969116, 36.422020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330342, 0.859873, -0.389219,
		-0.822493, -0.059961, 0.565605,
		0.463011, 0.506973, 0.727048,
		45.934639, 33.121208, 36.640133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170631, 33.290848, 36.427025>,  <45.610531, 32.766327, 36.131203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170631, 33.290848, 36.427025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536659, 33.429829, 36.508938>,  <45.756275, 33.513218, 36.558086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536659, 33.429829, 36.508938>,  <45.170631, 33.290848, 36.427025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536659, 33.429829, 36.508938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217395, 0.852611, -0.475177,
		-0.339698, 0.390299, 0.855729,
		0.915065, 0.347448, 0.204781,
		45.811180, 33.534061, 36.570374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010494, 33.903347, 36.536552>,  <45.170631, 33.290848, 36.427025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010494, 33.903347, 36.536552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407845, 33.936539, 36.504742>,  <45.646255, 33.956455, 36.485657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407845, 33.936539, 36.504742>,  <45.010494, 33.903347, 36.536552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407845, 33.936539, 36.504742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103478, 0.946856, -0.304557,
		0.050025, 0.310768, 0.949168,
		0.993373, 0.082983, -0.079524,
		45.705856, 33.961433, 36.480885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105122, 34.566528, 36.777283>,  <45.010494, 33.903347, 36.536552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105122, 34.566528, 36.777283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423191, 34.462879, 36.557991>,  <45.614033, 34.400688, 36.426414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423191, 34.462879, 36.557991>,  <45.105122, 34.566528, 36.777283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423191, 34.462879, 36.557991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101662, 0.948269, -0.300751,
		0.597801, 0.183414, 0.780380,
		0.795172, -0.259124, -0.548230,
		45.661743, 34.385143, 36.393520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495327, 35.062630, 36.944321>,  <45.105122, 34.566528, 36.777283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495327, 35.062630, 36.944321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652634, 34.925751, 36.602974>,  <45.747017, 34.843624, 36.398167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652634, 34.925751, 36.602974>,  <45.495327, 35.062630, 36.944321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652634, 34.925751, 36.602974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093651, 0.938238, -0.333075,
		0.914643, 0.051067, 0.401023,
		0.393264, -0.342201, -0.853371,
		45.770615, 34.823090, 36.346962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983475, 35.582939, 36.719700>,  <45.495327, 35.062630, 36.944321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983475, 35.582939, 36.719700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888187, 35.368870, 36.395515>,  <45.831017, 35.240429, 36.201004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888187, 35.368870, 36.395515>,  <45.983475, 35.582939, 36.719700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888187, 35.368870, 36.395515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106769, 0.843856, -0.525839,
		0.965325, -0.038733, -0.258162,
		-0.238219, -0.535170, -0.810460,
		45.816723, 35.208321, 36.152378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515388, 35.687012, 36.072739>,  <45.983475, 35.582939, 36.719700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515388, 35.687012, 36.072739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155087, 35.573196, 35.941479>,  <45.938904, 35.504910, 35.862724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155087, 35.573196, 35.941479>,  <46.515388, 35.687012, 36.072739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155087, 35.573196, 35.941479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044032, 0.811463, -0.582743,
		0.432093, -0.510459, -0.743457,
		-0.900754, -0.284535, -0.328150,
		45.884861, 35.487835, 35.843033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500000, 35.779873, 35.343399>,  <46.515388, 35.687012, 36.072739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500000, 35.779873, 35.343399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132015, 35.793274, 35.499630>,  <45.911224, 35.801315, 35.593369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132015, 35.793274, 35.499630>,  <46.500000, 35.779873, 35.343399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132015, 35.793274, 35.499630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194069, 0.826754, -0.528030,
		-0.340605, -0.561565, -0.754078,
		-0.919959, 0.033506, 0.390579,
		45.856026, 35.803326, 35.616802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981609, 35.806396, 34.816078>,  <46.500000, 35.779873, 35.343399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981609, 35.806396, 34.816078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843487, 35.992043, 35.142357>,  <45.760612, 36.103432, 35.338123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843487, 35.992043, 35.142357>,  <45.981609, 35.806396, 34.816078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843487, 35.992043, 35.142357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281535, 0.777896, -0.561796,
		-0.895265, -0.423640, -0.137948,
		-0.345309, 0.464119, 0.815693,
		45.739895, 36.131279, 35.387066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440891, 35.222313, 34.703239>,  <45.981609, 35.806396, 34.816078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440891, 35.222313, 34.703239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702209, 34.922192, 34.662739>,  <46.859001, 34.742119, 34.638439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702209, 34.922192, 34.662739>,  <46.440891, 35.222313, 34.703239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702209, 34.922192, 34.662739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756768, 0.643157, 0.116840,
		-0.022544, -0.152955, 0.987976,
		0.653295, -0.750302, -0.101252,
		46.898197, 34.697102, 34.632362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984241, 35.023720, 35.262699>,  <46.440891, 35.222313, 34.703239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984241, 35.023720, 35.262699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089008, 34.996738, 34.877609>,  <47.151871, 34.980549, 34.646553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089008, 34.996738, 34.877609>,  <46.984241, 35.023720, 35.262699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089008, 34.996738, 34.877609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604343, 0.789216, 0.109119,
		0.752441, -0.610400, 0.247478,
		0.261919, -0.067456, -0.962729,
		47.167583, 34.976501, 34.588791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.768105, 34.955444, 35.266998>,  <46.984241, 35.023720, 35.262699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.768105, 34.955444, 35.266998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616726, 35.131832, 34.941463>,  <47.525898, 35.237663, 34.746143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616726, 35.131832, 34.941463>,  <47.768105, 34.955444, 35.266998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616726, 35.131832, 34.941463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677726, 0.730856, 0.080856,
		0.630449, -0.520956, -0.575447,
		-0.378446, 0.440970, -0.813833,
		47.503193, 35.264122, 34.697315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.399876, 33.822567, 45.186298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203773, 33.493530, 45.071060>,  <35.086113, 33.296108, 45.001919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203773, 33.493530, 45.071060>,  <35.399876, 33.822567, 45.186298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203773, 33.493530, 45.071060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225968, 0.199276, -0.953534,
		0.841775, -0.532578, 0.088182,
		-0.490259, -0.822587, -0.288091,
		35.056694, 33.246754, 44.984634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769100, 33.595215, 44.642265>,  <35.399876, 33.822567, 45.186298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769100, 33.595215, 44.642265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417408, 33.411884, 44.590271>,  <35.206394, 33.301888, 44.559074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417408, 33.411884, 44.590271>,  <35.769100, 33.595215, 44.642265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417408, 33.411884, 44.590271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008296, 0.287538, -0.957733,
		0.476332, -0.840986, -0.256614,
		-0.879227, -0.458328, -0.129986,
		35.153641, 33.274387, 44.551273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905251, 33.278244, 43.964756>,  <35.769100, 33.595215, 44.642265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905251, 33.278244, 43.964756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509602, 33.290176, 44.022373>,  <35.272213, 33.297337, 44.056946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509602, 33.290176, 44.022373>,  <35.905251, 33.278244, 43.964756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509602, 33.290176, 44.022373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132510, 0.244560, -0.960537,
		-0.063879, -0.969175, -0.237947,
		-0.989121, 0.029827, 0.144048,
		35.212864, 33.299126, 44.065586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450157, 32.759872, 43.491253>,  <35.905251, 33.278244, 43.964756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450157, 32.759872, 43.491253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.279613, 33.102913, 43.606312>,  <35.177288, 33.308735, 43.675346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.279613, 33.102913, 43.606312>,  <35.450157, 32.759872, 43.491253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279613, 33.102913, 43.606312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124267, 0.259448, -0.957729,
		-0.895976, -0.444084, -0.004047,
		-0.426362, 0.857599, 0.287644,
		35.151707, 33.360191, 43.692604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870377, 32.847027, 43.064007>,  <35.450157, 32.759872, 43.491253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870377, 32.847027, 43.064007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947052, 33.211029, 43.211052>,  <34.993057, 33.429432, 43.299278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947052, 33.211029, 43.211052>,  <34.870377, 32.847027, 43.064007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947052, 33.211029, 43.211052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000676, 0.374681, -0.927154,
		-0.981456, 0.177477, 0.072437,
		0.191689, 0.910009, 0.367613,
		35.004559, 33.484032, 43.321335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386261, 33.224663, 42.704052>,  <34.870377, 32.847027, 43.064007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386261, 33.224663, 42.704052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659397, 33.475639, 42.853745>,  <34.823277, 33.626225, 42.943562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659397, 33.475639, 42.853745>,  <34.386261, 33.224663, 42.704052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659397, 33.475639, 42.853745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168339, 0.363330, -0.916326,
		-0.710912, 0.688699, 0.142472,
		0.682837, 0.627443, 0.374231,
		34.864250, 33.663872, 42.966015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176151, 33.864979, 42.293198>,  <34.386261, 33.224663, 42.704052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176151, 33.864979, 42.293198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.542526, 33.904358, 42.448822>,  <34.762352, 33.927986, 42.542198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.542526, 33.904358, 42.448822>,  <34.176151, 33.864979, 42.293198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542526, 33.904358, 42.448822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302025, 0.469303, -0.829781,
		-0.264278, 0.877533, 0.400117,
		0.915936, 0.098447, 0.389063,
		34.817307, 33.933891, 42.565540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384670, 34.526260, 42.123821>,  <34.176151, 33.864979, 42.293198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384670, 34.526260, 42.123821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718761, 34.319965, 42.200153>,  <34.919216, 34.196190, 42.245953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718761, 34.319965, 42.200153>,  <34.384670, 34.526260, 42.123821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718761, 34.319965, 42.200153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421431, 0.377390, -0.824604,
		0.353263, 0.769151, 0.532553,
		0.835225, -0.515736, 0.190826,
		34.969330, 34.165245, 42.257401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846733, 34.898998, 41.791039>,  <34.384670, 34.526260, 42.123821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846733, 34.898998, 41.791039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024574, 34.551929, 41.880016>,  <35.131279, 34.343689, 41.933403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024574, 34.551929, 41.880016>,  <34.846733, 34.898998, 41.791039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024574, 34.551929, 41.880016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623044, 0.121148, -0.772748,
		0.643541, 0.482156, 0.594458,
		0.444602, -0.867669, 0.222441,
		35.157955, 34.291630, 41.946747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532429, 35.074833, 41.820488>,  <34.846733, 34.898998, 41.791039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532429, 35.074833, 41.820488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482151, 34.684830, 41.747204>,  <35.451984, 34.450829, 41.703232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482151, 34.684830, 41.747204>,  <35.532429, 35.074833, 41.820488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482151, 34.684830, 41.747204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604247, 0.071228, -0.793607,
		0.786820, -0.210458, 0.580191,
		-0.125695, -0.975005, -0.183212,
		35.444443, 34.392330, 41.692242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120564, 34.900398, 41.720879>,  <35.532429, 35.074833, 41.820488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120564, 34.900398, 41.720879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944298, 34.591469, 41.537868>,  <35.838539, 34.406113, 41.428062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944298, 34.591469, 41.537868>,  <36.120564, 34.900398, 41.720879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944298, 34.591469, 41.537868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682170, 0.043175, -0.729918,
		0.583487, -0.633760, 0.507831,
		-0.440667, -0.772324, -0.457524,
		35.812099, 34.359772, 41.400612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671421, 34.424244, 41.481037>,  <36.120564, 34.900398, 41.720879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671421, 34.424244, 41.481037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346008, 34.346615, 41.261765>,  <36.150761, 34.300037, 41.130199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346008, 34.346615, 41.261765>,  <36.671421, 34.424244, 41.481037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346008, 34.346615, 41.261765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571683, -0.094251, -0.815043,
		0.106511, -0.976449, 0.187625,
		-0.813532, -0.194073, -0.548180,
		36.101948, 34.288395, 41.097309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810356, 33.783020, 41.147461>,  <36.671421, 34.424244, 41.481037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810356, 33.783020, 41.147461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526985, 33.977306, 40.942631>,  <36.356964, 34.093880, 40.819733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526985, 33.977306, 40.942631>,  <36.810356, 33.783020, 41.147461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526985, 33.977306, 40.942631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575145, -0.023236, -0.817721,
		-0.409079, -0.873808, -0.262896,
		-0.708423, 0.485716, -0.512072,
		36.314457, 34.123020, 40.789009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934841, 33.487591, 40.528118>,  <36.810356, 33.783020, 41.147461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934841, 33.487591, 40.528118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699303, 33.807854, 40.483921>,  <36.557980, 34.000011, 40.457401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699303, 33.807854, 40.483921>,  <36.934841, 33.487591, 40.528118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699303, 33.807854, 40.483921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457724, 0.217668, -0.862038,
		-0.666149, -0.558179, -0.494654,
		-0.588842, 0.800660, -0.110493,
		36.522652, 34.048050, 40.450771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753082, 33.399403, 39.824207>,  <36.934841, 33.487591, 40.528118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753082, 33.399403, 39.824207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644833, 33.780056, 39.882378>,  <36.579884, 34.008450, 39.917278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644833, 33.780056, 39.882378>,  <36.753082, 33.399403, 39.824207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644833, 33.780056, 39.882378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439042, 0.256442, -0.861092,
		-0.856741, -0.169184, -0.487208,
		-0.270624, 0.951638, 0.145425,
		36.563644, 34.065548, 39.926006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432327, 33.549400, 39.276134>,  <36.753082, 33.399403, 39.824207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432327, 33.549400, 39.276134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551403, 33.893513, 39.441681>,  <36.622849, 34.099979, 39.541008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551403, 33.893513, 39.441681>,  <36.432327, 33.549400, 39.276134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551403, 33.893513, 39.441681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475791, 0.242147, -0.845569,
		-0.827648, 0.448635, -0.337231,
		0.297693, 0.860285, 0.413869,
		36.640713, 34.151600, 39.565842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354828, 34.137947, 38.743351>,  <36.432327, 33.549400, 39.276134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354828, 34.137947, 38.743351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630844, 34.212364, 39.023132>,  <36.796455, 34.257015, 39.191002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630844, 34.212364, 39.023132>,  <36.354828, 34.137947, 38.743351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630844, 34.212364, 39.023132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685836, 0.140680, -0.714030,
		-0.231239, 0.972418, -0.030520,
		0.690042, 0.186043, 0.699450,
		36.837856, 34.268177, 39.232967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688072, 34.674660, 38.442898>,  <36.354828, 34.137947, 38.743351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688072, 34.674660, 38.442898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957466, 34.587078, 38.725307>,  <37.119102, 34.534527, 38.894753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957466, 34.587078, 38.725307>,  <36.688072, 34.674660, 38.442898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957466, 34.587078, 38.725307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738128, 0.250650, -0.626372,
		-0.039818, 0.942992, 0.330426,
		0.673485, -0.218956, 0.706029,
		37.159512, 34.521393, 38.937115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170071, 35.266525, 38.427567>,  <36.688072, 34.674660, 38.442898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170071, 35.266525, 38.427567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353432, 34.950165, 38.589725>,  <37.463448, 34.760349, 38.687019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353432, 34.950165, 38.589725>,  <37.170071, 35.266525, 38.427567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353432, 34.950165, 38.589725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850484, 0.257968, -0.458398,
		0.257968, 0.554913, 0.790901,
		0.458398, -0.790901, 0.405398,
		37.490952, 34.712894, 38.711346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757408, 35.549892, 38.706596>,  <37.170071, 35.266525, 38.427567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757408, 35.549892, 38.706596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829361, 35.157547, 38.676815>,  <37.872532, 34.922138, 38.658947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829361, 35.157547, 38.676815>,  <37.757408, 35.549892, 38.706596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829361, 35.157547, 38.676815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790000, 0.189148, -0.583201,
		0.586124, 0.046094, 0.808909,
		0.179886, -0.980866, -0.074449,
		37.883327, 34.863289, 38.654480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495701, 35.532013, 38.644562>,  <37.757408, 35.549892, 38.706596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495701, 35.532013, 38.644562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385586, 35.174164, 38.503780>,  <38.319515, 34.959454, 38.419312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385586, 35.174164, 38.503780>,  <38.495701, 35.532013, 38.644562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385586, 35.174164, 38.503780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748030, 0.030638, -0.662957,
		0.603878, -0.445777, 0.660768,
		-0.275286, -0.894620, -0.351956,
		38.303001, 34.905777, 38.398193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083473, 35.285900, 38.496387>,  <38.495701, 35.532013, 38.644562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083473, 35.285900, 38.496387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820126, 35.065701, 38.291058>,  <38.662117, 34.933582, 38.167862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820126, 35.065701, 38.291058>,  <39.083473, 35.285900, 38.496387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820126, 35.065701, 38.291058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683081, -0.150537, -0.714660,
		0.316144, -0.821153, 0.475144,
		-0.658371, -0.550497, -0.513322,
		38.622616, 34.900551, 38.137062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742577, 35.005100, 38.539818>,  <39.083473, 35.285900, 38.496387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742577, 35.005100, 38.539818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137619, 34.943081, 38.549576>,  <40.374645, 34.905869, 38.555431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137619, 34.943081, 38.549576>,  <39.742577, 35.005100, 38.539818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137619, 34.943081, 38.549576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089366, -0.427697, 0.899494,
		-0.129031, -0.890525, -0.436252,
		0.987606, -0.155048, 0.024396,
		40.433899, 34.896564, 38.556896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766838, 34.393005, 38.837715>,  <39.742577, 35.005100, 38.539818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766838, 34.393005, 38.837715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.140461, 34.528484, 38.883011>,  <40.364635, 34.609772, 38.910187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.140461, 34.528484, 38.883011>,  <39.766838, 34.393005, 38.837715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140461, 34.528484, 38.883011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002661, -0.310462, 0.950582,
		0.357118, -0.888198, -0.289087,
		0.934056, 0.338700, 0.113235,
		40.420677, 34.630093, 38.916981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164032, 33.948975, 39.201279>,  <39.766838, 34.393005, 38.837715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164032, 33.948975, 39.201279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.388218, 34.270927, 39.279297>,  <40.522728, 34.464100, 39.326107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.388218, 34.270927, 39.279297>,  <40.164032, 33.948975, 39.201279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388218, 34.270927, 39.279297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034812, -0.212406, 0.976561,
		0.827446, -0.554119, -0.091026,
		0.560466, 0.804883, 0.195045,
		40.556358, 34.512394, 39.337811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720787, 33.775715, 39.645519>,  <40.164032, 33.948975, 39.201279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720787, 33.775715, 39.645519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671406, 34.170128, 39.690224>,  <40.641777, 34.406776, 39.717045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671406, 34.170128, 39.690224>,  <40.720787, 33.775715, 39.645519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671406, 34.170128, 39.690224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078958, -0.102505, 0.991594,
		0.989204, 0.131240, -0.065200,
		-0.123454, 0.986037, 0.111761,
		40.634369, 34.465939, 39.723751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145161, 33.999763, 40.208984>,  <40.720787, 33.775715, 39.645519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145161, 33.999763, 40.208984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853828, 34.273651, 40.198471>,  <40.679028, 34.437984, 40.192165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853828, 34.273651, 40.198471>,  <41.145161, 33.999763, 40.208984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853828, 34.273651, 40.198471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140647, -0.111849, 0.983722,
		0.670634, 0.720173, 0.177766,
		-0.728332, 0.684720, -0.026280,
		40.635330, 34.479069, 40.190586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265671, 34.442471, 40.849361>,  <41.145161, 33.999763, 40.208984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265671, 34.442471, 40.849361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.909084, 34.541290, 40.697441>,  <40.695133, 34.600582, 40.606289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.909084, 34.541290, 40.697441>,  <41.265671, 34.442471, 40.849361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909084, 34.541290, 40.697441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384067, 0.032668, 0.922727,
		0.240366, 0.968452, 0.065761,
		-0.891469, 0.247049, -0.379803,
		40.641644, 34.615406, 40.583500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992477, 34.786995, 41.360825>,  <41.265671, 34.442471, 40.849361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992477, 34.786995, 41.360825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.666069, 34.688633, 41.151581>,  <40.470222, 34.629616, 41.026035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.666069, 34.688633, 41.151581>,  <40.992477, 34.786995, 41.360825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666069, 34.688633, 41.151581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557494, 0.095780, 0.824637,
		-0.152677, 0.964551, -0.215248,
		-0.816021, -0.245903, -0.523108,
		40.421265, 34.614861, 40.994648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527092, 35.377110, 41.564434>,  <40.992477, 34.786995, 41.360825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527092, 35.377110, 41.564434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317448, 35.056938, 41.448074>,  <40.191662, 34.864834, 41.378258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317448, 35.056938, 41.448074>,  <40.527092, 35.377110, 41.564434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317448, 35.056938, 41.448074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630178, 0.134727, 0.764673,
		-0.572877, 0.584086, -0.575026,
		-0.524106, -0.800433, -0.290896,
		40.160217, 34.816807, 41.360806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928055, 35.538574, 41.671303>,  <40.527092, 35.377110, 41.564434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928055, 35.538574, 41.671303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.897770, 35.140278, 41.650280>,  <39.879601, 34.901299, 41.637665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.897770, 35.140278, 41.650280>,  <39.928055, 35.538574, 41.671303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897770, 35.140278, 41.650280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527459, -0.004736, 0.849568,
		-0.846200, 0.092046, -0.524855,
		-0.075713, -0.995744, -0.052558,
		39.875057, 34.841557, 41.634514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253937, 35.295845, 41.863632>,  <39.928055, 35.538574, 41.671303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253937, 35.295845, 41.863632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424809, 34.940128, 41.928970>,  <39.527332, 34.726700, 41.968174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424809, 34.940128, 41.928970>,  <39.253937, 35.295845, 41.863632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424809, 34.940128, 41.928970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323210, 0.018533, 0.946146,
		-0.844426, -0.456967, -0.279510,
		0.427177, -0.889291, 0.163346,
		39.552963, 34.673340, 41.977974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762081, 34.877361, 42.076946>,  <39.253937, 35.295845, 41.863632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762081, 34.877361, 42.076946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075607, 34.655926, 42.189499>,  <39.263721, 34.523064, 42.257030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075607, 34.655926, 42.189499>,  <38.762081, 34.877361, 42.076946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075607, 34.655926, 42.189499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440904, -0.177016, 0.879925,
		-0.437306, -0.813761, -0.382827,
		0.783815, -0.553587, 0.281380,
		39.310753, 34.489849, 42.273914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549946, 34.121613, 42.242878>,  <38.762081, 34.877361, 42.076946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549946, 34.121613, 42.242878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865551, 34.228611, 42.464115>,  <39.054913, 34.292812, 42.596855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865551, 34.228611, 42.464115>,  <38.549946, 34.121613, 42.242878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865551, 34.228611, 42.464115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604724, 0.179144, 0.776026,
		0.108504, -0.946758, 0.303110,
		0.789009, 0.267500, 0.553090,
		39.102253, 34.308861, 42.630043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676384, 33.689896, 42.841251>,  <38.549946, 34.121613, 42.242878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676384, 33.689896, 42.841251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816948, 34.058346, 42.908218>,  <38.901287, 34.279415, 42.948399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816948, 34.058346, 42.908218>,  <38.676384, 33.689896, 42.841251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816948, 34.058346, 42.908218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439708, 0.004511, 0.898129,
		0.826538, -0.389230, 0.406613,
		0.351413, 0.921130, 0.167419,
		38.922371, 34.334686, 42.958443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247803, 33.751118, 43.444176>,  <38.676384, 33.689896, 42.841251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247803, 33.751118, 43.444176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989246, 34.047016, 43.369389>,  <38.834114, 34.224556, 43.324516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989246, 34.047016, 43.369389>,  <39.247803, 33.751118, 43.444176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989246, 34.047016, 43.369389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472693, -0.195887, 0.859179,
		0.598948, 0.643744, 0.476292,
		-0.646391, 0.739744, -0.186967,
		38.795330, 34.268940, 43.313297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150089, 34.015377, 44.125389>,  <39.247803, 33.751118, 43.444176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150089, 34.015377, 44.125389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844509, 34.145844, 43.902679>,  <38.661160, 34.224125, 43.769054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844509, 34.145844, 43.902679>,  <39.150089, 34.015377, 44.125389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844509, 34.145844, 43.902679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563996, 0.081693, 0.821726,
		0.313502, 0.941776, 0.121546,
		-0.763953, 0.326165, -0.556770,
		38.615322, 34.243694, 43.735649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922718, 34.499657, 44.462925>,  <39.150089, 34.015377, 44.125389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922718, 34.499657, 44.462925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610863, 34.418087, 44.226086>,  <38.423748, 34.369144, 44.083984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610863, 34.418087, 44.226086>,  <38.922718, 34.499657, 44.462925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610863, 34.418087, 44.226086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591493, -0.070716, 0.803203,
		-0.205666, 0.976429, -0.065489,
		-0.779639, -0.203928, -0.592095,
		38.376972, 34.356907, 44.048458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334198, 34.951218, 44.664955>,  <38.922718, 34.499657, 44.462925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334198, 34.951218, 44.664955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178757, 34.636574, 44.473026>,  <38.085491, 34.447788, 44.357868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178757, 34.636574, 44.473026>,  <38.334198, 34.951218, 44.664955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178757, 34.636574, 44.473026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741857, -0.041748, 0.669257,
		-0.546478, 0.616034, -0.567330,
		-0.388600, -0.786612, -0.479824,
		38.062176, 34.400589, 44.329079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628223, 35.011894, 44.844833>,  <38.334198, 34.951218, 44.664955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628223, 35.011894, 44.844833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645351, 34.635769, 44.709793>,  <37.655628, 34.410095, 44.628769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645351, 34.635769, 44.709793>,  <37.628223, 35.011894, 44.844833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645351, 34.635769, 44.709793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709253, -0.266602, 0.652597,
		-0.703652, 0.211498, -0.678338,
		0.042824, -0.940315, -0.337601,
		37.658199, 34.353676, 44.608513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.914398, 34.882191, 44.884415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085083, 34.523750, 44.835545>,  <37.187492, 34.308685, 44.806225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085083, 34.523750, 44.835545>,  <36.914398, 34.882191, 44.884415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085083, 34.523750, 44.835545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614530, -0.386402, 0.687784,
		-0.663529, -0.218406, -0.715561,
		0.426711, -0.896098, -0.122172,
		37.213097, 34.254921, 44.798893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419724, 34.372395, 45.124626>,  <36.914398, 34.882191, 44.884415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419724, 34.372395, 45.124626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.760620, 34.168598, 45.172138>,  <36.965157, 34.046322, 45.200645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.760620, 34.168598, 45.172138>,  <36.419724, 34.372395, 45.124626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760620, 34.168598, 45.172138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439239, -0.573518, 0.691481,
		-0.284178, -0.641481, -0.712562,
		0.852239, -0.509489, 0.118782,
		37.016293, 34.015751, 45.207771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153065, 33.731106, 45.287971>,  <36.419724, 34.372395, 45.124626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153065, 33.731106, 45.287971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531296, 33.744522, 45.417439>,  <36.758236, 33.752571, 45.495117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531296, 33.744522, 45.417439>,  <36.153065, 33.731106, 45.287971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531296, 33.744522, 45.417439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289696, -0.366224, 0.884283,
		0.148191, -0.929922, -0.336577,
		0.945577, 0.033537, 0.323666,
		36.814968, 33.754585, 45.514538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282833, 33.091496, 45.633514>,  <36.153065, 33.731106, 45.287971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282833, 33.091496, 45.633514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575848, 33.326130, 45.771675>,  <36.751656, 33.466911, 45.854572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575848, 33.326130, 45.771675>,  <36.282833, 33.091496, 45.633514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575848, 33.326130, 45.771675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101707, -0.407399, 0.907569,
		0.673086, -0.699959, -0.238775,
		0.732538, 0.586587, 0.345405,
		36.795609, 33.502106, 45.875298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542198, 32.673798, 46.102974>,  <36.282833, 33.091496, 45.633514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542198, 32.673798, 46.102974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697651, 33.028244, 46.203979>,  <36.790924, 33.240913, 46.264584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697651, 33.028244, 46.203979>,  <36.542198, 32.673798, 46.102974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697651, 33.028244, 46.203979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144249, -0.212163, 0.966529,
		0.910032, -0.412049, 0.045369,
		0.388631, 0.886117, 0.252513,
		36.814240, 33.294079, 46.279732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004501, 32.476753, 46.641850>,  <36.542198, 32.673798, 46.102974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004501, 32.476753, 46.641850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947556, 32.871052, 46.677711>,  <36.913387, 33.107632, 46.699230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947556, 32.871052, 46.677711>,  <37.004501, 32.476753, 46.641850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947556, 32.871052, 46.677711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178382, -0.114646, 0.977260,
		0.973607, 0.123138, 0.192161,
		-0.142368, 0.985745, 0.089655,
		36.904846, 33.166775, 46.704609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416290, 32.700165, 47.219006>,  <37.004501, 32.476753, 46.641850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416290, 32.700165, 47.219006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110569, 32.953407, 47.169979>,  <36.927135, 33.105354, 47.140564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110569, 32.953407, 47.169979>,  <37.416290, 32.700165, 47.219006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110569, 32.953407, 47.169979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239021, -0.101596, 0.965685,
		0.598928, 0.767369, 0.228975,
		-0.764300, 0.633105, -0.122568,
		36.881279, 33.143337, 47.133209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372143, 33.111259, 47.840683>,  <37.416290, 32.700165, 47.219006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372143, 33.111259, 47.840683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025967, 33.193226, 47.657806>,  <36.818260, 33.242405, 47.548080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025967, 33.193226, 47.657806>,  <37.372143, 33.111259, 47.840683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025967, 33.193226, 47.657806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460171, 0.035774, 0.887109,
		0.198142, 0.978125, 0.063338,
		-0.865438, 0.204920, -0.457193,
		36.766335, 33.254704, 47.520649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115341, 33.695118, 48.263325>,  <37.372143, 33.111259, 47.840683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115341, 33.695118, 48.263325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815269, 33.489948, 48.096405>,  <36.635227, 33.366848, 47.996254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815269, 33.489948, 48.096405>,  <37.115341, 33.695118, 48.263325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815269, 33.489948, 48.096405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509620, 0.046365, 0.859149,
		-0.421327, 0.857183, -0.296177,
		-0.750181, -0.512921, -0.417303,
		36.590214, 33.336071, 47.971214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571938, 33.931007, 48.570557>,  <37.115341, 33.695118, 48.263325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571938, 33.931007, 48.570557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.462326, 33.572937, 48.429951>,  <36.396561, 33.358093, 48.345589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.462326, 33.572937, 48.429951>,  <36.571938, 33.931007, 48.570557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462326, 33.572937, 48.429951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609601, -0.121018, 0.783416,
		-0.743838, 0.428962, -0.512540,
		-0.274029, -0.895179, -0.351513,
		36.380116, 33.304382, 48.324497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828041, 33.849640, 48.824593>,  <36.571938, 33.931007, 48.570557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828041, 33.849640, 48.824593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964596, 33.479622, 48.757961>,  <36.046528, 33.257610, 48.717983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964596, 33.479622, 48.757961>,  <35.828041, 33.849640, 48.824593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964596, 33.479622, 48.757961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279437, -0.269099, 0.921684,
		-0.897424, -0.268102, -0.350358,
		0.341386, -0.925044, -0.166578,
		36.067013, 33.202110, 48.707989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171921, 33.328369, 48.909561>,  <35.828041, 33.849640, 48.824593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171921, 33.328369, 48.909561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527584, 33.151127, 48.955276>,  <35.740982, 33.044781, 48.982704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527584, 33.151127, 48.955276>,  <35.171921, 33.328369, 48.909561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527584, 33.151127, 48.955276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308822, -0.396750, 0.864418,
		-0.337684, -0.803896, -0.489612,
		0.889156, -0.443103, 0.114285,
		35.794331, 33.018196, 48.989563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985405, 32.725502, 49.125229>,  <35.171921, 33.328369, 48.909561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985405, 32.725502, 49.125229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377018, 32.707699, 49.204739>,  <35.611984, 32.697018, 49.252445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377018, 32.707699, 49.204739>,  <34.985405, 32.725502, 49.125229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377018, 32.707699, 49.204739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188548, -0.567297, 0.801638,
		0.077084, -0.822310, -0.563795,
		0.979034, -0.044509, 0.198775,
		35.670727, 32.694347, 49.264370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148460, 32.036671, 49.212616>,  <34.985405, 32.725502, 49.125229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148460, 32.036671, 49.212616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426891, 32.255737, 49.398319>,  <35.593948, 32.387177, 49.509743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426891, 32.255737, 49.398319>,  <35.148460, 32.036671, 49.212616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426891, 32.255737, 49.398319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223428, -0.449287, 0.864998,
		0.682319, -0.705833, -0.190373,
		0.696076, 0.547670, 0.464259,
		35.635715, 32.420036, 49.537598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388050, 31.674044, 49.733608>,  <35.148460, 32.036671, 49.212616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388050, 31.674044, 49.733608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507923, 32.033623, 49.861412>,  <35.579845, 32.249371, 49.938095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507923, 32.033623, 49.861412>,  <35.388050, 31.674044, 49.733608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507923, 32.033623, 49.861412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016806, -0.339822, 0.940340,
		0.953891, -0.276434, -0.116946,
		0.299682, 0.898947, 0.319507,
		35.597828, 32.303307, 49.957264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948029, 31.573870, 50.276737>,  <35.388050, 31.674044, 49.733608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948029, 31.573870, 50.276737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.803429, 31.944090, 50.321774>,  <35.716667, 32.166222, 50.348793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.803429, 31.944090, 50.321774>,  <35.948029, 31.573870, 50.276737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803429, 31.944090, 50.321774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096534, -0.082951, 0.991867,
		0.927361, 0.369428, -0.059361,
		-0.361500, 0.925550, 0.112588,
		35.694981, 32.221756, 50.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418240, 31.914583, 50.731422>,  <35.948029, 31.573870, 50.276737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418240, 31.914583, 50.731422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059803, 32.091721, 50.743473>,  <35.844742, 32.198002, 50.750702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059803, 32.091721, 50.743473>,  <36.418240, 31.914583, 50.731422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059803, 32.091721, 50.743473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043749, 0.020580, 0.998830,
		0.441705, 0.896363, -0.037815,
		-0.896093, 0.442843, 0.030125,
		35.790974, 32.224575, 50.752510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429756, 32.231621, 51.299744>,  <36.418240, 31.914583, 50.731422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429756, 32.231621, 51.299744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043522, 32.293358, 51.216000>,  <35.811783, 32.330399, 51.165752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043522, 32.293358, 51.216000>,  <36.429756, 32.231621, 51.299744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043522, 32.293358, 51.216000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203111, 0.055356, 0.977590,
		0.162469, 0.986466, -0.022102,
		-0.965582, 0.154339, -0.209356,
		35.753845, 32.339661, 51.153194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252419, 32.749409, 51.656818>,  <36.429756, 32.231621, 51.299744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252419, 32.749409, 51.656818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901569, 32.562553, 51.612228>,  <35.691059, 32.450439, 51.585476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901569, 32.562553, 51.612228>,  <36.252419, 32.749409, 51.656818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901569, 32.562553, 51.612228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163963, 0.073115, 0.983753,
		-0.451402, 0.881154, -0.140725,
		-0.877127, -0.467142, -0.111472,
		35.638432, 32.422409, 51.578785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871346, 33.018860, 52.169815>,  <36.252419, 32.749409, 51.656818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871346, 33.018860, 52.169815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663670, 32.693619, 52.064514>,  <35.539062, 32.498474, 52.001335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663670, 32.693619, 52.064514>,  <35.871346, 33.018860, 52.169815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663670, 32.693619, 52.064514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181350, -0.196192, 0.963650,
		-0.835196, 0.548059, -0.045595,
		-0.519192, -0.813105, -0.263249,
		35.507912, 32.449688, 51.985538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309551, 33.095219, 52.594879>,  <35.871346, 33.018860, 52.169815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309551, 33.095219, 52.594879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280807, 32.719849, 52.459705>,  <35.263561, 32.494625, 52.378601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280807, 32.719849, 52.459705>,  <35.309551, 33.095219, 52.594879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280807, 32.719849, 52.459705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532398, -0.250416, 0.808606,
		-0.843439, 0.238018, -0.481621,
		-0.071857, -0.938424, -0.337931,
		35.259251, 32.438320, 52.358326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588367, 32.846409, 52.805462>,  <35.309551, 33.095219, 52.594879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588367, 32.846409, 52.805462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796165, 32.512539, 52.732311>,  <34.920845, 32.312218, 52.688419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796165, 32.512539, 52.732311>,  <34.588367, 32.846409, 52.805462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796165, 32.512539, 52.732311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398433, -0.425957, 0.812288,
		-0.755893, -0.349117, -0.553844,
		0.519497, -0.834673, -0.182878,
		34.952015, 32.262138, 52.677448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022408, 32.403198, 52.781921>,  <34.588367, 32.846409, 52.805462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022408, 32.403198, 52.781921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370171, 32.223953, 52.865185>,  <34.578827, 32.116405, 52.915142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370171, 32.223953, 52.865185>,  <34.022408, 32.403198, 52.781921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370171, 32.223953, 52.865185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464384, -0.597177, 0.654008,
		-0.168759, -0.665265, -0.727284,
		0.869407, -0.448109, 0.208160,
		34.630993, 32.089520, 52.927631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056110, 31.715137, 52.432652>,  <34.022408, 32.403198, 52.781921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056110, 31.715137, 52.432652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283348, 31.760496, 52.758698>,  <34.419693, 31.787712, 52.954323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283348, 31.760496, 52.758698>,  <34.056110, 31.715137, 52.432652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283348, 31.760496, 52.758698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567120, -0.663789, 0.487606,
		0.596356, -0.739273, -0.312786,
		0.568098, 0.113399, 0.815111,
		34.453777, 31.794516, 53.003231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922333, 30.954699, 52.287804>,  <34.056110, 31.715137, 52.432652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922333, 30.954699, 52.287804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579575, 30.750429, 52.259689>,  <33.373920, 30.627867, 52.242821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579575, 30.750429, 52.259689>,  <33.922333, 30.954699, 52.287804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579575, 30.750429, 52.259689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076414, 0.260670, -0.962399,
		0.509793, -0.819306, -0.262390,
		-0.856897, -0.510674, -0.070281,
		33.322506, 30.597227, 52.238605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062637, 30.514971, 51.784264>,  <33.922333, 30.954699, 52.287804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062637, 30.514971, 51.784264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663345, 30.503685, 51.805202>,  <33.423771, 30.496914, 51.817764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663345, 30.503685, 51.805202>,  <34.062637, 30.514971, 51.784264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663345, 30.503685, 51.805202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052412, 0.001695, -0.998624,
		0.028093, -0.999600, -0.003171,
		-0.998230, -0.028221, 0.052343,
		33.363876, 30.495220, 51.820904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887989, 30.113501, 51.179531>,  <34.062637, 30.514971, 51.784264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887989, 30.113501, 51.179531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541237, 30.280035, 51.289207>,  <33.333183, 30.379955, 51.355011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541237, 30.280035, 51.289207>,  <33.887989, 30.113501, 51.179531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541237, 30.280035, 51.289207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208171, 0.197435, -0.957958,
		-0.452969, -0.887515, -0.084483,
		-0.866882, 0.416338, 0.274187,
		33.281174, 30.404936, 51.371464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326439, 29.724072, 50.855091>,  <33.887989, 30.113501, 51.179531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326439, 29.724072, 50.855091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164791, 30.082640, 50.927883>,  <33.067802, 30.297781, 50.971558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164791, 30.082640, 50.927883>,  <33.326439, 29.724072, 50.855091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164791, 30.082640, 50.927883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089505, 0.159237, -0.983175,
		-0.910316, -0.413610, 0.015883,
		-0.404121, 0.896421, 0.181976,
		33.043556, 30.351566, 50.982475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773537, 29.751789, 50.419922>,  <33.326439, 29.724072, 50.855091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773537, 29.751789, 50.419922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870979, 30.128279, 50.513523>,  <32.929443, 30.354172, 50.569683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870979, 30.128279, 50.513523>,  <32.773537, 29.751789, 50.419922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870979, 30.128279, 50.513523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008941, 0.243436, -0.969876,
		-0.969834, 0.234172, 0.067718,
		0.243603, 0.941224, 0.233999,
		32.944061, 30.410646, 50.583721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460510, 30.107798, 49.926483>,  <32.773537, 29.751789, 50.419922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460510, 30.107798, 49.926483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692234, 30.398226, 50.074661>,  <32.831268, 30.572483, 50.163567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692234, 30.398226, 50.074661>,  <32.460510, 30.107798, 49.926483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692234, 30.398226, 50.074661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151601, 0.350567, -0.924186,
		-0.800888, 0.591547, 0.093012,
		0.579307, 0.726068, 0.370444,
		32.866028, 30.616047, 50.185795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299347, 30.739202, 49.625023>,  <32.460510, 30.107798, 49.926483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299347, 30.739202, 49.625023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685444, 30.751257, 49.728867>,  <32.917103, 30.758490, 49.791172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685444, 30.751257, 49.728867>,  <32.299347, 30.739202, 49.625023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685444, 30.751257, 49.728867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246467, 0.225478, -0.942557,
		-0.086943, 0.973782, 0.210213,
		0.965244, 0.030138, 0.259609,
		32.975018, 30.760298, 49.806747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496906, 31.260641, 49.197063>,  <32.299347, 30.739202, 49.625023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496906, 31.260641, 49.197063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855618, 31.135679, 49.322399>,  <33.070847, 31.060701, 49.397602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855618, 31.135679, 49.322399>,  <32.496906, 31.260641, 49.197063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855618, 31.135679, 49.322399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366855, 0.129034, -0.921286,
		0.247382, 0.941145, 0.230323,
		0.896783, -0.312404, 0.313343,
		33.124653, 31.041958, 49.416401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009041, 31.854061, 49.115498>,  <32.496906, 31.260641, 49.197063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009041, 31.854061, 49.115498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238056, 31.527697, 49.147717>,  <33.375465, 31.331879, 49.167046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238056, 31.527697, 49.147717>,  <33.009041, 31.854061, 49.115498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238056, 31.527697, 49.147717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503354, 0.272257, -0.820068,
		0.647173, 0.510064, 0.566570,
		0.572540, -0.815911, 0.080546,
		33.409817, 31.282923, 49.171879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706520, 32.018448, 49.033165>,  <33.009041, 31.854061, 49.115498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706520, 32.018448, 49.033165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698566, 31.632521, 48.928295>,  <33.693794, 31.400965, 48.865372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698566, 31.632521, 48.928295>,  <33.706520, 32.018448, 49.033165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698566, 31.632521, 48.928295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470559, 0.222340, -0.853896,
		0.882144, -0.140345, 0.449583,
		-0.019881, -0.964815, -0.262176,
		33.692604, 31.343077, 48.849644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432007, 31.916538, 48.777332>,  <33.706520, 32.018448, 49.033165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432007, 31.916538, 48.777332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203415, 31.624273, 48.627911>,  <34.066257, 31.448915, 48.538258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203415, 31.624273, 48.627911>,  <34.432007, 31.916538, 48.777332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203415, 31.624273, 48.627911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446875, 0.104704, -0.888448,
		0.688267, -0.674665, 0.266677,
		-0.571482, -0.730660, -0.373555,
		34.031971, 31.405075, 48.515842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961601, 31.369305, 48.424969>,  <34.432007, 31.916538, 48.777332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961601, 31.369305, 48.424969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589626, 31.350821, 48.279049>,  <34.366440, 31.339729, 48.191498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589626, 31.350821, 48.279049>,  <34.961601, 31.369305, 48.424969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589626, 31.350821, 48.279049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351529, 0.179413, -0.918825,
		0.107909, -0.982688, -0.150598,
		-0.929937, -0.046210, -0.364803,
		34.310646, 31.336958, 48.169609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040173, 31.063791, 47.816311>,  <34.961601, 31.369305, 48.424969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040173, 31.063791, 47.816311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685856, 31.232662, 47.739235>,  <34.473267, 31.333984, 47.692989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685856, 31.232662, 47.739235>,  <35.040173, 31.063791, 47.816311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685856, 31.232662, 47.739235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286308, 0.170369, -0.942869,
		-0.365229, -0.890360, -0.271786,
		-0.885796, 0.422178, -0.192694,
		34.420116, 31.359316, 47.681427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967331, 31.006369, 47.196232>,  <35.040173, 31.063791, 47.816311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967331, 31.006369, 47.196232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.684280, 31.282965, 47.254345>,  <34.514450, 31.448921, 47.289211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.684280, 31.282965, 47.254345>,  <34.967331, 31.006369, 47.196232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684280, 31.282965, 47.254345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280355, 0.463502, -0.840575,
		-0.648586, -0.554084, -0.521850,
		-0.707628, 0.691489, 0.145281,
		34.471992, 31.490412, 47.297928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509769, 31.023956, 46.548763>,  <34.967331, 31.006369, 47.196232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509769, 31.023956, 46.548763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471649, 31.367390, 46.750259>,  <34.448776, 31.573450, 46.871159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471649, 31.367390, 46.750259>,  <34.509769, 31.023956, 46.548763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471649, 31.367390, 46.750259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211079, 0.511967, -0.832668,
		-0.972812, 0.026978, -0.230018,
		-0.095298, 0.858582, 0.503742,
		34.443058, 31.624964, 46.901382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856865, 31.461718, 46.316189>,  <34.509769, 31.023956, 46.548763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856865, 31.461718, 46.316189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.155533, 31.696474, 46.441433>,  <34.334736, 31.837328, 46.516579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.155533, 31.696474, 46.441433>,  <33.856865, 31.461718, 46.316189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155533, 31.696474, 46.441433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086252, 0.381318, -0.920411,
		-0.659577, 0.714252, 0.234098,
		0.746671, 0.586891, 0.313114,
		34.379536, 31.872541, 46.535366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768269, 32.056641, 45.931946>,  <33.856865, 31.461718, 46.316189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768269, 32.056641, 45.931946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088360, 32.206673, 46.119110>,  <34.280415, 32.296692, 46.231411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088360, 32.206673, 46.119110>,  <33.768269, 32.056641, 45.931946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088360, 32.206673, 46.119110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186654, 0.585720, -0.788728,
		-0.569903, 0.718504, 0.398702,
		0.800232, 0.375080, 0.467915,
		34.328430, 32.319195, 46.259483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752617, 32.776520, 45.749069>,  <33.768269, 32.056641, 45.931946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752617, 32.776520, 45.749069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123661, 32.693993, 45.873634>,  <34.346287, 32.644478, 45.948372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123661, 32.693993, 45.873634>,  <33.752617, 32.776520, 45.749069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123661, 32.693993, 45.873634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371652, 0.593735, -0.713690,
		-0.037647, 0.777761, 0.627432,
		0.927608, -0.206318, 0.311409,
		34.401943, 32.632099, 45.967056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076092, 33.379105, 45.915802>,  <33.752617, 32.776520, 45.749069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076092, 33.379105, 45.915802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362801, 33.118732, 45.815777>,  <34.534828, 32.962509, 45.755764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362801, 33.118732, 45.815777>,  <34.076092, 33.379105, 45.915802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362801, 33.118732, 45.815777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354343, 0.648866, -0.673360,
		0.600562, 0.394040, 0.695742,
		0.716774, -0.650926, -0.250059,
		34.577831, 32.923454, 45.740761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713543, 33.755764, 45.721535>,  <34.076092, 33.379105, 45.915802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713543, 33.755764, 45.721535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772835, 33.409195, 45.530815>,  <34.808411, 33.201252, 45.416386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772835, 33.409195, 45.530815>,  <34.713543, 33.755764, 45.721535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772835, 33.409195, 45.530815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139882, 0.495643, -0.857187,
		0.979010, 0.060364, 0.194666,
		0.148228, -0.866426, -0.476796,
		34.817303, 33.149265, 45.387775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.018711, 32.848484, 42.994270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751770, 32.613365, 42.811340>,  <43.591606, 32.472294, 42.701584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751770, 32.613365, 42.811340>,  <44.018711, 32.848484, 42.994270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751770, 32.613365, 42.811340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458923, 0.159056, -0.874123,
		0.586545, -0.793219, 0.163608,
		-0.667348, -0.587796, -0.457321,
		43.551567, 32.437027, 42.674145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393959, 32.500332, 42.511017>,  <44.018711, 32.848484, 42.994270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393959, 32.500332, 42.511017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038479, 32.410728, 42.351002>,  <43.825191, 32.356968, 42.254993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038479, 32.410728, 42.351002>,  <44.393959, 32.500332, 42.511017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038479, 32.410728, 42.351002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369724, 0.165823, -0.914225,
		0.271125, -0.960377, -0.064547,
		-0.888704, -0.224005, -0.400034,
		43.771866, 32.343529, 42.230991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560757, 32.245811, 41.857475>,  <44.393959, 32.500332, 42.511017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560757, 32.245811, 41.857475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180374, 32.366379, 41.829670>,  <43.952145, 32.438721, 41.812988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180374, 32.366379, 41.829670>,  <44.560757, 32.245811, 41.857475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180374, 32.366379, 41.829670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222118, 0.508973, -0.831631,
		-0.215290, -0.806283, -0.550960,
		-0.950954, 0.301420, -0.069513,
		43.895088, 32.456806, 41.808815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166531, 31.899675, 41.226521>,  <44.560757, 32.245811, 41.857475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166531, 31.899675, 41.226521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004322, 32.249355, 41.333351>,  <43.906998, 32.459164, 41.397449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004322, 32.249355, 41.333351>,  <44.166531, 31.899675, 41.226521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004322, 32.249355, 41.333351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369132, 0.423905, -0.827071,
		-0.836239, -0.236809, -0.494597,
		-0.405520, 0.874200, 0.267072,
		43.882668, 32.511616, 41.413471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724770, 32.072910, 40.625210>,  <44.166531, 31.899675, 41.226521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724770, 32.072910, 40.625210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.788654, 32.413162, 40.825577>,  <43.826984, 32.617313, 40.945797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.788654, 32.413162, 40.825577>,  <43.724770, 32.072910, 40.625210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788654, 32.413162, 40.825577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384575, 0.413731, -0.825184,
		-0.909172, 0.324433, -0.261054,
		0.159711, 0.850629, 0.500921,
		43.836567, 32.668350, 40.975853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359909, 32.524376, 40.302734>,  <43.724770, 32.072910, 40.625210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359909, 32.524376, 40.302734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.623882, 32.732121, 40.519901>,  <43.782265, 32.856766, 40.650200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.623882, 32.732121, 40.519901>,  <43.359909, 32.524376, 40.302734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623882, 32.732121, 40.519901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196576, 0.578087, -0.791943,
		-0.725155, 0.629352, 0.279404,
		0.659930, 0.519357, 0.542918,
		43.821861, 32.887928, 40.682777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089081, 33.134892, 40.177326>,  <43.359909, 32.524376, 40.302734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089081, 33.134892, 40.177326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469063, 33.184727, 40.291912>,  <43.697052, 33.214626, 40.360664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469063, 33.184727, 40.291912>,  <43.089081, 33.134892, 40.177326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469063, 33.184727, 40.291912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117751, 0.706573, -0.697774,
		-0.289344, 0.696586, 0.656543,
		0.949955, 0.124588, 0.286466,
		43.754051, 33.222103, 40.377853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134743, 33.850460, 40.052414>,  <43.089081, 33.134892, 40.177326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134743, 33.850460, 40.052414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513084, 33.724934, 40.085575>,  <43.740089, 33.649620, 40.105473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513084, 33.724934, 40.085575>,  <43.134743, 33.850460, 40.052414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513084, 33.724934, 40.085575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248221, 0.534786, -0.807707,
		0.209135, 0.784554, 0.583727,
		0.945859, -0.313813, 0.082900,
		43.796841, 33.630791, 40.110447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556126, 34.446632, 40.067921>,  <43.134743, 33.850460, 40.052414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556126, 34.446632, 40.067921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.785225, 34.140034, 39.951687>,  <43.922684, 33.956074, 39.881947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.785225, 34.140034, 39.951687>,  <43.556126, 34.446632, 40.067921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785225, 34.140034, 39.951687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169701, 0.457682, -0.872771,
		0.801975, 0.450563, 0.392211,
		0.572746, -0.766499, -0.290588,
		43.957050, 33.910084, 39.864510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171124, 34.756538, 39.861794>,  <43.556126, 34.446632, 40.067921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171124, 34.756538, 39.861794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126129, 34.400768, 39.684582>,  <44.099133, 34.187305, 39.578255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126129, 34.400768, 39.684582>,  <44.171124, 34.756538, 39.861794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126129, 34.400768, 39.684582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185606, 0.419208, -0.888715,
		0.976165, -0.182195, 0.117928,
		-0.112483, -0.889421, -0.443033,
		44.092384, 34.133942, 39.551670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269390, 34.942059, 39.199661>,  <44.171124, 34.756538, 39.861794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269390, 34.942059, 39.199661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218983, 34.555138, 39.111629>,  <44.188736, 34.322983, 39.058811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218983, 34.555138, 39.111629>,  <44.269390, 34.942059, 39.199661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218983, 34.555138, 39.111629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179340, 0.195981, -0.964068,
		0.975682, -0.160964, 0.148779,
		-0.126023, -0.967306, -0.220083,
		44.181175, 34.264946, 39.045605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765133, 34.664680, 38.811325>,  <44.269390, 34.942059, 39.199661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765133, 34.664680, 38.811325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430466, 34.465042, 38.721088>,  <44.229664, 34.345261, 38.666946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430466, 34.465042, 38.721088>,  <44.765133, 34.664680, 38.811325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430466, 34.465042, 38.721088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269786, -0.017096, -0.962768,
		0.476655, -0.866379, 0.148952,
		-0.836669, -0.499094, -0.225588,
		44.179466, 34.315315, 38.653412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937206, 34.183815, 38.245415>,  <44.765133, 34.664680, 38.811325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937206, 34.183815, 38.245415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539982, 34.230278, 38.238136>,  <44.301647, 34.258156, 38.233768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539982, 34.230278, 38.238136>,  <44.937206, 34.183815, 38.245415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539982, 34.230278, 38.238136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026725, 0.072298, -0.997025,
		-0.114498, -0.990596, -0.074900,
		-0.993064, 0.116159, -0.018195,
		44.242062, 34.265125, 38.232677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730961, 33.799561, 37.568893>,  <44.937206, 34.183815, 38.245415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730961, 33.799561, 37.568893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.420986, 34.034000, 37.663513>,  <44.235001, 34.174664, 37.720287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.420986, 34.034000, 37.663513>,  <44.730961, 33.799561, 37.568893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420986, 34.034000, 37.663513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117371, 0.234312, -0.965050,
		-0.621047, -0.775616, -0.112785,
		-0.774935, 0.586104, 0.236553,
		44.188507, 34.209831, 37.734478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251427, 33.603321, 37.160255>,  <44.730961, 33.799561, 37.568893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251427, 33.603321, 37.160255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133991, 33.971928, 37.261929>,  <44.063530, 34.193092, 37.322933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133991, 33.971928, 37.261929>,  <44.251427, 33.603321, 37.160255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133991, 33.971928, 37.261929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114687, 0.230029, -0.966402,
		-0.949027, -0.312876, 0.038153,
		-0.293588, 0.921518, 0.254186,
		44.045914, 34.248383, 37.338184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667336, 33.700577, 36.740562>,  <44.251427, 33.603321, 37.160255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667336, 33.700577, 36.740562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744183, 34.073841, 36.862091>,  <43.790291, 34.297798, 36.935009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744183, 34.073841, 36.862091>,  <43.667336, 33.700577, 36.740562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744183, 34.073841, 36.862091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158947, 0.335090, -0.928682,
		-0.968414, 0.130128, 0.212701,
		0.192121, 0.933157, 0.303822,
		43.801819, 34.353786, 36.953239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250793, 34.062271, 36.345680>,  <43.667336, 33.700577, 36.740562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250793, 34.062271, 36.345680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507763, 34.356266, 36.432480>,  <43.661945, 34.532665, 36.484558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507763, 34.356266, 36.432480>,  <43.250793, 34.062271, 36.345680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507763, 34.356266, 36.432480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150022, 0.398288, -0.904909,
		-0.751524, 0.548778, 0.366134,
		0.642421, 0.734989, 0.216995,
		43.700489, 34.576763, 36.497578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991089, 34.627708, 35.953693>,  <43.250793, 34.062271, 36.345680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991089, 34.627708, 35.953693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366283, 34.730217, 36.047081>,  <43.591400, 34.791721, 36.103115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366283, 34.730217, 36.047081>,  <42.991089, 34.627708, 35.953693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366283, 34.730217, 36.047081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065257, 0.530901, -0.844918,
		-0.340474, 0.807757, 0.481255,
		0.937987, 0.256267, 0.233470,
		43.647678, 34.807098, 36.117123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047096, 35.392475, 35.846851>,  <42.991089, 34.627708, 35.953693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047096, 35.392475, 35.846851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417400, 35.241230, 35.847439>,  <43.639584, 35.150482, 35.847794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417400, 35.241230, 35.847439>,  <43.047096, 35.392475, 35.846851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417400, 35.241230, 35.847439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164415, 0.399038, -0.902073,
		0.340493, 0.835346, 0.431580,
		0.925760, -0.378108, 0.001473,
		43.695129, 35.127796, 35.847881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463886, 35.940208, 35.688541>,  <43.047096, 35.392475, 35.846851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463886, 35.940208, 35.688541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698101, 35.622158, 35.625408>,  <43.838631, 35.431328, 35.587528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698101, 35.622158, 35.625408>,  <43.463886, 35.940208, 35.688541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698101, 35.622158, 35.625408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444953, 0.477993, -0.757324,
		0.677613, 0.373217, 0.633680,
		0.585541, -0.795130, -0.157830,
		43.873764, 35.383617, 35.578060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228828, 36.135662, 35.635769>,  <43.463886, 35.940208, 35.688541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228828, 36.135662, 35.635769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.188324, 35.793442, 35.432682>,  <44.164021, 35.588108, 35.310829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.188324, 35.793442, 35.432682>,  <44.228828, 36.135662, 35.635769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188324, 35.793442, 35.432682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496108, 0.398930, -0.771188,
		0.862336, -0.329970, 0.384053,
		-0.101259, -0.855555, -0.507712,
		44.157948, 35.536774, 35.280369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893726, 35.890221, 35.320362>,  <44.228828, 36.135662, 35.635769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893726, 35.890221, 35.320362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555668, 35.793243, 35.129803>,  <44.352833, 35.735058, 35.015469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555668, 35.793243, 35.129803>,  <44.893726, 35.890221, 35.320362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555668, 35.793243, 35.129803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299248, 0.523889, -0.797490,
		0.442927, -0.816554, -0.370210,
		-0.845143, -0.242446, -0.476396,
		44.302124, 35.720509, 34.986885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922989, 35.089752, 35.274929>,  <44.893726, 35.890221, 35.320362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922989, 35.089752, 35.274929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.301884, 35.182331, 35.363636>,  <45.529221, 35.237877, 35.416859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.301884, 35.182331, 35.363636>,  <44.922989, 35.089752, 35.274929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301884, 35.182331, 35.363636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058631, -0.805272, 0.589999,
		0.315133, -0.545866, -0.776352,
		0.947235, 0.231446, 0.221763,
		45.586056, 35.251766, 35.430164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533054, 34.600845, 35.020470>,  <44.922989, 35.089752, 35.274929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533054, 34.600845, 35.020470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.657455, 34.794632, 35.347534>,  <45.732098, 34.910904, 35.543774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.657455, 34.794632, 35.347534>,  <45.533054, 34.600845, 35.020470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657455, 34.794632, 35.347534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163793, -0.874772, 0.456011,
		0.936188, -0.007894, -0.351410,
		0.311003, 0.484471, 0.817658,
		45.750755, 34.939972, 35.592831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.075382, 34.207886, 35.243332>,  <45.533054, 34.600845, 35.020470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.075382, 34.207886, 35.243332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.031456, 34.422001, 35.578331>,  <46.005100, 34.550472, 35.779331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.031456, 34.422001, 35.578331>,  <46.075382, 34.207886, 35.243332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031456, 34.422001, 35.578331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218668, -0.808940, 0.545710,
		0.969600, 0.243062, -0.028216,
		-0.109817, 0.535291, 0.837499,
		45.998512, 34.582588, 35.829582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717148, 34.096115, 35.656651>,  <46.075382, 34.207886, 35.243332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717148, 34.096115, 35.656651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.401611, 34.164944, 35.892658>,  <46.212288, 34.206242, 36.034264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.401611, 34.164944, 35.892658>,  <46.717148, 34.096115, 35.656651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401611, 34.164944, 35.892658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263705, -0.772388, 0.577821,
		0.555149, 0.611400, 0.563915,
		-0.788841, 0.172069, 0.590019,
		46.164959, 34.216564, 36.069664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.005974, 33.981575, 36.271297>,  <46.717148, 34.096115, 35.656651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.005974, 33.981575, 36.271297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.614502, 33.995708, 36.352226>,  <46.379620, 34.004189, 36.400784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.614502, 33.995708, 36.352226>,  <47.005974, 33.981575, 36.271297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614502, 33.995708, 36.352226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120584, -0.698595, 0.705283,
		0.166262, 0.714644, 0.679441,
		-0.978681, 0.035332, 0.202325,
		46.320896, 34.006310, 36.412922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915459, 33.950680, 37.027283>,  <47.005974, 33.981575, 36.271297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915459, 33.950680, 37.027283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.555347, 33.831306, 36.900513>,  <46.339279, 33.759682, 36.824451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.555347, 33.831306, 36.900513>,  <46.915459, 33.950680, 37.027283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.555347, 33.831306, 36.900513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003168, -0.732494, 0.680767,
		-0.435306, 0.611875, 0.660393,
		-0.900277, -0.298433, -0.316920,
		46.285263, 33.741776, 36.805435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414703, 33.807388, 37.612259>,  <46.915459, 33.950680, 37.027283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414703, 33.807388, 37.612259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.269527, 33.598034, 37.303883>,  <46.182423, 33.472420, 37.118858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.269527, 33.598034, 37.303883>,  <46.414703, 33.807388, 37.612259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269527, 33.598034, 37.303883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082445, -0.806070, 0.586050,
		-0.928159, 0.276260, 0.249403,
		-0.362939, -0.523385, -0.770937,
		46.160645, 33.441017, 37.072601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884853, 33.452488, 37.887699>,  <46.414703, 33.807388, 37.612259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884853, 33.452488, 37.887699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.975636, 33.248650, 37.555721>,  <46.030106, 33.126347, 37.356537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.975636, 33.248650, 37.555721>,  <45.884853, 33.452488, 37.887699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975636, 33.248650, 37.555721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143679, -0.860373, 0.488993,
		-0.963248, 0.008264, -0.268486,
		0.226957, -0.509597, -0.829941,
		46.043724, 33.095772, 37.306740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477577, 32.909805, 37.959263>,  <45.884853, 33.452488, 37.887699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477577, 32.909805, 37.959263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776535, 32.795864, 37.719177>,  <45.955910, 32.727501, 37.575127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776535, 32.795864, 37.719177>,  <45.477577, 32.909805, 37.959263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776535, 32.795864, 37.719177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024411, -0.891038, 0.453272,
		-0.663929, -0.353426, -0.659006,
		0.747397, -0.284853, -0.600213,
		46.000755, 32.710407, 37.539112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180004, 32.253975, 37.611061>,  <45.477577, 32.909805, 37.959263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180004, 32.253975, 37.611061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.574642, 32.281799, 37.670097>,  <45.811424, 32.298492, 37.705521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.574642, 32.281799, 37.670097>,  <45.180004, 32.253975, 37.611061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574642, 32.281799, 37.670097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009860, -0.928337, 0.371609,
		0.162864, -0.365174, -0.916582,
		0.986599, 0.069559, 0.147592,
		45.870621, 32.302666, 37.714375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299698, 31.646124, 37.664120>,  <45.180004, 32.253975, 37.611061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299698, 31.646124, 37.664120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.684361, 31.749418, 37.701046>,  <45.915157, 31.811396, 37.723202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.684361, 31.749418, 37.701046>,  <45.299698, 31.646124, 37.664120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684361, 31.749418, 37.701046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190405, -0.870976, 0.452931,
		0.197367, -0.417989, -0.886754,
		0.961661, 0.258236, 0.092314,
		45.972858, 31.826889, 37.728741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693264, 31.025553, 37.435131>,  <45.299698, 31.646124, 37.664120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693264, 31.025553, 37.435131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.897419, 31.254812, 37.691570>,  <46.019913, 31.392368, 37.845436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.897419, 31.254812, 37.691570>,  <45.693264, 31.025553, 37.435131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897419, 31.254812, 37.691570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340037, -0.819261, 0.461721,
		0.789863, -0.017656, -0.613029,
		0.510383, 0.573149, 0.641100,
		46.050533, 31.426758, 37.883900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301758, 30.708357, 37.444950>,  <45.693264, 31.025553, 37.435131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301758, 30.708357, 37.444950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.305347, 30.938189, 37.772308>,  <46.307499, 31.076088, 37.968723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.305347, 30.938189, 37.772308>,  <46.301758, 30.708357, 37.444950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.305347, 30.938189, 37.772308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320072, -0.777023, 0.542024,
		0.947351, 0.257084, -0.190878,
		0.008970, 0.574581, 0.818398,
		46.308037, 31.110563, 38.017826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910610, 30.672434, 37.865204>,  <46.301758, 30.708357, 37.444950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910610, 30.672434, 37.865204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.656551, 30.801537, 38.145893>,  <46.504116, 30.878998, 38.314308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.656551, 30.801537, 38.145893>,  <46.910610, 30.672434, 37.865204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656551, 30.801537, 38.145893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239115, -0.781711, 0.575979,
		0.734446, 0.533625, 0.419326,
		-0.635148, 0.322759, 0.701722,
		46.466007, 30.898365, 38.356411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255047, 30.421032, 38.469131>,  <46.910610, 30.672434, 37.865204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255047, 30.421032, 38.469131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.885643, 30.528427, 38.578701>,  <46.664001, 30.592865, 38.644444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.885643, 30.528427, 38.578701>,  <47.255047, 30.421032, 38.469131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885643, 30.528427, 38.578701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007867, -0.700752, 0.713362,
		0.383486, 0.660954, 0.645042,
		-0.923513, 0.268490, 0.273928,
		46.608589, 30.608974, 38.660881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305477, 30.454494, 39.228798>,  <47.255047, 30.421032, 38.469131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305477, 30.454494, 39.228798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.914513, 30.436695, 39.146149>,  <46.679935, 30.426016, 39.096558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.914513, 30.436695, 39.146149>,  <47.305477, 30.454494, 39.228798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914513, 30.436695, 39.146149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128122, -0.652761, 0.746651,
		-0.168101, 0.756256, 0.632313,
		-0.977408, -0.044500, -0.206622,
		46.621288, 30.423346, 39.084164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956902, 30.605005, 39.843761>,  <47.305477, 30.454494, 39.228798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956902, 30.605005, 39.843761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679585, 30.418200, 39.624222>,  <46.513195, 30.306116, 39.492496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679585, 30.418200, 39.624222>,  <46.956902, 30.605005, 39.843761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679585, 30.418200, 39.624222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246666, -0.561819, 0.789630,
		-0.677126, 0.682829, 0.274309,
		-0.693294, -0.467017, -0.548853,
		46.471596, 30.278095, 39.459564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.314705, 30.792728, 40.319508>,  <46.956902, 30.605005, 39.843761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.314705, 30.792728, 40.319508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266483, 30.476522, 40.079323>,  <46.237549, 30.286798, 39.935211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266483, 30.476522, 40.079323>,  <46.314705, 30.792728, 40.319508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266483, 30.476522, 40.079323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281422, -0.552845, 0.784323,
		-0.951981, 0.263537, -0.155821,
		-0.120553, -0.790513, -0.600464,
		46.230316, 30.239368, 39.899185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703484, 30.341208, 40.589973>,  <46.314705, 30.792728, 40.319508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703484, 30.341208, 40.589973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.925701, 30.100098, 40.360874>,  <46.059032, 29.955433, 40.223415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.925701, 30.100098, 40.360874>,  <45.703484, 30.341208, 40.589973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925701, 30.100098, 40.360874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093887, -0.729889, 0.677087,
		-0.826172, -0.322376, -0.462075,
		0.555540, -0.602773, -0.572747,
		46.092361, 29.919266, 40.189049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318989, 29.731182, 40.432812>,  <45.703484, 30.341208, 40.589973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318989, 29.731182, 40.432812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.697826, 29.605913, 40.404709>,  <45.925129, 29.530752, 40.387848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.697826, 29.605913, 40.404709>,  <45.318989, 29.731182, 40.432812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697826, 29.605913, 40.404709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220432, -0.793798, 0.566828,
		-0.233284, -0.521353, -0.820835,
		0.947095, -0.313170, -0.070258,
		45.981956, 29.511963, 40.383633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.128613, 34.681705, 43.062424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824081, 34.466793, 42.917255>,  <39.641365, 34.337845, 42.830154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824081, 34.466793, 42.917255>,  <40.128613, 34.681705, 43.062424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824081, 34.466793, 42.917255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492674, -0.115502, -0.862515,
		0.421492, -0.835459, 0.352637,
		-0.761326, -0.537279, -0.362925,
		39.595684, 34.305611, 42.808376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330814, 33.913574, 42.803398>,  <40.128613, 34.681705, 43.062424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330814, 33.913574, 42.803398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024467, 34.088882, 42.615196>,  <39.840660, 34.194065, 42.502274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024467, 34.088882, 42.615196>,  <40.330814, 33.913574, 42.803398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024467, 34.088882, 42.615196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441983, -0.172641, -0.880253,
		-0.467015, -0.882109, -0.061487,
		-0.765864, 0.438268, -0.470503,
		39.794708, 34.220364, 42.474045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233311, 33.585278, 42.095272>,  <40.330814, 33.913574, 42.803398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233311, 33.585278, 42.095272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026707, 33.926437, 42.064869>,  <39.902744, 34.131134, 42.046627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026707, 33.926437, 42.064869>,  <40.233311, 33.585278, 42.095272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026707, 33.926437, 42.064869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242797, 0.060754, -0.968172,
		-0.821139, -0.518522, -0.238463,
		-0.516507, 0.852903, -0.076008,
		39.871754, 34.182308, 42.042065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877789, 33.505169, 41.472870>,  <40.233311, 33.585278, 42.095272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877789, 33.505169, 41.472870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875530, 33.899891, 41.537586>,  <39.874176, 34.136726, 41.576416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875530, 33.899891, 41.537586>,  <39.877789, 33.505169, 41.472870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875530, 33.899891, 41.537586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374427, 0.152110, -0.914695,
		-0.927239, 0.055417, -0.370346,
		-0.005644, 0.986809, 0.161792,
		39.873837, 34.195934, 41.586124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464642, 33.766697, 40.897049>,  <39.877789, 33.505169, 41.472870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464642, 33.766697, 40.897049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675621, 34.079945, 41.028816>,  <39.802208, 34.267895, 41.107876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675621, 34.079945, 41.028816>,  <39.464642, 33.766697, 40.897049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675621, 34.079945, 41.028816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443136, 0.077232, -0.893122,
		-0.724866, 0.617052, -0.306294,
		0.527447, 0.783123, 0.329420,
		39.833855, 34.314880, 41.127644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452976, 34.267967, 40.326855>,  <39.464642, 33.766697, 40.897049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452976, 34.267967, 40.326855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738579, 34.438362, 40.549107>,  <39.909939, 34.540600, 40.682457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738579, 34.438362, 40.549107>,  <39.452976, 34.267967, 40.326855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738579, 34.438362, 40.549107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338691, 0.484415, -0.806616,
		-0.612766, 0.764118, 0.201597,
		0.714007, 0.425988, 0.555633,
		39.952782, 34.566158, 40.715797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473694, 35.017197, 40.166100>,  <39.452976, 34.267967, 40.326855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473694, 35.017197, 40.166100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832039, 34.893639, 40.293854>,  <40.047047, 34.819504, 40.370506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832039, 34.893639, 40.293854>,  <39.473694, 35.017197, 40.166100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832039, 34.893639, 40.293854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429721, 0.419528, -0.799585,
		0.112998, 0.853567, 0.508581,
		0.895863, -0.308899, 0.319390,
		40.100800, 34.800968, 40.389671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846813, 35.472771, 39.877575>,  <39.473694, 35.017197, 40.166100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846813, 35.472771, 39.877575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094433, 35.185341, 40.004330>,  <40.243004, 35.012882, 40.080383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094433, 35.185341, 40.004330>,  <39.846813, 35.472771, 39.877575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094433, 35.185341, 40.004330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621050, 0.200945, -0.757573,
		0.480699, 0.665782, 0.570669,
		0.619052, -0.718579, 0.316890,
		40.280148, 34.969769, 40.099396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599781, 35.737980, 39.815071>,  <39.846813, 35.472771, 39.877575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599781, 35.737980, 39.815071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578514, 35.339314, 39.790314>,  <40.565754, 35.100113, 39.775459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578514, 35.339314, 39.790314>,  <40.599781, 35.737980, 39.815071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578514, 35.339314, 39.790314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531021, 0.024272, -0.847011,
		0.845689, -0.077903, 0.527960,
		-0.053170, -0.996666, -0.061895,
		40.562565, 35.040314, 39.771744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149273, 35.585251, 39.450569>,  <40.599781, 35.737980, 39.815071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149273, 35.585251, 39.450569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011559, 35.211262, 39.416405>,  <40.928928, 34.986870, 39.395905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011559, 35.211262, 39.416405>,  <41.149273, 35.585251, 39.450569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011559, 35.211262, 39.416405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388985, -0.059252, -0.919336,
		0.854491, -0.349742, 0.384089,
		-0.344289, -0.934970, -0.085414,
		40.908272, 34.930771, 39.390781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624302, 35.144352, 39.185257>,  <41.149273, 35.585251, 39.450569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624302, 35.144352, 39.185257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265190, 35.006702, 39.075298>,  <41.049721, 34.924114, 39.009323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265190, 35.006702, 39.075298>,  <41.624302, 35.144352, 39.185257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265190, 35.006702, 39.075298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310163, -0.050837, -0.949323,
		0.312707, -0.937548, 0.152374,
		-0.897782, -0.344121, -0.274895,
		40.995857, 34.903465, 38.992828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719494, 34.607475, 38.612759>,  <41.624302, 35.144352, 39.185257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719494, 34.607475, 38.612759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336437, 34.720806, 38.592213>,  <41.106602, 34.788807, 38.579887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336437, 34.720806, 38.592213>,  <41.719494, 34.607475, 38.612759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336437, 34.720806, 38.592213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102904, 0.170155, -0.980030,
		-0.268933, -0.943807, -0.192104,
		-0.957646, 0.283330, -0.051361,
		41.049145, 34.805805, 38.576805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156807, 34.620033, 38.034279>,  <41.719494, 34.607475, 38.612759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156807, 34.620033, 38.034279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997505, 34.959621, 37.895344>,  <41.901924, 35.163372, 37.811981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997505, 34.959621, 37.895344>,  <42.156807, 34.620033, 38.034279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997505, 34.959621, 37.895344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411345, 0.503751, 0.759625,
		0.819869, 0.159652, -0.549842,
		-0.398259, 0.848968, -0.347338,
		41.878029, 35.214314, 37.791142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253304, 34.373314, 37.369240>,  <42.156807, 34.620033, 38.034279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253304, 34.373314, 37.369240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164753, 34.047485, 37.154774>,  <42.111622, 33.851990, 37.026093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164753, 34.047485, 37.154774>,  <42.253304, 34.373314, 37.369240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164753, 34.047485, 37.154774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546532, -0.351716, 0.759999,
		-0.807648, 0.461275, -0.367328,
		-0.221373, -0.814568, -0.536164,
		42.098339, 33.803116, 36.993923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512142, 34.184238, 37.327145>,  <42.253304, 34.373314, 37.369240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512142, 34.184238, 37.327145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693581, 33.831944, 37.272663>,  <41.802444, 33.620567, 37.239975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693581, 33.831944, 37.272663>,  <41.512142, 34.184238, 37.327145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693581, 33.831944, 37.272663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698446, -0.446237, 0.559504,
		-0.553555, -0.158660, -0.817560,
		0.453597, -0.880738, -0.136201,
		41.829659, 33.567722, 37.231804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970379, 33.684601, 37.228741>,  <41.512142, 34.184238, 37.327145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970379, 33.684601, 37.228741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273903, 33.436977, 37.309715>,  <41.456017, 33.288403, 37.358299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273903, 33.436977, 37.309715>,  <40.970379, 33.684601, 37.228741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273903, 33.436977, 37.309715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597554, -0.538038, 0.594511,
		-0.259115, -0.572089, -0.778186,
		0.758807, -0.619055, 0.202441,
		41.501545, 33.251263, 37.370449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852188, 32.894173, 36.973957>,  <40.970379, 33.684601, 37.228741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852188, 32.894173, 36.973957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109550, 32.906670, 37.279911>,  <41.263969, 32.914165, 37.463482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109550, 32.906670, 37.279911>,  <40.852188, 32.894173, 36.973957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109550, 32.906670, 37.279911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528600, -0.704592, 0.473427,
		0.553722, -0.708925, -0.436827,
		0.643408, 0.031240, 0.764885,
		41.302574, 32.916042, 37.509377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714161, 32.238991, 37.265011>,  <40.852188, 32.894173, 36.973957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714161, 32.238991, 37.265011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952171, 32.384434, 37.551712>,  <41.094978, 32.471699, 37.723732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952171, 32.384434, 37.551712>,  <40.714161, 32.238991, 37.265011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952171, 32.384434, 37.551712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613078, -0.371317, 0.697323,
		0.519692, -0.854351, 0.001974,
		0.595026, 0.363604, 0.716754,
		41.130680, 32.493515, 37.766739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741039, 31.710897, 37.728069>,  <40.714161, 32.238991, 37.265011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741039, 31.710897, 37.728069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882988, 32.011276, 37.950832>,  <40.968159, 32.191502, 38.084488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882988, 32.011276, 37.950832>,  <40.741039, 31.710897, 37.728069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882988, 32.011276, 37.950832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407838, -0.411665, 0.814985,
		0.841268, -0.516345, 0.160175,
		0.354875, 0.750946, 0.556906,
		40.989449, 32.236561, 38.117905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009560, 31.407099, 38.269516>,  <40.741039, 31.710897, 37.728069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009560, 31.407099, 38.269516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942932, 31.772684, 38.417526>,  <40.902958, 31.992035, 38.506332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942932, 31.772684, 38.417526>,  <41.009560, 31.407099, 38.269516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942932, 31.772684, 38.417526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442382, -0.404652, 0.800347,
		0.881223, -0.030384, 0.471723,
		-0.166567, 0.913965, 0.370030,
		40.892963, 32.046875, 38.528534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407864, 31.472755, 38.905807>,  <41.009560, 31.407099, 38.269516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407864, 31.472755, 38.905807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106606, 31.735409, 38.921833>,  <40.925850, 31.893002, 38.931446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106606, 31.735409, 38.921833>,  <41.407864, 31.472755, 38.905807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106606, 31.735409, 38.921833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283550, -0.378968, 0.880899,
		0.593610, 0.652085, 0.471606,
		-0.753144, 0.656634, 0.040061,
		40.880661, 31.932400, 38.933853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313278, 31.719488, 39.577389>,  <41.407864, 31.472755, 38.905807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313278, 31.719488, 39.577389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961601, 31.818558, 39.414570>,  <40.750595, 31.877998, 39.316879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961601, 31.818558, 39.414570>,  <41.313278, 31.719488, 39.577389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961601, 31.818558, 39.414570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461615, -0.231060, 0.856459,
		0.118069, 0.940887, 0.317475,
		-0.879188, 0.247673, -0.407046,
		40.697845, 31.892860, 39.292458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034622, 31.774376, 40.204811>,  <41.313278, 31.719488, 39.577389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034622, 31.774376, 40.204811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734241, 31.823971, 39.945366>,  <40.554012, 31.853727, 39.789700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734241, 31.823971, 39.945366>,  <41.034622, 31.774376, 40.204811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734241, 31.823971, 39.945366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660270, -0.156865, 0.734464,
		-0.010681, 0.979807, 0.199663,
		-0.750952, 0.123987, -0.648612,
		40.508957, 31.861166, 39.750782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543488, 32.337818, 40.430786>,  <41.034622, 31.774376, 40.204811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543488, 32.337818, 40.430786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372261, 32.053852, 40.207081>,  <40.269527, 31.883472, 40.072857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372261, 32.053852, 40.207081>,  <40.543488, 32.337818, 40.430786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372261, 32.053852, 40.207081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638060, -0.200851, 0.743329,
		-0.640031, 0.675038, -0.366993,
		-0.428064, -0.709918, -0.559265,
		40.243843, 31.840878, 40.039303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859089, 32.440948, 40.563686>,  <40.543488, 32.337818, 40.430786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859089, 32.440948, 40.563686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877792, 32.077049, 40.398678>,  <39.889015, 31.858711, 40.299671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877792, 32.077049, 40.398678>,  <39.859089, 32.440948, 40.563686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877792, 32.077049, 40.398678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660508, -0.337968, 0.670453,
		-0.749361, 0.241124, -0.616698,
		0.046762, -0.909746, -0.412524,
		39.891823, 31.804125, 40.274921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200249, 32.247108, 40.376316>,  <39.859089, 32.440948, 40.563686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200249, 32.247108, 40.376316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413124, 31.915344, 40.444263>,  <39.540848, 31.716286, 40.485031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413124, 31.915344, 40.444263>,  <39.200249, 32.247108, 40.376316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413124, 31.915344, 40.444263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621797, -0.246740, 0.743296,
		-0.574584, -0.501196, -0.647036,
		0.532187, -0.829411, 0.169869,
		39.572781, 31.666521, 40.495224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711262, 31.879601, 40.606426>,  <39.200249, 32.247108, 40.376316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711262, 31.879601, 40.606426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023666, 31.646769, 40.696945>,  <39.211109, 31.507071, 40.751259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023666, 31.646769, 40.696945>,  <38.711262, 31.879601, 40.606426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023666, 31.646769, 40.696945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447024, -0.268000, 0.853432,
		-0.436115, -0.767699, -0.469512,
		0.781008, -0.582077, 0.226301,
		39.257969, 31.472145, 40.764835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417252, 31.273973, 40.837280>,  <38.711262, 31.879601, 40.606426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417252, 31.273973, 40.837280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775417, 31.303350, 41.012932>,  <38.990318, 31.320976, 41.118324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775417, 31.303350, 41.012932>,  <38.417252, 31.273973, 40.837280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775417, 31.303350, 41.012932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417640, -0.203237, 0.885591,
		0.154287, -0.976371, -0.151309,
		0.895418, 0.073443, 0.439128,
		39.044044, 31.325382, 41.144669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408169, 30.552776, 40.437126>,  <38.417252, 31.273973, 40.837280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408169, 30.552776, 40.437126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181179, 30.223576, 40.447231>,  <38.044987, 30.026054, 40.453297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181179, 30.223576, 40.447231>,  <38.408169, 30.552776, 40.437126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181179, 30.223576, 40.447231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290175, 0.171174, -0.941540,
		0.770567, -0.541631, -0.335952,
		-0.567473, -0.823004, 0.025267,
		38.010937, 29.976675, 40.454811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449074, 30.290380, 39.735531>,  <38.408169, 30.552776, 40.437126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449074, 30.290380, 39.735531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109798, 30.135542, 39.880157>,  <37.906235, 30.042639, 39.966934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109798, 30.135542, 39.880157>,  <38.449074, 30.290380, 39.735531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109798, 30.135542, 39.880157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461031, 0.203393, -0.863760,
		0.260823, -0.899324, -0.350981,
		-0.848187, -0.387102, 0.361567,
		37.855343, 30.019413, 39.988628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244362, 29.786367, 39.213734>,  <38.449074, 30.290380, 39.735531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244362, 29.786367, 39.213734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893707, 29.836012, 39.399685>,  <37.683315, 29.865799, 39.511253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893707, 29.836012, 39.399685>,  <38.244362, 29.786367, 39.213734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893707, 29.836012, 39.399685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470324, -0.017180, -0.882326,
		-0.101521, -0.992119, 0.073433,
		-0.876635, 0.124112, 0.464873,
		37.630718, 29.873245, 39.539146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818226, 29.350609, 38.928337>,  <38.244362, 29.786367, 39.213734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818226, 29.350609, 38.928337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595604, 29.645594, 39.081383>,  <37.462029, 29.822584, 39.173210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595604, 29.645594, 39.081383>,  <37.818226, 29.350609, 38.928337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595604, 29.645594, 39.081383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464318, 0.105796, -0.879327,
		-0.688950, -0.667050, 0.283536,
		-0.556558, 0.737463, 0.382611,
		37.428635, 29.866833, 39.196167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073044, 29.196217, 38.763355>,  <37.818226, 29.350609, 38.928337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073044, 29.196217, 38.763355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089169, 29.590134, 38.830956>,  <37.098843, 29.826483, 38.871517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089169, 29.590134, 38.830956>,  <37.073044, 29.196217, 38.763355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089169, 29.590134, 38.830956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509163, 0.165779, -0.844554,
		-0.859725, -0.052000, 0.508102,
		0.040316, 0.984791, 0.169001,
		37.101265, 29.885571, 38.881657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381527, 29.546841, 38.600990>,  <37.073044, 29.196217, 38.763355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381527, 29.546841, 38.600990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612484, 29.873022, 38.584721>,  <36.751057, 30.068731, 38.574959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612484, 29.873022, 38.584721>,  <36.381527, 29.546841, 38.600990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612484, 29.873022, 38.584721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290542, 0.158655, -0.943617,
		-0.763024, 0.556652, 0.328530,
		0.577390, 0.815455, -0.040673,
		36.785702, 30.117659, 38.572517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906582, 29.972570, 38.395344>,  <36.381527, 29.546841, 38.600990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906582, 29.972570, 38.395344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233727, 30.184441, 38.305408>,  <36.430012, 30.311563, 38.251450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233727, 30.184441, 38.305408>,  <35.906582, 29.972570, 38.395344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233727, 30.184441, 38.305408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472900, 0.396101, -0.787064,
		-0.327833, 0.750030, 0.574439,
		0.817858, 0.529678, -0.224834,
		36.479084, 30.343344, 38.237957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599899, 30.736486, 38.330551>,  <35.906582, 29.972570, 38.395344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599899, 30.736486, 38.330551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961273, 30.763199, 38.161160>,  <36.178097, 30.779226, 38.059525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961273, 30.763199, 38.161160>,  <35.599899, 30.736486, 38.330551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961273, 30.763199, 38.161160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385565, 0.558462, -0.734479,
		0.187449, 0.826837, 0.530286,
		0.903439, 0.066783, -0.423483,
		36.232304, 30.783234, 38.034115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686310, 31.435608, 38.192402>,  <35.599899, 30.736486, 38.330551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686310, 31.435608, 38.192402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936695, 31.234592, 37.953865>,  <36.086926, 31.113983, 37.810741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936695, 31.234592, 37.953865>,  <35.686310, 31.435608, 38.192402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936695, 31.234592, 37.953865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295589, 0.554735, -0.777751,
		0.721661, 0.663117, 0.198700,
		0.625965, -0.502539, -0.596341,
		36.124485, 31.083832, 37.774963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130650, 31.863279, 37.923462>,  <35.686310, 31.435608, 38.192402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130650, 31.863279, 37.923462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129730, 31.569605, 37.651882>,  <36.129177, 31.393400, 37.488934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129730, 31.569605, 37.651882>,  <36.130650, 31.863279, 37.923462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129730, 31.569605, 37.651882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163146, 0.670125, -0.724096,
		0.986599, 0.109101, -0.121322,
		-0.002302, -0.734186, -0.678945,
		36.129040, 31.349350, 37.448200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517784, 32.182747, 37.370064>,  <36.130650, 31.863279, 37.923462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517784, 32.182747, 37.370064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351131, 31.849991, 37.223438>,  <36.251141, 31.650337, 37.135464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351131, 31.849991, 37.223438>,  <36.517784, 32.182747, 37.370064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351131, 31.849991, 37.223438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256635, 0.494461, -0.830450,
		0.872097, -0.251921, -0.419502,
		-0.416635, -0.831892, -0.366566,
		36.226139, 31.600424, 37.113468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799751, 32.054562, 36.598984>,  <36.517784, 32.182747, 37.370064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799751, 32.054562, 36.598984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448746, 31.872442, 36.659210>,  <36.238144, 31.763170, 36.695347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448746, 31.872442, 36.659210>,  <36.799751, 32.054562, 36.598984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448746, 31.872442, 36.659210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321861, 0.326432, -0.888733,
		0.355493, -0.828337, -0.432993,
		-0.877514, -0.455302, 0.150565,
		36.185490, 31.735853, 36.704380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.161198, 28.262512, 43.915028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.766953, 28.294006, 43.855209>,  <38.530407, 28.312902, 43.819317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.766953, 28.294006, 43.855209>,  <39.161198, 28.262512, 43.915028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766953, 28.294006, 43.855209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168858, 0.421216, -0.891103,
		-0.007170, -0.903536, -0.428452,
		-0.985614, 0.078737, -0.149549,
		38.471268, 28.317627, 43.810345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971569, 27.855291, 43.266705>,  <39.161198, 28.262512, 43.915028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971569, 27.855291, 43.266705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677620, 28.122536, 43.313328>,  <38.501251, 28.282883, 43.341301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677620, 28.122536, 43.313328>,  <38.971569, 27.855291, 43.266705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677620, 28.122536, 43.313328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100533, 0.277282, -0.955514,
		-0.670709, -0.690467, -0.270935,
		-0.734876, 0.668109, 0.116561,
		38.457157, 28.322969, 43.348297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552296, 27.753754, 42.720207>,  <38.971569, 27.855291, 43.266705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552296, 27.753754, 42.720207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486172, 28.128868, 42.842342>,  <38.446495, 28.353937, 42.915623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486172, 28.128868, 42.842342>,  <38.552296, 27.753754, 42.720207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486172, 28.128868, 42.842342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052585, 0.317535, -0.946788,
		-0.984839, -0.140459, -0.101806,
		-0.165312, 0.937786, 0.305334,
		38.436577, 28.410204, 42.933941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089405, 27.950319, 42.347183>,  <38.552296, 27.753754, 42.720207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089405, 27.950319, 42.347183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218464, 28.303095, 42.484638>,  <38.295898, 28.514759, 42.567112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218464, 28.303095, 42.484638>,  <38.089405, 27.950319, 42.347183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218464, 28.303095, 42.484638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289209, 0.437545, -0.851418,
		-0.901253, 0.175326, 0.396238,
		0.322648, 0.881938, 0.343633,
		38.315258, 28.567677, 42.587727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529766, 28.399258, 42.212654>,  <38.089405, 27.950319, 42.347183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529766, 28.399258, 42.212654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.852150, 28.633539, 42.247021>,  <38.045582, 28.774109, 42.267639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.852150, 28.633539, 42.247021>,  <37.529766, 28.399258, 42.212654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852150, 28.633539, 42.247021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281991, 0.507466, -0.814223,
		-0.520491, 0.632004, 0.574160,
		0.805960, 0.585703, 0.085912,
		38.093937, 28.809250, 42.272793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258614, 29.082611, 42.196873>,  <37.529766, 28.399258, 42.212654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258614, 29.082611, 42.196873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644394, 29.120762, 42.098301>,  <37.875862, 29.143652, 42.039158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644394, 29.120762, 42.098301>,  <37.258614, 29.082611, 42.196873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644394, 29.120762, 42.098301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257164, 0.553231, -0.792340,
		0.060765, 0.827550, 0.558093,
		0.964455, 0.095375, -0.246434,
		37.933731, 29.149374, 42.024372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375099, 29.815071, 42.045280>,  <37.258614, 29.082611, 42.196873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375099, 29.815071, 42.045280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662601, 29.613426, 41.853752>,  <37.835102, 29.492439, 41.738834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662601, 29.613426, 41.853752>,  <37.375099, 29.815071, 42.045280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662601, 29.613426, 41.853752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137222, 0.572285, -0.808492,
		0.681591, 0.646810, 0.342156,
		0.718751, -0.504110, -0.478821,
		37.878227, 29.462193, 41.710106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485397, 30.275326, 41.513920>,  <37.375099, 29.815071, 42.045280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485397, 30.275326, 41.513920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.691261, 29.955349, 41.390495>,  <37.814781, 29.763363, 41.316441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.691261, 29.955349, 41.390495>,  <37.485397, 30.275326, 41.513920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691261, 29.955349, 41.390495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053231, 0.329381, -0.942696,
		0.855739, 0.501596, 0.126938,
		0.514663, -0.799944, -0.308564,
		37.845661, 29.715366, 41.297928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967731, 30.571787, 41.142891>,  <37.485397, 30.275326, 41.513920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967731, 30.571787, 41.142891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944298, 30.192137, 41.019131>,  <37.930237, 29.964346, 40.944874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944298, 30.192137, 41.019131>,  <37.967731, 30.571787, 41.142891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944298, 30.192137, 41.019131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117519, 0.301222, -0.946285,
		0.991341, -0.091798, 0.093894,
		-0.058584, -0.949125, -0.309402,
		37.926723, 29.907400, 40.926311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680801, 30.544039, 41.305962>,  <37.967731, 30.571787, 41.142891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680801, 30.544039, 41.305962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.863209, 30.869184, 41.450901>,  <38.972652, 31.064272, 41.537865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.863209, 30.869184, 41.450901>,  <38.680801, 30.544039, 41.305962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863209, 30.869184, 41.450901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282428, -0.253923, 0.925071,
		0.843968, -0.524186, 0.113783,
		0.456017, 0.812867, 0.362348,
		39.000015, 31.113045, 41.559605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093014, 30.243336, 41.838036>,  <38.680801, 30.544039, 41.305962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093014, 30.243336, 41.838036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.086102, 30.638588, 41.899094>,  <39.081955, 30.875740, 41.935726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.086102, 30.638588, 41.899094>,  <39.093014, 30.243336, 41.838036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086102, 30.638588, 41.899094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024073, -0.153030, 0.987928,
		0.999561, 0.013394, 0.026431,
		-0.017277, 0.988131, 0.152641,
		39.080917, 30.935028, 41.944885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533798, 30.387993, 42.482105>,  <39.093014, 30.243336, 41.838036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533798, 30.387993, 42.482105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.336933, 30.732059, 42.428616>,  <39.218815, 30.938499, 42.396523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.336933, 30.732059, 42.428616>,  <39.533798, 30.387993, 42.482105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336933, 30.732059, 42.428616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156474, 0.063694, 0.985626,
		0.856322, 0.506016, 0.103246,
		-0.492167, 0.860169, -0.133722,
		39.189281, 30.990110, 42.388500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910656, 30.979424, 42.897812>,  <39.533798, 30.387993, 42.482105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910656, 30.979424, 42.897812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.523777, 31.061594, 42.838036>,  <39.291649, 31.110897, 42.802170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.523777, 31.061594, 42.838036>,  <39.910656, 30.979424, 42.897812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523777, 31.061594, 42.838036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128089, 0.113638, 0.985231,
		0.219374, 0.972053, -0.083598,
		-0.967196, 0.205426, -0.149439,
		39.233620, 31.123222, 42.793205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885319, 31.523983, 43.366348>,  <39.910656, 30.979424, 42.897812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885319, 31.523983, 43.366348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521786, 31.388500, 43.268944>,  <39.303665, 31.307211, 43.210503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521786, 31.388500, 43.268944>,  <39.885319, 31.523983, 43.366348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521786, 31.388500, 43.268944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263555, 0.013727, 0.964547,
		-0.323358, 0.940791, -0.101744,
		-0.908834, -0.338709, -0.243512,
		39.249134, 31.286888, 43.195889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345631, 31.999754, 43.645645>,  <39.885319, 31.523983, 43.366348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345631, 31.999754, 43.645645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164913, 31.649660, 43.576538>,  <39.056484, 31.439604, 43.535072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164913, 31.649660, 43.576538>,  <39.345631, 31.999754, 43.645645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164913, 31.649660, 43.576538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265965, -0.052711, 0.962541,
		-0.851556, 0.480818, -0.208967,
		-0.451792, -0.875235, -0.172767,
		39.029377, 31.387089, 43.524708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662376, 32.126259, 43.922325>,  <39.345631, 31.999754, 43.645645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662376, 32.126259, 43.922325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.713322, 31.730604, 43.892960>,  <38.743889, 31.493212, 43.875340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.713322, 31.730604, 43.892960>,  <38.662376, 32.126259, 43.922325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713322, 31.730604, 43.892960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282998, -0.107178, 0.953113,
		-0.950627, -0.100616, -0.293574,
		0.127363, -0.989136, -0.073412,
		38.751530, 31.433863, 43.870937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111984, 31.923498, 44.201527>,  <38.662376, 32.126259, 43.922325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111984, 31.923498, 44.201527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358665, 31.608658, 44.196606>,  <38.506672, 31.419754, 44.193653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358665, 31.608658, 44.196606>,  <38.111984, 31.923498, 44.201527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358665, 31.608658, 44.196606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183259, -0.158754, 0.970162,
		-0.765571, -0.596043, -0.242147,
		0.616699, -0.787103, -0.012307,
		38.543674, 31.372526, 44.192913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682472, 31.297470, 44.263653>,  <38.111984, 31.923498, 44.201527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682472, 31.297470, 44.263653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060764, 31.216738, 44.365528>,  <38.287739, 31.168299, 44.426651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060764, 31.216738, 44.365528>,  <37.682472, 31.297470, 44.263653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060764, 31.216738, 44.365528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323275, -0.504600, 0.800545,
		-0.033061, -0.839430, -0.542461,
		0.945727, -0.201831, 0.254684,
		38.344482, 31.156189, 44.441933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599857, 30.737185, 44.622505>,  <37.682472, 31.297470, 44.263653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599857, 30.737185, 44.622505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.978878, 30.830692, 44.709686>,  <38.206291, 30.886797, 44.761993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.978878, 30.830692, 44.709686>,  <37.599857, 30.737185, 44.622505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978878, 30.830692, 44.709686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122811, -0.363268, 0.923555,
		0.295074, -0.901880, -0.315505,
		0.947549, 0.233770, 0.217952,
		38.263142, 30.900824, 44.775070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846825, 30.118692, 44.921906>,  <37.599857, 30.737185, 44.622505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846825, 30.118692, 44.921906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071156, 30.432280, 45.028393>,  <38.205753, 30.620432, 45.092285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071156, 30.432280, 45.028393>,  <37.846825, 30.118692, 44.921906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071156, 30.432280, 45.028393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045351, -0.350146, 0.935596,
		0.826692, -0.512631, -0.231924,
		0.560823, 0.783968, 0.266215,
		38.239403, 30.667471, 45.108257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421196, 29.825886, 45.169647>,  <37.846825, 30.118692, 44.921906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421196, 29.825886, 45.169647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370312, 30.188534, 45.330574>,  <38.339779, 30.406122, 45.427132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370312, 30.188534, 45.330574>,  <38.421196, 29.825886, 45.169647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370312, 30.188534, 45.330574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100305, -0.415291, 0.904142,
		0.986790, 0.074667, 0.143770,
		-0.127215, 0.906619, 0.402316,
		38.332146, 30.460520, 45.451267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647518, 29.698572, 45.861080>,  <38.421196, 29.825886, 45.169647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647518, 29.698572, 45.861080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.444759, 30.043303, 45.854027>,  <38.323105, 30.250141, 45.849796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.444759, 30.043303, 45.854027>,  <38.647518, 29.698572, 45.861080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444759, 30.043303, 45.854027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559164, -0.313177, 0.767630,
		0.656042, 0.398968, 0.640651,
		-0.506897, 0.861826, -0.017631,
		38.292690, 30.301851, 45.848736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578167, 29.900845, 46.586926>,  <38.647518, 29.698572, 45.861080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578167, 29.900845, 46.586926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312218, 30.167521, 46.452183>,  <38.152649, 30.327526, 46.371338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312218, 30.167521, 46.452183>,  <38.578167, 29.900845, 46.586926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312218, 30.167521, 46.452183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482937, -0.039634, 0.874758,
		0.569842, 0.744280, 0.348321,
		-0.664870, 0.666691, -0.336855,
		38.112759, 30.367527, 46.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.482845, 30.119125, 45.471863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855602, 29.985895, 45.529339>,  <34.079254, 29.905958, 45.563824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855602, 29.985895, 45.529339>,  <33.482845, 30.119125, 45.471863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855602, 29.985895, 45.529339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307412, 0.514861, -0.800259,
		0.192566, 0.789924, 0.582184,
		0.931888, -0.333073, 0.143688,
		34.135170, 29.885973, 45.572445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847301, 30.701159, 45.389973>,  <33.482845, 30.119125, 45.471863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847301, 30.701159, 45.389973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142105, 30.432804, 45.357166>,  <34.318989, 30.271791, 45.337482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142105, 30.432804, 45.357166>,  <33.847301, 30.701159, 45.389973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142105, 30.432804, 45.357166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414858, 0.544834, -0.728731,
		0.533583, 0.503056, 0.679870,
		0.737009, -0.670888, -0.082017,
		34.363209, 30.231537, 45.332561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398350, 31.116961, 45.261814>,  <33.847301, 30.701159, 45.389973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398350, 31.116961, 45.261814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.502968, 30.752176, 45.135372>,  <34.565739, 30.533306, 45.059505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.502968, 30.752176, 45.135372>,  <34.398350, 31.116961, 45.261814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502968, 30.752176, 45.135372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295569, 0.387447, -0.873226,
		0.918822, 0.134953, 0.370881,
		0.261542, -0.911961, -0.316107,
		34.581429, 30.478588, 45.040539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078941, 31.224426, 44.935802>,  <34.398350, 31.116961, 45.261814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078941, 31.224426, 44.935802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942539, 30.885950, 44.772011>,  <34.860699, 30.682863, 44.673737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942539, 30.885950, 44.772011>,  <35.078941, 31.224426, 44.935802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942539, 30.885950, 44.772011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397276, 0.265059, -0.878587,
		0.851990, -0.462280, 0.245785,
		-0.341006, -0.846192, -0.409480,
		34.840237, 30.632092, 44.649166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676334, 30.931999, 44.653671>,  <35.078941, 31.224426, 44.935802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676334, 30.931999, 44.653671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333977, 30.814068, 44.483723>,  <35.128563, 30.743309, 44.381752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333977, 30.814068, 44.483723>,  <35.676334, 30.931999, 44.653671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333977, 30.814068, 44.483723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381914, 0.193595, -0.903694,
		0.348690, -0.935733, -0.053097,
		-0.855895, -0.294830, -0.424874,
		35.077209, 30.725620, 44.356262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849270, 30.637297, 44.030033>,  <35.676334, 30.931999, 44.653671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849270, 30.637297, 44.030033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460262, 30.684240, 43.949593>,  <35.226860, 30.712406, 43.901329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460262, 30.684240, 43.949593>,  <35.849270, 30.637297, 44.030033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460262, 30.684240, 43.949593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219750, 0.177120, -0.959343,
		-0.076972, -0.977167, -0.198042,
		-0.972515, 0.117362, -0.201099,
		35.168507, 30.719448, 43.889263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792892, 30.360851, 43.374939>,  <35.849270, 30.637297, 44.030033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792892, 30.360851, 43.374939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485546, 30.609764, 43.434776>,  <35.301140, 30.759111, 43.470680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485546, 30.609764, 43.434776>,  <35.792892, 30.360851, 43.374939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485546, 30.609764, 43.434776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085466, 0.331404, -0.939610,
		-0.634278, -0.709180, -0.307824,
		-0.768366, 0.622282, 0.149592,
		35.255035, 30.796450, 43.479652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499489, 30.236338, 42.849968>,  <35.792892, 30.360851, 43.374939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499489, 30.236338, 42.849968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346172, 30.583338, 42.976795>,  <35.254181, 30.791538, 43.052891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346172, 30.583338, 42.976795>,  <35.499489, 30.236338, 42.849968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346172, 30.583338, 42.976795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119157, 0.386862, -0.914407,
		-0.915909, -0.312703, -0.251650,
		-0.383292, 0.867499, 0.317069,
		35.231186, 30.843588, 43.071915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197163, 30.423313, 42.204895>,  <35.499489, 30.236338, 42.849968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197163, 30.423313, 42.204895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170055, 30.747593, 42.437508>,  <35.153790, 30.942162, 42.577076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170055, 30.747593, 42.437508>,  <35.197163, 30.423313, 42.204895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170055, 30.747593, 42.437508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080963, 0.585413, -0.806683,
		-0.994411, -0.007584, -0.105309,
		-0.067767, 0.810700, 0.581527,
		35.149727, 30.990803, 42.611965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570034, 30.679840, 41.930595>,  <35.197163, 30.423313, 42.204895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570034, 30.679840, 41.930595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.801647, 30.945353, 42.119961>,  <34.940613, 31.104660, 42.233582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.801647, 30.945353, 42.119961>,  <34.570034, 30.679840, 41.930595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801647, 30.945353, 42.119961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063852, 0.615792, -0.785317,
		-0.812802, 0.424495, 0.398946,
		0.579030, 0.663781, 0.473412,
		34.975357, 31.144487, 42.261986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196293, 31.250345, 41.848881>,  <34.570034, 30.679840, 41.930595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196293, 31.250345, 41.848881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570820, 31.371124, 41.920601>,  <34.795536, 31.443592, 41.963631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570820, 31.371124, 41.920601>,  <34.196293, 31.250345, 41.848881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570820, 31.371124, 41.920601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073566, 0.667899, -0.740607,
		-0.343375, 0.680250, 0.647575,
		0.936313, 0.301946, 0.179296,
		34.851715, 31.461708, 41.974388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169041, 31.995403, 41.859905>,  <34.196293, 31.250345, 41.848881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169041, 31.995403, 41.859905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.548843, 31.880356, 41.809772>,  <34.776726, 31.811327, 41.779694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.548843, 31.880356, 41.809772>,  <34.169041, 31.995403, 41.859905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548843, 31.880356, 41.809772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033670, 0.490597, -0.870736,
		0.311929, 0.822551, 0.475510,
		0.949509, -0.287619, -0.125336,
		34.833694, 31.794071, 41.772171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400551, 32.521446, 41.555992>,  <34.169041, 31.995403, 41.859905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400551, 32.521446, 41.555992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677750, 32.249035, 41.461369>,  <34.844070, 32.085590, 41.404594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677750, 32.249035, 41.461369>,  <34.400551, 32.521446, 41.555992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677750, 32.249035, 41.461369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091727, 0.408751, -0.908024,
		0.715081, 0.607559, 0.345732,
		0.692997, -0.681024, -0.236560,
		34.885651, 32.044727, 41.390400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954376, 32.834190, 41.171402>,  <34.400551, 32.521446, 41.555992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954376, 32.834190, 41.171402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034534, 32.451302, 41.087917>,  <35.082630, 32.221569, 41.037827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034534, 32.451302, 41.087917>,  <34.954376, 32.834190, 41.171402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034534, 32.451302, 41.087917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028195, 0.218581, -0.975411,
		0.979308, 0.189587, 0.070793,
		0.200400, -0.957224, -0.208713,
		35.094654, 32.164135, 41.025303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522766, 33.135712, 41.465744>,  <34.954376, 32.834190, 41.171402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522766, 33.135712, 41.465744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511082, 33.521969, 41.569035>,  <35.504070, 33.753723, 41.631008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511082, 33.521969, 41.569035>,  <35.522766, 33.135712, 41.465744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511082, 33.521969, 41.569035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201044, -0.258731, 0.944796,
		0.979147, -0.024313, 0.201695,
		-0.029214, 0.965644, 0.258223,
		35.502319, 33.811661, 41.646500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762218, 33.211727, 42.151386>,  <35.522766, 33.135712, 41.465744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762218, 33.211727, 42.151386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.564552, 33.555847, 42.101276>,  <35.445953, 33.762318, 42.071213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.564552, 33.555847, 42.101276>,  <35.762218, 33.211727, 42.151386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564552, 33.555847, 42.101276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297356, -0.031853, 0.954235,
		0.816935, 0.508798, 0.271555,
		-0.494163, 0.860296, -0.125272,
		35.416302, 33.813934, 42.063694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044750, 33.501747, 42.724236>,  <35.762218, 33.211727, 42.151386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044750, 33.501747, 42.724236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727203, 33.698769, 42.581596>,  <35.536674, 33.816982, 42.496014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727203, 33.698769, 42.581596>,  <36.044750, 33.501747, 42.724236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727203, 33.698769, 42.581596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314968, 0.168550, 0.934016,
		0.520160, 0.853802, 0.021334,
		-0.793869, 0.492557, -0.356593,
		35.489044, 33.846535, 42.474617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030258, 34.046783, 43.079613>,  <36.044750, 33.501747, 42.724236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030258, 34.046783, 43.079613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.660160, 34.035435, 42.928288>,  <35.438103, 34.028625, 42.837490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.660160, 34.035435, 42.928288>,  <36.030258, 34.046783, 43.079613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660160, 34.035435, 42.928288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379339, 0.083842, 0.921451,
		0.005572, 0.996075, -0.088338,
		-0.925241, -0.028375, -0.378317,
		35.382587, 34.026920, 42.814793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598957, 34.559505, 43.465649>,  <36.030258, 34.046783, 43.079613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598957, 34.559505, 43.465649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.360828, 34.283989, 43.300159>,  <35.217953, 34.118679, 43.200867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.360828, 34.283989, 43.300159>,  <35.598957, 34.559505, 43.465649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360828, 34.283989, 43.300159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245765, -0.334135, 0.909920,
		-0.764981, 0.643371, 0.029637,
		-0.595319, -0.688787, -0.413725,
		35.182232, 34.077354, 43.176041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990894, 34.655735, 43.778923>,  <35.598957, 34.559505, 43.465649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990894, 34.655735, 43.778923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999424, 34.282360, 43.635677>,  <35.004539, 34.058334, 43.549728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999424, 34.282360, 43.635677>,  <34.990894, 34.655735, 43.778923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999424, 34.282360, 43.635677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282034, -0.349267, 0.893571,
		-0.959168, 0.081949, -0.270707,
		0.021321, -0.933433, -0.358118,
		35.005821, 34.002331, 43.528240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396046, 34.322643, 44.172470>,  <34.990894, 34.655735, 43.778923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396046, 34.322643, 44.172470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644993, 34.044167, 44.029377>,  <34.794361, 33.877079, 43.943520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644993, 34.044167, 44.029377>,  <34.396046, 34.322643, 44.172470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644993, 34.044167, 44.029377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232071, -0.600614, 0.765118,
		-0.747527, -0.393168, -0.535371,
		0.622371, -0.696190, -0.357732,
		34.831703, 33.835308, 43.922058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973564, 33.597633, 44.301331>,  <34.396046, 34.322643, 44.172470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973564, 33.597633, 44.301331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354118, 33.492855, 44.236534>,  <34.582451, 33.429989, 44.197655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354118, 33.492855, 44.236534>,  <33.973564, 33.597633, 44.301331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354118, 33.492855, 44.236534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038020, -0.621821, 0.782236,
		-0.305635, -0.738052, -0.601553,
		0.951389, -0.261950, -0.161990,
		34.639534, 33.414268, 44.187939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001236, 32.780075, 44.310074>,  <33.973564, 33.597633, 44.301331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001236, 32.780075, 44.310074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.363205, 32.931751, 44.387356>,  <34.580387, 33.022758, 44.433723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.363205, 32.931751, 44.387356>,  <34.001236, 32.780075, 44.310074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363205, 32.931751, 44.387356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073893, -0.587085, 0.806146,
		0.419113, -0.715223, -0.559286,
		0.904922, 0.379194, 0.193205,
		34.634682, 33.045509, 44.445316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358368, 32.237244, 44.543686>,  <34.001236, 32.780075, 44.310074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358368, 32.237244, 44.543686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565308, 32.552547, 44.676949>,  <34.689472, 32.741730, 44.756905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565308, 32.552547, 44.676949>,  <34.358368, 32.237244, 44.543686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565308, 32.552547, 44.676949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060895, -0.422223, 0.904444,
		0.853604, -0.447628, -0.266439,
		0.517351, 0.788262, 0.333153,
		34.720512, 32.789024, 44.776894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901535, 31.974146, 44.902039>,  <34.358368, 32.237244, 44.543686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901535, 31.974146, 44.902039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.882988, 32.349930, 45.037838>,  <34.871861, 32.575401, 45.119320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.882988, 32.349930, 45.037838>,  <34.901535, 31.974146, 44.902039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882988, 32.349930, 45.037838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180219, -0.326422, 0.927884,
		0.982533, 0.104212, -0.154173,
		-0.046371, 0.939462, 0.339502,
		34.869076, 32.631767, 45.139687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501808, 32.073456, 45.386688>,  <34.901535, 31.974146, 44.902039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501808, 32.073456, 45.386688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203175, 32.314640, 45.499153>,  <35.023994, 32.459351, 45.566631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203175, 32.314640, 45.499153>,  <35.501808, 32.073456, 45.386688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203175, 32.314640, 45.499153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107366, -0.307877, 0.945349,
		0.656574, 0.735967, 0.165117,
		-0.746581, 0.602964, 0.281162,
		34.979198, 32.495529, 45.583500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637253, 32.345787, 46.093803>,  <35.501808, 32.073456, 45.386688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637253, 32.345787, 46.093803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245159, 32.419479, 46.064980>,  <35.009903, 32.463696, 46.047684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245159, 32.419479, 46.064980>,  <35.637253, 32.345787, 46.093803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245159, 32.419479, 46.064980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097312, -0.131928, 0.986471,
		0.172233, 0.973989, 0.147249,
		-0.980238, 0.184232, -0.072059,
		34.951088, 32.474751, 46.043362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393379, 32.755074, 46.699440>,  <35.637253, 32.345787, 46.093803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393379, 32.755074, 46.699440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070930, 32.559277, 46.566433>,  <34.877460, 32.441799, 46.486629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070930, 32.559277, 46.566433>,  <35.393379, 32.755074, 46.699440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070930, 32.559277, 46.566433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242759, -0.238907, 0.940208,
		-0.539664, 0.838644, 0.073760,
		-0.806121, -0.489490, -0.332517,
		34.829094, 32.412430, 46.466679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600376, 33.296406, 47.069260>,  <35.393379, 32.755074, 46.699440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600376, 33.296406, 47.069260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.964905, 33.312897, 47.233109>,  <36.183620, 33.322792, 47.331417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.964905, 33.312897, 47.233109>,  <35.600376, 33.296406, 47.069260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964905, 33.312897, 47.233109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328990, 0.525235, -0.784789,
		-0.247507, 0.849958, 0.465093,
		0.911321, 0.041229, 0.409627,
		36.238300, 33.325264, 47.355995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897617, 34.018368, 46.977318>,  <35.600376, 33.296406, 47.069260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897617, 34.018368, 46.977318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212574, 33.776413, 47.024860>,  <36.401546, 33.631241, 47.053387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212574, 33.776413, 47.024860>,  <35.897617, 34.018368, 46.977318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212574, 33.776413, 47.024860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392668, 0.343505, -0.853122,
		0.475213, 0.718413, 0.507992,
		0.787391, -0.604887, 0.118859,
		36.448792, 33.594948, 47.060516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526096, 34.429592, 46.882915>,  <35.897617, 34.018368, 46.977318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526096, 34.429592, 46.882915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627132, 34.048882, 46.813267>,  <36.687752, 33.820454, 46.771477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627132, 34.048882, 46.813267>,  <36.526096, 34.429592, 46.882915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627132, 34.048882, 46.813267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435418, 0.272514, -0.857990,
		0.864067, 0.140902, 0.483255,
		0.252586, -0.951779, -0.174119,
		36.702908, 33.763348, 46.761032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100140, 34.529800, 46.572853>,  <36.526096, 34.429592, 46.882915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100140, 34.529800, 46.572853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.013386, 34.149857, 46.482761>,  <36.961334, 33.921890, 46.428707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.013386, 34.149857, 46.482761>,  <37.100140, 34.529800, 46.572853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013386, 34.149857, 46.482761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367499, 0.134301, -0.920276,
		0.904381, -0.282363, 0.319946,
		-0.216883, -0.949860, -0.225228,
		36.948322, 33.864899, 46.415192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798145, 34.255314, 46.287136>,  <37.100140, 34.529800, 46.572853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798145, 34.255314, 46.287136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490616, 34.025562, 46.174706>,  <37.306099, 33.887711, 46.107246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490616, 34.025562, 46.174706>,  <37.798145, 34.255314, 46.287136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490616, 34.025562, 46.174706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343264, 0.000161, -0.939239,
		0.539522, -0.818591, 0.197039,
		-0.768821, -0.574377, -0.281079,
		37.259968, 33.853249, 46.090382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078259, 33.758194, 45.830704>,  <37.798145, 34.255314, 46.287136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078259, 33.758194, 45.830704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.687328, 33.772488, 45.747211>,  <37.452770, 33.781063, 45.697117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.687328, 33.772488, 45.747211>,  <38.078259, 33.758194, 45.830704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687328, 33.772488, 45.747211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199302, -0.177945, -0.963646,
		-0.071572, -0.983392, 0.166789,
		-0.977321, 0.035729, -0.208728,
		37.394131, 33.783207, 45.684593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003994, 33.243057, 45.436646>,  <38.078259, 33.758194, 45.830704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003994, 33.243057, 45.436646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703434, 33.492767, 45.351154>,  <37.523098, 33.642593, 45.299858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703434, 33.492767, 45.351154>,  <38.003994, 33.243057, 45.436646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703434, 33.492767, 45.351154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209382, -0.081588, -0.974424,
		-0.625743, -0.776935, -0.069406,
		-0.751402, 0.624272, -0.213729,
		37.478012, 33.680050, 45.287037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784405, 33.083031, 44.779301>,  <38.003994, 33.243057, 45.436646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784405, 33.083031, 44.779301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.612267, 33.444088, 44.781574>,  <37.508984, 33.660725, 44.782936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.612267, 33.444088, 44.781574>,  <37.784405, 33.083031, 44.779301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612267, 33.444088, 44.781574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543113, 0.263951, -0.797094,
		-0.720992, -0.339942, -0.603829,
		-0.430347, 0.902646, 0.005680,
		37.483162, 33.714882, 44.783279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558235, 33.148697, 44.091560>,  <37.784405, 33.083031, 44.779301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558235, 33.148697, 44.091560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598122, 33.513638, 44.250389>,  <37.622051, 33.732601, 44.345684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598122, 33.513638, 44.250389>,  <37.558235, 33.148697, 44.091560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598122, 33.513638, 44.250389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560972, 0.278046, -0.779744,
		-0.821808, 0.300496, -0.484081,
		0.099713, 0.912356, 0.397070,
		37.628036, 33.787346, 44.369511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509567, 33.483398, 43.549416>,  <37.558235, 33.148697, 44.091560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509567, 33.483398, 43.549416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.651188, 33.774925, 43.783840>,  <37.736160, 33.949841, 43.924496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.651188, 33.774925, 43.783840>,  <37.509567, 33.483398, 43.549416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651188, 33.774925, 43.783840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490921, 0.388541, -0.779765,
		-0.796017, 0.563788, -0.220229,
		0.354054, 0.728821, 0.586060,
		37.757404, 33.993572, 43.959660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434116, 34.068687, 43.176487>,  <37.509567, 33.483398, 43.549416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434116, 34.068687, 43.176487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709438, 34.174564, 43.446651>,  <37.874630, 34.238091, 43.608749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709438, 34.174564, 43.446651>,  <37.434116, 34.068687, 43.176487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709438, 34.174564, 43.446651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571734, 0.375128, -0.729657,
		-0.446497, 0.888380, 0.106871,
		0.688303, 0.264688, 0.675410,
		37.915928, 34.253971, 43.649273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664021, 34.832947, 43.043110>,  <37.434116, 34.068687, 43.176487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664021, 34.832947, 43.043110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.937210, 34.653820, 43.273937>,  <38.101124, 34.546345, 43.412434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.937210, 34.653820, 43.273937>,  <37.664021, 34.832947, 43.043110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937210, 34.653820, 43.273937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726191, 0.331109, -0.602507,
		0.078741, 0.830557, 0.551339,
		0.682969, -0.447819, 0.577071,
		38.142101, 34.519474, 43.447060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131870, 35.361477, 43.121582>,  <37.664021, 34.832947, 43.043110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131870, 35.361477, 43.121582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327629, 35.016960, 43.176224>,  <38.445084, 34.810249, 43.209011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327629, 35.016960, 43.176224>,  <38.131870, 35.361477, 43.121582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327629, 35.016960, 43.176224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575689, 0.201422, -0.792472,
		0.655035, 0.466479, 0.594413,
		0.489399, -0.861293, 0.136608,
		38.474449, 34.758572, 43.217205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807713, 35.489811, 43.244129>,  <38.131870, 35.361477, 43.121582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807713, 35.489811, 43.244129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.740940, 35.145611, 43.051598>,  <38.700878, 34.939091, 42.936081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.740940, 35.145611, 43.051598>,  <38.807713, 35.489811, 43.244129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740940, 35.145611, 43.051598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616919, 0.289653, -0.731787,
		0.769120, -0.419094, 0.482508,
		-0.166928, -0.860501, -0.481325,
		38.690861, 34.887459, 42.907200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.969959, 29.967867, 29.793861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.905085, 29.692402, 30.076546>,  <24.866159, 29.527122, 30.246157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.905085, 29.692402, 30.076546>,  <24.969959, 29.967867, 29.793861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905085, 29.692402, 30.076546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225603, 0.671345, 0.705974,
		-0.960625, 0.273934, 0.046482,
		-0.162185, -0.688662, 0.706711,
		24.856430, 29.485804, 30.288559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568995, 30.302887, 30.246262>,  <24.969959, 29.967867, 29.793861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568995, 30.302887, 30.246262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.702984, 29.988951, 30.454805>,  <24.783377, 29.800589, 30.579931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.702984, 29.988951, 30.454805>,  <24.568995, 30.302887, 30.246262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702984, 29.988951, 30.454805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392937, 0.619274, 0.679779,
		-0.856385, -0.022845, 0.515833,
		0.334972, -0.784843, 0.521360,
		24.803476, 29.753498, 30.611214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397888, 30.390121, 30.907890>,  <24.568995, 30.302887, 30.246262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397888, 30.390121, 30.907890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.693750, 30.126162, 30.960716>,  <24.871267, 29.967785, 30.992411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.693750, 30.126162, 30.960716>,  <24.397888, 30.390121, 30.907890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693750, 30.126162, 30.960716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299350, 0.498363, 0.813649,
		-0.602742, -0.562288, 0.566158,
		0.739657, -0.659899, 0.132063,
		24.915648, 29.928192, 31.000336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.375116, 30.266150, 31.605864>,  <24.397888, 30.390121, 30.907890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.375116, 30.266150, 31.605864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.748789, 30.175871, 31.495323>,  <24.972992, 30.121704, 31.428999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.748789, 30.175871, 31.495323>,  <24.375116, 30.266150, 31.605864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748789, 30.175871, 31.495323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351648, 0.451197, 0.820223,
		-0.060434, -0.863413, 0.500865,
		0.934180, -0.225697, -0.276350,
		25.029043, 30.108162, 31.412418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801529, 30.057110, 32.219814>,  <24.375116, 30.266150, 31.605864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801529, 30.057110, 32.219814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.090544, 30.172644, 31.968575>,  <25.263952, 30.241964, 31.817829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.090544, 30.172644, 31.968575>,  <24.801529, 30.057110, 32.219814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090544, 30.172644, 31.968575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543233, 0.324734, 0.774239,
		0.427595, -0.900622, 0.077727,
		0.722538, 0.288837, -0.628102,
		25.307304, 30.259295, 31.780144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527246, 29.912838, 32.562351>,  <24.801529, 30.057110, 32.219814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527246, 29.912838, 32.562351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.583628, 30.198017, 32.287590>,  <25.617456, 30.369125, 32.122734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.583628, 30.198017, 32.287590>,  <25.527246, 29.912838, 32.562351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583628, 30.198017, 32.287590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625090, 0.473951, 0.620188,
		0.767721, -0.516793, -0.378854,
		0.140951, 0.712949, -0.686904,
		25.625914, 30.411901, 32.081520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174475, 30.021725, 32.661255>,  <25.527246, 29.912838, 32.562351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174475, 30.021725, 32.661255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032009, 30.335915, 32.458801>,  <25.946529, 30.524429, 32.337330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032009, 30.335915, 32.458801>,  <26.174475, 30.021725, 32.661255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032009, 30.335915, 32.458801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575461, 0.611131, 0.543473,
		0.736201, -0.097696, -0.669674,
		-0.356163, 0.785477, -0.506136,
		25.925159, 30.571558, 32.306961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786682, 30.403831, 32.457199>,  <26.174475, 30.021725, 32.661255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786682, 30.403831, 32.457199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474773, 30.654190, 32.451496>,  <26.287628, 30.804405, 32.448074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474773, 30.654190, 32.451496>,  <26.786682, 30.403831, 32.457199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474773, 30.654190, 32.451496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599868, 0.753476, 0.269131,
		0.179194, 0.201307, -0.962998,
		-0.779774, 0.625899, -0.014261,
		26.240841, 30.841959, 32.447220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956985, 30.942476, 31.939230>,  <26.786682, 30.403831, 32.457199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956985, 30.942476, 31.939230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694468, 31.064644, 32.215199>,  <26.536957, 31.137945, 32.380779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694468, 31.064644, 32.215199>,  <26.956985, 30.942476, 31.939230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694468, 31.064644, 32.215199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630565, 0.724156, 0.279259,
		-0.414321, 0.618318, -0.667848,
		-0.656297, 0.305418, 0.689923,
		26.497578, 31.156269, 32.422176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062704, 31.683697, 31.946739>,  <26.956985, 30.942476, 31.939230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062704, 31.683697, 31.946739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826084, 31.617273, 32.262333>,  <26.684113, 31.577419, 32.451691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826084, 31.617273, 32.262333>,  <27.062704, 31.683697, 31.946739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826084, 31.617273, 32.262333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404396, 0.785464, 0.468520,
		-0.697520, 0.596214, -0.397486,
		-0.591548, -0.166061, 0.788983,
		26.648619, 31.567455, 32.499027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851168, 32.373161, 32.059452>,  <27.062704, 31.683697, 31.946739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851168, 32.373161, 32.059452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789183, 32.158062, 32.390949>,  <26.751991, 32.029003, 32.589848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789183, 32.158062, 32.390949>,  <26.851168, 32.373161, 32.059452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789183, 32.158062, 32.390949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218791, 0.799364, 0.559595,
		-0.963388, 0.268039, -0.006219,
		-0.154964, -0.537747, 0.828743,
		26.742693, 31.996738, 32.639572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651556, 32.872147, 32.551380>,  <26.851168, 32.373161, 32.059452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651556, 32.872147, 32.551380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.731422, 32.556290, 32.783447>,  <26.779343, 32.366776, 32.922688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.731422, 32.556290, 32.783447>,  <26.651556, 32.872147, 32.551380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731422, 32.556290, 32.783447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310665, 0.612558, 0.726815,
		-0.929312, 0.035118, 0.367622,
		0.199666, -0.789645, 0.580167,
		26.791323, 32.319397, 32.957497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380293, 33.060131, 33.212181>,  <26.651556, 32.872147, 32.551380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380293, 33.060131, 33.212181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658598, 32.789326, 33.308159>,  <26.825581, 32.626842, 33.365746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658598, 32.789326, 33.308159>,  <26.380293, 33.060131, 33.212181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658598, 32.789326, 33.308159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372888, 0.625966, 0.684924,
		-0.613898, -0.387071, 0.687972,
		0.695762, -0.677010, 0.239945,
		26.867327, 32.586224, 33.380142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435274, 32.967587, 33.982407>,  <26.380293, 33.060131, 33.212181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435274, 32.967587, 33.982407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.791811, 32.858875, 33.837273>,  <27.005733, 32.793648, 33.750191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.791811, 32.858875, 33.837273>,  <26.435274, 32.967587, 33.982407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791811, 32.858875, 33.837273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445572, 0.672690, 0.590723,
		0.083533, -0.688205, 0.720691,
		0.891340, -0.271775, -0.362837,
		27.059214, 32.777344, 33.728420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823284, 32.908550, 34.573517>,  <26.435274, 32.967587, 33.982407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823284, 32.908550, 34.573517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.081535, 32.932106, 34.268967>,  <27.236486, 32.946239, 34.086235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.081535, 32.932106, 34.268967>,  <26.823284, 32.908550, 34.573517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081535, 32.932106, 34.268967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543508, 0.664936, 0.512307,
		0.536438, -0.744575, 0.397294,
		0.645626, 0.058889, -0.761380,
		27.275223, 32.949772, 34.040554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252413, 33.075092, 34.972324>,  <26.823284, 32.908550, 34.573517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252413, 33.075092, 34.972324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399868, 33.172905, 34.613590>,  <27.488340, 33.231590, 34.398350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399868, 33.172905, 34.613590>,  <27.252413, 33.075092, 34.972324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399868, 33.172905, 34.613590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552190, 0.718510, 0.422881,
		0.747791, -0.651113, 0.129844,
		0.368637, 0.244528, -0.896835,
		27.510460, 33.246262, 34.344540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927568, 33.099621, 35.114300>,  <27.252413, 33.075092, 34.972324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927568, 33.099621, 35.114300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.897297, 33.315659, 34.779022>,  <27.879133, 33.445282, 34.577854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.897297, 33.315659, 34.779022>,  <27.927568, 33.099621, 35.114300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897297, 33.315659, 34.779022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747723, 0.586869, 0.310637,
		0.659684, -0.603229, -0.448254,
		-0.075681, 0.540092, -0.838196,
		27.874592, 33.477688, 34.527565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611977, 33.298439, 35.004814>,  <27.927568, 33.099621, 35.114300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611977, 33.298439, 35.004814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371964, 33.564377, 34.826851>,  <28.227957, 33.723942, 34.720074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371964, 33.564377, 34.826851>,  <28.611977, 33.298439, 35.004814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371964, 33.564377, 34.826851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616490, 0.738717, 0.272466,
		0.509807, -0.110791, -0.853125,
		-0.600031, 0.664848, -0.444904,
		28.191954, 33.763832, 34.693378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107677, 33.585850, 34.598450>,  <28.611977, 33.298439, 35.004814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107677, 33.585850, 34.598450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804707, 33.836899, 34.670444>,  <28.622925, 33.987526, 34.713642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804707, 33.836899, 34.670444>,  <29.107677, 33.585850, 34.598450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804707, 33.836899, 34.670444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651632, 0.709338, 0.268730,
		0.040986, 0.320831, -0.946249,
		-0.757427, 0.627620, 0.179991,
		28.577478, 34.025185, 34.724442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543600, 33.114918, 34.447723>,  <29.107677, 33.585850, 34.598450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543600, 33.114918, 34.447723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869555, 32.914204, 34.563778>,  <30.065126, 32.793777, 34.633411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869555, 32.914204, 34.563778>,  <29.543600, 33.114918, 34.447723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869555, 32.914204, 34.563778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349082, -0.824456, -0.445437,
		0.462715, 0.261699, -0.847000,
		0.814884, -0.501783, 0.290134,
		30.114019, 32.763668, 34.650818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797119, 32.772411, 33.787769>,  <29.543600, 33.114918, 34.447723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797119, 32.772411, 33.787769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944828, 32.578487, 34.104904>,  <30.033453, 32.462132, 34.295185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944828, 32.578487, 34.104904>,  <29.797119, 32.772411, 33.787769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944828, 32.578487, 34.104904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270117, -0.872299, -0.407592,
		0.889199, -0.063648, -0.453071,
		0.369271, -0.484813, 0.792840,
		30.055609, 32.433044, 34.342754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245613, 32.362778, 33.491386>,  <29.797119, 32.772411, 33.787769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245613, 32.362778, 33.491386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.159239, 32.187855, 33.840588>,  <30.107414, 32.082901, 34.050106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.159239, 32.187855, 33.840588>,  <30.245613, 32.362778, 33.491386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159239, 32.187855, 33.840588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254673, -0.837921, -0.482732,
		0.942610, -0.326568, 0.069565,
		-0.215935, -0.437312, 0.873001,
		30.094458, 32.056660, 34.102489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593603, 31.731895, 33.564857>,  <30.245613, 32.362778, 33.491386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593603, 31.731895, 33.564857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308260, 31.700886, 33.843456>,  <30.137054, 31.682280, 34.010616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308260, 31.700886, 33.843456>,  <30.593603, 31.731895, 33.564857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308260, 31.700886, 33.843456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279164, -0.880170, -0.383886,
		0.642798, -0.468286, 0.606234,
		-0.713357, -0.077522, 0.696500,
		30.094254, 31.677629, 34.052406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704008, 31.101709, 33.915497>,  <30.593603, 31.731895, 33.564857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704008, 31.101709, 33.915497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.325943, 31.211319, 33.986580>,  <30.099104, 31.277084, 34.029228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.325943, 31.211319, 33.986580>,  <30.704008, 31.101709, 33.915497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325943, 31.211319, 33.986580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317313, -0.899282, -0.301006,
		0.077323, -0.340888, 0.936919,
		-0.945163, 0.274022, 0.177704,
		30.042395, 31.293526, 34.039890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425577, 30.445236, 34.233261>,  <30.704008, 31.101709, 33.915497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425577, 30.445236, 34.233261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.125490, 30.670921, 34.095371>,  <29.945438, 30.806334, 34.012638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.125490, 30.670921, 34.095371>,  <30.425577, 30.445236, 34.233261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125490, 30.670921, 34.095371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437245, -0.814445, -0.381439,
		-0.495973, -0.135434, 0.857711,
		-0.750219, 0.564214, -0.344725,
		29.900425, 30.840185, 33.991955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904459, 29.981621, 34.231483>,  <30.425577, 30.445236, 34.233261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904459, 29.981621, 34.231483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762796, 30.287704, 34.016438>,  <29.677799, 30.471354, 33.887409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762796, 30.287704, 34.016438>,  <29.904459, 29.981621, 34.231483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762796, 30.287704, 34.016438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579259, -0.630813, -0.516269,
		-0.734188, 0.128579, 0.666660,
		-0.354156, 0.765207, -0.537616,
		29.656549, 30.517267, 33.855152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237020, 29.760178, 34.215012>,  <29.904459, 29.981621, 34.231483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237020, 29.760178, 34.215012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.273363, 30.040689, 33.932182>,  <29.295168, 30.208996, 33.762486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.273363, 30.040689, 33.932182>,  <29.237020, 29.760178, 34.215012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273363, 30.040689, 33.932182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620695, -0.515354, -0.590887,
		-0.778770, 0.492563, 0.388458,
		0.090856, 0.701279, -0.707073,
		29.300619, 30.251074, 33.720058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576574, 29.938303, 33.986172>,  <29.237020, 29.760178, 34.215012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576574, 29.938303, 33.986172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807007, 30.041389, 33.675892>,  <28.945267, 30.103241, 33.489723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807007, 30.041389, 33.675892>,  <28.576574, 29.938303, 33.986172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807007, 30.041389, 33.675892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653030, -0.425657, -0.626393,
		-0.491614, 0.867409, -0.076917,
		0.576079, 0.257715, -0.775703,
		28.979830, 30.118704, 33.443180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114065, 30.320362, 33.481403>,  <28.576574, 29.938303, 33.986172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114065, 30.320362, 33.481403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424656, 30.171661, 33.277882>,  <28.611012, 30.082441, 33.155769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424656, 30.171661, 33.277882>,  <28.114065, 30.320362, 33.481403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424656, 30.171661, 33.277882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629970, -0.476936, -0.612918,
		-0.014813, 0.796449, -0.604524,
		0.776478, -0.371753, -0.508805,
		28.657598, 30.060135, 33.125240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833673, 30.363447, 32.668106>,  <28.114065, 30.320362, 33.481403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833673, 30.363447, 32.668106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155203, 30.125946, 32.682648>,  <28.348122, 29.983446, 32.691372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155203, 30.125946, 32.682648>,  <27.833673, 30.363447, 32.668106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155203, 30.125946, 32.682648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489534, -0.694978, -0.526652,
		0.337965, 0.405541, -0.849303,
		0.803826, -0.593753, 0.036352,
		28.396351, 29.947821, 32.693554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900343, 30.161381, 32.005806>,  <27.833673, 30.363447, 32.668106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900343, 30.161381, 32.005806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.089836, 29.877975, 32.215027>,  <28.203531, 29.707932, 32.340561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.089836, 29.877975, 32.215027>,  <27.900343, 30.161381, 32.005806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089836, 29.877975, 32.215027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473793, -0.705694, -0.526797,
		0.742360, 0.001740, -0.669999,
		0.473731, -0.708515, 0.523055,
		28.231955, 29.665421, 32.371944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135042, 29.671490, 31.526888>,  <27.900343, 30.161381, 32.005806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135042, 29.671490, 31.526888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129736, 29.483213, 31.879766>,  <28.126553, 29.370247, 32.091496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129736, 29.483213, 31.879766>,  <28.135042, 29.671490, 31.526888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129736, 29.483213, 31.879766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254935, -0.851526, -0.458160,
		0.966867, -0.230981, -0.108700,
		-0.013266, -0.470692, 0.882198,
		28.125757, 29.342007, 32.144424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513960, 29.011265, 31.385973>,  <28.135042, 29.671490, 31.526888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513960, 29.011265, 31.385973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311316, 28.970211, 31.728390>,  <28.189728, 28.945580, 31.933840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311316, 28.970211, 31.728390>,  <28.513960, 29.011265, 31.385973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311316, 28.970211, 31.728390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394791, -0.855066, -0.336157,
		0.766475, -0.508260, 0.392669,
		-0.506613, -0.102634, 0.856043,
		28.159332, 28.939421, 31.985203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498077, 28.283421, 31.574991>,  <28.513960, 29.011265, 31.385973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498077, 28.283421, 31.574991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185436, 28.433813, 31.774082>,  <27.997852, 28.524050, 31.893538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185436, 28.433813, 31.774082>,  <28.498077, 28.283421, 31.574991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185436, 28.433813, 31.774082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548012, -0.795039, -0.259992,
		0.297961, -0.475972, 0.827448,
		-0.781603, 0.375983, 0.497729,
		27.950956, 28.546608, 31.923401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247456, 27.766745, 31.950254>,  <28.498077, 28.283421, 31.574991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247456, 27.766745, 31.950254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934040, 28.013805, 31.923206>,  <27.745991, 28.162043, 31.906979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934040, 28.013805, 31.923206>,  <28.247456, 27.766745, 31.950254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934040, 28.013805, 31.923206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601386, -0.781226, -0.167393,
		-0.156217, -0.090494, 0.983569,
		-0.783537, 0.617654, -0.067619,
		27.698978, 28.199102, 31.902920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593260, 27.431499, 32.239128>,  <28.247456, 27.766745, 31.950254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593260, 27.431499, 32.239128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443533, 27.715401, 32.000420>,  <27.353697, 27.885742, 31.857195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443533, 27.715401, 32.000420>,  <27.593260, 27.431499, 32.239128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443533, 27.715401, 32.000420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627340, -0.667754, -0.400685,
		-0.682881, 0.224390, 0.695214,
		-0.374323, 0.709755, -0.596765,
		27.331238, 27.928328, 31.821388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907804, 27.227669, 32.176117>,  <27.593260, 27.431499, 32.239128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907804, 27.227669, 32.176117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.939253, 27.499533, 31.884396>,  <26.958122, 27.662651, 31.709364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.939253, 27.499533, 31.884396>,  <26.907804, 27.227669, 32.176117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939253, 27.499533, 31.884396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715626, -0.470839, -0.515935,
		-0.694044, 0.562471, 0.449365,
		0.078620, 0.679660, -0.729302,
		26.962839, 27.703430, 31.665606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209349, 27.338717, 31.962572>,  <26.907804, 27.227669, 32.176117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209349, 27.338717, 31.962572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.432035, 27.479132, 31.661417>,  <26.565647, 27.563381, 31.480724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.432035, 27.479132, 31.661417>,  <26.209349, 27.338717, 31.962572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432035, 27.479132, 31.661417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625373, -0.419456, -0.658001,
		-0.546787, 0.837154, -0.013987,
		0.556715, 0.351040, -0.752887,
		26.599051, 27.584444, 31.435551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793081, 27.737843, 31.569582>,  <26.209349, 27.338717, 31.962572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793081, 27.737843, 31.569582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.097420, 27.598402, 31.350643>,  <26.280024, 27.514738, 31.219280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.097420, 27.598402, 31.350643>,  <25.793081, 27.737843, 31.569582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097420, 27.598402, 31.350643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648845, -0.395008, -0.650360,
		0.010511, 0.849968, -0.526730,
		0.760848, -0.348602, -0.547346,
		26.325674, 27.493822, 31.186440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495106, 27.733522, 30.846064>,  <25.793081, 27.737843, 31.569582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495106, 27.733522, 30.846064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.832962, 27.519495, 30.839308>,  <26.035675, 27.391079, 30.835255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.832962, 27.519495, 30.839308>,  <25.495106, 27.733522, 30.846064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832962, 27.519495, 30.839308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469161, -0.724665, -0.504726,
		0.257824, 0.434235, -0.863114,
		0.844638, -0.535071, -0.016890,
		26.086353, 27.358974, 30.834240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495872, 27.416664, 30.131304>,  <25.495106, 27.733522, 30.846064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495872, 27.416664, 30.131304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.724972, 27.195091, 30.373003>,  <25.862431, 27.062147, 30.518023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.724972, 27.195091, 30.373003>,  <25.495872, 27.416664, 30.131304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724972, 27.195091, 30.373003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451839, -0.828376, -0.331110,
		0.683959, -0.083381, -0.724740,
		0.572749, -0.553932, 0.604250,
		25.896797, 27.028912, 30.554277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795223, 26.918873, 29.748095>,  <25.495872, 27.416664, 30.131304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795223, 26.918873, 29.748095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778671, 26.784882, 30.124622>,  <25.768740, 26.704487, 30.350538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778671, 26.784882, 30.124622>,  <25.795223, 26.918873, 29.748095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778671, 26.784882, 30.124622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262370, -0.905419, -0.333735,
		0.964080, -0.260783, -0.050424,
		-0.041377, -0.334977, 0.941317,
		25.766258, 26.684389, 30.407017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.670673, 30.613358, 46.975273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302582, 30.557173, 46.829147>,  <38.081726, 30.523462, 46.741470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302582, 30.557173, 46.829147>,  <38.670673, 30.613358, 46.975273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302582, 30.557173, 46.829147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372049, 0.024162, 0.927899,
		-0.121509, 0.989791, -0.074493,
		-0.920226, -0.140463, -0.365315,
		38.026516, 30.515034, 46.719551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405903, 31.047304, 47.405891>,  <38.670673, 30.613358, 46.975273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405903, 31.047304, 47.405891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112289, 30.827860, 47.245785>,  <37.936119, 30.696194, 47.149719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112289, 30.827860, 47.245785>,  <38.405903, 31.047304, 47.405891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112289, 30.827860, 47.245785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437991, -0.067989, 0.896405,
		-0.518993, 0.833308, -0.190381,
		-0.734037, -0.548613, -0.400267,
		37.892078, 30.663277, 47.125706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810482, 31.358255, 47.596283>,  <38.405903, 31.047304, 47.405891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810482, 31.358255, 47.596283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705666, 30.978075, 47.529377>,  <37.642776, 30.749966, 47.489235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705666, 30.978075, 47.529377>,  <37.810482, 31.358255, 47.596283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705666, 30.978075, 47.529377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393535, -0.053014, 0.917780,
		-0.881173, 0.306315, -0.360145,
		-0.262037, -0.950453, -0.167260,
		37.627056, 30.692940, 47.479198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137062, 31.287605, 47.842308>,  <37.810482, 31.358255, 47.596283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137062, 31.287605, 47.842308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278030, 30.913631, 47.825859>,  <37.362614, 30.689247, 47.815990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278030, 30.913631, 47.825859>,  <37.137062, 31.287605, 47.842308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278030, 30.913631, 47.825859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390922, -0.186994, 0.901228,
		-0.850281, -0.301540, -0.431389,
		0.352424, -0.934937, -0.041119,
		37.383759, 30.633150, 47.813522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624363, 30.842793, 48.167175>,  <37.137062, 31.287605, 47.842308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624363, 30.842793, 48.167175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977222, 30.655703, 48.189240>,  <37.188938, 30.543449, 48.202480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977222, 30.655703, 48.189240>,  <36.624363, 30.842793, 48.167175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977222, 30.655703, 48.189240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201541, -0.269044, 0.941805,
		-0.425663, -0.841932, -0.331604,
		0.882151, -0.467724, 0.055162,
		37.241867, 30.515387, 48.205788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417843, 30.183842, 48.372627>,  <36.624363, 30.842793, 48.167175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417843, 30.183842, 48.372627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801155, 30.206663, 48.484661>,  <37.031143, 30.220356, 48.551880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801155, 30.206663, 48.484661>,  <36.417843, 30.183842, 48.372627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801155, 30.206663, 48.484661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275066, -0.082351, 0.957892,
		0.077717, -0.994969, -0.063222,
		0.958279, 0.057054, 0.280082,
		37.088638, 30.223780, 48.568687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481567, 29.631556, 48.953724>,  <36.417843, 30.183842, 48.372627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481567, 29.631556, 48.953724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788750, 29.882128, 49.007130>,  <36.973061, 30.032471, 49.039173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788750, 29.882128, 49.007130>,  <36.481567, 29.631556, 48.953724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788750, 29.882128, 49.007130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091622, -0.098872, 0.990873,
		0.633917, -0.773179, -0.018534,
		0.767955, 0.626433, 0.133517,
		37.019135, 30.070057, 49.047184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840931, 29.325476, 49.421883>,  <36.481567, 29.631556, 48.953724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840931, 29.325476, 49.421883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979919, 29.700226, 49.437519>,  <37.063313, 29.925076, 49.446899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979919, 29.700226, 49.437519>,  <36.840931, 29.325476, 49.421883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979919, 29.700226, 49.437519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031269, -0.053238, 0.998092,
		0.937170, -0.345583, -0.047793,
		0.347469, 0.936877, 0.039087,
		37.084160, 29.981289, 49.449245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277401, 29.209446, 49.895885>,  <36.840931, 29.325476, 49.421883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277401, 29.209446, 49.895885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187111, 29.599085, 49.890476>,  <37.132938, 29.832869, 49.887230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187111, 29.599085, 49.890476>,  <37.277401, 29.209446, 49.895885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187111, 29.599085, 49.890476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055188, 0.001075, 0.998476,
		0.972627, 0.226128, 0.053516,
		-0.225726, 0.974097, -0.013525,
		37.119392, 29.891314, 49.886417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778809, 29.660215, 50.337093>,  <37.277401, 29.209446, 49.895885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778809, 29.660215, 50.337093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433613, 29.858803, 50.299618>,  <37.226498, 29.977955, 50.277130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433613, 29.858803, 50.299618>,  <37.778809, 29.660215, 50.337093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433613, 29.858803, 50.299618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017463, 0.214644, 0.976536,
		0.504928, 0.841100, -0.193904,
		-0.862985, 0.496467, -0.093692,
		37.174717, 30.007742, 50.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757427, 30.080948, 50.941662>,  <37.778809, 29.660215, 50.337093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757427, 30.080948, 50.941662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369278, 30.118547, 50.852631>,  <37.136387, 30.141108, 50.799213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369278, 30.118547, 50.852631>,  <37.757427, 30.080948, 50.941662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369278, 30.118547, 50.852631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216539, 0.070315, 0.973738,
		0.107179, 0.993086, -0.047878,
		-0.970373, 0.093997, -0.222578,
		37.078167, 30.146746, 50.785858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467888, 30.719980, 51.307606>,  <37.757427, 30.080948, 50.941662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467888, 30.719980, 51.307606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150555, 30.488022, 51.233482>,  <36.960155, 30.348846, 51.189011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150555, 30.488022, 51.233482>,  <37.467888, 30.719980, 51.307606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150555, 30.488022, 51.233482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384330, 0.241013, 0.891181,
		-0.472131, 0.778225, -0.414075,
		-0.793337, -0.579895, -0.185306,
		36.912552, 30.314053, 51.177891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942753, 31.117302, 51.564266>,  <37.467888, 30.719980, 51.307606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942753, 31.117302, 51.564266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.860596, 30.727968, 51.605133>,  <36.811302, 30.494368, 51.629654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.860596, 30.727968, 51.605133>,  <36.942753, 31.117302, 51.564266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860596, 30.727968, 51.605133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156295, 0.135675, 0.978348,
		-0.966119, 0.184978, -0.179994,
		-0.205393, -0.973332, 0.102167,
		36.798977, 30.435968, 51.635784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248688, 31.081991, 51.913929>,  <36.942753, 31.117302, 51.564266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248688, 31.081991, 51.913929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475517, 30.758539, 51.976597>,  <36.611614, 30.564468, 52.014198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475517, 30.758539, 51.976597>,  <36.248688, 31.081991, 51.913929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475517, 30.758539, 51.976597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071429, 0.141219, 0.987398,
		-0.820565, -0.571118, 0.022322,
		0.567073, -0.808629, 0.156673,
		36.645638, 30.515951, 52.023598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794106, 31.305635, 52.544075>,  <36.248688, 31.081991, 51.913929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794106, 31.305635, 52.544075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.507568, 31.581236, 52.588131>,  <35.335648, 31.746597, 52.614563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.507568, 31.581236, 52.588131>,  <35.794106, 31.305635, 52.544075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507568, 31.581236, 52.588131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028154, 0.186261, -0.982097,
		-0.697181, -0.700416, -0.152825,
		-0.716342, 0.689002, 0.110138,
		35.292667, 31.787937, 52.621174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181034, 31.142988, 52.114983>,  <35.794106, 31.305635, 52.544075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181034, 31.142988, 52.114983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.222614, 31.539059, 52.152386>,  <35.247562, 31.776701, 52.174828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.222614, 31.539059, 52.152386>,  <35.181034, 31.142988, 52.114983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222614, 31.539059, 52.152386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055490, 0.099647, -0.993474,
		-0.993033, 0.098088, 0.065303,
		0.103955, 0.990176, 0.093510,
		35.253799, 31.836111, 52.180439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976700, 31.256889, 51.483692>,  <35.181034, 31.142988, 52.114983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976700, 31.256889, 51.483692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095657, 31.611250, 51.626095>,  <35.167030, 31.823866, 51.711536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095657, 31.611250, 51.626095>,  <34.976700, 31.256889, 51.483692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095657, 31.611250, 51.626095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063415, 0.390378, -0.918468,
		-0.952647, 0.250569, 0.172275,
		0.297392, 0.885900, 0.356003,
		35.184875, 31.877020, 51.732895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517780, 31.795938, 51.249664>,  <34.976700, 31.256889, 51.483692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517780, 31.795938, 51.249664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853584, 31.989721, 51.348068>,  <35.055069, 32.105991, 51.407112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853584, 31.989721, 51.348068>,  <34.517780, 31.795938, 51.249664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853584, 31.989721, 51.348068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066555, 0.357673, -0.931472,
		-0.539249, 0.798356, 0.268028,
		0.839512, 0.484457, 0.246010,
		35.105438, 32.135059, 51.421871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414715, 32.379242, 50.877216>,  <34.517780, 31.795938, 51.249664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414715, 32.379242, 50.877216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806858, 32.370090, 50.955578>,  <35.042145, 32.364601, 51.002594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806858, 32.370090, 50.955578>,  <34.414715, 32.379242, 50.877216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806858, 32.370090, 50.955578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191197, 0.354052, -0.915473,
		-0.048416, 0.934946, 0.351471,
		0.980357, -0.022876, 0.195901,
		35.100964, 32.363228, 51.014347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723995, 33.021832, 50.589115>,  <34.414715, 32.379242, 50.877216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723995, 33.021832, 50.589115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015930, 32.754208, 50.645264>,  <35.191090, 32.593636, 50.678955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015930, 32.754208, 50.645264>,  <34.723995, 33.021832, 50.589115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015930, 32.754208, 50.645264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367188, 0.210451, -0.906026,
		0.576641, 0.712793, 0.399264,
		0.729835, -0.669056, 0.140374,
		35.234882, 32.553490, 50.687374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346188, 33.406017, 50.617825>,  <34.723995, 33.021832, 50.589115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346188, 33.406017, 50.617825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422268, 33.025539, 50.520622>,  <35.467915, 32.797253, 50.462303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422268, 33.025539, 50.520622>,  <35.346188, 33.406017, 50.617825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422268, 33.025539, 50.520622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420011, 0.302565, -0.855596,
		0.887363, 0.060672, 0.457061,
		0.190202, -0.951196, -0.243002,
		35.479328, 32.740181, 50.447723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904831, 33.526001, 50.283310>,  <35.346188, 33.406017, 50.617825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904831, 33.526001, 50.283310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808464, 33.147900, 50.195263>,  <35.750645, 32.921040, 50.142437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808464, 33.147900, 50.195263>,  <35.904831, 33.526001, 50.283310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808464, 33.147900, 50.195263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445811, 0.093673, -0.890212,
		0.862098, -0.312595, 0.398838,
		-0.240916, -0.945256, -0.220114,
		35.736191, 32.864323, 50.129230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541786, 33.188213, 50.098606>,  <35.904831, 33.526001, 50.283310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541786, 33.188213, 50.098606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279850, 32.938988, 49.927502>,  <36.122688, 32.789452, 49.824841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279850, 32.938988, 49.927502>,  <36.541786, 33.188213, 50.098606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279850, 32.938988, 49.927502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499236, 0.068319, -0.863769,
		0.567407, -0.779182, 0.266318,
		-0.654838, -0.623064, -0.427760,
		36.083397, 32.752068, 49.799175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870121, 32.750706, 49.657696>,  <36.541786, 33.188213, 50.098606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870121, 32.750706, 49.657696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495152, 32.705956, 49.525803>,  <36.270168, 32.679104, 49.446667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495152, 32.705956, 49.525803>,  <36.870121, 32.750706, 49.657696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495152, 32.705956, 49.525803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339776, -0.086972, -0.936477,
		0.076092, -0.989909, 0.119542,
		-0.937424, -0.111876, -0.329730,
		36.213924, 32.672394, 49.426884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868053, 32.277027, 49.093998>,  <36.870121, 32.750706, 49.657696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868053, 32.277027, 49.093998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.549862, 32.518253, 49.070271>,  <36.358948, 32.662991, 49.056034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.549862, 32.518253, 49.070271>,  <36.868053, 32.277027, 49.093998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549862, 32.518253, 49.070271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184072, 0.147216, -0.971826,
		-0.577343, -0.783988, -0.228115,
		-0.795482, 0.603067, -0.059316,
		36.311218, 32.699173, 49.052475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523926, 31.995829, 48.498707>,  <36.868053, 32.277027, 49.093998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523926, 31.995829, 48.498707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395046, 32.368244, 48.567242>,  <36.317719, 32.591694, 48.608364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395046, 32.368244, 48.567242>,  <36.523926, 31.995829, 48.498707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395046, 32.368244, 48.567242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069868, 0.203885, -0.976498,
		-0.944090, -0.302655, -0.130742,
		-0.322198, 0.931037, 0.171340,
		36.298386, 32.647556, 48.618645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125488, 32.147224, 47.873161>,  <36.523926, 31.995829, 48.498707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125488, 32.147224, 47.873161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164684, 32.520855, 48.010509>,  <36.188202, 32.745033, 48.092918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164684, 32.520855, 48.010509>,  <36.125488, 32.147224, 47.873161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164684, 32.520855, 48.010509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113418, 0.353264, -0.928623,
		-0.988703, 0.052052, 0.140558,
		0.097991, 0.934075, 0.343369,
		36.194080, 32.801079, 48.113522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635136, 32.624809, 47.425812>,  <36.125488, 32.147224, 47.873161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635136, 32.624809, 47.425812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919567, 32.859955, 47.580101>,  <36.090225, 33.001041, 47.672676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919567, 32.859955, 47.580101>,  <35.635136, 32.624809, 47.425812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919567, 32.859955, 47.580101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114166, 0.444785, -0.888331,
		-0.693783, 0.675709, 0.249163,
		0.711078, 0.587863, 0.385728,
		36.132889, 33.036312, 47.695820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944458, 32.831871, 47.247910>,  <35.635136, 32.624809, 47.425812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944458, 32.831871, 47.247910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783146, 32.540836, 47.025925>,  <34.686359, 32.366215, 46.892735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783146, 32.540836, 47.025925>,  <34.944458, 32.831871, 47.247910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783146, 32.540836, 47.025925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311272, -0.461226, 0.830891,
		-0.860510, 0.507823, -0.040477,
		-0.403277, -0.727589, -0.554961,
		34.662163, 32.322559, 46.859436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283558, 32.863586, 47.393585>,  <34.944458, 32.831871, 47.247910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283558, 32.863586, 47.393585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347046, 32.491879, 47.260159>,  <34.385139, 32.268852, 47.180103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347046, 32.491879, 47.260159>,  <34.283558, 32.863586, 47.393585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347046, 32.491879, 47.260159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483296, -0.367730, 0.794481,
		-0.860948, 0.035108, -0.507479,
		0.158723, -0.929270, -0.333564,
		34.394665, 32.213097, 47.160088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726749, 32.519379, 47.481956>,  <34.283558, 32.863586, 47.393585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726749, 32.519379, 47.481956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950363, 32.193249, 47.421665>,  <34.084534, 31.997570, 47.385490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950363, 32.193249, 47.421665>,  <33.726749, 32.519379, 47.481956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950363, 32.193249, 47.421665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393592, -0.420957, 0.817240,
		-0.729768, -0.397542, -0.556237,
		0.559039, -0.815326, -0.150731,
		34.118076, 31.948650, 47.376446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255589, 31.937187, 47.592590>,  <33.726749, 32.519379, 47.481956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255589, 31.937187, 47.592590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619331, 31.772522, 47.616615>,  <33.837578, 31.673723, 47.631031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619331, 31.772522, 47.616615>,  <33.255589, 31.937187, 47.592590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619331, 31.772522, 47.616615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268651, -0.470840, 0.840319,
		-0.317649, -0.780284, -0.538754,
		0.909355, -0.411663, 0.060062,
		33.892139, 31.649023, 47.634632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169144, 31.186209, 47.624073>,  <33.255589, 31.937187, 47.592590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169144, 31.186209, 47.624073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529675, 31.234037, 47.790596>,  <33.745991, 31.262735, 47.890511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529675, 31.234037, 47.790596>,  <33.169144, 31.186209, 47.624073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529675, 31.234037, 47.790596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320586, -0.462165, 0.826818,
		0.291271, -0.878695, -0.378227,
		0.901325, 0.119574, 0.416312,
		33.800072, 31.269909, 47.915489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234440, 30.541681, 47.992405>,  <33.169144, 31.186209, 47.624073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234440, 30.541681, 47.992405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488960, 30.799343, 48.162197>,  <33.641674, 30.953939, 48.264072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488960, 30.799343, 48.162197>,  <33.234440, 30.541681, 47.992405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488960, 30.799343, 48.162197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182494, -0.408936, 0.894129,
		0.749542, -0.646403, -0.142653,
		0.636304, 0.644155, 0.424479,
		33.679852, 30.992590, 48.289539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712997, 30.114664, 48.417408>,  <33.234440, 30.541681, 47.992405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712997, 30.114664, 48.417408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696407, 30.487814, 48.560532>,  <33.686455, 30.711704, 48.646404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696407, 30.487814, 48.560532>,  <33.712997, 30.114664, 48.417408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696407, 30.487814, 48.560532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321055, -0.351569, 0.879388,
		0.946152, -0.078406, 0.314085,
		-0.041473, 0.932873, 0.357810,
		33.683964, 30.767675, 48.667873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196896, 29.596676, 48.667835>,  <33.712997, 30.114664, 48.417408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196896, 29.596676, 48.667835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052094, 29.276892, 48.476082>,  <33.965214, 29.085020, 48.361031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052094, 29.276892, 48.476082>,  <34.196896, 29.596676, 48.667835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052094, 29.276892, 48.476082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437424, 0.308445, -0.844702,
		0.823172, -0.515483, 0.238045,
		-0.362006, -0.799461, -0.479388,
		33.943493, 29.037054, 48.332264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676121, 29.302773, 48.162354>,  <34.196896, 29.596676, 48.667835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676121, 29.302773, 48.162354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332977, 29.143730, 48.032127>,  <34.127090, 29.048306, 47.953991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332977, 29.143730, 48.032127>,  <34.676121, 29.302773, 48.162354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332977, 29.143730, 48.032127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234645, 0.260558, -0.936510,
		0.457191, -0.879783, -0.130225,
		-0.857857, -0.397607, -0.325561,
		34.075619, 29.024448, 47.934460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805317, 28.856375, 47.533012>,  <34.676121, 29.302773, 48.162354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805317, 28.856375, 47.533012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423962, 28.974478, 47.508091>,  <34.195148, 29.045340, 47.493137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423962, 28.974478, 47.508091>,  <34.805317, 28.856375, 47.533012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423962, 28.974478, 47.508091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146544, 0.272524, -0.950923,
		-0.263788, -0.915725, -0.303089,
		-0.953384, 0.295258, -0.062306,
		34.137947, 29.063055, 47.489399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546547, 28.501335, 46.872189>,  <34.805317, 28.856375, 47.533012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546547, 28.501335, 46.872189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283928, 28.794773, 46.942368>,  <34.126354, 28.970837, 46.984474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283928, 28.794773, 46.942368>,  <34.546547, 28.501335, 46.872189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283928, 28.794773, 46.942368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086488, 0.304284, -0.948647,
		-0.749308, -0.607660, -0.263224,
		-0.656549, 0.733595, 0.175447,
		34.086964, 29.014851, 46.995003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182732, 28.457808, 46.329273>,  <34.546547, 28.501335, 46.872189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182732, 28.457808, 46.329273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145641, 28.832893, 46.463196>,  <34.123386, 29.057945, 46.543549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145641, 28.832893, 46.463196>,  <34.182732, 28.457808, 46.329273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145641, 28.832893, 46.463196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092155, 0.342896, -0.934842,
		-0.991418, -0.055827, -0.118209,
		-0.092723, 0.937713, 0.334809,
		34.117825, 29.114208, 46.563637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764225, 28.762543, 45.788017>,  <34.182732, 28.457808, 46.329273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764225, 28.762543, 45.788017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890549, 29.086411, 45.985886>,  <33.966343, 29.280731, 46.104607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890549, 29.086411, 45.985886>,  <33.764225, 28.762543, 45.788017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890549, 29.086411, 45.985886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218931, 0.445101, -0.868305,
		-0.923220, 0.382516, -0.036695,
		0.315808, 0.809670, 0.494671,
		33.985291, 29.329311, 46.134285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448387, 29.364328, 45.468922>,  <33.764225, 28.762543, 45.788017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448387, 29.364328, 45.468922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777157, 29.496616, 45.654423>,  <33.974419, 29.575989, 45.765724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777157, 29.496616, 45.654423>,  <33.448387, 29.364328, 45.468922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777157, 29.496616, 45.654423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293600, 0.451697, -0.842478,
		-0.488101, 0.828609, 0.274161,
		0.821922, 0.330721, 0.463753,
		34.023735, 29.595833, 45.793549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.158554, 27.611401, 49.530983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.286396, 27.985321, 49.592953>,  <35.363102, 28.209673, 49.630135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.286396, 27.985321, 49.592953>,  <35.158554, 27.611401, 49.530983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286396, 27.985321, 49.592953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652658, -0.098650, -0.751203,
		-0.686941, 0.341200, -0.641634,
		0.319608, 0.934800, 0.154920,
		35.382278, 28.265760, 49.639427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156094, 27.914103, 48.890171>,  <35.158554, 27.611401, 49.530983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156094, 27.914103, 48.890171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398952, 28.151274, 49.101761>,  <35.544666, 28.293577, 49.228714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398952, 28.151274, 49.101761>,  <35.156094, 27.914103, 48.890171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398952, 28.151274, 49.101761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588569, 0.111654, -0.800699,
		-0.533820, 0.797476, -0.281190,
		0.607143, 0.592929, 0.528973,
		35.581097, 28.329153, 49.260452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260624, 28.474716, 48.528961>,  <35.156094, 27.914103, 48.890171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260624, 28.474716, 48.528961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.576588, 28.482630, 48.774124>,  <35.766167, 28.487379, 48.921223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.576588, 28.482630, 48.774124>,  <35.260624, 28.474716, 48.528961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576588, 28.482630, 48.774124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603095, 0.155883, -0.782290,
		-0.111020, 0.987577, 0.111201,
		0.789906, 0.019785, 0.612909,
		35.813560, 28.488565, 48.957996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629517, 29.046850, 48.408585>,  <35.260624, 28.474716, 48.528961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629517, 29.046850, 48.408585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868538, 28.765364, 48.562317>,  <36.011951, 28.596472, 48.654556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868538, 28.765364, 48.562317>,  <35.629517, 29.046850, 48.408585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868538, 28.765364, 48.562317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601306, 0.076194, -0.795378,
		0.530438, 0.706382, 0.468679,
		0.597551, -0.703718, 0.384335,
		36.047802, 28.554249, 48.677616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161125, 29.044138, 47.935211>,  <35.629517, 29.046850, 48.408585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161125, 29.044138, 47.935211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.273956, 28.740807, 48.170284>,  <36.341656, 28.558807, 48.311329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.273956, 28.740807, 48.170284>,  <36.161125, 29.044138, 47.935211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273956, 28.740807, 48.170284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656687, -0.293961, -0.694514,
		0.699426, 0.581827, 0.415067,
		0.282073, -0.758330, 0.587682,
		36.358578, 28.513308, 48.346588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976101, 28.978910, 48.001335>,  <36.161125, 29.044138, 47.935211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976101, 28.978910, 48.001335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.824371, 28.619551, 48.089878>,  <36.733334, 28.403934, 48.143002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.824371, 28.619551, 48.089878>,  <36.976101, 28.978910, 48.001335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824371, 28.619551, 48.089878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620215, -0.424411, -0.659703,
		0.686621, -0.112951, 0.718188,
		-0.379321, -0.898397, 0.221355,
		36.710575, 28.350031, 48.156284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536606, 28.525513, 48.076881>,  <36.976101, 28.978910, 48.001335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536606, 28.525513, 48.076881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.218124, 28.296129, 47.999729>,  <37.027035, 28.158499, 47.953438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.218124, 28.296129, 47.999729>,  <37.536606, 28.525513, 48.076881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218124, 28.296129, 47.999729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503749, -0.451762, -0.736307,
		0.335103, -0.683417, 0.648574,
		-0.796205, -0.573457, -0.192884,
		36.979263, 28.124092, 47.941864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811947, 27.829865, 47.989452>,  <37.536606, 28.525513, 48.076881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811947, 27.829865, 47.989452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456734, 27.842463, 47.805973>,  <37.243607, 27.850021, 47.695885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456734, 27.842463, 47.805973>,  <37.811947, 27.829865, 47.989452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456734, 27.842463, 47.805973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420581, -0.347433, -0.838094,
		-0.185760, -0.937176, 0.295288,
		-0.888034, 0.031492, -0.458697,
		37.190323, 27.851910, 47.668365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804901, 27.181240, 47.660633>,  <37.811947, 27.829865, 47.989452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804901, 27.181240, 47.660633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.535164, 27.415695, 47.480984>,  <37.373322, 27.556368, 47.373196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.535164, 27.415695, 47.480984>,  <37.804901, 27.181240, 47.660633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535164, 27.415695, 47.480984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338764, -0.294870, -0.893471,
		-0.656128, -0.754649, 0.000281,
		-0.674340, 0.586136, -0.449120,
		37.332863, 27.591536, 47.346249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518444, 26.795681, 46.992828>,  <37.804901, 27.181240, 47.660633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518444, 26.795681, 46.992828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423046, 27.180805, 46.942043>,  <37.365807, 27.411880, 46.911572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423046, 27.180805, 46.942043>,  <37.518444, 26.795681, 46.992828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423046, 27.180805, 46.942043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356889, -0.034693, -0.933502,
		-0.903190, -0.267944, -0.335342,
		-0.238492, 0.962810, -0.126961,
		37.351498, 27.469648, 46.903954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185520, 26.714764, 46.442539>,  <37.518444, 26.795681, 46.992828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185520, 26.714764, 46.442539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.258312, 27.107836, 46.456493>,  <37.301987, 27.343679, 46.464867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.258312, 27.107836, 46.456493>,  <37.185520, 26.714764, 46.442539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258312, 27.107836, 46.456493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109097, 0.015084, -0.993917,
		-0.977231, 0.184682, -0.104463,
		0.181983, 0.982682, 0.034888,
		37.312908, 27.402641, 46.466961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655880, 27.141199, 45.989262>,  <37.185520, 26.714764, 46.442539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655880, 27.141199, 45.989262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.993511, 27.354284, 46.013760>,  <37.196091, 27.482136, 46.028458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.993511, 27.354284, 46.013760>,  <36.655880, 27.141199, 45.989262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993511, 27.354284, 46.013760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094662, -0.035617, -0.994872,
		-0.527801, 0.845545, -0.080491,
		0.844076, 0.532714, 0.061242,
		37.246735, 27.514099, 46.032131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962601, 27.187643, 45.657116>,  <36.655880, 27.141199, 45.989262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962601, 27.187643, 45.657116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.699306, 26.957336, 45.463120>,  <35.541328, 26.819153, 45.346722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.699306, 26.957336, 45.463120>,  <35.962601, 27.187643, 45.657116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699306, 26.957336, 45.463120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313496, -0.376075, 0.871945,
		-0.684431, 0.725988, 0.067045,
		-0.658235, -0.575768, -0.484992,
		35.501835, 26.784605, 45.317623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279346, 27.177645, 45.947601>,  <35.962601, 27.187643, 45.657116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279346, 27.177645, 45.947601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291485, 26.821501, 45.765903>,  <35.298767, 26.607815, 45.656887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291485, 26.821501, 45.765903>,  <35.279346, 27.177645, 45.947601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291485, 26.821501, 45.765903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598689, -0.380102, 0.705048,
		-0.800406, 0.250559, -0.544582,
		0.030341, -0.890361, -0.454243,
		35.300587, 26.554392, 45.629631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618973, 26.902494, 46.117599>,  <35.279346, 27.177645, 45.947601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618973, 26.902494, 46.117599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.847752, 26.590084, 46.017296>,  <34.985020, 26.402637, 45.957115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.847752, 26.590084, 46.017296>,  <34.618973, 26.902494, 46.117599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847752, 26.590084, 46.017296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528697, -0.584715, 0.615295,
		-0.627185, -0.219337, -0.747349,
		0.571943, -0.781025, -0.250761,
		35.019337, 26.355778, 45.942070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131023, 26.376535, 45.840843>,  <34.618973, 26.902494, 46.117599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131023, 26.376535, 45.840843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.460892, 26.204718, 45.988037>,  <34.658813, 26.101627, 46.076355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.460892, 26.204718, 45.988037>,  <34.131023, 26.376535, 45.840843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460892, 26.204718, 45.988037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558028, -0.511650, 0.653314,
		-0.092347, -0.744114, -0.661639,
		0.824667, -0.429545, 0.367987,
		34.708290, 26.075853, 46.098434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918541, 25.819695, 46.044147>,  <34.131023, 26.376535, 45.840843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918541, 25.819695, 46.044147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.274349, 25.806385, 46.226421>,  <34.487835, 25.798399, 46.335785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.274349, 25.806385, 46.226421>,  <33.918541, 25.819695, 46.044147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274349, 25.806385, 46.226421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380159, -0.607130, 0.697762,
		0.253441, -0.793905, -0.552705,
		0.889521, -0.033274, 0.455682,
		34.541206, 25.796402, 46.363125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042824, 25.106298, 46.334087>,  <33.918541, 25.819695, 46.044147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042824, 25.106298, 46.334087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.304741, 25.315300, 46.552532>,  <34.461891, 25.440701, 46.683601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.304741, 25.315300, 46.552532>,  <34.042824, 25.106298, 46.334087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304741, 25.315300, 46.552532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244523, -0.537247, 0.807201,
		0.715163, -0.662085, -0.224020,
		0.654790, 0.522503, 0.546115,
		34.501179, 25.472052, 46.716366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345230, 24.562622, 46.835495>,  <34.042824, 25.106298, 46.334087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345230, 24.562622, 46.835495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.410286, 24.918154, 47.006855>,  <34.449318, 25.131474, 47.109673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.410286, 24.918154, 47.006855>,  <34.345230, 24.562622, 46.835495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410286, 24.918154, 47.006855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211769, -0.392623, 0.894986,
		0.963692, -0.236281, 0.124372,
		0.162638, 0.888830, 0.428405,
		34.459076, 25.184803, 47.135376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742439, 24.485628, 47.486275>,  <34.345230, 24.562622, 46.835495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742439, 24.485628, 47.486275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.586525, 24.852331, 47.521187>,  <34.492977, 25.072353, 47.542133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.586525, 24.852331, 47.521187>,  <34.742439, 24.485628, 47.486275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586525, 24.852331, 47.521187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270150, -0.204438, 0.940864,
		0.880389, 0.343159, 0.327350,
		-0.389789, 0.916759, 0.087281,
		34.469589, 25.127359, 47.547371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990887, 24.781641, 48.127430>,  <34.742439, 24.485628, 47.486275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990887, 24.781641, 48.127430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.649235, 24.979912, 48.064480>,  <34.444244, 25.098875, 48.026711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.649235, 24.979912, 48.064480>,  <34.990887, 24.781641, 48.127430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649235, 24.979912, 48.064480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225812, -0.080875, 0.970808,
		0.468479, 0.864734, 0.181008,
		-0.854129, 0.495676, -0.157379,
		34.392998, 25.128614, 48.017265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030560, 25.272341, 48.620911>,  <34.990887, 24.781641, 48.127430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030560, 25.272341, 48.620911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643669, 25.268473, 48.519421>,  <34.411533, 25.266151, 48.458527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643669, 25.268473, 48.519421>,  <35.030560, 25.272341, 48.620911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643669, 25.268473, 48.519421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253360, -0.029187, 0.966932,
		-0.016755, 0.999527, 0.025780,
		-0.967227, -0.009669, -0.253729,
		34.353500, 25.265572, 48.443302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753380, 25.614365, 49.132706>,  <35.030560, 25.272341, 48.620911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753380, 25.614365, 49.132706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436272, 25.435486, 48.967037>,  <34.246006, 25.328159, 48.867638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436272, 25.435486, 48.967037>,  <34.753380, 25.614365, 49.132706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436272, 25.435486, 48.967037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446822, -0.035783, 0.893907,
		-0.414573, 0.893720, -0.171450,
		-0.792767, -0.447197, -0.414169,
		34.198441, 25.301327, 48.842785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223404, 26.070332, 49.305637>,  <34.753380, 25.614365, 49.132706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223404, 26.070332, 49.305637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.040924, 25.727163, 49.211102>,  <33.931435, 25.521263, 49.154381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.040924, 25.727163, 49.211102>,  <34.223404, 26.070332, 49.305637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040924, 25.727163, 49.211102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489015, 0.019797, 0.872051,
		-0.743470, 0.513404, -0.428566,
		-0.456199, -0.857919, -0.236343,
		33.904064, 25.469788, 49.140198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441998, 26.171135, 49.409527>,  <34.223404, 26.070332, 49.305637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441998, 26.171135, 49.409527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.519173, 25.778696, 49.415524>,  <33.565479, 25.543234, 49.419121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.519173, 25.778696, 49.415524>,  <33.441998, 26.171135, 49.409527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519173, 25.778696, 49.415524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592426, -0.104302, 0.798845,
		-0.782180, -0.163009, -0.601351,
		0.192941, -0.981096, 0.014988,
		33.577057, 25.484367, 49.420021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804684, 25.876102, 49.527988>,  <33.441998, 26.171135, 49.409527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804684, 25.876102, 49.527988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.083443, 25.616449, 49.649944>,  <33.250698, 25.460657, 49.723118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.083443, 25.616449, 49.649944>,  <32.804684, 25.876102, 49.527988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083443, 25.616449, 49.649944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491879, -0.123258, 0.861894,
		-0.521905, -0.750622, -0.405194,
		0.696900, -0.649133, 0.304887,
		33.292515, 25.421709, 49.741409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775547, 26.612421, 49.789185>,  <32.804684, 25.876102, 49.527988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775547, 26.612421, 49.789185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.537930, 26.923700, 49.870686>,  <32.395359, 27.110468, 49.919586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.537930, 26.923700, 49.870686>,  <32.775547, 26.612421, 49.789185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537930, 26.923700, 49.870686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415169, 0.513543, -0.750938,
		-0.689016, -0.361499, -0.628152,
		-0.594047, 0.778198, 0.203756,
		32.359715, 27.157160, 49.931812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614521, 26.820978, 49.074944>,  <32.775547, 26.612421, 49.789185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614521, 26.820978, 49.074944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.555012, 27.123129, 49.330215>,  <32.519306, 27.304420, 49.483379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.555012, 27.123129, 49.330215>,  <32.614521, 26.820978, 49.074944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555012, 27.123129, 49.330215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603038, 0.580774, -0.546852,
		-0.783716, 0.303487, -0.541926,
		-0.148774, 0.755379, 0.638177,
		32.510380, 27.349743, 49.521667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529385, 27.344313, 48.703545>,  <32.614521, 26.820978, 49.074944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529385, 27.344313, 48.703545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.626858, 27.538349, 49.039474>,  <32.685341, 27.654772, 49.241032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.626858, 27.538349, 49.039474>,  <32.529385, 27.344313, 48.703545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626858, 27.538349, 49.039474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575071, 0.625012, -0.527876,
		-0.780969, 0.611593, -0.126658,
		0.243682, 0.485092, 0.839824,
		32.699963, 27.683876, 49.291420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484131, 27.967665, 48.414673>,  <32.529385, 27.344313, 48.703545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484131, 27.967665, 48.414673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.708885, 27.959578, 48.745461>,  <32.843739, 27.954725, 48.943932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.708885, 27.959578, 48.745461>,  <32.484131, 27.967665, 48.414673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708885, 27.959578, 48.745461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621075, 0.670641, -0.405594,
		-0.546397, 0.741507, 0.389382,
		0.561886, -0.020220, 0.826968,
		32.877449, 27.953512, 48.993549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483337, 28.583042, 48.658119>,  <32.484131, 27.967665, 48.414673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483337, 28.583042, 48.658119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.821777, 28.431482, 48.808079>,  <33.024841, 28.340548, 48.898052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.821777, 28.431482, 48.808079>,  <32.483337, 28.583042, 48.658119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821777, 28.431482, 48.808079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510739, 0.777541, -0.366847,
		-0.152498, 0.501863, 0.851397,
		0.846103, -0.378898, 0.374894,
		33.075607, 28.317812, 48.920547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864574, 29.158211, 48.795647>,  <32.483337, 28.583042, 48.658119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864574, 29.158211, 48.795647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146961, 28.875536, 48.814419>,  <33.316395, 28.705931, 48.825684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146961, 28.875536, 48.814419>,  <32.864574, 29.158211, 48.795647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146961, 28.875536, 48.814419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606207, 0.568663, -0.556000,
		0.366232, 0.420967, 0.829856,
		0.705966, -0.706689, 0.046930,
		33.358749, 28.663528, 48.828499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467102, 29.550728, 48.772640>,  <32.864574, 29.158211, 48.795647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467102, 29.550728, 48.772640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.557415, 29.170750, 48.686275>,  <33.611603, 28.942762, 48.634457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.557415, 29.170750, 48.686275>,  <33.467102, 29.550728, 48.772640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557415, 29.170750, 48.686275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651834, 0.312033, -0.691193,
		0.723971, 0.015320, 0.689661,
		0.225786, -0.949948, -0.215916,
		33.625153, 28.885765, 48.621502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951714, 30.073017, 49.130947>,  <33.467102, 29.550728, 48.772640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951714, 30.073017, 49.130947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804779, 30.445024, 49.135555>,  <33.716618, 30.668228, 49.138321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804779, 30.445024, 49.135555>,  <33.951714, 30.073017, 49.130947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804779, 30.445024, 49.135555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435773, -0.183034, 0.881250,
		0.821685, 0.318695, 0.472511,
		-0.367336, 0.930017, 0.011518,
		33.694580, 30.724030, 49.139011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247765, 30.488739, 49.786465>,  <33.951714, 30.073017, 49.130947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247765, 30.488739, 49.786465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.901730, 30.657272, 49.677582>,  <33.694107, 30.758392, 49.612251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.901730, 30.657272, 49.677582>,  <34.247765, 30.488739, 49.786465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901730, 30.657272, 49.677582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305298, -0.011663, 0.952186,
		0.398014, 0.906830, 0.138722,
		-0.865089, 0.421335, -0.272211,
		33.642204, 30.783672, 49.595917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162113, 30.992962, 50.225750>,  <34.247765, 30.488739, 49.786465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162113, 30.992962, 50.225750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.790371, 30.917042, 50.099087>,  <33.567326, 30.871490, 50.023087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.790371, 30.917042, 50.099087>,  <34.162113, 30.992962, 50.225750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790371, 30.917042, 50.099087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350265, 0.182216, 0.918756,
		-0.116680, 0.964765, -0.235824,
		-0.929355, -0.189801, -0.316662,
		33.511566, 30.860102, 50.004089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763775, 31.371902, 50.662498>,  <34.162113, 30.992962, 50.225750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763775, 31.371902, 50.662498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476021, 31.138685, 50.511478>,  <33.303368, 30.998755, 50.420864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476021, 31.138685, 50.511478>,  <33.763775, 31.371902, 50.662498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476021, 31.138685, 50.511478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446143, -0.028768, 0.894499,
		-0.532393, 0.811932, -0.239424,
		-0.719385, -0.583043, -0.377554,
		33.260204, 30.963772, 50.398212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148479, 31.707603, 50.796280>,  <33.763775, 31.371902, 50.662498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148479, 31.707603, 50.796280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.086609, 31.316130, 50.742245>,  <33.049488, 31.081245, 50.709824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.086609, 31.316130, 50.742245>,  <33.148479, 31.707603, 50.796280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086609, 31.316130, 50.742245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425425, -0.057428, 0.903170,
		-0.891677, 0.197169, -0.407475,
		-0.154676, -0.978686, -0.135088,
		33.040207, 31.022524, 50.701717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620899, 31.578842, 51.222736>,  <33.148479, 31.707603, 50.796280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620899, 31.578842, 51.222736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.770180, 31.213118, 51.159794>,  <32.859749, 30.993683, 51.122028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.770180, 31.213118, 51.159794>,  <32.620899, 31.578842, 51.222736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770180, 31.213118, 51.159794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265341, -0.267719, 0.926240,
		-0.888998, -0.303916, -0.342516,
		0.373197, -0.914309, -0.157360,
		32.882137, 30.938826, 51.112587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124527, 31.082552, 51.604977>,  <32.620899, 31.578842, 51.222736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124527, 31.082552, 51.604977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461353, 30.876926, 51.539661>,  <32.663448, 30.753551, 51.500473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461353, 30.876926, 51.539661>,  <32.124527, 31.082552, 51.604977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461353, 30.876926, 51.539661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011687, -0.320049, 0.947329,
		-0.539247, -0.795806, -0.275510,
		0.842067, -0.514064, -0.163285,
		32.713974, 30.722708, 51.490677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048145, 30.435635, 51.831203>,  <32.124527, 31.082552, 51.604977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048145, 30.435635, 51.831203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447403, 30.457447, 51.820351>,  <32.686958, 30.470535, 51.813839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447403, 30.457447, 51.820351>,  <32.048145, 30.435635, 51.831203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447403, 30.457447, 51.820351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047261, -0.412476, 0.909742,
		0.038420, -0.909335, -0.414287,
		0.998144, 0.054532, -0.027129,
		32.746845, 30.473806, 51.812214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322632, 29.866865, 52.084236>,  <32.048145, 30.435635, 51.831203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322632, 29.866865, 52.084236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.601810, 30.145042, 52.152626>,  <32.769318, 30.311949, 52.193661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.601810, 30.145042, 52.152626>,  <32.322632, 29.866865, 52.084236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601810, 30.145042, 52.152626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062072, -0.296588, 0.952986,
		0.713457, -0.654518, -0.250170,
		0.697944, 0.695443, 0.170976,
		32.811195, 30.353676, 52.203918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.758629, 34.451763, 37.321430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056225, 34.549099, 37.570354>,  <38.234783, 34.607498, 37.719707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056225, 34.549099, 37.570354>,  <37.758629, 34.451763, 37.321430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056225, 34.549099, 37.570354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448536, -0.508445, 0.735050,
		0.495276, -0.825997, -0.269132,
		0.743988, 0.243338, 0.622309,
		38.279423, 34.622101, 37.757046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029408, 33.776997, 37.790108>,  <37.758629, 34.451763, 37.321430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029408, 33.776997, 37.790108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082226, 34.128891, 37.972809>,  <38.113914, 34.340027, 38.082432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082226, 34.128891, 37.972809>,  <38.029408, 33.776997, 37.790108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082226, 34.128891, 37.972809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573459, -0.308054, 0.759110,
		0.808523, -0.362164, 0.463818,
		0.132042, 0.879739, 0.456755,
		38.121838, 34.392811, 38.109837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011158, 33.534882, 38.515984>,  <38.029408, 33.776997, 37.790108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011158, 33.534882, 38.515984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994381, 33.933071, 38.550095>,  <37.984314, 34.171986, 38.570560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994381, 33.933071, 38.550095>,  <38.011158, 33.534882, 38.515984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994381, 33.933071, 38.550095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490860, -0.094871, 0.866058,
		0.870229, -0.005534, 0.492617,
		-0.041942, 0.995474, 0.085276,
		37.981800, 34.231712, 38.575676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281120, 33.780636, 39.213989>,  <38.011158, 33.534882, 38.515984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281120, 33.780636, 39.213989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026508, 34.050480, 39.064472>,  <37.873741, 34.212387, 38.974762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026508, 34.050480, 39.064472>,  <38.281120, 33.780636, 39.213989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026508, 34.050480, 39.064472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551248, -0.058993, 0.832253,
		0.539397, 0.735811, 0.409430,
		-0.636534, 0.674612, -0.373794,
		37.835548, 34.252865, 38.952335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042179, 34.073235, 39.832314>,  <38.281120, 33.780636, 39.213989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042179, 34.073235, 39.832314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771107, 34.197899, 39.565895>,  <37.608463, 34.272697, 39.406044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771107, 34.197899, 39.565895>,  <38.042179, 34.073235, 39.832314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771107, 34.197899, 39.565895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704480, -0.015466, 0.709555,
		0.210841, 0.950067, 0.230041,
		-0.677683, 0.311663, -0.666042,
		37.567802, 34.291397, 39.366081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676609, 34.514957, 40.198383>,  <38.042179, 34.073235, 39.832314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676609, 34.514957, 40.198383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431446, 34.457401, 39.887608>,  <37.284348, 34.422867, 39.701141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431446, 34.457401, 39.887608>,  <37.676609, 34.514957, 40.198383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431446, 34.457401, 39.887608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789462, 0.152631, 0.594519,
		0.033041, 0.977753, -0.207143,
		-0.612909, -0.143888, -0.776942,
		37.247574, 34.414234, 39.654526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240879, 35.142120, 40.101940>,  <37.676609, 34.514957, 40.198383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240879, 35.142120, 40.101940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038006, 34.837635, 39.940289>,  <36.916283, 34.654945, 39.843296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038006, 34.837635, 39.940289>,  <37.240879, 35.142120, 40.101940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038006, 34.837635, 39.940289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791467, 0.225802, 0.567973,
		-0.341093, 0.607925, -0.716996,
		-0.507184, -0.761210, -0.404133,
		36.885849, 34.609272, 39.819050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494568, 35.336281, 39.781796>,  <37.240879, 35.142120, 40.101940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494568, 35.336281, 39.781796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512447, 34.954174, 39.898739>,  <36.523174, 34.724911, 39.968906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512447, 34.954174, 39.898739>,  <36.494568, 35.336281, 39.781796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512447, 34.954174, 39.898739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824557, 0.129947, 0.550654,
		-0.564011, -0.265678, -0.781861,
		0.044696, -0.955264, 0.292358,
		36.525856, 34.667595, 39.986446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819500, 35.098873, 40.124054>,  <36.494568, 35.336281, 39.781796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819500, 35.098873, 40.124054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022289, 34.768478, 40.222622>,  <36.143963, 34.570240, 40.281761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022289, 34.768478, 40.222622>,  <35.819500, 35.098873, 40.124054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022289, 34.768478, 40.222622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570861, -0.107555, 0.813972,
		-0.645826, -0.553334, -0.526051,
		0.506978, -0.825986, 0.246415,
		36.174381, 34.520683, 40.296547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339909, 34.613869, 40.121616>,  <35.819500, 35.098873, 40.124054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339909, 34.613869, 40.121616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645687, 34.466373, 40.333145>,  <35.829155, 34.377876, 40.460060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645687, 34.466373, 40.333145>,  <35.339909, 34.613869, 40.121616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645687, 34.466373, 40.333145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643843, -0.394804, 0.655436,
		-0.032905, -0.841524, -0.539217,
		0.764450, -0.368738, 0.528818,
		35.875023, 34.355751, 40.491791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019318, 34.077457, 40.385345>,  <35.339909, 34.613869, 40.121616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019318, 34.077457, 40.385345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353092, 34.122841, 40.601067>,  <35.553356, 34.150070, 40.730499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353092, 34.122841, 40.601067>,  <35.019318, 34.077457, 40.385345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353092, 34.122841, 40.601067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434053, -0.467681, 0.769983,
		0.339584, -0.876585, -0.341000,
		0.834435, 0.113462, 0.539301,
		35.603424, 34.156879, 40.762856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080696, 33.452919, 40.849388>,  <35.019318, 34.077457, 40.385345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080696, 33.452919, 40.849388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311878, 33.731644, 41.019295>,  <35.450588, 33.898876, 41.121239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311878, 33.731644, 41.019295>,  <35.080696, 33.452919, 40.849388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311878, 33.731644, 41.019295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298654, -0.303793, 0.904718,
		0.759456, -0.649745, 0.032525,
		0.577956, 0.696807, 0.424767,
		35.485264, 33.940685, 41.146725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492081, 32.872849, 40.573715>,  <35.080696, 33.452919, 40.849388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492081, 32.872849, 40.573715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324524, 32.509640, 40.575584>,  <35.223991, 32.291714, 40.576706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324524, 32.509640, 40.575584>,  <35.492081, 32.872849, 40.573715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324524, 32.509640, 40.575584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213906, 0.093675, -0.972353,
		0.882484, -0.408306, -0.233471,
		-0.418888, -0.908026, 0.004672,
		35.198856, 32.237232, 40.576984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767345, 32.578953, 39.922638>,  <35.492081, 32.872849, 40.573715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767345, 32.578953, 39.922638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426201, 32.409897, 40.045277>,  <35.221512, 32.308464, 40.118858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426201, 32.409897, 40.045277>,  <35.767345, 32.578953, 39.922638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426201, 32.409897, 40.045277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364211, 0.060790, -0.929330,
		0.374131, -0.904258, -0.205774,
		-0.852863, -0.422636, 0.306598,
		35.170341, 32.283108, 40.137257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561329, 32.256985, 39.411697>,  <35.767345, 32.578953, 39.922638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561329, 32.256985, 39.411697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223549, 32.271927, 39.625431>,  <35.020882, 32.280891, 39.753670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223549, 32.271927, 39.625431>,  <35.561329, 32.256985, 39.411697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223549, 32.271927, 39.625431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528941, 0.099053, -0.842858,
		-0.084415, -0.994381, -0.063885,
		-0.844450, 0.037358, 0.534330,
		34.970215, 32.283134, 39.785728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064991, 31.763620, 39.196217>,  <35.561329, 32.256985, 39.411697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064991, 31.763620, 39.196217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831806, 32.017788, 39.398762>,  <34.691895, 32.170288, 39.520287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831806, 32.017788, 39.398762>,  <35.064991, 31.763620, 39.196217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831806, 32.017788, 39.398762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620644, 0.053952, -0.782234,
		-0.524366, -0.770281, 0.362917,
		-0.582960, 0.635419, 0.506361,
		34.656918, 32.208412, 39.550671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404865, 31.532383, 39.044201>,  <35.064991, 31.763620, 39.196217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404865, 31.532383, 39.044201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357098, 31.905615, 39.179909>,  <34.328438, 32.129555, 39.261333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357098, 31.905615, 39.179909>,  <34.404865, 31.532383, 39.044201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357098, 31.905615, 39.179909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575313, 0.213463, -0.789588,
		-0.809169, -0.289475, 0.511321,
		-0.119418, 0.933079, 0.339266,
		34.321274, 32.185539, 39.281689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660770, 31.583616, 38.998966>,  <34.404865, 31.532383, 39.044201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660770, 31.583616, 38.998966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794731, 31.959970, 39.019276>,  <33.875107, 32.185783, 39.031464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794731, 31.959970, 39.019276>,  <33.660770, 31.583616, 38.998966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794731, 31.959970, 39.019276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508112, 0.225715, -0.831189,
		-0.793514, 0.252564, 0.553667,
		0.334899, 0.940885, 0.050777,
		33.895203, 32.242237, 39.034508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024223, 31.962292, 38.904392>,  <33.660770, 31.583616, 38.998966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024223, 31.962292, 38.904392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304623, 32.242085, 38.848782>,  <33.472862, 32.409962, 38.815414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304623, 32.242085, 38.848782>,  <33.024223, 31.962292, 38.904392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304623, 32.242085, 38.848782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553260, 0.410383, -0.724906,
		-0.450005, 0.585075, 0.674673,
		0.700998, 0.699481, -0.139024,
		33.514923, 32.451927, 38.807076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746712, 32.614323, 38.964710>,  <33.024223, 31.962292, 38.904392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746712, 32.614323, 38.964710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073853, 32.676907, 38.743210>,  <33.270138, 32.714455, 38.610310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073853, 32.676907, 38.743210>,  <32.746712, 32.614323, 38.964710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073853, 32.676907, 38.743210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551814, 0.486085, -0.677660,
		0.163143, 0.859792, 0.483882,
		0.817854, 0.156457, -0.553747,
		33.319210, 32.723843, 38.577087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556698, 33.211952, 38.668606>,  <32.746712, 32.614323, 38.964710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556698, 33.211952, 38.668606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871735, 33.083885, 38.458008>,  <33.060757, 33.007046, 38.331650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871735, 33.083885, 38.458008>,  <32.556698, 33.211952, 38.668606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871735, 33.083885, 38.458008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451762, 0.281054, -0.846711,
		0.419065, 0.904710, 0.076714,
		0.787589, -0.320170, -0.526493,
		33.108013, 32.987835, 38.300060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738522, 33.754227, 38.087749>,  <32.556698, 33.211952, 38.668606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738522, 33.754227, 38.087749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896278, 33.411434, 37.955067>,  <32.990932, 33.205757, 37.875458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896278, 33.411434, 37.955067>,  <32.738522, 33.754227, 38.087749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896278, 33.411434, 37.955067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404430, 0.162258, -0.900061,
		0.825159, 0.489134, -0.282596,
		0.394397, -0.856984, -0.331709,
		33.014599, 33.154339, 37.855553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023369, 33.912022, 37.428352>,  <32.738522, 33.754227, 38.087749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023369, 33.912022, 37.428352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969864, 33.515995, 37.410984>,  <32.937759, 33.278381, 37.400562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969864, 33.515995, 37.410984>,  <33.023369, 33.912022, 37.428352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969864, 33.515995, 37.410984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479095, 0.102955, -0.871704,
		0.867511, -0.095800, -0.488105,
		-0.133762, -0.990062, -0.043417,
		32.929733, 33.218975, 37.397961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215435, 33.611305, 36.737816>,  <33.023369, 33.912022, 37.428352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215435, 33.611305, 36.737816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954716, 33.349426, 36.890926>,  <32.798283, 33.192299, 36.982792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954716, 33.349426, 36.890926>,  <33.215435, 33.611305, 36.737816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954716, 33.349426, 36.890926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485645, -0.027344, -0.873728,
		0.582499, -0.755392, -0.300130,
		-0.651800, -0.654702, 0.382781,
		32.759174, 33.153015, 37.005760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243542, 33.119125, 36.213577>,  <33.215435, 33.611305, 36.737816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243542, 33.119125, 36.213577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916180, 33.030884, 36.425819>,  <32.719761, 32.977940, 36.553165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916180, 33.030884, 36.425819>,  <33.243542, 33.119125, 36.213577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916180, 33.030884, 36.425819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522392, -0.099076, -0.846930,
		0.239407, -0.970318, -0.034158,
		-0.818408, -0.220605, 0.530606,
		32.670658, 32.964703, 36.585003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921345, 32.531204, 35.878891>,  <33.243542, 33.119125, 36.213577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921345, 32.531204, 35.878891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641609, 32.760014, 36.050335>,  <32.473766, 32.897301, 36.153202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641609, 32.760014, 36.050335>,  <32.921345, 32.531204, 35.878891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641609, 32.760014, 36.050335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539974, -0.029903, -0.841150,
		-0.468345, -0.819689, 0.329793,
		-0.699343, 0.572028, 0.428606,
		32.431805, 32.931622, 36.178917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243881, 31.945250, 35.906326>,  <32.921345, 32.531204, 35.878891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243881, 31.945250, 35.906326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477272, 31.691416, 35.703602>,  <33.617306, 31.539116, 35.581966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477272, 31.691416, 35.703602>,  <33.243881, 31.945250, 35.906326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477272, 31.691416, 35.703602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069728, -0.660894, 0.747233,
		-0.809133, -0.400652, -0.429863,
		0.583474, -0.634584, -0.506814,
		33.652313, 31.501041, 35.551559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010216, 31.265524, 36.011559>,  <33.243881, 31.945250, 35.906326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010216, 31.265524, 36.011559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393757, 31.229561, 35.903843>,  <33.623882, 31.207983, 35.839214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393757, 31.229561, 35.903843>,  <33.010216, 31.265524, 36.011559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393757, 31.229561, 35.903843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134214, -0.692283, 0.709035,
		-0.250171, -0.716003, -0.651731,
		0.958854, -0.089908, -0.269287,
		33.681412, 31.202589, 35.823055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179070, 30.575413, 35.761871>,  <33.010216, 31.265524, 36.011559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179070, 30.575413, 35.761871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467243, 30.780565, 35.948601>,  <33.640148, 30.903656, 36.060638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467243, 30.780565, 35.948601>,  <33.179070, 30.575413, 35.761871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467243, 30.780565, 35.948601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126627, -0.759085, 0.638557,
		0.681860, -0.400929, -0.611819,
		0.720439, 0.512879, 0.466822,
		33.683376, 30.934429, 36.088646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699139, 30.096704, 35.882587>,  <33.179070, 30.575413, 35.761871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699139, 30.096704, 35.882587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770115, 30.371904, 36.164059>,  <33.812702, 30.537025, 36.332943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770115, 30.371904, 36.164059>,  <33.699139, 30.096704, 35.882587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770115, 30.371904, 36.164059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191390, -0.725501, 0.661073,
		0.965342, 0.017376, -0.260411,
		0.177442, 0.688002, 0.703682,
		33.823349, 30.578304, 36.375164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253719, 29.773310, 36.318481>,  <33.699139, 30.096704, 35.882587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253719, 29.773310, 36.318481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138149, 30.095808, 36.524971>,  <34.068806, 30.289307, 36.648865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138149, 30.095808, 36.524971>,  <34.253719, 29.773310, 36.318481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138149, 30.095808, 36.524971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366650, -0.404919, 0.837621,
		0.884357, 0.431287, -0.178617,
		-0.288929, 0.806246, 0.516224,
		34.051472, 30.337683, 36.679840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865200, 30.157064, 36.789154>,  <34.253719, 29.773310, 36.318481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865200, 30.157064, 36.789154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505688, 30.195871, 36.960163>,  <34.289978, 30.219156, 37.062767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505688, 30.195871, 36.960163>,  <34.865200, 30.157064, 36.789154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505688, 30.195871, 36.960163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296751, -0.583176, 0.756204,
		0.322685, 0.806532, 0.495360,
		-0.898784, 0.097017, 0.427521,
		34.236053, 30.224976, 37.088421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993866, 30.104013, 37.521294>,  <34.865200, 30.157064, 36.789154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993866, 30.104013, 37.521294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599167, 30.056229, 37.477379>,  <34.362347, 30.027557, 37.451031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599167, 30.056229, 37.477379>,  <34.993866, 30.104013, 37.521294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599167, 30.056229, 37.477379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016808, -0.597763, 0.801496,
		-0.161375, 0.792722, 0.587835,
		-0.986750, -0.119461, -0.109788,
		34.303143, 30.020390, 37.444443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833359, 30.250389, 38.206886>,  <34.993866, 30.104013, 37.521294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833359, 30.250389, 38.206886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520607, 30.064026, 38.041187>,  <34.332958, 29.952208, 37.941769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520607, 30.064026, 38.041187>,  <34.833359, 30.250389, 38.206886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520607, 30.064026, 38.041187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129867, -0.528168, 0.839150,
		-0.609759, 0.709908, 0.352455,
		-0.781875, -0.465907, -0.414249,
		34.286045, 29.924253, 37.916912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228104, 30.338552, 38.615913>,  <34.833359, 30.250389, 38.206886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228104, 30.338552, 38.615913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149994, 30.005432, 38.408718>,  <34.103127, 29.805559, 38.284401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149994, 30.005432, 38.408718>,  <34.228104, 30.338552, 38.615913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149994, 30.005432, 38.408718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032540, -0.533365, 0.845259,
		-0.980209, 0.148202, 0.131252,
		-0.195275, -0.832801, -0.517987,
		34.091412, 29.755592, 38.253323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777542, 29.858963, 39.123219>,  <34.228104, 30.338552, 38.615913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777542, 29.858963, 39.123219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885784, 29.602646, 38.835842>,  <33.950729, 29.448854, 38.663418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885784, 29.602646, 38.835842>,  <33.777542, 29.858963, 39.123219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885784, 29.602646, 38.835842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148250, -0.709643, 0.688788,
		-0.951207, -0.292897, -0.097034,
		0.270604, -0.640795, -0.718440,
		33.966965, 29.410408, 38.620312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371284, 29.221003, 39.211018>,  <33.777542, 29.858963, 39.123219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371284, 29.221003, 39.211018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703754, 29.120243, 39.012745>,  <33.903236, 29.059788, 38.893780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703754, 29.120243, 39.012745>,  <33.371284, 29.221003, 39.211018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703754, 29.120243, 39.012745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235261, -0.648429, 0.724011,
		-0.503792, -0.718392, -0.479694,
		0.831171, -0.251898, -0.495683,
		33.953106, 29.044674, 38.864040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454067, 28.538157, 39.267651>,  <33.371284, 29.221003, 39.211018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454067, 28.538157, 39.267651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828156, 28.660013, 39.195484>,  <34.052608, 28.733128, 39.152184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828156, 28.660013, 39.195484>,  <33.454067, 28.538157, 39.267651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828156, 28.660013, 39.195484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324818, -0.535462, 0.779599,
		0.140893, -0.787702, -0.599730,
		0.935223, 0.304642, -0.180417,
		34.108723, 28.751406, 39.141357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851723, 27.942329, 39.341068>,  <33.454067, 28.538157, 39.267651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851723, 27.942329, 39.341068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075085, 28.270996, 39.386757>,  <34.209103, 28.468197, 39.414169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075085, 28.270996, 39.386757>,  <33.851723, 27.942329, 39.341068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075085, 28.270996, 39.386757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368578, -0.369088, 0.853185,
		0.743192, -0.434322, -0.508949,
		0.558404, 0.821668, 0.114222,
		34.242607, 28.517496, 39.421024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435272, 27.603966, 39.659573>,  <33.851723, 27.942329, 39.341068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435272, 27.603966, 39.659573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476280, 27.996988, 39.721638>,  <34.500885, 28.232801, 39.758877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476280, 27.996988, 39.721638>,  <34.435272, 27.603966, 39.659573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476280, 27.996988, 39.721638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415316, -0.184016, 0.890871,
		0.903882, -0.026891, -0.426936,
		0.102519, 0.982555, 0.155161,
		34.507034, 28.291756, 39.768185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138832, 27.698835, 39.874157>,  <34.435272, 27.603966, 39.659573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138832, 27.698835, 39.874157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937366, 28.020401, 40.000679>,  <34.816486, 28.213341, 40.076591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937366, 28.020401, 40.000679>,  <35.138832, 27.698835, 39.874157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937366, 28.020401, 40.000679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431280, -0.083265, 0.898367,
		0.748548, 0.588887, -0.304775,
		-0.503660, 0.803915, 0.316303,
		34.786270, 28.261576, 40.095570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499378, 28.014820, 40.331467>,  <35.138832, 27.698835, 39.874157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499378, 28.014820, 40.331467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173374, 28.240633, 40.383728>,  <34.977772, 28.376120, 40.415085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173374, 28.240633, 40.383728>,  <35.499378, 28.014820, 40.331467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173374, 28.240633, 40.383728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150685, -0.011233, 0.988518,
		0.559517, 0.825335, -0.075911,
		-0.815006, 0.564531, 0.130651,
		34.928871, 28.409992, 40.422924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752277, 28.662926, 40.632893>,  <35.499378, 28.014820, 40.331467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752277, 28.662926, 40.632893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366287, 28.606506, 40.721375>,  <35.134693, 28.572655, 40.774464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366287, 28.606506, 40.721375>,  <35.752277, 28.662926, 40.632893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366287, 28.606506, 40.721375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235972, -0.098184, 0.966787,
		-0.114644, 0.985122, 0.128028,
		-0.964974, -0.141047, 0.221205,
		35.076794, 28.564192, 40.787735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592045, 29.107151, 41.163353>,  <35.752277, 28.662926, 40.632893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592045, 29.107151, 41.163353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311428, 28.822676, 41.181458>,  <35.143059, 28.651991, 41.192318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311428, 28.822676, 41.181458>,  <35.592045, 29.107151, 41.163353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311428, 28.822676, 41.181458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229214, -0.165058, 0.959279,
		-0.674760, 0.683348, 0.278809,
		-0.701541, -0.711190, 0.045258,
		35.100967, 28.609318, 41.195034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478630, 29.062601, 41.892742>,  <35.592045, 29.107151, 41.163353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478630, 29.062601, 41.892742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286522, 28.736288, 41.763844>,  <35.171257, 28.540501, 41.686504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286522, 28.736288, 41.763844>,  <35.478630, 29.062601, 41.892742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286522, 28.736288, 41.763844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154759, -0.440443, 0.884341,
		-0.863362, 0.374848, 0.337779,
		-0.480266, -0.815781, -0.322251,
		35.142441, 28.491554, 41.667168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901711, 28.995005, 42.432865>,  <35.478630, 29.062601, 41.892742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901711, 28.995005, 42.432865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991894, 28.654716, 42.242943>,  <35.046005, 28.450542, 42.128990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991894, 28.654716, 42.242943>,  <34.901711, 28.995005, 42.432865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991894, 28.654716, 42.242943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104783, -0.463354, 0.879957,
		-0.968601, -0.248146, -0.015326,
		0.225459, -0.850722, -0.474806,
		35.059532, 28.399500, 42.100502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423061, 28.464378, 42.752991>,  <34.901711, 28.995005, 42.432865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423061, 28.464378, 42.752991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726631, 28.261223, 42.589977>,  <34.908772, 28.139330, 42.492168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726631, 28.261223, 42.589977>,  <34.423061, 28.464378, 42.752991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726631, 28.261223, 42.589977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086548, -0.541614, 0.836160,
		-0.645405, -0.669852, -0.367085,
		0.758922, -0.507891, -0.407534,
		34.954308, 28.108856, 42.467716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304749, 27.770777, 43.056164>,  <34.423061, 28.464378, 42.752991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304749, 27.770777, 43.056164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681343, 27.782034, 42.921810>,  <34.907299, 27.788788, 42.841198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681343, 27.782034, 42.921810>,  <34.304749, 27.770777, 43.056164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681343, 27.782034, 42.921810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282570, -0.609135, 0.741019,
		-0.183742, -0.792567, -0.581443,
		0.941485, 0.028142, -0.335879,
		34.963787, 27.790476, 42.821045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531105, 27.068426, 43.072010>,  <34.304749, 27.770777, 43.056164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531105, 27.068426, 43.072010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885925, 27.252172, 43.053574>,  <35.098816, 27.362419, 43.042511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885925, 27.252172, 43.053574>,  <34.531105, 27.068426, 43.072010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885925, 27.252172, 43.053574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330972, -0.563152, 0.757177,
		0.321866, -0.686908, -0.651582,
		0.887051, 0.459365, -0.046088,
		35.152042, 27.389982, 43.039745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045197, 26.573231, 43.181713>,  <34.531105, 27.068426, 43.072010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045197, 26.573231, 43.181713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201748, 26.930099, 43.271912>,  <35.295677, 27.144220, 43.326031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201748, 26.930099, 43.271912>,  <35.045197, 26.573231, 43.181713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201748, 26.930099, 43.271912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415507, -0.389973, 0.821751,
		0.821082, -0.227921, -0.523332,
		0.391380, 0.892173, 0.225497,
		35.319160, 27.197752, 43.339561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647953, 26.367332, 43.536663>,  <35.045197, 26.573231, 43.181713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647953, 26.367332, 43.536663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633514, 26.757797, 43.622269>,  <35.624851, 26.992077, 43.673630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633514, 26.757797, 43.622269>,  <35.647953, 26.367332, 43.536663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633514, 26.757797, 43.622269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383910, -0.184172, 0.904817,
		0.922665, 0.114821, -0.368111,
		-0.036097, 0.976164, 0.214010,
		35.622684, 27.050646, 43.686470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211380, 26.441393, 43.855675>,  <35.647953, 26.367332, 43.536663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211380, 26.441393, 43.855675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974060, 26.732994, 43.992229>,  <35.831669, 26.907955, 44.074162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974060, 26.732994, 43.992229>,  <36.211380, 26.441393, 43.855675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974060, 26.732994, 43.992229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204245, -0.273887, 0.939825,
		0.778636, 0.627329, 0.013603,
		-0.593304, 0.729003, 0.341387,
		35.796070, 26.951694, 44.094646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570042, 26.681969, 44.506046>,  <36.211380, 26.441393, 43.855675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570042, 26.681969, 44.506046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182312, 26.779865, 44.515175>,  <35.949677, 26.838602, 44.520653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182312, 26.779865, 44.515175>,  <36.570042, 26.681969, 44.506046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182312, 26.779865, 44.515175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072105, -0.371894, 0.925470,
		0.234987, 0.895431, 0.378132,
		-0.969320, 0.244739, 0.022825,
		35.891518, 26.853287, 44.522022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452538, 26.997023, 45.141399>,  <36.570042, 26.681969, 44.506046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452538, 26.997023, 45.141399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093971, 26.875780, 45.012051>,  <35.878834, 26.803034, 44.934441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093971, 26.875780, 45.012051>,  <36.452538, 26.997023, 45.141399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093971, 26.875780, 45.012051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201955, -0.370128, 0.906763,
		-0.394536, 0.878141, 0.270574,
		-0.896413, -0.303107, -0.323373,
		35.825047, 26.784847, 44.915039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643280, 27.727783, 45.289207>,  <36.452538, 26.997023, 45.141399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643280, 27.727783, 45.289207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009605, 27.754637, 45.447590>,  <37.229401, 27.770748, 45.542622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009605, 27.754637, 45.447590>,  <36.643280, 27.727783, 45.289207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009605, 27.754637, 45.447590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352189, 0.339576, -0.872153,
		-0.193009, 0.938180, 0.287344,
		0.915811, 0.067134, 0.395958,
		37.284348, 27.774776, 45.566376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950119, 28.413078, 45.236904>,  <36.643280, 27.727783, 45.289207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950119, 28.413078, 45.236904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289532, 28.204411, 45.272369>,  <37.493179, 28.079210, 45.293648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289532, 28.204411, 45.272369>,  <36.950119, 28.413078, 45.236904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289532, 28.204411, 45.272369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398464, 0.519681, -0.755750,
		0.348176, 0.676604, 0.648830,
		0.848528, -0.521670, 0.088662,
		37.544090, 28.047909, 45.298969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410698, 28.990318, 45.148453>,  <36.950119, 28.413078, 45.236904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410698, 28.990318, 45.148453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572750, 28.630806, 45.081451>,  <37.669983, 28.415098, 45.041248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572750, 28.630806, 45.081451>,  <37.410698, 28.990318, 45.148453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572750, 28.630806, 45.081451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448215, 0.354943, -0.820438,
		0.796849, 0.257309, 0.546647,
		0.405135, -0.898781, -0.167507,
		37.694290, 28.361172, 45.031200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094532, 29.076233, 44.880928>,  <37.410698, 28.990318, 45.148453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094532, 29.076233, 44.880928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019917, 28.700964, 44.764282>,  <37.975147, 28.475803, 44.694294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019917, 28.700964, 44.764282>,  <38.094532, 29.076233, 44.880928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019917, 28.700964, 44.764282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355764, 0.212175, -0.910172,
		0.915771, -0.273524, 0.294190,
		-0.186534, -0.938172, -0.291614,
		37.963955, 28.419512, 44.676800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750202, 28.985386, 44.573727>,  <38.094532, 29.076233, 44.880928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750202, 28.985386, 44.573727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489929, 28.717403, 44.430748>,  <38.333763, 28.556614, 44.344959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489929, 28.717403, 44.430748>,  <38.750202, 28.985386, 44.573727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489929, 28.717403, 44.430748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319149, 0.185855, -0.929302,
		0.689024, -0.718762, 0.092883,
		-0.650684, -0.669955, -0.357451,
		38.294724, 28.516417, 44.323513>
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
