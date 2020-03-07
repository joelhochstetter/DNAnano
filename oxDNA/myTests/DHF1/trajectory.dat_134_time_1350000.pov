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
	<4.289869, 0.047840, 6.054362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.926035, -0.047939, 6.190197>,  <3.707735, -0.105407, 6.271698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.926035, -0.047939, 6.190197>,  <4.289869, 0.047840, 6.054362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.926035, -0.047939, 6.190197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384492, 0.175149, -0.906360,
		0.157541, -0.954982, -0.251376,
		-0.909586, -0.239441, 0.339590,
		3.653160, -0.119774, 6.292073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.030552, -0.407151, 5.516086>,  <4.289869, 0.047840, 6.054362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.030552, -0.407151, 5.516086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.779045, -0.164539, 5.710724>,  <3.628141, -0.018972, 5.827507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.779045, -0.164539, 5.710724>,  <4.030552, -0.407151, 5.516086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.779045, -0.164539, 5.710724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450035, 0.226471, -0.863817,
		-0.634129, -0.762124, 0.130562,
		-0.628767, 0.606529, 0.486594,
		3.590415, 0.017419, 5.856702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.344035, -0.616377, 5.380338>,  <4.030552, -0.407151, 5.516086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.344035, -0.616377, 5.380338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.362389, -0.222340, 5.446655>,  <3.373401, 0.014083, 5.486446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.362389, -0.222340, 5.446655>,  <3.344035, -0.616377, 5.380338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.362389, -0.222340, 5.446655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403388, 0.170106, -0.899078,
		-0.913878, -0.025626, 0.405179,
		0.045883, 0.985092, 0.165793,
		3.376154, 0.073188, 5.496393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.710719, -0.313874, 5.147987>,  <3.344035, -0.616377, 5.380338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.710719, -0.313874, 5.147987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.979187, -0.017601, 5.135849>,  <3.140268, 0.160163, 5.128566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.979187, -0.017601, 5.135849>,  <2.710719, -0.313874, 5.147987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.979187, -0.017601, 5.135849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286525, 0.221448, -0.932129,
		-0.683691, 0.634312, 0.360853,
		0.671171, 0.740681, -0.030344,
		3.180538, 0.204603, 5.126746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.359699, 0.299130, 4.859338>,  <2.710719, -0.313874, 5.147987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.359699, 0.299130, 4.859338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.743773, 0.263096, 4.753559>,  <2.974217, 0.241475, 4.690092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.743773, 0.263096, 4.753559>,  <2.359699, 0.299130, 4.859338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.743773, 0.263096, 4.753559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272367, -0.091257, -0.957856,
		0.062156, 0.991744, -0.112160,
		0.960184, -0.090085, -0.264446,
		3.031828, 0.236070, 4.674225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.510462, 0.726938, 4.290880>,  <2.359699, 0.299130, 4.859338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.510462, 0.726938, 4.290880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.783611, 0.436184, 4.261700>,  <2.947501, 0.261731, 4.244192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.783611, 0.436184, 4.261700>,  <2.510462, 0.726938, 4.290880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.783611, 0.436184, 4.261700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188885, -0.079215, -0.978799,
		0.705697, 0.682174, -0.191392,
		0.682872, -0.726886, -0.072951,
		2.988473, 0.218118, 4.239814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.086335, 0.903561, 3.810833>,  <2.510462, 0.726938, 4.290880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.086335, 0.903561, 3.810833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078569, 0.504436, 3.836121>,  <3.073910, 0.264962, 3.851293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078569, 0.504436, 3.836121>,  <3.086335, 0.903561, 3.810833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.078569, 0.504436, 3.836121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087358, -0.064681, -0.994075,
		0.995988, -0.013776, 0.088422,
		-0.019414, -0.997811, 0.063218,
		3.072745, 0.205093, 3.855086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.466087, 0.651640, 3.319241>,  <3.086335, 0.903561, 3.810833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.466087, 0.651640, 3.319241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.222128, 0.345745, 3.402378>,  <3.075752, 0.162208, 3.452260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.222128, 0.345745, 3.402378>,  <3.466087, 0.651640, 3.319241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.222128, 0.345745, 3.402378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140428, -0.153828, -0.978068,
		0.779938, -0.625709, -0.013571,
		-0.609899, -0.764738, 0.207843,
		3.039158, 0.116324, 3.464731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.137965, 5.260803, 1.945844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.140508, 4.879044, 2.065231>,  <2.142033, 4.649988, 2.136864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.140508, 4.879044, 2.065231>,  <2.137965, 5.260803, 1.945844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.140508, 4.879044, 2.065231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046237, 0.298436, 0.953309,
		-0.998910, 0.007741, 0.046026,
		0.006357, -0.954399, 0.298468,
		2.142415, 4.592724, 2.154772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.751403, 5.181901, 2.561106>,  <2.137965, 5.260803, 1.945844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.751403, 5.181901, 2.561106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023881, 4.889061, 2.561684>,  <2.187368, 4.713357, 2.562030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023881, 4.889061, 2.561684>,  <1.751403, 5.181901, 2.561106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.023881, 4.889061, 2.561684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240478, 0.225618, 0.944069,
		-0.691479, -0.642749, 0.329744,
		0.681195, -0.732100, 0.001443,
		2.228240, 4.669431, 2.562117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.756824, 5.110551, 3.208755>,  <1.751403, 5.181901, 2.561106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.756824, 5.110551, 3.208755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.077765, 4.937065, 3.044746>,  <2.270330, 4.832973, 2.946341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.077765, 4.937065, 3.044746>,  <1.756824, 5.110551, 3.208755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.077765, 4.937065, 3.044746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464177, 0.021600, 0.885479,
		-0.375190, -0.900791, 0.218652,
		0.802354, -0.433716, -0.410023,
		2.318472, 4.806951, 2.921740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.033734, 4.662760, 3.688624>,  <1.756824, 5.110551, 3.208755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.033734, 4.662760, 3.688624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.354206, 4.700348, 3.452225>,  <2.546489, 4.722901, 3.310385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.354206, 4.700348, 3.452225>,  <2.033734, 4.662760, 3.688624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.354206, 4.700348, 3.452225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595113, -0.021399, 0.803357,
		0.062847, -0.995345, -0.073069,
		0.801181, 0.093973, -0.590997,
		2.594560, 4.728539, 3.274925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.415569, 4.045728, 3.849783>,  <2.033734, 4.662760, 3.688624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.415569, 4.045728, 3.849783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.591365, 4.387283, 3.738266>,  <2.696842, 4.592216, 3.671356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.591365, 4.387283, 3.738266>,  <2.415569, 4.045728, 3.849783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.591365, 4.387283, 3.738266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616967, -0.061381, 0.784591,
		0.652841, -0.516825, -0.553797,
		0.439489, 0.853888, -0.278792,
		2.723212, 4.643450, 3.654628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.096261, 3.943181, 3.989599>,  <2.415569, 4.045728, 3.849783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.096261, 3.943181, 3.989599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.084146, 4.340706, 3.946854>,  <3.076876, 4.579221, 3.921206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.084146, 4.340706, 3.946854>,  <3.096261, 3.943181, 3.989599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.084146, 4.340706, 3.946854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777737, 0.090590, 0.622027,
		0.627859, -0.064271, -0.775669,
		-0.030290, 0.993812, -0.106863,
		3.075059, 4.638850, 3.914795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.811632, 4.174976, 4.132808>,  <3.096261, 3.943181, 3.989599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.811632, 4.174976, 4.132808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.575033, 4.495659, 4.167213>,  <3.433074, 4.688068, 4.187857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.575033, 4.495659, 4.167213>,  <3.811632, 4.174976, 4.132808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.575033, 4.495659, 4.167213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543490, 0.317621, 0.777005,
		0.595610, 0.506343, -0.623591,
		-0.591496, 0.801707, 0.086014,
		3.397584, 4.736171, 4.193018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.223178, 4.840313, 4.262277>,  <3.811632, 4.174976, 4.132808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.223178, 4.840313, 4.262277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.852308, 4.919266, 4.389641>,  <3.629786, 4.966637, 4.466059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.852308, 4.919266, 4.389641>,  <4.223178, 4.840313, 4.262277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.852308, 4.919266, 4.389641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374451, 0.514272, 0.771563,
		-0.011458, 0.834604, -0.550731,
		-0.927176, 0.197381, 0.318411,
		3.574155, 4.978480, 4.485164>
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
