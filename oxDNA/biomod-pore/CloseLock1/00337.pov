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
	<23.880312, 34.734444, 34.750271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251833, 34.716919, 34.897461>,  <24.474747, 34.706406, 34.985775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251833, 34.716919, 34.897461>,  <23.880312, 34.734444, 34.750271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251833, 34.716919, 34.897461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012279, -0.988803, -0.148718,
		0.370368, 0.142649, -0.917866,
		0.928804, -0.043810, 0.367973,
		24.530474, 34.703777, 35.007854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.361246, 34.310318, 34.245041>,  <23.880312, 34.734444, 34.750271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.361246, 34.310318, 34.245041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433886, 34.285301, 34.637592>,  <24.477468, 34.270290, 34.873123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433886, 34.285301, 34.637592>,  <24.361246, 34.310318, 34.245041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433886, 34.285301, 34.637592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258685, -0.965865, -0.013689,
		0.948738, -0.251383, -0.191579,
		0.181599, -0.062546, 0.981381,
		24.488365, 34.266537, 34.932007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.721704, 33.621651, 34.476669>,  <24.361246, 34.310318, 34.245041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.721704, 33.621651, 34.476669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474611, 33.764931, 34.756699>,  <24.326355, 33.850899, 34.924717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474611, 33.764931, 34.756699>,  <24.721704, 33.621651, 34.476669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474611, 33.764931, 34.756699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487363, -0.873040, 0.016664,
		0.617158, -0.330894, 0.713880,
		-0.617732, 0.358203, 0.700070,
		24.289291, 33.872391, 34.966721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241119, 33.721474, 35.121639>,  <24.721704, 33.621651, 34.476669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241119, 33.721474, 35.121639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636047, 33.708515, 35.059483>,  <25.873005, 33.700741, 35.022190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636047, 33.708515, 35.059483>,  <25.241119, 33.721474, 35.121639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636047, 33.708515, 35.059483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072641, 0.778204, -0.623796,
		0.141135, 0.627175, 0.765984,
		0.987322, -0.032398, -0.155390,
		25.932243, 33.698795, 35.012867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409264, 34.427402, 34.977470>,  <25.241119, 33.721474, 35.121639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409264, 34.427402, 34.977470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717171, 34.214943, 34.835857>,  <25.901915, 34.087467, 34.750889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717171, 34.214943, 34.835857>,  <25.409264, 34.427402, 34.977470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717171, 34.214943, 34.835857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285915, 0.782778, -0.552730,
		0.570708, 0.324253, 0.754422,
		0.769769, -0.531148, -0.354030,
		25.948101, 34.055599, 34.729649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876007, 34.916985, 34.974380>,  <25.409264, 34.427402, 34.977470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876007, 34.916985, 34.974380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035694, 34.622307, 34.756058>,  <26.131506, 34.445499, 34.625065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035694, 34.622307, 34.756058>,  <25.876007, 34.916985, 34.974380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035694, 34.622307, 34.756058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427773, 0.676202, -0.599800,
		0.810947, 0.005968, 0.585090,
		0.399218, -0.736692, -0.545811,
		26.155460, 34.401299, 34.592316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672813, 34.998138, 35.013535>,  <25.876007, 34.916985, 34.974380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672813, 34.998138, 35.013535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582836, 34.799847, 34.677998>,  <26.528849, 34.680870, 34.476677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582836, 34.799847, 34.677998>,  <26.672813, 34.998138, 35.013535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582836, 34.799847, 34.677998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526994, 0.662220, -0.532675,
		0.819559, -0.561885, 0.112285,
		-0.224945, -0.495732, -0.838838,
		26.515352, 34.651127, 34.426346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259512, 34.838428, 34.737556>,  <26.672813, 34.998138, 35.013535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259512, 34.838428, 34.737556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995642, 34.846031, 34.437031>,  <26.837320, 34.850594, 34.256718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995642, 34.846031, 34.437031>,  <27.259512, 34.838428, 34.737556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995642, 34.846031, 34.437031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651958, 0.511778, -0.559495,
		0.373872, -0.858907, -0.349996,
		-0.659674, 0.019003, -0.751311,
		26.797739, 34.851730, 34.211636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657082, 34.843662, 34.133217>,  <27.259512, 34.838428, 34.737556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657082, 34.843662, 34.133217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309135, 34.944149, 33.963409>,  <27.100367, 35.004440, 33.861523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309135, 34.944149, 33.963409>,  <27.657082, 34.843662, 34.133217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309135, 34.944149, 33.963409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479045, 0.635503, -0.605517,
		0.117669, -0.730085, -0.673149,
		-0.869868, 0.251218, -0.424523,
		27.048176, 35.019516, 33.836052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794779, 34.751583, 33.411472>,  <27.657082, 34.843662, 34.133217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794779, 34.751583, 33.411472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492908, 35.010460, 33.454559>,  <27.311787, 35.165787, 33.480412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492908, 35.010460, 33.454559>,  <27.794779, 34.751583, 33.411472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492908, 35.010460, 33.454559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492097, 0.666942, -0.559490,
		-0.433937, -0.369229, -0.821808,
		-0.754678, 0.647193, 0.107714,
		27.266504, 35.204617, 33.486874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706785, 35.187786, 32.734940>,  <27.794779, 34.751583, 33.411472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706785, 35.187786, 32.734940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515812, 35.384537, 33.026176>,  <27.401228, 35.502586, 33.200916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515812, 35.384537, 33.026176>,  <27.706785, 35.187786, 32.734940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515812, 35.384537, 33.026176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277975, 0.870622, -0.405891,
		-0.833538, 0.008604, -0.552395,
		-0.477434, 0.491878, 0.728088,
		27.372581, 35.532101, 33.244602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380682, 35.759628, 32.410107>,  <27.706785, 35.187786, 32.734940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380682, 35.759628, 32.410107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399387, 35.853809, 32.798412>,  <27.410610, 35.910316, 33.031395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399387, 35.853809, 32.798412>,  <27.380682, 35.759628, 32.410107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399387, 35.853809, 32.798412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360395, 0.902392, -0.236229,
		-0.931627, 0.360904, -0.042658,
		0.046762, 0.235451, 0.970761,
		27.413416, 35.924446, 33.089642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046164, 36.363575, 32.567734>,  <27.380682, 35.759628, 32.410107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046164, 36.363575, 32.567734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315828, 36.318516, 32.859711>,  <27.477627, 36.291481, 33.034897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315828, 36.318516, 32.859711>,  <27.046164, 36.363575, 32.567734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315828, 36.318516, 32.859711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456817, 0.840186, -0.292245,
		-0.580365, 0.530470, 0.617882,
		0.674163, -0.112650, 0.729942,
		27.518078, 36.284721, 33.078693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282022, 37.116943, 32.733723>,  <27.046164, 36.363575, 32.567734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282022, 37.116943, 32.733723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554739, 36.933212, 32.961468>,  <27.718369, 36.822975, 33.098114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554739, 36.933212, 32.961468>,  <27.282022, 37.116943, 32.733723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554739, 36.933212, 32.961468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617684, 0.778462, -0.111639,
		-0.391950, 0.427803, 0.814469,
		0.681793, -0.459327, 0.569365,
		27.759277, 36.795414, 33.132278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488909, 37.498447, 33.351048>,  <27.282022, 37.116943, 32.733723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488909, 37.498447, 33.351048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804996, 37.269482, 33.263504>,  <27.994648, 37.132103, 33.210976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804996, 37.269482, 33.263504>,  <27.488909, 37.498447, 33.351048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804996, 37.269482, 33.263504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597585, 0.798902, 0.068176,
		0.135824, -0.184663, 0.973371,
		0.790218, -0.572412, -0.218862,
		28.042061, 37.097759, 33.197845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836355, 37.659950, 33.897720>,  <27.488909, 37.498447, 33.351048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836355, 37.659950, 33.897720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072229, 37.519337, 33.606873>,  <28.213755, 37.434971, 33.432365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072229, 37.519337, 33.606873>,  <27.836355, 37.659950, 33.897720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072229, 37.519337, 33.606873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472382, 0.880368, -0.042524,
		0.655077, -0.318401, 0.685197,
		0.589686, -0.351531, -0.727115,
		28.249134, 37.413876, 33.388737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477415, 37.982677, 34.021427>,  <27.836355, 37.659950, 33.897720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477415, 37.982677, 34.021427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548641, 37.826122, 33.660294>,  <28.591377, 37.732189, 33.443615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548641, 37.826122, 33.660294>,  <28.477415, 37.982677, 34.021427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548641, 37.826122, 33.660294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494109, 0.829005, -0.261931,
		0.850970, -0.399458, 0.341004,
		0.178063, -0.391388, -0.902834,
		28.602060, 37.708706, 33.389442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153883, 38.094749, 33.949104>,  <28.477415, 37.982677, 34.021427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153883, 38.094749, 33.949104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020029, 38.059639, 33.573803>,  <28.939716, 38.038570, 33.348621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020029, 38.059639, 33.573803>,  <29.153883, 38.094749, 33.949104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020029, 38.059639, 33.573803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539836, 0.798231, -0.267214,
		0.772398, -0.595921, -0.219727,
		-0.334631, -0.087779, -0.938252,
		28.919640, 38.033306, 33.292328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790953, 38.240894, 33.407722>,  <29.153883, 38.094749, 33.949104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790953, 38.240894, 33.407722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463106, 38.319447, 33.192440>,  <29.266397, 38.366577, 33.063271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463106, 38.319447, 33.192440>,  <29.790953, 38.240894, 33.407722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463106, 38.319447, 33.192440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459128, 0.787045, -0.412022,
		0.342676, -0.584804, -0.735239,
		-0.819618, 0.196379, -0.538202,
		29.217220, 38.378361, 33.030979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978830, 38.385052, 32.689228>,  <29.790953, 38.240894, 33.407722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978830, 38.385052, 32.689228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620789, 38.559875, 32.724461>,  <29.405964, 38.664772, 32.745602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620789, 38.559875, 32.724461>,  <29.978830, 38.385052, 32.689228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620789, 38.559875, 32.724461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331085, 0.783914, -0.525225,
		-0.298608, -0.440969, -0.846392,
		-0.895107, 0.437064, 0.088085,
		29.352257, 38.690994, 32.750885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841848, 38.584991, 32.039673>,  <29.978830, 38.385052, 32.689228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841848, 38.584991, 32.039673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594713, 38.787075, 32.280682>,  <29.446432, 38.908325, 32.425289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594713, 38.787075, 32.280682>,  <29.841848, 38.584991, 32.039673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594713, 38.787075, 32.280682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244763, 0.851772, -0.463222,
		-0.747240, -0.138721, -0.649915,
		-0.617838, 0.505213, 0.602524,
		29.409361, 38.938641, 32.461437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705597, 39.116978, 31.587652>,  <29.841848, 38.584991, 32.039673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705597, 39.116978, 31.587652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592604, 39.257023, 31.944891>,  <29.524807, 39.341049, 32.159233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592604, 39.257023, 31.944891>,  <29.705597, 39.116978, 31.587652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592604, 39.257023, 31.944891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286484, 0.919319, -0.269777,
		-0.915495, 0.179651, -0.359993,
		-0.282483, 0.350111, 0.893099,
		29.507858, 39.362057, 32.212822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430447, 39.785694, 31.449461>,  <29.705597, 39.116978, 31.587652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430447, 39.785694, 31.449461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510290, 39.785370, 31.841412>,  <29.558197, 39.785175, 32.076580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510290, 39.785370, 31.841412>,  <29.430447, 39.785694, 31.449461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510290, 39.785370, 31.841412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378823, 0.922309, -0.076407,
		-0.903686, 0.386451, 0.184409,
		0.199610, -0.000811, 0.979875,
		29.570173, 39.785126, 32.135376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078917, 40.397774, 31.666756>,  <29.430447, 39.785694, 31.449461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078917, 40.397774, 31.666756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379139, 40.291805, 31.908907>,  <29.559273, 40.228226, 32.054199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379139, 40.291805, 31.908907>,  <29.078917, 40.397774, 31.666756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379139, 40.291805, 31.908907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520100, 0.801951, -0.293889,
		-0.407628, 0.535438, 0.739693,
		0.750557, -0.264917, 0.605379,
		29.604305, 40.212330, 32.090519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223764, 41.040279, 32.093216>,  <29.078917, 40.397774, 31.666756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223764, 41.040279, 32.093216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530355, 40.793747, 32.165489>,  <29.714310, 40.645828, 32.208855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530355, 40.793747, 32.165489>,  <29.223764, 41.040279, 32.093216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530355, 40.793747, 32.165489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631661, 0.672449, -0.385766,
		0.116260, 0.409812, 0.904731,
		0.766477, -0.616333, 0.180683,
		29.760298, 40.608849, 32.219696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820026, 41.426041, 32.341549>,  <29.223764, 41.040279, 32.093216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820026, 41.426041, 32.341549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979471, 41.119644, 32.139812>,  <30.075138, 40.935806, 32.018768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979471, 41.119644, 32.139812>,  <29.820026, 41.426041, 32.341549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979471, 41.119644, 32.139812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663672, 0.620461, -0.417814,
		0.632968, -0.168173, 0.755691,
		0.398612, -0.765993, -0.504344,
		30.099054, 40.889847, 31.988510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622440, 41.399891, 32.334408>,  <29.820026, 41.426041, 32.341549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622440, 41.399891, 32.334408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493204, 41.191475, 32.018398>,  <30.415663, 41.066425, 31.828794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493204, 41.191475, 32.018398>,  <30.622440, 41.399891, 32.334408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493204, 41.191475, 32.018398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756540, 0.359324, -0.546383,
		0.568560, -0.774212, 0.278093,
		-0.323091, -0.521039, -0.790019,
		30.396276, 41.035164, 31.781393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036087, 41.085171, 31.926956>,  <30.622440, 41.399891, 32.334408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036087, 41.085171, 31.926956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758789, 41.131874, 31.642483>,  <30.592411, 41.159897, 31.471798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758789, 41.131874, 31.642483>,  <31.036087, 41.085171, 31.926956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758789, 41.131874, 31.642483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678360, 0.438968, -0.589181,
		0.243394, -0.890884, -0.383516,
		-0.693243, 0.116758, -0.711183,
		30.550816, 41.166901, 31.429129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660522, 40.883461, 31.795052>,  <31.036087, 41.085171, 31.926956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660522, 40.883461, 31.795052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891005, 41.076294, 31.531057>,  <32.029293, 41.191994, 31.372662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891005, 41.076294, 31.531057>,  <31.660522, 40.883461, 31.795052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891005, 41.076294, 31.531057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235117, -0.675605, -0.698769,
		-0.782755, 0.557809, -0.275941,
		0.576207, 0.482086, -0.659984,
		32.063866, 41.220921, 31.333063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317142, 41.119667, 31.229385>,  <31.660522, 40.883461, 31.795052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317142, 41.119667, 31.229385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689863, 41.014709, 31.129068>,  <31.913496, 40.951736, 31.068878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689863, 41.014709, 31.129068>,  <31.317142, 41.119667, 31.229385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689863, 41.014709, 31.129068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362574, -0.705073, -0.609436,
		-0.016917, 0.658805, -0.752124,
		0.931801, -0.262391, -0.250794,
		31.969404, 40.935993, 31.053831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276871, 40.894947, 30.486469>,  <31.317142, 41.119667, 31.229385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276871, 40.894947, 30.486469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619354, 40.755795, 30.639250>,  <31.824844, 40.672302, 30.730919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619354, 40.755795, 30.639250>,  <31.276871, 40.894947, 30.486469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619354, 40.755795, 30.639250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055867, -0.797322, -0.600963,
		0.513602, 0.493211, -0.702108,
		0.856208, -0.347880, 0.381952,
		31.876217, 40.651432, 30.753836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789070, 40.711193, 29.942900>,  <31.276871, 40.894947, 30.486469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789070, 40.711193, 29.942900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827446, 40.482635, 30.268921>,  <31.850471, 40.345501, 30.464533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827446, 40.482635, 30.268921>,  <31.789070, 40.711193, 29.942900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827446, 40.482635, 30.268921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045439, -0.815460, -0.577027,
		0.994350, 0.092395, -0.052271,
		0.095939, -0.571391, 0.815051,
		31.856228, 40.311218, 30.513435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283920, 40.258236, 29.892012>,  <31.789070, 40.711193, 29.942900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283920, 40.258236, 29.892012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067886, 40.043320, 30.151127>,  <31.938267, 39.914371, 30.306595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067886, 40.043320, 30.151127>,  <32.283920, 40.258236, 29.892012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067886, 40.043320, 30.151127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171644, -0.823841, -0.540208,
		0.823922, -0.180570, 0.537167,
		-0.540085, -0.537290, 0.647787,
		31.905861, 39.882133, 30.345463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662125, 39.735573, 30.172388>,  <32.283920, 40.258236, 29.892012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662125, 39.735573, 30.172388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273621, 39.658627, 30.116302>,  <32.040520, 39.612461, 30.082651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273621, 39.658627, 30.116302>,  <32.662125, 39.735573, 30.172388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273621, 39.658627, 30.116302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237984, -0.797345, -0.554621,
		-0.005110, -0.572047, 0.820205,
		-0.971256, -0.192361, -0.140213,
		31.982244, 39.600918, 30.074238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361912, 39.126369, 30.367458>,  <32.662125, 39.735573, 30.172388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361912, 39.126369, 30.367458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198990, 39.265247, 30.029570>,  <32.101238, 39.348576, 29.826836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198990, 39.265247, 30.029570>,  <32.361912, 39.126369, 30.367458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198990, 39.265247, 30.029570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440568, -0.735493, -0.514733,
		-0.800003, -0.581810, 0.146603,
		-0.407302, 0.347199, -0.844723,
		32.076797, 39.369408, 29.776154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176579, 38.649181, 30.023338>,  <32.361912, 39.126369, 30.367458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176579, 38.649181, 30.023338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192688, 38.912132, 29.722345>,  <32.202354, 39.069904, 29.541750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192688, 38.912132, 29.722345>,  <32.176579, 38.649181, 30.023338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192688, 38.912132, 29.722345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317678, -0.722439, -0.614135,
		-0.947343, -0.214315, -0.237929,
		0.040271, 0.657381, -0.752481,
		32.204769, 39.109348, 29.496601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632557, 38.291836, 30.350311>,  <32.176579, 38.649181, 30.023338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632557, 38.291836, 30.350311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314259, 38.162323, 30.145584>,  <31.123280, 38.084618, 30.022747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314259, 38.162323, 30.145584>,  <31.632557, 38.291836, 30.350311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314259, 38.162323, 30.145584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333428, -0.471282, 0.816529,
		-0.505584, 0.820403, 0.267064,
		-0.795745, -0.323777, -0.511818,
		31.075535, 38.065189, 29.992039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046679, 38.336208, 30.815638>,  <31.632557, 38.291836, 30.350311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046679, 38.336208, 30.815638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942377, 38.078293, 30.528234>,  <30.879797, 37.923542, 30.355793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942377, 38.078293, 30.528234>,  <31.046679, 38.336208, 30.815638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942377, 38.078293, 30.528234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522815, -0.531360, 0.666574,
		-0.811586, 0.549459, -0.198552,
		-0.260753, -0.644788, -0.718510,
		30.864151, 37.884857, 30.312681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402359, 38.259026, 30.894159>,  <31.046679, 38.336208, 30.815638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402359, 38.259026, 30.894159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539005, 37.939987, 30.695305>,  <30.620993, 37.748566, 30.575993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539005, 37.939987, 30.695305>,  <30.402359, 38.259026, 30.894159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539005, 37.939987, 30.695305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357207, -0.599450, 0.716284,
		-0.869311, -0.067113, -0.489688,
		0.341616, -0.797593, -0.497135,
		30.641489, 37.700710, 30.546164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818621, 37.719707, 30.868576>,  <30.402359, 38.259026, 30.894159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818621, 37.719707, 30.868576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131687, 37.488678, 30.775766>,  <30.319527, 37.350060, 30.720081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131687, 37.488678, 30.775766>,  <29.818621, 37.719707, 30.868576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131687, 37.488678, 30.775766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362596, -0.726058, 0.584263,
		-0.505920, -0.373153, -0.777690,
		0.782668, -0.577578, -0.232023,
		30.366488, 37.315403, 30.706160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558178, 37.018890, 30.739143>,  <29.818621, 37.719707, 30.868576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558178, 37.018890, 30.739143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943935, 36.942024, 30.811821>,  <30.175390, 36.895905, 30.855427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943935, 36.942024, 30.811821>,  <29.558178, 37.018890, 30.739143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943935, 36.942024, 30.811821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230841, -0.946908, 0.223779,
		0.129046, -0.257754, -0.957554,
		0.964396, -0.192165, 0.181695,
		30.233253, 36.884377, 30.866329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622885, 36.376560, 30.514874>,  <29.558178, 37.018890, 30.739143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622885, 36.376560, 30.514874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947298, 36.413452, 30.745947>,  <30.141947, 36.435589, 30.884590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947298, 36.413452, 30.745947>,  <29.622885, 36.376560, 30.514874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947298, 36.413452, 30.745947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223033, -0.864159, 0.451093,
		0.540814, -0.494694, -0.680292,
		0.811034, 0.092230, 0.577683,
		30.190609, 36.441120, 30.919252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986904, 35.790165, 30.461493>,  <29.622885, 36.376560, 30.514874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986904, 35.790165, 30.461493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138382, 35.946064, 30.797276>,  <30.229269, 36.039604, 30.998745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138382, 35.946064, 30.797276>,  <29.986904, 35.790165, 30.461493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138382, 35.946064, 30.797276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147315, -0.870063, 0.470412,
		0.913723, -0.301807, -0.272072,
		0.378694, 0.389746, 0.839457,
		30.251989, 36.062988, 31.049112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201818, 35.273949, 30.757322>,  <29.986904, 35.790165, 30.461493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201818, 35.273949, 30.757322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203541, 35.528286, 31.066046>,  <30.204575, 35.680889, 31.251280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203541, 35.528286, 31.066046>,  <30.201818, 35.273949, 30.757322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203541, 35.528286, 31.066046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042073, -0.771017, 0.635424,
		0.999105, -0.035210, 0.023430,
		0.004308, 0.635841, 0.771808,
		30.204834, 35.719040, 31.297588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684414, 34.955311, 31.250647>,  <30.201818, 35.273949, 30.757322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684414, 34.955311, 31.250647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436003, 35.213158, 31.428991>,  <30.286957, 35.367867, 31.535999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436003, 35.213158, 31.428991>,  <30.684414, 34.955311, 31.250647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436003, 35.213158, 31.428991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121982, -0.641413, 0.757436,
		0.774239, 0.416001, 0.476967,
		-0.621027, 0.644618, 0.445863,
		30.249695, 35.406544, 31.562750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857128, 34.916050, 31.907036>,  <30.684414, 34.955311, 31.250647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857128, 34.916050, 31.907036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483408, 35.057732, 31.890919>,  <30.259176, 35.142742, 31.881248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483408, 35.057732, 31.890919>,  <30.857128, 34.916050, 31.907036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483408, 35.057732, 31.890919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280654, -0.661145, 0.695788,
		0.219810, 0.661383, 0.717116,
		-0.934300, 0.354203, -0.040294,
		30.203117, 35.163994, 31.878830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728477, 35.113022, 32.582966>,  <30.857128, 34.916050, 31.907036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728477, 35.113022, 32.582966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378042, 35.057751, 32.398197>,  <30.167780, 35.024590, 32.287334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378042, 35.057751, 32.398197>,  <30.728477, 35.113022, 32.582966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378042, 35.057751, 32.398197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352925, -0.468962, 0.809641,
		-0.328498, 0.872343, 0.362087,
		-0.876090, -0.138176, -0.461924,
		30.115215, 35.016296, 32.259621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211243, 35.228222, 33.087254>,  <30.728477, 35.113022, 32.582966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211243, 35.228222, 33.087254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005529, 35.045177, 32.797123>,  <29.882101, 34.935352, 32.623043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005529, 35.045177, 32.797123>,  <30.211243, 35.228222, 33.087254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005529, 35.045177, 32.797123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535510, -0.489261, 0.688370,
		-0.669881, 0.742439, 0.006565,
		-0.514285, -0.457611, -0.725330,
		29.851244, 34.907894, 32.579525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527433, 35.295601, 33.193218>,  <30.211243, 35.228222, 33.087254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527433, 35.295601, 33.193218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514385, 34.964310, 32.969444>,  <29.506556, 34.765533, 32.835178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514385, 34.964310, 32.969444>,  <29.527433, 35.295601, 33.193218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514385, 34.964310, 32.969444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576950, -0.441455, 0.687202,
		-0.816128, 0.345187, -0.463446,
		-0.032622, -0.828229, -0.559439,
		29.504599, 34.715839, 32.801613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804338, 35.129425, 33.131149>,  <29.527433, 35.295601, 33.193218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804338, 35.129425, 33.131149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016344, 34.800331, 33.048985>,  <29.143547, 34.602875, 32.999687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016344, 34.800331, 33.048985>,  <28.804338, 35.129425, 33.131149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016344, 34.800331, 33.048985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516088, -0.505167, 0.691708,
		-0.672859, -0.260605, -0.692348,
		0.530014, -0.822734, -0.205411,
		29.175348, 34.553513, 32.987362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394150, 34.579479, 32.908489>,  <28.804338, 35.129425, 33.131149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394150, 34.579479, 32.908489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705029, 34.355755, 33.023823>,  <28.891556, 34.221519, 33.093021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705029, 34.355755, 33.023823>,  <28.394150, 34.579479, 32.908489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705029, 34.355755, 33.023823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620897, -0.607180, 0.495801,
		-0.102237, -0.564360, -0.819173,
		0.777196, -0.559312, 0.288333,
		28.938187, 34.187962, 33.110321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179060, 33.937748, 32.813217>,  <28.394150, 34.579479, 32.908489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179060, 33.937748, 32.813217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475796, 33.903954, 33.079311>,  <28.653837, 33.883678, 33.238968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475796, 33.903954, 33.079311>,  <28.179060, 33.937748, 32.813217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475796, 33.903954, 33.079311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573533, -0.593970, 0.564145,
		0.347466, -0.800038, -0.489087,
		0.741841, -0.084486, 0.665233,
		28.698347, 33.878609, 33.278881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072260, 33.174313, 33.033710>,  <28.179060, 33.937748, 32.813217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072260, 33.174313, 33.033710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331718, 33.325459, 33.297977>,  <28.487392, 33.416145, 33.456535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331718, 33.325459, 33.297977>,  <28.072260, 33.174313, 33.033710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331718, 33.325459, 33.297977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328853, -0.643689, 0.691029,
		0.686378, -0.665494, -0.293263,
		0.648645, 0.377867, 0.660664,
		28.526312, 33.438820, 33.496178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518393, 32.607315, 33.285038>,  <28.072260, 33.174313, 33.033710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518393, 32.607315, 33.285038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528561, 32.905727, 33.551208>,  <28.534662, 33.084774, 33.710911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528561, 32.905727, 33.551208>,  <28.518393, 32.607315, 33.285038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528561, 32.905727, 33.551208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255346, -0.638717, 0.725836,
		0.966515, -0.188367, 0.174258,
		0.025422, 0.746028, 0.665429,
		28.536188, 33.129536, 33.750835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954138, 32.373627, 33.853367>,  <28.518393, 32.607315, 33.285038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954138, 32.373627, 33.853367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747208, 32.675777, 34.014256>,  <28.623051, 32.857067, 34.110790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747208, 32.675777, 34.014256>,  <28.954138, 32.373627, 33.853367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747208, 32.675777, 34.014256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273295, -0.591215, 0.758798,
		0.810979, 0.282618, 0.512289,
		-0.517323, 0.755376, 0.402225,
		28.592010, 32.902390, 34.134922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100845, 32.295135, 34.562920>,  <28.954138, 32.373627, 33.853367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100845, 32.295135, 34.562920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757504, 32.500183, 34.554466>,  <28.551498, 32.623211, 34.549393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757504, 32.500183, 34.554466>,  <29.100845, 32.295135, 34.562920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757504, 32.500183, 34.554466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261402, -0.401519, 0.877754,
		0.441469, 0.758949, 0.478646,
		-0.858355, 0.512620, -0.021133,
		28.499996, 32.653969, 34.548126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995550, 32.664154, 35.201790>,  <29.100845, 32.295135, 34.562920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995550, 32.664154, 35.201790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633060, 32.590321, 35.049641>,  <28.415565, 32.546021, 34.958351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633060, 32.590321, 35.049641>,  <28.995550, 32.664154, 35.201790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633060, 32.590321, 35.049641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268996, -0.442364, 0.855544,
		-0.326182, 0.877635, 0.351229,
		-0.906226, -0.184584, -0.380371,
		28.361193, 32.534946, 34.935528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544773, 32.836086, 35.762642>,  <28.995550, 32.664154, 35.201790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544773, 32.836086, 35.762642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349300, 32.553108, 35.966885>,  <29.232016, 32.383324, 36.089428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349300, 32.553108, 35.966885>,  <29.544773, 32.836086, 35.762642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349300, 32.553108, 35.966885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591390, 0.161680, 0.790011,
		-0.641441, 0.688031, 0.339364,
		-0.488683, -0.707441, 0.510603,
		29.202696, 32.340878, 36.120064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249344, 33.201897, 35.752274>,  <29.544773, 32.836086, 35.762642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249344, 33.201897, 35.752274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540524, 33.163826, 35.480679>,  <30.715231, 33.140984, 35.317722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540524, 33.163826, 35.480679>,  <30.249344, 33.201897, 35.752274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540524, 33.163826, 35.480679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658451, 0.373106, 0.653631,
		0.191127, -0.922894, 0.334271,
		0.727951, -0.095175, -0.678991,
		30.758909, 33.135273, 35.276981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873247, 32.817059, 36.036682>,  <30.249344, 33.201897, 35.752274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873247, 32.817059, 36.036682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003389, 33.051003, 35.739475>,  <31.081474, 33.191368, 35.561150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003389, 33.051003, 35.739475>,  <30.873247, 32.817059, 36.036682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003389, 33.051003, 35.739475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622403, 0.459096, 0.633913,
		0.711870, -0.668705, -0.214651,
		0.325355, 0.584863, -0.743021,
		31.100996, 33.226460, 35.516567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592226, 32.839199, 35.975693>,  <30.873247, 32.817059, 36.036682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592226, 32.839199, 35.975693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436890, 33.181171, 35.838120>,  <31.343687, 33.386353, 35.755577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436890, 33.181171, 35.838120>,  <31.592226, 32.839199, 35.975693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436890, 33.181171, 35.838120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411977, 0.494917, 0.765070,
		0.824298, 0.155416, -0.544407,
		-0.388341, 0.854928, -0.343931,
		31.320387, 33.437649, 35.734940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058346, 33.266579, 36.181015>,  <31.592226, 32.839199, 35.975693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058346, 33.266579, 36.181015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747648, 33.494862, 36.074459>,  <31.561230, 33.631832, 36.010525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747648, 33.494862, 36.074459>,  <32.058346, 33.266579, 36.181015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747648, 33.494862, 36.074459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257381, 0.673670, 0.692765,
		0.574826, 0.469536, -0.670158,
		-0.776743, 0.570705, -0.266393,
		31.514626, 33.666073, 35.994541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225040, 33.922779, 35.846626>,  <32.058346, 33.266579, 36.181015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225040, 33.922779, 35.846626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879808, 33.969910, 36.043079>,  <31.672668, 33.998188, 36.160950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879808, 33.969910, 36.043079>,  <32.225040, 33.922779, 35.846626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879808, 33.969910, 36.043079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363617, 0.819847, 0.442305,
		-0.350538, 0.560328, -0.750437,
		-0.863079, 0.117828, 0.491132,
		31.620884, 34.005257, 36.190418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882523, 34.658482, 35.651802>,  <32.225040, 33.922779, 35.846626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882523, 34.658482, 35.651802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888514, 34.449589, 35.992870>,  <31.892109, 34.324253, 36.197510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888514, 34.449589, 35.992870>,  <31.882523, 34.658482, 35.651802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888514, 34.449589, 35.992870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691201, 0.621607, 0.368572,
		-0.722507, 0.583847, 0.370278,
		0.014977, -0.522233, 0.852671,
		31.893007, 34.292919, 36.248672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757662, 35.121307, 36.287327>,  <31.882523, 34.658482, 35.651802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757662, 35.121307, 36.287327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970659, 34.799061, 36.391197>,  <32.098457, 34.605713, 36.453518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970659, 34.799061, 36.391197>,  <31.757662, 35.121307, 36.287327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970659, 34.799061, 36.391197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610405, 0.578027, 0.541562,
		-0.586392, -0.129871, 0.799549,
		0.532494, -0.805616, 0.259677,
		32.130409, 34.557377, 36.469101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742090, 34.966553, 37.114628>,  <31.757662, 35.121307, 36.287327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742090, 34.966553, 37.114628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072628, 34.809498, 36.953136>,  <32.270950, 34.715267, 36.856243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072628, 34.809498, 36.953136>,  <31.742090, 34.966553, 37.114628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072628, 34.809498, 36.953136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556187, 0.681495, 0.475626,
		0.088390, -0.617578, 0.781527,
		0.826343, -0.392635, -0.403726,
		32.320530, 34.691708, 36.832020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290531, 35.040203, 37.645596>,  <31.742090, 34.966553, 37.114628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290531, 35.040203, 37.645596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481499, 34.981941, 37.298988>,  <32.596081, 34.946983, 37.091022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481499, 34.981941, 37.298988>,  <32.290531, 35.040203, 37.645596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481499, 34.981941, 37.298988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725893, 0.621077, 0.295539,
		0.495128, -0.770096, 0.402245,
		0.477419, -0.145657, -0.866519,
		32.624725, 34.938244, 37.039032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039833, 34.980186, 37.858582>,  <32.290531, 35.040203, 37.645596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039833, 34.980186, 37.858582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015701, 35.070137, 37.469574>,  <33.001225, 35.124107, 37.236168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015701, 35.070137, 37.469574>,  <33.039833, 34.980186, 37.858582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015701, 35.070137, 37.469574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808014, 0.583044, 0.084694,
		0.586066, -0.780699, -0.216875,
		-0.060327, 0.224874, -0.972519,
		32.997604, 35.137600, 37.177818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706577, 34.847820, 37.608212>,  <33.039833, 34.980186, 37.858582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706577, 34.847820, 37.608212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511265, 35.082783, 37.350052>,  <33.394077, 35.223759, 37.195156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511265, 35.082783, 37.350052>,  <33.706577, 34.847820, 37.608212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511265, 35.082783, 37.350052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773432, 0.633825, -0.008269,
		0.404213, -0.503210, -0.763801,
		-0.488277, 0.587406, -0.645399,
		33.364780, 35.259003, 37.156433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196030, 34.935810, 37.144878>,  <33.706577, 34.847820, 37.608212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196030, 34.935810, 37.144878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944061, 35.231998, 37.051155>,  <33.792881, 35.409710, 36.994919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944061, 35.231998, 37.051155>,  <34.196030, 34.935810, 37.144878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944061, 35.231998, 37.051155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750962, 0.657663, 0.059463,
		0.198129, -0.138502, -0.970341,
		-0.629921, 0.740471, -0.234311,
		33.755085, 35.454140, 36.980862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537842, 35.371758, 36.581188>,  <34.196030, 34.935810, 37.144878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537842, 35.371758, 36.581188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282387, 35.580448, 36.807442>,  <34.129116, 35.705662, 36.943195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282387, 35.580448, 36.807442>,  <34.537842, 35.371758, 36.581188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282387, 35.580448, 36.807442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762482, 0.528156, 0.373728,
		-0.103760, 0.669964, -0.735107,
		-0.638635, 0.521728, 0.565637,
		34.090797, 35.736965, 36.977131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870441, 35.902008, 36.677670>,  <34.537842, 35.371758, 36.581188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870441, 35.902008, 36.677670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584251, 35.937706, 36.954838>,  <34.412537, 35.959126, 37.121140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584251, 35.937706, 36.954838>,  <34.870441, 35.902008, 36.677670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584251, 35.937706, 36.954838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604024, 0.577413, 0.549317,
		-0.351080, 0.811561, -0.467025,
		-0.715470, 0.089240, 0.692920,
		34.369610, 35.964478, 37.162712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974236, 36.609219, 36.930374>,  <34.870441, 35.902008, 36.677670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974236, 36.609219, 36.930374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759274, 36.446762, 37.226006>,  <34.630295, 36.349289, 37.403385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759274, 36.446762, 37.226006>,  <34.974236, 36.609219, 36.930374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759274, 36.446762, 37.226006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676967, 0.314859, 0.665266,
		-0.502898, 0.857854, 0.105736,
		-0.537409, -0.406141, 0.739081,
		34.598049, 36.324921, 37.447731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959595, 37.070065, 37.496792>,  <34.974236, 36.609219, 36.930374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959595, 37.070065, 37.496792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857384, 36.742981, 37.703117>,  <34.796059, 36.546730, 37.826912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857384, 36.742981, 37.703117>,  <34.959595, 37.070065, 37.496792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857384, 36.742981, 37.703117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392612, 0.399791, 0.828265,
		-0.883495, 0.414156, 0.218885,
		-0.255523, -0.817705, 0.515816,
		34.780727, 36.497669, 37.857861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681011, 37.347801, 38.164547>,  <34.959595, 37.070065, 37.496792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681011, 37.347801, 38.164547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751423, 36.960865, 38.237503>,  <34.793671, 36.728703, 38.281277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751423, 36.960865, 38.237503>,  <34.681011, 37.347801, 38.164547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751423, 36.960865, 38.237503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335423, 0.233135, 0.912765,
		-0.925476, -0.099495, 0.365506,
		0.176028, -0.967341, 0.182388,
		34.804230, 36.670662, 38.292221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330891, 37.120510, 38.746120>,  <34.681011, 37.347801, 38.164547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330891, 37.120510, 38.746120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644894, 36.875458, 38.709347>,  <34.833294, 36.728428, 38.687283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644894, 36.875458, 38.709347>,  <34.330891, 37.120510, 38.746120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644894, 36.875458, 38.709347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283657, 0.223542, 0.932506,
		-0.550729, -0.758100, 0.349258,
		0.785007, -0.612628, -0.091930,
		34.880394, 36.691669, 38.681767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304459, 36.776558, 39.339489>,  <34.330891, 37.120510, 38.746120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304459, 36.776558, 39.339489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680561, 36.736740, 39.209251>,  <34.906223, 36.712849, 39.131111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680561, 36.736740, 39.209251>,  <34.304459, 36.776558, 39.339489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680561, 36.736740, 39.209251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337192, 0.139906, 0.930982,
		-0.047119, -0.985149, 0.165112,
		0.940256, -0.099541, -0.325592,
		34.962639, 36.706879, 39.111572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566158, 36.405231, 39.886429>,  <34.304459, 36.776558, 39.339489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566158, 36.405231, 39.886429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908012, 36.522568, 39.715054>,  <35.113125, 36.592968, 39.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908012, 36.522568, 39.715054>,  <34.566158, 36.405231, 39.886429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908012, 36.522568, 39.715054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382242, 0.203008, 0.901487,
		0.351422, -0.934204, 0.061368,
		0.854631, 0.293344, -0.428434,
		35.164402, 36.610569, 39.586525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111031, 36.089378, 40.257282>,  <34.566158, 36.405231, 39.886429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111031, 36.089378, 40.257282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261425, 36.424229, 40.098362>,  <35.351662, 36.625141, 40.003010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261425, 36.424229, 40.098362>,  <35.111031, 36.089378, 40.257282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261425, 36.424229, 40.098362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296967, 0.297289, 0.907430,
		0.877749, -0.459168, -0.136822,
		0.375988, 0.837128, -0.397303,
		35.374222, 36.675365, 39.979172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812698, 36.119530, 40.564823>,  <35.111031, 36.089378, 40.257282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812698, 36.119530, 40.564823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740459, 36.488571, 40.428478>,  <35.697117, 36.709995, 40.346672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740459, 36.488571, 40.428478>,  <35.812698, 36.119530, 40.564823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740459, 36.488571, 40.428478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282136, 0.380588, 0.880654,
		0.942222, 0.062877, -0.329034,
		-0.180599, 0.922605, -0.340858,
		35.686279, 36.765354, 40.326221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341034, 36.536152, 40.795704>,  <35.812698, 36.119530, 40.564823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341034, 36.536152, 40.795704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075214, 36.818867, 40.698681>,  <35.915722, 36.988495, 40.640465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075214, 36.818867, 40.698681>,  <36.341034, 36.536152, 40.795704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075214, 36.818867, 40.698681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111632, 0.414863, 0.903010,
		0.738862, 0.573014, -0.354596,
		-0.664546, 0.706784, -0.242560,
		35.875851, 37.030903, 40.625912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690224, 37.190792, 41.046528>,  <36.341034, 36.536152, 40.795704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690224, 37.190792, 41.046528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310574, 37.299252, 40.982471>,  <36.082783, 37.364326, 40.944038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310574, 37.299252, 40.982471>,  <36.690224, 37.190792, 41.046528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310574, 37.299252, 40.982471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005347, 0.494594, 0.869108,
		0.314860, 0.825747, -0.467980,
		-0.949123, 0.271145, -0.160143,
		36.025837, 37.380596, 40.934429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751621, 37.856457, 41.217342>,  <36.690224, 37.190792, 41.046528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751621, 37.856457, 41.217342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365887, 37.751556, 41.231674>,  <36.134445, 37.688618, 41.240273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365887, 37.751556, 41.231674>,  <36.751621, 37.856457, 41.217342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365887, 37.751556, 41.231674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153501, 0.664381, 0.731461,
		-0.215633, 0.699872, -0.680942,
		-0.964334, -0.262252, 0.035831,
		36.076588, 37.672882, 41.242424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296833, 38.427944, 41.097191>,  <36.751621, 37.856457, 41.217342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296833, 38.427944, 41.097191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058422, 38.169582, 41.288006>,  <35.915375, 38.014565, 41.402493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058422, 38.169582, 41.288006>,  <36.296833, 38.427944, 41.097191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058422, 38.169582, 41.288006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130307, 0.664019, 0.736273,
		-0.792321, 0.376677, -0.479939,
		-0.596026, -0.645904, 0.477033,
		35.879616, 37.975811, 41.431114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694462, 38.762993, 41.320198>,  <36.296833, 38.427944, 41.097191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694462, 38.762993, 41.320198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701778, 38.441078, 41.557510>,  <35.706169, 38.247929, 41.699898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701778, 38.441078, 41.557510>,  <35.694462, 38.762993, 41.320198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701778, 38.441078, 41.557510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144460, 0.585025, 0.798046,
		-0.989342, -0.100299, -0.105562,
		0.018287, -0.804789, 0.593279,
		35.707264, 38.199642, 41.735493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063053, 38.769199, 41.845024>,  <35.694462, 38.762993, 41.320198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063053, 38.769199, 41.845024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345261, 38.537201, 42.007927>,  <35.514584, 38.398003, 42.105667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345261, 38.537201, 42.007927>,  <35.063053, 38.769199, 41.845024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345261, 38.537201, 42.007927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187448, 0.401470, 0.896485,
		-0.683455, -0.708823, 0.174525,
		0.705516, -0.579993, 0.407254,
		35.556915, 38.363205, 42.130104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767159, 38.509335, 42.401077>,  <35.063053, 38.769199, 41.845024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767159, 38.509335, 42.401077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135784, 38.384323, 42.493206>,  <35.356960, 38.309315, 42.548485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135784, 38.384323, 42.493206>,  <34.767159, 38.509335, 42.401077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135784, 38.384323, 42.493206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196654, 0.135738, 0.971032,
		-0.334744, -0.940158, 0.063630,
		0.921561, -0.312534, 0.230323,
		35.412254, 38.290562, 42.562302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696037, 38.045639, 42.980724>,  <34.767159, 38.509335, 42.401077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696037, 38.045639, 42.980724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079945, 38.157494, 42.991001>,  <35.310287, 38.224606, 42.997166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079945, 38.157494, 42.991001>,  <34.696037, 38.045639, 42.980724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079945, 38.157494, 42.991001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098495, 0.249554, 0.963339,
		0.262961, -0.927110, 0.267055,
		0.959766, 0.279624, 0.025693,
		35.367874, 38.241383, 42.998707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135445, 37.678829, 43.471077>,  <34.696037, 38.045639, 42.980724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135445, 37.678829, 43.471077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294510, 38.042183, 43.419369>,  <35.389950, 38.260193, 43.388344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294510, 38.042183, 43.419369>,  <35.135445, 37.678829, 43.471077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294510, 38.042183, 43.419369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012328, 0.146169, 0.989183,
		0.917449, -0.391766, 0.069324,
		0.397661, 0.908380, -0.129272,
		35.413807, 38.314697, 43.380589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367031, 37.776382, 44.050877>,  <35.135445, 37.678829, 43.471077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367031, 37.776382, 44.050877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411320, 38.141907, 43.894569>,  <35.437893, 38.361221, 43.800785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411320, 38.141907, 43.894569>,  <35.367031, 37.776382, 44.050877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411320, 38.141907, 43.894569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009183, 0.392224, 0.919824,
		0.993809, -0.105429, 0.035035,
		0.110718, 0.913808, -0.390764,
		35.444534, 38.416050, 43.777340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892395, 38.040020, 44.422546>,  <35.367031, 37.776382, 44.050877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892395, 38.040020, 44.422546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690056, 38.349133, 44.269222>,  <35.568653, 38.534599, 44.177227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690056, 38.349133, 44.269222>,  <35.892395, 38.040020, 44.422546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690056, 38.349133, 44.269222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098012, 0.389986, 0.915590,
		0.857039, 0.500715, -0.121530,
		-0.505844, 0.772785, -0.383309,
		35.538303, 38.580967, 44.154228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146095, 38.730766, 44.564247>,  <35.892395, 38.040020, 44.422546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146095, 38.730766, 44.564247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765903, 38.831631, 44.491573>,  <35.537788, 38.892151, 44.447968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765903, 38.831631, 44.491573>,  <36.146095, 38.730766, 44.564247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765903, 38.831631, 44.491573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084750, 0.352150, 0.932099,
		0.299021, 0.901335, -0.313340,
		-0.950476, 0.252161, -0.181688,
		35.480762, 38.907280, 44.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959175, 39.471428, 44.589146>,  <36.146095, 38.730766, 44.564247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959175, 39.471428, 44.589146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626919, 39.274731, 44.693623>,  <35.427563, 39.156712, 44.756310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626919, 39.274731, 44.693623>,  <35.959175, 39.471428, 44.589146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626919, 39.274731, 44.693623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070034, 0.373094, 0.925146,
		-0.552381, 0.786760, -0.275470,
		-0.830644, -0.491741, 0.261190,
		35.377724, 39.127209, 44.771980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521912, 40.047054, 44.822792>,  <35.959175, 39.471428, 44.589146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521912, 40.047054, 44.822792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404846, 39.700558, 44.984764>,  <35.334606, 39.492661, 45.081947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404846, 39.700558, 44.984764>,  <35.521912, 40.047054, 44.822792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404846, 39.700558, 44.984764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147484, 0.377515, 0.914183,
		-0.944773, 0.327269, 0.017272,
		-0.292663, -0.866243, 0.404933,
		35.317047, 39.440685, 45.106243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169201, 40.235889, 45.314014>,  <35.521912, 40.047054, 44.822792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169201, 40.235889, 45.314014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184322, 39.854927, 45.435013>,  <35.193394, 39.626350, 45.507610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184322, 39.854927, 45.435013>,  <35.169201, 40.235889, 45.314014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184322, 39.854927, 45.435013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006062, 0.302923, 0.952996,
		-0.999267, -0.034194, 0.017225,
		0.037805, -0.952401, 0.302494,
		35.195663, 39.569206, 45.525761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724571, 40.196663, 45.787006>,  <35.169201, 40.235889, 45.314014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724571, 40.196663, 45.787006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973297, 39.893044, 45.864155>,  <35.122532, 39.710873, 45.910442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973297, 39.893044, 45.864155>,  <34.724571, 40.196663, 45.787006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973297, 39.893044, 45.864155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087946, 0.312389, 0.945875,
		-0.778211, -0.571196, 0.261003,
		0.621814, -0.759045, 0.192870,
		35.159840, 39.665329, 45.922016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463207, 39.901043, 46.342106>,  <34.724571, 40.196663, 45.787006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463207, 39.901043, 46.342106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844955, 39.782188, 46.354061>,  <35.074005, 39.710876, 46.361233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844955, 39.782188, 46.354061>,  <34.463207, 39.901043, 46.342106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844955, 39.782188, 46.354061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062617, 0.296950, 0.952838,
		-0.291998, -0.907485, 0.302006,
		0.954367, -0.297138, 0.029885,
		35.131264, 39.693047, 46.363026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600380, 39.599968, 47.020393>,  <34.463207, 39.901043, 46.342106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600380, 39.599968, 47.020393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982750, 39.631771, 46.907330>,  <35.212170, 39.650852, 46.839493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982750, 39.631771, 46.907330>,  <34.600380, 39.599968, 47.020393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982750, 39.631771, 46.907330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253306, 0.263548, 0.930794,
		0.148497, -0.961364, 0.231792,
		0.955921, 0.079506, -0.282655,
		35.269527, 39.655624, 46.822533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015232, 39.249058, 47.498215>,  <34.600380, 39.599968, 47.020393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015232, 39.249058, 47.498215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285641, 39.488335, 47.326096>,  <35.447887, 39.631901, 47.222824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285641, 39.488335, 47.326096>,  <35.015232, 39.249058, 47.498215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285641, 39.488335, 47.326096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153501, 0.456816, 0.876217,
		0.720713, -0.658396, 0.216995,
		0.676025, 0.598192, -0.430298,
		35.488449, 39.667793, 47.197006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634663, 39.241978, 47.995205>,  <35.015232, 39.249058, 47.498215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634663, 39.241978, 47.995205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691936, 39.579540, 47.788395>,  <35.726299, 39.782078, 47.664307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691936, 39.579540, 47.788395>,  <35.634663, 39.241978, 47.995205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691936, 39.579540, 47.788395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021765, 0.524970, 0.850842,
		0.989456, -0.110575, 0.093536,
		0.143186, 0.843907, -0.517028,
		35.734894, 39.832714, 47.633286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124161, 39.619381, 48.429825>,  <35.634663, 39.241978, 47.995205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124161, 39.619381, 48.429825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949596, 39.877724, 48.179253>,  <35.844856, 40.032730, 48.028912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949596, 39.877724, 48.179253>,  <36.124161, 39.619381, 48.429825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949596, 39.877724, 48.179253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083892, 0.722401, 0.686367,
		0.895827, 0.246987, -0.369448,
		-0.436413, 0.645859, -0.626426,
		35.818672, 40.071480, 47.991325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529350, 40.193775, 48.284031>,  <36.124161, 39.619381, 48.429825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529350, 40.193775, 48.284031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144409, 40.291767, 48.236942>,  <35.913445, 40.350563, 48.208691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144409, 40.291767, 48.236942>,  <36.529350, 40.193775, 48.284031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144409, 40.291767, 48.236942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105768, 0.736533, 0.668081,
		0.250368, 0.630481, -0.734717,
		-0.962356, 0.244976, -0.117720,
		35.855701, 40.365261, 48.201626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582386, 40.799892, 48.350216>,  <36.529350, 40.193775, 48.284031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582386, 40.799892, 48.350216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182732, 40.815708, 48.345222>,  <35.942940, 40.825199, 48.342224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182732, 40.815708, 48.345222>,  <36.582386, 40.799892, 48.350216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182732, 40.815708, 48.345222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026564, 0.841625, 0.539409,
		0.031835, 0.538614, -0.841951,
		-0.999140, 0.039538, -0.012486,
		35.882988, 40.827568, 48.341476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389194, 41.490887, 48.227505>,  <36.582386, 40.799892, 48.350216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389194, 41.490887, 48.227505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074680, 41.342201, 48.424923>,  <35.885971, 41.252991, 48.543373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074680, 41.342201, 48.424923>,  <36.389194, 41.490887, 48.227505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074680, 41.342201, 48.424923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037511, 0.826036, 0.562368,
		-0.616728, 0.423666, -0.663440,
		-0.786282, -0.371715, 0.493547,
		35.838795, 41.230686, 48.572987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053673, 42.043934, 48.451752>,  <36.389194, 41.490887, 48.227505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053673, 42.043934, 48.451752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846817, 41.789616, 48.680950>,  <35.722702, 41.637024, 48.818470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846817, 41.789616, 48.680950>,  <36.053673, 42.043934, 48.451752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846817, 41.789616, 48.680950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164307, 0.730763, 0.662562,
		-0.839982, 0.248490, -0.482373,
		-0.517140, -0.635798, 0.572999,
		35.691673, 41.598877, 48.852848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418510, 42.323368, 48.649670>,  <36.053673, 42.043934, 48.451752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418510, 42.323368, 48.649670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524334, 42.065502, 48.936562>,  <35.587826, 41.910782, 49.108696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524334, 42.065502, 48.936562>,  <35.418510, 42.323368, 48.649670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524334, 42.065502, 48.936562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202697, 0.689947, 0.694901,
		-0.942827, -0.329222, 0.051859,
		0.264556, -0.644660, 0.717233,
		35.603703, 41.872105, 49.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973362, 42.232418, 49.178337>,  <35.418510, 42.323368, 48.649670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973362, 42.232418, 49.178337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311810, 42.117481, 49.357903>,  <35.514877, 42.048519, 49.465641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311810, 42.117481, 49.357903>,  <34.973362, 42.232418, 49.178337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311810, 42.117481, 49.357903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190773, 0.623175, 0.758458,
		-0.497683, -0.727385, 0.472464,
		0.846119, -0.287338, 0.448910,
		35.565643, 42.031281, 49.492577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935047, 41.760693, 49.936943>,  <34.973362, 42.232418, 49.178337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935047, 41.760693, 49.936943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214752, 42.031845, 49.846153>,  <35.382576, 42.194534, 49.791679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214752, 42.031845, 49.846153>,  <34.935047, 41.760693, 49.936943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214752, 42.031845, 49.846153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367468, 0.613191, 0.699259,
		0.613191, -0.405558, 0.677878,
		-0.699259, -0.677878, 0.226974,
		35.424530, 42.235210, 49.778061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345959, 41.950989, 50.468563>,  <34.935047, 41.760693, 49.936943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345959, 41.950989, 50.468563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343239, 42.281078, 50.242653>,  <35.341606, 42.479130, 50.107109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343239, 42.281078, 50.242653>,  <35.345959, 41.950989, 50.468563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343239, 42.281078, 50.242653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555806, 0.466390, 0.688157,
		0.831285, 0.318580, 0.455492,
		-0.006797, 0.825220, -0.564771,
		35.341198, 42.528645, 50.073223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604416, 42.515156, 50.846249>,  <35.345959, 41.950989, 50.468563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604416, 42.515156, 50.846249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368923, 42.676376, 50.565979>,  <35.227627, 42.773109, 50.397816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368923, 42.676376, 50.565979>,  <35.604416, 42.515156, 50.846249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368923, 42.676376, 50.565979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537050, 0.452808, 0.711718,
		0.604132, 0.795307, -0.050121,
		-0.588729, 0.403054, -0.700675,
		35.192303, 42.797291, 50.355778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098698, 42.498558, 50.353592>,  <35.604416, 42.515156, 50.846249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098698, 42.498558, 50.353592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471729, 42.402622, 50.461494>,  <36.695549, 42.345062, 50.526237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471729, 42.402622, 50.461494>,  <36.098698, 42.498558, 50.353592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471729, 42.402622, 50.461494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228796, -0.970797, -0.072152,
		0.279185, 0.005568, -0.960221,
		0.932582, -0.239838, 0.269758,
		36.751503, 42.330669, 50.542423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590328, 42.180363, 49.899784>,  <36.098698, 42.498558, 50.353592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590328, 42.180363, 49.899784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672562, 42.056675, 50.271183>,  <36.721901, 41.982460, 50.494022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672562, 42.056675, 50.271183>,  <36.590328, 42.180363, 49.899784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672562, 42.056675, 50.271183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299421, -0.923146, -0.241141,
		0.931709, -0.228438, -0.282374,
		0.205586, -0.309222, 0.928502,
		36.734238, 41.963909, 50.549732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996284, 41.581703, 50.118492>,  <36.590328, 42.180363, 49.899784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996284, 41.581703, 50.118492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719769, 41.596390, 50.407150>,  <36.553860, 41.605202, 50.580345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719769, 41.596390, 50.407150>,  <36.996284, 41.581703, 50.118492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719769, 41.596390, 50.407150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167585, -0.979623, -0.110694,
		0.702875, -0.197458, 0.683357,
		-0.691290, 0.036716, 0.721644,
		36.512383, 41.607403, 50.623642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141460, 41.054977, 50.595875>,  <36.996284, 41.581703, 50.118492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141460, 41.054977, 50.595875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756138, 41.161873, 50.605804>,  <36.524944, 41.226009, 50.611763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756138, 41.161873, 50.605804>,  <37.141460, 41.054977, 50.595875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756138, 41.161873, 50.605804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267926, -0.962956, -0.030521,
		0.015744, -0.036052, 0.999226,
		-0.963311, 0.267238, 0.024820,
		36.467144, 41.242043, 50.613251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846767, 40.452328, 50.817989>,  <37.141460, 41.054977, 50.595875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846767, 40.452328, 50.817989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525127, 40.653950, 50.691906>,  <36.332142, 40.774921, 50.616257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525127, 40.653950, 50.691906>,  <36.846767, 40.452328, 50.817989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525127, 40.653950, 50.691906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455403, -0.863077, -0.218418,
		-0.382144, -0.032083, 0.923546,
		-0.804099, 0.504052, -0.315209,
		36.283897, 40.805164, 50.597343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130169, 40.310898, 51.176098>,  <36.846767, 40.452328, 50.817989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130169, 40.310898, 51.176098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079140, 40.401058, 50.789749>,  <36.048523, 40.455154, 50.557938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079140, 40.401058, 50.789749>,  <36.130169, 40.310898, 51.176098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079140, 40.401058, 50.789749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539252, -0.833085, -0.123192,
		-0.832425, 0.505134, 0.227832,
		-0.127575, 0.225407, -0.965876,
		36.040867, 40.468681, 50.499985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511227, 40.017658, 51.066689>,  <36.130169, 40.310898, 51.176098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511227, 40.017658, 51.066689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653812, 40.070015, 50.696651>,  <35.739365, 40.101429, 50.474628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653812, 40.070015, 50.696651>,  <35.511227, 40.017658, 51.066689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653812, 40.070015, 50.696651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530434, -0.786746, -0.315705,
		-0.769139, 0.603240, -0.211017,
		0.356462, 0.130890, -0.925096,
		35.760750, 40.109283, 50.419121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961212, 39.750053, 50.565025>,  <35.511227, 40.017658, 51.066689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961212, 39.750053, 50.565025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290230, 39.717880, 50.339832>,  <35.487640, 39.698578, 50.204716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290230, 39.717880, 50.339832>,  <34.961212, 39.750053, 50.565025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290230, 39.717880, 50.339832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346111, -0.856300, -0.383351,
		-0.451247, 0.510178, -0.732185,
		0.822547, -0.080431, -0.562981,
		35.536995, 39.693752, 50.170937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680668, 39.430344, 49.983685>,  <34.961212, 39.750053, 50.565025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680668, 39.430344, 49.983685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076084, 39.386517, 49.942139>,  <35.313332, 39.360218, 49.917210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076084, 39.386517, 49.942139>,  <34.680668, 39.430344, 49.983685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076084, 39.386517, 49.942139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149351, -0.810402, -0.566519,
		-0.022100, 0.575538, -0.817477,
		0.988537, -0.109571, -0.103867,
		35.372646, 39.353645, 49.910980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856136, 39.426819, 49.280991>,  <34.680668, 39.430344, 49.983685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856136, 39.426819, 49.280991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139965, 39.223328, 49.476009>,  <35.310265, 39.101234, 49.593021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139965, 39.223328, 49.476009>,  <34.856136, 39.426819, 49.280991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139965, 39.223328, 49.476009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142734, -0.781348, -0.607555,
		0.690023, 0.361516, -0.627037,
		0.709574, -0.508726, 0.487547,
		35.352837, 39.070709, 49.622272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124245, 38.919205, 48.696201>,  <34.856136, 39.426819, 49.280991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124245, 38.919205, 48.696201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308342, 38.762409, 49.014828>,  <35.418800, 38.668331, 49.206005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308342, 38.762409, 49.014828>,  <35.124245, 38.919205, 48.696201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308342, 38.762409, 49.014828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031160, -0.903823, -0.426770,
		0.887246, 0.171597, -0.428193,
		0.460243, -0.391993, 0.796567,
		35.446415, 38.644810, 49.253799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692909, 38.565563, 48.485775>,  <35.124245, 38.919205, 48.696201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692909, 38.565563, 48.485775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570538, 38.400375, 48.828907>,  <35.497116, 38.301262, 49.034786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570538, 38.400375, 48.828907>,  <35.692909, 38.565563, 48.485775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570538, 38.400375, 48.828907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015938, -0.898678, -0.438320,
		0.951922, -0.147765, 0.268346,
		-0.305924, -0.412970, 0.857826,
		35.478760, 38.276485, 49.086254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115032, 38.003746, 48.512295>,  <35.692909, 38.565563, 48.485775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115032, 38.003746, 48.512295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809734, 37.927460, 48.759224>,  <35.626556, 37.881687, 48.907383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809734, 37.927460, 48.759224>,  <36.115032, 38.003746, 48.512295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809734, 37.927460, 48.759224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282748, -0.760511, -0.584531,
		0.580957, -0.620687, 0.526533,
		-0.763245, -0.190711, 0.617322,
		35.580761, 37.870247, 48.944420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123783, 37.216820, 48.633591>,  <36.115032, 38.003746, 48.512295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123783, 37.216820, 48.633591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765915, 37.376286, 48.714226>,  <35.551193, 37.471966, 48.762608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765915, 37.376286, 48.714226>,  <36.123783, 37.216820, 48.633591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765915, 37.376286, 48.714226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434077, -0.669140, -0.603182,
		-0.105574, -0.627154, 0.771708,
		-0.894669, 0.398660, 0.201589,
		35.497513, 37.495884, 48.774704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778675, 36.653797, 48.504032>,  <36.123783, 37.216820, 48.633591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778675, 36.653797, 48.504032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504093, 36.944530, 48.512974>,  <35.339344, 37.118969, 48.518337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504093, 36.944530, 48.512974>,  <35.778675, 36.653797, 48.504032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504093, 36.944530, 48.512974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583495, -0.532218, -0.613415,
		-0.433952, -0.434124, 0.789444,
		-0.686454, 0.726829, 0.022352,
		35.298157, 37.162579, 48.519680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039997, 36.361343, 48.646538>,  <35.778675, 36.653797, 48.504032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039997, 36.361343, 48.646538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976231, 36.713428, 48.467735>,  <34.937969, 36.924679, 48.360455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976231, 36.713428, 48.467735>,  <35.039997, 36.361343, 48.646538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976231, 36.713428, 48.467735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601165, -0.445717, -0.663278,
		-0.783063, 0.162988, 0.600206,
		-0.159416, 0.880211, -0.447007,
		34.928406, 36.977493, 48.333633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389839, 36.258900, 48.419022>,  <35.039997, 36.361343, 48.646538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389839, 36.258900, 48.419022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493786, 36.578526, 48.202148>,  <34.556156, 36.770302, 48.072025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493786, 36.578526, 48.202148>,  <34.389839, 36.258900, 48.419022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493786, 36.578526, 48.202148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466334, -0.387816, -0.795066,
		-0.845577, 0.459454, 0.271849,
		0.259869, 0.799063, -0.542188,
		34.571747, 36.818245, 48.039494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850224, 36.397350, 47.976665>,  <34.389839, 36.258900, 48.419022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850224, 36.397350, 47.976665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175774, 36.556042, 47.806862>,  <34.371105, 36.651257, 47.704979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175774, 36.556042, 47.806862>,  <33.850224, 36.397350, 47.976665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175774, 36.556042, 47.806862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279815, -0.372692, -0.884763,
		-0.509225, 0.838872, -0.192314,
		0.813876, 0.396731, -0.424512,
		34.419937, 36.675060, 47.679508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579746, 36.626396, 47.311409>,  <33.850224, 36.397350, 47.976665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579746, 36.626396, 47.311409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979301, 36.627831, 47.292618>,  <34.219036, 36.628693, 47.281342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979301, 36.627831, 47.292618>,  <33.579746, 36.626396, 47.311409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979301, 36.627831, 47.292618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044665, -0.245253, -0.968430,
		-0.014993, 0.969452, -0.244821,
		0.998890, 0.003585, -0.046977,
		34.278969, 36.628906, 47.278526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638493, 36.941277, 46.752529>,  <33.579746, 36.626396, 47.311409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638493, 36.941277, 46.752529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979778, 36.735912, 46.789276>,  <34.184547, 36.612694, 46.811325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979778, 36.735912, 46.789276>,  <33.638493, 36.941277, 46.752529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979778, 36.735912, 46.789276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049818, -0.255555, -0.965510,
		0.519179, 0.819208, -0.243620,
		0.853212, -0.513409, 0.091868,
		34.235741, 36.581890, 46.816837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012547, 37.049702, 46.141586>,  <33.638493, 36.941277, 46.752529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012547, 37.049702, 46.141586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197662, 36.730354, 46.295696>,  <34.308731, 36.538746, 46.388161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197662, 36.730354, 46.295696>,  <34.012547, 37.049702, 46.141586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197662, 36.730354, 46.295696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125939, -0.370994, -0.920056,
		0.877475, 0.474315, -0.071147,
		0.462792, -0.798366, 0.385273,
		34.336498, 36.490845, 46.411278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572346, 36.988838, 45.751175>,  <34.012547, 37.049702, 46.141586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572346, 36.988838, 45.751175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496918, 36.641685, 45.935005>,  <34.451660, 36.433392, 46.045303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496918, 36.641685, 45.935005>,  <34.572346, 36.988838, 45.751175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496918, 36.641685, 45.935005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205760, -0.492505, -0.845637,
		0.960262, -0.064900, 0.271449,
		-0.188572, -0.867887, 0.459580,
		34.440346, 36.381321, 46.072880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169582, 36.547230, 45.575356>,  <34.572346, 36.988838, 45.751175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169582, 36.547230, 45.575356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863525, 36.317989, 45.692734>,  <34.679890, 36.180447, 45.763161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863525, 36.317989, 45.692734>,  <35.169582, 36.547230, 45.575356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863525, 36.317989, 45.692734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177076, -0.625489, -0.759874,
		0.619028, -0.529452, 0.580073,
		-0.765145, -0.573100, 0.293442,
		34.633980, 36.146061, 45.780766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433258, 35.951557, 45.471264>,  <35.169582, 36.547230, 45.575356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433258, 35.951557, 45.471264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041061, 35.874470, 45.486759>,  <34.805744, 35.828217, 45.496056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041061, 35.874470, 45.486759>,  <35.433258, 35.951557, 45.471264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041061, 35.874470, 45.486759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047551, -0.423735, -0.904537,
		0.190735, -0.885047, 0.424632,
		-0.980489, -0.192719, 0.038737,
		34.746914, 35.816654, 45.498379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262745, 35.313629, 45.017590>,  <35.433258, 35.951557, 45.471264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262745, 35.313629, 45.017590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893368, 35.466412, 45.032330>,  <34.671741, 35.558083, 45.041176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893368, 35.466412, 45.032330>,  <35.262745, 35.313629, 45.017590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893368, 35.466412, 45.032330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144054, -0.256045, -0.955871,
		-0.355669, -0.888002, 0.291466,
		-0.923444, 0.381960, 0.036853,
		34.616333, 35.580997, 45.043385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780067, 34.707954, 44.799290>,  <35.262745, 35.313629, 45.017590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780067, 34.707954, 44.799290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625988, 35.070591, 44.730335>,  <34.533539, 35.288174, 44.688961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625988, 35.070591, 44.730335>,  <34.780067, 34.707954, 44.799290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625988, 35.070591, 44.730335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278197, -0.292187, -0.915005,
		-0.879903, -0.304501, 0.364760,
		-0.385198, 0.906590, -0.172385,
		34.510429, 35.342567, 44.678619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074718, 34.612114, 44.647961>,  <34.780067, 34.707954, 44.799290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074718, 34.612114, 44.647961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152283, 34.975159, 44.499027>,  <34.198822, 35.192986, 44.409668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152283, 34.975159, 44.499027>,  <34.074718, 34.612114, 44.647961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152283, 34.975159, 44.499027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320810, -0.300003, -0.898376,
		-0.927081, 0.293656, 0.232998,
		0.193913, 0.907615, -0.372334,
		34.210457, 35.247444, 44.387325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550289, 34.684406, 44.209511>,  <34.074718, 34.612114, 44.647961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550289, 34.684406, 44.209511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767887, 34.997623, 44.088902>,  <33.898445, 35.185555, 44.016537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767887, 34.997623, 44.088902>,  <33.550289, 34.684406, 44.209511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767887, 34.997623, 44.088902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224350, -0.210533, -0.951495,
		-0.808540, 0.585255, 0.061146,
		0.543994, 0.783041, -0.301526,
		33.931084, 35.232536, 43.998444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174084, 35.083130, 43.736145>,  <33.550289, 34.684406, 44.209511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174084, 35.083130, 43.736145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551765, 35.196144, 43.668438>,  <33.778374, 35.263954, 43.627815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551765, 35.196144, 43.668438>,  <33.174084, 35.083130, 43.736145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551765, 35.196144, 43.668438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099363, -0.245616, -0.964261,
		-0.314016, 0.927278, -0.203838,
		0.944204, 0.282539, -0.169264,
		33.835026, 35.280907, 43.617661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105331, 35.559521, 43.281567>,  <33.174084, 35.083130, 43.736145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105331, 35.559521, 43.281567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456333, 35.371010, 43.246052>,  <33.666935, 35.257904, 43.224743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456333, 35.371010, 43.246052>,  <33.105331, 35.559521, 43.281567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456333, 35.371010, 43.246052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167262, -0.127248, -0.977666,
		0.449453, 0.872758, -0.190487,
		0.877505, -0.471277, -0.088787,
		33.719585, 35.229626, 43.219414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364285, 35.817570, 42.681461>,  <33.105331, 35.559521, 43.281567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364285, 35.817570, 42.681461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593628, 35.497574, 42.752205>,  <33.731236, 35.305576, 42.794651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593628, 35.497574, 42.752205>,  <33.364285, 35.817570, 42.681461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593628, 35.497574, 42.752205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174804, -0.330336, -0.927535,
		0.800437, 0.500898, -0.329243,
		0.573362, -0.799987, 0.176854,
		33.765636, 35.257576, 42.805260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860779, 35.829891, 42.212868>,  <33.364285, 35.817570, 42.681461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860779, 35.829891, 42.212868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841335, 35.445389, 42.321400>,  <33.829670, 35.214687, 42.386520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841335, 35.445389, 42.321400>,  <33.860779, 35.829891, 42.212868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841335, 35.445389, 42.321400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072012, -0.267574, -0.960842,
		0.996219, -0.066240, -0.056217,
		-0.048604, -0.961257, 0.271333,
		33.826756, 35.157013, 42.402798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262741, 35.567863, 41.730225>,  <33.860779, 35.829891, 42.212868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262741, 35.567863, 41.730225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102272, 35.233582, 41.880238>,  <34.005989, 35.033012, 41.970245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102272, 35.233582, 41.880238>,  <34.262741, 35.567863, 41.730225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102272, 35.233582, 41.880238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100082, -0.446965, -0.888935,
		0.910517, -0.319086, 0.262951,
		-0.401177, -0.835707, 0.375034,
		33.981918, 34.982868, 41.992748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644958, 35.083633, 41.454090>,  <34.262741, 35.567863, 41.730225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644958, 35.083633, 41.454090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299904, 34.897881, 41.534294>,  <34.092873, 34.786427, 41.582417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299904, 34.897881, 41.534294>,  <34.644958, 35.083633, 41.454090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299904, 34.897881, 41.534294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068333, -0.499755, -0.863467,
		0.501188, -0.731157, 0.462840,
		-0.862636, -0.464386, 0.200509,
		34.041115, 34.758564, 41.594448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713051, 34.459927, 41.153973>,  <34.644958, 35.083633, 41.454090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713051, 34.459927, 41.153973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318050, 34.511574, 41.190128>,  <34.081051, 34.542561, 41.211823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318050, 34.511574, 41.190128>,  <34.713051, 34.459927, 41.153973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318050, 34.511574, 41.190128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151906, -0.626849, -0.764189,
		-0.042012, -0.768368, 0.638628,
		-0.987502, 0.129117, 0.090385,
		34.021801, 34.550308, 41.217243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329636, 33.805515, 41.023354>,  <34.713051, 34.459927, 41.153973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329636, 33.805515, 41.023354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031776, 34.070774, 40.993065>,  <33.853062, 34.229931, 40.974892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031776, 34.070774, 40.993065>,  <34.329636, 33.805515, 41.023354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031776, 34.070774, 40.993065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452338, -0.584814, -0.673337,
		-0.490802, -0.467150, 0.735448,
		-0.744650, 0.663147, -0.075718,
		33.808380, 34.269718, 40.970348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721661, 33.363209, 41.029591>,  <34.329636, 33.805515, 41.023354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721661, 33.363209, 41.029591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651886, 33.720554, 40.863949>,  <33.610020, 33.934959, 40.764565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651886, 33.720554, 40.863949>,  <33.721661, 33.363209, 41.029591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651886, 33.720554, 40.863949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383416, -0.448981, -0.807099,
		-0.906953, 0.017986, 0.420847,
		-0.174436, 0.893360, -0.414101,
		33.599556, 33.988564, 40.739719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085136, 33.305279, 40.831661>,  <33.721661, 33.363209, 41.029591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085136, 33.305279, 40.831661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177166, 33.635811, 40.626041>,  <33.232384, 33.834129, 40.502670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177166, 33.635811, 40.626041>,  <33.085136, 33.305279, 40.831661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177166, 33.635811, 40.626041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461488, -0.372406, -0.805198,
		-0.856792, 0.422485, 0.295658,
		0.230079, 0.826330, -0.514046,
		33.246189, 33.883709, 40.471828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502106, 33.467766, 40.501305>,  <33.085136, 33.305279, 40.831661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502106, 33.467766, 40.501305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812809, 33.619389, 40.300125>,  <32.999233, 33.710361, 40.179417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812809, 33.619389, 40.300125>,  <32.502106, 33.467766, 40.501305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812809, 33.619389, 40.300125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427294, -0.269486, -0.863016,
		-0.462668, 0.885266, -0.047359,
		0.776761, 0.379054, -0.502952,
		33.045837, 33.733105, 40.149239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217106, 33.760002, 39.836609>,  <32.502106, 33.467766, 40.501305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217106, 33.760002, 39.836609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610039, 33.752792, 39.762104>,  <32.845798, 33.748466, 39.717400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610039, 33.752792, 39.762104>,  <32.217106, 33.760002, 39.836609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610039, 33.752792, 39.762104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182812, -0.305079, -0.934616,
		-0.039980, 0.952157, -0.302984,
		0.982335, -0.018024, -0.186263,
		32.904739, 33.747387, 39.706226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253773, 34.055962, 39.164074>,  <32.217106, 33.760002, 39.836609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253773, 34.055962, 39.164074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569290, 33.814762, 39.211742>,  <32.758602, 33.670044, 39.240345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569290, 33.814762, 39.211742>,  <32.253773, 34.055962, 39.164074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569290, 33.814762, 39.211742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167697, -0.397650, -0.902082,
		0.591339, 0.691572, -0.414785,
		0.788794, -0.602994, 0.119171,
		32.805927, 33.633865, 39.247494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663013, 34.083408, 38.564556>,  <32.253773, 34.055962, 39.164074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663013, 34.083408, 38.564556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770660, 33.731670, 38.721695>,  <32.835247, 33.520626, 38.815979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770660, 33.731670, 38.721695>,  <32.663013, 34.083408, 38.564556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770660, 33.731670, 38.721695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210225, -0.451690, -0.867053,
		0.939885, 0.150749, -0.306417,
		0.269113, -0.879347, 0.392845,
		32.851395, 33.467865, 38.839550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838390, 33.703434, 38.011406>,  <32.663013, 34.083408, 38.564556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838390, 33.703434, 38.011406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893929, 33.399235, 38.265137>,  <32.927254, 33.216717, 38.417374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893929, 33.399235, 38.265137>,  <32.838390, 33.703434, 38.011406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893929, 33.399235, 38.265137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335360, -0.638793, -0.692443,
		0.931802, -0.116583, -0.343734,
		0.138847, -0.760495, 0.634326,
		32.935581, 33.171085, 38.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388416, 33.275032, 37.762772>,  <32.838390, 33.703434, 38.011406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388416, 33.275032, 37.762772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113522, 33.073696, 37.972286>,  <32.948586, 32.952896, 38.097996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113522, 33.073696, 37.972286>,  <33.388416, 33.275032, 37.762772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113522, 33.073696, 37.972286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078424, -0.665424, -0.742334,
		0.722186, -0.551239, 0.417832,
		-0.687239, -0.503335, 0.523790,
		32.907349, 32.922695, 38.129425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506569, 32.568005, 37.595100>,  <33.388416, 33.275032, 37.762772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506569, 32.568005, 37.595100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151348, 32.547516, 37.777855>,  <32.938217, 32.535221, 37.887508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151348, 32.547516, 37.777855>,  <33.506569, 32.568005, 37.595100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151348, 32.547516, 37.777855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161899, -0.895274, -0.415059,
		0.430299, -0.442562, 0.786753,
		-0.888049, -0.051225, 0.456886,
		32.884933, 32.532146, 37.914921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825245, 31.879480, 37.867664>,  <33.506569, 32.568005, 37.595100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825245, 31.879480, 37.867664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134407, 31.627663, 37.899406>,  <34.319904, 31.476572, 37.918449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134407, 31.627663, 37.899406>,  <33.825245, 31.879480, 37.867664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134407, 31.627663, 37.899406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263065, 0.431725, 0.862792,
		-0.577423, -0.645980, 0.499293,
		0.772903, -0.629542, 0.079353,
		34.366280, 31.438801, 37.923214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734520, 31.475353, 38.406178>,  <33.825245, 31.879480, 37.867664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734520, 31.475353, 38.406178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131226, 31.498005, 38.360214>,  <34.369247, 31.511597, 38.332634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131226, 31.498005, 38.360214>,  <33.734520, 31.475353, 38.406178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131226, 31.498005, 38.360214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109536, 0.090315, 0.989871,
		0.066430, -0.994302, 0.083368,
		0.991761, 0.056625, -0.114912,
		34.428753, 31.514994, 38.325741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009052, 31.127949, 39.023911>,  <33.734520, 31.475353, 38.406178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009052, 31.127949, 39.023911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312275, 31.344837, 38.878944>,  <34.494209, 31.474970, 38.791965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312275, 31.344837, 38.878944>,  <34.009052, 31.127949, 39.023911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312275, 31.344837, 38.878944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311385, 0.187357, 0.931631,
		0.573049, -0.819082, -0.026811,
		0.758060, 0.542219, -0.362414,
		34.539692, 31.507504, 38.770222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676670, 30.865784, 39.321651>,  <34.009052, 31.127949, 39.023911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676670, 30.865784, 39.321651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757393, 31.242825, 39.215237>,  <34.805824, 31.469049, 39.151390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757393, 31.242825, 39.215237>,  <34.676670, 30.865784, 39.321651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757393, 31.242825, 39.215237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187791, 0.229344, 0.955058,
		0.961254, -0.242694, -0.130730,
		0.201805, 0.942604, -0.266033,
		34.817936, 31.525606, 39.135426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406662, 31.109730, 39.412647>,  <34.676670, 30.865784, 39.321651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406662, 31.109730, 39.412647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180466, 31.438324, 39.441998>,  <35.044750, 31.635481, 39.459610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180466, 31.438324, 39.441998>,  <35.406662, 31.109730, 39.412647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180466, 31.438324, 39.441998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460586, 0.240743, 0.854344,
		0.684166, 0.516918, -0.514503,
		-0.565489, 0.821485, 0.073377,
		35.010818, 31.684769, 39.464012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863045, 31.425568, 39.844131>,  <35.406662, 31.109730, 39.412647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863045, 31.425568, 39.844131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551117, 31.675501, 39.859470>,  <35.363960, 31.825460, 39.868675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551117, 31.675501, 39.859470>,  <35.863045, 31.425568, 39.844131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551117, 31.675501, 39.859470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390930, 0.438219, 0.809406,
		0.488937, 0.646181, -0.585997,
		-0.779817, 0.624832, 0.038350,
		35.317173, 31.862951, 39.870975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086948, 32.168625, 39.931736>,  <35.863045, 31.425568, 39.844131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086948, 32.168625, 39.931736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712639, 32.188278, 40.071400>,  <35.488052, 32.200069, 40.155197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712639, 32.188278, 40.071400>,  <36.086948, 32.168625, 39.931736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712639, 32.188278, 40.071400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311917, 0.577132, 0.754737,
		-0.164430, 0.815172, -0.555390,
		-0.935773, 0.049134, 0.349163,
		35.431908, 32.203018, 40.176147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122684, 32.815887, 40.092812>,  <36.086948, 32.168625, 39.931736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122684, 32.815887, 40.092812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822300, 32.664921, 40.309559>,  <35.642071, 32.574341, 40.439606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822300, 32.664921, 40.309559>,  <36.122684, 32.815887, 40.092812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822300, 32.664921, 40.309559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325528, 0.502364, 0.801038,
		-0.574537, 0.777940, -0.254396,
		-0.750958, -0.377413, 0.541868,
		35.597012, 32.551697, 40.472118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836304, 33.362614, 40.474445>,  <36.122684, 32.815887, 40.092812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836304, 33.362614, 40.474445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702999, 33.040794, 40.671070>,  <35.623016, 32.847702, 40.789047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702999, 33.040794, 40.671070>,  <35.836304, 33.362614, 40.474445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702999, 33.040794, 40.671070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361815, 0.372319, 0.854674,
		-0.870647, 0.462686, 0.167019,
		-0.333262, -0.804550, 0.491565,
		35.603020, 32.799431, 40.818539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682987, 33.668007, 41.046665>,  <35.836304, 33.362614, 40.474445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682987, 33.668007, 41.046665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711235, 33.279438, 41.137310>,  <35.728184, 33.046295, 41.191696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711235, 33.279438, 41.137310>,  <35.682987, 33.668007, 41.046665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711235, 33.279438, 41.137310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433872, 0.234477, 0.869928,
		-0.898203, 0.036891, 0.438030,
		0.070616, -0.971421, 0.226614,
		35.732418, 32.988010, 41.205296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343197, 33.554195, 41.631790>,  <35.682987, 33.668007, 41.046665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343197, 33.554195, 41.631790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552124, 33.213116, 41.628109>,  <35.677479, 33.008469, 41.625900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552124, 33.213116, 41.628109>,  <35.343197, 33.554195, 41.631790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552124, 33.213116, 41.628109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381545, 0.224033, 0.896791,
		-0.762635, -0.471916, 0.442360,
		0.522313, -0.852704, -0.009202,
		35.708817, 32.957306, 41.625347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155251, 33.219994, 42.258045>,  <35.343197, 33.554195, 41.631790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155251, 33.219994, 42.258045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514313, 33.120499, 42.112526>,  <35.729748, 33.060802, 42.025215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514313, 33.120499, 42.112526>,  <35.155251, 33.219994, 42.258045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514313, 33.120499, 42.112526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410857, 0.173707, 0.894999,
		-0.159428, -0.952866, 0.258125,
		0.897652, -0.248740, -0.363798,
		35.783607, 33.045876, 42.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504990, 32.807529, 42.733685>,  <35.155251, 33.219994, 42.258045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504990, 32.807529, 42.733685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812973, 32.915905, 42.502598>,  <35.997761, 32.980930, 42.363945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812973, 32.915905, 42.502598>,  <35.504990, 32.807529, 42.733685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812973, 32.915905, 42.502598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523379, 0.249771, 0.814671,
		0.365027, -0.929626, 0.050506,
		0.769955, 0.270943, -0.577720,
		36.043961, 32.997189, 42.329281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997932, 32.315506, 42.984154>,  <35.504990, 32.807529, 42.733685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997932, 32.315506, 42.984154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163536, 32.633072, 42.806030>,  <36.262897, 32.823612, 42.699158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163536, 32.633072, 42.806030>,  <35.997932, 32.315506, 42.984154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163536, 32.633072, 42.806030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452926, 0.244678, 0.857316,
		0.789593, -0.556626, -0.258286,
		0.414007, 0.793915, -0.445306,
		36.287739, 32.871246, 42.672440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684250, 32.390171, 43.356167>,  <35.997932, 32.315506, 42.984154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684250, 32.390171, 43.356167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584797, 32.738430, 43.186390>,  <36.525127, 32.947388, 43.084526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584797, 32.738430, 43.186390>,  <36.684250, 32.390171, 43.356167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584797, 32.738430, 43.186390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370467, 0.490360, 0.788861,
		0.894951, 0.038892, -0.444465,
		-0.248629, 0.870652, -0.424440,
		36.510208, 32.999626, 43.059059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195442, 32.828205, 43.496010>,  <36.684250, 32.390171, 43.356167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195442, 32.828205, 43.496010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875862, 33.055645, 43.417660>,  <36.684113, 33.192108, 43.370651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875862, 33.055645, 43.417660>,  <37.195442, 32.828205, 43.496010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875862, 33.055645, 43.417660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126735, 0.477574, 0.869403,
		0.587890, 0.669786, -0.453620,
		-0.798952, 0.568603, -0.195876,
		36.636177, 33.226227, 43.358898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498604, 33.546692, 43.506680>,  <37.195442, 32.828205, 43.496010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498604, 33.546692, 43.506680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103020, 33.556431, 43.565159>,  <36.865669, 33.562275, 43.600246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103020, 33.556431, 43.565159>,  <37.498604, 33.546692, 43.506680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103020, 33.556431, 43.565159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124090, 0.675413, 0.726925,
		-0.081042, 0.737038, -0.670975,
		-0.988956, 0.024350, 0.146196,
		36.806332, 33.563736, 43.609016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353786, 34.157520, 43.712009>,  <37.498604, 33.546692, 43.506680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353786, 34.157520, 43.712009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998543, 33.999882, 43.806625>,  <36.785397, 33.905300, 43.863396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998543, 33.999882, 43.806625>,  <37.353786, 34.157520, 43.712009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998543, 33.999882, 43.806625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056901, 0.604939, 0.794236,
		-0.456097, 0.691909, -0.559676,
		-0.888109, -0.394094, 0.236541,
		36.732109, 33.881653, 43.877586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861881, 34.698093, 43.818733>,  <37.353786, 34.157520, 43.712009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861881, 34.698093, 43.818733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698666, 34.389385, 44.013824>,  <36.600735, 34.204159, 44.130878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698666, 34.389385, 44.013824>,  <36.861881, 34.698093, 43.818733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698666, 34.389385, 44.013824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058794, 0.555327, 0.829551,
		-0.911069, 0.309814, -0.271970,
		-0.408039, -0.771769, 0.487726,
		36.576252, 34.157856, 44.160141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290539, 34.941601, 44.221416>,  <36.861881, 34.698093, 43.818733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290539, 34.941601, 44.221416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415623, 34.599159, 44.386005>,  <36.490673, 34.393696, 44.484756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415623, 34.599159, 44.386005>,  <36.290539, 34.941601, 44.221416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415623, 34.599159, 44.386005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166464, 0.475883, 0.863611,
		-0.935148, -0.201566, 0.291324,
		0.312711, -0.856099, 0.411468,
		36.509438, 34.342331, 44.509445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819630, 34.831821, 44.779087>,  <36.290539, 34.941601, 44.221416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819630, 34.831821, 44.779087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144802, 34.620865, 44.877880>,  <36.339905, 34.494289, 44.937157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144802, 34.620865, 44.877880>,  <35.819630, 34.831821, 44.779087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144802, 34.620865, 44.877880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015312, 0.404607, 0.914363,
		-0.582161, -0.747094, 0.320842,
		0.812930, -0.527393, 0.246985,
		36.388680, 34.462646, 44.951977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714211, 34.510799, 45.358696>,  <35.819630, 34.831821, 44.779087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714211, 34.510799, 45.358696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111275, 34.559116, 45.360909>,  <36.349514, 34.588108, 45.362236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111275, 34.559116, 45.360909>,  <35.714211, 34.510799, 45.358696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111275, 34.559116, 45.360909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065140, 0.495607, 0.866101,
		0.101877, -0.860106, 0.499838,
		0.992662, 0.120795, 0.005536,
		36.409073, 34.595356, 45.362568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969803, 34.400211, 46.119312>,  <35.714211, 34.510799, 45.358696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969803, 34.400211, 46.119312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246418, 34.616566, 45.927807>,  <36.412388, 34.746380, 45.812904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246418, 34.616566, 45.927807>,  <35.969803, 34.400211, 46.119312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246418, 34.616566, 45.927807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188385, 0.504808, 0.842425,
		0.697343, -0.672760, 0.247197,
		0.691537, 0.540891, -0.478762,
		36.453880, 34.778831, 45.784180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470425, 34.453102, 46.600609>,  <35.969803, 34.400211, 46.119312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470425, 34.453102, 46.600609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572952, 34.733414, 46.334312>,  <36.634468, 34.901600, 46.174534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572952, 34.733414, 46.334312>,  <36.470425, 34.453102, 46.600609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572952, 34.733414, 46.334312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302161, 0.596143, 0.743850,
		0.918151, -0.391822, -0.058946,
		0.256317, 0.700777, -0.665742,
		36.649849, 34.943645, 46.134590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174744, 34.662605, 46.796318>,  <36.470425, 34.453102, 46.600609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174744, 34.662605, 46.796318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007473, 34.965801, 46.596085>,  <36.907112, 35.147717, 46.475945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007473, 34.965801, 46.596085>,  <37.174744, 34.662605, 46.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007473, 34.965801, 46.596085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431506, 0.650696, 0.624818,
		0.799332, 0.045279, -0.599182,
		-0.418177, 0.757987, -0.500584,
		36.882019, 35.193199, 46.445908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691231, 35.061626, 46.715977>,  <37.174744, 34.662605, 46.796318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691231, 35.061626, 46.715977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377037, 35.295914, 46.636024>,  <37.188522, 35.436485, 46.588051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377037, 35.295914, 46.636024>,  <37.691231, 35.061626, 46.715977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377037, 35.295914, 46.636024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380485, 0.711756, 0.590454,
		0.488105, 0.387740, -0.781928,
		-0.785484, 0.585715, -0.199882,
		37.141392, 35.471626, 46.576061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918335, 35.655735, 46.327110>,  <37.691231, 35.061626, 46.715977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918335, 35.655735, 46.327110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585396, 35.772270, 46.515717>,  <37.385632, 35.842194, 46.628880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585396, 35.772270, 46.515717>,  <37.918335, 35.655735, 46.327110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585396, 35.772270, 46.515717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485470, 0.793692, 0.366568,
		-0.267439, 0.534015, -0.802062,
		-0.832343, 0.291343, 0.471513,
		37.335693, 35.859673, 46.657169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021332, 36.397491, 46.370399>,  <37.918335, 35.655735, 46.327110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021332, 36.397491, 46.370399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719894, 36.337391, 46.626373>,  <37.539032, 36.301331, 46.779957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719894, 36.337391, 46.626373>,  <38.021332, 36.397491, 46.370399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719894, 36.337391, 46.626373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330571, 0.754846, 0.566508,
		-0.568172, 0.638462, -0.519179,
		-0.753594, -0.150248, 0.639939,
		37.493816, 36.292316, 46.818356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790375, 37.055950, 46.523560>,  <38.021332, 36.397491, 46.370399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790375, 37.055950, 46.523560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704041, 36.812584, 46.829041>,  <37.652241, 36.666565, 47.012329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704041, 36.812584, 46.829041>,  <37.790375, 37.055950, 46.523560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704041, 36.812584, 46.829041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420080, 0.648199, 0.635115,
		-0.881446, 0.457901, 0.115676,
		-0.215839, -0.608412, 0.763707,
		37.639290, 36.630062, 47.058151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592476, 37.559608, 47.043282>,  <37.790375, 37.055950, 46.523560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592476, 37.559608, 47.043282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668865, 37.206593, 47.215168>,  <37.714699, 36.994785, 47.318302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668865, 37.206593, 47.215168>,  <37.592476, 37.559608, 47.043282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668865, 37.206593, 47.215168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250306, 0.467087, 0.848043,
		-0.949145, -0.054390, 0.310104,
		0.190971, -0.882537, 0.429720,
		37.726158, 36.941830, 47.344086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285648, 37.616032, 47.682198>,  <37.592476, 37.559608, 47.043282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285648, 37.616032, 47.682198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534554, 37.307053, 47.732975>,  <37.683895, 37.121666, 47.763443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534554, 37.307053, 47.732975>,  <37.285648, 37.616032, 47.682198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534554, 37.307053, 47.732975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301452, 0.386111, 0.871806,
		-0.722441, -0.504221, 0.473117,
		0.622258, -0.772450, 0.126944,
		37.721230, 37.075317, 47.771057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109562, 37.148636, 48.390316>,  <37.285648, 37.616032, 47.682198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109562, 37.148636, 48.390316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494335, 37.089882, 48.298141>,  <37.725201, 37.054630, 48.242836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494335, 37.089882, 48.298141>,  <37.109562, 37.148636, 48.390316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494335, 37.089882, 48.298141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270680, 0.396265, 0.877329,
		-0.037549, -0.906311, 0.420940,
		0.961937, -0.146883, -0.230441,
		37.782917, 37.045818, 48.229008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408104, 36.918362, 49.007385>,  <37.109562, 37.148636, 48.390316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408104, 36.918362, 49.007385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695629, 37.075043, 48.777641>,  <37.868145, 37.169052, 48.639797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695629, 37.075043, 48.777641>,  <37.408104, 36.918362, 49.007385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695629, 37.075043, 48.777641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275906, 0.597584, 0.752841,
		0.638113, -0.699617, 0.321477,
		0.718810, 0.391701, -0.574355,
		37.911270, 37.192554, 48.605335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025154, 37.228989, 49.515289>,  <37.408104, 36.918362, 49.007385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025154, 37.228989, 49.515289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133316, 37.387722, 49.164425>,  <38.198212, 37.482960, 48.953907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133316, 37.387722, 49.164425>,  <38.025154, 37.228989, 49.515289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133316, 37.387722, 49.164425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329423, 0.817968, 0.471603,
		0.904634, -0.416480, 0.090457,
		0.270404, 0.396829, -0.877159,
		38.214436, 37.506771, 48.901276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713642, 37.560577, 49.590107>,  <38.025154, 37.228989, 49.515289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713642, 37.560577, 49.590107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546009, 37.750919, 49.280804>,  <38.445431, 37.865124, 49.095222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546009, 37.750919, 49.280804>,  <38.713642, 37.560577, 49.590107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546009, 37.750919, 49.280804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263562, 0.878743, 0.397926,
		0.868855, -0.037040, -0.493680,
		-0.419078, 0.475856, -0.773262,
		38.420284, 37.893677, 49.048824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164318, 38.099689, 49.473816>,  <38.713642, 37.560577, 49.590107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164318, 38.099689, 49.473816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810036, 38.212574, 49.326363>,  <38.597466, 38.280304, 49.237892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810036, 38.212574, 49.326363>,  <39.164318, 38.099689, 49.473816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810036, 38.212574, 49.326363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179049, 0.940242, 0.289630,
		0.428338, 0.190523, -0.883305,
		-0.885702, 0.282215, -0.368629,
		38.544327, 38.297237, 49.215775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315479, 38.701324, 49.108585>,  <39.164318, 38.099689, 49.473816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315479, 38.701324, 49.108585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919827, 38.726387, 49.161804>,  <38.682434, 38.741425, 49.193737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919827, 38.726387, 49.161804>,  <39.315479, 38.701324, 49.108585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919827, 38.726387, 49.161804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113640, 0.899871, 0.421091,
		-0.093341, 0.431632, -0.897207,
		-0.989128, 0.062654, 0.133046,
		38.623089, 38.745182, 49.201717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141575, 39.272839, 48.757793>,  <39.315479, 38.701324, 49.108585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141575, 39.272839, 48.757793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933300, 39.180832, 49.086662>,  <38.808334, 39.125626, 49.283985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933300, 39.180832, 49.086662>,  <39.141575, 39.272839, 48.757793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933300, 39.180832, 49.086662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423045, 0.766965, 0.482490,
		-0.741563, 0.599045, -0.302042,
		-0.520689, -0.230019, 0.822176,
		38.777092, 39.111828, 49.333317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721832, 39.732208, 48.902611>,  <39.141575, 39.272839, 48.757793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721832, 39.732208, 48.902611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029881, 39.894958, 48.706097>,  <40.214710, 39.992611, 48.588188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029881, 39.894958, 48.706097>,  <39.721832, 39.732208, 48.902611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029881, 39.894958, 48.706097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286929, -0.466898, -0.836467,
		-0.569720, 0.785147, -0.242824,
		0.770124, 0.406879, -0.491283,
		40.260918, 40.017021, 48.558712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481514, 40.047237, 48.207523>,  <39.721832, 39.732208, 48.902611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481514, 40.047237, 48.207523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873642, 39.985020, 48.158901>,  <40.108921, 39.947689, 48.129730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873642, 39.985020, 48.158901>,  <39.481514, 40.047237, 48.207523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873642, 39.985020, 48.158901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187138, -0.536253, -0.823050,
		0.062839, 0.829601, -0.554809,
		0.980322, -0.155546, -0.121553,
		40.167740, 39.938354, 48.122437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642090, 40.279247, 47.509418>,  <39.481514, 40.047237, 48.207523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642090, 40.279247, 47.509418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936592, 40.030048, 47.615093>,  <40.113297, 39.880527, 47.678497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936592, 40.030048, 47.615093>,  <39.642090, 40.279247, 47.509418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936592, 40.030048, 47.615093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108931, -0.494430, -0.862364,
		0.667873, 0.606147, -0.431893,
		0.736260, -0.622997, 0.264189,
		40.157471, 39.843151, 47.694351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053055, 40.167950, 46.949356>,  <39.642090, 40.279247, 47.509418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053055, 40.167950, 46.949356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160488, 39.841534, 47.154079>,  <40.224949, 39.645683, 47.276913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160488, 39.841534, 47.154079>,  <40.053055, 40.167950, 46.949356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160488, 39.841534, 47.154079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236417, -0.570926, -0.786226,
		0.933793, 0.090169, -0.346267,
		0.268586, -0.816035, 0.511809,
		40.241062, 39.596722, 47.307621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510578, 39.847725, 46.593765>,  <40.053055, 40.167950, 46.949356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510578, 39.847725, 46.593765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351425, 39.560478, 46.822151>,  <40.255932, 39.388130, 46.959183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351425, 39.560478, 46.822151>,  <40.510578, 39.847725, 46.593765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351425, 39.560478, 46.822151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033402, -0.633269, -0.773211,
		0.916828, -0.288576, 0.275953,
		-0.397882, -0.718119, 0.570960,
		40.232059, 39.345043, 46.993439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817722, 39.244827, 46.434776>,  <40.510578, 39.847725, 46.593765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817722, 39.244827, 46.434776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474815, 39.118347, 46.597309>,  <40.269070, 39.042458, 46.694828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474815, 39.118347, 46.597309>,  <40.817722, 39.244827, 46.434776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474815, 39.118347, 46.597309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090151, -0.684822, -0.723112,
		0.506913, -0.656534, 0.558572,
		-0.857270, -0.316199, 0.406332,
		40.217636, 39.023487, 46.719208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814732, 38.583591, 46.201366>,  <40.817722, 39.244827, 46.434776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814732, 38.583591, 46.201366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446697, 38.605335, 46.356541>,  <40.225876, 38.618382, 46.449646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446697, 38.605335, 46.356541>,  <40.814732, 38.583591, 46.201366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446697, 38.605335, 46.356541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339985, -0.602731, -0.721890,
		0.194579, -0.796091, 0.573044,
		-0.920081, 0.054362, 0.387937,
		40.170673, 38.621643, 46.472923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620468, 37.851051, 46.342709>,  <40.814732, 38.583591, 46.201366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620468, 37.851051, 46.342709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301716, 38.091248, 46.316223>,  <40.110462, 38.235367, 46.300331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301716, 38.091248, 46.316223>,  <40.620468, 37.851051, 46.342709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301716, 38.091248, 46.316223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501588, -0.718723, -0.481505,
		-0.336726, -0.350494, 0.873939,
		-0.796884, 0.600493, -0.066209,
		40.062649, 38.271397, 46.296360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006973, 37.437836, 46.435440>,  <40.620468, 37.851051, 46.342709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006973, 37.437836, 46.435440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839436, 37.759483, 46.266701>,  <39.738911, 37.952473, 46.165455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839436, 37.759483, 46.266701>,  <40.006973, 37.437836, 46.435440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839436, 37.759483, 46.266701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430952, -0.584942, -0.687112,
		-0.799279, -0.105998, 0.591539,
		-0.418848, 0.804119, -0.421852,
		39.713779, 38.000717, 46.140144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295086, 37.175426, 46.266197>,  <40.006973, 37.437836, 46.435440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295086, 37.175426, 46.266197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352455, 37.507839, 46.051231>,  <39.386875, 37.707287, 45.922253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352455, 37.507839, 46.051231>,  <39.295086, 37.175426, 46.266197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352455, 37.507839, 46.051231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331675, -0.471261, -0.817254,
		-0.932428, 0.295460, 0.208043,
		0.143423, 0.831033, -0.537414,
		39.395481, 37.757149, 45.890007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627953, 37.388695, 45.991508>,  <39.295086, 37.175426, 46.266197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627953, 37.388695, 45.991508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892860, 37.573296, 45.755402>,  <39.051804, 37.684055, 45.613735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892860, 37.573296, 45.755402>,  <38.627953, 37.388695, 45.991508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892860, 37.573296, 45.755402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390546, -0.459696, -0.797592,
		-0.639432, 0.758749, -0.124206,
		0.662269, 0.461498, -0.590271,
		39.091541, 37.711746, 45.578320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226959, 37.578976, 45.474472>,  <38.627953, 37.388695, 45.991508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226959, 37.578976, 45.474472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603230, 37.558945, 45.340237>,  <38.828991, 37.546928, 45.259693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603230, 37.558945, 45.340237>,  <38.226959, 37.578976, 45.474472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603230, 37.558945, 45.340237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291208, -0.626767, -0.722745,
		-0.174147, 0.777596, -0.604166,
		0.940676, -0.050074, -0.335592,
		38.885433, 37.543922, 45.239559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250271, 37.694832, 44.762768>,  <38.226959, 37.578976, 45.474472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250271, 37.694832, 44.762768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591560, 37.491825, 44.810837>,  <38.796333, 37.370022, 44.839676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591560, 37.491825, 44.810837>,  <38.250271, 37.694832, 44.762768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591560, 37.491825, 44.810837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214940, -0.552101, -0.805597,
		0.475200, 0.661523, -0.580149,
		0.853221, -0.507517, 0.120171,
		38.847527, 37.339569, 44.846889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354465, 37.551296, 44.033405>,  <38.250271, 37.694832, 44.762768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354465, 37.551296, 44.033405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599018, 37.314236, 44.243156>,  <38.745750, 37.172001, 44.369007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599018, 37.314236, 44.243156>,  <38.354465, 37.551296, 44.033405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599018, 37.314236, 44.243156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015192, -0.653741, -0.756566,
		0.791191, 0.470516, -0.390682,
		0.611381, -0.592652, 0.524382,
		38.782433, 37.136440, 44.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852467, 37.410961, 43.617378>,  <38.354465, 37.551296, 44.033405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852467, 37.410961, 43.617378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907326, 37.125172, 43.891815>,  <38.940243, 36.953697, 44.056477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907326, 37.125172, 43.891815>,  <38.852467, 37.410961, 43.617378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907326, 37.125172, 43.891815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172514, -0.664821, -0.726809,
		0.975412, 0.218042, 0.032076,
		0.137150, -0.714472, 0.686090,
		38.948471, 36.910831, 44.097641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218361, 36.966591, 43.253132>,  <38.852467, 37.410961, 43.617378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218361, 36.966591, 43.253132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084660, 36.743469, 43.557007>,  <39.004440, 36.609596, 43.739330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084660, 36.743469, 43.557007>,  <39.218361, 36.966591, 43.253132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084660, 36.743469, 43.557007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012317, -0.803394, -0.595320,
		0.942403, -0.208344, 0.261666,
		-0.334252, -0.557809, 0.759687,
		38.984383, 36.576126, 43.784912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547642, 36.409199, 43.221832>,  <39.218361, 36.966591, 43.253132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547642, 36.409199, 43.221832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229836, 36.300762, 43.439178>,  <39.039150, 36.235703, 43.569588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229836, 36.300762, 43.439178>,  <39.547642, 36.409199, 43.221832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229836, 36.300762, 43.439178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252720, -0.666027, -0.701812,
		0.552153, -0.694923, 0.460661,
		-0.794518, -0.271090, 0.543370,
		38.991482, 36.219437, 43.602188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581665, 35.753155, 43.255905>,  <39.547642, 36.409199, 43.221832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581665, 35.753155, 43.255905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197639, 35.800114, 43.357494>,  <38.967224, 35.828289, 43.418449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197639, 35.800114, 43.357494>,  <39.581665, 35.753155, 43.255905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197639, 35.800114, 43.357494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246073, -0.786302, -0.566725,
		0.133169, -0.606586, 0.783785,
		-0.960060, 0.117398, 0.253975,
		38.909622, 35.835335, 43.433685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320023, 35.054836, 43.465809>,  <39.581665, 35.753155, 43.255905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320023, 35.054836, 43.465809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018837, 35.298145, 43.365364>,  <38.838127, 35.444130, 43.305099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018837, 35.298145, 43.365364>,  <39.320023, 35.054836, 43.465809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018837, 35.298145, 43.365364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362771, -0.702044, -0.612806,
		-0.549042, -0.370323, 0.749275,
		-0.752961, 0.608272, -0.251110,
		38.792950, 35.480625, 43.290031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693302, 34.632153, 43.497795>,  <39.320023, 35.054836, 43.465809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693302, 34.632153, 43.497795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620766, 34.944176, 43.258255>,  <38.577244, 35.131390, 43.114529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620766, 34.944176, 43.258255>,  <38.693302, 34.632153, 43.497795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620766, 34.944176, 43.258255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165855, -0.624487, -0.763222,
		-0.969334, -0.039080, 0.242622,
		-0.181341, 0.780057, -0.598854,
		38.566364, 35.178192, 43.078598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041637, 34.438248, 43.273308>,  <38.693302, 34.632153, 43.497795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041637, 34.438248, 43.273308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179790, 34.714092, 43.018700>,  <38.262680, 34.879597, 42.865936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179790, 34.714092, 43.018700>,  <38.041637, 34.438248, 43.273308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179790, 34.714092, 43.018700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322403, -0.549786, -0.770579,
		-0.881346, 0.471357, 0.032447,
		0.345379, 0.689608, -0.636518,
		38.283405, 34.920975, 42.827744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551079, 34.394852, 42.756207>,  <38.041637, 34.438248, 43.273308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551079, 34.394852, 42.756207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871067, 34.571377, 42.593586>,  <38.063061, 34.677292, 42.496014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871067, 34.571377, 42.593586>,  <37.551079, 34.394852, 42.756207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871067, 34.571377, 42.593586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145733, -0.514361, -0.845100,
		-0.582073, 0.735304, -0.347160,
		0.799971, 0.441317, -0.406553,
		38.111057, 34.703773, 42.471619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246269, 34.616989, 42.110844>,  <37.551079, 34.394852, 42.756207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246269, 34.616989, 42.110844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646210, 34.623272, 42.108074>,  <37.886173, 34.627041, 42.106411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646210, 34.623272, 42.108074>,  <37.246269, 34.616989, 42.110844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646210, 34.623272, 42.108074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001942, -0.504371, -0.863485,
		-0.017055, 0.863344, -0.504327,
		0.999853, 0.015706, -0.006926,
		37.946167, 34.627983, 42.105995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444530, 34.878922, 41.426384>,  <37.246269, 34.616989, 42.110844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444530, 34.878922, 41.426384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741711, 34.662762, 41.584370>,  <37.920017, 34.533066, 41.679161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741711, 34.662762, 41.584370>,  <37.444530, 34.878922, 41.426384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741711, 34.662762, 41.584370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072517, -0.521610, -0.850096,
		0.665408, 0.660220, -0.348342,
		0.742949, -0.540400, 0.394961,
		37.964596, 34.500641, 41.702858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001133, 34.896873, 41.030525>,  <37.444530, 34.878922, 41.426384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001133, 34.896873, 41.030525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107391, 34.561218, 41.220379>,  <38.171146, 34.359825, 41.334293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107391, 34.561218, 41.220379>,  <38.001133, 34.896873, 41.030525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107391, 34.561218, 41.220379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261952, -0.410978, -0.873200,
		0.927802, 0.356290, 0.110641,
		0.265641, -0.839139, 0.474637,
		38.187084, 34.309475, 41.362770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764847, 34.658440, 40.848846>,  <38.001133, 34.896873, 41.030525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764847, 34.658440, 40.848846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543568, 34.351700, 40.979023>,  <38.410801, 34.167656, 41.057129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543568, 34.351700, 40.979023>,  <38.764847, 34.658440, 40.848846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543568, 34.351700, 40.979023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348567, -0.567899, -0.745648,
		0.756620, -0.299051, 0.581459,
		-0.553198, -0.766850, 0.325444,
		38.377609, 34.121643, 41.076656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148636, 34.097557, 40.647202>,  <38.764847, 34.658440, 40.848846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148636, 34.097557, 40.647202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784863, 33.946129, 40.716038>,  <38.566597, 33.855270, 40.757339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784863, 33.946129, 40.716038>,  <39.148636, 34.097557, 40.647202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784863, 33.946129, 40.716038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134839, -0.659920, -0.739137,
		0.393381, -0.648992, 0.651200,
		-0.909434, -0.378570, 0.172091,
		38.512032, 33.832558, 40.767666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244228, 33.388695, 40.530769>,  <39.148636, 34.097557, 40.647202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244228, 33.388695, 40.530769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845692, 33.422894, 40.530785>,  <38.606571, 33.443413, 40.530792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845692, 33.422894, 40.530785>,  <39.244228, 33.388695, 40.530769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845692, 33.422894, 40.530785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060330, -0.702789, -0.708836,
		-0.060576, -0.706243, 0.705373,
		-0.996339, 0.085494, 0.000035,
		38.546791, 33.448544, 40.530796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008610, 32.736340, 40.671017>,  <39.244228, 33.388695, 40.530769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008610, 32.736340, 40.671017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735107, 32.937466, 40.459484>,  <38.571007, 33.058140, 40.332565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735107, 32.937466, 40.459484>,  <39.008610, 32.736340, 40.671017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735107, 32.937466, 40.459484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021945, -0.710213, -0.703645,
		-0.729386, -0.492723, 0.474574,
		-0.683750, 0.502814, -0.528833,
		38.529984, 33.088310, 40.300835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603310, 32.253258, 40.365402>,  <39.008610, 32.736340, 40.671017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603310, 32.253258, 40.365402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511162, 32.557724, 40.122898>,  <38.455872, 32.740402, 39.977394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511162, 32.557724, 40.122898>,  <38.603310, 32.253258, 40.365402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511162, 32.557724, 40.122898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056700, -0.611464, -0.789239,
		-0.971450, -0.216192, 0.097705,
		-0.230370, 0.761166, -0.606264,
		38.442051, 32.786076, 39.941017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088814, 31.988647, 39.888733>,  <38.603310, 32.253258, 40.365402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088814, 31.988647, 39.888733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254566, 32.306534, 39.711319>,  <38.354015, 32.497265, 39.604870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254566, 32.306534, 39.711319>,  <38.088814, 31.988647, 39.888733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254566, 32.306534, 39.711319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128105, -0.533420, -0.836093,
		-0.901044, 0.289640, -0.322844,
		0.414378, 0.794715, -0.443531,
		38.378880, 32.544949, 39.578259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009396, 31.898561, 39.159252>,  <38.088814, 31.988647, 39.888733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009396, 31.898561, 39.159252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293098, 32.180473, 39.153130>,  <38.463322, 32.349621, 39.149456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293098, 32.180473, 39.153130>,  <38.009396, 31.898561, 39.159252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293098, 32.180473, 39.153130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441542, -0.461068, -0.769712,
		-0.549537, 0.539167, -0.638207,
		0.709260, 0.704781, -0.015309,
		38.505875, 32.391907, 39.148537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003433, 32.165405, 38.382172>,  <38.009396, 31.898561, 39.159252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003433, 32.165405, 38.382172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338951, 32.251148, 38.582359>,  <38.540264, 32.302593, 38.702473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338951, 32.251148, 38.582359>,  <38.003433, 32.165405, 38.382172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338951, 32.251148, 38.582359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540726, -0.435224, -0.719858,
		0.063507, 0.874431, -0.480975,
		0.838798, 0.214360, 0.500467,
		38.590591, 32.315456, 38.732498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521858, 32.340530, 37.907215>,  <38.003433, 32.165405, 38.382172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521858, 32.340530, 37.907215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791096, 32.285660, 38.197906>,  <38.952637, 32.252739, 38.372322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791096, 32.285660, 38.197906>,  <38.521858, 32.340530, 37.907215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791096, 32.285660, 38.197906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694587, -0.220182, -0.684886,
		0.253960, 0.965766, -0.052923,
		0.673092, -0.137174, 0.726726,
		38.993023, 32.244507, 38.415924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109562, 32.720982, 37.697388>,  <38.521858, 32.340530, 37.907215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109562, 32.720982, 37.697388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252312, 32.461742, 37.966496>,  <39.337959, 32.306198, 38.127960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252312, 32.461742, 37.966496>,  <39.109562, 32.720982, 37.697388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252312, 32.461742, 37.966496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729186, -0.256890, -0.634268,
		0.583893, 0.716925, 0.380904,
		0.356872, -0.648094, 0.672768,
		39.359375, 32.267315, 38.168327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807369, 32.804565, 37.751671>,  <39.109562, 32.720982, 37.697388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807369, 32.804565, 37.751671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732143, 32.423336, 37.846561>,  <39.687008, 32.194599, 37.903496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732143, 32.423336, 37.846561>,  <39.807369, 32.804565, 37.751671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732143, 32.423336, 37.846561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594901, -0.302728, -0.744613,
		0.781489, 0.001095, 0.623918,
		-0.188062, -0.953076, 0.237230,
		39.675724, 32.137413, 37.917732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491249, 32.459854, 37.771652>,  <39.807369, 32.804565, 37.751671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491249, 32.459854, 37.771652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228851, 32.160229, 37.734596>,  <40.071411, 31.980455, 37.712364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228851, 32.160229, 37.734596>,  <40.491249, 32.459854, 37.771652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228851, 32.160229, 37.734596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543771, -0.383921, -0.746269,
		0.523434, -0.539922, 0.659167,
		-0.655995, -0.749059, -0.092637,
		40.032051, 31.935511, 37.706806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909504, 31.831614, 37.745918>,  <40.491249, 32.459854, 37.771652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909504, 31.831614, 37.745918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550888, 31.761997, 37.582985>,  <40.335716, 31.720228, 37.485226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550888, 31.761997, 37.582985>,  <40.909504, 31.831614, 37.745918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550888, 31.761997, 37.582985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442879, -0.369529, -0.816888,
		-0.008349, -0.912775, 0.408378,
		-0.896542, -0.174042, -0.407334,
		40.281925, 31.709785, 37.460785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030056, 31.129528, 37.375835>,  <40.909504, 31.831614, 37.745918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030056, 31.129528, 37.375835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714424, 31.318054, 37.218246>,  <40.525047, 31.431170, 37.123692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714424, 31.318054, 37.218246>,  <41.030056, 31.129528, 37.375835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714424, 31.318054, 37.218246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318383, -0.234699, -0.918449,
		-0.525346, -0.850163, 0.035136,
		-0.789078, 0.471317, -0.393975,
		40.477699, 31.459450, 37.100056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863716, 30.662979, 36.822563>,  <41.030056, 31.129528, 37.375835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863716, 30.662979, 36.822563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700497, 31.014359, 36.723106>,  <40.602566, 31.225187, 36.663433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700497, 31.014359, 36.723106>,  <40.863716, 30.662979, 36.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700497, 31.014359, 36.723106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366488, -0.091835, -0.925880,
		-0.836174, -0.468925, -0.284468,
		-0.408044, 0.878450, -0.248645,
		40.578083, 31.277893, 36.648514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508675, 30.570644, 36.146301>,  <40.863716, 30.662979, 36.822563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508675, 30.570644, 36.146301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606785, 30.950842, 36.222622>,  <40.665649, 31.178961, 36.268414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606785, 30.950842, 36.222622>,  <40.508675, 30.570644, 36.146301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606785, 30.950842, 36.222622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283804, 0.117792, -0.951620,
		-0.926983, 0.287556, -0.240862,
		0.245273, 0.950493, 0.190800,
		40.680367, 31.235991, 36.279861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189327, 31.064034, 35.633427>,  <40.508675, 30.570644, 36.146301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189327, 31.064034, 35.633427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532467, 31.223978, 35.762550>,  <40.738350, 31.319944, 35.840023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532467, 31.223978, 35.762550>,  <40.189327, 31.064034, 35.633427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532467, 31.223978, 35.762550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226249, 0.270137, -0.935862,
		-0.461418, 0.875863, 0.141268,
		0.857849, 0.399862, 0.322809,
		40.789822, 31.343937, 35.859394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356392, 31.765238, 35.269230>,  <40.189327, 31.064034, 35.633427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356392, 31.765238, 35.269230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687466, 31.548487, 35.327610>,  <40.886108, 31.418436, 35.362640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687466, 31.548487, 35.327610>,  <40.356392, 31.765238, 35.269230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687466, 31.548487, 35.327610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265089, 0.148286, -0.952753,
		0.494635, 0.827271, 0.266381,
		0.827686, -0.541880, 0.145953,
		40.935772, 31.385923, 35.371395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901581, 32.122341, 34.998795>,  <40.356392, 31.765238, 35.269230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901581, 32.122341, 34.998795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011147, 31.737696, 34.992294>,  <41.076885, 31.506908, 34.988396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011147, 31.737696, 34.992294>,  <40.901581, 32.122341, 34.998795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011147, 31.737696, 34.992294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262450, 0.090990, -0.960646,
		0.925252, 0.258871, 0.277299,
		0.273915, -0.961617, -0.016248,
		41.093323, 31.449211, 34.987419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498951, 32.004536, 34.624027>,  <40.901581, 32.122341, 34.998795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498951, 32.004536, 34.624027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317638, 31.651556, 34.573711>,  <41.208851, 31.439770, 34.543522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317638, 31.651556, 34.573711>,  <41.498951, 32.004536, 34.624027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317638, 31.651556, 34.573711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249144, 0.010069, -0.968414,
		0.855841, -0.470304, 0.215292,
		-0.453282, -0.882447, -0.125791,
		41.181652, 31.386822, 34.535973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918343, 31.497557, 34.186573>,  <41.498951, 32.004536, 34.624027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918343, 31.497557, 34.186573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527977, 31.414873, 34.158669>,  <41.293758, 31.365263, 34.141926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527977, 31.414873, 34.158669>,  <41.918343, 31.497557, 34.186573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527977, 31.414873, 34.158669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014708, 0.256717, -0.966374,
		0.217665, -0.944123, -0.247494,
		-0.975913, -0.206706, -0.069764,
		41.235203, 31.352859, 34.137737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603580, 30.949352, 33.706444>,  <41.918343, 31.497557, 34.186573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603580, 30.949352, 33.706444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367813, 31.271812, 33.727253>,  <41.226353, 31.465288, 33.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367813, 31.271812, 33.727253>,  <41.603580, 30.949352, 33.706444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367813, 31.271812, 33.727253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185351, 0.197636, -0.962593,
		-0.786273, -0.557732, -0.265911,
		-0.589423, 0.806148, 0.052019,
		41.190987, 31.513657, 33.742859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972889, 30.910244, 33.260403>,  <41.603580, 30.949352, 33.706444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972889, 30.910244, 33.260403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119717, 31.275091, 33.333389>,  <41.207813, 31.493999, 33.377182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119717, 31.275091, 33.333389>,  <40.972889, 30.910244, 33.260403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119717, 31.275091, 33.333389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030230, 0.184363, -0.982393,
		-0.929701, 0.366125, 0.040101,
		0.367072, 0.912120, 0.182471,
		41.229839, 31.548727, 33.388130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504330, 31.412237, 32.835682>,  <40.972889, 30.910244, 33.260403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504330, 31.412237, 32.835682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861145, 31.577934, 32.907978>,  <41.075233, 31.677353, 32.951355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861145, 31.577934, 32.907978>,  <40.504330, 31.412237, 32.835682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861145, 31.577934, 32.907978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145930, 0.114488, -0.982648,
		-0.427746, 0.902937, 0.041678,
		0.892041, 0.414242, 0.180737,
		41.128757, 31.702208, 32.962200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495232, 31.984783, 32.557148>,  <40.504330, 31.412237, 32.835682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495232, 31.984783, 32.557148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881969, 31.886395, 32.584595>,  <41.114014, 31.827362, 32.601063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881969, 31.886395, 32.584595>,  <40.495232, 31.984783, 32.557148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881969, 31.886395, 32.584595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173274, 0.434525, -0.883835,
		0.187579, 0.866422, 0.462739,
		0.966846, -0.245970, 0.068620,
		41.172024, 31.812603, 32.605183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703236, 32.455811, 32.079830>,  <40.495232, 31.984783, 32.557148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703236, 32.455811, 32.079830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032864, 32.245399, 32.163925>,  <41.230640, 32.119152, 32.214382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032864, 32.245399, 32.163925>,  <40.703236, 32.455811, 32.079830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032864, 32.245399, 32.163925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393469, 0.264506, -0.880465,
		0.407540, 0.808288, 0.424948,
		0.824071, -0.526029, 0.210239,
		41.280087, 32.087589, 32.226997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260387, 32.870861, 31.878412>,  <40.703236, 32.455811, 32.079830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260387, 32.870861, 31.878412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417255, 32.503044, 31.888632>,  <41.511375, 32.282356, 31.894764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417255, 32.503044, 31.888632>,  <41.260387, 32.870861, 31.878412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417255, 32.503044, 31.888632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446694, 0.166080, -0.879137,
		0.804157, 0.356183, 0.475883,
		0.392169, -0.919538, 0.025551,
		41.534904, 32.227184, 31.896297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982368, 32.985519, 31.603819>,  <41.260387, 32.870861, 31.878412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982368, 32.985519, 31.603819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881157, 32.603054, 31.544867>,  <41.820431, 32.373573, 31.509495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881157, 32.603054, 31.544867>,  <41.982368, 32.985519, 31.603819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881157, 32.603054, 31.544867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299210, 0.067526, -0.951795,
		0.920027, -0.284931, 0.269008,
		-0.253031, -0.956167, -0.147380,
		41.805248, 32.316204, 31.500652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515739, 32.692406, 31.248838>,  <41.982368, 32.985519, 31.603819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515739, 32.692406, 31.248838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198292, 32.459778, 31.177353>,  <42.007824, 32.320202, 31.134462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198292, 32.459778, 31.177353>,  <42.515739, 32.692406, 31.248838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198292, 32.459778, 31.177353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262636, -0.062515, -0.962868,
		0.548806, -0.811089, 0.202355,
		-0.793621, -0.581573, -0.178713,
		41.960205, 32.285305, 31.123739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766857, 32.260975, 30.794762>,  <42.515739, 32.692406, 31.248838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766857, 32.260975, 30.794762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374149, 32.206650, 30.741560>,  <42.138527, 32.174053, 30.709639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374149, 32.206650, 30.741560>,  <42.766857, 32.260975, 30.794762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374149, 32.206650, 30.741560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151498, -0.136386, -0.979003,
		0.114824, -0.981302, 0.154475,
		-0.981765, -0.135816, -0.133005,
		42.079620, 32.165905, 30.701658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663616, 31.604113, 30.425875>,  <42.766857, 32.260975, 30.794762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663616, 31.604113, 30.425875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339165, 31.825027, 30.348881>,  <42.144493, 31.957577, 30.302685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339165, 31.825027, 30.348881>,  <42.663616, 31.604113, 30.425875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339165, 31.825027, 30.348881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259872, 0.045495, -0.964571,
		-0.523961, -0.832413, -0.180426,
		-0.811129, 0.552285, -0.192483,
		42.095825, 31.990713, 30.291136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342587, 31.302738, 29.806488>,  <42.663616, 31.604113, 30.425875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342587, 31.302738, 29.806488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227665, 31.684353, 29.840591>,  <42.158710, 31.913322, 29.861053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227665, 31.684353, 29.840591>,  <42.342587, 31.302738, 29.806488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227665, 31.684353, 29.840591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285685, 0.170311, -0.943069,
		-0.914242, -0.246594, -0.321486,
		-0.287308, 0.954037, 0.085257,
		42.141472, 31.970564, 29.866169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986202, 31.302290, 29.221405>,  <42.342587, 31.302738, 29.806488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986202, 31.302290, 29.221405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024551, 31.686810, 29.324722>,  <42.047562, 31.917521, 29.386713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024551, 31.686810, 29.324722>,  <41.986202, 31.302290, 29.221405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024551, 31.686810, 29.324722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352622, 0.209862, -0.911930,
		-0.930842, 0.178510, -0.318854,
		0.095874, 0.961297, 0.258295,
		42.053314, 31.975199, 29.402210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469223, 31.602116, 28.794775>,  <41.986202, 31.302290, 29.221405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469223, 31.602116, 28.794775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737869, 31.881449, 28.893776>,  <41.899059, 32.049049, 28.953176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737869, 31.881449, 28.893776>,  <41.469223, 31.602116, 28.794775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737869, 31.881449, 28.893776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080393, 0.263399, -0.961331,
		-0.736523, 0.665545, 0.120762,
		0.671618, 0.698334, 0.247505,
		41.939354, 32.090950, 28.968027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202053, 32.109192, 28.506865>,  <41.469223, 31.602116, 28.794775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202053, 32.109192, 28.506865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584763, 32.211941, 28.561413>,  <41.814388, 32.273590, 28.594143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584763, 32.211941, 28.561413>,  <41.202053, 32.109192, 28.506865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584763, 32.211941, 28.561413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034543, 0.365221, -0.930280,
		-0.288769, 0.894780, 0.340561,
		0.956776, 0.256872, 0.136373,
		41.871796, 32.289001, 28.602325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124363, 32.890751, 28.470291>,  <41.202053, 32.109192, 28.506865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124363, 32.890751, 28.470291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493057, 32.784504, 28.357256>,  <41.714272, 32.720757, 28.289434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493057, 32.784504, 28.357256>,  <41.124363, 32.890751, 28.470291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493057, 32.784504, 28.357256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187543, 0.332511, -0.924264,
		0.339468, 0.904921, 0.256670,
		0.921731, -0.265622, -0.282588,
		41.769577, 32.704819, 28.272480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358196, 33.413090, 28.075672>,  <41.124363, 32.890751, 28.470291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358196, 33.413090, 28.075672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614601, 33.122040, 27.977961>,  <41.768444, 32.947411, 27.919333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614601, 33.122040, 27.977961>,  <41.358196, 33.413090, 28.075672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614601, 33.122040, 27.977961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086575, 0.384778, -0.918940,
		0.762636, 0.567899, 0.309640,
		0.641008, -0.727623, -0.244280,
		41.806904, 32.903751, 27.904676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907772, 33.766846, 27.792080>,  <41.358196, 33.413090, 28.075672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907772, 33.766846, 27.792080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977486, 33.398571, 27.652386>,  <42.019314, 33.177608, 27.568569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977486, 33.398571, 27.652386>,  <41.907772, 33.766846, 27.792080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977486, 33.398571, 27.652386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054956, 0.363206, -0.930087,
		0.983161, 0.142904, 0.113897,
		0.174281, -0.920684, -0.349237,
		42.029770, 33.122364, 27.547615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463463, 33.785713, 27.326345>,  <41.907772, 33.766846, 27.792080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463463, 33.785713, 27.326345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247719, 33.468491, 27.213102>,  <42.118271, 33.278156, 27.145157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247719, 33.468491, 27.213102>,  <42.463463, 33.785713, 27.326345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247719, 33.468491, 27.213102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091741, 0.389543, -0.916428,
		0.837062, -0.468313, -0.282860,
		-0.539361, -0.793057, -0.283108,
		42.085911, 33.230572, 27.128170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662838, 33.559654, 26.648123>,  <42.463463, 33.785713, 27.326345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662838, 33.559654, 26.648123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303341, 33.384617, 26.659214>,  <42.087643, 33.279594, 26.665869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303341, 33.384617, 26.659214>,  <42.662838, 33.559654, 26.648123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303341, 33.384617, 26.659214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161233, 0.271013, -0.948976,
		0.407755, -0.857357, -0.314126,
		-0.898743, -0.437598, 0.027727,
		42.033718, 33.253338, 26.667532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676689, 33.093899, 26.078949>,  <42.662838, 33.559654, 26.648123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676689, 33.093899, 26.078949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301594, 33.189064, 26.180172>,  <42.076534, 33.246162, 26.240906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301594, 33.189064, 26.180172>,  <42.676689, 33.093899, 26.078949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301594, 33.189064, 26.180172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171230, 0.317222, -0.932765,
		-0.302195, -0.918023, -0.256733,
		-0.937741, 0.237916, 0.253056,
		42.020271, 33.260437, 26.256088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297703, 33.057098, 25.493139>,  <42.676689, 33.093899, 26.078949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297703, 33.057098, 25.493139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021088, 33.243469, 25.713934>,  <41.855118, 33.355293, 25.846411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021088, 33.243469, 25.713934>,  <42.297703, 33.057098, 25.493139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021088, 33.243469, 25.713934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372059, 0.425245, -0.825069,
		-0.619153, -0.775936, -0.120719,
		-0.691536, 0.465930, 0.551985,
		41.813625, 33.383247, 25.879530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820206, 33.619427, 25.351265>,  <42.297703, 33.057098, 25.493139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820206, 33.619427, 25.351265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752972, 33.949856, 25.566433>,  <41.712631, 34.148113, 25.695534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752972, 33.949856, 25.566433>,  <41.820206, 33.619427, 25.351265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752972, 33.949856, 25.566433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128216, 0.559369, -0.818942,
		-0.977399, -0.068681, -0.199937,
		-0.168084, 0.826068, 0.537921,
		41.702545, 34.197678, 25.727810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289787, 34.091747, 25.057186>,  <41.820206, 33.619427, 25.351265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289787, 34.091747, 25.057186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571877, 34.290329, 25.259647>,  <41.741131, 34.409477, 25.381124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571877, 34.290329, 25.259647>,  <41.289787, 34.091747, 25.057186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571877, 34.290329, 25.259647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172717, 0.572103, -0.801790,
		-0.687627, 0.652861, 0.317713,
		0.705222, 0.496458, 0.506154,
		41.783443, 34.439266, 25.411493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187458, 34.468388, 24.293787>,  <41.289787, 34.091747, 25.057186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187458, 34.468388, 24.293787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395588, 34.350578, 23.973158>,  <41.520466, 34.279892, 23.780781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395588, 34.350578, 23.973158>,  <41.187458, 34.468388, 24.293787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395588, 34.350578, 23.973158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670134, 0.722630, 0.169487,
		0.529322, -0.625349, 0.573374,
		0.520326, -0.294524, -0.801571,
		41.551685, 34.262222, 23.732687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048241, 34.242790, 24.278105>,  <41.187458, 34.468388, 24.293787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048241, 34.242790, 24.278105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890099, 34.474789, 23.993206>,  <41.795212, 34.613991, 23.822268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890099, 34.474789, 23.993206>,  <42.048241, 34.242790, 24.278105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890099, 34.474789, 23.993206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308436, 0.814225, 0.491838,
		0.865195, -0.025231, -0.500801,
		-0.395355, 0.580001, -0.712245,
		41.771492, 34.648788, 23.779531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529564, 33.901733, 24.735094>,  <42.048241, 34.242790, 24.278105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529564, 33.901733, 24.735094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907345, 33.930672, 24.606863>,  <43.134014, 33.948036, 24.529924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907345, 33.930672, 24.606863>,  <42.529564, 33.901733, 24.735094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907345, 33.930672, 24.606863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320831, 0.008402, 0.947099,
		0.071219, -0.997344, -0.015278,
		0.944455, 0.072353, -0.320578,
		43.190681, 33.952377, 24.510691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872997, 34.035397, 25.329418>,  <42.529564, 33.901733, 24.735094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872997, 34.035397, 25.329418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181137, 33.923054, 25.100445>,  <43.366020, 33.855648, 24.963060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181137, 33.923054, 25.100445>,  <42.872997, 34.035397, 25.329418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181137, 33.923054, 25.100445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601753, 0.023375, 0.798340,
		-0.210838, -0.959465, 0.187012,
		0.770351, -0.280856, -0.572433,
		43.412243, 33.838799, 24.928715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256203, 33.391251, 25.432486>,  <42.872997, 34.035397, 25.329418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256203, 33.391251, 25.432486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497547, 33.677681, 25.292086>,  <43.642353, 33.849537, 25.207846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497547, 33.677681, 25.292086>,  <43.256203, 33.391251, 25.432486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497547, 33.677681, 25.292086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474850, 0.031014, 0.879520,
		0.640685, -0.697338, -0.321314,
		0.603357, 0.716071, -0.351000,
		43.678555, 33.892502, 25.186785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993858, 33.252644, 25.670063>,  <43.256203, 33.391251, 25.432486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993858, 33.252644, 25.670063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916451, 33.634220, 25.578367>,  <43.870007, 33.863167, 25.523350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916451, 33.634220, 25.578367>,  <43.993858, 33.252644, 25.670063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916451, 33.634220, 25.578367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266442, 0.275975, 0.923497,
		0.944224, 0.117636, -0.307576,
		-0.193520, 0.953939, -0.229239,
		43.858395, 33.920403, 25.509596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295216, 33.454685, 26.255810>,  <43.993858, 33.252644, 25.670063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295216, 33.454685, 26.255810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120827, 33.777565, 26.096630>,  <44.016193, 33.971291, 26.001123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120827, 33.777565, 26.096630>,  <44.295216, 33.454685, 26.255810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120827, 33.777565, 26.096630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126639, 0.492808, 0.860873,
		0.891006, 0.324920, -0.317072,
		-0.435971, 0.807197, -0.397948,
		43.990036, 34.019726, 25.977245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681572, 33.999641, 26.520414>,  <44.295216, 33.454685, 26.255810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681572, 33.999641, 26.520414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342339, 34.163025, 26.385410>,  <44.138798, 34.261055, 26.304407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342339, 34.163025, 26.385410>,  <44.681572, 33.999641, 26.520414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342339, 34.163025, 26.385410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073556, 0.540054, 0.838410,
		0.524734, 0.735867, -0.427965,
		-0.848082, 0.408463, -0.337512,
		44.087914, 34.285564, 26.284157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613449, 34.769726, 26.499039>,  <44.681572, 33.999641, 26.520414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613449, 34.769726, 26.499039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258785, 34.603592, 26.580351>,  <44.045986, 34.503910, 26.629139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258785, 34.603592, 26.580351>,  <44.613449, 34.769726, 26.499039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258785, 34.603592, 26.580351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005250, 0.448624, 0.893705,
		-0.462386, 0.791348, -0.399959,
		-0.886663, -0.415337, 0.203283,
		43.992786, 34.478992, 26.641336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379311, 35.227779, 26.854391>,  <44.613449, 34.769726, 26.499039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379311, 35.227779, 26.854391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200886, 34.882324, 26.948336>,  <44.093830, 34.675053, 27.004702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200886, 34.882324, 26.948336>,  <44.379311, 35.227779, 26.854391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200886, 34.882324, 26.948336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036380, 0.279692, 0.959400,
		-0.894262, 0.419408, -0.156179,
		-0.446062, -0.863638, 0.234860,
		44.067066, 34.623234, 27.018793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831890, 35.311985, 27.477697>,  <44.379311, 35.227779, 26.854391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831890, 35.311985, 27.477697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904182, 34.918583, 27.474966>,  <43.947556, 34.682541, 27.473328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904182, 34.918583, 27.474966>,  <43.831890, 35.311985, 27.477697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904182, 34.918583, 27.474966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012000, -0.009145, 0.999886,
		-0.983460, -0.180626, -0.013455,
		0.180728, -0.983509, -0.006827,
		43.958401, 34.623531, 27.472918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382362, 35.047939, 27.955076>,  <43.831890, 35.311985, 27.477697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382362, 35.047939, 27.955076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663563, 34.768055, 27.904175>,  <43.832283, 34.600124, 27.873634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663563, 34.768055, 27.904175>,  <43.382362, 35.047939, 27.955076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663563, 34.768055, 27.904175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056352, -0.123565, 0.990735,
		-0.708952, -0.703659, -0.047436,
		0.703001, -0.699711, -0.127254,
		43.874462, 34.558140, 27.865999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176399, 34.570396, 28.392437>,  <43.382362, 35.047939, 27.955076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176399, 34.570396, 28.392437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559582, 34.488544, 28.311998>,  <43.789494, 34.439434, 28.263735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559582, 34.488544, 28.311998>,  <43.176399, 34.570396, 28.392437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559582, 34.488544, 28.311998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112247, -0.377736, 0.919084,
		-0.264033, -0.903018, -0.338887,
		0.957959, -0.204630, -0.201096,
		43.846970, 34.427155, 28.251669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382217, 33.825264, 28.650822>,  <43.176399, 34.570396, 28.392437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382217, 33.825264, 28.650822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694088, 34.075294, 28.635935>,  <43.881210, 34.225311, 28.627003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694088, 34.075294, 28.635935>,  <43.382217, 33.825264, 28.650822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694088, 34.075294, 28.635935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211986, -0.207555, 0.954978,
		0.589206, -0.752466, -0.294333,
		0.779679, 0.625073, -0.037219,
		43.927990, 34.262817, 28.624769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809711, 33.586872, 29.067028>,  <43.382217, 33.825264, 28.650822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809711, 33.586872, 29.067028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983982, 33.945732, 29.037895>,  <44.088543, 34.161049, 29.020416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983982, 33.945732, 29.037895>,  <43.809711, 33.586872, 29.067028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983982, 33.945732, 29.037895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434702, -0.138865, 0.889804,
		0.788175, -0.419327, -0.450494,
		0.435676, 0.897152, -0.072832,
		44.114685, 34.214878, 29.016045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303028, 33.411743, 29.521587>,  <43.809711, 33.586872, 29.067028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303028, 33.411743, 29.521587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283344, 33.808163, 29.471954>,  <44.271534, 34.046017, 29.442175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283344, 33.808163, 29.471954>,  <44.303028, 33.411743, 29.521587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283344, 33.808163, 29.471954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330295, 0.133390, 0.934405,
		0.942594, 0.004995, -0.333903,
		-0.049206, 0.991051, -0.124083,
		44.268581, 34.105476, 29.434729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989735, 33.586235, 29.496578>,  <44.303028, 33.411743, 29.521587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989735, 33.586235, 29.496578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755394, 33.889893, 29.610056>,  <44.614788, 34.072086, 29.678143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755394, 33.889893, 29.610056>,  <44.989735, 33.586235, 29.496578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755394, 33.889893, 29.610056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364355, -0.065961, 0.928921,
		0.723895, 0.647575, -0.237954,
		-0.585851, 0.759141, 0.283696,
		44.579639, 34.117634, 29.695166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297390, 33.991051, 29.992266>,  <44.989735, 33.586235, 29.496578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297390, 33.991051, 29.992266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912079, 34.089382, 30.035454>,  <44.680893, 34.148380, 30.061367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912079, 34.089382, 30.035454>,  <45.297390, 33.991051, 29.992266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912079, 34.089382, 30.035454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082733, -0.110800, 0.990393,
		0.255429, 0.962960, 0.086393,
		-0.963282, 0.245827, 0.107970,
		44.623093, 34.163132, 30.067844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223694, 34.442501, 30.638885>,  <45.297390, 33.991051, 29.992266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223694, 34.442501, 30.638885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865463, 34.293056, 30.542252>,  <44.650524, 34.203388, 30.484272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865463, 34.293056, 30.542252>,  <45.223694, 34.442501, 30.638885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865463, 34.293056, 30.542252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186937, -0.176756, 0.966339,
		-0.403737, 0.910589, 0.088457,
		-0.895573, -0.373611, -0.241586,
		44.596790, 34.180973, 30.469776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861328, 34.818321, 31.105038>,  <45.223694, 34.442501, 30.638885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861328, 34.818321, 31.105038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628071, 34.517941, 30.981094>,  <44.488117, 34.337711, 30.906729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628071, 34.517941, 30.981094>,  <44.861328, 34.818321, 31.105038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628071, 34.517941, 30.981094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179326, -0.253022, 0.950695,
		-0.792331, 0.609956, 0.012882,
		-0.583142, -0.750955, -0.309859,
		44.453129, 34.292656, 30.888136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296879, 34.869900, 31.486383>,  <44.861328, 34.818321, 31.105038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296879, 34.869900, 31.486383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275249, 34.483032, 31.387064>,  <44.262272, 34.250912, 31.327473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275249, 34.483032, 31.387064>,  <44.296879, 34.869900, 31.486383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275249, 34.483032, 31.387064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133032, -0.239468, 0.961747,
		-0.989636, 0.085033, -0.115717,
		-0.054070, -0.967174, -0.248298,
		44.259029, 34.192879, 31.312574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652004, 34.683670, 31.732332>,  <44.296879, 34.869900, 31.486383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652004, 34.683670, 31.732332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866829, 34.349091, 31.688646>,  <43.995724, 34.148342, 31.662436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866829, 34.349091, 31.688646>,  <43.652004, 34.683670, 31.732332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866829, 34.349091, 31.688646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200330, -0.252237, 0.946702,
		-0.819411, -0.486556, -0.303031,
		0.537059, -0.836444, -0.109214,
		44.027946, 34.098156, 31.655882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389748, 34.326317, 32.207462>,  <43.652004, 34.683670, 31.732332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389748, 34.326317, 32.207462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723549, 34.125881, 32.115791>,  <43.923828, 34.005619, 32.060787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723549, 34.125881, 32.115791>,  <43.389748, 34.326317, 32.207462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723549, 34.125881, 32.115791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031684, -0.458877, 0.887935,
		-0.550098, -0.733719, -0.398809,
		0.834499, -0.501087, -0.229180,
		43.973900, 33.975555, 32.047039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185261, 33.586437, 32.246624>,  <43.389748, 34.326317, 32.207462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185261, 33.586437, 32.246624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574112, 33.647312, 32.317963>,  <43.807423, 33.683838, 32.360764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574112, 33.647312, 32.317963>,  <43.185261, 33.586437, 32.246624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574112, 33.647312, 32.317963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145063, -0.207158, 0.967493,
		0.184185, -0.966398, -0.179308,
		0.972128, 0.152187, 0.178344,
		43.865749, 33.692970, 32.371468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281769, 32.993893, 32.648094>,  <43.185261, 33.586437, 32.246624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281769, 32.993893, 32.648094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582157, 33.252613, 32.701302>,  <43.762390, 33.407845, 32.733227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582157, 33.252613, 32.701302>,  <43.281769, 32.993893, 32.648094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582157, 33.252613, 32.701302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075568, -0.115945, 0.990377,
		0.656000, -0.753794, -0.038194,
		0.750969, 0.646801, 0.133023,
		43.807449, 33.446651, 32.741207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675343, 32.654537, 33.120857>,  <43.281769, 32.993893, 32.648094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675343, 32.654537, 33.120857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763092, 33.042709, 33.161137>,  <43.815742, 33.275612, 33.185307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763092, 33.042709, 33.161137>,  <43.675343, 32.654537, 33.120857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763092, 33.042709, 33.161137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006617, -0.101733, 0.994790,
		0.975618, -0.218900, -0.015896,
		0.219377, 0.970430, 0.100701,
		43.828903, 33.333839, 33.191345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338345, 32.737495, 33.531712>,  <43.675343, 32.654537, 33.120857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338345, 32.737495, 33.531712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133057, 33.080048, 33.554371>,  <44.009884, 33.285580, 33.567966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133057, 33.080048, 33.554371>,  <44.338345, 32.737495, 33.531712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133057, 33.080048, 33.554371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003379, -0.063986, 0.997945,
		0.858249, 0.512360, 0.029945,
		-0.513223, 0.856384, 0.056647,
		43.979088, 33.336964, 33.571365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629509, 32.990147, 34.129959>,  <44.338345, 32.737495, 33.531712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629509, 32.990147, 34.129959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333649, 33.252888, 34.071365>,  <44.156132, 33.410534, 34.036209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333649, 33.252888, 34.071365>,  <44.629509, 32.990147, 34.129959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333649, 33.252888, 34.071365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001310, 0.219070, 0.975708,
		0.672990, 0.721491, -0.162896,
		-0.739650, 0.656856, -0.146487,
		44.111755, 33.449944, 34.027420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860416, 33.723312, 34.430168>,  <44.629509, 32.990147, 34.129959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860416, 33.723312, 34.430168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463821, 33.671261, 34.428993>,  <44.225864, 33.640030, 34.428288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463821, 33.671261, 34.428993>,  <44.860416, 33.723312, 34.430168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463821, 33.671261, 34.428993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023134, 0.153995, 0.987801,
		-0.128094, 0.979465, -0.155695,
		-0.991492, -0.130133, -0.002933,
		44.166374, 33.632221, 34.428112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300186, 33.850266, 34.957264>,  <44.860416, 33.723312, 34.430168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300186, 33.850266, 34.957264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684937, 33.771759, 34.881077>,  <45.915787, 33.724655, 34.835365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684937, 33.771759, 34.881077>,  <45.300186, 33.850266, 34.957264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684937, 33.771759, 34.881077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253891, 0.899699, 0.355079,
		0.101673, -0.389899, 0.915227,
		0.961874, -0.196266, -0.190468,
		45.973499, 33.712879, 34.823936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708210, 34.120979, 35.390362>,  <45.300186, 33.850266, 34.957264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708210, 34.120979, 35.390362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992565, 34.096928, 35.110069>,  <46.163177, 34.082497, 34.941895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992565, 34.096928, 35.110069>,  <45.708210, 34.120979, 35.390362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992565, 34.096928, 35.110069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407423, 0.847341, 0.340617,
		0.573276, -0.527634, 0.626862,
		0.710887, -0.060131, -0.700731,
		46.205830, 34.078888, 34.899849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456795, 34.301403, 35.660240>,  <45.708210, 34.120979, 35.390362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456795, 34.301403, 35.660240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397900, 34.373890, 35.271297>,  <46.362564, 34.417381, 35.037930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397900, 34.373890, 35.271297>,  <46.456795, 34.301403, 35.660240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397900, 34.373890, 35.271297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249083, 0.958184, 0.140858,
		0.957225, -0.221459, -0.186215,
		-0.147234, 0.181216, -0.972359,
		46.353729, 34.428253, 34.979591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.028477, 34.380657, 35.124893>,  <46.456795, 34.301403, 35.660240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.028477, 34.380657, 35.124893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718479, 34.605618, 35.009598>,  <46.532478, 34.740593, 34.940422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718479, 34.605618, 35.009598>,  <47.028477, 34.380657, 35.124893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718479, 34.605618, 35.009598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500929, 0.824757, 0.262384,
		0.385289, 0.058962, -0.920910,
		-0.774998, 0.562404, -0.288234,
		46.485981, 34.774338, 34.923126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.646412, 34.703793, 35.355015>,  <47.028477, 34.380657, 35.124893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.646412, 34.703793, 35.355015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475121, 34.965603, 35.105785>,  <47.372345, 35.122688, 34.956249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475121, 34.965603, 35.105785>,  <47.646412, 34.703793, 35.355015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.475121, 34.965603, 35.105785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807650, -0.032076, -0.588789,
		-0.405362, -0.755361, -0.514890,
		-0.428233, 0.654524, -0.623069,
		47.346649, 35.161961, 34.918865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.123306, 39.212547, 41.569229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730995, 39.143307, 41.605255>,  <38.495609, 39.101765, 41.626869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730995, 39.143307, 41.605255>,  <39.123306, 39.212547, 41.569229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730995, 39.143307, 41.605255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011750, -0.513123, -0.858235,
		0.194772, -0.840680, 0.505293,
		-0.980778, -0.173097, 0.090064,
		38.436760, 39.091377, 41.632275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033688, 38.444916, 41.300930>,  <39.123306, 39.212547, 41.569229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033688, 38.444916, 41.300930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.691669, 38.650703, 41.274948>,  <38.486458, 38.774174, 41.259357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.691669, 38.650703, 41.274948>,  <39.033688, 38.444916, 41.300930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691669, 38.650703, 41.274948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203374, -0.447933, -0.870629,
		-0.477008, -0.731216, 0.487633,
		-0.855045, 0.514469, -0.064957,
		38.435154, 38.805042, 41.255463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417309, 37.899624, 41.208023>,  <39.033688, 38.444916, 41.300930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417309, 37.899624, 41.208023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278717, 38.253704, 41.083843>,  <38.195560, 38.466152, 41.009335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278717, 38.253704, 41.083843>,  <38.417309, 37.899624, 41.208023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278717, 38.253704, 41.083843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398987, -0.438584, -0.805266,
		-0.848976, -0.155144, 0.505143,
		-0.346479, 0.885197, -0.310447,
		38.174774, 38.519264, 40.990707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688889, 37.877869, 40.896564>,  <38.417309, 37.899624, 41.208023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688889, 37.877869, 40.896564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776684, 38.227734, 40.723690>,  <37.829361, 38.437653, 40.619965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776684, 38.227734, 40.723690>,  <37.688889, 37.877869, 40.896564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776684, 38.227734, 40.723690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347733, -0.343761, -0.872302,
		-0.911542, 0.341743, 0.228699,
		0.219485, 0.874665, -0.432188,
		37.842529, 38.490131, 40.594032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093666, 38.120399, 40.554871>,  <37.688889, 37.877869, 40.896564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093666, 38.120399, 40.554871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395603, 38.300373, 40.363964>,  <37.576763, 38.408356, 40.249420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395603, 38.300373, 40.363964>,  <37.093666, 38.120399, 40.554871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395603, 38.300373, 40.363964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407615, -0.248286, -0.878752,
		-0.513877, 0.857855, -0.004017,
		0.754839, 0.449933, -0.477262,
		37.622055, 38.435352, 40.220787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807926, 38.327084, 39.950565>,  <37.093666, 38.120399, 40.554871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807926, 38.327084, 39.950565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194256, 38.377663, 39.860062>,  <37.426056, 38.408009, 39.805759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194256, 38.377663, 39.860062>,  <36.807926, 38.327084, 39.950565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194256, 38.377663, 39.860062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188754, -0.255101, -0.948312,
		-0.177629, 0.958610, -0.222516,
		0.965826, 0.126447, -0.226255,
		37.484005, 38.415596, 39.792187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882191, 38.667896, 39.245262>,  <36.807926, 38.327084, 39.950565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882191, 38.667896, 39.245262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215382, 38.455151, 39.306274>,  <37.415298, 38.327503, 39.342880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215382, 38.455151, 39.306274>,  <36.882191, 38.667896, 39.245262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215382, 38.455151, 39.306274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035646, -0.326680, -0.944462,
		0.552154, 0.781281, -0.291077,
		0.832980, -0.531865, 0.152529,
		37.465275, 38.295589, 39.352032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269760, 38.639992, 38.544971>,  <36.882191, 38.667896, 39.245262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269760, 38.639992, 38.544971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445232, 38.351620, 38.759563>,  <37.550514, 38.178596, 38.888317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445232, 38.351620, 38.759563>,  <37.269760, 38.639992, 38.544971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445232, 38.351620, 38.759563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118350, -0.545442, -0.829751,
		0.890816, 0.427488, -0.153953,
		0.438681, -0.720935, 0.536481,
		37.576836, 38.135338, 38.920509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894783, 38.487171, 38.292812>,  <37.269760, 38.639992, 38.544971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894783, 38.487171, 38.292812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803825, 38.140366, 38.470158>,  <37.749252, 37.932281, 38.576565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803825, 38.140366, 38.470158>,  <37.894783, 38.487171, 38.292812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803825, 38.140366, 38.470158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114936, -0.476004, -0.871900,
		0.966996, -0.147307, 0.207892,
		-0.227394, -0.867019, 0.443363,
		37.735607, 37.880260, 38.603165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296013, 37.925926, 38.049416>,  <37.894783, 38.487171, 38.292812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296013, 37.925926, 38.049416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007092, 37.710518, 38.222977>,  <37.833740, 37.581272, 38.327114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007092, 37.710518, 38.222977>,  <38.296013, 37.925926, 38.049416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007092, 37.710518, 38.222977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027071, -0.648950, -0.760350,
		0.691049, -0.537455, 0.483316,
		-0.722301, -0.538523, 0.433906,
		37.790401, 37.548962, 38.353149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543350, 37.172260, 38.071934>,  <38.296013, 37.925926, 38.049416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543350, 37.172260, 38.071934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144138, 37.193638, 38.085045>,  <37.904610, 37.206467, 38.092911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144138, 37.193638, 38.085045>,  <38.543350, 37.172260, 38.071934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144138, 37.193638, 38.085045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061905, -0.757265, -0.650168,
		-0.009927, -0.650918, 0.759084,
		-0.998033, 0.053446, 0.032778,
		37.844730, 37.209671, 38.094879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284882, 36.521034, 37.886002>,  <38.543350, 37.172260, 38.071934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284882, 36.521034, 37.886002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940861, 36.712734, 37.815998>,  <37.734447, 36.827755, 37.773994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940861, 36.712734, 37.815998>,  <38.284882, 36.521034, 37.886002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940861, 36.712734, 37.815998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211555, -0.647122, -0.732447,
		-0.464281, -0.592917, 0.657946,
		-0.860051, 0.479252, -0.175011,
		37.682846, 36.856510, 37.763496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827003, 36.053509, 37.956329>,  <38.284882, 36.521034, 37.886002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827003, 36.053509, 37.956329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644764, 36.326618, 37.727856>,  <37.535419, 36.490482, 37.590771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644764, 36.326618, 37.727856>,  <37.827003, 36.053509, 37.956329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644764, 36.326618, 37.727856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219965, -0.708097, -0.670980,
		-0.862581, -0.180056, 0.472793,
		-0.455597, 0.682772, -0.571185,
		37.508083, 36.531448, 37.556499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247520, 35.738667, 37.868370>,  <37.827003, 36.053509, 37.956329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247520, 35.738667, 37.868370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257687, 36.008053, 37.572857>,  <37.263786, 36.169685, 37.395550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257687, 36.008053, 37.572857>,  <37.247520, 35.738667, 37.868370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257687, 36.008053, 37.572857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201884, -0.720338, -0.663593,
		-0.979080, 0.166014, 0.117655,
		0.025414, 0.673464, -0.738784,
		37.265312, 36.210091, 37.351223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768978, 35.541794, 37.474228>,  <37.247520, 35.738667, 37.868370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768978, 35.541794, 37.474228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973873, 35.777332, 37.224148>,  <37.096809, 35.918655, 37.074097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973873, 35.777332, 37.224148>,  <36.768978, 35.541794, 37.474228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973873, 35.777332, 37.224148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250905, -0.593602, -0.764646,
		-0.821379, 0.548544, -0.156320,
		0.512233, 0.588843, -0.625205,
		37.127544, 35.953983, 37.036587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483208, 35.461853, 36.925446>,  <36.768978, 35.541794, 37.474228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483208, 35.461853, 36.925446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825775, 35.609436, 36.780991>,  <37.031315, 35.697987, 36.694317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825775, 35.609436, 36.780991>,  <36.483208, 35.461853, 36.925446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825775, 35.609436, 36.780991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036888, -0.741440, -0.670005,
		-0.514963, 0.560483, -0.648593,
		0.856418, 0.368953, -0.361139,
		37.082699, 35.720123, 36.672649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359375, 35.647404, 36.261486>,  <36.483208, 35.461853, 36.925446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359375, 35.647404, 36.261486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753262, 35.593468, 36.305576>,  <36.989594, 35.561108, 36.332031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753262, 35.593468, 36.305576>,  <36.359375, 35.647404, 36.261486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753262, 35.593468, 36.305576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012096, -0.684330, -0.729072,
		0.173737, 0.716597, -0.675503,
		0.984718, -0.134837, 0.110225,
		37.048676, 35.553017, 36.338642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655243, 35.548801, 35.539375>,  <36.359375, 35.647404, 36.261486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655243, 35.548801, 35.539375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943760, 35.412209, 35.780418>,  <37.116871, 35.330254, 35.925045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943760, 35.412209, 35.780418>,  <36.655243, 35.548801, 35.539375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943760, 35.412209, 35.780418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120947, -0.794557, -0.595022,
		0.681990, 0.502067, -0.531806,
		0.721291, -0.341479, 0.602603,
		37.160149, 35.309765, 35.961201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074657, 35.361969, 35.101341>,  <36.655243, 35.548801, 35.539375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074657, 35.361969, 35.101341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192833, 35.152042, 35.420662>,  <37.263737, 35.026085, 35.612255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192833, 35.152042, 35.420662>,  <37.074657, 35.361969, 35.101341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192833, 35.152042, 35.420662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143555, -0.801726, -0.580196,
		0.944514, 0.286013, -0.161521,
		0.295439, -0.524816, 0.798300,
		37.281464, 34.994598, 35.660152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718212, 35.053574, 34.956730>,  <37.074657, 35.361969, 35.101341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718212, 35.053574, 34.956730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.527401, 34.821148, 35.220490>,  <37.412914, 34.681690, 35.378746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.527401, 34.821148, 35.220490>,  <37.718212, 35.053574, 34.956730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527401, 34.821148, 35.220490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306060, -0.813130, -0.495122,
		0.823877, -0.034370, 0.565725,
		-0.477026, -0.581066, 0.659400,
		37.384293, 34.646828, 35.418308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123165, 34.466972, 35.085964>,  <37.718212, 35.053574, 34.956730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123165, 34.466972, 35.085964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.773598, 34.347519, 35.239372>,  <37.563858, 34.275848, 35.331417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.773598, 34.347519, 35.239372>,  <38.123165, 34.466972, 35.085964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773598, 34.347519, 35.239372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188271, -0.935387, -0.299340,
		0.448136, -0.189392, 0.873674,
		-0.873915, -0.298633, 0.383523,
		37.511421, 34.257931, 35.354431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267570, 33.797920, 35.404770>,  <38.123165, 34.466972, 35.085964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267570, 33.797920, 35.404770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870693, 33.814571, 35.357758>,  <37.632565, 33.824562, 35.329548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870693, 33.814571, 35.357758>,  <38.267570, 33.797920, 35.404770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870693, 33.814571, 35.357758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007108, -0.922214, -0.386614,
		-0.124483, -0.384432, 0.914722,
		-0.992196, 0.041625, -0.117532,
		37.573036, 33.827061, 35.322498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825111, 33.590927, 35.823307>,  <38.267570, 33.797920, 35.404770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825111, 33.590927, 35.823307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220234, 33.562820, 35.767746>,  <39.457310, 33.545956, 35.734409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220234, 33.562820, 35.767746>,  <38.825111, 33.590927, 35.823307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220234, 33.562820, 35.767746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151769, 0.633135, 0.759017,
		0.034610, -0.770845, 0.636082,
		0.987810, -0.070267, -0.138903,
		39.516579, 33.541740, 35.726074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239105, 33.545181, 36.489559>,  <38.825111, 33.590927, 35.823307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239105, 33.545181, 36.489559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504795, 33.670483, 36.218063>,  <39.664207, 33.745663, 36.055168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504795, 33.670483, 36.218063>,  <39.239105, 33.545181, 36.489559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504795, 33.670483, 36.218063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276516, 0.740607, 0.612406,
		0.694513, -0.594455, 0.405309,
		0.664222, 0.313249, -0.678737,
		39.704060, 33.764458, 36.014442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814995, 33.519432, 36.870529>,  <39.239105, 33.545181, 36.489559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814995, 33.519432, 36.870529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882130, 33.780598, 36.575089>,  <39.922409, 33.937298, 36.397823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882130, 33.780598, 36.575089>,  <39.814995, 33.519432, 36.870529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882130, 33.780598, 36.575089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236245, 0.700758, 0.673147,
		0.957090, -0.287467, -0.036638,
		0.167833, 0.652917, -0.738601,
		39.932480, 33.976471, 36.353508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482677, 33.760845, 36.938225>,  <39.814995, 33.519432, 36.870529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482677, 33.760845, 36.938225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297558, 34.041168, 36.721088>,  <40.186485, 34.209362, 36.590805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297558, 34.041168, 36.721088>,  <40.482677, 33.760845, 36.938225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297558, 34.041168, 36.721088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410119, 0.712164, 0.569759,
		0.785888, 0.041053, -0.617005,
		-0.462799, 0.700812, -0.542844,
		40.158718, 34.251411, 36.558235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009033, 34.365875, 36.754131>,  <40.482677, 33.760845, 36.938225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009033, 34.365875, 36.754131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.638882, 34.512981, 36.717419>,  <40.416790, 34.601246, 36.695389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.638882, 34.512981, 36.717419>,  <41.009033, 34.365875, 36.754131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638882, 34.512981, 36.717419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303869, 0.864509, 0.400359,
		0.226590, 0.342592, -0.911750,
		-0.925376, 0.367770, -0.091786,
		40.361267, 34.623314, 36.689884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114590, 35.054108, 36.727638>,  <41.009033, 34.365875, 36.754131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114590, 35.054108, 36.727638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.721569, 35.042568, 36.801132>,  <40.485756, 35.035645, 36.845226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.721569, 35.042568, 36.801132>,  <41.114590, 35.054108, 36.727638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721569, 35.042568, 36.801132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115210, 0.681115, 0.723055,
		-0.146002, 0.731608, -0.665908,
		-0.982553, -0.028848, 0.183732,
		40.426804, 35.033913, 36.856251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887260, 35.753639, 36.771103>,  <41.114590, 35.054108, 36.727638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887260, 35.753639, 36.771103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.610706, 35.537083, 36.962467>,  <40.444775, 35.407146, 37.077286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.610706, 35.537083, 36.962467>,  <40.887260, 35.753639, 36.771103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610706, 35.537083, 36.962467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255063, 0.436637, 0.862723,
		-0.675967, 0.718498, -0.163794,
		-0.691383, -0.541394, 0.478415,
		40.403290, 35.374664, 37.105991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481678, 36.278484, 37.130356>,  <40.887260, 35.753639, 36.771103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481678, 36.278484, 37.130356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.446041, 35.928196, 37.320168>,  <40.424660, 35.718025, 37.434055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.446041, 35.928196, 37.320168>,  <40.481678, 36.278484, 37.130356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446041, 35.928196, 37.320168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146445, 0.459733, 0.875899,
		-0.985199, 0.147528, 0.087286,
		-0.089092, -0.875717, 0.474533,
		40.419315, 35.665482, 37.462528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867702, 36.289780, 37.566143>,  <40.481678, 36.278484, 37.130356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867702, 36.289780, 37.566143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.077587, 35.998455, 37.742432>,  <40.203518, 35.823658, 37.848206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.077587, 35.998455, 37.742432>,  <39.867702, 36.289780, 37.566143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077587, 35.998455, 37.742432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000155, 0.517633, 0.855603,
		-0.851280, -0.449012, 0.271495,
		0.524711, -0.728316, 0.440721,
		40.235001, 35.779961, 37.874649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549904, 36.067841, 38.228271>,  <39.867702, 36.289780, 37.566143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549904, 36.067841, 38.228271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928699, 35.946892, 38.271706>,  <40.155975, 35.874325, 38.297768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928699, 35.946892, 38.271706>,  <39.549904, 36.067841, 38.228271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928699, 35.946892, 38.271706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028794, 0.416503, 0.908678,
		-0.319983, -0.857379, 0.403129,
		0.946986, -0.302369, 0.108587,
		40.212795, 35.856182, 38.304283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521427, 35.777332, 38.960983>,  <39.549904, 36.067841, 38.228271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521427, 35.777332, 38.960983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.908485, 35.816105, 38.867798>,  <40.140720, 35.839371, 38.811886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.908485, 35.816105, 38.867798>,  <39.521427, 35.777332, 38.960983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908485, 35.816105, 38.867798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177560, 0.394408, 0.901618,
		0.179280, -0.913809, 0.364434,
		0.967642, 0.096933, -0.232966,
		40.198776, 35.845184, 38.797909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925808, 35.484386, 39.527760>,  <39.521427, 35.777332, 38.960983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925808, 35.484386, 39.527760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.192020, 35.717201, 39.340866>,  <40.351746, 35.856892, 39.228729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.192020, 35.717201, 39.340866>,  <39.925808, 35.484386, 39.527760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192020, 35.717201, 39.340866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226547, 0.438937, 0.869489,
		0.711161, -0.684518, 0.160265,
		0.665527, 0.582039, -0.467230,
		40.391678, 35.891811, 39.200699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477715, 35.433273, 39.983204>,  <39.925808, 35.484386, 39.527760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477715, 35.433273, 39.983204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.522911, 35.772038, 39.775368>,  <40.550030, 35.975296, 39.650665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.522911, 35.772038, 39.775368>,  <40.477715, 35.433273, 39.983204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522911, 35.772038, 39.775368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087764, 0.512388, 0.854257,
		0.989712, -0.142127, -0.016432,
		0.112994, 0.846911, -0.519591,
		40.556808, 36.026112, 39.619492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079067, 35.852268, 40.270592>,  <40.477715, 35.433273, 39.983204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079067, 35.852268, 40.270592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843292, 36.112930, 40.079632>,  <40.701828, 36.269329, 39.965057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843292, 36.112930, 40.079632>,  <41.079067, 35.852268, 40.270592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843292, 36.112930, 40.079632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039889, 0.613732, 0.788507,
		0.806827, 0.445735, -0.387752,
		-0.589440, 0.651655, -0.477395,
		40.666462, 36.308426, 39.936413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419537, 36.435780, 40.341213>,  <41.079067, 35.852268, 40.270592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419537, 36.435780, 40.341213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.046772, 36.546017, 40.246899>,  <40.823112, 36.612160, 40.190311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.046772, 36.546017, 40.246899>,  <41.419537, 36.435780, 40.341213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046772, 36.546017, 40.246899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000459, 0.650991, 0.759086,
		0.362689, 0.707291, -0.606791,
		-0.931910, 0.275591, -0.235782,
		40.767200, 36.628693, 40.176163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482735, 37.216541, 40.134365>,  <41.419537, 36.435780, 40.341213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482735, 37.216541, 40.134365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.117706, 37.121727, 40.267654>,  <40.898689, 37.064838, 40.347626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.117706, 37.121727, 40.267654>,  <41.482735, 37.216541, 40.134365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117706, 37.121727, 40.267654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051103, 0.874578, 0.482184,
		-0.405723, 0.422996, -0.810224,
		-0.912566, -0.237038, 0.333220,
		40.843937, 37.050617, 40.367619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209789, 37.839821, 40.128422>,  <41.482735, 37.216541, 40.134365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209789, 37.839821, 40.128422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.956707, 37.626801, 40.353306>,  <40.804859, 37.498989, 40.488235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.956707, 37.626801, 40.353306>,  <41.209789, 37.839821, 40.128422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956707, 37.626801, 40.353306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154698, 0.798285, 0.582074,
		-0.758782, 0.281310, -0.587464,
		-0.632707, -0.532547, 0.562206,
		40.766895, 37.467037, 40.521969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724995, 38.268959, 40.292824>,  <41.209789, 37.839821, 40.128422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724995, 38.268959, 40.292824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.686745, 37.998207, 40.584766>,  <40.663795, 37.835758, 40.759933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.686745, 37.998207, 40.584766>,  <40.724995, 38.268959, 40.292824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686745, 37.998207, 40.584766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106322, 0.735970, 0.668614,
		-0.989723, -0.013662, -0.142346,
		-0.095628, -0.676877, 0.729858,
		40.658058, 37.795143, 40.803722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.169159, 38.509163, 40.729416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.356346, 38.244118, 40.963322>,  <40.468658, 38.085091, 41.103664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.356346, 38.244118, 40.963322>,  <40.169159, 38.509163, 40.729416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356346, 38.244118, 40.963322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009298, 0.657960, 0.752995,
		-0.883696, -0.357816, 0.301744,
		0.467969, -0.662613, 0.584764,
		40.496738, 38.045334, 41.138752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758026, 38.393314, 41.199436>,  <40.169159, 38.509163, 40.729416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758026, 38.393314, 41.199436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107155, 38.280575, 41.358810>,  <40.316631, 38.212933, 41.454433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107155, 38.280575, 41.358810>,  <39.758026, 38.393314, 41.199436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107155, 38.280575, 41.358810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183199, 0.567476, 0.802751,
		-0.452354, -0.773649, 0.443670,
		0.872820, -0.281848, 0.398432,
		40.368999, 38.196022, 41.478340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593338, 38.241203, 41.868633>,  <39.758026, 38.393314, 41.199436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593338, 38.241203, 41.868633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.992020, 38.270985, 41.855709>,  <40.231228, 38.288853, 41.847954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.992020, 38.270985, 41.855709>,  <39.593338, 38.241203, 41.868633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992020, 38.270985, 41.855709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020621, 0.617326, 0.786437,
		0.078503, -0.783176, 0.616825,
		0.996701, 0.074457, -0.032312,
		40.291031, 38.293324, 41.846016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914860, 38.049995, 42.535133>,  <39.593338, 38.241203, 41.868633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914860, 38.049995, 42.535133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148048, 38.304604, 42.333149>,  <40.287960, 38.457371, 42.211960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148048, 38.304604, 42.333149>,  <39.914860, 38.049995, 42.535133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148048, 38.304604, 42.333149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139675, 0.533730, 0.834040,
		0.800398, -0.556751, 0.222242,
		0.582970, 0.636523, -0.504961,
		40.322941, 38.495560, 42.181660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477798, 38.197689, 42.941654>,  <39.914860, 38.049995, 42.535133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477798, 38.197689, 42.941654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490566, 38.505005, 42.685932>,  <40.498226, 38.689392, 42.532497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490566, 38.505005, 42.685932>,  <40.477798, 38.197689, 42.941654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490566, 38.505005, 42.685932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054251, 0.640023, 0.766438,
		0.998017, 0.010216, 0.062112,
		0.031923, 0.768288, -0.639308,
		40.500145, 38.735493, 42.494141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888084, 38.583412, 43.310837>,  <40.477798, 38.197689, 42.941654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888084, 38.583412, 43.310837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727524, 38.812637, 43.025047>,  <40.631187, 38.950172, 42.853573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727524, 38.812637, 43.025047>,  <40.888084, 38.583412, 43.310837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727524, 38.812637, 43.025047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218748, 0.697520, 0.682360,
		0.889398, 0.430188, -0.154626,
		-0.401397, 0.573066, -0.714476,
		40.607105, 38.984558, 42.810703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260361, 39.218452, 43.272949>,  <40.888084, 38.583412, 43.310837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260361, 39.218452, 43.272949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.891834, 39.269726, 43.126118>,  <40.670719, 39.300491, 43.038017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.891834, 39.269726, 43.126118>,  <41.260361, 39.218452, 43.272949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891834, 39.269726, 43.126118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152967, 0.748464, 0.645293,
		0.357464, 0.650669, -0.669963,
		-0.921315, 0.128187, -0.367079,
		40.615440, 39.308182, 43.015995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299229, 39.914413, 43.198517>,  <41.260361, 39.218452, 43.272949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299229, 39.914413, 43.198517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911705, 39.816330, 43.212860>,  <40.679192, 39.757481, 43.221466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911705, 39.816330, 43.212860>,  <41.299229, 39.914413, 43.198517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911705, 39.816330, 43.212860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192174, 0.834715, 0.516062,
		-0.156474, 0.493074, -0.855800,
		-0.968806, -0.245213, 0.035856,
		40.621063, 39.742767, 43.223618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927246, 40.450089, 42.925255>,  <41.299229, 39.914413, 43.198517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927246, 40.450089, 42.925255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661129, 40.261887, 43.157120>,  <40.501457, 40.148964, 43.296238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661129, 40.261887, 43.157120>,  <40.927246, 40.450089, 42.925255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661129, 40.261887, 43.157120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169523, 0.851344, 0.496462,
		-0.727078, 0.232029, -0.646158,
		-0.665296, -0.470505, 0.579660,
		40.461540, 40.120735, 43.331017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624092, 41.001278, 43.344486>,  <40.927246, 40.450089, 42.925255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624092, 41.001278, 43.344486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457645, 40.688183, 43.529598>,  <40.357777, 40.500324, 43.640667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457645, 40.688183, 43.529598>,  <40.624092, 41.001278, 43.344486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457645, 40.688183, 43.529598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301518, 0.598918, 0.741879,
		-0.857865, 0.169173, -0.485231,
		-0.416119, -0.782738, 0.462782,
		40.332809, 40.453362, 43.668434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857368, 41.068790, 43.526703>,  <40.624092, 41.001278, 43.344486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857368, 41.068790, 43.526703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.994831, 40.821556, 43.809509>,  <40.077309, 40.673214, 43.979191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.994831, 40.821556, 43.809509>,  <39.857368, 41.068790, 43.526703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994831, 40.821556, 43.809509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339786, 0.620017, 0.707195,
		-0.875468, -0.483267, 0.003058,
		0.343660, -0.618088, 0.707012,
		40.097931, 40.636131, 44.021614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404308, 41.186588, 44.092987>,  <39.857368, 41.068790, 43.526703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404308, 41.186588, 44.092987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.680866, 40.962143, 44.275032>,  <39.846802, 40.827477, 44.384258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.680866, 40.962143, 44.275032>,  <39.404308, 41.186588, 44.092987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680866, 40.962143, 44.275032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152662, 0.502244, 0.851143,
		-0.706163, -0.657956, 0.261589,
		0.691396, -0.561111, 0.455111,
		39.888287, 40.793808, 44.411564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166122, 41.060242, 44.779667>,  <39.404308, 41.186588, 44.092987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166122, 41.060242, 44.779667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.562359, 41.006054, 44.787350>,  <39.800102, 40.973541, 44.791962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.562359, 41.006054, 44.787350>,  <39.166122, 41.060242, 44.779667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562359, 41.006054, 44.787350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059204, 0.550957, 0.832431,
		-0.123351, -0.823465, 0.553796,
		0.990596, -0.135467, 0.019209,
		39.859539, 40.965412, 44.793114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369774, 41.000515, 45.461678>,  <39.166122, 41.060242, 44.779667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369774, 41.000515, 45.461678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729130, 41.064816, 45.298191>,  <39.944744, 41.103397, 45.200100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729130, 41.064816, 45.298191>,  <39.369774, 41.000515, 45.461678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729130, 41.064816, 45.298191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284750, 0.495320, 0.820716,
		0.334379, -0.853707, 0.399217,
		0.898392, 0.160753, -0.408718,
		39.998646, 41.113041, 45.175575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842106, 40.741982, 45.899155>,  <39.369774, 41.000515, 45.461678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842106, 40.741982, 45.899155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.992790, 41.039253, 45.677967>,  <40.083202, 41.217617, 45.545254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.992790, 41.039253, 45.677967>,  <39.842106, 40.741982, 45.899155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992790, 41.039253, 45.677967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265191, 0.485435, 0.833082,
		0.887558, -0.460476, -0.014214,
		0.376714, 0.743179, -0.552966,
		40.105804, 41.262207, 45.512077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543179, 40.788578, 46.151505>,  <39.842106, 40.741982, 45.899155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543179, 40.788578, 46.151505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425716, 41.127022, 45.973576>,  <40.355240, 41.330090, 45.866817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425716, 41.127022, 45.973576>,  <40.543179, 40.788578, 46.151505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425716, 41.127022, 45.973576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297905, 0.523168, 0.798466,
		0.908306, 0.101957, -0.405690,
		-0.293653, 0.846109, -0.444824,
		40.337620, 41.380856, 45.840130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121326, 41.292862, 46.191338>,  <40.543179, 40.788578, 46.151505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121326, 41.292862, 46.191338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.820679, 41.545128, 46.114052>,  <40.640289, 41.696487, 46.067680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.820679, 41.545128, 46.114052>,  <41.121326, 41.292862, 46.191338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820679, 41.545128, 46.114052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311312, 0.597429, 0.739029,
		0.581510, 0.495318, -0.645372,
		-0.751619, 0.630665, -0.193213,
		40.595192, 41.734329, 46.056087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374325, 41.874561, 46.457169>,  <41.121326, 41.292862, 46.191338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374325, 41.874561, 46.457169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.989933, 41.977562, 46.416729>,  <40.759300, 42.039360, 46.392464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.989933, 41.977562, 46.416729>,  <41.374325, 41.874561, 46.457169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989933, 41.977562, 46.416729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051369, 0.525203, 0.849425,
		0.271823, 0.811083, -0.517934,
		-0.960975, 0.257499, -0.101098,
		40.701641, 42.054813, 46.386398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345722, 42.502182, 46.633987>,  <41.374325, 41.874561, 46.457169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345722, 42.502182, 46.633987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974533, 42.368347, 46.699619>,  <40.751820, 42.288048, 46.738998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974533, 42.368347, 46.699619>,  <41.345722, 42.502182, 46.633987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974533, 42.368347, 46.699619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053953, 0.556288, 0.829236,
		-0.368726, 0.760655, -0.534271,
		-0.927971, -0.334586, 0.164078,
		40.696140, 42.267971, 46.748844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911442, 43.155483, 46.695072>,  <41.345722, 42.502182, 46.633987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911442, 43.155483, 46.695072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.714497, 42.855892, 46.872437>,  <40.596329, 42.676140, 46.978855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.714497, 42.855892, 46.872437>,  <40.911442, 43.155483, 46.695072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714497, 42.855892, 46.872437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208958, 0.596257, 0.775122,
		-0.844934, 0.288988, -0.450080,
		-0.492364, -0.748975, 0.443411,
		40.566788, 42.631199, 47.005459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297798, 43.475185, 47.097771>,  <40.911442, 43.155483, 46.695072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297798, 43.475185, 47.097771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353012, 43.109447, 47.250046>,  <40.386139, 42.890007, 47.341412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353012, 43.109447, 47.250046>,  <40.297798, 43.475185, 47.097771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353012, 43.109447, 47.250046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080643, 0.372719, 0.924434,
		-0.987139, -0.158303, -0.022288,
		0.138034, -0.914342, 0.380691,
		40.394421, 42.835144, 47.364254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767677, 43.489243, 47.672619>,  <40.297798, 43.475185, 47.097771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767677, 43.489243, 47.672619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040295, 43.201668, 47.727203>,  <40.203865, 43.029121, 47.759956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040295, 43.201668, 47.727203>,  <39.767677, 43.489243, 47.672619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040295, 43.201668, 47.727203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094520, 0.271410, 0.957811,
		-0.725646, -0.639893, 0.252932,
		0.681545, -0.718939, 0.136465,
		40.244759, 42.985985, 47.768143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640327, 43.265266, 48.307434>,  <39.767677, 43.489243, 47.672619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640327, 43.265266, 48.307434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019875, 43.181408, 48.213028>,  <40.247604, 43.131092, 48.156384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019875, 43.181408, 48.213028>,  <39.640327, 43.265266, 48.307434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019875, 43.181408, 48.213028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298980, 0.356868, 0.885018,
		-0.101310, -0.910327, 0.401299,
		0.948866, -0.209642, -0.236015,
		40.304535, 43.118515, 48.142223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929901, 43.528038, 48.405735>,  <39.640327, 43.265266, 48.307434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929901, 43.528038, 48.405735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564354, 43.538601, 48.567799>,  <38.345028, 43.544941, 48.665035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564354, 43.538601, 48.567799>,  <38.929901, 43.528038, 48.405735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564354, 43.538601, 48.567799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315150, -0.675293, -0.666829,
		0.255987, -0.737077, 0.625451,
		-0.913866, 0.026411, 0.405156,
		38.290195, 43.546524, 48.689346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693058, 42.891685, 48.677326>,  <38.929901, 43.528038, 48.405735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693058, 42.891685, 48.677326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377052, 43.099937, 48.547821>,  <38.187450, 43.224888, 48.470116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377052, 43.099937, 48.547821>,  <38.693058, 42.891685, 48.677326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377052, 43.099937, 48.547821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213728, -0.728836, -0.650475,
		-0.574626, -0.444688, 0.687064,
		-0.790016, 0.520625, -0.323766,
		38.140049, 43.256126, 48.450691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217594, 42.363663, 48.677425>,  <38.693058, 42.891685, 48.677326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217594, 42.363663, 48.677425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.059166, 42.644474, 48.440685>,  <37.964111, 42.812962, 48.298641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.059166, 42.644474, 48.440685>,  <38.217594, 42.363663, 48.677425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059166, 42.644474, 48.440685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250081, -0.702666, -0.666123,
		-0.883510, -0.115819, 0.453867,
		-0.396067, 0.702030, -0.591849,
		37.940346, 42.855083, 48.263130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649700, 42.103325, 48.456543>,  <38.217594, 42.363663, 48.677425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649700, 42.103325, 48.456543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716522, 42.372459, 48.168270>,  <37.756615, 42.533939, 47.995308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716522, 42.372459, 48.168270>,  <37.649700, 42.103325, 48.456543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716522, 42.372459, 48.168270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257913, -0.675679, -0.690607,
		-0.951616, 0.301244, 0.060657,
		0.167057, 0.672837, -0.720682,
		37.766640, 42.574310, 47.952065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069168, 42.058605, 48.061413>,  <37.649700, 42.103325, 48.456543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069168, 42.058605, 48.061413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301929, 42.247349, 47.796467>,  <37.441586, 42.360596, 47.637497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301929, 42.247349, 47.796467>,  <37.069168, 42.058605, 48.061413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301929, 42.247349, 47.796467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165805, -0.728523, -0.664653,
		-0.796177, 0.496588, -0.345693,
		0.581903, 0.471863, -0.662369,
		37.476501, 42.388908, 47.597755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698132, 42.124702, 47.447342>,  <37.069168, 42.058605, 48.061413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698132, 42.124702, 47.447342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082542, 42.157776, 47.341820>,  <37.313190, 42.177620, 47.278507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082542, 42.157776, 47.341820>,  <36.698132, 42.124702, 47.447342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082542, 42.157776, 47.341820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158794, -0.616011, -0.771567,
		-0.226305, 0.783386, -0.578872,
		0.961026, 0.082688, -0.263803,
		37.370850, 42.182583, 47.262680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677258, 42.234383, 46.773659>,  <36.698132, 42.124702, 47.447342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677258, 42.234383, 46.773659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053768, 42.108437, 46.822426>,  <37.279675, 42.032871, 46.851685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053768, 42.108437, 46.822426>,  <36.677258, 42.234383, 46.773659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053768, 42.108437, 46.822426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068982, -0.532798, -0.843426,
		0.330519, 0.785486, -0.523229,
		0.941275, -0.314862, 0.121916,
		37.336151, 42.013977, 46.859001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918915, 42.186951, 46.191555>,  <36.677258, 42.234383, 46.773659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918915, 42.186951, 46.191555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172504, 41.938118, 46.375332>,  <37.324657, 41.788818, 46.485600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172504, 41.938118, 46.375332>,  <36.918915, 42.186951, 46.191555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172504, 41.938118, 46.375332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077751, -0.539815, -0.838186,
		0.769437, 0.567110, -0.293861,
		0.633973, -0.622083, 0.459446,
		37.362698, 41.751492, 46.513165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484245, 42.129074, 45.684113>,  <36.918915, 42.186951, 46.191555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484245, 42.129074, 45.684113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561138, 41.831707, 45.940357>,  <37.607273, 41.653286, 46.094105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561138, 41.831707, 45.940357>,  <37.484245, 42.129074, 45.684113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561138, 41.831707, 45.940357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144356, -0.624259, -0.767764,
		0.970674, 0.240066, -0.012687,
		0.192234, -0.743417, 0.640607,
		37.618809, 41.608681, 46.132538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061115, 41.790039, 45.441341>,  <37.484245, 42.129074, 45.684113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061115, 41.790039, 45.441341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864910, 41.526569, 45.669567>,  <37.747189, 41.368488, 45.806503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864910, 41.526569, 45.669567>,  <38.061115, 41.790039, 45.441341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864910, 41.526569, 45.669567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000287, -0.654622, -0.755956,
		0.871436, -0.370967, 0.320909,
		-0.490509, -0.658676, 0.570568,
		37.717758, 41.328968, 45.840736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471508, 41.271545, 45.353249>,  <38.061115, 41.790039, 45.441341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471508, 41.271545, 45.353249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123199, 41.127693, 45.487362>,  <37.914215, 41.041382, 45.567829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123199, 41.127693, 45.487362>,  <38.471508, 41.271545, 45.353249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123199, 41.127693, 45.487362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078957, -0.775342, -0.626586,
		0.485302, -0.519142, 0.703544,
		-0.870774, -0.359633, 0.335285,
		37.861969, 41.019802, 45.587948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603661, 40.634914, 45.427319>,  <38.471508, 41.271545, 45.353249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603661, 40.634914, 45.427319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204418, 40.641384, 45.403591>,  <37.964870, 40.645264, 45.389355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204418, 40.641384, 45.403591>,  <38.603661, 40.634914, 45.427319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204418, 40.641384, 45.403591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025397, -0.770215, -0.637278,
		-0.055993, -0.637579, 0.768348,
		-0.998108, 0.016169, -0.059319,
		37.904987, 40.646236, 45.385796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424885, 39.993496, 45.351044>,  <38.603661, 40.634914, 45.427319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424885, 39.993496, 45.351044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106800, 40.175148, 45.190342>,  <37.915951, 40.284138, 45.093922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106800, 40.175148, 45.190342>,  <38.424885, 39.993496, 45.351044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106800, 40.175148, 45.190342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039538, -0.622347, -0.781742,
		-0.605037, -0.637537, 0.476945,
		-0.795215, 0.454126, -0.401750,
		37.868237, 40.311386, 45.069817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095856, 39.445431, 45.106789>,  <38.424885, 39.993496, 45.351044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095856, 39.445431, 45.106789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.911030, 39.751728, 44.927841>,  <37.800133, 39.935505, 44.820473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.911030, 39.751728, 44.927841>,  <38.095856, 39.445431, 45.106789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911030, 39.751728, 44.927841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089047, -0.541957, -0.835675,
		-0.882365, -0.346298, 0.318605,
		-0.462063, 0.765742, -0.447367,
		37.772411, 39.981449, 44.793633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497883, 39.132061, 44.692932>,  <38.095856, 39.445431, 45.106789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497883, 39.132061, 44.692932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577747, 39.488415, 44.529732>,  <37.625668, 39.702229, 44.431812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577747, 39.488415, 44.529732>,  <37.497883, 39.132061, 44.692932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577747, 39.488415, 44.529732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062006, -0.404059, -0.912629,
		-0.977901, 0.207515, -0.025435,
		0.199661, 0.890884, -0.407997,
		37.637646, 39.755680, 44.407333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099380, 39.185448, 43.985332>,  <37.497883, 39.132061, 44.692932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099380, 39.185448, 43.985332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410789, 39.435680, 43.965134>,  <37.597633, 39.585819, 43.953014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410789, 39.435680, 43.965134>,  <37.099380, 39.185448, 43.985332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410789, 39.435680, 43.965134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134939, -0.245417, -0.959980,
		-0.612940, 0.740551, -0.275478,
		0.778522, 0.625583, -0.050496,
		37.644344, 39.623356, 43.949986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919052, 39.633572, 43.378124>,  <37.099380, 39.185448, 43.985332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919052, 39.633572, 43.378124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303993, 39.689018, 43.471645>,  <37.534958, 39.722286, 43.527760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303993, 39.689018, 43.471645>,  <36.919052, 39.633572, 43.378124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303993, 39.689018, 43.471645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235877, 0.001529, -0.971782,
		-0.135067, 0.990344, -0.031226,
		0.962351, 0.138621, 0.233806,
		37.592697, 39.730606, 43.541786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185596, 40.093002, 42.869762>,  <36.919052, 39.633572, 43.378124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185596, 40.093002, 42.869762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513760, 39.891312, 42.977600>,  <37.710659, 39.770298, 43.042301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513760, 39.891312, 42.977600>,  <37.185596, 40.093002, 42.869762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513760, 39.891312, 42.977600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214738, -0.165269, -0.962587,
		0.529920, 0.847608, -0.027311,
		0.820410, -0.504229, 0.269593,
		37.759884, 39.740044, 43.058479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755096, 40.376877, 42.469509>,  <37.185596, 40.093002, 42.869762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755096, 40.376877, 42.469509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889088, 40.016827, 42.580917>,  <37.969482, 39.800797, 42.647762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889088, 40.016827, 42.580917>,  <37.755096, 40.376877, 42.469509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889088, 40.016827, 42.580917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189671, -0.225126, -0.955690,
		0.922939, 0.372958, 0.095316,
		0.334974, -0.900123, 0.278517,
		37.989578, 39.746788, 42.664471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321766, 40.300091, 42.090347>,  <37.755096, 40.376877, 42.469509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321766, 40.300091, 42.090347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207710, 39.928734, 42.185669>,  <38.139278, 39.705921, 42.242863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207710, 39.928734, 42.185669>,  <38.321766, 40.300091, 42.090347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207710, 39.928734, 42.185669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206233, -0.302227, -0.930659,
		0.936037, -0.216220, 0.277641,
		-0.285138, -0.928390, 0.238304,
		38.122169, 39.650215, 42.257160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831417, 39.878151, 41.875061>,  <38.321766, 40.300091, 42.090347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831417, 39.878151, 41.875061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522491, 39.629490, 41.927334>,  <38.337135, 39.480293, 41.958698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522491, 39.629490, 41.927334>,  <38.831417, 39.878151, 41.875061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522491, 39.629490, 41.927334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191354, -0.423831, -0.885297,
		0.605733, -0.658723, 0.446287,
		-0.772316, -0.621652, 0.130679,
		38.290798, 39.442993, 41.966537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.670643, 34.429436, 26.300179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511360, 34.152782, 26.059156>,  <41.415791, 33.986790, 25.914543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511360, 34.152782, 26.059156>,  <41.670643, 34.429436, 26.300179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511360, 34.152782, 26.059156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049400, -0.672101, 0.738810,
		-0.915963, 0.264436, 0.301805,
		-0.398211, -0.691632, -0.602556,
		41.391895, 33.945293, 25.878389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999519, 34.141163, 26.618620>,  <41.670643, 34.429436, 26.300179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999519, 34.141163, 26.618620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.252964, 33.925346, 26.396835>,  <41.405033, 33.795856, 26.263763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.252964, 33.925346, 26.396835>,  <40.999519, 34.141163, 26.618620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252964, 33.925346, 26.396835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201029, -0.577247, 0.791438,
		-0.747075, -0.612929, -0.257288,
		0.633613, -0.539541, -0.554463,
		41.443047, 33.763485, 26.230497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795456, 33.456532, 26.635555>,  <40.999519, 34.141163, 26.618620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795456, 33.456532, 26.635555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177650, 33.409245, 26.527433>,  <41.406967, 33.380871, 26.462561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177650, 33.409245, 26.527433>,  <40.795456, 33.456532, 26.635555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177650, 33.409245, 26.527433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124974, -0.667753, 0.733817,
		-0.267249, -0.734935, -0.623257,
		0.955489, -0.118221, -0.270304,
		41.464298, 33.373779, 26.446342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937233, 32.675133, 26.658770>,  <40.795456, 33.456532, 26.635555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937233, 32.675133, 26.658770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292271, 32.859352, 26.655317>,  <41.505295, 32.969883, 26.653246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292271, 32.859352, 26.655317>,  <40.937233, 32.675133, 26.658770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292271, 32.859352, 26.655317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302500, -0.568665, 0.764927,
		0.347377, -0.681555, -0.644059,
		0.887594, 0.460546, -0.008629,
		41.558548, 32.997517, 26.652729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457375, 32.163868, 26.914310>,  <40.937233, 32.675133, 26.658770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457375, 32.163868, 26.914310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.655464, 32.507256, 26.967655>,  <41.774319, 32.713287, 26.999662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.655464, 32.507256, 26.967655>,  <41.457375, 32.163868, 26.914310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655464, 32.507256, 26.967655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265468, -0.295699, 0.917654,
		0.827210, -0.419044, -0.374334,
		0.495228, 0.858466, 0.133362,
		41.804031, 32.764793, 27.007664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098526, 31.883354, 27.085127>,  <41.457375, 32.163868, 26.914310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098526, 31.883354, 27.085127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.077290, 32.258053, 27.223509>,  <42.064548, 32.482872, 27.306538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.077290, 32.258053, 27.223509>,  <42.098526, 31.883354, 27.085127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077290, 32.258053, 27.223509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123772, -0.337599, 0.933117,
		0.990889, 0.092363, -0.098018,
		-0.053095, 0.936748, 0.345955,
		42.061359, 32.539078, 27.327295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588413, 31.938854, 27.611435>,  <42.098526, 31.883354, 27.085127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588413, 31.938854, 27.611435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367413, 32.258339, 27.706766>,  <42.234810, 32.450031, 27.763964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367413, 32.258339, 27.706766>,  <42.588413, 31.938854, 27.611435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367413, 32.258339, 27.706766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100034, -0.220323, 0.970284,
		0.827485, 0.559928, 0.041831,
		-0.552505, 0.798711, 0.238326,
		42.201660, 32.497952, 27.778263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948925, 32.254124, 28.126259>,  <42.588413, 31.938854, 27.611435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948925, 32.254124, 28.126259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581585, 32.402302, 28.181978>,  <42.361179, 32.491207, 28.215410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581585, 32.402302, 28.181978>,  <42.948925, 32.254124, 28.126259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581585, 32.402302, 28.181978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165936, 0.040859, 0.985290,
		0.359304, 0.927955, -0.098994,
		-0.918349, 0.370446, 0.139300,
		42.306080, 32.513435, 28.223768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042469, 32.828747, 28.641581>,  <42.948925, 32.254124, 28.126259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042469, 32.828747, 28.641581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.673767, 32.673824, 28.633959>,  <42.452545, 32.580872, 28.629387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.673767, 32.673824, 28.633959>,  <43.042469, 32.828747, 28.641581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673767, 32.673824, 28.633959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007458, -0.066832, 0.997736,
		-0.387704, 0.919525, 0.064491,
		-0.921754, -0.387307, -0.019053,
		42.397240, 32.557632, 28.628242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682411, 33.123856, 29.257729>,  <43.042469, 32.828747, 28.641581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682411, 33.123856, 29.257729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457001, 32.802017, 29.182831>,  <42.321754, 32.608913, 29.137892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457001, 32.802017, 29.182831>,  <42.682411, 33.123856, 29.257729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457001, 32.802017, 29.182831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238034, -0.058898, 0.969469,
		-0.791060, 0.590894, -0.158330,
		-0.563528, -0.804596, -0.187245,
		42.287941, 32.560638, 29.126657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070210, 33.254593, 29.650152>,  <42.682411, 33.123856, 29.257729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070210, 33.254593, 29.650152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081200, 32.859760, 29.587023>,  <42.087791, 32.622860, 29.549145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081200, 32.859760, 29.587023>,  <42.070210, 33.254593, 29.650152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081200, 32.859760, 29.587023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423538, -0.154507, 0.892605,
		-0.905462, 0.042323, -0.422313,
		0.027473, -0.987085, -0.157825,
		42.089443, 32.563633, 29.539675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349941, 33.052135, 29.788944>,  <42.070210, 33.254593, 29.650152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349941, 33.052135, 29.788944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608170, 32.750687, 29.838417>,  <41.763107, 32.569817, 29.868101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608170, 32.750687, 29.838417>,  <41.349941, 33.052135, 29.788944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608170, 32.750687, 29.838417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378946, -0.175494, 0.908626,
		-0.663053, -0.633451, -0.398875,
		0.645570, -0.753619, 0.123682,
		41.801842, 32.524601, 29.875523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907093, 32.480751, 30.073435>,  <41.349941, 33.052135, 29.788944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907093, 32.480751, 30.073435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272415, 32.339417, 30.154461>,  <41.491608, 32.254616, 30.203075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272415, 32.339417, 30.154461>,  <40.907093, 32.480751, 30.073435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272415, 32.339417, 30.154461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251244, -0.097329, 0.963018,
		-0.320555, -0.930419, -0.177665,
		0.913302, -0.353338, 0.202563,
		41.546406, 32.233418, 30.215229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772823, 31.951630, 30.450476>,  <40.907093, 32.480751, 30.073435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772823, 31.951630, 30.450476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.158588, 32.002651, 30.543123>,  <41.390045, 32.033264, 30.598711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.158588, 32.002651, 30.543123>,  <40.772823, 31.951630, 30.450476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158588, 32.002651, 30.543123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190796, -0.270760, 0.943550,
		0.183069, -0.954158, -0.236786,
		0.964408, 0.127557, 0.231617,
		41.447910, 32.040916, 30.612608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993477, 31.457237, 30.910257>,  <40.772823, 31.951630, 30.450476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993477, 31.457237, 30.910257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.293697, 31.712099, 30.980356>,  <41.473827, 31.865017, 31.022415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.293697, 31.712099, 30.980356>,  <40.993477, 31.457237, 30.910257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293697, 31.712099, 30.980356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094461, -0.159029, 0.982745,
		0.654029, -0.754151, -0.059173,
		0.750548, 0.637154, 0.175247,
		41.518864, 31.903246, 31.032930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363720, 31.140621, 31.329372>,  <40.993477, 31.457237, 30.910257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363720, 31.140621, 31.329372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498821, 31.514605, 31.372782>,  <41.579884, 31.738995, 31.398827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498821, 31.514605, 31.372782>,  <41.363720, 31.140621, 31.329372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498821, 31.514605, 31.372782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000202, -0.115227, 0.993339,
		0.941234, -0.335527, -0.038730,
		0.337755, 0.934957, 0.108523,
		41.600147, 31.795092, 31.405338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889706, 31.027706, 31.845629>,  <41.363720, 31.140621, 31.329372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889706, 31.027706, 31.845629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.816158, 31.420885, 31.844929>,  <41.772030, 31.656794, 31.844509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.816158, 31.420885, 31.844929>,  <41.889706, 31.027706, 31.845629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816158, 31.420885, 31.844929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081149, 0.016952, 0.996558,
		0.979596, 0.183092, -0.082883,
		-0.183866, 0.982950, -0.001748,
		41.760998, 31.715771, 31.844404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267410, 31.249338, 32.424255>,  <41.889706, 31.027706, 31.845629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267410, 31.249338, 32.424255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996807, 31.537382, 32.362572>,  <41.834446, 31.710209, 32.325562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996807, 31.537382, 32.362572>,  <42.267410, 31.249338, 32.424255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996807, 31.537382, 32.362572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054089, 0.160248, 0.985594,
		0.734446, 0.675104, -0.069459,
		-0.676509, 0.720108, -0.154209,
		41.793854, 31.753414, 32.316311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354713, 31.717190, 32.858826>,  <42.267410, 31.249338, 32.424255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354713, 31.717190, 32.858826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.978680, 31.823891, 32.773891>,  <41.753059, 31.887911, 32.722931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.978680, 31.823891, 32.773891>,  <42.354713, 31.717190, 32.858826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978680, 31.823891, 32.773891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183247, 0.129878, 0.974450,
		0.287512, 0.954974, -0.073215,
		-0.940084, 0.266750, -0.212337,
		41.696655, 31.903915, 32.710190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247738, 32.335941, 33.175621>,  <42.354713, 31.717190, 32.858826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247738, 32.335941, 33.175621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905796, 32.136917, 33.116760>,  <41.700630, 32.017502, 33.081444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905796, 32.136917, 33.116760>,  <42.247738, 32.335941, 33.175621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905796, 32.136917, 33.116760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185620, 0.028429, 0.982210,
		-0.484529, 0.866962, -0.116660,
		-0.854855, -0.497564, -0.147150,
		41.649338, 31.987648, 33.072617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750751, 32.723835, 33.587086>,  <42.247738, 32.335941, 33.175621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750751, 32.723835, 33.587086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602024, 32.359882, 33.513474>,  <41.512787, 32.141510, 33.469307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602024, 32.359882, 33.513474>,  <41.750751, 32.723835, 33.587086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602024, 32.359882, 33.513474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174067, -0.126391, 0.976589,
		-0.911841, 0.395143, -0.111386,
		-0.371814, -0.909883, -0.184030,
		41.490479, 32.086918, 33.458263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472286, 33.050976, 33.869881>,  <41.750751, 32.723835, 33.587086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472286, 33.050976, 33.869881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278942, 32.701836, 33.896694>,  <42.162933, 32.492352, 33.912785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278942, 32.701836, 33.896694>,  <42.472286, 33.050976, 33.869881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278942, 32.701836, 33.896694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875416, -0.481717, 0.039938,
		-0.002567, 0.077990, 0.996951,
		-0.483363, -0.872850, 0.067037,
		42.133934, 32.439980, 33.916805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918095, 33.408119, 34.360039>,  <42.472286, 33.050976, 33.869881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918095, 33.408119, 34.360039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309624, 33.485008, 34.388180>,  <43.544540, 33.531143, 34.405064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309624, 33.485008, 34.388180>,  <42.918095, 33.408119, 34.360039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309624, 33.485008, 34.388180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013830, 0.280821, -0.959661,
		-0.204229, 0.940313, 0.272216,
		0.978825, 0.192226, 0.070357,
		43.603271, 33.542675, 34.409286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041164, 34.155998, 34.050365>,  <42.918095, 33.408119, 34.360039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041164, 34.155998, 34.050365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378712, 33.942913, 34.024742>,  <43.581242, 33.815063, 34.009369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378712, 33.942913, 34.024742>,  <43.041164, 34.155998, 34.050365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378712, 33.942913, 34.024742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018690, 0.148509, -0.988734,
		0.536227, 0.833163, 0.135279,
		0.843867, -0.532714, -0.064063,
		43.631870, 33.783100, 34.005524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417953, 34.490803, 33.526436>,  <43.041164, 34.155998, 34.050365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417953, 34.490803, 33.526436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.601612, 34.137840, 33.567509>,  <43.711807, 33.926064, 33.592152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.601612, 34.137840, 33.567509>,  <43.417953, 34.490803, 33.526436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601612, 34.137840, 33.567509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315349, 0.053835, -0.947447,
		0.830506, 0.467398, 0.302984,
		0.459146, -0.882406, 0.102683,
		43.739357, 33.873119, 33.598312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166142, 34.608002, 33.356052>,  <43.417953, 34.490803, 33.526436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166142, 34.608002, 33.356052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046413, 34.230564, 33.299431>,  <43.974575, 34.004101, 33.265457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046413, 34.230564, 33.299431>,  <44.166142, 34.608002, 33.356052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046413, 34.230564, 33.299431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362281, 0.024858, -0.931737,
		0.882700, -0.330173, 0.334405,
		-0.299321, -0.943593, -0.141557,
		43.956615, 33.947487, 33.256962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730900, 34.328342, 33.061855>,  <44.166142, 34.608002, 33.356052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730900, 34.328342, 33.061855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453278, 34.058590, 32.961063>,  <44.286705, 33.896736, 32.900589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453278, 34.058590, 32.961063>,  <44.730900, 34.328342, 33.061855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453278, 34.058590, 32.961063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340737, 0.000613, -0.940158,
		0.634183, -0.738379, 0.229363,
		-0.694053, -0.674385, -0.251982,
		44.245060, 33.856274, 32.885468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131039, 33.866627, 32.496529>,  <44.730900, 34.328342, 33.061855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131039, 33.866627, 32.496529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736618, 33.805962, 32.469082>,  <44.499966, 33.769562, 32.452614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736618, 33.805962, 32.469082>,  <45.131039, 33.866627, 32.496529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736618, 33.805962, 32.469082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073097, -0.024165, -0.997032,
		0.149554, -0.988137, 0.034914,
		-0.986048, -0.151662, -0.068616,
		44.440804, 33.760464, 32.448498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049458, 33.296265, 32.024982>,  <45.131039, 33.866627, 32.496529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049458, 33.296265, 32.024982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701576, 33.493439, 32.015007>,  <44.492847, 33.611744, 32.009022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701576, 33.493439, 32.015007>,  <45.049458, 33.296265, 32.024982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701576, 33.493439, 32.015007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128294, 0.176984, -0.975816,
		-0.476605, -0.851873, -0.217165,
		-0.869706, 0.492939, -0.024939,
		44.440666, 33.641319, 32.007526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688137, 32.991386, 31.437889>,  <45.049458, 33.296265, 32.024982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688137, 32.991386, 31.437889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.492447, 33.333702, 31.505173>,  <44.375034, 33.539089, 31.545542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.492447, 33.333702, 31.505173>,  <44.688137, 32.991386, 31.437889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492447, 33.333702, 31.505173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039769, 0.170774, -0.984507,
		-0.871253, -0.488331, -0.049513,
		-0.489221, 0.855786, 0.168208,
		44.345680, 33.590439, 31.555635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157948, 32.953354, 30.927923>,  <44.688137, 32.991386, 31.437889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157948, 32.953354, 30.927923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.189079, 33.332870, 31.050390>,  <44.207760, 33.560581, 31.123871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.189079, 33.332870, 31.050390>,  <44.157948, 32.953354, 30.927923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189079, 33.332870, 31.050390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144510, 0.314590, -0.938163,
		-0.986438, 0.028774, 0.161594,
		0.077830, 0.948792, 0.306166,
		44.212429, 33.617508, 31.142241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727310, 33.285801, 30.580471>,  <44.157948, 32.953354, 30.927923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727310, 33.285801, 30.580471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956459, 33.596409, 30.685415>,  <44.093948, 33.782772, 30.748383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956459, 33.596409, 30.685415>,  <43.727310, 33.285801, 30.580471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956459, 33.596409, 30.685415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105966, 0.387573, -0.915728,
		-0.812765, 0.496795, 0.304314,
		0.572873, 0.776519, 0.262363,
		44.128323, 33.829365, 30.764124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360455, 33.865940, 30.371801>,  <43.727310, 33.285801, 30.580471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360455, 33.865940, 30.371801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745346, 33.969654, 30.404980>,  <43.976280, 34.031883, 30.424887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745346, 33.969654, 30.404980>,  <43.360455, 33.865940, 30.371801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745346, 33.969654, 30.404980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030614, 0.405816, -0.913442,
		-0.270505, 0.876404, 0.398427,
		0.962232, 0.259288, 0.082945,
		44.034016, 34.047440, 30.429863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372623, 34.524799, 30.140242>,  <43.360455, 33.865940, 30.371801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372623, 34.524799, 30.140242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747101, 34.385891, 30.118505>,  <43.971786, 34.302547, 30.105463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747101, 34.385891, 30.118505>,  <43.372623, 34.524799, 30.140242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747101, 34.385891, 30.118505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102255, 0.416997, -0.903138,
		0.336290, 0.839952, 0.425898,
		0.936191, -0.347266, -0.054342,
		44.027958, 34.281712, 30.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726261, 35.085701, 29.915936>,  <43.372623, 34.524799, 30.140242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726261, 35.085701, 29.915936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.980827, 34.786167, 29.841930>,  <44.133568, 34.606449, 29.797527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.980827, 34.786167, 29.841930>,  <43.726261, 35.085701, 29.915936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980827, 34.786167, 29.841930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181271, 0.378334, -0.907747,
		0.749745, 0.544166, 0.376518,
		0.636415, -0.748830, -0.185012,
		44.171753, 34.561520, 29.786427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229176, 35.340618, 29.418148>,  <43.726261, 35.085701, 29.915936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229176, 35.340618, 29.418148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282608, 34.944302, 29.409279>,  <44.314667, 34.706512, 29.403957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282608, 34.944302, 29.409279>,  <44.229176, 35.340618, 29.418148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282608, 34.944302, 29.409279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093970, 0.034935, -0.994962,
		0.986572, 0.130828, 0.097772,
		0.133585, -0.990789, -0.022172,
		44.322685, 34.647064, 29.402628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664284, 35.358059, 28.873146>,  <44.229176, 35.340618, 29.418148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664284, 35.358059, 28.873146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507099, 34.992950, 28.917759>,  <44.412788, 34.773888, 28.944527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507099, 34.992950, 28.917759>,  <44.664284, 35.358059, 28.873146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507099, 34.992950, 28.917759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074433, -0.089318, -0.993218,
		0.916540, -0.398593, -0.032842,
		-0.392957, -0.912768, 0.111532,
		44.389214, 34.719120, 28.951220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014515, 34.960705, 28.416786>,  <44.664284, 35.358059, 28.873146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014515, 34.960705, 28.416786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688194, 34.741653, 28.491165>,  <44.492401, 34.610222, 28.535793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688194, 34.741653, 28.491165>,  <45.014515, 34.960705, 28.416786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688194, 34.741653, 28.491165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110241, -0.168380, -0.979538,
		0.567731, -0.819606, 0.076993,
		-0.815799, -0.547626, 0.185949,
		44.443455, 34.577366, 28.546949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168064, 34.279976, 27.993979>,  <45.014515, 34.960705, 28.416786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168064, 34.279976, 27.993979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781971, 34.325661, 28.088020>,  <44.550316, 34.353073, 28.144445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781971, 34.325661, 28.088020>,  <45.168064, 34.279976, 27.993979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781971, 34.325661, 28.088020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253496, -0.189849, -0.948524,
		-0.063695, -0.975148, 0.212201,
		-0.965237, 0.114209, 0.235104,
		44.492401, 34.359924, 28.158552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851383, 33.701817, 27.727549>,  <45.168064, 34.279976, 27.993979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851383, 33.701817, 27.727549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539532, 33.948738, 27.769709>,  <44.352421, 34.096893, 27.795006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539532, 33.948738, 27.769709>,  <44.851383, 33.701817, 27.727549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539532, 33.948738, 27.769709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295271, -0.213923, -0.931156,
		-0.552261, -0.757080, 0.349053,
		-0.779630, 0.617306, 0.105402,
		44.305641, 34.133930, 27.801329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212765, 33.328186, 27.466639>,  <44.851383, 33.701817, 27.727549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212765, 33.328186, 27.466639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126694, 33.718678, 27.476980>,  <44.075050, 33.952972, 27.483185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126694, 33.718678, 27.476980>,  <44.212765, 33.328186, 27.466639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126694, 33.718678, 27.476980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323008, -0.046164, -0.945270,
		-0.921609, -0.211754, 0.325264,
		-0.215180, 0.976232, 0.025853,
		44.062141, 34.011547, 27.484735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591389, 33.394207, 27.272976>,  <44.212765, 33.328186, 27.466639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591389, 33.394207, 27.272976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.734356, 33.757008, 27.183882>,  <43.820137, 33.974686, 27.130424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.734356, 33.757008, 27.183882>,  <43.591389, 33.394207, 27.272976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734356, 33.757008, 27.183882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411577, -0.061118, -0.909324,
		-0.838367, 0.416678, 0.351454,
		0.357415, 0.906997, -0.222735,
		43.841579, 34.029106, 27.117062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.285408, 36.621162, 38.635101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995209, 36.411686, 38.813717>,  <40.821087, 36.285999, 38.920887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995209, 36.411686, 38.813717>,  <41.285408, 36.621162, 38.635101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995209, 36.411686, 38.813717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074012, -0.585696, -0.807145,
		0.684229, -0.618634, 0.386164,
		-0.725502, -0.523691, 0.446536,
		40.777557, 36.254578, 38.947678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432159, 36.023090, 38.354034>,  <41.285408, 36.621162, 38.635101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432159, 36.023090, 38.354034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066418, 35.964115, 38.504879>,  <40.846973, 35.928730, 38.595387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066418, 35.964115, 38.504879>,  <41.432159, 36.023090, 38.354034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066418, 35.964115, 38.504879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148696, -0.744006, -0.651417,
		0.376615, -0.651704, 0.658365,
		-0.914358, -0.147437, 0.377109,
		40.792110, 35.919884, 38.618011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413422, 35.351532, 38.377495>,  <41.432159, 36.023090, 38.354034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413422, 35.351532, 38.377495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052307, 35.521976, 38.354126>,  <40.835640, 35.624245, 38.340103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052307, 35.521976, 38.354126>,  <41.413422, 35.351532, 38.377495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052307, 35.521976, 38.354126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227940, -0.589210, -0.775161,
		-0.364731, -0.686484, 0.629056,
		-0.902782, 0.426112, -0.058426,
		40.781471, 35.649811, 38.336597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996494, 34.789135, 38.175964>,  <41.413422, 35.351532, 38.377495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996494, 34.789135, 38.175964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757359, 35.101315, 38.102768>,  <40.613876, 35.288620, 38.058849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757359, 35.101315, 38.102768>,  <40.996494, 34.789135, 38.175964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757359, 35.101315, 38.102768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379239, -0.476484, -0.793184,
		-0.706230, -0.404803, 0.580839,
		-0.597844, 0.780447, -0.182990,
		40.578007, 35.335449, 38.047871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325768, 34.553368, 38.077435>,  <40.996494, 34.789135, 38.175964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325768, 34.553368, 38.077435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327888, 34.902493, 37.882221>,  <40.329159, 35.111965, 37.765095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327888, 34.902493, 37.882221>,  <40.325768, 34.553368, 38.077435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327888, 34.902493, 37.882221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489143, -0.423405, -0.762539,
		-0.872187, 0.242759, 0.424685,
		0.005299, 0.872809, -0.488032,
		40.329479, 35.164337, 37.735813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598236, 34.652039, 37.799702>,  <40.325768, 34.553368, 38.077435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598236, 34.652039, 37.799702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839401, 34.881176, 37.577587>,  <39.984100, 35.018658, 37.444317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839401, 34.881176, 37.577587>,  <39.598236, 34.652039, 37.799702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839401, 34.881176, 37.577587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384440, -0.401275, -0.831375,
		-0.699074, 0.714720, -0.021707,
		0.602911, 0.572847, -0.555288,
		40.020275, 35.053032, 37.410999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172729, 34.973942, 37.246559>,  <39.598236, 34.652039, 37.799702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172729, 34.973942, 37.246559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555332, 34.986782, 37.130585>,  <39.784893, 34.994488, 37.061001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555332, 34.986782, 37.130585>,  <39.172729, 34.973942, 37.246559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555332, 34.986782, 37.130585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271024, -0.269839, -0.923977,
		-0.107900, 0.962370, -0.249402,
		0.956506, 0.032103, -0.289941,
		39.842285, 34.996414, 37.043602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210415, 35.183060, 36.428764>,  <39.172729, 34.973942, 37.246559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210415, 35.183060, 36.428764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562973, 35.017059, 36.519020>,  <39.774509, 34.917458, 36.573174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562973, 35.017059, 36.519020>,  <39.210415, 35.183060, 36.428764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562973, 35.017059, 36.519020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000508, -0.478502, -0.878086,
		0.472377, 0.773828, -0.421961,
		0.881397, -0.415002, 0.225640,
		39.827393, 34.892559, 36.586712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631840, 35.219574, 35.773586>,  <39.210415, 35.183060, 36.428764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631840, 35.219574, 35.773586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754333, 34.924183, 36.013878>,  <39.827831, 34.746948, 36.158054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754333, 34.924183, 36.013878>,  <39.631840, 35.219574, 35.773586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754333, 34.924183, 36.013878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037189, -0.639847, -0.767602,
		0.951229, 0.212725, -0.223407,
		0.306234, -0.738474, 0.600731,
		39.846203, 34.702641, 36.194096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962727, 34.743580, 35.271496>,  <39.631840, 35.219574, 35.773586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962727, 34.743580, 35.271496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974312, 34.525440, 35.606579>,  <39.981262, 34.394554, 35.807629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974312, 34.525440, 35.606579>,  <39.962727, 34.743580, 35.271496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974312, 34.525440, 35.606579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043603, -0.836572, -0.546119,
		0.998629, 0.052345, -0.000452,
		0.028965, -0.545351, 0.837707,
		39.983002, 34.361835, 35.857891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536964, 34.245388, 35.211189>,  <39.962727, 34.743580, 35.271496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536964, 34.245388, 35.211189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256752, 34.108990, 35.461941>,  <40.088623, 34.027153, 35.612392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256752, 34.108990, 35.461941>,  <40.536964, 34.245388, 35.211189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256752, 34.108990, 35.461941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075347, -0.908882, -0.410191,
		0.709630, -0.240119, 0.662395,
		-0.700534, -0.340993, 0.626878,
		40.046593, 34.006691, 35.650005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813675, 33.626762, 35.434700>,  <40.536964, 34.245388, 35.211189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813675, 33.626762, 35.434700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419632, 33.612537, 35.501999>,  <40.183208, 33.604000, 35.542377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419632, 33.612537, 35.501999>,  <40.813675, 33.626762, 35.434700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419632, 33.612537, 35.501999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039672, -0.904985, -0.423589,
		0.167323, -0.423954, 0.890093,
		-0.985103, -0.035565, 0.168244,
		40.124100, 33.601868, 35.552471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546223, 33.238323, 36.105011>,  <40.813675, 33.626762, 35.434700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546223, 33.238323, 36.105011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326504, 33.251621, 35.771023>,  <40.194672, 33.259602, 35.570629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326504, 33.251621, 35.771023>,  <40.546223, 33.238323, 36.105011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326504, 33.251621, 35.771023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016438, -0.998585, -0.050575,
		-0.835468, -0.041506, 0.547970,
		-0.549294, 0.033247, -0.834968,
		40.161716, 33.261597, 35.520531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833870, 32.956997, 36.141209>,  <40.546223, 33.238323, 36.105011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833870, 32.956997, 36.141209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014339, 32.877338, 35.793236>,  <40.122623, 32.829544, 35.584454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014339, 32.877338, 35.793236>,  <39.833870, 32.956997, 36.141209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014339, 32.877338, 35.793236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184967, -0.974484, 0.127154,
		-0.873056, 0.103539, -0.476501,
		0.451177, -0.199149, -0.869930,
		40.149693, 32.817593, 35.532257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849827, 32.272350, 36.282101>,  <39.833870, 32.956997, 36.141209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849827, 32.272350, 36.282101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082062, 31.989149, 36.442924>,  <40.221401, 31.819229, 36.539417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082062, 31.989149, 36.442924>,  <39.849827, 32.272350, 36.282101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082062, 31.989149, 36.442924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635723, -0.085668, 0.767148,
		-0.508698, -0.700996, -0.499831,
		0.580588, -0.708001, 0.402060,
		40.256237, 31.776749, 36.563541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344799, 31.964788, 36.573185>,  <39.849827, 32.272350, 36.282101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344799, 31.964788, 36.573185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682831, 31.834721, 36.742943>,  <39.885651, 31.756680, 36.844795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682831, 31.834721, 36.742943>,  <39.344799, 31.964788, 36.573185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682831, 31.834721, 36.742943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490811, -0.157069, 0.856991,
		-0.212005, -0.932522, -0.292331,
		0.845079, -0.325166, 0.424392,
		39.936356, 31.737169, 36.870262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130821, 31.429508, 36.973618>,  <39.344799, 31.964788, 36.573185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130821, 31.429508, 36.973618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491356, 31.508871, 37.127621>,  <39.707676, 31.556488, 37.220024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491356, 31.508871, 37.127621>,  <39.130821, 31.429508, 36.973618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491356, 31.508871, 37.127621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421798, 0.200117, 0.884330,
		0.098410, -0.959473, 0.264059,
		0.901334, 0.198406, 0.385010,
		39.761757, 31.568394, 37.243122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188717, 30.950468, 37.610695>,  <39.130821, 31.429508, 36.973618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188717, 30.950468, 37.610695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457890, 31.243187, 37.653858>,  <39.619392, 31.418818, 37.679756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457890, 31.243187, 37.653858>,  <39.188717, 30.950468, 37.610695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457890, 31.243187, 37.653858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305719, 0.142303, 0.941427,
		0.673576, -0.666503, 0.319483,
		0.672928, 0.731795, 0.107911,
		39.659767, 31.462725, 37.686230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426659, 30.918251, 38.309372>,  <39.188717, 30.950468, 37.610695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426659, 30.918251, 38.309372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514118, 31.289059, 38.187500>,  <39.566593, 31.511543, 38.114376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514118, 31.289059, 38.187500>,  <39.426659, 30.918251, 38.309372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514118, 31.289059, 38.187500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280287, 0.358744, 0.890361,
		0.934684, -0.109273, 0.338268,
		0.218644, 0.927018, -0.304684,
		39.579712, 31.567163, 38.096096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728008, 31.287104, 38.876682>,  <39.426659, 30.918251, 38.309372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728008, 31.287104, 38.876682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602417, 31.578718, 38.633396>,  <39.527061, 31.753687, 38.487423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602417, 31.578718, 38.633396>,  <39.728008, 31.287104, 38.876682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602417, 31.578718, 38.633396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471126, 0.436540, 0.766468,
		0.824292, 0.527201, 0.206403,
		-0.313979, 0.729035, -0.608214,
		39.508224, 31.797428, 38.450932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929131, 31.887966, 39.183811>,  <39.728008, 31.287104, 38.876682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929131, 31.887966, 39.183811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614159, 31.986166, 38.957649>,  <39.425175, 32.045086, 38.821953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614159, 31.986166, 38.957649>,  <39.929131, 31.887966, 39.183811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614159, 31.986166, 38.957649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368166, 0.548352, 0.750842,
		0.494369, 0.799400, -0.341407,
		-0.787434, 0.245498, -0.565401,
		39.377930, 32.059814, 38.788029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806725, 32.654606, 39.290176>,  <39.929131, 31.887966, 39.183811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806725, 32.654606, 39.290176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456875, 32.540470, 39.133400>,  <39.246964, 32.471989, 39.039333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456875, 32.540470, 39.133400>,  <39.806725, 32.654606, 39.290176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456875, 32.540470, 39.133400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482883, 0.584592, 0.651979,
		0.043089, 0.759496, -0.649083,
		-0.874624, -0.285338, -0.391937,
		39.194489, 32.454868, 39.015820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384453, 33.317139, 39.118988>,  <39.806725, 32.654606, 39.290176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384453, 33.317139, 39.118988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099434, 33.038120, 39.149216>,  <38.928425, 32.870708, 39.167355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099434, 33.038120, 39.149216>,  <39.384453, 33.317139, 39.118988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099434, 33.038120, 39.149216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543363, 0.616753, 0.569538,
		-0.443888, 0.364758, -0.818484,
		-0.712545, -0.697544, 0.075573,
		38.885670, 32.828857, 39.171886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735210, 33.591572, 38.912365>,  <39.384453, 33.317139, 39.118988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735210, 33.591572, 38.912365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636654, 33.271511, 39.131107>,  <38.577522, 33.079475, 39.262352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636654, 33.271511, 39.131107>,  <38.735210, 33.591572, 38.912365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636654, 33.271511, 39.131107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567228, 0.576574, 0.588061,
		-0.785840, -0.165302, -0.595928,
		-0.246389, -0.800149, 0.546859,
		38.562737, 33.031467, 39.295166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108372, 33.814331, 39.242393>,  <38.735210, 33.591572, 38.912365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108372, 33.814331, 39.242393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225452, 33.490520, 39.445957>,  <38.295700, 33.296234, 39.568096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225452, 33.490520, 39.445957>,  <38.108372, 33.814331, 39.242393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225452, 33.490520, 39.445957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413424, 0.372765, 0.830739,
		-0.862211, -0.453553, -0.225570,
		0.292699, -0.809528, 0.508912,
		38.313263, 33.247662, 39.598629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582981, 33.731773, 39.706940>,  <38.108372, 33.814331, 39.242393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582981, 33.731773, 39.706940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875641, 33.523251, 39.882633>,  <38.051235, 33.398136, 39.988049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875641, 33.523251, 39.882633>,  <37.582981, 33.731773, 39.706940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875641, 33.523251, 39.882633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386877, 0.212975, 0.897200,
		-0.561261, -0.826367, -0.045858,
		0.731651, -0.521305, 0.439237,
		38.095135, 33.366859, 40.014404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275490, 33.607349, 40.320652>,  <37.582981, 33.731773, 39.706940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275490, 33.607349, 40.320652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667660, 33.563904, 40.386333>,  <37.902962, 33.537834, 40.425743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667660, 33.563904, 40.386333>,  <37.275490, 33.607349, 40.320652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667660, 33.563904, 40.386333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102903, 0.428338, 0.897740,
		-0.167845, -0.897067, 0.408777,
		0.980428, -0.108617, 0.164206,
		37.961788, 33.531319, 40.435596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372108, 33.212746, 40.902969>,  <37.275490, 33.607349, 40.320652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372108, 33.212746, 40.902969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716732, 33.412964, 40.869106>,  <37.923508, 33.533096, 40.848789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716732, 33.412964, 40.869106>,  <37.372108, 33.212746, 40.902969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716732, 33.412964, 40.869106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086247, 0.308661, 0.947254,
		0.500279, -0.808812, 0.309100,
		0.861558, 0.500550, -0.084659,
		37.975201, 33.563129, 40.843708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919609, 32.744144, 41.405247>,  <37.372108, 33.212746, 40.902969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919609, 32.744144, 41.405247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583023, 32.834740, 41.601467>,  <36.381073, 32.889099, 41.719200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583023, 32.834740, 41.601467>,  <36.919609, 32.744144, 41.405247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583023, 32.834740, 41.601467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539372, -0.405612, -0.737941,
		0.031834, -0.885540, 0.463472,
		-0.841466, 0.226492, 0.490547,
		36.330582, 32.902687, 41.748631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558228, 32.046326, 41.576408>,  <36.919609, 32.744144, 41.405247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558228, 32.046326, 41.576408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304878, 32.354897, 41.551926>,  <36.152870, 32.540039, 41.537235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304878, 32.354897, 41.551926>,  <36.558228, 32.046326, 41.576408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304878, 32.354897, 41.551926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648134, -0.572028, -0.502699,
		-0.422804, -0.278727, 0.862292,
		-0.633371, 0.771424, -0.061204,
		36.114868, 32.586323, 41.533566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869011, 31.737047, 41.558609>,  <36.558228, 32.046326, 41.576408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869011, 31.737047, 41.558609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824966, 32.120197, 41.452511>,  <35.798538, 32.350086, 41.388851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824966, 32.120197, 41.452511>,  <35.869011, 31.737047, 41.558609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824966, 32.120197, 41.452511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628338, -0.273858, -0.728143,
		-0.770108, 0.086486, 0.632023,
		-0.110110, 0.957874, -0.265243,
		35.791935, 32.407558, 41.372936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158207, 31.758179, 41.466270>,  <35.869011, 31.737047, 41.558609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158207, 31.758179, 41.466270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290642, 32.075260, 41.261528>,  <35.370102, 32.265511, 41.138683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290642, 32.075260, 41.261528>,  <35.158207, 31.758179, 41.466270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290642, 32.075260, 41.261528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531825, -0.291324, -0.795168,
		-0.779450, 0.535490, 0.325127,
		0.331087, 0.792705, -0.511859,
		35.389969, 32.313072, 41.107971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603825, 32.088844, 41.177017>,  <35.158207, 31.758179, 41.466270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603825, 32.088844, 41.177017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922802, 32.189838, 40.957806>,  <35.114189, 32.250435, 40.826279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922802, 32.189838, 40.957806>,  <34.603825, 32.088844, 41.177017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922802, 32.189838, 40.957806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466438, -0.318221, -0.825331,
		-0.382774, 0.913777, -0.135997,
		0.797445, 0.252481, -0.548028,
		35.162037, 32.265583, 40.793396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224537, 32.331150, 40.541378>,  <34.603825, 32.088844, 41.177017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224537, 32.331150, 40.541378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609131, 32.280693, 40.443695>,  <34.839886, 32.250420, 40.385086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609131, 32.280693, 40.443695>,  <34.224537, 32.331150, 40.541378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609131, 32.280693, 40.443695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260881, -0.139096, -0.955297,
		0.086539, 0.982212, -0.166647,
		0.961484, -0.126145, -0.244203,
		34.897575, 32.242851, 40.370434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263027, 32.632130, 39.916565>,  <34.224537, 32.331150, 40.541378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263027, 32.632130, 39.916565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593952, 32.407440, 39.914787>,  <34.792507, 32.272625, 39.913719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593952, 32.407440, 39.914787>,  <34.263027, 32.632130, 39.916565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593952, 32.407440, 39.914787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072171, -0.098440, -0.992522,
		0.557084, 0.821449, -0.121981,
		0.827314, -0.561722, -0.004445,
		34.842148, 32.238922, 39.913452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639500, 32.930019, 39.324154>,  <34.263027, 32.632130, 39.916565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639500, 32.930019, 39.324154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740799, 32.549454, 39.394207>,  <34.801579, 32.321114, 39.436237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740799, 32.549454, 39.394207>,  <34.639500, 32.930019, 39.324154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740799, 32.549454, 39.394207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128729, -0.212564, -0.968631,
		0.958798, 0.222761, -0.176306,
		0.253249, -0.951417, 0.175130,
		34.816772, 32.264030, 39.446747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104336, 32.752567, 38.805298>,  <34.639500, 32.930019, 39.324154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104336, 32.752567, 38.805298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039326, 32.368893, 38.897865>,  <35.000320, 32.138687, 38.953403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039326, 32.368893, 38.897865>,  <35.104336, 32.752567, 38.805298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039326, 32.368893, 38.897865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061757, -0.224187, -0.972587,
		0.984770, -0.172359, -0.022801,
		-0.162522, -0.959183, 0.231417,
		34.990570, 32.081139, 38.967289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493446, 32.360981, 38.336216>,  <35.104336, 32.752567, 38.805298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493446, 32.360981, 38.336216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216595, 32.099300, 38.458176>,  <35.050484, 31.942291, 38.531353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216595, 32.099300, 38.458176>,  <35.493446, 32.360981, 38.336216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216595, 32.099300, 38.458176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040409, -0.386654, -0.921339,
		0.720638, -0.650010, 0.241180,
		-0.692133, -0.654206, 0.304904,
		35.008953, 31.903038, 38.549648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700397, 31.710461, 38.203472>,  <35.493446, 32.360981, 38.336216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700397, 31.710461, 38.203472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300732, 31.697414, 38.213371>,  <35.060932, 31.689587, 38.219311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300732, 31.697414, 38.213371>,  <35.700397, 31.710461, 38.203472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300732, 31.697414, 38.213371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007302, -0.452730, -0.891618,
		0.040283, -0.891051, 0.452112,
		-0.999161, -0.032616, 0.024744,
		35.000984, 31.687630, 38.220795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530872, 31.037603, 37.996479>,  <35.700397, 31.710461, 38.203472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530872, 31.037603, 37.996479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248394, 31.301628, 37.894024>,  <35.078907, 31.460043, 37.832550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248394, 31.301628, 37.894024>,  <35.530872, 31.037603, 37.996479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248394, 31.301628, 37.894024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064780, -0.420493, -0.904980,
		-0.705048, -0.622499, 0.339709,
		-0.706194, 0.660061, -0.256142,
		35.036537, 31.499647, 37.817181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.372154, 33.606098, 45.266212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.071262, 33.846416, 45.157997>,  <36.890728, 33.990608, 45.093067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.071262, 33.846416, 45.157997>,  <37.372154, 33.606098, 45.266212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071262, 33.846416, 45.157997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243351, -0.634888, -0.733278,
		-0.612311, -0.485761, 0.623788,
		-0.752234, 0.600794, -0.270539,
		36.845592, 34.026657, 45.076836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775436, 33.232811, 45.147957>,  <37.372154, 33.606098, 45.266212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775436, 33.232811, 45.147957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714058, 33.571815, 44.944710>,  <36.677231, 33.775219, 44.822762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714058, 33.571815, 44.944710>,  <36.775436, 33.232811, 45.147957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714058, 33.571815, 44.944710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463856, -0.515812, -0.720261,
		-0.872520, 0.125170, 0.472272,
		-0.153449, 0.847508, -0.508117,
		36.668022, 33.826069, 44.792274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152973, 33.113304, 44.799908>,  <36.775436, 33.232811, 45.147957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152973, 33.113304, 44.799908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.287487, 33.431927, 44.598946>,  <36.368195, 33.623100, 44.478371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.287487, 33.431927, 44.598946>,  <36.152973, 33.113304, 44.799908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287487, 33.431927, 44.598946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340388, -0.394600, -0.853479,
		-0.878096, 0.458019, 0.138443,
		0.336280, 0.796561, -0.502401,
		36.388371, 33.670895, 44.448227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649193, 33.241882, 44.269855>,  <36.152973, 33.113304, 44.799908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649193, 33.241882, 44.269855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.967091, 33.456669, 44.156677>,  <36.157829, 33.585541, 44.088772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.967091, 33.456669, 44.156677>,  <35.649193, 33.241882, 44.269855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967091, 33.456669, 44.156677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201631, -0.206124, -0.957527,
		-0.572480, 0.818035, -0.055546,
		0.794740, 0.536965, -0.282943,
		36.205513, 33.617760, 44.071793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467258, 33.710064, 43.727886>,  <35.649193, 33.241882, 44.269855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467258, 33.710064, 43.727886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863880, 33.684372, 43.682827>,  <36.101852, 33.668957, 43.655792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863880, 33.684372, 43.682827>,  <35.467258, 33.710064, 43.727886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863880, 33.684372, 43.682827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125657, -0.261446, -0.957004,
		0.032022, 0.963078, -0.267310,
		0.991557, -0.064235, -0.112645,
		36.161346, 33.665100, 43.649033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703678, 34.050419, 43.012253>,  <35.467258, 33.710064, 43.727886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703678, 34.050419, 43.012253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997963, 33.802738, 43.122032>,  <36.174534, 33.654129, 43.187901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997963, 33.802738, 43.122032>,  <35.703678, 34.050419, 43.012253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997963, 33.802738, 43.122032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030035, -0.374982, -0.926545,
		0.676628, 0.689914, -0.257281,
		0.735712, -0.619199, 0.274445,
		36.218678, 33.616978, 43.204365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165821, 34.151558, 42.524559>,  <35.703678, 34.050419, 43.012253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165821, 34.151558, 42.524559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272083, 33.799496, 42.681915>,  <36.335838, 33.588257, 42.776329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272083, 33.799496, 42.681915>,  <36.165821, 34.151558, 42.524559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272083, 33.799496, 42.681915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139830, -0.438911, -0.887584,
		0.953875, 0.180781, -0.239670,
		0.265652, -0.880157, 0.393387,
		36.351780, 33.535450, 42.799931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840214, 33.953186, 42.153271>,  <36.165821, 34.151558, 42.524559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840214, 33.953186, 42.153271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638252, 33.645901, 42.310711>,  <36.517075, 33.461529, 42.405174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638252, 33.645901, 42.310711>,  <36.840214, 33.953186, 42.153271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638252, 33.645901, 42.310711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175987, -0.354793, -0.918232,
		0.845047, -0.532883, 0.043938,
		-0.504899, -0.768217, 0.393598,
		36.486782, 33.415436, 42.428791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096912, 33.416744, 41.733250>,  <36.840214, 33.953186, 42.153271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096912, 33.416744, 41.733250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.757336, 33.292522, 41.904293>,  <36.553589, 33.217991, 42.006920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.757336, 33.292522, 41.904293>,  <37.096912, 33.416744, 41.733250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757336, 33.292522, 41.904293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307379, -0.368040, -0.877533,
		0.429898, -0.876416, 0.216988,
		-0.848944, -0.310551, 0.427612,
		36.502651, 33.199356, 42.032578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782707, 33.032223, 41.577740>,  <37.096912, 33.416744, 41.733250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782707, 33.032223, 41.577740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939411, 33.370724, 41.433304>,  <38.033432, 33.573822, 41.346642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939411, 33.370724, 41.433304>,  <37.782707, 33.032223, 41.577740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939411, 33.370724, 41.433304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104892, 0.348823, 0.931300,
		0.914069, -0.402722, 0.047890,
		0.391760, 0.846249, -0.361091,
		38.056938, 33.624599, 41.324978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302032, 33.247906, 42.054733>,  <37.782707, 33.032223, 41.577740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302032, 33.247906, 42.054733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267643, 33.585678, 41.843246>,  <38.247009, 33.788342, 41.716354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267643, 33.585678, 41.843246>,  <38.302032, 33.247906, 42.054733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267643, 33.585678, 41.843246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166245, 0.535403, 0.828074,
		0.982330, -0.016703, -0.186413,
		-0.085975, 0.844431, -0.528719,
		38.241852, 33.839008, 41.684631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856018, 33.735809, 42.204800>,  <38.302032, 33.247906, 42.054733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856018, 33.735809, 42.204800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.578682, 33.966934, 42.032562>,  <38.412281, 34.105610, 41.929218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.578682, 33.966934, 42.032562>,  <38.856018, 33.735809, 42.204800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578682, 33.966934, 42.032562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266440, 0.760751, 0.591834,
		0.669546, 0.295614, -0.681411,
		-0.693338, 0.577815, -0.430594,
		38.370682, 34.140278, 41.903385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205402, 34.392727, 42.105843>,  <38.856018, 33.735809, 42.204800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205402, 34.392727, 42.105843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.812706, 34.468826, 42.105862>,  <38.577087, 34.514484, 42.105873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.812706, 34.468826, 42.105862>,  <39.205402, 34.392727, 42.105843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812706, 34.468826, 42.105862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151066, 0.779395, 0.608048,
		0.115638, 0.596951, -0.793900,
		-0.981737, 0.190245, 0.000051,
		38.518185, 34.525898, 42.105877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127724, 35.172878, 41.885452>,  <39.205402, 34.392727, 42.105843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127724, 35.172878, 41.885452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799778, 35.041084, 42.072754>,  <38.603012, 34.962006, 42.185135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799778, 35.041084, 42.072754>,  <39.127724, 35.172878, 41.885452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799778, 35.041084, 42.072754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061908, 0.762020, 0.644587,
		-0.569206, 0.557461, -0.604352,
		-0.819861, -0.329488, 0.468258,
		38.553822, 34.942238, 42.213230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668770, 35.753922, 41.905628>,  <39.127724, 35.172878, 41.885452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668770, 35.753922, 41.905628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527702, 35.514210, 42.193096>,  <38.443062, 35.370384, 42.365578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527702, 35.514210, 42.193096>,  <38.668770, 35.753922, 41.905628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527702, 35.514210, 42.193096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036534, 0.776252, 0.629364,
		-0.935034, 0.195702, -0.295656,
		-0.352671, -0.599278, 0.718672,
		38.421902, 35.334427, 42.408699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030018, 36.006535, 42.254116>,  <38.668770, 35.753922, 41.905628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030018, 36.006535, 42.254116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.225849, 35.778904, 42.518379>,  <38.343349, 35.642326, 42.676937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.225849, 35.778904, 42.518379>,  <38.030018, 36.006535, 42.254116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225849, 35.778904, 42.518379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128659, 0.702229, 0.700229,
		-0.862414, -0.427818, 0.270581,
		0.489580, -0.569075, 0.660655,
		38.372723, 35.608181, 42.716576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710232, 36.066891, 42.815037>,  <38.030018, 36.006535, 42.254116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710232, 36.066891, 42.815037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029697, 35.887733, 42.975796>,  <38.221378, 35.780239, 43.072250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029697, 35.887733, 42.975796>,  <37.710232, 36.066891, 42.815037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029697, 35.887733, 42.975796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058313, 0.607113, 0.792473,
		-0.598941, -0.656359, 0.458763,
		0.798667, -0.447892, 0.401899,
		38.269299, 35.753365, 43.096367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620907, 35.943714, 43.620468>,  <37.710232, 36.066891, 42.815037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620907, 35.943714, 43.620468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017601, 35.925457, 43.572521>,  <38.255619, 35.914505, 43.543751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017601, 35.925457, 43.572521>,  <37.620907, 35.943714, 43.620468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017601, 35.925457, 43.572521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120899, 0.644754, 0.754769,
		0.042838, -0.763027, 0.644946,
		0.991740, -0.045641, -0.119870,
		38.315125, 35.911766, 43.536560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932270, 35.822803, 44.270039>,  <37.620907, 35.943714, 43.620468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932270, 35.822803, 44.270039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249672, 35.971298, 44.077148>,  <38.440113, 36.060394, 43.961414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249672, 35.971298, 44.077148>,  <37.932270, 35.822803, 44.270039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249672, 35.971298, 44.077148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248747, 0.525318, 0.813736,
		0.555417, -0.765648, 0.324492,
		0.793497, 0.371246, -0.482224,
		38.487724, 36.082668, 43.932484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413559, 35.850712, 44.725845>,  <37.932270, 35.822803, 44.270039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413559, 35.850712, 44.725845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.583981, 36.094761, 44.458645>,  <38.686234, 36.241188, 44.298325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.583981, 36.094761, 44.458645>,  <38.413559, 35.850712, 44.725845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583981, 36.094761, 44.458645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393654, 0.539789, 0.744086,
		0.814565, -0.579983, -0.010198,
		0.426052, 0.610121, -0.668006,
		38.711796, 36.277798, 44.258244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095345, 35.945797, 44.909134>,  <38.413559, 35.850712, 44.725845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095345, 35.945797, 44.909134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.995411, 36.254204, 44.674828>,  <38.935452, 36.439247, 44.534245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.995411, 36.254204, 44.674828>,  <39.095345, 35.945797, 44.909134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995411, 36.254204, 44.674828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538921, 0.613312, 0.577418,
		0.804456, -0.171427, -0.568739,
		-0.249830, 0.771013, -0.585768,
		38.920464, 36.485508, 44.499096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577477, 36.344585, 45.031223>,  <39.095345, 35.945797, 44.909134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577477, 36.344585, 45.031223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.339653, 36.590492, 44.823933>,  <39.196957, 36.738037, 44.699558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.339653, 36.590492, 44.823933>,  <39.577477, 36.344585, 45.031223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339653, 36.590492, 44.823933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311476, 0.770297, 0.556440,
		0.741268, 0.169424, -0.649475,
		-0.594563, 0.614767, -0.518225,
		39.161285, 36.774921, 44.668465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017223, 36.940990, 44.852432>,  <39.577477, 36.344585, 45.031223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017223, 36.940990, 44.852432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641590, 37.074757, 44.820705>,  <39.416210, 37.155018, 44.801670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641590, 37.074757, 44.820705>,  <40.017223, 36.940990, 44.852432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641590, 37.074757, 44.820705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260082, 0.842318, 0.472077,
		0.224681, 0.422690, -0.877981,
		-0.939082, 0.334414, -0.079319,
		39.359867, 37.175079, 44.796909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.827229, 39.593487, 43.677734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.018379, 39.267479, 43.808811>,  <35.133068, 39.071873, 43.887455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.018379, 39.267479, 43.808811>,  <34.827229, 39.593487, 43.677734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018379, 39.267479, 43.808811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455134, -0.089337, -0.885930,
		0.751325, 0.572505, 0.328252,
		0.477874, -0.815019, 0.327688,
		35.161743, 39.022972, 43.907116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432552, 39.643742, 43.272961>,  <34.827229, 39.593487, 43.677734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432552, 39.643742, 43.272961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417988, 39.272522, 43.421230>,  <35.409248, 39.049789, 43.510193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417988, 39.272522, 43.421230>,  <35.432552, 39.643742, 43.272961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417988, 39.272522, 43.421230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478575, -0.341818, -0.808781,
		0.877291, 0.147947, 0.456587,
		-0.036413, -0.928047, 0.370678,
		35.407063, 38.994106, 43.532433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125114, 39.357441, 43.230145>,  <35.432552, 39.643742, 43.272961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125114, 39.357441, 43.230145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.888561, 39.035412, 43.248631>,  <35.746632, 38.842194, 43.259720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.888561, 39.035412, 43.248631>,  <36.125114, 39.357441, 43.230145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888561, 39.035412, 43.248631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399442, -0.342235, -0.850483,
		0.700512, -0.484500, 0.523969,
		-0.591380, -0.805068, 0.046210,
		35.711147, 38.793892, 43.262493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533787, 38.917473, 42.902485>,  <36.125114, 39.357441, 43.230145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533787, 38.917473, 42.902485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165497, 38.762104, 42.917393>,  <35.944523, 38.668884, 42.926338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165497, 38.762104, 42.917393>,  <36.533787, 38.917473, 42.902485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165497, 38.762104, 42.917393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224759, -0.605997, -0.763054,
		0.318974, -0.694187, 0.645259,
		-0.920727, -0.388422, 0.037273,
		35.889278, 38.645576, 42.928574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724918, 38.309837, 42.689373>,  <36.533787, 38.917473, 42.902485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724918, 38.309837, 42.689373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.324974, 38.308670, 42.682827>,  <36.085007, 38.307972, 42.678898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.324974, 38.308670, 42.682827>,  <36.724918, 38.309837, 42.689373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324974, 38.308670, 42.682827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015222, -0.556312, -0.830834,
		-0.006681, -0.830968, 0.556280,
		-0.999862, -0.002917, -0.016366,
		36.025017, 38.307796, 42.677917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505619, 37.638889, 42.529022>,  <36.724918, 38.309837, 42.689373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505619, 37.638889, 42.529022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.186138, 37.843296, 42.401943>,  <35.994450, 37.965939, 42.325695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.186138, 37.843296, 42.401943>,  <36.505619, 37.638889, 42.529022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186138, 37.843296, 42.401943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000511, -0.528555, -0.848899,
		-0.601725, -0.677856, 0.422420,
		-0.798703, 0.511019, -0.317698,
		35.946526, 37.996601, 42.306633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879257, 37.100132, 42.393906>,  <36.505619, 37.638889, 42.529022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879257, 37.100132, 42.393906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816570, 37.443993, 42.199406>,  <35.778957, 37.650311, 42.082706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816570, 37.443993, 42.199406>,  <35.879257, 37.100132, 42.393906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816570, 37.443993, 42.199406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067768, -0.500534, -0.863060,
		-0.985316, -0.102301, 0.136697,
		-0.156714, 0.859651, -0.486252,
		35.769554, 37.701889, 42.053532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319317, 37.023685, 42.054317>,  <35.879257, 37.100132, 42.393906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319317, 37.023685, 42.054317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484516, 37.338856, 41.871624>,  <35.583637, 37.527958, 41.762009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484516, 37.338856, 41.871624>,  <35.319317, 37.023685, 42.054317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484516, 37.338856, 41.871624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061665, -0.476160, -0.877194,
		-0.908642, 0.390443, -0.148065,
		0.412997, 0.787925, -0.456736,
		35.608414, 37.575233, 41.734604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938152, 36.976288, 41.405987>,  <35.319317, 37.023685, 42.054317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938152, 36.976288, 41.405987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242573, 37.234852, 41.384239>,  <35.425224, 37.389992, 41.371189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242573, 37.234852, 41.384239>,  <34.938152, 36.976288, 41.405987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242573, 37.234852, 41.384239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066558, -0.161180, -0.984678,
		-0.645271, 0.745769, -0.165690,
		0.761049, 0.646412, -0.054368,
		35.470886, 37.428776, 41.367928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745102, 37.570015, 40.944496>,  <34.938152, 36.976288, 41.405987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745102, 37.570015, 40.944496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142204, 37.529537, 40.918568>,  <35.380466, 37.505249, 40.903011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142204, 37.529537, 40.918568>,  <34.745102, 37.570015, 40.944496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142204, 37.529537, 40.918568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074662, -0.096682, -0.992511,
		0.094168, 0.990158, -0.103537,
		0.992753, -0.101193, -0.064823,
		35.440029, 37.499180, 40.899120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013721, 37.964657, 40.375065>,  <34.745102, 37.570015, 40.944496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013721, 37.964657, 40.375065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280739, 37.673435, 40.437447>,  <35.440948, 37.498703, 40.474876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280739, 37.673435, 40.437447>,  <35.013721, 37.964657, 40.375065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280739, 37.673435, 40.437447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007297, -0.215847, -0.976400,
		0.744534, 0.650653, -0.149401,
		0.667545, -0.728053, 0.155958,
		35.481003, 37.455021, 40.484234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587406, 38.030468, 39.916443>,  <35.013721, 37.964657, 40.375065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587406, 38.030468, 39.916443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.564144, 37.647594, 40.029881>,  <35.550186, 37.417870, 40.097942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.564144, 37.647594, 40.029881>,  <35.587406, 38.030468, 39.916443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564144, 37.647594, 40.029881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260522, -0.288780, -0.921268,
		0.963715, 0.020302, 0.266161,
		-0.058158, -0.957180, 0.283591,
		35.546696, 37.360439, 40.114956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736629, 37.684982, 39.264233>,  <35.587406, 38.030468, 39.916443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736629, 37.684982, 39.264233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639683, 37.377300, 39.500736>,  <35.581516, 37.192692, 39.642639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639683, 37.377300, 39.500736>,  <35.736629, 37.684982, 39.264233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639683, 37.377300, 39.500736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070214, -0.593927, -0.801449,
		0.967642, -0.235756, 0.089937,
		-0.242362, -0.769201, 0.591262,
		35.566975, 37.146542, 39.678116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172203, 37.159557, 39.032055>,  <35.736629, 37.684982, 39.264233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172203, 37.159557, 39.032055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.854458, 36.985466, 39.201553>,  <35.663811, 36.881012, 39.303253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.854458, 36.985466, 39.201553>,  <36.172203, 37.159557, 39.032055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854458, 36.985466, 39.201553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174155, -0.505126, -0.845292,
		0.581944, -0.745265, 0.325455,
		-0.794362, -0.435233, 0.423747,
		35.616150, 36.854897, 39.328678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881977, 36.790562, 38.841339>,  <36.172203, 37.159557, 39.032055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881977, 36.790562, 38.841339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.192585, 36.994293, 38.692959>,  <37.378948, 37.116531, 38.603931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.192585, 36.994293, 38.692959>,  <36.881977, 36.790562, 38.841339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192585, 36.994293, 38.692959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131406, 0.444876, 0.885899,
		0.616240, -0.736662, 0.278526,
		0.776518, 0.509327, -0.370953,
		37.425541, 37.147091, 38.581673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542824, 36.775963, 39.269619>,  <36.881977, 36.790562, 38.841339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542824, 36.775963, 39.269619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.606609, 37.107700, 39.055420>,  <37.644882, 37.306744, 38.926899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.606609, 37.107700, 39.055420>,  <37.542824, 36.775963, 39.269619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606609, 37.107700, 39.055420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286331, 0.480267, 0.829071,
		0.944768, -0.285536, -0.160882,
		0.159463, 0.829345, -0.535498,
		37.654449, 37.356503, 38.894772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199814, 37.179966, 39.528172>,  <37.542824, 36.775963, 39.269619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199814, 37.179966, 39.528172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.003593, 37.475971, 39.344109>,  <37.885860, 37.653576, 39.233673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.003593, 37.475971, 39.344109>,  <38.199814, 37.179966, 39.528172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003593, 37.475971, 39.344109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277058, 0.633101, 0.722788,
		0.826197, 0.227074, -0.515594,
		-0.490549, 0.740014, -0.460153,
		37.856430, 37.697975, 39.206062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616436, 37.728786, 39.414886>,  <38.199814, 37.179966, 39.528172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616436, 37.728786, 39.414886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.260590, 37.911446, 39.418129>,  <38.047081, 38.021042, 39.420074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.260590, 37.911446, 39.418129>,  <38.616436, 37.728786, 39.414886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260590, 37.911446, 39.418129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355461, 0.681121, 0.640095,
		0.286773, 0.572318, -0.768253,
		-0.889611, 0.456646, 0.008110,
		37.993706, 38.048439, 39.420563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677837, 38.494965, 39.457336>,  <38.616436, 37.728786, 39.414886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677837, 38.494965, 39.457336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.300732, 38.439426, 39.578606>,  <38.074467, 38.406105, 39.651367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.300732, 38.439426, 39.578606>,  <38.677837, 38.494965, 39.457336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300732, 38.439426, 39.578606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160714, 0.607417, 0.777956,
		-0.292163, 0.782156, -0.550339,
		-0.942768, -0.138843, 0.303168,
		38.017902, 38.397774, 39.669556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552017, 39.174801, 39.644287>,  <38.677837, 38.494965, 39.457336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552017, 39.174801, 39.644287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278072, 38.938606, 39.815067>,  <38.113705, 38.796890, 39.917534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278072, 38.938606, 39.815067>,  <38.552017, 39.174801, 39.644287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278072, 38.938606, 39.815067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109887, 0.495530, 0.861612,
		-0.720338, 0.637002, -0.274483,
		-0.684863, -0.590490, 0.426947,
		38.072613, 38.761459, 39.943153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203281, 39.619297, 40.083736>,  <38.552017, 39.174801, 39.644287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203281, 39.619297, 40.083736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097408, 39.265682, 40.237835>,  <38.033882, 39.053513, 40.330292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097408, 39.265682, 40.237835>,  <38.203281, 39.619297, 40.083736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097408, 39.265682, 40.237835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107412, 0.369977, 0.922811,
		-0.958334, 0.285635, -0.002971,
		-0.264686, -0.884042, 0.385242,
		38.018002, 39.000469, 40.353409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767258, 39.699326, 40.568001>,  <38.203281, 39.619297, 40.083736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767258, 39.699326, 40.568001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887650, 39.337254, 40.688046>,  <37.959885, 39.120010, 40.760071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887650, 39.337254, 40.688046>,  <37.767258, 39.699326, 40.568001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887650, 39.337254, 40.688046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088637, 0.339895, 0.936277,
		-0.949503, -0.255196, 0.182533,
		0.300976, -0.905177, 0.300112,
		37.977943, 39.065701, 40.778080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402287, 39.637493, 41.221985>,  <37.767258, 39.699326, 40.568001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402287, 39.637493, 41.221985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.718891, 39.393574, 41.205700>,  <37.908855, 39.247223, 41.195930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.718891, 39.393574, 41.205700>,  <37.402287, 39.637493, 41.221985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718891, 39.393574, 41.205700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082233, 0.040262, 0.995799,
		-0.605595, -0.791536, 0.082013,
		0.791513, -0.609795, -0.040708,
		37.956345, 39.210636, 41.193489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151585, 39.074890, 41.667820>,  <37.402287, 39.637493, 41.221985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151585, 39.074890, 41.667820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551540, 39.069435, 41.665516>,  <37.791515, 39.066162, 41.664135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551540, 39.069435, 41.665516>,  <37.151585, 39.074890, 41.667820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551540, 39.069435, 41.665516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007364, 0.120555, 0.992679,
		-0.012845, -0.992613, 0.120642,
		0.999890, -0.013639, -0.005761,
		37.851509, 39.065346, 41.663788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360600, 38.554565, 42.182266>,  <37.151585, 39.074890, 41.667820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360600, 38.554565, 42.182266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.643818, 38.825279, 42.101646>,  <37.813751, 38.987709, 42.053272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.643818, 38.825279, 42.101646>,  <37.360600, 38.554565, 42.182266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643818, 38.825279, 42.101646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058348, 0.340512, 0.938428,
		0.703748, -0.652693, 0.280589,
		0.708049, 0.676789, -0.201551,
		37.856232, 39.028316, 42.041180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897549, 38.406921, 42.585464>,  <37.360600, 38.554565, 42.182266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897549, 38.406921, 42.585464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.943985, 38.792953, 42.491528>,  <37.971848, 39.024570, 42.435165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.943985, 38.792953, 42.491528>,  <37.897549, 38.406921, 42.585464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943985, 38.792953, 42.491528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009112, 0.237465, 0.971353,
		0.993197, -0.110622, 0.036360,
		0.116087, 0.965077, -0.234841,
		37.978809, 39.082478, 42.421074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475239, 38.576004, 42.925949>,  <37.897549, 38.406921, 42.585464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475239, 38.576004, 42.925949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.300190, 38.929134, 42.857700>,  <38.195160, 39.141010, 42.816750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.300190, 38.929134, 42.857700>,  <38.475239, 38.576004, 42.925949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300190, 38.929134, 42.857700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194815, 0.278344, 0.940517,
		0.877801, 0.378350, -0.293796,
		-0.437621, 0.882823, -0.170623,
		38.168903, 39.193981, 42.806515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788193, 39.066238, 43.475521>,  <38.475239, 38.576004, 42.925949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788193, 39.066238, 43.475521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.457123, 39.252567, 43.350327>,  <38.258480, 39.364365, 43.275208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.457123, 39.252567, 43.350327>,  <38.788193, 39.066238, 43.475521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457123, 39.252567, 43.350327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142293, 0.365297, 0.919951,
		0.542866, 0.805959, -0.236065,
		-0.827677, 0.465820, -0.312990,
		38.208820, 39.392315, 43.256428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362415, 39.435532, 43.148991>,  <38.788193, 39.066238, 43.475521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362415, 39.435532, 43.148991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.740837, 39.564568, 43.161091>,  <39.967892, 39.641991, 43.168350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.740837, 39.564568, 43.161091>,  <39.362415, 39.435532, 43.148991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740837, 39.564568, 43.161091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234163, -0.616205, -0.751970,
		-0.223935, 0.718490, -0.658502,
		0.946055, 0.322590, 0.030254,
		40.024654, 39.661343, 43.170166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487865, 39.676132, 42.484982>,  <39.362415, 39.435532, 43.148991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487865, 39.676132, 42.484982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815434, 39.537239, 42.667759>,  <40.011974, 39.453903, 42.777424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815434, 39.537239, 42.667759>,  <39.487865, 39.676132, 42.484982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815434, 39.537239, 42.667759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172899, -0.609938, -0.773357,
		0.547238, 0.712326, -0.439457,
		0.818924, -0.347229, 0.456942,
		40.061111, 39.433071, 42.804840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078041, 39.808952, 42.003483>,  <39.487865, 39.676132, 42.484982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078041, 39.808952, 42.003483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.248463, 39.536556, 42.241718>,  <40.350716, 39.373119, 42.384659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.248463, 39.536556, 42.241718>,  <40.078041, 39.808952, 42.003483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248463, 39.536556, 42.241718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453139, -0.409171, -0.791988,
		0.783036, 0.607314, 0.134255,
		0.426052, -0.680991, 0.595593,
		40.376278, 39.332260, 42.420395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654652, 39.566082, 41.599648>,  <40.078041, 39.808952, 42.003483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654652, 39.566082, 41.599648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.632648, 39.297306, 41.895073>,  <40.619446, 39.136040, 42.072327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.632648, 39.297306, 41.895073>,  <40.654652, 39.566082, 41.599648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632648, 39.297306, 41.895073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229328, -0.728412, -0.645620,
		0.971794, 0.133859, 0.194162,
		-0.055008, -0.671936, 0.738563,
		40.616146, 39.095726, 42.116642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312515, 39.169720, 41.591862>,  <40.654652, 39.566082, 41.599648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312515, 39.169720, 41.591862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.034992, 38.949982, 41.778130>,  <40.868481, 38.818138, 41.889889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.034992, 38.949982, 41.778130>,  <41.312515, 39.169720, 41.591862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034992, 38.949982, 41.778130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274325, -0.799469, -0.534411,
		0.665868, -0.243032, 0.705376,
		-0.693805, -0.549349, 0.465671,
		40.826851, 38.785175, 41.917831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594471, 38.461895, 41.770916>,  <41.312515, 39.169720, 41.591862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594471, 38.461895, 41.770916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.196365, 38.432365, 41.796207>,  <40.957500, 38.414650, 41.811382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.196365, 38.432365, 41.796207>,  <41.594471, 38.461895, 41.770916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196365, 38.432365, 41.796207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030978, -0.857523, -0.513513,
		0.092132, -0.509123, 0.855749,
		-0.995265, -0.073820, 0.063233,
		40.897785, 38.410221, 41.815178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508091, 37.755714, 41.951805>,  <41.594471, 38.461895, 41.770916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508091, 37.755714, 41.951805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.161545, 37.901615, 41.815357>,  <40.953617, 37.989155, 41.733490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.161545, 37.901615, 41.815357>,  <41.508091, 37.755714, 41.951805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161545, 37.901615, 41.815357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131507, -0.825571, -0.548760,
		-0.481779, -0.430569, 0.763216,
		-0.866369, 0.364749, -0.341120,
		40.901634, 38.011040, 41.713020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066277, 37.211246, 41.958603>,  <41.508091, 37.755714, 41.951805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066277, 37.211246, 41.958603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.916771, 37.467533, 41.690342>,  <40.827068, 37.621307, 41.529385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.916771, 37.467533, 41.690342>,  <41.066277, 37.211246, 41.958603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916771, 37.467533, 41.690342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006833, -0.724942, -0.688776,
		-0.927497, -0.252860, 0.275338,
		-0.373768, 0.640719, -0.670654,
		40.804642, 37.659748, 41.489147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376469, 36.943775, 41.735218>,  <41.066277, 37.211246, 41.958603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376469, 36.943775, 41.735218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482380, 37.197117, 41.444359>,  <40.545929, 37.349121, 41.269844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482380, 37.197117, 41.444359>,  <40.376469, 36.943775, 41.735218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482380, 37.197117, 41.444359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136187, -0.721946, -0.678415,
		-0.954643, 0.278661, -0.104904,
		0.264783, 0.633357, -0.727151,
		40.561813, 37.387123, 41.226215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890507, 36.750893, 41.214161>,  <40.376469, 36.943775, 41.735218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890507, 36.750893, 41.214161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.154198, 36.974350, 41.012829>,  <40.312412, 37.108425, 40.892029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.154198, 36.974350, 41.012829>,  <39.890507, 36.750893, 41.214161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154198, 36.974350, 41.012829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020228, -0.655952, -0.754532,
		-0.751671, 0.507590, -0.421122,
		0.659228, 0.558641, -0.503328,
		40.351967, 37.141941, 40.861832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605030, 36.826649, 40.531208>,  <39.890507, 36.750893, 41.214161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605030, 36.826649, 40.531208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.990902, 36.918575, 40.479702>,  <40.222424, 36.973732, 40.448799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.990902, 36.918575, 40.479702>,  <39.605030, 36.826649, 40.531208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990902, 36.918575, 40.479702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037381, -0.603265, -0.796664,
		-0.260762, 0.763712, -0.590548,
		0.964679, 0.229815, -0.128761,
		40.280304, 36.987518, 40.441074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620701, 37.144466, 39.946838>,  <39.605030, 36.826649, 40.531208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620701, 37.144466, 39.946838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.979282, 36.978859, 40.010025>,  <40.194431, 36.879494, 40.047939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.979282, 36.978859, 40.010025>,  <39.620701, 37.144466, 39.946838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979282, 36.978859, 40.010025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060297, -0.467141, -0.882124,
		0.439007, 0.781262, -0.443736,
		0.896458, -0.414015, 0.157971,
		40.248219, 36.854656, 40.057415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959846, 37.157608, 39.277176>,  <39.620701, 37.144466, 39.946838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959846, 37.157608, 39.277176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.172661, 36.897175, 39.493706>,  <40.300350, 36.740917, 39.623623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.172661, 36.897175, 39.493706>,  <39.959846, 37.157608, 39.277176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172661, 36.897175, 39.493706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141599, -0.561901, -0.814995,
		0.834797, 0.510259, -0.206760,
		0.532037, -0.651078, 0.541326,
		40.332272, 36.701851, 39.656105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536106, 37.079189, 38.856560>,  <39.959846, 37.157608, 39.277176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536106, 37.079189, 38.856560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.542587, 36.758804, 39.095955>,  <40.546474, 36.566574, 39.239594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.542587, 36.758804, 39.095955>,  <40.536106, 37.079189, 38.856560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542587, 36.758804, 39.095955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026451, -0.598017, -0.801047,
		0.999519, 0.028806, 0.011499,
		0.016199, -0.800966, 0.598491,
		40.547447, 36.518513, 39.275501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.876703, 39.949364, 32.452011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537443, 40.157188, 32.410633>,  <30.333887, 40.281883, 32.385807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537443, 40.157188, 32.410633>,  <30.876703, 39.949364, 32.452011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537443, 40.157188, 32.410633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524724, -0.797072, 0.298899,
		0.072843, 0.307790, 0.948662,
		-0.848150, 0.519559, -0.103443,
		30.282999, 40.313057, 32.379601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559267, 39.864582, 33.059425>,  <30.876703, 39.949364, 32.452011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559267, 39.864582, 33.059425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.287611, 39.960739, 32.782013>,  <30.124619, 40.018433, 32.615566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.287611, 39.960739, 32.782013>,  <30.559267, 39.864582, 33.059425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287611, 39.960739, 32.782013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474802, -0.864425, 0.165324,
		-0.559763, 0.441567, 0.701202,
		-0.679138, 0.240389, -0.693530,
		30.083870, 40.032856, 32.573956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861408, 39.872990, 33.413219>,  <30.559267, 39.864582, 33.059425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861408, 39.872990, 33.413219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775585, 39.828178, 33.025112>,  <29.724092, 39.801292, 32.792248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775585, 39.828178, 33.025112>,  <29.861408, 39.872990, 33.413219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775585, 39.828178, 33.025112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624316, -0.748234, 0.224444,
		-0.751130, 0.653908, 0.090599,
		-0.214555, -0.112024, -0.970266,
		29.711218, 39.794571, 32.734032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159391, 39.770977, 33.391224>,  <29.861408, 39.872990, 33.413219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159391, 39.770977, 33.391224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279724, 39.639427, 33.033154>,  <29.351925, 39.560497, 32.818310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279724, 39.639427, 33.033154>,  <29.159391, 39.770977, 33.391224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279724, 39.639427, 33.033154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619935, -0.780717, 0.078493,
		-0.724693, 0.531337, -0.438749,
		0.300833, -0.328879, -0.895175,
		29.369974, 39.540764, 32.764603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524921, 39.652435, 33.019962>,  <29.159391, 39.770977, 33.391224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524921, 39.652435, 33.019962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.826157, 39.431171, 32.877487>,  <29.006897, 39.298412, 32.792004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.826157, 39.431171, 32.877487>,  <28.524921, 39.652435, 33.019962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826157, 39.431171, 32.877487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584065, -0.811319, 0.025097,
		-0.302864, 0.189136, -0.934078,
		0.753088, -0.553163, -0.356187,
		29.052084, 39.265224, 32.770630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138113, 39.158958, 32.700047>,  <28.524921, 39.652435, 33.019962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138113, 39.158958, 32.700047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515894, 39.031445, 32.732010>,  <28.742563, 38.954937, 32.751186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515894, 39.031445, 32.732010>,  <28.138113, 39.158958, 32.700047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515894, 39.031445, 32.732010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324455, -0.943140, 0.072227,
		0.052337, -0.094141, -0.994182,
		0.944452, -0.318787, 0.079906,
		28.799229, 38.935810, 32.755981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137365, 38.647446, 32.282150>,  <28.138113, 39.158958, 32.700047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137365, 38.647446, 32.282150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447655, 38.562321, 32.519791>,  <28.633829, 38.511246, 32.662376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447655, 38.562321, 32.519791>,  <28.137365, 38.647446, 32.282150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447655, 38.562321, 32.519791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241212, -0.969928, -0.032491,
		0.583152, -0.118101, -0.803732,
		0.775726, -0.212817, 0.594103,
		28.680372, 38.498474, 32.698021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242422, 37.931965, 32.164268>,  <28.137365, 38.647446, 32.282150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242422, 37.931965, 32.164268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464743, 37.959156, 32.495682>,  <28.598135, 37.975471, 32.694530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464743, 37.959156, 32.495682>,  <28.242422, 37.931965, 32.164268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464743, 37.959156, 32.495682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148765, -0.972430, 0.179582,
		0.817897, -0.223068, -0.530363,
		0.555800, 0.067980, 0.828532,
		28.631483, 37.979549, 32.744240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808924, 37.344315, 32.206619>,  <28.242422, 37.931965, 32.164268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808924, 37.344315, 32.206619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715977, 37.462902, 32.577156>,  <28.660210, 37.534054, 32.799480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715977, 37.462902, 32.577156>,  <28.808924, 37.344315, 32.206619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715977, 37.462902, 32.577156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128299, -0.953434, 0.272951,
		0.964130, -0.055425, 0.259581,
		-0.232365, 0.296464, 0.926345,
		28.646267, 37.551842, 32.855061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143185, 36.838741, 32.513248>,  <28.808924, 37.344315, 32.206619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143185, 36.838741, 32.513248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892504, 37.001347, 32.779179>,  <28.742094, 37.098911, 32.938736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892504, 37.001347, 32.779179>,  <29.143185, 36.838741, 32.513248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892504, 37.001347, 32.779179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294338, -0.913436, 0.281069,
		0.721530, -0.019536, 0.692107,
		-0.626705, 0.406513, 0.664822,
		28.704493, 37.123302, 32.978626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036522, 36.290199, 33.053883>,  <29.143185, 36.838741, 32.513248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036522, 36.290199, 33.053883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717688, 36.531078, 33.071815>,  <28.526386, 36.675606, 33.082573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717688, 36.531078, 33.071815>,  <29.036522, 36.290199, 33.053883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717688, 36.531078, 33.071815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532040, -0.735457, 0.419568,
		0.285634, 0.310581, 0.906616,
		-0.797087, 0.602198, 0.044830,
		28.478561, 36.711739, 33.085266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738495, 36.107548, 33.685371>,  <29.036522, 36.290199, 33.053883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738495, 36.107548, 33.685371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.432194, 36.307320, 33.523285>,  <28.248413, 36.427181, 33.426033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.432194, 36.307320, 33.523285>,  <28.738495, 36.107548, 33.685371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432194, 36.307320, 33.523285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633232, -0.695634, 0.339280,
		-0.112435, 0.516398, 0.848935,
		-0.765752, 0.499427, -0.405214,
		28.202469, 36.457146, 33.401722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193270, 36.163609, 34.159283>,  <28.738495, 36.107548, 33.685371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193270, 36.163609, 34.159283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013353, 36.190605, 33.803051>,  <27.905403, 36.206802, 33.589314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013353, 36.190605, 33.803051>,  <28.193270, 36.163609, 34.159283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013353, 36.190605, 33.803051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729481, -0.603083, 0.322721,
		-0.515311, 0.794818, 0.320499,
		-0.449792, 0.067496, -0.890579,
		27.878416, 36.210854, 33.535877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485172, 36.268951, 34.318855>,  <28.193270, 36.163609, 34.159283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485172, 36.268951, 34.318855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445223, 36.158894, 33.936375>,  <27.421253, 36.092857, 33.706886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445223, 36.158894, 33.936375>,  <27.485172, 36.268951, 34.318855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445223, 36.158894, 33.936375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607220, -0.744448, 0.277636,
		-0.788232, 0.608353, -0.092721,
		-0.099875, -0.275143, -0.956201,
		27.415260, 36.076351, 33.649513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777540, 36.292603, 34.044815>,  <27.485172, 36.268951, 34.318855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777540, 36.292603, 34.044815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.942842, 36.033031, 33.789284>,  <27.042025, 35.877289, 33.635963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.942842, 36.033031, 33.789284>,  <26.777540, 36.292603, 34.044815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942842, 36.033031, 33.789284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590278, -0.725090, 0.354707,
		-0.693391, 0.230503, -0.682699,
		0.413257, -0.648932, -0.638831,
		27.066818, 35.838352, 33.597633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231249, 35.960049, 33.698399>,  <26.777540, 36.292603, 34.044815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231249, 35.960049, 33.698399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.545612, 35.721962, 33.631386>,  <26.734230, 35.579109, 33.591179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.545612, 35.721962, 33.631386>,  <26.231249, 35.960049, 33.698399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545612, 35.721962, 33.631386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559616, -0.799906, 0.216749,
		-0.263022, -0.076591, -0.961745,
		0.785907, -0.595218, -0.167531,
		26.781384, 35.543396, 33.581127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924067, 35.410297, 33.337639>,  <26.231249, 35.960049, 33.698399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924067, 35.410297, 33.337639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266418, 35.279961, 33.498287>,  <26.471830, 35.201759, 33.594677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266418, 35.279961, 33.498287>,  <25.924067, 35.410297, 33.337639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266418, 35.279961, 33.498287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480008, -0.789558, 0.382349,
		0.192516, -0.520025, -0.832173,
		0.855880, -0.325841, 0.401618,
		26.523182, 35.182209, 33.618774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041471, 34.635876, 33.120499>,  <25.924067, 35.410297, 33.337639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041471, 34.635876, 33.120499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256020, 34.704941, 33.450951>,  <26.384748, 34.746380, 33.649223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256020, 34.704941, 33.450951>,  <26.041471, 34.635876, 33.120499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256020, 34.704941, 33.450951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466714, -0.754883, 0.460792,
		0.703196, -0.632722, -0.324311,
		0.536370, 0.172666, 0.826131,
		26.416931, 34.756741, 33.698792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173218, 33.975914, 33.352009>,  <26.041471, 34.635876, 33.120499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173218, 33.975914, 33.352009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.272387, 34.172871, 33.685738>,  <26.331888, 34.291042, 33.885975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.272387, 34.172871, 33.685738>,  <26.173218, 33.975914, 33.352009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272387, 34.172871, 33.685738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240976, -0.802795, 0.545391,
		0.938331, -0.336265, -0.080376,
		0.247921, 0.492389, 0.834319,
		26.346764, 34.320587, 33.936035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528652, 33.524746, 33.699196>,  <26.173218, 33.975914, 33.352009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528652, 33.524746, 33.699196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413561, 33.794220, 33.971478>,  <26.344505, 33.955902, 34.134846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413561, 33.794220, 33.971478>,  <26.528652, 33.524746, 33.699196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413561, 33.794220, 33.971478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054930, -0.721204, 0.690541,
		0.956135, 0.161297, 0.244517,
		-0.287729, 0.673682, 0.680709,
		26.327242, 33.996326, 34.175690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839729, 33.313843, 34.213329>,  <26.528652, 33.524746, 33.699196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839729, 33.313843, 34.213329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546566, 33.542648, 34.360649>,  <26.370668, 33.679932, 34.449043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546566, 33.542648, 34.360649>,  <26.839729, 33.313843, 34.213329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546566, 33.542648, 34.360649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070359, -0.602184, 0.795251,
		0.676681, 0.556932, 0.481591,
		-0.732907, 0.572016, 0.368302,
		26.326694, 33.714252, 34.471138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410866, 33.360027, 34.555637>,  <26.839729, 33.313843, 34.213329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410866, 33.360027, 34.555637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755457, 33.157181, 34.566071>,  <27.962212, 33.035473, 34.572330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755457, 33.157181, 34.566071>,  <27.410866, 33.360027, 34.555637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755457, 33.157181, 34.566071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399803, 0.645716, -0.650544,
		0.313064, 0.570858, 0.759020,
		0.861480, -0.507121, 0.026081,
		28.013901, 33.005043, 34.573895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874851, 33.889172, 34.664467>,  <27.410866, 33.360027, 34.555637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874851, 33.889172, 34.664467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.070116, 33.582989, 34.496765>,  <28.187275, 33.399281, 34.396145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.070116, 33.582989, 34.496765>,  <27.874851, 33.889172, 34.664467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070116, 33.582989, 34.496765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520844, 0.640970, -0.563808,
		0.700300, 0.056862, 0.711580,
		0.488161, -0.765457, -0.419255,
		28.216564, 33.353352, 34.370987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598877, 34.116112, 34.533352>,  <27.874851, 33.889172, 34.664467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598877, 34.116112, 34.533352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.547350, 33.790833, 34.306328>,  <28.516434, 33.595665, 34.170113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.547350, 33.790833, 34.306328>,  <28.598877, 34.116112, 34.533352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547350, 33.790833, 34.306328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650222, 0.362865, -0.667489,
		0.748745, -0.455021, 0.482014,
		-0.128815, -0.813194, -0.567558,
		28.508705, 33.546875, 34.136059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300577, 33.821564, 34.497169>,  <28.598877, 34.116112, 34.533352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300577, 33.821564, 34.497169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.076532, 33.739178, 34.176208>,  <28.942106, 33.689747, 33.983631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.076532, 33.739178, 34.176208>,  <29.300577, 33.821564, 34.497169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076532, 33.739178, 34.176208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622273, 0.534789, -0.571645,
		0.546858, -0.819498, -0.171371,
		-0.560109, -0.205969, -0.802405,
		28.908499, 33.677387, 33.935486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749132, 33.660740, 34.022305>,  <29.300577, 33.821564, 34.497169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749132, 33.660740, 34.022305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424698, 33.721077, 33.796249>,  <29.230038, 33.757278, 33.660614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424698, 33.721077, 33.796249>,  <29.749132, 33.660740, 34.022305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424698, 33.721077, 33.796249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567816, 0.435020, -0.698815,
		0.140437, -0.887696, -0.438489,
		-0.811087, 0.150842, -0.565141,
		29.181372, 33.766331, 33.626709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971428, 33.476051, 33.392555>,  <29.749132, 33.660740, 34.022305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971428, 33.476051, 33.392555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.648701, 33.700108, 33.317421>,  <29.455065, 33.834541, 33.272343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.648701, 33.700108, 33.317421>,  <29.971428, 33.476051, 33.392555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648701, 33.700108, 33.317421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464168, 0.404310, -0.788087,
		-0.365498, -0.723031, -0.586206,
		-0.806820, 0.560143, -0.187833,
		29.406654, 33.868149, 33.261070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719429, 33.450985, 32.702675>,  <29.971428, 33.476051, 33.392555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719429, 33.450985, 32.702675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537169, 33.799736, 32.774471>,  <29.427813, 34.008987, 32.817551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537169, 33.799736, 32.774471>,  <29.719429, 33.450985, 32.702675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537169, 33.799736, 32.774471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330128, 0.352775, -0.875537,
		-0.826679, -0.339684, -0.448572,
		-0.455652, 0.871874, 0.179492,
		29.400473, 34.061298, 32.828320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595955, 33.751930, 32.017292>,  <29.719429, 33.450985, 32.702675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595955, 33.751930, 32.017292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537931, 34.067478, 32.256172>,  <29.503117, 34.256805, 32.399498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537931, 34.067478, 32.256172>,  <29.595955, 33.751930, 32.017292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537931, 34.067478, 32.256172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397527, 0.599191, -0.694940,
		-0.906052, 0.136594, -0.400515,
		-0.145060, 0.788867, 0.597198,
		29.494413, 34.304138, 32.435333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188847, 34.241913, 31.645748>,  <29.595955, 33.751930, 32.017292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188847, 34.241913, 31.645748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382179, 34.452435, 31.925575>,  <29.498178, 34.578747, 32.093472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382179, 34.452435, 31.925575>,  <29.188847, 34.241913, 31.645748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382179, 34.452435, 31.925575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209296, 0.706461, -0.676098,
		-0.850051, 0.473195, 0.231300,
		0.483331, 0.526307, 0.699566,
		29.527178, 34.610325, 32.135445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968285, 34.916164, 31.704687>,  <29.188847, 34.241913, 31.645748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968285, 34.916164, 31.704687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.314606, 34.979000, 31.894722>,  <29.522398, 35.016701, 32.008743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.314606, 34.979000, 31.894722>,  <28.968285, 34.916164, 31.704687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314606, 34.979000, 31.894722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075914, 0.897215, -0.435021,
		-0.494594, 0.412708, 0.764885,
		0.865802, 0.157094, 0.475087,
		29.574347, 35.026127, 32.037247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007860, 35.658012, 31.913212>,  <28.968285, 34.916164, 31.704687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007860, 35.658012, 31.913212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382261, 35.521049, 31.945833>,  <29.606903, 35.438869, 31.965406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382261, 35.521049, 31.945833>,  <29.007860, 35.658012, 31.913212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382261, 35.521049, 31.945833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351981, 0.909048, -0.223029,
		0.002231, 0.237462, 0.971394,
		0.936005, -0.342410, 0.081553,
		29.663063, 35.418327, 31.970299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461109, 36.180981, 32.220154>,  <29.007860, 35.658012, 31.913212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461109, 36.180981, 32.220154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725317, 35.949856, 32.028385>,  <29.883841, 35.811180, 31.913322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725317, 35.949856, 32.028385>,  <29.461109, 36.180981, 32.220154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725317, 35.949856, 32.028385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396172, 0.810637, -0.431180,
		0.637780, 0.094868, 0.764354,
		0.660518, -0.577813, -0.479424,
		29.923473, 35.776512, 31.884558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156889, 36.550282, 32.268768>,  <29.461109, 36.180981, 32.220154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156889, 36.550282, 32.268768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.137663, 36.292202, 31.963766>,  <30.126127, 36.137356, 31.780766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.137663, 36.292202, 31.963766>,  <30.156889, 36.550282, 32.268768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137663, 36.292202, 31.963766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374033, 0.696216, -0.612684,
		0.926169, -0.314650, 0.207862,
		-0.048064, -0.645196, -0.762503,
		30.123243, 36.098644, 31.735016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806381, 36.519150, 32.112785>,  <30.156889, 36.550282, 32.268768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806381, 36.519150, 32.112785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.615700, 36.400330, 31.781843>,  <30.501291, 36.329037, 31.583279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.615700, 36.400330, 31.781843>,  <30.806381, 36.519150, 32.112785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615700, 36.400330, 31.781843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513401, 0.669901, -0.536333,
		0.713564, -0.680435, -0.166837,
		-0.476704, -0.297054, -0.827353,
		30.472689, 36.311214, 31.533638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331934, 36.462120, 31.624495>,  <30.806381, 36.519150, 32.112785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331934, 36.462120, 31.624495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.988005, 36.480206, 31.421059>,  <30.781647, 36.491058, 31.298998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.988005, 36.480206, 31.421059>,  <31.331934, 36.462120, 31.624495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988005, 36.480206, 31.421059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317721, 0.827117, -0.463607,
		0.399699, -0.560208, -0.725539,
		-0.859822, 0.045215, -0.508588,
		30.730059, 36.493771, 31.268482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478870, 36.640232, 31.035934>,  <31.331934, 36.462120, 31.624495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478870, 36.640232, 31.035934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089098, 36.718632, 30.991985>,  <30.855234, 36.765671, 30.965616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089098, 36.718632, 30.991985>,  <31.478870, 36.640232, 31.035934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089098, 36.718632, 30.991985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223600, 0.797569, -0.560256,
		-0.022178, -0.570497, -0.821000,
		-0.974429, 0.196001, -0.109875,
		30.796770, 36.777431, 30.959023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398779, 36.633106, 30.334791>,  <31.478870, 36.640232, 31.035934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398779, 36.633106, 30.334791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083572, 36.844837, 30.460548>,  <30.894449, 36.971874, 30.536003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083572, 36.844837, 30.460548>,  <31.398779, 36.633106, 30.334791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083572, 36.844837, 30.460548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121975, 0.634771, -0.763012,
		-0.603451, -0.562917, -0.564775,
		-0.788016, 0.529329, 0.314392,
		30.847168, 37.003635, 30.554867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005949, 36.686337, 29.769835>,  <31.398779, 36.633106, 30.334791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005949, 36.686337, 29.769835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.929003, 37.000568, 30.005072>,  <30.882835, 37.189110, 30.146214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.929003, 37.000568, 30.005072>,  <31.005949, 36.686337, 29.769835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929003, 37.000568, 30.005072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193644, 0.617891, -0.762045,
		-0.962028, -0.032711, -0.270985,
		-0.192367, 0.785583, 0.588094,
		30.871292, 37.236244, 30.181499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472376, 37.043453, 29.395813>,  <31.005949, 36.686337, 29.769835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472376, 37.043453, 29.395813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600315, 37.301281, 29.673582>,  <30.677078, 37.455978, 29.840244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600315, 37.301281, 29.673582>,  <30.472376, 37.043453, 29.395813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600315, 37.301281, 29.673582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131474, 0.695641, -0.706256,
		-0.938303, 0.317193, 0.137755,
		0.319847, 0.644571, 0.694425,
		30.696270, 37.494652, 29.881910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999517, 37.592369, 29.352503>,  <30.472376, 37.043453, 29.395813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999517, 37.592369, 29.352503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.349211, 37.715298, 29.502848>,  <30.559027, 37.789055, 29.593054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.349211, 37.715298, 29.502848>,  <29.999517, 37.592369, 29.352503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349211, 37.715298, 29.502848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156592, 0.554306, -0.817450,
		-0.459560, 0.773498, 0.436469,
		0.874233, 0.307320, 0.375861,
		30.611481, 37.807495, 29.615606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104523, 38.294937, 29.163479>,  <29.999517, 37.592369, 29.352503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104523, 38.294937, 29.163479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471672, 38.158737, 29.245037>,  <30.691961, 38.077019, 29.293972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471672, 38.158737, 29.245037>,  <30.104523, 38.294937, 29.163479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471672, 38.158737, 29.245037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331396, 0.374864, -0.865826,
		0.218376, 0.862288, 0.456916,
		0.917872, -0.340496, 0.203898,
		30.747034, 38.056587, 29.306206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.062450, 37.757347, 44.652508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.711540, 37.686325, 44.830883>,  <39.500996, 37.643711, 44.937908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.711540, 37.686325, 44.830883>,  <40.062450, 37.757347, 44.652508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711540, 37.686325, 44.830883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156223, 0.772851, 0.615058,
		-0.453850, 0.609242, -0.650265,
		-0.877277, -0.177558, 0.445936,
		39.448357, 37.633057, 44.964664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974625, 38.420120, 44.874916>,  <40.062450, 37.757347, 44.652508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974625, 38.420120, 44.874916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.698788, 38.201183, 45.064602>,  <39.533287, 38.069820, 45.178413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.698788, 38.201183, 45.064602>,  <39.974625, 38.420120, 44.874916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698788, 38.201183, 45.064602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188982, 0.496119, 0.847438,
		-0.699107, 0.674004, -0.238681,
		-0.689591, -0.547343, 0.474215,
		39.491909, 38.036980, 45.206867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462151, 38.874596, 45.124077>,  <39.974625, 38.420120, 44.874916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462151, 38.874596, 45.124077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.446472, 38.543804, 45.348427>,  <39.437065, 38.345329, 45.483036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.446472, 38.543804, 45.348427>,  <39.462151, 38.874596, 45.124077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446472, 38.543804, 45.348427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077702, 0.557080, 0.826816,
		-0.996206, 0.075992, 0.042421,
		-0.039199, -0.826975, 0.560871,
		39.434711, 38.295712, 45.516689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106663, 39.053982, 45.700993>,  <39.462151, 38.874596, 45.124077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106663, 39.053982, 45.700993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.320755, 38.737328, 45.818863>,  <39.449211, 38.547333, 45.889584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.320755, 38.737328, 45.818863>,  <39.106663, 39.053982, 45.700993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320755, 38.737328, 45.818863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204079, 0.459704, 0.864306,
		-0.819682, -0.402466, 0.407605,
		0.535232, -0.791640, 0.294676,
		39.481323, 38.499836, 45.907265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977570, 39.043819, 46.351448>,  <39.106663, 39.053982, 45.700993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977570, 39.043819, 46.351448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.296837, 38.803352, 46.335838>,  <39.488396, 38.659073, 46.326473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.296837, 38.803352, 46.335838>,  <38.977570, 39.043819, 46.351448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296837, 38.803352, 46.335838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375264, 0.445466, 0.812857,
		-0.471282, -0.663440, 0.581154,
		0.798167, -0.601171, -0.039026,
		39.536285, 38.623001, 46.324131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995949, 38.722980, 47.003052>,  <38.977570, 39.043819, 46.351448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995949, 38.722980, 47.003052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.357521, 38.700344, 46.833488>,  <39.574467, 38.686760, 46.731750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.357521, 38.700344, 46.833488>,  <38.995949, 38.722980, 47.003052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357521, 38.700344, 46.833488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383609, 0.545492, 0.745173,
		0.189068, -0.836203, 0.514799,
		0.903934, -0.056593, -0.423910,
		39.628700, 38.683365, 46.706314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400616, 38.444969, 47.481190>,  <38.995949, 38.722980, 47.003052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400616, 38.444969, 47.481190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634632, 38.654877, 47.233852>,  <39.775043, 38.780819, 47.085449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634632, 38.654877, 47.233852>,  <39.400616, 38.444969, 47.481190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634632, 38.654877, 47.233852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458111, 0.415319, 0.785904,
		0.669225, -0.743055, 0.002577,
		0.585041, 0.524766, -0.618344,
		39.810143, 38.812305, 47.048347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015705, 38.415897, 47.817318>,  <39.400616, 38.444969, 47.481190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015705, 38.415897, 47.817318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.085323, 38.717712, 47.564217>,  <40.127094, 38.898800, 47.412354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.085323, 38.717712, 47.564217>,  <40.015705, 38.415897, 47.817318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085323, 38.717712, 47.564217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279049, 0.578433, 0.766516,
		0.944372, -0.309980, -0.109879,
		0.174047, 0.754538, -0.632756,
		40.137539, 38.944073, 47.374390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575089, 38.627895, 48.083443>,  <40.015705, 38.415897, 47.817318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575089, 38.627895, 48.083443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.462185, 38.929176, 47.845783>,  <40.394444, 39.109943, 47.703186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.462185, 38.929176, 47.845783>,  <40.575089, 38.627895, 48.083443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462185, 38.929176, 47.845783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437545, 0.652242, 0.618979,
		0.853748, -0.085257, -0.513660,
		-0.282258, 0.753201, -0.594153,
		40.377506, 39.155136, 47.667538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141247, 39.028370, 48.049980>,  <40.575089, 38.627895, 48.083443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141247, 39.028370, 48.049980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.844986, 39.275524, 47.944416>,  <40.667229, 39.423817, 47.881077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.844986, 39.275524, 47.944416>,  <41.141247, 39.028370, 48.049980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844986, 39.275524, 47.944416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355994, 0.694016, 0.625788,
		0.569822, 0.369543, -0.733990,
		-0.740656, 0.617883, -0.263910,
		40.622787, 39.460888, 47.865242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429008, 39.785698, 47.871677>,  <41.141247, 39.028370, 48.049980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429008, 39.785698, 47.871677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.040073, 39.799221, 47.964127>,  <40.806713, 39.807335, 48.019596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.040073, 39.799221, 47.964127>,  <41.429008, 39.785698, 47.871677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040073, 39.799221, 47.964127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212596, 0.537979, 0.815709,
		-0.096764, 0.842281, -0.530283,
		-0.972337, 0.033805, 0.231122,
		40.748371, 39.809364, 48.033463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276237, 40.625557, 47.908451>,  <41.429008, 39.785698, 47.871677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276237, 40.625557, 47.908451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.980263, 40.433495, 48.096893>,  <40.802677, 40.318256, 48.209957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.980263, 40.433495, 48.096893>,  <41.276237, 40.625557, 47.908451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980263, 40.433495, 48.096893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040218, 0.667511, 0.743513,
		-0.671469, 0.569102, -0.474607,
		-0.739940, -0.480158, 0.471101,
		40.758282, 40.289448, 48.238224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800797, 40.749336, 47.515694>,  <41.276237, 40.625557, 47.908451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800797, 40.749336, 47.515694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.505459, 40.827152, 47.257389>,  <41.328255, 40.873840, 47.102406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.505459, 40.827152, 47.257389>,  <41.800797, 40.749336, 47.515694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505459, 40.827152, 47.257389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670861, -0.310142, 0.673615,
		-0.069231, 0.930573, 0.359501,
		-0.738344, 0.194540, -0.645757,
		41.283955, 40.885513, 47.063663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430386, 41.381218, 47.663410>,  <41.800797, 40.749336, 47.515694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430386, 41.381218, 47.663410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.219292, 41.066864, 47.534481>,  <41.092636, 40.878254, 47.457123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.219292, 41.066864, 47.534481>,  <41.430386, 41.381218, 47.663410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219292, 41.066864, 47.534481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595378, 0.071593, 0.800250,
		-0.605826, 0.614218, -0.505678,
		-0.527731, -0.785882, -0.322319,
		41.060974, 40.831100, 47.437786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013966, 41.913990, 48.119659>,  <41.430386, 41.381218, 47.663410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013966, 41.913990, 48.119659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783348, 42.218952, 48.002132>,  <40.644978, 42.401928, 47.931614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783348, 42.218952, 48.002132>,  <41.013966, 41.913990, 48.119659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783348, 42.218952, 48.002132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312364, -0.537961, -0.782960,
		-0.754998, -0.359634, 0.548307,
		-0.576547, 0.762405, -0.293823,
		40.610382, 42.447674, 47.913986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379894, 41.624718, 47.854412>,  <41.013966, 41.913990, 48.119659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379894, 41.624718, 47.854412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.383766, 41.996662, 47.707294>,  <40.386089, 42.219830, 47.619022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.383766, 41.996662, 47.707294>,  <40.379894, 41.624718, 47.854412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383766, 41.996662, 47.707294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166316, -0.361191, -0.917540,
		-0.986025, 0.070049, 0.151155,
		0.009677, 0.929857, -0.367793,
		40.386669, 42.275620, 47.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834732, 41.629303, 47.520149>,  <40.379894, 41.624718, 47.854412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834732, 41.629303, 47.520149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057461, 41.925682, 47.369976>,  <40.191097, 42.103508, 47.279873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057461, 41.925682, 47.369976>,  <39.834732, 41.629303, 47.520149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057461, 41.925682, 47.369976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222227, -0.302617, -0.926843,
		-0.800350, 0.599520, -0.003847,
		0.556825, 0.740944, -0.375430,
		40.224510, 42.147964, 47.257347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451756, 41.876564, 46.942371>,  <39.834732, 41.629303, 47.520149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451756, 41.876564, 46.942371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823536, 42.009377, 46.878040>,  <40.046604, 42.089066, 46.839439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823536, 42.009377, 46.878040>,  <39.451756, 41.876564, 46.942371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823536, 42.009377, 46.878040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104653, -0.180746, -0.977946,
		-0.353782, 0.925788, -0.133247,
		0.929455, 0.332035, -0.160831,
		40.102371, 42.108986, 46.829792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412823, 42.164562, 46.341362>,  <39.451756, 41.876564, 46.942371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412823, 42.164562, 46.341362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.812668, 42.154732, 46.346638>,  <40.052574, 42.148834, 46.349804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.812668, 42.154732, 46.346638>,  <39.412823, 42.164562, 46.341362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812668, 42.154732, 46.346638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005597, -0.286339, -0.958112,
		0.027324, 0.957813, -0.286090,
		0.999611, -0.024579, 0.013185,
		40.112553, 42.147358, 46.350594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670765, 42.537285, 45.697365>,  <39.412823, 42.164562, 46.341362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670765, 42.537285, 45.697365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943623, 42.274979, 45.826763>,  <40.107338, 42.117596, 45.904404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943623, 42.274979, 45.826763>,  <39.670765, 42.537285, 45.697365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943623, 42.274979, 45.826763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106136, -0.348931, -0.931119,
		0.723476, 0.669491, -0.168420,
		0.682142, -0.655767, 0.323500,
		40.148266, 42.078247, 45.923813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142498, 42.578247, 45.169449>,  <39.670765, 42.537285, 45.697365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142498, 42.578247, 45.169449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.190735, 42.229965, 45.360165>,  <40.219677, 42.020996, 45.474594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.190735, 42.229965, 45.360165>,  <40.142498, 42.578247, 45.169449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190735, 42.229965, 45.360165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017366, -0.482074, -0.875958,
		0.992550, 0.097356, -0.073256,
		0.120594, -0.870705, 0.476792,
		40.226913, 41.968754, 45.503201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657848, 42.188152, 44.799465>,  <40.142498, 42.578247, 45.169449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657848, 42.188152, 44.799465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.476128, 41.909412, 45.021461>,  <40.367096, 41.742168, 45.154659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.476128, 41.909412, 45.021461>,  <40.657848, 42.188152, 44.799465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476128, 41.909412, 45.021461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009225, -0.619279, -0.785117,
		0.890802, -0.361797, 0.274909,
		-0.454299, -0.696847, 0.554992,
		40.339836, 41.700359, 45.187958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032547, 41.604351, 44.563164>,  <40.657848, 42.188152, 44.799465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032547, 41.604351, 44.563164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.705345, 41.472702, 44.751865>,  <40.509026, 41.393711, 44.865086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.705345, 41.472702, 44.751865>,  <41.032547, 41.604351, 44.563164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705345, 41.472702, 44.751865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086609, -0.740311, -0.666663,
		0.568657, -0.586189, 0.577071,
		-0.818002, -0.329123, 0.471752,
		40.459946, 41.373966, 44.893391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196667, 40.901291, 44.614483>,  <41.032547, 41.604351, 44.563164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196667, 40.901291, 44.614483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.804115, 40.920216, 44.688953>,  <40.568584, 40.931572, 44.733635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.804115, 40.920216, 44.688953>,  <41.196667, 40.901291, 44.614483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804115, 40.920216, 44.688953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156841, -0.756957, -0.634364,
		0.110916, -0.651750, 0.750280,
		-0.981376, 0.047314, 0.186179,
		40.509701, 40.934410, 44.744808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953640, 40.166409, 44.775291>,  <41.196667, 40.901291, 44.614483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953640, 40.166409, 44.775291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.609818, 40.354572, 44.695408>,  <40.403522, 40.467468, 44.647480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.609818, 40.354572, 44.695408>,  <40.953640, 40.166409, 44.775291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609818, 40.354572, 44.695408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180560, -0.645122, -0.742439,
		-0.478082, -0.602109, 0.639455,
		-0.859555, 0.470407, -0.199705,
		40.351952, 40.495693, 44.635498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441711, 39.659821, 44.740372>,  <40.953640, 40.166409, 44.775291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441711, 39.659821, 44.740372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.325466, 39.970280, 44.516537>,  <40.255718, 40.156555, 44.382236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.325466, 39.970280, 44.516537>,  <40.441711, 39.659821, 44.740372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325466, 39.970280, 44.516537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058013, -0.598047, -0.799359,
		-0.955081, -0.199840, 0.218827,
		-0.290613, 0.776147, -0.559590,
		40.238281, 40.203125, 44.348660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887367, 39.491390, 44.434944>,  <40.441711, 39.659821, 44.740372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887367, 39.491390, 44.434944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039932, 39.777096, 44.200218>,  <40.131474, 39.948521, 44.059383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039932, 39.777096, 44.200218>,  <39.887367, 39.491390, 44.434944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039932, 39.777096, 44.200218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096988, -0.662220, -0.743006,
		-0.919301, 0.226480, -0.321857,
		0.381416, 0.714262, -0.586814,
		40.154358, 39.991375, 44.024174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582142, 39.403053, 43.865250>,  <39.887367, 39.491390, 44.434944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582142, 39.403053, 43.865250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877308, 39.626450, 43.713692>,  <40.054409, 39.760487, 43.622757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877308, 39.626450, 43.713692>,  <39.582142, 39.403053, 43.865250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877308, 39.626450, 43.713692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051848, -0.606673, -0.793259,
		-0.672898, 0.565714, -0.476631,
		0.737916, 0.558494, -0.378897,
		40.098682, 39.793999, 43.600021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939583, 39.753082, 43.642010>,  <39.582142, 39.403053, 43.865250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939583, 39.753082, 43.642010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542202, 39.727581, 43.604092>,  <38.303772, 39.712280, 43.581341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542202, 39.727581, 43.604092>,  <38.939583, 39.753082, 43.642010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542202, 39.727581, 43.604092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111412, 0.357227, 0.927349,
		-0.025257, 0.931839, -0.361991,
		-0.993453, -0.063752, -0.094795,
		38.244167, 39.708454, 43.575653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680264, 40.448219, 43.746647>,  <38.939583, 39.753082, 43.642010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680264, 40.448219, 43.746647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366554, 40.213974, 43.828598>,  <38.178329, 40.073429, 43.877769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366554, 40.213974, 43.828598>,  <38.680264, 40.448219, 43.746647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366554, 40.213974, 43.828598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157633, 0.507480, 0.847122,
		-0.600054, 0.632081, -0.490315,
		-0.784275, -0.585609, 0.204879,
		38.131271, 40.038292, 43.890060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044830, 40.852859, 43.838707>,  <38.680264, 40.448219, 43.746647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044830, 40.852859, 43.838707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924129, 40.517456, 44.020191>,  <37.851711, 40.316216, 44.129082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924129, 40.517456, 44.020191>,  <38.044830, 40.852859, 43.838707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924129, 40.517456, 44.020191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182234, 0.517845, 0.835840,
		-0.935809, 0.169531, -0.309063,
		-0.301747, -0.838508, 0.453710,
		37.833607, 40.265903, 44.156303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396996, 41.017216, 44.095467>,  <38.044830, 40.852859, 43.838707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396996, 41.017216, 44.095467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.508705, 40.705860, 44.320362>,  <37.575729, 40.519047, 44.455299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.508705, 40.705860, 44.320362>,  <37.396996, 41.017216, 44.095467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508705, 40.705860, 44.320362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393578, 0.441295, 0.806446,
		-0.875844, -0.446505, -0.183115,
		0.279274, -0.778391, 0.562240,
		37.592487, 40.472343, 44.489033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786160, 40.773632, 44.513466>,  <37.396996, 41.017216, 44.095467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786160, 40.773632, 44.513466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126095, 40.663029, 44.692944>,  <37.330055, 40.596668, 44.800629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126095, 40.663029, 44.692944>,  <36.786160, 40.773632, 44.513466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126095, 40.663029, 44.692944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233931, 0.564989, 0.791242,
		-0.472291, -0.777388, 0.415463,
		0.849834, -0.276507, 0.448694,
		37.381046, 40.580078, 44.827553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631851, 40.855782, 45.212219>,  <36.786160, 40.773632, 44.513466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631851, 40.855782, 45.212219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021484, 40.778587, 45.259415>,  <37.255264, 40.732273, 45.287731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021484, 40.778587, 45.259415>,  <36.631851, 40.855782, 45.212219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021484, 40.778587, 45.259415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014814, 0.466086, 0.884615,
		-0.225709, -0.863436, 0.451148,
		0.974082, -0.192982, 0.117991,
		37.313709, 40.720692, 45.294811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663181, 40.520290, 45.907524>,  <36.631851, 40.855782, 45.212219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663181, 40.520290, 45.907524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012997, 40.678104, 45.794727>,  <37.222885, 40.772793, 45.727047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012997, 40.678104, 45.794727>,  <36.663181, 40.520290, 45.907524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012997, 40.678104, 45.794727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177759, 0.280221, 0.943333,
		0.451196, -0.875112, 0.174934,
		0.874542, 0.394532, -0.281994,
		37.275360, 40.796463, 45.710129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432171, 39.836548, 46.287373>,  <36.663181, 40.520290, 45.907524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432171, 39.836548, 46.287373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101681, 39.756172, 46.497890>,  <35.903389, 39.707947, 46.624199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101681, 39.756172, 46.497890>,  <36.432171, 39.836548, 46.287373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101681, 39.756172, 46.497890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331389, -0.582127, -0.742502,
		0.455564, -0.787879, 0.414378,
		-0.826222, -0.200937, 0.526290,
		35.853813, 39.695892, 46.655777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333355, 39.210590, 46.303333>,  <36.432171, 39.836548, 46.287373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333355, 39.210590, 46.303333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957710, 39.342659, 46.341389>,  <35.732323, 39.421902, 46.364220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957710, 39.342659, 46.341389>,  <36.333355, 39.210590, 46.303333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957710, 39.342659, 46.341389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263967, -0.516003, -0.814900,
		-0.219967, -0.790397, 0.571740,
		-0.939115, 0.330171, 0.095135,
		35.675976, 39.441711, 46.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923824, 38.625580, 46.170822>,  <36.333355, 39.210590, 46.303333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923824, 38.625580, 46.170822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.688519, 38.939812, 46.094078>,  <35.547333, 39.128349, 46.048031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.688519, 38.939812, 46.094078>,  <35.923824, 38.625580, 46.170822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688519, 38.939812, 46.094078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197443, -0.369599, -0.907972,
		-0.784193, -0.496249, 0.372530,
		-0.588267, 0.785578, -0.191856,
		35.512039, 39.175484, 46.036522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292553, 38.329010, 45.930183>,  <35.923824, 38.625580, 46.170822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292553, 38.329010, 45.930183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303711, 38.705433, 45.795345>,  <35.310406, 38.931286, 45.714443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303711, 38.705433, 45.795345>,  <35.292553, 38.329010, 45.930183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303711, 38.705433, 45.795345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126590, -0.331186, -0.935035,
		-0.991563, 0.068758, 0.109890,
		0.027897, 0.941057, -0.337095,
		35.312080, 38.987751, 45.694218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884804, 38.251011, 45.347569>,  <35.292553, 38.329010, 45.930183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884804, 38.251011, 45.347569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995373, 38.631714, 45.294273>,  <35.061714, 38.860134, 45.262295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995373, 38.631714, 45.294273>,  <34.884804, 38.251011, 45.347569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995373, 38.631714, 45.294273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396128, -0.013479, -0.918096,
		-0.875600, 0.306559, 0.373292,
		0.276419, 0.951756, -0.133239,
		35.078297, 38.917240, 45.254303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293240, 38.649883, 45.105137>,  <34.884804, 38.251011, 45.347569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293240, 38.649883, 45.105137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653236, 38.775002, 44.983700>,  <34.869236, 38.850071, 44.910839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653236, 38.775002, 44.983700>,  <34.293240, 38.649883, 45.105137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653236, 38.775002, 44.983700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289078, -0.092996, -0.952778,
		-0.326254, 0.945258, 0.006725,
		0.899996, 0.312792, -0.303593,
		34.923237, 38.868839, 44.892620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357388, 39.312668, 44.704525>,  <34.293240, 38.649883, 45.105137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357388, 39.312668, 44.704525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.659718, 39.100197, 44.551388>,  <34.841118, 38.972713, 44.459503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.659718, 39.100197, 44.551388>,  <34.357388, 39.312668, 44.704525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659718, 39.100197, 44.551388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326376, 0.201249, -0.923568,
		0.567628, 0.823010, -0.021255,
		0.755829, -0.531181, -0.382845,
		34.886467, 38.940842, 44.436535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.901012, 39.084202, 49.747452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.125805, 39.414188, 49.723450>,  <38.260681, 39.612183, 49.709049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.125805, 39.414188, 49.723450>,  <37.901012, 39.084202, 49.747452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125805, 39.414188, 49.723450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139234, 0.022839, -0.989996,
		-0.815346, 0.564716, 0.127698,
		0.561983, 0.824969, -0.060006,
		38.294399, 39.661678, 49.705448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335114, 38.783401, 49.318073>,  <37.901012, 39.084202, 49.747452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335114, 38.783401, 49.318073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.732681, 38.796528, 49.276024>,  <37.971222, 38.804405, 49.250793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.732681, 38.796528, 49.276024>,  <37.335114, 38.783401, 49.318073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732681, 38.796528, 49.276024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021930, -0.876474, -0.480949,
		-0.107921, 0.480329, -0.870424,
		0.993918, 0.032816, -0.105124,
		38.030857, 38.806374, 49.244488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407379, 38.508560, 48.626163>,  <37.335114, 38.783401, 49.318073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407379, 38.508560, 48.626163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.761730, 38.461166, 48.805576>,  <37.974342, 38.432732, 48.913223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.761730, 38.461166, 48.805576>,  <37.407379, 38.508560, 48.626163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761730, 38.461166, 48.805576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178749, -0.805013, -0.565688,
		0.428100, 0.581305, -0.691964,
		0.885878, -0.118483, 0.448534,
		38.027493, 38.425621, 48.940136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897888, 38.468769, 48.027355>,  <37.407379, 38.508560, 48.626163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897888, 38.468769, 48.027355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.032494, 38.285404, 48.356380>,  <38.113258, 38.175385, 48.553795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.032494, 38.285404, 48.356380>,  <37.897888, 38.468769, 48.027355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032494, 38.285404, 48.356380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210163, -0.814917, -0.540132,
		0.917926, 0.354636, -0.177891,
		0.336516, -0.458415, 0.822565,
		38.133450, 38.147881, 48.603149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443691, 38.121460, 47.814514>,  <37.897888, 38.468769, 48.027355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443691, 38.121460, 47.814514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.365505, 37.926208, 48.154755>,  <38.318596, 37.809059, 48.358898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.365505, 37.926208, 48.154755>,  <38.443691, 38.121460, 47.814514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365505, 37.926208, 48.154755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033127, -0.870123, -0.491719,
		0.980152, -0.067934, 0.186246,
		-0.195461, -0.488129, 0.850603,
		38.306866, 37.779770, 48.409935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021420, 37.614506, 48.052521>,  <38.443691, 38.121460, 47.814514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021420, 37.614506, 48.052521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.655334, 37.500469, 48.166431>,  <38.435684, 37.432045, 48.234779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.655334, 37.500469, 48.166431>,  <39.021420, 37.614506, 48.052521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655334, 37.500469, 48.166431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033888, -0.758664, -0.650600,
		0.401535, -0.585789, 0.704003,
		-0.915216, -0.285096, 0.284779,
		38.380768, 37.414940, 48.251865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966965, 36.890202, 47.823650>,  <39.021420, 37.614506, 48.052521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966965, 36.890202, 47.823650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.590614, 36.937893, 47.950478>,  <38.364803, 36.966507, 48.026573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.590614, 36.937893, 47.950478>,  <38.966965, 36.890202, 47.823650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590614, 36.937893, 47.950478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302181, -0.718385, -0.626586,
		0.153069, -0.685353, 0.711942,
		-0.940881, 0.119225, 0.317063,
		38.308350, 36.973660, 48.045597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669109, 36.230862, 47.868477>,  <38.966965, 36.890202, 47.823650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669109, 36.230862, 47.868477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.360344, 36.483253, 47.837460>,  <38.175087, 36.634689, 47.818848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.360344, 36.483253, 47.837460>,  <38.669109, 36.230862, 47.868477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360344, 36.483253, 47.837460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384345, -0.560354, -0.733677,
		-0.506388, -0.536531, 0.675059,
		-0.771913, 0.630982, -0.077544,
		38.128769, 36.672550, 47.814198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030331, 35.833679, 47.941292>,  <38.669109, 36.230862, 47.868477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030331, 35.833679, 47.941292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.936752, 36.176613, 47.757877>,  <37.880608, 36.382374, 47.647827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.936752, 36.176613, 47.757877>,  <38.030331, 35.833679, 47.941292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936752, 36.176613, 47.757877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544207, -0.506289, -0.668962,
		-0.805673, 0.093038, 0.585008,
		-0.233944, 0.857330, -0.458535,
		37.866570, 36.433811, 47.620316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295574, 35.809196, 47.992641>,  <38.030331, 35.833679, 47.941292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295574, 35.809196, 47.992641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423042, 36.059357, 47.707733>,  <37.499523, 36.209454, 47.536789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423042, 36.059357, 47.707733>,  <37.295574, 35.809196, 47.992641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423042, 36.059357, 47.707733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534598, -0.501938, -0.679900,
		-0.782722, 0.597442, 0.174383,
		0.318671, 0.625398, -0.712268,
		37.518642, 36.246975, 47.494053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625191, 36.086742, 47.751083>,  <37.295574, 35.809196, 47.992641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625191, 36.086742, 47.751083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.889713, 36.138493, 47.455532>,  <37.048428, 36.169540, 47.278202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.889713, 36.138493, 47.455532>,  <36.625191, 36.086742, 47.751083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889713, 36.138493, 47.455532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520877, -0.629609, -0.576436,
		-0.539777, 0.766064, -0.348979,
		0.661308, 0.129372, -0.738874,
		37.088104, 36.177303, 47.233871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262993, 36.311089, 47.192001>,  <36.625191, 36.086742, 47.751083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262993, 36.311089, 47.192001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.601398, 36.162514, 47.039009>,  <36.804443, 36.073368, 46.947212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.601398, 36.162514, 47.039009>,  <36.262993, 36.311089, 47.192001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601398, 36.162514, 47.039009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528899, -0.494176, -0.689968,
		0.067271, 0.786016, -0.614535,
		0.846015, -0.371442, -0.382479,
		36.855202, 36.051083, 46.924267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592983, 36.665146, 47.111782>,  <36.262993, 36.311089, 47.192001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592983, 36.665146, 47.111782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197201, 36.641407, 47.164635>,  <34.959732, 36.627163, 47.196346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197201, 36.641407, 47.164635>,  <35.592983, 36.665146, 47.111782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197201, 36.641407, 47.164635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066103, 0.626642, 0.776499,
		-0.128881, 0.777045, -0.616110,
		-0.989454, -0.059349, 0.132128,
		34.900364, 36.623604, 47.204273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386543, 37.248020, 47.086784>,  <35.592983, 36.665146, 47.111782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386543, 37.248020, 47.086784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.082180, 37.075356, 47.280563>,  <34.899563, 36.971756, 47.396832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.082180, 37.075356, 47.280563>,  <35.386543, 37.248020, 47.086784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082180, 37.075356, 47.280563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151530, 0.607752, 0.779536,
		-0.630917, 0.666564, -0.397035,
		-0.760909, -0.431660, 0.484445,
		34.853909, 36.945858, 47.425896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998512, 37.818676, 47.310520>,  <35.386543, 37.248020, 47.086784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998512, 37.818676, 47.310520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.860455, 37.523930, 47.543041>,  <34.777618, 37.347084, 47.682552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.860455, 37.523930, 47.543041>,  <34.998512, 37.818676, 47.310520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860455, 37.523930, 47.543041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045322, 0.605553, 0.794514,
		-0.937455, 0.300567, -0.175606,
		-0.345143, -0.736862, 0.581301,
		34.756912, 37.302872, 47.717430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568008, 38.122681, 47.895226>,  <34.998512, 37.818676, 47.310520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568008, 38.122681, 47.895226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.674519, 37.759193, 48.023808>,  <34.738426, 37.541103, 48.100956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.674519, 37.759193, 48.023808>,  <34.568008, 38.122681, 47.895226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674519, 37.759193, 48.023808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218376, 0.381700, 0.898118,
		-0.938834, -0.168947, 0.300079,
		0.266275, -0.908714, 0.321459,
		34.754402, 37.486580, 48.120247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260872, 37.940498, 48.466648>,  <34.568008, 38.122681, 47.895226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260872, 37.940498, 48.466648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.603397, 37.735653, 48.493378>,  <34.808914, 37.612743, 48.509415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.603397, 37.735653, 48.493378>,  <34.260872, 37.940498, 48.466648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603397, 37.735653, 48.493378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172756, 0.405968, 0.897410,
		-0.486708, -0.756919, 0.436107,
		0.856312, -0.512117, 0.066826,
		34.860291, 37.582020, 48.513424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330196, 37.937237, 49.122780>,  <34.260872, 37.940498, 48.466648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330196, 37.937237, 49.122780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.689640, 37.794659, 49.020447>,  <34.905304, 37.709110, 48.959045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.689640, 37.794659, 49.020447>,  <34.330196, 37.937237, 49.122780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689640, 37.794659, 49.020447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395037, 0.403563, 0.825278,
		-0.190921, -0.842665, 0.503453,
		0.898607, -0.356445, -0.255835,
		34.959221, 37.687725, 48.943695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605560, 37.763168, 49.812862>,  <34.330196, 37.937237, 49.122780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605560, 37.763168, 49.812862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895264, 37.765537, 49.537060>,  <35.069084, 37.766956, 49.371578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895264, 37.765537, 49.537060>,  <34.605560, 37.763168, 49.812862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895264, 37.765537, 49.537060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505865, 0.674958, 0.537152,
		0.468567, -0.737832, 0.485847,
		0.724255, 0.005919, -0.689507,
		35.112541, 37.767311, 49.330208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134251, 37.756256, 50.215355>,  <34.605560, 37.763168, 49.812862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134251, 37.756256, 50.215355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.247913, 37.917374, 49.867329>,  <35.316109, 38.014046, 49.658512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.247913, 37.917374, 49.867329>,  <35.134251, 37.756256, 50.215355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247913, 37.917374, 49.867329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457563, 0.740494, 0.492244,
		0.842551, -0.537983, 0.026111,
		0.284154, 0.402793, -0.870066,
		35.333160, 38.038212, 49.606308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754616, 38.171535, 50.403511>,  <35.134251, 37.756256, 50.215355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754616, 38.171535, 50.403511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696766, 38.316322, 50.035149>,  <35.662056, 38.403194, 49.814133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696766, 38.316322, 50.035149>,  <35.754616, 38.171535, 50.403511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696766, 38.316322, 50.035149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319679, 0.897870, 0.302714,
		0.936424, -0.250612, -0.245569,
		-0.144625, 0.361972, -0.920902,
		35.653378, 38.424915, 49.758877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338501, 38.494385, 50.237030>,  <35.754616, 38.171535, 50.403511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338501, 38.494385, 50.237030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.032562, 38.660286, 50.039856>,  <35.848999, 38.759827, 49.921551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.032562, 38.660286, 50.039856>,  <36.338501, 38.494385, 50.237030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032562, 38.660286, 50.039856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358990, 0.909765, 0.208455,
		0.534912, -0.017522, -0.844726,
		-0.764850, 0.414754, -0.492934,
		35.803108, 38.784714, 49.891975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626137, 38.957397, 49.809319>,  <36.338501, 38.494385, 50.237030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626137, 38.957397, 49.809319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.250469, 39.090427, 49.843616>,  <36.025070, 39.170246, 49.864197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.250469, 39.090427, 49.843616>,  <36.626137, 38.957397, 49.809319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250469, 39.090427, 49.843616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341725, 0.929866, 0.136285,
		-0.034406, 0.157296, -0.986952,
		-0.939170, 0.332577, 0.085745,
		35.968719, 39.190201, 49.869339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557152, 39.466820, 49.347256>,  <36.626137, 38.957397, 49.809319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557152, 39.466820, 49.347256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.268871, 39.535522, 49.615910>,  <36.095901, 39.576744, 49.777100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.268871, 39.535522, 49.615910>,  <36.557152, 39.466820, 49.347256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268871, 39.535522, 49.615910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326739, 0.938623, 0.110581,
		-0.611416, 0.299144, -0.732587,
		-0.720703, 0.171754, 0.671631,
		36.052662, 39.587048, 49.817398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443008, 40.177017, 49.331879>,  <36.557152, 39.466820, 49.347256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443008, 40.177017, 49.331879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.228245, 40.151581, 49.668373>,  <36.099388, 40.136318, 49.870270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.228245, 40.151581, 49.668373>,  <36.443008, 40.177017, 49.331879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228245, 40.151581, 49.668373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080204, 0.988791, 0.125935,
		-0.839818, 0.135086, -0.525792,
		-0.536910, -0.063592, 0.841239,
		36.067173, 40.132504, 49.920746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949306, 40.646736, 49.260548>,  <36.443008, 40.177017, 49.331879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949306, 40.646736, 49.260548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975220, 40.595932, 49.656460>,  <35.990768, 40.565449, 49.894009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975220, 40.595932, 49.656460>,  <35.949306, 40.646736, 49.260548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975220, 40.595932, 49.656460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116125, 0.986088, 0.118937,
		-0.991120, 0.107234, 0.078628,
		0.064780, -0.127012, 0.989783,
		35.994656, 40.557827, 49.953396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341816, 40.565334, 49.655796>,  <35.949306, 40.646736, 49.260548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341816, 40.565334, 49.655796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.387375, 40.876629, 49.408775>,  <35.414711, 41.063408, 49.260563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.387375, 40.876629, 49.408775>,  <35.341816, 40.565334, 49.655796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387375, 40.876629, 49.408775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167534, -0.597651, -0.784057,
		-0.979265, 0.192764, 0.062309,
		0.113899, 0.778238, -0.617553,
		35.421543, 41.110100, 49.223511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841286, 40.595551, 49.118359>,  <35.341816, 40.565334, 49.655796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841286, 40.595551, 49.118359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.131569, 40.815369, 48.952782>,  <35.305740, 40.947258, 48.853436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.131569, 40.815369, 48.952782>,  <34.841286, 40.595551, 49.118359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131569, 40.815369, 48.952782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104480, -0.506656, -0.855794,
		-0.680024, 0.664305, -0.310267,
		0.725707, 0.549544, -0.413945,
		35.349281, 40.980232, 48.828598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613884, 40.858200, 48.468102>,  <34.841286, 40.595551, 49.118359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613884, 40.858200, 48.468102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.012360, 40.844440, 48.436024>,  <35.251446, 40.836185, 48.416779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.012360, 40.844440, 48.436024>,  <34.613884, 40.858200, 48.468102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012360, 40.844440, 48.436024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086279, -0.525465, -0.846429,
		-0.013024, 0.850120, -0.526428,
		0.996186, -0.034396, -0.080191,
		35.311214, 40.834122, 48.411968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816658, 40.994240, 47.726318>,  <34.613884, 40.858200, 48.468102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816658, 40.994240, 47.726318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.135536, 40.803513, 47.874435>,  <35.326862, 40.689075, 47.963306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.135536, 40.803513, 47.874435>,  <34.816658, 40.994240, 47.726318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135536, 40.803513, 47.874435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126121, -0.468284, -0.874530,
		0.590395, 0.743877, -0.313179,
		0.797200, -0.476820, 0.370291,
		35.374695, 40.660465, 47.985523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183659, 40.868629, 47.180790>,  <34.816658, 40.994240, 47.726318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183659, 40.868629, 47.180790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.397732, 40.643337, 47.432613>,  <35.526176, 40.508160, 47.583710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.397732, 40.643337, 47.432613>,  <35.183659, 40.868629, 47.180790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397732, 40.643337, 47.432613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285778, -0.580611, -0.762379,
		0.794928, 0.587927, -0.149774,
		0.535183, -0.563234, 0.629560,
		35.558289, 40.474365, 47.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788288, 40.866222, 46.889473>,  <35.183659, 40.868629, 47.180790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788288, 40.866222, 46.889473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.745426, 40.540901, 47.118229>,  <35.719711, 40.345707, 47.255482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.745426, 40.540901, 47.118229>,  <35.788288, 40.866222, 46.889473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745426, 40.540901, 47.118229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141370, -0.581817, -0.800939,
		0.984141, -0.004975, 0.177321,
		-0.107153, -0.813305, 0.571886,
		35.713280, 40.296909, 47.289795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333195, 40.512348, 46.703747>,  <35.788288, 40.866222, 46.889473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333195, 40.512348, 46.703747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.064449, 40.257820, 46.855377>,  <35.903202, 40.105103, 46.946354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.064449, 40.257820, 46.855377>,  <36.333195, 40.512348, 46.703747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064449, 40.257820, 46.855377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079628, -0.570887, -0.817158,
		0.736382, -0.518834, 0.434227,
		-0.671863, -0.636317, 0.379077,
		35.862888, 40.066925, 46.969101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115669, 40.436264, 46.518520>,  <36.333195, 40.512348, 46.703747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115669, 40.436264, 46.518520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.329815, 40.713207, 46.325016>,  <37.458302, 40.879375, 46.208912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.329815, 40.713207, 46.325016>,  <37.115669, 40.436264, 46.518520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329815, 40.713207, 46.325016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124423, 0.501858, 0.855954,
		0.835409, -0.518435, 0.182530,
		0.535361, 0.692361, -0.483762,
		37.490425, 40.920914, 46.179886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619953, 40.638767, 46.990948>,  <37.115669, 40.436264, 46.518520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619953, 40.638767, 46.990948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.633911, 40.944973, 46.733955>,  <37.642288, 41.128696, 46.579762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.633911, 40.944973, 46.733955>,  <37.619953, 40.638767, 46.990948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633911, 40.944973, 46.733955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208843, 0.623089, 0.753753,
		0.977326, -0.160480, -0.138127,
		0.034897, 0.765510, -0.642477,
		37.644379, 41.174625, 46.541214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168869, 40.975060, 47.194149>,  <37.619953, 40.638767, 46.990948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168869, 40.975060, 47.194149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.949894, 41.230225, 46.977489>,  <37.818508, 41.383324, 46.847492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.949894, 41.230225, 46.977489>,  <38.168869, 40.975060, 47.194149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949894, 41.230225, 46.977489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189430, 0.724909, 0.662286,
		0.815124, 0.259957, -0.517682,
		-0.547439, 0.637910, -0.541647,
		37.785664, 41.421597, 46.814995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513851, 41.576073, 47.117413>,  <38.168869, 40.975060, 47.194149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513851, 41.576073, 47.117413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.153896, 41.718414, 47.016556>,  <37.937923, 41.803822, 46.956039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.153896, 41.718414, 47.016556>,  <38.513851, 41.576073, 47.117413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153896, 41.718414, 47.016556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188318, 0.838509, 0.511311,
		0.393379, 0.412636, -0.821574,
		-0.899883, 0.355856, -0.252145,
		37.883930, 41.825172, 46.940910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580505, 42.283482, 46.862926>,  <38.513851, 41.576073, 47.117413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580505, 42.283482, 46.862926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.194160, 42.275311, 46.966221>,  <37.962353, 42.270409, 47.028198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.194160, 42.275311, 46.966221>,  <38.580505, 42.283482, 46.862926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194160, 42.275311, 46.966221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128846, 0.826943, 0.547324,
		-0.224729, 0.561914, -0.796084,
		-0.965865, -0.020427, 0.258238,
		37.904400, 42.269184, 47.043694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292942, 42.988731, 46.765785>,  <38.580505, 42.283482, 46.862926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292942, 42.988731, 46.765785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.065464, 42.799973, 47.035275>,  <37.928978, 42.686718, 47.196968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.065464, 42.799973, 47.035275>,  <38.292942, 42.988731, 46.765785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065464, 42.799973, 47.035275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147860, 0.747078, 0.648083,
		-0.809152, 0.468176, -0.355083,
		-0.568692, -0.471895, 0.673724,
		37.894855, 42.658405, 47.237392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880772, 43.502102, 47.014919>,  <38.292942, 42.988731, 46.765785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880772, 43.502102, 47.014919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862545, 43.219135, 47.297047>,  <37.851608, 43.049355, 47.466324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862545, 43.219135, 47.297047>,  <37.880772, 43.502102, 47.014919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862545, 43.219135, 47.297047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215828, 0.682408, 0.698382,
		-0.975367, 0.184053, 0.121585,
		-0.045568, -0.707420, 0.705323,
		37.848873, 43.006908, 47.508644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491604, 43.830654, 47.474419>,  <37.880772, 43.502102, 47.014919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491604, 43.830654, 47.474419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.617916, 43.535069, 47.712482>,  <37.693703, 43.357716, 47.855320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.617916, 43.535069, 47.712482>,  <37.491604, 43.830654, 47.474419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617916, 43.535069, 47.712482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064044, 0.642421, 0.763671,
		-0.946668, -0.203037, 0.250191,
		0.315781, -0.738966, 0.595156,
		37.712650, 43.313377, 47.891029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088512, 43.854362, 48.066181>,  <37.491604, 43.830654, 47.474419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088512, 43.854362, 48.066181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416183, 43.666069, 48.197247>,  <37.612785, 43.553093, 48.275887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416183, 43.666069, 48.197247>,  <37.088512, 43.854362, 48.066181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416183, 43.666069, 48.197247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069739, 0.648809, 0.757749,
		-0.569284, -0.597881, 0.564318,
		0.819178, -0.470729, 0.327661,
		37.661938, 43.524849, 48.295544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.325863, 33.811935, 35.345955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722771, 33.835011, 35.302021>,  <36.960915, 33.848854, 35.275661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722771, 33.835011, 35.302021>,  <36.325863, 33.811935, 35.345955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722771, 33.835011, 35.302021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049017, 0.631025, 0.774212,
		0.113970, -0.773615, 0.623322,
		0.992275, 0.057683, -0.109838,
		37.020454, 33.852314, 35.269070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475449, 33.723862, 36.026802>,  <36.325863, 33.811935, 35.345955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475449, 33.723862, 36.026802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774796, 33.884491, 35.815636>,  <36.954403, 33.980869, 35.688938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774796, 33.884491, 35.815636>,  <36.475449, 33.723862, 36.026802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774796, 33.884491, 35.815636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049024, 0.760237, 0.647793,
		0.661472, -0.510666, 0.549249,
		0.748366, 0.401571, -0.527911,
		36.999306, 34.004963, 35.657261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012051, 33.962040, 36.443314>,  <36.475449, 33.723862, 36.026802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012051, 33.962040, 36.443314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139450, 34.180126, 36.133141>,  <37.215889, 34.310978, 35.947037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139450, 34.180126, 36.133141>,  <37.012051, 33.962040, 36.443314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139450, 34.180126, 36.133141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320920, 0.707708, 0.629412,
		0.891947, -0.449319, 0.050434,
		0.318500, 0.545217, -0.775433,
		37.235001, 34.343693, 35.900509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563625, 34.316326, 36.683628>,  <37.012051, 33.962040, 36.443314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563625, 34.316326, 36.683628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468384, 34.535889, 36.363129>,  <37.411240, 34.667625, 36.170830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468384, 34.535889, 36.363129>,  <37.563625, 34.316326, 36.683628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468384, 34.535889, 36.363129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256222, 0.831253, 0.493324,
		0.936833, -0.087835, -0.338569,
		-0.238105, 0.548911, -0.801251,
		37.396954, 34.700562, 36.122753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031113, 34.817970, 36.744110>,  <37.563625, 34.316326, 36.683628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031113, 34.817970, 36.744110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742950, 34.964928, 36.508808>,  <37.570053, 35.053101, 36.367626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742950, 34.964928, 36.508808>,  <38.031113, 34.817970, 36.744110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742950, 34.964928, 36.508808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122674, 0.902299, 0.413289,
		0.682621, 0.225571, -0.695087,
		-0.720402, 0.367389, -0.588257,
		37.526829, 35.075146, 36.332333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357479, 35.435123, 36.462364>,  <38.031113, 34.817970, 36.744110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357479, 35.435123, 36.462364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961388, 35.476379, 36.424816>,  <37.723732, 35.501133, 36.402287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961388, 35.476379, 36.424816>,  <38.357479, 35.435123, 36.462364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961388, 35.476379, 36.424816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044345, 0.871018, 0.489246,
		0.132222, 0.480302, -0.867080,
		-0.990228, 0.103140, -0.093869,
		37.664318, 35.507320, 36.396656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207157, 36.140987, 36.283699>,  <38.357479, 35.435123, 36.462364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207157, 36.140987, 36.283699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858208, 36.020020, 36.437328>,  <37.648838, 35.947441, 36.529507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858208, 36.020020, 36.437328>,  <38.207157, 36.140987, 36.283699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858208, 36.020020, 36.437328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109161, 0.886352, 0.449960,
		-0.476501, 0.350606, -0.806239,
		-0.872371, -0.302417, 0.384075,
		37.596497, 35.929295, 36.552551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820694, 36.711853, 36.337360>,  <38.207157, 36.140987, 36.283699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820694, 36.711853, 36.337360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583447, 36.471264, 36.551445>,  <37.441097, 36.326912, 36.679893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583447, 36.471264, 36.551445>,  <37.820694, 36.711853, 36.337360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583447, 36.471264, 36.551445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283745, 0.778265, 0.560172,
		-0.753461, 0.180383, -0.632264,
		-0.593115, -0.601470, 0.535209,
		37.405514, 36.290825, 36.712009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263561, 37.203350, 36.515785>,  <37.820694, 36.711853, 36.337360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263561, 37.203350, 36.515785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272556, 36.890511, 36.764885>,  <37.277954, 36.702808, 36.914345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272556, 36.890511, 36.764885>,  <37.263561, 37.203350, 36.515785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272556, 36.890511, 36.764885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142473, 0.614041, 0.776309,
		-0.989543, -0.106182, -0.097620,
		0.022487, -0.782099, 0.622748,
		37.279301, 36.655880, 36.951710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818790, 37.390522, 36.921680>,  <37.263561, 37.203350, 36.515785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818790, 37.390522, 36.921680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021721, 37.112926, 37.126038>,  <37.143478, 36.946369, 37.248650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021721, 37.112926, 37.126038>,  <36.818790, 37.390522, 36.921680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021721, 37.112926, 37.126038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009998, 0.597546, 0.801772,
		-0.861698, -0.401649, 0.310087,
		0.507322, -0.693986, 0.510889,
		37.173916, 36.904732, 37.279305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538887, 37.378983, 37.575447>,  <36.818790, 37.390522, 36.921680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538887, 37.378983, 37.575447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911575, 37.237091, 37.606583>,  <37.135189, 37.151955, 37.625263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911575, 37.237091, 37.606583>,  <36.538887, 37.378983, 37.575447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911575, 37.237091, 37.606583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130145, 0.526220, 0.840330,
		-0.339049, -0.772825, 0.536458,
		0.931723, -0.354730, 0.077835,
		37.191093, 37.130672, 37.629932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581726, 37.296169, 38.295902>,  <36.538887, 37.378983, 37.575447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581726, 37.296169, 38.295902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969238, 37.284321, 38.197453>,  <37.201748, 37.277214, 38.138382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969238, 37.284321, 38.197453>,  <36.581726, 37.296169, 38.295902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969238, 37.284321, 38.197453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204131, 0.658663, 0.724219,
		0.140665, -0.751855, 0.644149,
		0.968785, -0.029618, -0.246127,
		37.259872, 37.275436, 38.123615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141106, 36.646236, 38.514542>,  <36.581726, 37.296169, 38.295902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141106, 36.646236, 38.514542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802624, 36.608555, 38.724331>,  <35.599537, 36.585945, 38.850204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802624, 36.608555, 38.724331>,  <36.141106, 36.646236, 38.514542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802624, 36.608555, 38.724331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395460, -0.548663, -0.736600,
		0.357146, -0.830719, 0.427027,
		-0.846202, -0.094202, 0.524470,
		35.548763, 36.580296, 38.881672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908306, 35.892574, 38.495140>,  <36.141106, 36.646236, 38.514542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908306, 35.892574, 38.495140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596806, 36.137321, 38.550514>,  <35.409904, 36.284168, 38.583736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596806, 36.137321, 38.550514>,  <35.908306, 35.892574, 38.495140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596806, 36.137321, 38.550514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481613, -0.441721, -0.756922,
		-0.401981, -0.656131, 0.638673,
		-0.778756, 0.611862, 0.138437,
		35.363178, 36.320881, 38.592045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394440, 35.494740, 38.331932>,  <35.908306, 35.892574, 38.495140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394440, 35.494740, 38.331932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206284, 35.847542, 38.320591>,  <35.093391, 36.059223, 38.313786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206284, 35.847542, 38.320591>,  <35.394440, 35.494740, 38.331932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206284, 35.847542, 38.320591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695688, -0.390409, -0.602991,
		-0.542909, -0.263917, 0.797244,
		-0.470391, 0.882003, -0.028353,
		35.065166, 36.112144, 38.312084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642601, 35.429897, 38.505665>,  <35.394440, 35.494740, 38.331932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642601, 35.429897, 38.505665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669811, 35.765976, 38.290466>,  <34.686138, 35.967625, 38.161346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669811, 35.765976, 38.290466>,  <34.642601, 35.429897, 38.505665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669811, 35.765976, 38.290466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750205, -0.312406, -0.582748,
		-0.657697, 0.443246, 0.609071,
		0.068023, 0.840200, -0.537994,
		34.690220, 36.018036, 38.129066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953350, 35.790367, 38.423019>,  <34.642601, 35.429897, 38.505665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953350, 35.790367, 38.423019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152191, 35.942402, 38.111015>,  <34.271496, 36.033623, 37.923813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152191, 35.942402, 38.111015>,  <33.953350, 35.790367, 38.423019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152191, 35.942402, 38.111015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762243, -0.238224, -0.601860,
		-0.414576, 0.893747, 0.171295,
		0.497104, 0.380085, -0.780014,
		34.301323, 36.056427, 37.877010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454723, 36.059986, 38.037094>,  <33.953350, 35.790367, 38.423019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454723, 36.059986, 38.037094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750820, 36.049797, 37.768353>,  <33.928478, 36.043682, 37.607109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750820, 36.049797, 37.768353>,  <33.454723, 36.059986, 38.037094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750820, 36.049797, 37.768353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639904, -0.333315, -0.692405,
		-0.206299, 0.942472, -0.263037,
		0.740246, -0.025477, -0.671854,
		33.972893, 36.042152, 37.566795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259052, 36.547829, 37.503967>,  <33.454723, 36.059986, 38.037094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259052, 36.547829, 37.503967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506134, 36.270756, 37.355038>,  <33.654385, 36.104511, 37.265678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506134, 36.270756, 37.355038>,  <33.259052, 36.547829, 37.503967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506134, 36.270756, 37.355038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685296, -0.241890, -0.686920,
		0.385756, 0.679469, -0.624110,
		0.617707, -0.692684, -0.372327,
		33.691444, 36.062950, 37.243340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939365, 36.459381, 36.879608>,  <33.259052, 36.547829, 37.503967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939365, 36.459381, 36.879608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200287, 36.156265, 36.886089>,  <33.356838, 35.974396, 36.889977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200287, 36.156265, 36.886089>,  <32.939365, 36.459381, 36.879608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200287, 36.156265, 36.886089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639933, -0.562056, -0.524002,
		0.406186, 0.331442, -0.851563,
		0.652303, -0.757786, 0.016198,
		33.395977, 35.928928, 36.890949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809525, 36.076096, 36.218826>,  <32.939365, 36.459381, 36.879608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809525, 36.076096, 36.218826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986126, 35.830112, 36.480179>,  <33.092087, 35.682522, 36.636990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986126, 35.830112, 36.480179>,  <32.809525, 36.076096, 36.218826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986126, 35.830112, 36.480179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591661, -0.746977, -0.303253,
		0.674546, -0.252691, -0.693639,
		0.441503, -0.614957, 0.653378,
		33.118576, 35.645626, 36.676193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890141, 35.477398, 35.908531>,  <32.809525, 36.076096, 36.218826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890141, 35.477398, 35.908531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927780, 35.363857, 36.290226>,  <32.950363, 35.295731, 36.519245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927780, 35.363857, 36.290226>,  <32.890141, 35.477398, 35.908531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927780, 35.363857, 36.290226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486764, -0.849230, -0.204620,
		0.868451, -0.445236, -0.218078,
		0.094094, -0.283855, 0.954239,
		32.956009, 35.278702, 36.576496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195473, 34.857346, 35.856953>,  <32.890141, 35.477398, 35.908531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195473, 34.857346, 35.856953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042183, 34.879681, 36.225739>,  <32.950211, 34.893082, 36.447010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042183, 34.879681, 36.225739>,  <33.195473, 34.857346, 35.856953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042183, 34.879681, 36.225739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524176, -0.835014, -0.167307,
		0.760514, -0.547388, 0.349263,
		-0.383222, 0.055836, 0.921968,
		32.927216, 34.896431, 36.502327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358974, 34.193157, 36.196072>,  <33.195473, 34.857346, 35.856953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358974, 34.193157, 36.196072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040810, 34.349228, 36.381580>,  <32.849911, 34.442871, 36.492886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040810, 34.349228, 36.381580>,  <33.358974, 34.193157, 36.196072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040810, 34.349228, 36.381580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464285, -0.884131, -0.052462,
		0.389562, -0.257049, 0.884402,
		-0.795413, 0.390177, 0.463768,
		32.802185, 34.466282, 36.520710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056259, 33.667358, 36.525360>,  <33.358974, 34.193157, 36.196072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056259, 33.667358, 36.525360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760323, 33.934464, 36.492554>,  <32.582760, 34.094727, 36.472870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760323, 33.934464, 36.492554>,  <33.056259, 33.667358, 36.525360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760323, 33.934464, 36.492554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654812, -0.742696, -0.140088,
		-0.154456, -0.049939, 0.986737,
		-0.739841, 0.667764, -0.082013,
		32.538372, 34.134792, 36.467949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565742, 33.517162, 37.071182>,  <33.056259, 33.667358, 36.525360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565742, 33.517162, 37.071182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381718, 33.716488, 36.777237>,  <32.271301, 33.836082, 36.600868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381718, 33.716488, 36.777237>,  <32.565742, 33.517162, 37.071182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381718, 33.716488, 36.777237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699631, -0.713053, -0.045519,
		-0.546680, 0.493192, 0.676685,
		-0.460062, 0.498314, -0.734864,
		32.243698, 33.865982, 36.556778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204647, 32.827068, 37.208237>,  <32.565742, 33.517162, 37.071182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204647, 32.827068, 37.208237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977587, 32.606110, 37.452408>,  <31.841351, 32.473534, 37.598911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977587, 32.606110, 37.452408>,  <32.204647, 32.827068, 37.208237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977587, 32.606110, 37.452408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740304, -0.018118, 0.672028,
		-0.360167, 0.833384, 0.419227,
		-0.567653, -0.552397, 0.610432,
		31.807291, 32.440392, 37.635536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178932, 33.171722, 37.837646>,  <32.204647, 32.827068, 37.208237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178932, 33.171722, 37.837646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136852, 32.776089, 37.878899>,  <32.111603, 32.538708, 37.903648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136852, 32.776089, 37.878899>,  <32.178932, 33.171722, 37.837646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136852, 32.776089, 37.878899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552502, 0.028094, 0.833038,
		-0.826846, 0.144617, 0.543518,
		-0.105202, -0.989089, 0.103131,
		32.105293, 32.479362, 37.909840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864878, 32.973919, 38.573044>,  <32.178932, 33.171722, 37.837646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864878, 32.973919, 38.573044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117519, 32.739094, 38.370487>,  <32.269104, 32.598198, 38.248951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117519, 32.739094, 38.370487>,  <31.864878, 32.973919, 38.573044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117519, 32.739094, 38.370487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736884, 0.251534, 0.627481,
		-0.240993, -0.769474, 0.591466,
		0.631604, -0.587060, -0.506396,
		32.306999, 32.562977, 38.218567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027905, 32.479435, 38.958504>,  <31.864878, 32.973919, 38.573044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027905, 32.479435, 38.958504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303570, 32.594162, 38.692333>,  <32.468967, 32.662998, 38.532631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303570, 32.594162, 38.692333>,  <32.027905, 32.479435, 38.958504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303570, 32.594162, 38.692333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479175, 0.508472, 0.715436,
		0.543549, -0.811906, 0.212984,
		0.689163, 0.286818, -0.665425,
		32.510319, 32.680206, 38.492706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712952, 32.143620, 39.170357>,  <32.027905, 32.479435, 38.958504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712952, 32.143620, 39.170357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779671, 32.472103, 38.952072>,  <32.819702, 32.669193, 38.821102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779671, 32.472103, 38.952072>,  <32.712952, 32.143620, 39.170357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779671, 32.472103, 38.952072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268233, 0.494801, 0.826573,
		0.948805, -0.284246, -0.137744,
		0.166794, 0.821204, -0.545714,
		32.829708, 32.718464, 38.788357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436142, 32.374931, 39.223991>,  <32.712952, 32.143620, 39.170357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436142, 32.374931, 39.223991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245838, 32.709328, 39.114616>,  <33.131657, 32.909966, 39.048992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245838, 32.709328, 39.114616>,  <33.436142, 32.374931, 39.223991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245838, 32.709328, 39.114616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326877, 0.456654, 0.827417,
		0.816581, 0.304272, -0.490524,
		-0.475759, 0.835994, -0.273436,
		33.103111, 32.960125, 39.032585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880180, 32.906223, 39.363106>,  <33.436142, 32.374931, 39.223991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880180, 32.906223, 39.363106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554180, 33.134239, 39.321487>,  <33.358578, 33.271049, 39.296516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554180, 33.134239, 39.321487>,  <33.880180, 32.906223, 39.363106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554180, 33.134239, 39.321487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343081, 0.619403, 0.706141,
		0.466973, 0.539812, -0.700385,
		-0.815004, 0.570037, -0.104045,
		33.309677, 33.305252, 39.290276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096413, 33.575439, 39.313183>,  <33.880180, 32.906223, 39.363106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096413, 33.575439, 39.313183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726452, 33.612392, 39.460705>,  <33.504475, 33.634563, 39.549217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726452, 33.612392, 39.460705>,  <34.096413, 33.575439, 39.313183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726452, 33.612392, 39.460705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353649, 0.565155, 0.745341,
		-0.139578, 0.819797, -0.555384,
		-0.924906, 0.092378, 0.368803,
		33.448978, 33.640106, 39.571346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027153, 34.303829, 39.508530>,  <34.096413, 33.575439, 39.313183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027153, 34.303829, 39.508530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751495, 34.110119, 39.724144>,  <33.586102, 33.993893, 39.853512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751495, 34.110119, 39.724144>,  <34.027153, 34.303829, 39.508530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751495, 34.110119, 39.724144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085058, 0.684679, 0.723864,
		-0.719617, 0.544694, -0.430650,
		-0.689142, -0.484275, 0.539037,
		33.544754, 33.964836, 39.885857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614750, 34.880917, 39.769245>,  <34.027153, 34.303829, 39.508530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614750, 34.880917, 39.769245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536938, 34.562298, 39.998215>,  <33.490250, 34.371128, 40.135597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536938, 34.562298, 39.998215>,  <33.614750, 34.880917, 39.769245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536938, 34.562298, 39.998215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148322, 0.552975, 0.819890,
		-0.969618, 0.244395, 0.010576,
		-0.194529, -0.796548, 0.572424,
		33.478580, 34.323334, 40.169941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241611, 35.209805, 40.322784>,  <33.614750, 34.880917, 39.769245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241611, 35.209805, 40.322784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347729, 34.838337, 40.426468>,  <33.411400, 34.615456, 40.488678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347729, 34.838337, 40.426468>,  <33.241611, 35.209805, 40.322784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347729, 34.838337, 40.426468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143722, 0.303933, 0.941790,
		-0.953396, -0.212597, 0.214102,
		0.265295, -0.928670, 0.259213,
		33.427319, 34.559734, 40.504230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895252, 35.137177, 40.895882>,  <33.241611, 35.209805, 40.322784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895252, 35.137177, 40.895882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177483, 34.854694, 40.919308>,  <33.346821, 34.685204, 40.933365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177483, 34.854694, 40.919308>,  <32.895252, 35.137177, 40.895882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177483, 34.854694, 40.919308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036582, 0.118838, 0.992239,
		-0.707687, -0.697960, 0.109684,
		0.705578, -0.706208, 0.058568,
		33.389156, 34.642834, 40.936878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754780, 34.596748, 41.416172>,  <32.895252, 35.137177, 40.895882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754780, 34.596748, 41.416172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150959, 34.551769, 41.384235>,  <33.388664, 34.524780, 41.365074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150959, 34.551769, 41.384235>,  <32.754780, 34.596748, 41.416172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150959, 34.551769, 41.384235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100590, 0.193030, 0.976023,
		-0.094343, -0.974728, 0.202497,
		0.990445, -0.112450, -0.079837,
		33.448093, 34.518036, 41.360283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928417, 34.251560, 42.004974>,  <32.754780, 34.596748, 41.416172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928417, 34.251560, 42.004974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283817, 34.383327, 41.877193>,  <33.497059, 34.462387, 41.800526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283817, 34.383327, 41.877193>,  <32.928417, 34.251560, 42.004974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283817, 34.383327, 41.877193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259522, 0.213398, 0.941865,
		0.378438, -0.919753, 0.104113,
		0.888501, 0.329418, -0.319454,
		33.550369, 34.482151, 41.781357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350536, 34.020176, 42.569813>,  <32.928417, 34.251560, 42.004974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350536, 34.020176, 42.569813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566315, 34.302773, 42.386566>,  <33.695782, 34.472328, 42.276619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566315, 34.302773, 42.386566>,  <33.350536, 34.020176, 42.569813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566315, 34.302773, 42.386566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368616, 0.291022, 0.882852,
		0.757049, -0.645119, -0.103434,
		0.539443, 0.706490, -0.458119,
		33.728149, 34.514721, 42.249130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024136, 33.912670, 42.839542>,  <33.350536, 34.020176, 42.569813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024136, 33.912670, 42.839542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968174, 34.285999, 42.707279>,  <33.934597, 34.509998, 42.627922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968174, 34.285999, 42.707279>,  <34.024136, 33.912670, 42.839542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968174, 34.285999, 42.707279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331762, 0.358823, 0.872456,
		0.932931, 0.012362, -0.359842,
		-0.139905, 0.933324, -0.330656,
		33.926201, 34.565998, 42.608082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446774, 34.198677, 43.135937>,  <34.024136, 33.912670, 42.839542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446774, 34.198677, 43.135937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264404, 34.533566, 43.015141>,  <34.154984, 34.734497, 42.942665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264404, 34.533566, 43.015141>,  <34.446774, 34.198677, 43.135937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264404, 34.533566, 43.015141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389016, 0.492633, 0.778447,
		0.800501, 0.237433, -0.550295,
		-0.455923, 0.837220, -0.301988,
		34.127628, 34.784733, 42.924545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950802, 34.706673, 43.072105>,  <34.446774, 34.198677, 43.135937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950802, 34.706673, 43.072105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585518, 34.860523, 43.125923>,  <34.366348, 34.952835, 43.158215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585518, 34.860523, 43.125923>,  <34.950802, 34.706673, 43.072105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585518, 34.860523, 43.125923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363896, 0.621218, 0.694023,
		0.183363, 0.682750, -0.707270,
		-0.913213, 0.384630, 0.134541,
		34.311554, 34.975914, 43.166286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035492, 35.385292, 43.257771>,  <34.950802, 34.706673, 43.072105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035492, 35.385292, 43.257771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678505, 35.292728, 43.412666>,  <34.464314, 35.237190, 43.505604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678505, 35.292728, 43.412666>,  <35.035492, 35.385292, 43.257771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678505, 35.292728, 43.412666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176401, 0.611031, 0.771702,
		-0.415195, 0.757027, -0.504503,
		-0.892466, -0.231412, 0.387237,
		34.410767, 35.223305, 43.528839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884937, 36.010956, 43.546116>,  <35.035492, 35.385292, 43.257771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884937, 36.010956, 43.546116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589680, 35.779247, 43.684441>,  <34.412525, 35.640221, 43.767437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589680, 35.779247, 43.684441>,  <34.884937, 36.010956, 43.546116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589680, 35.779247, 43.684441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136023, 0.374270, 0.917289,
		-0.660787, 0.724131, -0.197471,
		-0.738145, -0.579272, 0.345811,
		34.368237, 35.605465, 43.788185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407364, 36.435810, 43.903030>,  <34.884937, 36.010956, 43.546116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407364, 36.435810, 43.903030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339722, 36.071609, 44.053970>,  <34.299137, 35.853088, 44.144535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339722, 36.071609, 44.053970>,  <34.407364, 36.435810, 43.903030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339722, 36.071609, 44.053970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019878, 0.385935, 0.922312,
		-0.985397, 0.148468, -0.083363,
		-0.169107, -0.910501, 0.377348,
		34.288990, 35.798458, 44.167175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893116, 36.433571, 44.396278>,  <34.407364, 36.435810, 43.903030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893116, 36.433571, 44.396278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064388, 36.089176, 44.506084>,  <34.167152, 35.882538, 44.571968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064388, 36.089176, 44.506084>,  <33.893116, 36.433571, 44.396278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064388, 36.089176, 44.506084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071633, 0.270480, 0.960057,
		-0.900848, -0.430745, 0.054140,
		0.428184, -0.860987, 0.274517,
		34.192844, 35.830879, 44.588440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474827, 36.176838, 45.065071>,  <33.893116, 36.433571, 44.396278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474827, 36.176838, 45.065071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817173, 35.970009, 45.069736>,  <34.022579, 35.845909, 45.072536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817173, 35.970009, 45.069736>,  <33.474827, 36.176838, 45.065071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817173, 35.970009, 45.069736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095559, 0.180248, 0.978969,
		-0.508302, -0.836746, 0.203678,
		0.855861, -0.517075, 0.011661,
		34.073933, 35.814888, 45.073235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417645, 35.544617, 45.588245>,  <33.474827, 36.176838, 45.065071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417645, 35.544617, 45.588245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804756, 35.641499, 45.560699>,  <34.037022, 35.699627, 45.544170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804756, 35.641499, 45.560699>,  <33.417645, 35.544617, 45.588245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804756, 35.641499, 45.560699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007455, 0.245796, 0.969293,
		0.251748, -0.938560, 0.236067,
		0.967764, 0.242258, -0.068876,
		34.095089, 35.714161, 45.540039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743549, 35.253242, 46.185749>,  <33.417645, 35.544617, 45.588245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743549, 35.253242, 46.185749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005417, 35.531925, 46.068436>,  <34.162537, 35.699135, 45.998047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005417, 35.531925, 46.068436>,  <33.743549, 35.253242, 46.185749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005417, 35.531925, 46.068436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147732, 0.262577, 0.953535,
		0.741341, -0.667575, 0.068975,
		0.654667, 0.696705, -0.293282,
		34.201817, 35.740936, 45.980450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278183, 35.203480, 46.544796>,  <33.743549, 35.253242, 46.185749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278183, 35.203480, 46.544796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321095, 35.579159, 46.414326>,  <34.346840, 35.804565, 46.336044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321095, 35.579159, 46.414326>,  <34.278183, 35.203480, 46.544796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321095, 35.579159, 46.414326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101592, 0.315999, 0.943305,
		0.989025, -0.134333, -0.061515,
		0.107278, 0.939201, -0.326178,
		34.353279, 35.860920, 46.316471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828686, 35.410229, 46.900326>,  <34.278183, 35.203480, 46.544796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828686, 35.410229, 46.900326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698021, 35.756805, 46.749287>,  <34.619621, 35.964752, 46.658665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698021, 35.756805, 46.749287>,  <34.828686, 35.410229, 46.900326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698021, 35.756805, 46.749287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207230, 0.455448, 0.865808,
		0.922144, 0.204574, -0.328328,
		-0.326658, 0.866439, -0.377595,
		34.600025, 36.016739, 46.636009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375740, 35.933525, 46.923771>,  <34.828686, 35.410229, 46.900326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375740, 35.933525, 46.923771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019451, 36.115341, 46.924587>,  <34.805676, 36.224430, 46.925076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019451, 36.115341, 46.924587>,  <35.375740, 35.933525, 46.923771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019451, 36.115341, 46.924587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240436, 0.467345, 0.850752,
		0.385744, 0.758278, -0.525563,
		-0.890726, 0.454537, 0.002042,
		34.752232, 36.251701, 46.925201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027962, 36.141674, 46.520393>,  <35.375740, 35.933525, 46.923771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027962, 36.141674, 46.520393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380634, 35.953579, 46.504784>,  <36.592236, 35.840721, 46.495419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380634, 35.953579, 46.504784>,  <36.027962, 36.141674, 46.520393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380634, 35.953579, 46.504784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366345, -0.630063, -0.684699,
		0.297381, 0.617981, -0.727780,
		0.881678, -0.470235, -0.039025,
		36.645138, 35.812508, 46.493076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221855, 36.134327, 45.837006>,  <36.027962, 36.141674, 46.520393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221855, 36.134327, 45.837006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412827, 35.839378, 46.028145>,  <36.527409, 35.662407, 46.142830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412827, 35.839378, 46.028145>,  <36.221855, 36.134327, 45.837006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412827, 35.839378, 46.028145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164824, -0.609335, -0.775593,
		0.863071, 0.291532, -0.412453,
		0.477433, -0.737373, 0.477848,
		36.556057, 35.618168, 46.171497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763050, 35.977459, 45.326660>,  <36.221855, 36.134327, 45.837006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763050, 35.977459, 45.326660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723541, 35.664650, 45.572811>,  <36.699837, 35.476963, 45.720501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723541, 35.664650, 45.572811>,  <36.763050, 35.977459, 45.326660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723541, 35.664650, 45.572811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105275, -0.623139, -0.774994,
		0.989526, -0.011764, 0.143876,
		-0.098772, -0.782023, 0.615374,
		36.693909, 35.430042, 45.757423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353725, 35.550175, 45.231133>,  <36.763050, 35.977459, 45.326660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353725, 35.550175, 45.231133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069775, 35.312790, 45.382854>,  <36.899403, 35.170357, 45.473888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069775, 35.312790, 45.382854>,  <37.353725, 35.550175, 45.231133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069775, 35.312790, 45.382854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130617, -0.640122, -0.757088,
		0.692108, -0.487895, 0.531925,
		-0.709877, -0.593466, 0.379306,
		36.856812, 35.134750, 45.496647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691257, 34.882484, 45.220638>,  <37.353725, 35.550175, 45.231133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691257, 34.882484, 45.220638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304180, 34.790405, 45.261772>,  <37.071934, 34.735157, 45.286453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304180, 34.790405, 45.261772>,  <37.691257, 34.882484, 45.220638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304180, 34.790405, 45.261772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112514, -0.759303, -0.640936,
		0.225623, -0.608661, 0.760675,
		-0.967696, -0.230196, 0.102833,
		37.013870, 34.721348, 45.292622>
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
