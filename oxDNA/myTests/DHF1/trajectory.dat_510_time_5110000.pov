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
	<0.979210, 4.626701, 2.493558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.289012, 4.373871, 2.503548>,  <1.474893, 4.222173, 2.509541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.289012, 4.373871, 2.503548>,  <0.979210, 4.626701, 2.493558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.289012, 4.373871, 2.503548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338125, 0.380304, -0.860837,
		0.534617, 0.675165, 0.508268,
		0.774504, -0.632076, 0.024973,
		1.521363, 4.184248, 2.511039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.583005, 5.008031, 2.527007>,  <0.979210, 4.626701, 2.493558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.583005, 5.008031, 2.527007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.601105, 4.666237, 2.320007>,  <1.611965, 4.461160, 2.195807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.601105, 4.666237, 2.320007>,  <1.583005, 5.008031, 2.527007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.601105, 4.666237, 2.320007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351041, 0.498593, -0.792575,
		0.935266, -0.145800, 0.322521,
		0.045249, -0.854487, -0.517499,
		1.614679, 4.409891, 2.164758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.291365, 4.822799, 2.148573>,  <1.583005, 5.008031, 2.527007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.291365, 4.822799, 2.148573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.998275, 4.623417, 1.963249>,  <1.822421, 4.503788, 1.852055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.998275, 4.623417, 1.963249>,  <2.291365, 4.822799, 2.148573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.998275, 4.623417, 1.963249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315683, 0.354170, -0.880288,
		0.602875, -0.791269, -0.102156,
		-0.732725, -0.498455, -0.463310,
		1.778457, 4.473880, 1.824256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.617027, 4.449493, 1.561316>,  <2.291365, 4.822799, 2.148573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.617027, 4.449493, 1.561316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.245605, 4.597260, 1.546814>,  <2.022751, 4.685920, 1.538113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.245605, 4.597260, 1.546814>,  <2.617027, 4.449493, 1.561316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.245605, 4.597260, 1.546814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273297, 0.614308, -0.740226,
		-0.251181, -0.697250, -0.671380,
		-0.928556, 0.369417, -0.036254,
		1.967038, 4.708085, 1.535938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.319661, 4.458925, 0.814374>,  <2.617027, 4.449493, 1.561316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.319661, 4.458925, 0.814374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.094611, 4.728306, 1.006172>,  <1.959581, 4.889935, 1.121251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.094611, 4.728306, 1.006172>,  <2.319661, 4.458925, 0.814374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.094611, 4.728306, 1.006172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091774, 0.627296, -0.773355,
		-0.821603, -0.391103, -0.414738,
		-0.562625, 0.673453, 0.479495,
		1.925824, 4.930342, 1.150021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.070072, 4.827155, 0.202498>,  <2.319661, 4.458925, 0.814374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.070072, 4.827155, 0.202498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.994369, 5.055904, 0.521782>,  <1.948946, 5.193154, 0.713353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.994369, 5.055904, 0.521782>,  <2.070072, 4.827155, 0.202498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.994369, 5.055904, 0.521782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191815, 0.818774, -0.541126,
		-0.963010, 0.050695, -0.264654,
		-0.189260, 0.571874, 0.798211,
		1.937591, 5.227467, 0.761245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.545134, 5.314097, -0.031429>,  <2.070072, 4.827155, 0.202498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.545134, 5.314097, -0.031429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.741731, 5.476505, 0.276749>,  <1.859689, 5.573950, 0.461655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.741731, 5.476505, 0.276749>,  <1.545134, 5.314097, -0.031429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.741731, 5.476505, 0.276749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021605, 0.878714, -0.476860,
		-0.870614, 0.251019, 0.423109,
		0.491492, 0.406019, 0.770444,
		1.889178, 5.598311, 0.507882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.323206, 5.959386, 0.103269>,  <1.545134, 5.314097, -0.031429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.323206, 5.959386, 0.103269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.673439, 5.981567, 0.295219>,  <1.883579, 5.994876, 0.410390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.673439, 5.981567, 0.295219>,  <1.323206, 5.959386, 0.103269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.673439, 5.981567, 0.295219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143649, 0.918564, -0.368247,
		-0.461218, 0.391364, 0.796312,
		0.875581, 0.055453, 0.479877,
		1.936113, 5.998203, 0.439183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.378254, 1.379774, -0.601853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.643612, 1.592194, -0.390991>,  <2.802827, 1.719646, -0.264474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.643612, 1.592194, -0.390991>,  <2.378254, 1.379774, -0.601853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.643612, 1.592194, -0.390991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277083, -0.480077, 0.832317,
		0.695077, -0.698221, -0.171336,
		0.663395, 0.531050, 0.527155,
		2.842631, 1.751509, -0.232845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.927459, 1.006242, -0.189168>,  <2.378254, 1.379774, -0.601853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.927459, 1.006242, -0.189168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.782850, 1.310062, 0.027122>,  <2.696085, 1.492354, 0.156897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.782850, 1.310062, 0.027122>,  <2.927459, 1.006242, -0.189168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.782850, 1.310062, 0.027122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352413, -0.648248, 0.674966,
		0.863195, 0.053457, 0.502032,
		-0.361523, 0.759550, 0.540726,
		2.674393, 1.537927, 0.189340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.220746, 1.039341, 0.503618>,  <2.927459, 1.006242, -0.189168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.220746, 1.039341, 0.503618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.855148, 1.201538, 0.498093>,  <2.635790, 1.298856, 0.494778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.855148, 1.201538, 0.498093>,  <3.220746, 1.039341, 0.503618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.855148, 1.201538, 0.498093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308834, -0.673236, 0.671845,
		0.263128, 0.618328, 0.740564,
		-0.913994, 0.405492, -0.013813,
		2.580950, 1.323186, 0.493949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.000854, 1.191188, 1.200801>,  <3.220746, 1.039341, 0.503618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.000854, 1.191188, 1.200801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.660728, 1.176136, 0.990829>,  <2.456653, 1.167105, 0.864847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.660728, 1.176136, 0.990829>,  <3.000854, 1.191188, 1.200801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.660728, 1.176136, 0.990829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380550, -0.645010, 0.662679,
		-0.363521, 0.763247, 0.534141,
		-0.850314, -0.037631, -0.524928,
		2.405634, 1.164847, 0.833351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.359487, 1.282736, 1.517355>,  <3.000854, 1.191188, 1.200801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.359487, 1.282736, 1.517355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.204447, 1.059704, 1.223724>,  <2.111423, 0.925884, 1.047546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.204447, 1.059704, 1.223724>,  <2.359487, 1.282736, 1.517355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.204447, 1.059704, 1.223724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393072, -0.620335, 0.678733,
		-0.833822, 0.551623, 0.021273,
		-0.387601, -0.557581, -0.734077,
		2.088166, 0.892430, 1.003501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.751449, 1.165209, 1.622634>,  <2.359487, 1.282736, 1.517355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.751449, 1.165209, 1.622634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.810461, 0.870266, 1.358955>,  <1.845868, 0.693300, 1.200748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.810461, 0.870266, 1.358955>,  <1.751449, 1.165209, 1.622634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.810461, 0.870266, 1.358955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470470, -0.638575, 0.608998,
		-0.869996, 0.220288, -0.441113,
		0.147529, -0.737356, -0.659197,
		1.854720, 0.649059, 1.161196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.061461, 0.747349, 1.701414>,  <1.751449, 1.165209, 1.622634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.061461, 0.747349, 1.701414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.338165, 0.501896, 1.549141>,  <1.504188, 0.354624, 1.457777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.338165, 0.501896, 1.549141>,  <1.061461, 0.747349, 1.701414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.338165, 0.501896, 1.549141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405064, -0.766158, 0.498925,
		-0.597820, -0.190936, -0.778559,
		0.691762, -0.613634, -0.380683,
		1.545694, 0.317806, 1.434936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.714537, 0.189149, 1.518678>,  <1.061461, 0.747349, 1.701414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.714537, 0.189149, 1.518678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.089420, 0.055756, 1.559532>,  <1.314350, -0.024280, 1.584044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.089420, 0.055756, 1.559532>,  <0.714537, 0.189149, 1.518678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.089420, 0.055756, 1.559532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334169, -0.774750, 0.536744,
		-0.099866, -0.537171, -0.837541,
		0.937208, -0.333482, 0.102135,
		1.370583, -0.044289, 1.590173>
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
