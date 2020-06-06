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
	<24.688286, 35.405964, 34.887478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322027, 35.279961, 34.987370>,  <24.102272, 35.204361, 35.047302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322027, 35.279961, 34.987370>,  <24.688286, 35.405964, 34.887478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.322027, 35.279961, 34.987370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398755, 0.790342, -0.465139,
		-0.050848, -0.525482, -0.849284,
		-0.915647, -0.315005, 0.249726,
		24.047333, 35.185459, 35.062286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385132, 35.228859, 34.496910>,  <24.688286, 35.405964, 34.887478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385132, 35.228859, 34.496910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623655, 35.147831, 34.186199>,  <25.766769, 35.099213, 33.999771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623655, 35.147831, 34.186199>,  <25.385132, 35.228859, 34.496910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623655, 35.147831, 34.186199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779247, 0.378536, 0.499485,
		0.192856, -0.903147, 0.383579,
		0.596307, -0.202574, -0.776777,
		25.802547, 35.087059, 33.953167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028994, 34.798935, 34.627300>,  <25.385132, 35.228859, 34.496910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028994, 34.798935, 34.627300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084198, 35.059551, 34.328918>,  <26.117321, 35.215919, 34.149891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084198, 35.059551, 34.328918>,  <26.028994, 34.798935, 34.627300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084198, 35.059551, 34.328918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596528, 0.546550, 0.587740,
		0.790637, -0.526097, -0.313232,
		0.138012, 0.651541, -0.745954,
		26.125601, 35.255013, 34.105133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746565, 34.975513, 34.591099>,  <26.028994, 34.798935, 34.627300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746565, 34.975513, 34.591099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535313, 35.266426, 34.415764>,  <26.408562, 35.440975, 34.310562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535313, 35.266426, 34.415764>,  <26.746565, 34.975513, 34.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535313, 35.266426, 34.415764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562281, 0.686334, 0.461288,
		0.636333, -0.002850, -0.771409,
		-0.528129, 0.727281, -0.438339,
		26.376873, 35.484612, 34.284264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133636, 35.423145, 34.127041>,  <26.746565, 34.975513, 34.591099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133636, 35.423145, 34.127041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846724, 35.615505, 34.328732>,  <26.674576, 35.730919, 34.449745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846724, 35.615505, 34.328732>,  <27.133636, 35.423145, 34.127041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846724, 35.615505, 34.328732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696772, 0.491082, 0.522826,
		0.003808, 0.726345, -0.687320,
		-0.717283, 0.480896, 0.504226,
		26.631538, 35.759773, 34.480000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327080, 36.167088, 34.199345>,  <27.133636, 35.423145, 34.127041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327080, 36.167088, 34.199345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081623, 36.079018, 34.502651>,  <26.934349, 36.026176, 34.684635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081623, 36.079018, 34.502651>,  <27.327080, 36.167088, 34.199345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081623, 36.079018, 34.502651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569032, 0.542458, 0.618015,
		-0.547399, 0.810717, -0.207588,
		-0.613643, -0.220176, 0.758264,
		26.897530, 36.012966, 34.730129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165108, 36.841656, 34.638714>,  <27.327080, 36.167088, 34.199345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165108, 36.841656, 34.638714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108549, 36.513916, 34.860947>,  <27.074614, 36.317272, 34.994286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108549, 36.513916, 34.860947>,  <27.165108, 36.841656, 34.638714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108549, 36.513916, 34.860947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504269, 0.423340, 0.752659,
		-0.851892, 0.386587, 0.353313,
		-0.141397, -0.819349, 0.555584,
		27.066130, 36.268112, 35.027622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660139, 37.212242, 35.179291>,  <27.165108, 36.841656, 34.638714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660139, 37.212242, 35.179291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020536, 37.265450, 35.344467>,  <28.236774, 37.297375, 35.443573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020536, 37.265450, 35.344467>,  <27.660139, 37.212242, 35.179291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020536, 37.265450, 35.344467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110007, 0.990775, -0.079140,
		-0.419655, 0.025879, 0.907315,
		0.900993, 0.133023, 0.412937,
		28.290834, 37.305355, 35.468349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557938, 37.776951, 35.640202>,  <27.660139, 37.212242, 35.179291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557938, 37.776951, 35.640202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940262, 37.742020, 35.527920>,  <28.169657, 37.721062, 35.460552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940262, 37.742020, 35.527920>,  <27.557938, 37.776951, 35.640202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940262, 37.742020, 35.527920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034784, 0.981746, -0.186992,
		0.291912, 0.168965, 0.941402,
		0.955812, -0.087331, -0.280706,
		28.227005, 37.715820, 35.443707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922092, 38.409237, 35.862030>,  <27.557938, 37.776951, 35.640202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922092, 38.409237, 35.862030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125460, 38.270840, 35.546612>,  <28.247480, 38.187801, 35.357361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125460, 38.270840, 35.546612>,  <27.922092, 38.409237, 35.862030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125460, 38.270840, 35.546612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038197, 0.905767, -0.422051,
		0.860262, 0.244699, 0.447294,
		0.508419, -0.345989, -0.788544,
		28.277985, 38.167042, 35.310047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339397, 38.979229, 35.758648>,  <27.922092, 38.409237, 35.862030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339397, 38.979229, 35.758648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368160, 38.752941, 35.430065>,  <28.385418, 38.617168, 35.232918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368160, 38.752941, 35.430065>,  <28.339397, 38.979229, 35.758648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368160, 38.752941, 35.430065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095926, 0.823690, -0.558868,
		0.992788, -0.038612, 0.113497,
		0.071907, -0.565724, -0.821453,
		28.389732, 38.583225, 35.183628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863255, 39.301620, 35.475697>,  <28.339397, 38.979229, 35.758648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863255, 39.301620, 35.475697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706442, 39.070354, 35.189472>,  <28.612354, 38.931595, 35.017738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706442, 39.070354, 35.189472>,  <28.863255, 39.301620, 35.475697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706442, 39.070354, 35.189472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040271, 0.766296, -0.641224,
		0.919069, -0.280198, -0.277130,
		-0.392033, -0.578169, -0.715563,
		28.588833, 38.896904, 34.974804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268412, 39.434910, 34.916004>,  <28.863255, 39.301620, 35.475697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268412, 39.434910, 34.916004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958796, 39.267544, 34.725933>,  <28.773026, 39.167126, 34.611893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958796, 39.267544, 34.725933>,  <29.268412, 39.434910, 34.916004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958796, 39.267544, 34.725933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064834, 0.798945, -0.597899,
		0.629810, -0.431990, -0.645542,
		-0.774039, -0.418416, -0.475176,
		28.726583, 39.142017, 34.583382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367184, 39.487274, 34.205723>,  <29.268412, 39.434910, 34.916004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367184, 39.487274, 34.205723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971134, 39.454201, 34.251007>,  <28.733503, 39.434357, 34.278175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971134, 39.454201, 34.251007>,  <29.367184, 39.487274, 34.205723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971134, 39.454201, 34.251007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133161, 0.807212, -0.575044,
		-0.043834, -0.584440, -0.810252,
		-0.990125, -0.082688, 0.113208,
		28.674097, 39.429394, 34.284969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033953, 39.578846, 33.575634>,  <29.367184, 39.487274, 34.205723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033953, 39.578846, 33.575634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757114, 39.675880, 33.847561>,  <28.591011, 39.734100, 34.010719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757114, 39.675880, 33.847561>,  <29.033953, 39.578846, 33.575634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757114, 39.675880, 33.847561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314767, 0.746126, -0.586701,
		-0.649557, -0.620038, -0.440032,
		-0.692096, 0.242589, 0.679819,
		28.549486, 39.748657, 34.051506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555231, 39.828545, 33.125183>,  <29.033953, 39.578846, 33.575634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555231, 39.828545, 33.125183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428225, 39.958740, 33.481438>,  <28.352020, 40.036858, 33.695190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428225, 39.958740, 33.481438>,  <28.555231, 39.828545, 33.125183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428225, 39.958740, 33.481438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264315, 0.871640, -0.412773,
		-0.910670, -0.366472, -0.190730,
		-0.317517, 0.325488, 0.890641,
		28.332970, 40.056385, 33.748631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963516, 40.025951, 33.086815>,  <28.555231, 39.828545, 33.125183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963516, 40.025951, 33.086815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042242, 40.239513, 33.415741>,  <28.089478, 40.367649, 33.613098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042242, 40.239513, 33.415741>,  <27.963516, 40.025951, 33.086815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042242, 40.239513, 33.415741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492622, 0.779017, -0.387887,
		-0.847696, -0.328752, 0.416334,
		0.196812, 0.533905, 0.822320,
		28.101286, 40.399685, 33.662437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317333, 40.445274, 33.315842>,  <27.963516, 40.025951, 33.086815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317333, 40.445274, 33.315842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653667, 40.610855, 33.455349>,  <27.855469, 40.710201, 33.539055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653667, 40.610855, 33.455349>,  <27.317333, 40.445274, 33.315842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653667, 40.610855, 33.455349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241086, 0.863293, -0.443400,
		-0.484634, 0.288743, 0.825686,
		0.840837, 0.413948, 0.348769,
		27.905918, 40.735039, 33.559978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182714, 41.177776, 33.399479>,  <27.317333, 40.445274, 33.315842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182714, 41.177776, 33.399479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575203, 41.209389, 33.469864>,  <27.810696, 41.228355, 33.512096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575203, 41.209389, 33.469864>,  <27.182714, 41.177776, 33.399479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575203, 41.209389, 33.469864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022520, 0.859059, -0.511381,
		-0.191578, 0.505739, 0.841145,
		0.981219, 0.079027, 0.175966,
		27.869568, 41.233097, 33.522655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265234, 41.818848, 33.586643>,  <27.182714, 41.177776, 33.399479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265234, 41.818848, 33.586643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618113, 41.687916, 33.451241>,  <27.829840, 41.609356, 33.369999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618113, 41.687916, 33.451241>,  <27.265234, 41.818848, 33.586643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618113, 41.687916, 33.451241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064115, 0.795678, -0.602316,
		0.466496, 0.509658, 0.722931,
		0.882196, -0.327330, -0.338504,
		27.882771, 41.589718, 33.349689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684740, 42.383896, 33.458378>,  <27.265234, 41.818848, 33.586643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684740, 42.383896, 33.458378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871965, 42.112637, 33.231739>,  <27.984301, 41.949883, 33.095757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871965, 42.112637, 33.231739>,  <27.684740, 42.383896, 33.458378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871965, 42.112637, 33.231739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010043, 0.645208, -0.763941,
		0.883639, 0.351882, 0.308808,
		0.468062, -0.678149, -0.566597,
		28.012384, 41.909191, 33.061760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220932, 42.695621, 33.263691>,  <27.684740, 42.383896, 33.458378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220932, 42.695621, 33.263691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186556, 42.401070, 32.995255>,  <28.165930, 42.224339, 32.834194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186556, 42.401070, 32.995255>,  <28.220932, 42.695621, 33.263691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186556, 42.401070, 32.995255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116612, 0.661515, -0.740811,
		0.989452, -0.141923, 0.029020,
		-0.085941, -0.736381, -0.671087,
		28.160774, 42.180157, 32.793930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912502, 42.529598, 32.844387>,  <28.220932, 42.695621, 33.263691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912502, 42.529598, 32.844387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587805, 42.432613, 32.631866>,  <28.392986, 42.374420, 32.504353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587805, 42.432613, 32.631866>,  <28.912502, 42.529598, 32.844387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587805, 42.432613, 32.631866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197728, 0.741912, -0.640679,
		0.549521, -0.625121, -0.554301,
		-0.811745, -0.242466, -0.531301,
		28.344282, 42.359875, 32.472477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077444, 42.812092, 32.177856>,  <28.912502, 42.529598, 32.844387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077444, 42.812092, 32.177856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688730, 42.742779, 32.113850>,  <28.455502, 42.701191, 32.075443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688730, 42.742779, 32.113850>,  <29.077444, 42.812092, 32.177856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688730, 42.742779, 32.113850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052332, 0.819916, -0.570087,
		0.229991, -0.545628, -0.805850,
		-0.971785, -0.173287, -0.160019,
		28.397194, 42.690792, 32.065845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902308, 42.866272, 31.516506>,  <29.077444, 42.812092, 32.177856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902308, 42.866272, 31.516506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570559, 42.957951, 31.720314>,  <28.371510, 43.012959, 31.842598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570559, 42.957951, 31.720314>,  <28.902308, 42.866272, 31.516506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570559, 42.957951, 31.720314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018703, 0.900079, -0.435325,
		-0.558382, -0.370576, -0.742215,
		-0.829373, 0.229196, 0.509519,
		28.321747, 43.026711, 31.873169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329401, 43.043835, 31.065079>,  <28.902308, 42.866272, 31.516506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329401, 43.043835, 31.065079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373907, 43.212200, 31.425179>,  <28.400610, 43.313221, 31.641239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373907, 43.212200, 31.425179>,  <28.329401, 43.043835, 31.065079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373907, 43.212200, 31.425179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407109, 0.807073, -0.427662,
		-0.906578, 0.414084, -0.081559,
		0.111264, 0.420913, 0.900252,
		28.407286, 43.338474, 31.695253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453457, 43.695835, 30.884495>,  <28.329401, 43.043835, 31.065079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453457, 43.695835, 30.884495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560846, 43.716515, 31.269255>,  <28.625280, 43.728920, 31.500111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560846, 43.716515, 31.269255>,  <28.453457, 43.695835, 30.884495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560846, 43.716515, 31.269255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408659, 0.898135, -0.162330,
		-0.872307, 0.436670, 0.220000,
		0.268474, 0.051696, 0.961899,
		28.641388, 43.732025, 31.557825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271168, 44.350220, 31.345345>,  <28.453457, 43.695835, 30.884495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271168, 44.350220, 31.345345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617847, 44.168911, 31.428650>,  <28.825855, 44.060123, 31.478634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617847, 44.168911, 31.428650>,  <28.271168, 44.350220, 31.345345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617847, 44.168911, 31.428650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496773, 0.822189, -0.277888,
		-0.045274, 0.344306, 0.937765,
		0.866699, -0.453276, 0.208266,
		28.877857, 44.032928, 31.491129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762989, 44.804737, 31.651028>,  <28.271168, 44.350220, 31.345345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762989, 44.804737, 31.651028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013607, 44.545788, 31.477430>,  <29.163979, 44.390419, 31.373272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013607, 44.545788, 31.477430>,  <28.762989, 44.804737, 31.651028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013607, 44.545788, 31.477430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663981, 0.734954, -0.137736,
		0.408131, -0.201864, 0.890326,
		0.626544, -0.647374, -0.433992,
		29.201571, 44.351574, 31.347233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241081, 44.432308, 32.066574>,  <28.762989, 44.804737, 31.651028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241081, 44.432308, 32.066574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597233, 44.588768, 32.159721>,  <29.810925, 44.682644, 32.215611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597233, 44.588768, 32.159721>,  <29.241081, 44.432308, 32.066574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597233, 44.588768, 32.159721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272939, -0.049301, -0.960767,
		-0.364319, 0.919007, -0.150656,
		0.890380, 0.391146, 0.232872,
		29.864347, 44.706112, 32.229584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333254, 45.166759, 32.073730>,  <29.241081, 44.432308, 32.066574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333254, 45.166759, 32.073730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637596, 44.931454, 31.964155>,  <29.820202, 44.790268, 31.898411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637596, 44.931454, 31.964155>,  <29.333254, 45.166759, 32.073730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637596, 44.931454, 31.964155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116831, 0.291061, -0.949544,
		0.638318, 0.754470, 0.152727,
		0.760855, -0.588268, -0.273935,
		29.865852, 44.754974, 31.881975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896807, 45.574352, 31.593569>,  <29.333254, 45.166759, 32.073730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896807, 45.574352, 31.593569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818731, 45.186760, 31.532942>,  <29.771887, 44.954205, 31.496565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818731, 45.186760, 31.532942>,  <29.896807, 45.574352, 31.593569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818731, 45.186760, 31.532942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151052, 0.182398, -0.971553,
		0.969064, -0.166740, -0.181968,
		-0.195187, -0.968983, -0.151569,
		29.760176, 44.896065, 31.487471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203033, 45.365555, 30.968639>,  <29.896807, 45.574352, 31.593569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203033, 45.365555, 30.968639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901699, 45.105076, 31.005365>,  <29.720898, 44.948788, 31.027401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901699, 45.105076, 31.005365>,  <30.203033, 45.365555, 30.968639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901699, 45.105076, 31.005365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193465, 0.086010, -0.977330,
		0.628536, -0.754020, -0.190778,
		-0.753335, -0.651195, 0.091816,
		29.675699, 44.909718, 31.032909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258238, 44.908062, 30.463600>,  <30.203033, 45.365555, 30.968639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258238, 44.908062, 30.463600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872940, 44.951992, 30.561663>,  <29.641762, 44.978348, 30.620501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872940, 44.951992, 30.561663>,  <30.258238, 44.908062, 30.463600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872940, 44.951992, 30.561663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205893, 0.284346, -0.936352,
		-0.172542, -0.952411, -0.251283,
		-0.963243, 0.109822, 0.245156,
		29.583967, 44.984940, 30.635210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737240, 44.533604, 30.011564>,  <30.258238, 44.908062, 30.463600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737240, 44.533604, 30.011564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644678, 44.885506, 30.177687>,  <29.589140, 45.096649, 30.277359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644678, 44.885506, 30.177687>,  <29.737240, 44.533604, 30.011564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644678, 44.885506, 30.177687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277307, 0.349534, -0.894945,
		-0.932498, -0.322263, 0.163079,
		-0.231406, 0.879757, 0.415305,
		29.575256, 45.149433, 30.302279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228010, 44.102097, 29.845676>,  <29.737240, 44.533604, 30.011564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228010, 44.102097, 29.845676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424210, 44.317329, 30.119867>,  <30.541929, 44.446468, 30.284382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424210, 44.317329, 30.119867>,  <30.228010, 44.102097, 29.845676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424210, 44.317329, 30.119867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596934, -0.780536, 0.185563,
		0.634888, 0.318166, -0.704051,
		0.490498, 0.538083, 0.685477,
		30.571360, 44.478756, 30.325510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996380, 43.973938, 29.715961>,  <30.228010, 44.102097, 29.845676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996380, 43.973938, 29.715961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886961, 44.083710, 30.084713>,  <30.821310, 44.149570, 30.305964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886961, 44.083710, 30.084713>,  <30.996380, 43.973938, 29.715961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886961, 44.083710, 30.084713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341058, -0.868488, 0.359735,
		0.899362, 0.412819, 0.143978,
		-0.273548, 0.274427, 0.921879,
		30.804897, 44.166039, 30.361277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558512, 43.747700, 30.124809>,  <30.996380, 43.973938, 29.715961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558512, 43.747700, 30.124809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267370, 43.814655, 30.390804>,  <31.092686, 43.854828, 30.550402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267370, 43.814655, 30.390804>,  <31.558512, 43.747700, 30.124809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267370, 43.814655, 30.390804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277021, -0.815320, 0.508441,
		0.627285, 0.554287, 0.547064,
		-0.727855, 0.167389, 0.664987,
		31.049013, 43.864872, 30.590300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875284, 43.554661, 30.730629>,  <31.558512, 43.747700, 30.124809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875284, 43.554661, 30.730629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491274, 43.594494, 30.835268>,  <31.260868, 43.618393, 30.898050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491274, 43.594494, 30.835268>,  <31.875284, 43.554661, 30.730629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491274, 43.594494, 30.835268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109841, -0.725583, 0.679312,
		0.257456, 0.680891, 0.685641,
		-0.960027, 0.099582, 0.261596,
		31.203266, 43.624367, 30.913746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874586, 43.610622, 31.443933>,  <31.875284, 43.554661, 30.730629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874586, 43.610622, 31.443933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521847, 43.478863, 31.308971>,  <31.310204, 43.399807, 31.227995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521847, 43.478863, 31.308971>,  <31.874586, 43.610622, 31.443933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521847, 43.478863, 31.308971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042392, -0.768034, 0.639005,
		-0.469624, 0.549202, 0.691253,
		-0.881848, -0.329395, -0.337405,
		31.257292, 43.380043, 31.207750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464560, 43.363052, 32.022732>,  <31.874586, 43.610622, 31.443933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464560, 43.363052, 32.022732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295872, 43.177784, 31.710930>,  <31.194658, 43.066624, 31.523849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295872, 43.177784, 31.710930>,  <31.464560, 43.363052, 32.022732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295872, 43.177784, 31.710930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139751, -0.816216, 0.560590,
		-0.895891, 0.345349, 0.279487,
		-0.421721, -0.463169, -0.779504,
		31.169355, 43.038834, 31.477079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876265, 43.025833, 32.271297>,  <31.464560, 43.363052, 32.022732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876265, 43.025833, 32.271297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941820, 42.813808, 31.938509>,  <30.981153, 42.686596, 31.738834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941820, 42.813808, 31.938509>,  <30.876265, 43.025833, 32.271297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941820, 42.813808, 31.938509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175322, -0.845601, 0.504204,
		-0.970775, 0.063231, -0.231513,
		0.163886, -0.530058, -0.831974,
		30.990986, 42.654793, 31.688917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409641, 42.523926, 32.437916>,  <30.876265, 43.025833, 32.271297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409641, 42.523926, 32.437916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638624, 42.393826, 32.136848>,  <30.776014, 42.315765, 31.956209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638624, 42.393826, 32.136848>,  <30.409641, 42.523926, 32.437916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638624, 42.393826, 32.136848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088501, -0.937107, 0.337635,
		-0.815144, -0.126670, -0.565239,
		0.572457, -0.325246, -0.752667,
		30.810362, 42.296253, 31.911049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022556, 42.000309, 32.234062>,  <30.409641, 42.523926, 32.437916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022556, 42.000309, 32.234062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393423, 41.944515, 32.094975>,  <30.615942, 41.911037, 32.011520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393423, 41.944515, 32.094975>,  <30.022556, 42.000309, 32.234062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393423, 41.944515, 32.094975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005097, -0.923329, 0.383975,
		-0.374616, -0.357781, -0.855369,
		0.927166, -0.139484, -0.347718,
		30.671574, 41.902672, 31.990660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963322, 41.388580, 31.955368>,  <30.022556, 42.000309, 32.234062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963322, 41.388580, 31.955368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350744, 41.452396, 32.031727>,  <30.583199, 41.490685, 32.077541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350744, 41.452396, 32.031727>,  <29.963322, 41.388580, 31.955368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350744, 41.452396, 32.031727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082075, -0.929262, 0.360189,
		0.234859, -0.333196, -0.913138,
		0.968558, 0.159540, 0.190899,
		30.641312, 41.500259, 32.088997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402273, 40.787285, 31.647564>,  <29.963322, 41.388580, 31.955368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402273, 40.787285, 31.647564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618311, 40.954933, 31.939491>,  <30.747934, 41.055523, 32.114647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618311, 40.954933, 31.939491>,  <30.402273, 40.787285, 31.647564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618311, 40.954933, 31.939491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264162, -0.907776, 0.325824,
		0.799071, 0.016814, -0.601001,
		0.540095, 0.419119, 0.729819,
		30.780340, 41.080669, 32.158436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870245, 40.269062, 31.852257>,  <30.402273, 40.787285, 31.647564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870245, 40.269062, 31.852257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910467, 40.521500, 32.159920>,  <30.934601, 40.672962, 32.344517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910467, 40.521500, 32.159920>,  <30.870245, 40.269062, 31.852257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910467, 40.521500, 32.159920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368734, -0.741664, 0.560331,
		0.924080, 0.227270, -0.307286,
		0.100556, 0.631097, 0.769159,
		30.940634, 40.710827, 32.390667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441357, 40.063805, 32.277931>,  <30.870245, 40.269062, 31.852257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441357, 40.063805, 32.277931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232260, 40.298923, 32.524906>,  <31.106802, 40.439995, 32.673092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232260, 40.298923, 32.524906>,  <31.441357, 40.063805, 32.277931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232260, 40.298923, 32.524906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323133, -0.533610, 0.781566,
		0.788875, 0.608074, 0.089004,
		-0.522743, 0.587798, 0.617441,
		31.075438, 40.475262, 32.710140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871355, 40.339622, 32.739277>,  <31.441357, 40.063805, 32.277931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871355, 40.339622, 32.739277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502735, 40.329205, 32.894230>,  <31.281563, 40.322956, 32.987202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502735, 40.329205, 32.894230>,  <31.871355, 40.339622, 32.739277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502735, 40.329205, 32.894230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324460, -0.599632, 0.731551,
		0.213235, 0.799852, 0.561042,
		-0.921551, -0.026043, 0.387383,
		31.226271, 40.321392, 33.010445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015465, 40.332638, 33.414955>,  <31.871355, 40.339622, 32.739277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015465, 40.332638, 33.414955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631702, 40.219883, 33.411259>,  <31.401445, 40.152229, 33.409039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631702, 40.219883, 33.411259>,  <32.015465, 40.332638, 33.414955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631702, 40.219883, 33.411259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142931, -0.514190, 0.845683,
		-0.243143, 0.810029, 0.533606,
		-0.959402, -0.281890, -0.009243,
		31.343882, 40.135315, 33.408485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727697, 40.405678, 34.073906>,  <32.015465, 40.332638, 33.414955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727697, 40.405678, 34.073906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506796, 40.130020, 33.886250>,  <31.374254, 39.964626, 33.773655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506796, 40.130020, 33.886250>,  <31.727697, 40.405678, 34.073906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506796, 40.130020, 33.886250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067263, -0.597740, 0.798864,
		-0.830957, 0.409622, 0.376458,
		-0.552256, -0.689143, -0.469144,
		31.341120, 39.923279, 33.745506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255310, 40.057755, 34.614727>,  <31.727697, 40.405678, 34.073906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255310, 40.057755, 34.614727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266676, 39.803810, 34.305885>,  <31.273495, 39.651443, 34.120579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266676, 39.803810, 34.305885>,  <31.255310, 40.057755, 34.614727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266676, 39.803810, 34.305885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081046, -0.771335, 0.631247,
		-0.996305, 0.044640, -0.073370,
		0.028414, -0.634861, -0.772104,
		31.275200, 39.613350, 34.074253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731960, 39.640747, 34.842743>,  <31.255310, 40.057755, 34.614727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731960, 39.640747, 34.842743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930359, 39.448555, 34.553436>,  <31.049398, 39.333241, 34.379852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930359, 39.448555, 34.553436>,  <30.731960, 39.640747, 34.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930359, 39.448555, 34.553436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110994, -0.861200, 0.495998,
		-0.861200, -0.165735, -0.480485,
		-0.495998, 0.480485, 0.723271,
		31.079159, 39.304409, 34.336456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326246, 39.202400, 34.634048>,  <30.731960, 39.640747, 34.842743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326246, 39.202400, 34.634048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687996, 39.059357, 34.540901>,  <30.905046, 38.973530, 34.485012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687996, 39.059357, 34.540901>,  <30.326246, 39.202400, 34.634048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687996, 39.059357, 34.540901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185483, -0.820844, 0.540195,
		-0.384322, -0.445346, -0.808680,
		0.904375, -0.357606, -0.232864,
		30.959309, 38.952076, 34.471043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126350, 38.601166, 34.651871>,  <30.326246, 39.202400, 34.634048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126350, 38.601166, 34.651871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524496, 38.563286, 34.658543>,  <30.763384, 38.540558, 34.662544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524496, 38.563286, 34.658543>,  <30.126350, 38.601166, 34.651871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524496, 38.563286, 34.658543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091850, -0.885084, 0.456278,
		-0.028444, -0.455696, -0.889681,
		0.995367, -0.094695, 0.016680,
		30.823107, 38.534878, 34.663548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247719, 37.959499, 34.394493>,  <30.126350, 38.601166, 34.651871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247719, 37.959499, 34.394493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563299, 38.068027, 34.615017>,  <30.752647, 38.133144, 34.747330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563299, 38.068027, 34.615017>,  <30.247719, 37.959499, 34.394493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563299, 38.068027, 34.615017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022600, -0.909436, 0.415229,
		0.614040, -0.315135, -0.723633,
		0.788951, 0.271321, 0.551308,
		30.799984, 38.149426, 34.780411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660891, 37.361645, 34.541836>,  <30.247719, 37.959499, 34.394493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660891, 37.361645, 34.541836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842783, 37.588570, 34.816463>,  <30.951918, 37.724724, 34.981239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842783, 37.588570, 34.816463>,  <30.660891, 37.361645, 34.541836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842783, 37.588570, 34.816463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008349, -0.768128, 0.640242,
		0.890590, -0.296870, -0.344554,
		0.454730, 0.567316, 0.686566,
		30.979202, 37.758766, 35.022434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245026, 36.968102, 34.823730>,  <30.660891, 37.361645, 34.541836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245026, 36.968102, 34.823730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119074, 37.235092, 35.093643>,  <31.043503, 37.395287, 35.255589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119074, 37.235092, 35.093643>,  <31.245026, 36.968102, 34.823730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119074, 37.235092, 35.093643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181466, -0.740166, 0.647476,
		0.931623, 0.081427, 0.354187,
		-0.314879, 0.667476, 0.674779,
		31.024611, 37.435333, 35.296078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892572, 37.305939, 35.068192>,  <31.245026, 36.968102, 34.823730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892572, 37.305939, 35.068192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259079, 37.446156, 35.145729>,  <32.478985, 37.530285, 35.192253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259079, 37.446156, 35.145729>,  <31.892572, 37.305939, 35.068192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259079, 37.446156, 35.145729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262634, 0.160328, 0.951482,
		0.302457, -0.922721, 0.238968,
		0.916266, 0.350543, 0.193846,
		32.533958, 37.551319, 35.203884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304562, 36.887619, 35.662170>,  <31.892572, 37.305939, 35.068192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304562, 36.887619, 35.662170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451637, 37.257172, 35.619759>,  <32.539883, 37.478905, 35.594311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451637, 37.257172, 35.619759>,  <32.304562, 36.887619, 35.662170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451637, 37.257172, 35.619759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015179, 0.119965, 0.992662,
		0.929823, -0.363386, 0.058134,
		0.367694, 0.923883, -0.106030,
		32.561947, 37.534336, 35.587948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917858, 36.953064, 36.060623>,  <32.304562, 36.887619, 35.662170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917858, 36.953064, 36.060623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712376, 37.293751, 36.019268>,  <32.589085, 37.498161, 35.994457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712376, 37.293751, 36.019268>,  <32.917858, 36.953064, 36.060623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712376, 37.293751, 36.019268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023909, 0.134664, 0.990603,
		0.857632, 0.506409, -0.089542,
		-0.513709, 0.851713, -0.103384,
		32.558262, 37.549263, 35.988255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363811, 37.508118, 36.210644>,  <32.917858, 36.953064, 36.060623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363811, 37.508118, 36.210644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973698, 37.579792, 36.262363>,  <32.739632, 37.622795, 36.293396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973698, 37.579792, 36.262363>,  <33.363811, 37.508118, 36.210644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973698, 37.579792, 36.262363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144450, 0.074207, 0.986726,
		0.167212, 0.981013, -0.098256,
		-0.975282, 0.179186, 0.129299,
		32.681114, 37.633549, 36.301151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222080, 38.152084, 36.709290>,  <33.363811, 37.508118, 36.210644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222080, 38.152084, 36.709290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956806, 37.852825, 36.717876>,  <32.797642, 37.673271, 36.723030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956806, 37.852825, 36.717876>,  <33.222080, 38.152084, 36.709290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956806, 37.852825, 36.717876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195109, -0.145118, 0.969986,
		-0.722575, 0.647472, 0.242211,
		-0.663188, -0.748145, 0.021469,
		32.757851, 37.628380, 36.724316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680866, 38.272137, 37.200745>,  <33.222080, 38.152084, 36.709290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680866, 38.272137, 37.200745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698704, 37.877224, 37.139709>,  <32.709408, 37.640278, 37.103088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698704, 37.877224, 37.139709>,  <32.680866, 38.272137, 37.200745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698704, 37.877224, 37.139709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168648, -0.143109, 0.975232,
		-0.984667, -0.069222, 0.160121,
		0.044593, -0.987283, -0.152589,
		32.712082, 37.581039, 37.093933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240692, 38.042629, 37.700745>,  <32.680866, 38.272137, 37.200745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240692, 38.042629, 37.700745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473015, 37.729328, 37.612041>,  <32.612408, 37.541348, 37.558819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473015, 37.729328, 37.612041>,  <32.240692, 38.042629, 37.700745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473015, 37.729328, 37.612041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136666, -0.174729, 0.975086,
		-0.802490, -0.596639, 0.005562,
		0.580803, -0.783257, -0.221759,
		32.647255, 37.494350, 37.545513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042709, 37.515453, 38.058422>,  <32.240692, 38.042629, 37.700745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042709, 37.515453, 38.058422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412365, 37.388840, 37.972851>,  <32.634159, 37.312870, 37.921509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412365, 37.388840, 37.972851>,  <32.042709, 37.515453, 38.058422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412365, 37.388840, 37.972851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077249, -0.393576, 0.916041,
		-0.374149, -0.863081, -0.339270,
		0.924145, -0.316527, -0.213928,
		32.689610, 37.293880, 37.908672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022640, 36.869686, 38.290211>,  <32.042709, 37.515453, 38.058422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022640, 36.869686, 38.290211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419239, 36.900265, 38.248085>,  <32.657200, 36.918610, 38.222809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419239, 36.900265, 38.248085>,  <32.022640, 36.869686, 38.290211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419239, 36.900265, 38.248085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127237, -0.399654, 0.907793,
		0.027305, -0.913473, -0.405982,
		0.991496, 0.076443, -0.105315,
		32.716686, 36.923199, 38.216492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333794, 36.191044, 38.448853>,  <32.022640, 36.869686, 38.290211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333794, 36.191044, 38.448853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578709, 36.499680, 38.517845>,  <32.725658, 36.684860, 38.559242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578709, 36.499680, 38.517845>,  <32.333794, 36.191044, 38.448853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578709, 36.499680, 38.517845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243870, -0.391830, 0.887128,
		0.752087, -0.501111, -0.428080,
		0.612284, 0.771594, 0.172484,
		32.762394, 36.731159, 38.569592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966908, 35.856209, 38.760635>,  <32.333794, 36.191044, 38.448853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966908, 35.856209, 38.760635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019463, 36.244244, 38.842293>,  <33.050995, 36.477062, 38.891289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019463, 36.244244, 38.842293>,  <32.966908, 35.856209, 38.760635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019463, 36.244244, 38.842293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274521, -0.233482, 0.932804,
		0.952563, -0.066514, -0.296985,
		0.131385, 0.970083, 0.204147,
		33.058880, 36.535267, 38.903538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594063, 35.911491, 39.206142>,  <32.966908, 35.856209, 38.760635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594063, 35.911491, 39.206142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453659, 36.283001, 39.253777>,  <33.369419, 36.505905, 39.282356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453659, 36.283001, 39.253777>,  <33.594063, 35.911491, 39.206142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453659, 36.283001, 39.253777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243933, -0.032087, 0.969261,
		0.904042, 0.369265, -0.215294,
		-0.351006, 0.928770, 0.119084,
		33.348358, 36.561630, 39.289501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093964, 36.289600, 39.550236>,  <33.594063, 35.911491, 39.206142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093964, 36.289600, 39.550236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754623, 36.493008, 39.609169>,  <33.551018, 36.615051, 39.644531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754623, 36.493008, 39.609169>,  <34.093964, 36.289600, 39.550236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754623, 36.493008, 39.609169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157272, -0.023673, 0.987272,
		0.505529, 0.860728, -0.059892,
		-0.848355, 0.508514, 0.147336,
		33.500118, 36.645561, 39.653370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244675, 36.721931, 40.155163>,  <34.093964, 36.289600, 39.550236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244675, 36.721931, 40.155163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845058, 36.716297, 40.138542>,  <33.605289, 36.712917, 40.128571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845058, 36.716297, 40.138542>,  <34.244675, 36.721931, 40.155163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845058, 36.716297, 40.138542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038978, -0.149655, 0.987970,
		-0.020133, 0.988638, 0.148962,
		-0.999037, -0.014084, -0.041548,
		33.545349, 36.712070, 40.126080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001308, 37.196404, 40.644588>,  <34.244675, 36.721931, 40.155163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001308, 37.196404, 40.644588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708660, 36.926563, 40.605305>,  <33.533070, 36.764660, 40.581734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708660, 36.926563, 40.605305>,  <34.001308, 37.196404, 40.644588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708660, 36.926563, 40.605305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016317, -0.161344, 0.986763,
		-0.681517, 0.720333, 0.129051,
		-0.731620, -0.674602, -0.098205,
		33.489174, 36.724182, 40.575844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434650, 37.421276, 41.096340>,  <34.001308, 37.196404, 40.644588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434650, 37.421276, 41.096340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402138, 37.026882, 41.038071>,  <33.382629, 36.790245, 41.003109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402138, 37.026882, 41.038071>,  <33.434650, 37.421276, 41.096340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402138, 37.026882, 41.038071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110408, -0.136354, 0.984489,
		-0.990557, 0.096105, -0.097778,
		-0.081282, -0.985988, -0.145677,
		33.377754, 36.731087, 40.994366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785084, 37.184761, 41.561283>,  <33.434650, 37.421276, 41.096340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785084, 37.184761, 41.561283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957703, 36.839634, 41.455975>,  <33.061275, 36.632557, 41.392788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957703, 36.839634, 41.455975>,  <32.785084, 37.184761, 41.561283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957703, 36.839634, 41.455975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245197, -0.393050, 0.886222,
		-0.868127, -0.317895, -0.381181,
		0.431549, -0.862818, -0.263270,
		33.087166, 36.580788, 41.376995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277809, 36.618977, 41.716457>,  <32.785084, 37.184761, 41.561283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277809, 36.618977, 41.716457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655930, 36.488579, 41.711792>,  <32.882801, 36.410339, 41.708992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655930, 36.488579, 41.711792>,  <32.277809, 36.618977, 41.716457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655930, 36.488579, 41.711792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139614, -0.436650, 0.888732,
		-0.294811, -0.838491, -0.458279,
		0.945301, -0.325990, -0.011665,
		32.939518, 36.390781, 41.708294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138474, 35.953785, 41.741211>,  <32.277809, 36.618977, 41.716457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138474, 35.953785, 41.741211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511139, 36.038784, 41.859089>,  <32.734737, 36.089783, 41.929817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511139, 36.038784, 41.859089>,  <32.138474, 35.953785, 41.741211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511139, 36.038784, 41.859089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116100, -0.594457, 0.795702,
		0.344273, -0.775541, -0.529163,
		0.931664, 0.212503, 0.294696,
		32.790638, 36.102535, 41.947498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437386, 35.304790, 41.943161>,  <32.138474, 35.953785, 41.741211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437386, 35.304790, 41.943161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616123, 35.603672, 42.139942>,  <32.723366, 35.783001, 42.258011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616123, 35.603672, 42.139942>,  <32.437386, 35.304790, 41.943161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616123, 35.603672, 42.139942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172066, -0.467853, 0.866895,
		0.877907, -0.472018, -0.080490,
		0.446848, 0.747204, 0.491949,
		32.750179, 35.827831, 42.287525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687874, 34.945728, 42.552673>,  <32.437386, 35.304790, 41.943161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687874, 34.945728, 42.552673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723873, 35.330444, 42.656101>,  <32.745472, 35.561275, 42.718159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723873, 35.330444, 42.656101>,  <32.687874, 34.945728, 42.552673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723873, 35.330444, 42.656101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194471, -0.237657, 0.951683,
		0.976771, -0.135930, 0.165653,
		0.089994, 0.961791, 0.258571,
		32.750870, 35.618980, 42.733673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067596, 34.906567, 43.179413>,  <32.687874, 34.945728, 42.552673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067596, 34.906567, 43.179413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899361, 35.269405, 43.172626>,  <32.798420, 35.487106, 43.168556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899361, 35.269405, 43.172626>,  <33.067596, 34.906567, 43.179413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899361, 35.269405, 43.172626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453987, -0.194237, 0.869579,
		0.785496, 0.373433, 0.493502,
		-0.420586, 0.907094, -0.016961,
		32.773186, 35.541534, 43.167538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176521, 35.232307, 43.772121>,  <33.067596, 34.906567, 43.179413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176521, 35.232307, 43.772121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841728, 35.426136, 43.670422>,  <32.640850, 35.542435, 43.609402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841728, 35.426136, 43.670422>,  <33.176521, 35.232307, 43.772121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841728, 35.426136, 43.670422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380942, -0.182404, 0.906428,
		0.392858, 0.855521, 0.337265,
		-0.836986, 0.484576, -0.254245,
		32.590633, 35.571510, 43.594147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094097, 35.764446, 44.284851>,  <33.176521, 35.232307, 43.772121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094097, 35.764446, 44.284851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734352, 35.670155, 44.137562>,  <32.518505, 35.613579, 44.049187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734352, 35.670155, 44.137562>,  <33.094097, 35.764446, 44.284851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734352, 35.670155, 44.137562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314306, -0.236855, 0.919300,
		-0.303917, 0.942514, 0.138928,
		-0.899359, -0.235725, -0.368222,
		32.464546, 35.599438, 44.027096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683575, 35.825897, 44.872066>,  <33.094097, 35.764446, 44.284851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683575, 35.825897, 44.872066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452629, 35.616043, 44.621819>,  <32.314060, 35.490131, 44.471668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452629, 35.616043, 44.621819>,  <32.683575, 35.825897, 44.872066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452629, 35.616043, 44.621819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381847, -0.503780, 0.774854,
		-0.721695, 0.686265, 0.090533,
		-0.577364, -0.524639, -0.625624,
		32.279419, 35.458652, 44.434132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901268, 35.889565, 45.102406>,  <32.683575, 35.825897, 44.872066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901268, 35.889565, 45.102406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908400, 35.570019, 44.861908>,  <31.912678, 35.378292, 44.717609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908400, 35.570019, 44.861908>,  <31.901268, 35.889565, 45.102406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908400, 35.570019, 44.861908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536798, -0.514970, 0.668322,
		-0.843523, 0.310831, -0.438011,
		0.017827, -0.798868, -0.601242,
		31.913748, 35.330357, 44.681534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194197, 35.673878, 45.030285>,  <31.901268, 35.889565, 45.102406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194197, 35.673878, 45.030285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443993, 35.366844, 44.972561>,  <31.593870, 35.182625, 44.937927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443993, 35.366844, 44.972561>,  <31.194197, 35.673878, 45.030285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443993, 35.366844, 44.972561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567966, -0.573136, 0.590702,
		-0.536121, -0.286928, -0.793881,
		0.624491, -0.767586, -0.144305,
		31.631340, 35.136570, 44.929268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785206, 35.123837, 45.151112>,  <31.194197, 35.673878, 45.030285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785206, 35.123837, 45.151112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127106, 34.916630, 45.138092>,  <31.332245, 34.792305, 45.130280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127106, 34.916630, 45.138092>,  <30.785206, 35.123837, 45.151112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127106, 34.916630, 45.138092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319569, -0.574640, 0.753435,
		-0.409001, -0.633595, -0.656716,
		0.854748, -0.518021, -0.032551,
		31.383530, 34.761223, 45.128326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621542, 34.362103, 45.206543>,  <30.785206, 35.123837, 45.151112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621542, 34.362103, 45.206543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010332, 34.374081, 45.299809>,  <31.243607, 34.381268, 45.355766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010332, 34.374081, 45.299809>,  <30.621542, 34.362103, 45.206543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010332, 34.374081, 45.299809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177558, -0.556517, 0.811642,
		0.154063, -0.830297, -0.535604,
		0.971976, 0.029943, 0.233165,
		31.301926, 34.383064, 45.369759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732555, 33.650475, 45.422047>,  <30.621542, 34.362103, 45.206543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732555, 33.650475, 45.422047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023045, 33.877983, 45.576500>,  <31.197338, 34.014488, 45.669174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023045, 33.877983, 45.576500>,  <30.732555, 33.650475, 45.422047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023045, 33.877983, 45.576500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068793, -0.498744, 0.864015,
		0.684007, -0.654032, -0.323073,
		0.726224, 0.568767, 0.386137,
		31.240911, 34.048615, 45.692341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110235, 33.237740, 45.853466>,  <30.732555, 33.650475, 45.422047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110235, 33.237740, 45.853466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198332, 33.607586, 45.977776>,  <31.251190, 33.829494, 46.052361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198332, 33.607586, 45.977776>,  <31.110235, 33.237740, 45.853466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198332, 33.607586, 45.977776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079663, -0.300479, 0.950456,
		0.972187, -0.234088, 0.007480,
		0.220243, 0.924616, 0.310770,
		31.264404, 33.884972, 46.071007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685928, 33.130569, 46.255222>,  <31.110235, 33.237740, 45.853466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685928, 33.130569, 46.255222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504404, 33.470360, 46.362888>,  <31.395491, 33.674232, 46.427490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504404, 33.470360, 46.362888>,  <31.685928, 33.130569, 46.255222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504404, 33.470360, 46.362888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035290, -0.284694, 0.957969,
		0.890400, 0.444234, 0.099219,
		-0.453809, 0.849474, 0.269169,
		31.368261, 33.725201, 46.443638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054955, 33.305355, 46.831951>,  <31.685928, 33.130569, 46.255222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054955, 33.305355, 46.831951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699986, 33.488583, 46.852566>,  <31.487003, 33.598518, 46.864933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699986, 33.488583, 46.852566>,  <32.054955, 33.305355, 46.831951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699986, 33.488583, 46.852566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133810, -0.362981, 0.922139,
		0.441106, 0.811431, 0.383412,
		-0.887424, 0.458065, 0.051535,
		31.433758, 33.626003, 46.868027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066902, 33.580978, 47.426064>,  <32.054955, 33.305355, 46.831951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066902, 33.580978, 47.426064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674850, 33.587906, 47.347031>,  <31.439619, 33.592064, 47.299610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674850, 33.587906, 47.347031>,  <32.066902, 33.580978, 47.426064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674850, 33.587906, 47.347031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185350, -0.434570, 0.881359,
		-0.070595, 0.900471, 0.429147,
		-0.980133, 0.017323, -0.197581,
		31.380810, 33.593102, 47.287758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700727, 33.858253, 47.970985>,  <32.066902, 33.580978, 47.426064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700727, 33.858253, 47.970985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389742, 33.661751, 47.813904>,  <31.203152, 33.543850, 47.719654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389742, 33.661751, 47.813904>,  <31.700727, 33.858253, 47.970985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389742, 33.661751, 47.813904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312048, -0.240816, 0.919040,
		-0.546057, 0.837061, 0.033929,
		-0.777463, -0.491260, -0.392702,
		31.156504, 33.514374, 47.696095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275270, 33.962227, 48.508129>,  <31.700727, 33.858253, 47.970985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275270, 33.962227, 48.508129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178068, 33.652027, 48.275043>,  <31.119747, 33.465908, 48.135193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178068, 33.652027, 48.275043>,  <31.275270, 33.962227, 48.508129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178068, 33.652027, 48.275043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115551, -0.573299, 0.811157,
		-0.963118, 0.264447, 0.049705,
		-0.243004, -0.775497, -0.582712,
		31.105167, 33.419376, 48.100231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666651, 33.719166, 48.710152>,  <31.275270, 33.962227, 48.508129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666651, 33.719166, 48.710152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828627, 33.400673, 48.530361>,  <30.925812, 33.209576, 48.422485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828627, 33.400673, 48.530361>,  <30.666651, 33.719166, 48.710152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828627, 33.400673, 48.530361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140942, -0.540067, 0.829736,
		-0.903415, -0.272643, -0.330918,
		0.404940, -0.796237, -0.449478,
		30.950109, 33.161800, 48.395519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341227, 33.151733, 49.068172>,  <30.666651, 33.719166, 48.710152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341227, 33.151733, 49.068172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632183, 32.976612, 48.856804>,  <30.806757, 32.871540, 48.729984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632183, 32.976612, 48.856804>,  <30.341227, 33.151733, 49.068172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632183, 32.976612, 48.856804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097116, -0.696612, 0.710845,
		-0.679310, -0.568384, -0.464195,
		0.727397, -0.437803, -0.528415,
		30.850401, 32.845268, 48.698277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165844, 32.475174, 49.107849>,  <30.341227, 33.151733, 49.068172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165844, 32.475174, 49.107849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555927, 32.493896, 49.021336>,  <30.789976, 32.505131, 48.969425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555927, 32.493896, 49.021336>,  <30.165844, 32.475174, 49.107849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555927, 32.493896, 49.021336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158344, -0.830362, 0.534252,
		-0.154589, -0.555254, -0.817187,
		0.975207, 0.046807, -0.216286,
		30.848490, 32.507938, 48.956451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358740, 31.775105, 48.994980>,  <30.165844, 32.475174, 49.107849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358740, 31.775105, 48.994980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694696, 31.967463, 49.095634>,  <30.896271, 32.082878, 49.156029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694696, 31.967463, 49.095634>,  <30.358740, 31.775105, 48.994980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694696, 31.967463, 49.095634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294706, -0.793404, 0.532597,
		0.455773, -0.373165, -0.808096,
		0.839893, 0.480894, 0.251638,
		30.946665, 32.111732, 49.171127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994837, 31.388556, 48.859940>,  <30.358740, 31.775105, 48.994980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994837, 31.388556, 48.859940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053961, 31.614799, 49.184467>,  <31.089436, 31.750546, 49.379185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053961, 31.614799, 49.184467>,  <30.994837, 31.388556, 48.859940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053961, 31.614799, 49.184467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184593, -0.821690, 0.539213,
		0.971637, 0.070062, -0.225862,
		0.147810, 0.565612, 0.811317,
		31.098305, 31.784483, 49.427864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544975, 31.124189, 49.205101>,  <30.994837, 31.388556, 48.859940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544975, 31.124189, 49.205101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327238, 31.313969, 49.481823>,  <31.196596, 31.427835, 49.647854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327238, 31.313969, 49.481823>,  <31.544975, 31.124189, 49.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327238, 31.313969, 49.481823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022562, -0.816112, 0.577453,
		0.838558, 0.329942, 0.433542,
		-0.544345, 0.474446, 0.691802,
		31.163935, 31.456303, 49.689362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751192, 30.951332, 49.759811>,  <31.544975, 31.124189, 49.205101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751192, 30.951332, 49.759811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370594, 31.048662, 49.835125>,  <31.142235, 31.107059, 49.880314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370594, 31.048662, 49.835125>,  <31.751192, 30.951332, 49.759811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370594, 31.048662, 49.835125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131293, -0.874584, 0.466760,
		0.278243, 0.419400, 0.864109,
		-0.951495, 0.243324, 0.188282,
		31.085146, 31.121660, 49.891609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660124, 30.765041, 50.472851>,  <31.751192, 30.951332, 49.759811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660124, 30.765041, 50.472851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296356, 30.775253, 50.306812>,  <31.078094, 30.781382, 50.207191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296356, 30.775253, 50.306812>,  <31.660124, 30.765041, 50.472851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296356, 30.775253, 50.306812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136864, -0.960888, 0.240753,
		-0.392710, 0.275757, 0.877347,
		-0.909421, 0.025532, -0.415092,
		31.023529, 30.782913, 50.182285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215176, 30.522287, 50.957630>,  <31.660124, 30.765041, 50.472851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215176, 30.522287, 50.957630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027594, 30.471142, 50.608063>,  <30.915045, 30.440454, 50.398323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027594, 30.471142, 50.608063>,  <31.215176, 30.522287, 50.957630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027594, 30.471142, 50.608063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232617, -0.936651, 0.261866,
		-0.852039, 0.326091, 0.409505,
		-0.468956, -0.127863, -0.873917,
		30.886908, 30.432783, 50.345886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491583, 30.237677, 50.808964>,  <31.215176, 30.522287, 50.957630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491583, 30.237677, 50.808964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778006, 30.066669, 50.588242>,  <30.949860, 29.964066, 50.455807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778006, 30.066669, 50.588242>,  <30.491583, 30.237677, 50.808964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778006, 30.066669, 50.588242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163374, -0.871191, 0.462962,
		-0.678653, -0.241357, -0.693669,
		0.716058, -0.427519, -0.551805,
		30.992823, 29.938414, 50.422699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170671, 29.609083, 50.638302>,  <30.491583, 30.237677, 50.808964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170671, 29.609083, 50.638302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568987, 29.579081, 50.617207>,  <30.807976, 29.561079, 50.604549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568987, 29.579081, 50.617207>,  <30.170671, 29.609083, 50.638302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568987, 29.579081, 50.617207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046367, -0.908119, 0.416136,
		-0.079102, -0.411938, -0.907772,
		0.995787, -0.075008, -0.052734,
		30.867723, 29.556578, 50.601387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578947, 29.177948, 50.216702>,  <30.170671, 29.609083, 50.638302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578947, 29.177948, 50.216702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837183, 28.897516, 50.095573>,  <30.992125, 28.729258, 50.022896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837183, 28.897516, 50.095573>,  <30.578947, 29.177948, 50.216702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837183, 28.897516, 50.095573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372564, -0.057009, 0.926254,
		-0.666642, -0.710800, 0.224393,
		0.645588, -0.701081, -0.302823,
		31.030859, 28.687193, 50.004726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590193, 28.470997, 50.503532>,  <30.578947, 29.177948, 50.216702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590193, 28.470997, 50.503532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957544, 28.571974, 50.381645>,  <31.177956, 28.632559, 50.308514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957544, 28.571974, 50.381645>,  <30.590193, 28.470997, 50.503532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957544, 28.571974, 50.381645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308540, 0.025338, 0.950874,
		0.247760, -0.967281, -0.054618,
		0.918378, 0.252441, -0.304722,
		31.233057, 28.647705, 50.290230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174393, 27.942724, 50.698959>,  <30.590193, 28.470997, 50.503532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174393, 27.942724, 50.698959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233282, 28.338242, 50.689087>,  <31.268616, 28.575552, 50.683163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233282, 28.338242, 50.689087>,  <31.174393, 27.942724, 50.698959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233282, 28.338242, 50.689087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116014, 0.007517, 0.993219,
		0.982276, -0.149089, -0.113608,
		0.147224, 0.988795, -0.024680,
		31.277449, 28.634880, 50.681683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820175, 28.154539, 51.021664>,  <31.174393, 27.942724, 50.698959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820175, 28.154539, 51.021664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534616, 28.433529, 51.046581>,  <31.363281, 28.600924, 51.061531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534616, 28.433529, 51.046581>,  <31.820175, 28.154539, 51.021664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534616, 28.433529, 51.046581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121999, 0.036281, 0.991867,
		0.689542, 0.715691, -0.110992,
		-0.713897, 0.697474, 0.062297,
		31.320448, 28.642771, 51.065269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076519, 28.747025, 51.296928>,  <31.820175, 28.154539, 51.021664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076519, 28.747025, 51.296928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687317, 28.691490, 51.370663>,  <31.453794, 28.658169, 51.414902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687317, 28.691490, 51.370663>,  <32.076519, 28.747025, 51.296928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687317, 28.691490, 51.370663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180537, 0.039555, 0.982773,
		-0.143737, 0.989525, -0.013422,
		-0.973009, -0.138838, 0.184331,
		31.395414, 28.649839, 51.425961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321693, 29.171606, 50.691406>,  <32.076519, 28.747025, 51.296928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321693, 29.171606, 50.691406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106831, 29.368303, 50.417282>,  <31.977911, 29.486322, 50.252808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106831, 29.368303, 50.417282>,  <32.321693, 29.171606, 50.691406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106831, 29.368303, 50.417282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823897, 0.479947, -0.301405,
		0.180696, -0.726524, -0.662956,
		-0.537162, 0.491745, -0.685306,
		31.945683, 29.515827, 50.211689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708828, 29.113426, 49.988091>,  <32.321693, 29.171606, 50.691406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708828, 29.113426, 49.988091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478165, 29.434774, 50.047493>,  <32.339767, 29.627584, 50.083134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478165, 29.434774, 50.047493>,  <32.708828, 29.113426, 49.988091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478165, 29.434774, 50.047493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760537, 0.594270, -0.261585,
		-0.298402, -0.037903, -0.953687,
		-0.576663, 0.803372, 0.148504,
		32.305164, 29.675787, 50.092045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056885, 29.117964, 49.874088>,  <32.708828, 29.113426, 49.988091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056885, 29.117964, 49.874088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915726, 28.849463, 50.134823>,  <31.831032, 28.688362, 50.291264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915726, 28.849463, 50.134823>,  <32.056885, 29.117964, 49.874088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915726, 28.849463, 50.134823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277306, -0.590321, -0.758038,
		0.893626, -0.448264, 0.022178,
		-0.352894, -0.671252, 0.651833,
		31.809858, 28.648087, 50.330372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099873, 28.462105, 49.650120>,  <32.056885, 29.117964, 49.874088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099873, 28.462105, 49.650120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815784, 28.422808, 49.928955>,  <31.645332, 28.399229, 50.096256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815784, 28.422808, 49.928955>,  <32.099873, 28.462105, 49.650120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815784, 28.422808, 49.928955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637969, -0.328820, -0.696328,
		0.297626, -0.939269, 0.170859,
		-0.710221, -0.098243, 0.697090,
		31.602718, 28.393335, 50.138081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839209, 27.777758, 49.553066>,  <32.099873, 28.462105, 49.650120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839209, 27.777758, 49.553066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572447, 28.037411, 49.699417>,  <31.412390, 28.193203, 49.787228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572447, 28.037411, 49.699417>,  <31.839209, 27.777758, 49.553066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572447, 28.037411, 49.699417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631731, -0.232152, -0.739609,
		-0.395167, -0.724382, 0.564902,
		-0.666903, 0.649135, 0.365875,
		31.372375, 28.232151, 49.809181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249432, 27.447330, 49.649345>,  <31.839209, 27.777758, 49.553066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249432, 27.447330, 49.649345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134872, 27.830090, 49.630074>,  <31.066137, 28.059746, 49.618511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134872, 27.830090, 49.630074>,  <31.249432, 27.447330, 49.649345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134872, 27.830090, 49.630074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730730, -0.250674, -0.634977,
		-0.619686, -0.146651, 0.771027,
		-0.286396, 0.956899, -0.048177,
		31.048954, 28.117159, 49.615620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487240, 27.498138, 49.705662>,  <31.249432, 27.447330, 49.649345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487240, 27.498138, 49.705662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609125, 27.836674, 49.530910>,  <30.682257, 28.039795, 49.426060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609125, 27.836674, 49.530910>,  <30.487240, 27.498138, 49.705662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609125, 27.836674, 49.530910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562580, -0.210190, -0.799577,
		-0.768540, 0.489421, 0.412085,
		0.304714, 0.846338, -0.436877,
		30.700539, 28.090574, 49.399849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829597, 27.828495, 49.348343>,  <30.487240, 27.498138, 49.705662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829597, 27.828495, 49.348343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156296, 27.986700, 49.180298>,  <30.352316, 28.081623, 49.079472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156296, 27.986700, 49.180298>,  <29.829597, 27.828495, 49.348343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156296, 27.986700, 49.180298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403580, -0.128766, -0.905838,
		-0.412368, 0.909389, 0.054452,
		0.816747, 0.395514, -0.420110,
		30.401320, 28.105354, 49.054264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515572, 28.186907, 48.790321>,  <29.829597, 27.828495, 49.348343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515572, 28.186907, 48.790321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906225, 28.141760, 48.717167>,  <30.140617, 28.114672, 48.673275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906225, 28.141760, 48.717167>,  <29.515572, 28.186907, 48.790321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906225, 28.141760, 48.717167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201263, -0.181970, -0.962487,
		0.075354, 0.976805, -0.200434,
		0.976635, -0.112867, -0.182882,
		30.199215, 28.107901, 48.662304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638174, 28.746082, 48.322735>,  <29.515572, 28.186907, 48.790321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638174, 28.746082, 48.322735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927673, 28.472551, 48.285702>,  <30.101374, 28.308434, 48.263481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927673, 28.472551, 48.285702>,  <29.638174, 28.746082, 48.322735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927673, 28.472551, 48.285702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189875, -0.068353, -0.979426,
		0.663427, 0.726437, -0.179312,
		0.723748, -0.683825, -0.092585,
		30.144798, 28.267405, 48.257927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090536, 29.009411, 47.922207>,  <29.638174, 28.746082, 48.322735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090536, 29.009411, 47.922207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192200, 28.626068, 47.870121>,  <30.253199, 28.396063, 47.838871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192200, 28.626068, 47.870121>,  <30.090536, 29.009411, 47.922207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192200, 28.626068, 47.870121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007904, 0.132574, -0.991141,
		0.967129, 0.252939, 0.026120,
		0.254161, -0.958356, -0.130215,
		30.268448, 28.338562, 47.831055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597937, 29.028366, 47.431740>,  <30.090536, 29.009411, 47.922207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597937, 29.028366, 47.431740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530365, 28.634239, 47.421825>,  <30.489822, 28.397762, 47.415874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530365, 28.634239, 47.421825>,  <30.597937, 29.028366, 47.431740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530365, 28.634239, 47.421825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045789, 0.017277, -0.998802,
		0.984564, -0.169860, 0.042198,
		-0.168928, -0.985317, -0.024788,
		30.479687, 28.338644, 47.414391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124668, 28.762280, 47.028561>,  <30.597937, 29.028366, 47.431740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124668, 28.762280, 47.028561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825367, 28.496931, 47.031494>,  <30.645786, 28.337723, 47.033253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825367, 28.496931, 47.031494>,  <31.124668, 28.762280, 47.028561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825367, 28.496931, 47.031494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071794, -0.091961, -0.993171,
		0.659516, -0.742618, 0.116436,
		-0.748254, -0.663371, 0.007334,
		30.600891, 28.297920, 47.033695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349207, 28.142176, 46.585503>,  <31.124668, 28.762280, 47.028561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349207, 28.142176, 46.585503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949825, 28.125340, 46.600029>,  <30.710196, 28.115238, 46.608746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949825, 28.125340, 46.600029>,  <31.349207, 28.142176, 46.585503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949825, 28.125340, 46.600029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035253, -0.025701, -0.999048,
		0.042991, -0.998783, 0.024177,
		-0.998454, -0.042097, 0.036315,
		30.650290, 28.112711, 46.610924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267462, 27.764601, 46.000401>,  <31.349207, 28.142176, 46.585503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267462, 27.764601, 46.000401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899555, 27.898054, 46.083073>,  <30.678810, 27.978127, 46.132675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899555, 27.898054, 46.083073>,  <31.267462, 27.764601, 46.000401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899555, 27.898054, 46.083073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166147, 0.146100, -0.975218,
		-0.355562, -0.931313, -0.078946,
		-0.919767, 0.333633, 0.206682,
		30.623625, 27.998144, 46.145077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844833, 27.462847, 45.473518>,  <31.267462, 27.764601, 46.000401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844833, 27.462847, 45.473518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646074, 27.776045, 45.623192>,  <30.526819, 27.963963, 45.712997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646074, 27.776045, 45.623192>,  <30.844833, 27.462847, 45.473518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646074, 27.776045, 45.623192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227156, 0.298794, -0.926889,
		-0.837551, -0.545567, 0.029391,
		-0.496898, 0.782993, 0.374184,
		30.497005, 28.010942, 45.735447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278685, 27.492928, 45.037846>,  <30.844833, 27.462847, 45.473518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278685, 27.492928, 45.037846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298397, 27.852360, 45.212257>,  <30.310225, 28.068020, 45.316906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298397, 27.852360, 45.212257>,  <30.278685, 27.492928, 45.037846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298397, 27.852360, 45.212257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246992, 0.433968, -0.866411,
		-0.967763, -0.064999, 0.243329,
		0.049281, 0.898581, 0.436032,
		30.313181, 28.121935, 45.343067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713684, 27.861572, 44.767426>,  <30.278685, 27.492928, 45.037846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713684, 27.861572, 44.767426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966709, 28.136694, 44.909855>,  <30.118525, 28.301767, 44.995312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966709, 28.136694, 44.909855>,  <29.713684, 27.861572, 44.767426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966709, 28.136694, 44.909855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019174, 0.473508, -0.880581,
		-0.774270, 0.550197, 0.312712,
		0.632565, 0.687803, 0.356074,
		30.156479, 28.343035, 45.016678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497644, 28.449020, 44.568089>,  <29.713684, 27.861572, 44.767426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497644, 28.449020, 44.568089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868198, 28.561735, 44.668015>,  <30.090530, 28.629364, 44.727970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868198, 28.561735, 44.668015>,  <29.497644, 28.449020, 44.568089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868198, 28.561735, 44.668015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044441, 0.576939, -0.815577,
		-0.373949, 0.766640, 0.521944,
		0.926384, 0.281788, 0.249816,
		30.146114, 28.646271, 44.742958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566465, 29.150187, 44.369648>,  <29.497644, 28.449020, 44.568089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566465, 29.150187, 44.369648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945402, 29.022230, 44.375492>,  <30.172764, 28.945456, 44.378998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945402, 29.022230, 44.375492>,  <29.566465, 29.150187, 44.369648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945402, 29.022230, 44.375492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186035, 0.512649, -0.838202,
		0.260644, 0.796781, 0.545165,
		0.947341, -0.319892, 0.014610,
		30.229605, 28.926262, 44.379875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952461, 29.752472, 44.361248>,  <29.566465, 29.150187, 44.369648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952461, 29.752472, 44.361248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209400, 29.467813, 44.247440>,  <30.363564, 29.297018, 44.179157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209400, 29.467813, 44.247440>,  <29.952461, 29.752472, 44.361248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209400, 29.467813, 44.247440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272560, 0.559078, -0.783034,
		0.716309, 0.425433, 0.553089,
		0.642349, -0.711645, -0.284516,
		30.402105, 29.254320, 44.162086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621185, 30.073929, 44.198627>,  <29.952461, 29.752472, 44.361248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621185, 30.073929, 44.198627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610287, 29.748074, 43.966896>,  <30.603748, 29.552561, 43.827858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610287, 29.748074, 43.966896>,  <30.621185, 30.073929, 44.198627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610287, 29.748074, 43.966896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361640, 0.532259, -0.765452,
		0.931920, -0.230365, 0.280103,
		-0.027246, -0.814636, -0.579332,
		30.602114, 29.503683, 43.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244358, 29.923307, 44.015064>,  <30.621185, 30.073929, 44.198627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244358, 29.923307, 44.015064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027678, 29.725784, 43.742970>,  <30.897669, 29.607271, 43.579712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027678, 29.725784, 43.742970>,  <31.244358, 29.923307, 44.015064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027678, 29.725784, 43.742970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376517, 0.580981, -0.721593,
		0.751529, -0.647006, -0.128792,
		-0.541701, -0.493806, -0.680233,
		30.865168, 29.577642, 43.538898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718353, 29.740385, 43.455406>,  <31.244358, 29.923307, 44.015064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718353, 29.740385, 43.455406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346115, 29.738457, 43.308998>,  <31.122772, 29.737299, 43.221153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346115, 29.738457, 43.308998>,  <31.718353, 29.740385, 43.455406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346115, 29.738457, 43.308998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294404, 0.584344, -0.756220,
		0.217526, -0.811492, -0.542369,
		-0.930596, -0.004822, -0.366017,
		31.066936, 29.737011, 43.199192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837635, 29.779888, 42.753674>,  <31.718353, 29.740385, 43.455406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837635, 29.779888, 42.753674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446537, 29.863758, 42.750874>,  <31.211878, 29.914080, 42.749195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446537, 29.863758, 42.750874>,  <31.837635, 29.779888, 42.753674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446537, 29.863758, 42.750874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128018, 0.569879, -0.811695,
		-0.166203, -0.794528, -0.584039,
		-0.977746, 0.209674, -0.006998,
		31.153214, 29.926661, 42.748775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644196, 29.695774, 42.036915>,  <31.837635, 29.779888, 42.753674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644196, 29.695774, 42.036915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364622, 29.921282, 42.212940>,  <31.196878, 30.056587, 42.318554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364622, 29.921282, 42.212940>,  <31.644196, 29.695774, 42.036915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364622, 29.921282, 42.212940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091655, 0.680845, -0.726670,
		-0.709290, -0.467559, -0.527537,
		-0.698932, 0.563771, 0.440063,
		31.154942, 30.090414, 42.344959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148682, 29.731293, 41.558952>,  <31.644196, 29.695774, 42.036915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148682, 29.731293, 41.558952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097437, 30.053009, 41.791058>,  <31.066690, 30.246038, 41.930321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097437, 30.053009, 41.791058>,  <31.148682, 29.731293, 41.558952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097437, 30.053009, 41.791058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099152, 0.571762, -0.814406,
		-0.986790, -0.161870, 0.006497,
		-0.128113, 0.804292, 0.580260,
		31.059004, 30.294296, 41.965134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548033, 30.014256, 41.263908>,  <31.148682, 29.731293, 41.558952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548033, 30.014256, 41.263908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737953, 30.306135, 41.460724>,  <30.851906, 30.481262, 41.578815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737953, 30.306135, 41.460724>,  <30.548033, 30.014256, 41.263908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737953, 30.306135, 41.460724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142652, 0.615495, -0.775123,
		-0.868455, 0.297839, 0.396331,
		0.474802, 0.729697, 0.492042,
		30.880394, 30.525043, 41.608337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384821, 30.592661, 40.890739>,  <30.548033, 30.014256, 41.263908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384821, 30.592661, 40.890739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651871, 30.777407, 41.124306>,  <30.812101, 30.888254, 41.264446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651871, 30.777407, 41.124306>,  <30.384821, 30.592661, 40.890739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651871, 30.777407, 41.124306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081396, 0.734327, -0.673899,
		-0.740033, 0.497441, 0.452662,
		0.667627, 0.461863, 0.583916,
		30.852160, 30.915966, 41.299480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233303, 31.318644, 41.093758>,  <30.384821, 30.592661, 40.890739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233303, 31.318644, 41.093758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629730, 31.267004, 41.107121>,  <30.867586, 31.236021, 41.115139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629730, 31.267004, 41.107121>,  <30.233303, 31.318644, 41.093758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629730, 31.267004, 41.107121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113138, 0.681460, -0.723057,
		0.070583, 0.720379, 0.689980,
		0.991069, -0.129099, 0.033403,
		30.927052, 31.228275, 41.117142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467503, 31.972263, 41.068382>,  <30.233303, 31.318644, 41.093758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467503, 31.972263, 41.068382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789505, 31.758152, 40.966057>,  <30.982706, 31.629686, 40.904663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789505, 31.758152, 40.966057>,  <30.467503, 31.972263, 41.068382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789505, 31.758152, 40.966057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170586, 0.621833, -0.764346,
		0.568210, 0.571666, 0.591891,
		0.805008, -0.535277, -0.255814,
		31.031008, 31.597569, 40.889313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005541, 32.450878, 41.034863>,  <30.467503, 31.972263, 41.068382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005541, 32.450878, 41.034863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113686, 32.136463, 40.812496>,  <31.178572, 31.947813, 40.679077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113686, 32.136463, 40.812496>,  <31.005541, 32.450878, 41.034863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113686, 32.136463, 40.812496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382720, 0.617586, -0.687105,
		0.883420, -0.026995, 0.467804,
		0.270361, -0.786040, -0.555919,
		31.194794, 31.900652, 40.645721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679173, 32.641808, 40.780338>,  <31.005541, 32.450878, 41.034863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679173, 32.641808, 40.780338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543915, 32.340771, 40.554325>,  <31.462761, 32.160149, 40.418716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543915, 32.340771, 40.554325>,  <31.679173, 32.641808, 40.780338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543915, 32.340771, 40.554325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237811, 0.512585, -0.825047,
		0.910552, -0.413355, 0.005647,
		-0.338142, -0.752591, -0.565036,
		31.442472, 32.114994, 40.384815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166077, 32.568249, 40.349380>,  <31.679173, 32.641808, 40.780338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166077, 32.568249, 40.349380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888233, 32.366772, 40.143932>,  <31.721525, 32.245888, 40.020660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888233, 32.366772, 40.143932>,  <32.166077, 32.568249, 40.349380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888233, 32.366772, 40.143932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361547, 0.372831, -0.854565,
		0.621929, -0.779291, -0.076867,
		-0.694614, -0.503688, -0.513625,
		31.679850, 32.215664, 39.989845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563831, 32.285698, 39.817799>,  <32.166077, 32.568249, 40.349380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563831, 32.285698, 39.817799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178852, 32.282326, 39.709263>,  <31.947865, 32.280300, 39.644142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178852, 32.282326, 39.709263>,  <32.563831, 32.285698, 39.817799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178852, 32.282326, 39.709263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237456, 0.458264, -0.856510,
		0.131567, -0.888776, -0.439052,
		-0.962447, -0.008433, -0.271337,
		31.890118, 32.279797, 39.627861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563293, 32.116196, 39.123810>,  <32.563831, 32.285698, 39.817799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563293, 32.116196, 39.123810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197231, 32.269150, 39.174835>,  <31.977594, 32.360924, 39.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197231, 32.269150, 39.174835>,  <32.563293, 32.116196, 39.123810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197231, 32.269150, 39.174835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122467, 0.565242, -0.815784,
		-0.384052, -0.730945, -0.564114,
		-0.915153, 0.382388, 0.127566,
		31.922686, 32.383865, 39.213104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200699, 32.037876, 38.532967>,  <32.563293, 32.116196, 39.123810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200699, 32.037876, 38.532967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996363, 32.331913, 38.711262>,  <31.873762, 32.508335, 38.818241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996363, 32.331913, 38.711262>,  <32.200699, 32.037876, 38.532967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996363, 32.331913, 38.711262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193609, 0.603553, -0.773460,
		-0.837592, -0.308812, -0.450637,
		-0.510837, 0.735091, 0.445742,
		31.843111, 32.552441, 38.844986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835747, 32.367580, 38.028000>,  <32.200699, 32.037876, 38.532967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835747, 32.367580, 38.028000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818958, 32.647980, 38.312771>,  <31.808886, 32.816219, 38.483635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818958, 32.647980, 38.312771>,  <31.835747, 32.367580, 38.028000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818958, 32.647980, 38.312771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032724, 0.713139, -0.700259,
		-0.998583, -0.006094, -0.052871,
		-0.041972, 0.700997, 0.711928,
		31.806366, 32.858280, 38.526348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467468, 32.890209, 37.717728>,  <31.835747, 32.367580, 38.028000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467468, 32.890209, 37.717728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674694, 33.043648, 38.023529>,  <31.799028, 33.135712, 38.207008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674694, 33.043648, 38.023529>,  <31.467468, 32.890209, 37.717728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674694, 33.043648, 38.023529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296090, 0.758112, -0.581030,
		-0.802459, 0.527373, 0.279172,
		0.518064, 0.383593, 0.764504,
		31.830112, 33.158726, 38.252880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233765, 33.710632, 37.669144>,  <31.467468, 32.890209, 37.717728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233765, 33.710632, 37.669144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566883, 33.687931, 37.889412>,  <31.766754, 33.674309, 38.021572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566883, 33.687931, 37.889412>,  <31.233765, 33.710632, 37.669144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566883, 33.687931, 37.889412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443167, 0.664470, -0.601732,
		-0.331749, 0.745156, 0.578519,
		0.832794, -0.056757, 0.550666,
		31.816721, 33.670902, 38.054611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414417, 34.293613, 37.537670>,  <31.233765, 33.710632, 37.669144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414417, 34.293613, 37.537670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735401, 34.108078, 37.687824>,  <31.927992, 33.996758, 37.777916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735401, 34.108078, 37.687824>,  <31.414417, 34.293613, 37.537670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735401, 34.108078, 37.687824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595865, 0.656310, -0.462819,
		-0.031698, 0.595073, 0.803046,
		0.802459, -0.463837, 0.375387,
		31.976139, 33.968925, 37.800442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814665, 34.797710, 37.789379>,  <31.414417, 34.293613, 37.537670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814665, 34.797710, 37.789379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069778, 34.493752, 37.739109>,  <32.222847, 34.311378, 37.708946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069778, 34.493752, 37.739109>,  <31.814665, 34.797710, 37.789379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069778, 34.493752, 37.739109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721062, 0.646435, -0.249381,
		0.270744, 0.068431, 0.960216,
		0.637783, -0.759894, -0.125676,
		32.261112, 34.265785, 37.701405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481091, 34.933701, 38.014900>,  <31.814665, 34.797710, 37.789379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481091, 34.933701, 38.014900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525131, 34.656017, 37.730381>,  <32.551556, 34.489407, 37.559669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525131, 34.656017, 37.730381>,  <32.481091, 34.933701, 38.014900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525131, 34.656017, 37.730381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619663, 0.607484, -0.496971,
		0.777107, -0.386050, 0.497061,
		0.110101, -0.694210, -0.711302,
		32.558163, 34.447754, 37.516991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248940, 34.802769, 38.000542>,  <32.481091, 34.933701, 38.014900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248940, 34.802769, 38.000542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055450, 34.700756, 37.665646>,  <32.939358, 34.639549, 37.464706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055450, 34.700756, 37.665646>,  <33.248940, 34.802769, 38.000542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055450, 34.700756, 37.665646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479350, 0.723177, -0.497231,
		0.732288, -0.641850, -0.227559,
		-0.483713, -0.255036, -0.837244,
		32.910336, 34.624249, 37.414474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704830, 34.944443, 37.526161>,  <33.248940, 34.802769, 38.000542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704830, 34.944443, 37.526161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397636, 34.891197, 37.275570>,  <33.213322, 34.859249, 37.125214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397636, 34.891197, 37.275570>,  <33.704830, 34.944443, 37.526161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397636, 34.891197, 37.275570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360886, 0.718160, -0.594986,
		0.529113, -0.683029, -0.503499,
		-0.767985, -0.133109, -0.626483,
		33.167240, 34.851265, 37.087624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105839, 34.559116, 36.942196>,  <33.704830, 34.944443, 37.526161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105839, 34.559116, 36.942196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439823, 34.351753, 36.868332>,  <34.640213, 34.227337, 36.824013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439823, 34.351753, 36.868332>,  <34.105839, 34.559116, 36.942196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439823, 34.351753, 36.868332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164430, -0.555247, 0.815269,
		-0.525164, -0.650358, -0.548851,
		0.834964, -0.518398, -0.184657,
		34.690311, 34.196232, 36.812935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960491, 33.938644, 37.176407>,  <34.105839, 34.559116, 36.942196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960491, 33.938644, 37.176407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359249, 33.911591, 37.160282>,  <34.598503, 33.895359, 37.150608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359249, 33.911591, 37.160282>,  <33.960491, 33.938644, 37.176407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359249, 33.911591, 37.160282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004265, -0.557621, 0.830085,
		-0.078626, -0.827336, -0.556178,
		0.996895, -0.067638, -0.040315,
		34.658318, 33.891300, 37.148190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128418, 33.252815, 37.039074>,  <33.960491, 33.938644, 37.176407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128418, 33.252815, 37.039074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425690, 33.437672, 37.232616>,  <34.604053, 33.548584, 37.348740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425690, 33.437672, 37.232616>,  <34.128418, 33.252815, 37.039074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425690, 33.437672, 37.232616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034262, -0.695910, 0.717311,
		0.668217, -0.549667, -0.501351,
		0.743177, 0.462142, 0.483852,
		34.648643, 33.576313, 37.377773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686886, 32.725632, 37.180672>,  <34.128418, 33.252815, 37.039074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686886, 32.725632, 37.180672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725655, 33.036190, 37.429771>,  <34.748917, 33.222523, 37.579231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725655, 33.036190, 37.429771>,  <34.686886, 32.725632, 37.180672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725655, 33.036190, 37.429771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116847, -0.630248, 0.767551,
		0.988409, -0.001629, -0.151806,
		0.096925, 0.776392, 0.622752,
		34.754734, 33.269108, 37.616596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139675, 32.498486, 37.699806>,  <34.686886, 32.725632, 37.180672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139675, 32.498486, 37.699806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994530, 32.835060, 37.859962>,  <34.907440, 33.037006, 37.956059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994530, 32.835060, 37.859962>,  <35.139675, 32.498486, 37.699806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994530, 32.835060, 37.859962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042101, -0.444044, 0.895015,
		0.930889, 0.307915, 0.196554,
		-0.362868, 0.841435, 0.400393,
		34.885670, 33.087490, 37.980080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608669, 32.645977, 38.353931>,  <35.139675, 32.498486, 37.699806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608669, 32.645977, 38.353931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256134, 32.832825, 38.382351>,  <35.044613, 32.944935, 38.399403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256134, 32.832825, 38.382351>,  <35.608669, 32.645977, 38.353931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256134, 32.832825, 38.382351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162089, -0.440147, 0.883175,
		0.443819, 0.766857, 0.463633,
		-0.881335, 0.467119, 0.071046,
		34.991734, 32.972961, 38.403664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554867, 32.809719, 39.087242>,  <35.608669, 32.645977, 38.353931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554867, 32.809719, 39.087242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181793, 32.834038, 38.945030>,  <34.957951, 32.848629, 38.859703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181793, 32.834038, 38.945030>,  <35.554867, 32.809719, 39.087242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181793, 32.834038, 38.945030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336325, -0.502737, 0.796330,
		-0.130324, 0.862299, 0.489343,
		-0.932685, 0.060797, -0.355532,
		34.901989, 32.852276, 38.838371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156834, 32.955833, 39.679440>,  <35.554867, 32.809719, 39.087242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156834, 32.955833, 39.679440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915924, 32.813808, 39.393448>,  <34.771378, 32.728596, 39.221851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915924, 32.813808, 39.393448>,  <35.156834, 32.955833, 39.679440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915924, 32.813808, 39.393448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479750, -0.554876, 0.679671,
		-0.638050, 0.752360, 0.163847,
		-0.602272, -0.355059, -0.714983,
		34.735241, 32.707291, 39.178951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479248, 32.914642, 39.927864>,  <35.156834, 32.955833, 39.679440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479248, 32.914642, 39.927864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502758, 32.633347, 39.644455>,  <34.516865, 32.464569, 39.474411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502758, 32.633347, 39.644455>,  <34.479248, 32.914642, 39.927864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502758, 32.633347, 39.644455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388962, -0.669788, 0.632529,
		-0.919377, 0.238410, -0.312900,
		0.058776, -0.703239, -0.708520,
		34.520390, 32.422375, 39.431900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937656, 32.594009, 40.024334>,  <34.479248, 32.914642, 39.927864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937656, 32.594009, 40.024334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130520, 32.325584, 39.799053>,  <34.246239, 32.164528, 39.663883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130520, 32.325584, 39.799053>,  <33.937656, 32.594009, 40.024334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130520, 32.325584, 39.799053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418161, -0.741188, 0.525150,
		-0.769848, -0.017696, -0.637983,
		0.482158, -0.671065, -0.563202,
		34.275166, 32.124264, 39.630093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478638, 32.053741, 39.865654>,  <33.937656, 32.594009, 40.024334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478638, 32.053741, 39.865654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842644, 31.888681, 39.849678>,  <34.061047, 31.789644, 39.840092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842644, 31.888681, 39.849678>,  <33.478638, 32.053741, 39.865654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842644, 31.888681, 39.849678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331440, -0.782004, 0.527843,
		-0.249049, -0.467105, -0.848402,
		0.910012, -0.412653, -0.039940,
		34.115646, 31.764885, 39.837696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336262, 31.403687, 39.830074>,  <33.478638, 32.053741, 39.865654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336262, 31.403687, 39.830074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721031, 31.388067, 39.938282>,  <33.951893, 31.378696, 40.003208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721031, 31.388067, 39.938282>,  <33.336262, 31.403687, 39.830074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721031, 31.388067, 39.938282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187318, -0.814941, 0.548436,
		0.199046, -0.578226, -0.791224,
		0.961921, -0.039046, 0.270523,
		34.009609, 31.376354, 40.019440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545601, 30.761194, 39.689686>,  <33.336262, 31.403687, 39.830074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545601, 30.761194, 39.689686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822269, 30.889326, 39.948601>,  <33.988270, 30.966206, 40.103951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822269, 30.889326, 39.948601>,  <33.545601, 30.761194, 39.689686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822269, 30.889326, 39.948601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030765, -0.882372, 0.469545,
		0.721560, -0.344683, -0.600454,
		0.691669, 0.320332, 0.647288,
		34.029770, 30.985426, 40.142788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782391, 30.095993, 40.013912>,  <33.545601, 30.761194, 39.689686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782391, 30.095993, 40.013912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925728, 30.372971, 40.264389>,  <34.011730, 30.539156, 40.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925728, 30.372971, 40.264389>,  <33.782391, 30.095993, 40.013912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925728, 30.372971, 40.264389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099171, -0.695171, 0.711971,
		0.928308, -0.193030, -0.317780,
		0.358343, 0.692443, 0.626190,
		34.033230, 30.580704, 40.452248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402176, 29.894003, 40.414562>,  <33.782391, 30.095993, 40.013912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402176, 29.894003, 40.414562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202694, 30.160168, 40.636742>,  <34.083004, 30.319866, 40.770050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202694, 30.160168, 40.636742>,  <34.402176, 29.894003, 40.414562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202694, 30.160168, 40.636742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050714, -0.617323, 0.785073,
		0.865289, 0.419685, 0.274114,
		-0.498701, 0.665414, 0.555447,
		34.053085, 30.359793, 40.803375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818592, 29.849617, 41.087189>,  <34.402176, 29.894003, 40.414562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818592, 29.849617, 41.087189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472191, 30.032749, 41.167625>,  <34.264351, 30.142630, 41.215885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472191, 30.032749, 41.167625>,  <34.818592, 29.849617, 41.087189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472191, 30.032749, 41.167625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108915, -0.565183, 0.817744,
		0.488040, 0.686264, 0.539313,
		-0.865999, 0.457832, 0.201087,
		34.212391, 30.170099, 41.227951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723042, 29.969049, 41.777256>,  <34.818592, 29.849617, 41.087189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723042, 29.969049, 41.777256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339752, 30.005337, 41.668758>,  <34.109779, 30.027109, 41.603661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339752, 30.005337, 41.668758>,  <34.723042, 29.969049, 41.777256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339752, 30.005337, 41.668758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282741, -0.443503, 0.850507,
		-0.043139, 0.891670, 0.450627,
		-0.958226, 0.090721, -0.271244,
		34.052284, 30.032553, 41.587387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397270, 30.268309, 42.382034>,  <34.723042, 29.969049, 41.777256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397270, 30.268309, 42.382034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114788, 30.077522, 42.172741>,  <33.945297, 29.963051, 42.047165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114788, 30.077522, 42.172741>,  <34.397270, 30.268309, 42.382034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114788, 30.077522, 42.172741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295477, -0.473040, 0.830016,
		-0.643399, 0.740768, 0.193132,
		-0.706209, -0.476966, -0.523233,
		33.902924, 29.934433, 42.015770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911648, 30.250286, 42.874596>,  <34.397270, 30.268309, 42.382034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911648, 30.250286, 42.874596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777332, 29.998974, 42.593880>,  <33.696743, 29.848186, 42.425449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777332, 29.998974, 42.593880>,  <33.911648, 30.250286, 42.874596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777332, 29.998974, 42.593880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488481, -0.520884, 0.700047,
		-0.805377, 0.577880, -0.131995,
		-0.335790, -0.628278, -0.701792,
		33.676594, 29.810490, 42.383343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185474, 30.189812, 43.042786>,  <33.911648, 30.250286, 42.874596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185474, 30.189812, 43.042786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290405, 29.873482, 42.821598>,  <33.353363, 29.683683, 42.688885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290405, 29.873482, 42.821598>,  <33.185474, 30.189812, 43.042786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290405, 29.873482, 42.821598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527610, -0.597346, 0.603991,
		-0.807968, 0.133311, -0.573948,
		0.262327, -0.790826, -0.552973,
		33.369102, 29.636234, 42.655704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649418, 29.821789, 42.951355>,  <33.185474, 30.189812, 43.042786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649418, 29.821789, 42.951355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957653, 29.572845, 42.896408>,  <33.142593, 29.423479, 42.863438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957653, 29.572845, 42.896408>,  <32.649418, 29.821789, 42.951355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957653, 29.572845, 42.896408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268393, -0.512371, 0.815746,
		-0.578070, -0.591731, -0.561862,
		0.770584, -0.622358, -0.137370,
		33.188828, 29.386137, 42.855198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403187, 29.086288, 42.968914>,  <32.649418, 29.821789, 42.951355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403187, 29.086288, 42.968914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788860, 29.099907, 43.074123>,  <33.020264, 29.108078, 43.137249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788860, 29.099907, 43.074123>,  <32.403187, 29.086288, 42.968914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788860, 29.099907, 43.074123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161747, -0.710474, 0.684882,
		0.210191, -0.702899, -0.679524,
		0.964188, 0.034045, 0.263027,
		33.078117, 29.110121, 43.153030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558075, 28.427984, 43.144459>,  <32.403187, 29.086288, 42.968914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558075, 28.427984, 43.144459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846962, 28.649141, 43.310696>,  <33.020294, 28.781836, 43.410439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846962, 28.649141, 43.310696>,  <32.558075, 28.427984, 43.144459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846962, 28.649141, 43.310696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034176, -0.628639, 0.776946,
		0.690824, -0.546919, -0.472908,
		0.722215, 0.552895, 0.415588,
		33.063625, 28.815010, 43.435371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035511, 27.872536, 43.458450>,  <32.558075, 28.427984, 43.144459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035511, 27.872536, 43.458450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086292, 28.239645, 43.608959>,  <33.116760, 28.459909, 43.699265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086292, 28.239645, 43.608959>,  <33.035511, 27.872536, 43.458450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086292, 28.239645, 43.608959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054862, -0.385255, 0.921178,
		0.990391, -0.096299, -0.099258,
		0.126948, 0.917772, 0.376269,
		33.124378, 28.514977, 43.721840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344322, 27.713140, 44.056664>,  <33.035511, 27.872536, 43.458450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344322, 27.713140, 44.056664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253601, 28.093773, 44.139664>,  <33.199169, 28.322151, 44.189465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253601, 28.093773, 44.139664>,  <33.344322, 27.713140, 44.056664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253601, 28.093773, 44.139664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064098, -0.227172, 0.971743,
		0.971829, 0.207097, 0.112518,
		-0.226806, 0.951580, 0.207498,
		33.185558, 28.379248, 44.201912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799816, 28.069035, 44.587189>,  <33.344322, 27.713140, 44.056664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799816, 28.069035, 44.587189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468544, 28.291719, 44.613091>,  <33.269783, 28.425331, 44.628632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468544, 28.291719, 44.613091>,  <33.799816, 28.069035, 44.587189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468544, 28.291719, 44.613091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061911, -0.023951, 0.997794,
		0.557034, 0.830360, -0.014631,
		-0.828178, 0.556712, 0.064750,
		33.220089, 28.458733, 44.632515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896355, 28.578390, 45.080143>,  <33.799816, 28.069035, 44.587189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896355, 28.578390, 45.080143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499107, 28.532314, 45.071716>,  <33.260757, 28.504669, 45.066662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499107, 28.532314, 45.071716>,  <33.896355, 28.578390, 45.080143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499107, 28.532314, 45.071716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022387, 0.010183, 0.999698,
		-0.114940, 0.993291, -0.012692,
		-0.993120, -0.115190, -0.021066,
		33.201172, 28.497757, 45.065395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612492, 29.013994, 45.663242>,  <33.896355, 28.578390, 45.080143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612492, 29.013994, 45.663242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315105, 28.757845, 45.586113>,  <33.136673, 28.604155, 45.539837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315105, 28.757845, 45.586113>,  <33.612492, 29.013994, 45.663242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315105, 28.757845, 45.586113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160190, -0.109411, 0.981004,
		-0.649305, 0.760231, -0.021238,
		-0.743466, -0.640373, -0.192822,
		33.092064, 28.565733, 45.528267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990597, 29.241766, 46.082397>,  <33.612492, 29.013994, 45.663242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990597, 29.241766, 46.082397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964993, 28.854210, 45.986771>,  <32.949631, 28.621675, 45.929394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964993, 28.854210, 45.986771>,  <32.990597, 29.241766, 46.082397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964993, 28.854210, 45.986771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014663, -0.240447, 0.970551,
		-0.997841, 0.058621, 0.029599,
		-0.064012, -0.968890, -0.239069,
		32.945789, 28.563543, 45.915051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373779, 28.885311, 46.471066>,  <32.990597, 29.241766, 46.082397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373779, 28.885311, 46.471066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587452, 28.570459, 46.347729>,  <32.715656, 28.381548, 46.273727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587452, 28.570459, 46.347729>,  <32.373779, 28.885311, 46.471066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587452, 28.570459, 46.347729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080901, -0.315464, 0.945483,
		-0.841488, -0.530007, -0.104836,
		0.534184, -0.787131, -0.308338,
		32.747707, 28.334320, 46.255226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132832, 28.432026, 46.900501>,  <32.373779, 28.885311, 46.471066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132832, 28.432026, 46.900501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443047, 28.217129, 46.767887>,  <32.629177, 28.088190, 46.688320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443047, 28.217129, 46.767887>,  <32.132832, 28.432026, 46.900501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443047, 28.217129, 46.767887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008924, -0.515774, 0.856678,
		-0.631241, -0.667343, -0.395206,
		0.775536, -0.537244, -0.331533,
		32.675709, 28.055956, 46.668427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945179, 27.698357, 46.917271>,  <32.132832, 28.432026, 46.900501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945179, 27.698357, 46.917271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344421, 27.721960, 46.924240>,  <32.583965, 27.736122, 46.928421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344421, 27.721960, 46.924240>,  <31.945179, 27.698357, 46.917271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344421, 27.721960, 46.924240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016726, -0.532790, 0.846082,
		0.059213, -0.844188, -0.532768,
		0.998106, 0.059010, 0.017428,
		32.643852, 27.739662, 46.929470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182808, 26.893457, 46.903221>,  <31.945179, 27.698357, 46.917271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182808, 26.893457, 46.903221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471535, 27.133341, 47.041393>,  <32.644772, 27.277271, 47.124298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471535, 27.133341, 47.041393>,  <32.182808, 26.893457, 46.903221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471535, 27.133341, 47.041393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090295, -0.576463, 0.812119,
		0.686166, -0.555012, -0.470253,
		0.721819, 0.599710, 0.345435,
		32.688080, 27.313253, 47.145023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696968, 26.487795, 47.186550>,  <32.182808, 26.893457, 46.903221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696968, 26.487795, 47.186550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765434, 26.841976, 47.359375>,  <32.806515, 27.054485, 47.463070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765434, 26.841976, 47.359375>,  <32.696968, 26.487795, 47.186550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765434, 26.841976, 47.359375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236513, -0.462634, 0.854419,
		0.956433, -0.044058, -0.288607,
		0.171163, 0.885454, 0.432058,
		32.816784, 27.107613, 47.488991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375656, 26.410662, 47.500374>,  <32.696968, 26.487795, 47.186550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375656, 26.410662, 47.500374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185162, 26.699682, 47.700821>,  <33.070866, 26.873095, 47.821091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185162, 26.699682, 47.700821>,  <33.375656, 26.410662, 47.500374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185162, 26.699682, 47.700821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183543, -0.475655, 0.860270,
		0.859949, 0.501667, 0.093903,
		-0.476235, 0.722553, 0.501116,
		33.042290, 26.916449, 47.851154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787895, 26.616137, 48.119781>,  <33.375656, 26.410662, 47.500374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787895, 26.616137, 48.119781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411995, 26.731314, 48.193489>,  <33.186455, 26.800421, 48.237713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411995, 26.731314, 48.193489>,  <33.787895, 26.616137, 48.119781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411995, 26.731314, 48.193489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004114, -0.529451, 0.848330,
		0.341831, 0.797979, 0.496369,
		-0.939752, 0.287944, 0.184266,
		33.130070, 26.817698, 48.248768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775951, 26.694647, 48.834644>,  <33.787895, 26.616137, 48.119781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775951, 26.694647, 48.834644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396671, 26.658016, 48.712967>,  <33.169106, 26.636038, 48.639961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396671, 26.658016, 48.712967>,  <33.775951, 26.694647, 48.834644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396671, 26.658016, 48.712967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165574, -0.674749, 0.719235,
		-0.271121, 0.732344, 0.624632,
		-0.948198, -0.091577, -0.304196,
		33.112213, 26.630543, 48.621708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419895, 26.912977, 49.332676>,  <33.775951, 26.694647, 48.834644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419895, 26.912977, 49.332676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166595, 26.668386, 49.142902>,  <33.014614, 26.521631, 49.029037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166595, 26.668386, 49.142902>,  <33.419895, 26.912977, 49.332676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166595, 26.668386, 49.142902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178590, -0.481014, 0.858330,
		-0.753061, 0.628267, 0.195398,
		-0.633250, -0.611479, -0.474435,
		32.976620, 26.484943, 49.000572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982613, 27.201923, 49.623055>,  <33.419895, 26.912977, 49.332676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982613, 27.201923, 49.623055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196598, 27.333122, 49.934498>,  <34.324989, 27.411842, 50.121365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196598, 27.333122, 49.934498>,  <33.982613, 27.201923, 49.623055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196598, 27.333122, 49.934498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352204, 0.751096, -0.558397,
		-0.767964, 0.572950, 0.286284,
		0.534961, 0.327999, 0.778610,
		34.357086, 27.431522, 50.168079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696999, 27.849211, 49.871056>,  <33.982613, 27.201923, 49.623055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696999, 27.849211, 49.871056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078693, 27.862867, 49.989895>,  <34.307709, 27.871061, 50.061199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078693, 27.862867, 49.989895>,  <33.696999, 27.849211, 49.871056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078693, 27.862867, 49.989895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173785, 0.745190, -0.643809,
		-0.243376, 0.665977, 0.705154,
		0.954236, 0.034142, 0.297098,
		34.364964, 27.873110, 50.079025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842537, 28.549036, 50.034206>,  <33.696999, 27.849211, 49.871056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842537, 28.549036, 50.034206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206478, 28.394009, 49.974941>,  <34.424843, 28.300993, 49.939384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206478, 28.394009, 49.974941>,  <33.842537, 28.549036, 50.034206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206478, 28.394009, 49.974941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293881, 0.854020, -0.429282,
		0.292908, 0.347043, 0.890935,
		0.909856, -0.387569, -0.148160,
		34.479435, 28.277739, 49.930492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360058, 29.103806, 50.127811>,  <33.842537, 28.549036, 50.034206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360058, 29.103806, 50.127811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525131, 28.814341, 49.906540>,  <34.624176, 28.640661, 49.773777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525131, 28.814341, 49.906540>,  <34.360058, 29.103806, 50.127811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525131, 28.814341, 49.906540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294872, 0.680738, -0.670557,
		0.861827, 0.113609, 0.494315,
		0.412681, -0.723663, -0.553178,
		34.648937, 28.597242, 49.740585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932713, 29.402700, 49.881638>,  <34.360058, 29.103806, 50.127811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932713, 29.402700, 49.881638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912933, 29.082541, 49.642666>,  <34.901066, 28.890446, 49.499283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912933, 29.082541, 49.642666>,  <34.932713, 29.402700, 49.881638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912933, 29.082541, 49.642666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431648, 0.522285, -0.735457,
		0.900686, -0.294245, 0.319664,
		-0.049448, -0.800399, -0.597425,
		34.898098, 28.842421, 49.463440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493217, 29.535555, 49.519360>,  <34.932713, 29.402700, 49.881638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493217, 29.535555, 49.519360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318840, 29.247746, 49.303123>,  <35.214214, 29.075060, 49.173382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318840, 29.247746, 49.303123>,  <35.493217, 29.535555, 49.519360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318840, 29.247746, 49.303123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252956, 0.478495, -0.840866,
		0.863693, -0.503316, -0.026590,
		-0.435945, -0.719524, -0.540590,
		35.188057, 29.031889, 49.140945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933304, 29.370564, 49.003098>,  <35.493217, 29.535555, 49.519360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933304, 29.370564, 49.003098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562622, 29.283627, 48.880478>,  <35.340214, 29.231464, 48.806908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562622, 29.283627, 48.880478>,  <35.933304, 29.370564, 49.003098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562622, 29.283627, 48.880478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238430, 0.290452, -0.926709,
		0.290452, -0.931880, -0.217343,
		0.926709, 0.217343, 0.306550,
		35.284611, 29.218424, 48.788513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955414, 28.999447, 48.308659>,  <35.933304, 29.370564, 49.003098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955414, 28.999447, 48.308659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583538, 29.146782, 48.309399>,  <35.360413, 29.235184, 48.309841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583538, 29.146782, 48.309399>,  <35.955414, 28.999447, 48.308659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583538, 29.146782, 48.309399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107768, 0.276799, -0.954866,
		-0.352226, -0.887530, -0.297032,
		-0.929690, 0.368339, 0.001849,
		35.304630, 29.257284, 48.309952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692905, 28.740507, 47.640831>,  <35.955414, 28.999447, 48.308659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692905, 28.740507, 47.640831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494827, 29.063641, 47.768696>,  <35.375980, 29.257521, 47.845417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494827, 29.063641, 47.768696>,  <35.692905, 28.740507, 47.640831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494827, 29.063641, 47.768696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139289, 0.437011, -0.888606,
		-0.857540, -0.395511, -0.328930,
		-0.495200, 0.807832, 0.319664,
		35.346268, 29.305990, 47.864594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205627, 28.890602, 47.105606>,  <35.692905, 28.740507, 47.640831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205627, 28.890602, 47.105606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263618, 29.239439, 47.292557>,  <35.298412, 29.448742, 47.404728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263618, 29.239439, 47.292557>,  <35.205627, 28.890602, 47.105606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263618, 29.239439, 47.292557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185183, 0.440100, -0.878646,
		-0.971951, 0.213932, -0.097693,
		0.144976, 0.872092, 0.467373,
		35.307110, 29.501066, 47.432770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020481, 29.262280, 46.600555>,  <35.205627, 28.890602, 47.105606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020481, 29.262280, 46.600555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146175, 29.551537, 46.846588>,  <35.221592, 29.725090, 46.994205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146175, 29.551537, 46.846588>,  <35.020481, 29.262280, 46.600555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146175, 29.551537, 46.846588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149956, 0.601956, -0.784322,
		-0.937428, 0.338695, 0.080715,
		0.314233, 0.723142, 0.615080,
		35.240444, 29.768478, 47.031113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518414, 29.900764, 46.556389>,  <35.020481, 29.262280, 46.600555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518414, 29.900764, 46.556389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877384, 30.032492, 46.673809>,  <35.092766, 30.111528, 46.744263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877384, 30.032492, 46.673809>,  <34.518414, 29.900764, 46.556389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877384, 30.032492, 46.673809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010516, 0.681187, -0.732034,
		-0.441037, 0.653860, 0.614779,
		0.897427, 0.329319, 0.293553,
		35.146614, 30.131287, 46.761875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586033, 30.774452, 46.630707>,  <34.518414, 29.900764, 46.556389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586033, 30.774452, 46.630707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949825, 30.613684, 46.588177>,  <35.168102, 30.517223, 46.562660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949825, 30.613684, 46.588177>,  <34.586033, 30.774452, 46.630707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949825, 30.613684, 46.588177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230006, 0.699465, -0.676643,
		0.346324, 0.590939, 0.728594,
		0.909481, -0.401919, -0.106322,
		35.222672, 30.493109, 46.556278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025940, 31.357439, 46.429497>,  <34.586033, 30.774452, 46.630707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025940, 31.357439, 46.429497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250843, 31.039270, 46.339008>,  <35.385784, 30.848370, 46.284718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250843, 31.039270, 46.339008>,  <35.025940, 31.357439, 46.429497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250843, 31.039270, 46.339008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404043, 0.502912, -0.764087,
		0.721536, 0.338213, 0.604150,
		0.562258, -0.795419, -0.226217,
		35.419521, 30.800644, 46.271145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699581, 31.637918, 46.416218>,  <35.025940, 31.357439, 46.429497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699581, 31.637918, 46.416218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676418, 31.317154, 46.178364>,  <35.662521, 31.124695, 46.035652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676418, 31.317154, 46.178364>,  <35.699581, 31.637918, 46.416218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676418, 31.317154, 46.178364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301534, 0.553762, -0.776160,
		0.951695, -0.224249, 0.209734,
		-0.057910, -0.801910, -0.594631,
		35.659046, 31.076580, 45.999973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995396, 31.929506, 45.950844>,  <35.699581, 31.637918, 46.416218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995396, 31.929506, 45.950844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864098, 31.589739, 45.785557>,  <35.785316, 31.385880, 45.686386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864098, 31.589739, 45.785557>,  <35.995396, 31.929506, 45.950844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864098, 31.589739, 45.785557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060309, 0.417714, -0.906575,
		0.942665, -0.322500, -0.085886,
		-0.328246, -0.849417, -0.413214,
		35.765625, 31.334913, 45.661594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411652, 31.684538, 45.304913>,  <35.995396, 31.929506, 45.950844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411652, 31.684538, 45.304913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063927, 31.494854, 45.249172>,  <35.855293, 31.381044, 45.215729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063927, 31.494854, 45.249172>,  <36.411652, 31.684538, 45.304913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063927, 31.494854, 45.249172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044580, 0.205567, -0.977627,
		0.492247, -0.856077, -0.157562,
		-0.869313, -0.474210, -0.139354,
		35.803131, 31.352591, 45.207367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541267, 31.373127, 44.719841>,  <36.411652, 31.684538, 45.304913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541267, 31.373127, 44.719841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142574, 31.368155, 44.751785>,  <35.903358, 31.365171, 44.770950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142574, 31.368155, 44.751785>,  <36.541267, 31.373127, 44.719841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142574, 31.368155, 44.751785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079886, 0.301290, -0.950180,
		-0.012250, -0.953452, -0.301297,
		-0.996729, -0.012430, 0.079859,
		35.843555, 31.364426, 44.775742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277790, 30.937628, 44.169067>,  <36.541267, 31.373127, 44.719841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277790, 30.937628, 44.169067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999737, 31.206150, 44.271935>,  <35.832905, 31.367264, 44.333656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999737, 31.206150, 44.271935>,  <36.277790, 30.937628, 44.169067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999737, 31.206150, 44.271935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180575, 0.183210, -0.966347,
		-0.695831, -0.718179, -0.006134,
		-0.695134, 0.671307, 0.257168,
		35.791195, 31.407541, 44.349087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784515, 30.689703, 43.798290>,  <36.277790, 30.937628, 44.169067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784515, 30.689703, 43.798290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670620, 31.064663, 43.878498>,  <35.602283, 31.289639, 43.926624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670620, 31.064663, 43.878498>,  <35.784515, 30.689703, 43.798290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670620, 31.064663, 43.878498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141073, 0.165929, -0.975995,
		-0.948169, -0.306188, 0.084996,
		-0.284735, 0.937399, 0.200523,
		35.585201, 31.345882, 43.938656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245243, 30.838610, 43.336555>,  <35.784515, 30.689703, 43.798290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245243, 30.838610, 43.336555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372395, 31.202608, 43.443035>,  <35.448685, 31.421007, 43.506924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372395, 31.202608, 43.443035>,  <35.245243, 30.838610, 43.336555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372395, 31.202608, 43.443035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074559, 0.303888, -0.949785,
		-0.945195, 0.282069, 0.164448,
		0.317879, 0.909994, 0.266203,
		35.467758, 31.475607, 43.522896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713184, 31.308159, 43.055408>,  <35.245243, 30.838610, 43.336555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713184, 31.308159, 43.055408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059380, 31.503979, 43.097878>,  <35.267097, 31.621471, 43.123360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059380, 31.503979, 43.097878>,  <34.713184, 31.308159, 43.055408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059380, 31.503979, 43.097878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150270, 0.455924, -0.877241,
		-0.477863, 0.743285, 0.468161,
		0.865486, 0.489552, 0.106176,
		35.319027, 31.650845, 43.129730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616356, 31.955559, 42.669037>,  <34.713184, 31.308159, 43.055408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616356, 31.955559, 42.669037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011333, 31.968925, 42.730793>,  <35.248322, 31.976946, 42.767845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011333, 31.968925, 42.730793>,  <34.616356, 31.955559, 42.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011333, 31.968925, 42.730793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117043, 0.501581, -0.857157,
		-0.106081, 0.864465, 0.491372,
		0.987445, 0.033417, 0.154388,
		35.307568, 31.978951, 42.777111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783737, 32.632160, 42.430687>,  <34.616356, 31.955559, 42.669037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783737, 32.632160, 42.430687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130905, 32.436054, 42.462578>,  <35.339207, 32.318390, 42.481712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130905, 32.436054, 42.462578>,  <34.783737, 32.632160, 42.430687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130905, 32.436054, 42.462578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342219, 0.473880, -0.811371,
		0.360004, 0.731490, 0.579068,
		0.867919, -0.490265, 0.079731,
		35.391281, 32.288975, 42.486496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338573, 33.092300, 42.283554>,  <34.783737, 32.632160, 42.430687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338573, 33.092300, 42.283554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477428, 32.724060, 42.212021>,  <35.560741, 32.503117, 42.169102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477428, 32.724060, 42.212021>,  <35.338573, 33.092300, 42.283554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477428, 32.724060, 42.212021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504344, 0.344031, -0.792010,
		0.790652, 0.184746, 0.583728,
		0.347142, -0.920604, -0.178833,
		35.581570, 32.447880, 42.158371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978699, 33.257881, 42.037430>,  <35.338573, 33.092300, 42.283554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978699, 33.257881, 42.037430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954002, 32.871014, 41.938816>,  <35.939182, 32.638893, 41.879646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954002, 32.871014, 41.938816>,  <35.978699, 33.257881, 42.037430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954002, 32.871014, 41.938816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560768, 0.170721, -0.810181,
		0.825668, -0.188272, 0.531814,
		-0.061743, -0.967165, -0.246536,
		35.935478, 32.580864, 41.864857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674934, 32.989063, 41.991318>,  <35.978699, 33.257881, 42.037430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674934, 32.989063, 41.991318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437435, 32.764511, 41.760731>,  <36.294933, 32.629780, 41.622379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437435, 32.764511, 41.760731>,  <36.674934, 32.989063, 41.991318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437435, 32.764511, 41.760731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687121, 0.019066, -0.726293,
		0.418715, -0.827340, 0.374414,
		-0.593753, -0.561378, -0.576466,
		36.259308, 32.596096, 41.587791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112293, 32.382862, 41.823097>,  <36.674934, 32.989063, 41.991318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112293, 32.382862, 41.823097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820343, 32.429165, 41.553616>,  <36.645172, 32.456947, 41.391926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820343, 32.429165, 41.553616>,  <37.112293, 32.382862, 41.823097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820343, 32.429165, 41.553616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682851, 0.077939, -0.726388,
		-0.031578, -0.990214, -0.135932,
		-0.729875, 0.115759, -0.673708,
		36.601379, 32.463894, 41.351501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259460, 31.950640, 41.286667>,  <37.112293, 32.382862, 41.823097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259460, 31.950640, 41.286667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017670, 32.219261, 41.115265>,  <36.872593, 32.380436, 41.012424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017670, 32.219261, 41.115265>,  <37.259460, 31.950640, 41.286667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017670, 32.219261, 41.115265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710229, 0.210687, -0.671704,
		-0.360805, -0.710369, -0.604313,
		-0.604479, 0.671555, -0.428508,
		36.836327, 32.420727, 40.986713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301739, 31.935064, 40.582294>,  <37.259460, 31.950640, 41.286667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301739, 31.935064, 40.582294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137619, 32.299740, 40.591019>,  <37.039146, 32.518547, 40.596252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137619, 32.299740, 40.591019>,  <37.301739, 31.935064, 40.582294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137619, 32.299740, 40.591019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533025, 0.259153, -0.805434,
		-0.739958, -0.318843, -0.592284,
		-0.410299, 0.911690, 0.021811,
		37.014530, 32.573246, 40.597561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212776, 32.062046, 39.870670>,  <37.301739, 31.935064, 40.582294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212776, 32.062046, 39.870670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192028, 32.417999, 40.051964>,  <37.179581, 32.631569, 40.160740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192028, 32.417999, 40.051964>,  <37.212776, 32.062046, 39.870670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192028, 32.417999, 40.051964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412357, 0.432434, -0.801849,
		-0.909545, 0.145305, -0.389378,
		-0.051868, 0.889880, 0.453236,
		37.176468, 32.684963, 40.187935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941124, 32.480640, 39.357063>,  <37.212776, 32.062046, 39.870670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941124, 32.480640, 39.357063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109947, 32.730614, 39.619762>,  <37.211239, 32.880600, 39.777382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109947, 32.730614, 39.619762>,  <36.941124, 32.480640, 39.357063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109947, 32.730614, 39.619762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517637, 0.428611, -0.740503,
		-0.744259, 0.652492, -0.142593,
		0.422056, 0.624937, 0.656751,
		37.236565, 32.918095, 39.816788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925644, 33.118187, 39.081940>,  <36.941124, 32.480640, 39.357063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925644, 33.118187, 39.081940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242695, 33.127502, 39.325645>,  <37.432926, 33.133091, 39.471870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242695, 33.127502, 39.325645>,  <36.925644, 33.118187, 39.081940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242695, 33.127502, 39.325645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569637, 0.328003, -0.753610,
		-0.217387, 0.944390, 0.246720,
		0.792626, 0.023284, 0.609263,
		37.480484, 33.134487, 39.508423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313335, 33.670593, 38.915859>,  <36.925644, 33.118187, 39.081940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313335, 33.670593, 38.915859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591213, 33.461002, 39.112980>,  <37.757938, 33.335247, 39.231251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591213, 33.461002, 39.112980>,  <37.313335, 33.670593, 38.915859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591213, 33.461002, 39.112980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716291, 0.441264, -0.540568,
		0.065789, 0.728516, 0.681862,
		0.694694, -0.523975, 0.492799,
		37.799622, 33.303810, 39.260818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919315, 34.109715, 38.858444>,  <37.313335, 33.670593, 38.915859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919315, 34.109715, 38.858444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064800, 33.754982, 38.972462>,  <38.152092, 33.542145, 39.040871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064800, 33.754982, 38.972462>,  <37.919315, 34.109715, 38.858444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064800, 33.754982, 38.972462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841835, 0.181934, -0.508148,
		0.398782, 0.424776, 0.812735,
		0.363713, -0.886829, 0.285039,
		38.173916, 33.488934, 39.057972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699574, 34.153866, 39.188530>,  <37.919315, 34.109715, 38.858444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699574, 34.153866, 39.188530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646908, 33.787205, 39.037582>,  <38.615307, 33.567207, 38.947014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646908, 33.787205, 39.037582>,  <38.699574, 34.153866, 39.188530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646908, 33.787205, 39.037582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839103, 0.099627, -0.534771,
		0.527797, -0.387061, 0.756052,
		-0.131666, -0.916656, -0.377367,
		38.607407, 33.512207, 38.924374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322998, 33.967758, 39.356030>,  <38.699574, 34.153866, 39.188530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322998, 33.967758, 39.356030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206802, 33.707188, 39.075668>,  <39.137085, 33.550846, 38.907452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206802, 33.707188, 39.075668>,  <39.322998, 33.967758, 39.356030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206802, 33.707188, 39.075668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912457, 0.032006, -0.407918,
		0.288161, -0.758039, 0.585098,
		-0.290491, -0.651423, -0.700902,
		39.119656, 33.511761, 38.865398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907951, 33.618008, 39.226555>,  <39.322998, 33.967758, 39.356030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907951, 33.618008, 39.226555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676830, 33.532509, 38.911480>,  <39.538158, 33.481209, 38.722435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676830, 33.532509, 38.911480>,  <39.907951, 33.618008, 39.226555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676830, 33.532509, 38.911480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812825, -0.063352, -0.579052,
		0.073870, -0.974832, 0.210346,
		-0.577805, -0.213749, -0.787688,
		39.503490, 33.468384, 38.675175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175945, 33.027027, 39.039001>,  <39.907951, 33.618008, 39.226555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175945, 33.027027, 39.039001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969204, 33.183598, 38.734463>,  <39.845158, 33.277538, 38.551739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969204, 33.183598, 38.734463>,  <40.175945, 33.027027, 39.039001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969204, 33.183598, 38.734463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848770, 0.118395, -0.515336,
		-0.111576, -0.912562, -0.393423,
		-0.516855, 0.391425, -0.761345,
		39.814148, 33.301025, 38.506058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492889, 32.746265, 38.534359>,  <40.175945, 33.027027, 39.039001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492889, 32.746265, 38.534359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320007, 33.077374, 38.391254>,  <40.216278, 33.276039, 38.305389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320007, 33.077374, 38.391254>,  <40.492889, 32.746265, 38.534359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320007, 33.077374, 38.391254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848288, 0.238608, -0.472729,
		-0.305944, -0.507806, -0.805314,
		-0.432209, 0.827768, -0.357765,
		40.190346, 33.325703, 38.283924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689503, 32.785229, 37.824318>,  <40.492889, 32.746265, 38.534359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689503, 32.785229, 37.824318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613342, 33.144440, 37.982960>,  <40.567646, 33.359966, 38.078144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613342, 33.144440, 37.982960>,  <40.689503, 32.785229, 37.824318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613342, 33.144440, 37.982960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839623, 0.358308, -0.408226,
		-0.508704, 0.255273, -0.822226,
		-0.190401, 0.898026, 0.396606,
		40.556221, 33.413849, 38.101940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806450, 33.507565, 37.340847>,  <40.689503, 32.785229, 37.824318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806450, 33.507565, 37.340847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885098, 33.576550, 37.726925>,  <40.932285, 33.617939, 37.958572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885098, 33.576550, 37.726925>,  <40.806450, 33.507565, 37.340847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885098, 33.576550, 37.726925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927986, 0.285050, -0.239976,
		-0.316515, 0.942870, -0.103994,
		0.196623, 0.172461, 0.965193,
		40.944084, 33.628288, 38.016483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860592, 34.238503, 37.548058>,  <40.806450, 33.507565, 37.340847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860592, 34.238503, 37.548058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079987, 34.010921, 37.793156>,  <41.211624, 33.874374, 37.940212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079987, 34.010921, 37.793156>,  <40.860592, 34.238503, 37.548058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079987, 34.010921, 37.793156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809255, 0.545595, -0.217791,
		-0.210397, 0.615321, 0.759680,
		0.548489, -0.568952, 0.612742,
		41.244534, 33.840237, 37.976978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005081, 34.907013, 37.696571>,  <40.860592, 34.238503, 37.548058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005081, 34.907013, 37.696571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148319, 35.041965, 37.348331>,  <41.234261, 35.122936, 37.139389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148319, 35.041965, 37.348331>,  <41.005081, 34.907013, 37.696571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148319, 35.041965, 37.348331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057317, 0.922731, 0.381159,
		0.931925, -0.186391, 0.311087,
		0.358094, 0.337381, -0.870599,
		41.255745, 35.143181, 37.087151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789848, 35.228416, 37.547707>,  <41.005081, 34.907013, 37.696571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789848, 35.228416, 37.547707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483261, 35.390095, 37.348045>,  <41.299309, 35.487103, 37.228249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483261, 35.390095, 37.348045>,  <41.789848, 35.228416, 37.547707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483261, 35.390095, 37.348045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023616, 0.758898, 0.650781,
		0.641848, 0.510591, -0.572126,
		-0.766468, 0.404191, -0.499156,
		41.253323, 35.511353, 37.198299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032269, 35.891956, 37.552502>,  <41.789848, 35.228416, 37.547707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032269, 35.891956, 37.552502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634907, 35.861820, 37.517918>,  <41.396492, 35.843739, 37.497166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634907, 35.861820, 37.517918>,  <42.032269, 35.891956, 37.552502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634907, 35.861820, 37.517918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111138, 0.446429, 0.887891,
		-0.028298, 0.891642, -0.451857,
		-0.993402, -0.075344, -0.086462,
		41.336887, 35.839218, 37.491978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671822, 36.442039, 37.570255>,  <42.032269, 35.891956, 37.552502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671822, 36.442039, 37.570255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014397, 36.524567, 37.380966>,  <43.219944, 36.574085, 37.267391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014397, 36.524567, 37.380966>,  <42.671822, 36.442039, 37.570255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014397, 36.524567, 37.380966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514621, 0.413807, -0.750952,
		0.040886, 0.886676, 0.460579,
		0.856442, 0.206321, -0.473221,
		43.271328, 36.586464, 37.238998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747993, 37.132698, 37.549522>,  <42.671822, 36.442039, 37.570255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747993, 37.132698, 37.549522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923309, 36.941837, 37.244831>,  <43.028500, 36.827320, 37.062016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923309, 36.941837, 37.244831>,  <42.747993, 37.132698, 37.549522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923309, 36.941837, 37.244831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707225, 0.339965, -0.619884,
		0.554740, 0.810401, -0.188452,
		0.438287, -0.477152, -0.761728,
		43.054794, 36.798691, 37.016312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787231, 37.655838, 37.080826>,  <42.747993, 37.132698, 37.549522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787231, 37.655838, 37.080826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868099, 37.350140, 36.835857>,  <42.916618, 37.166721, 36.688877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868099, 37.350140, 36.835857>,  <42.787231, 37.655838, 37.080826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868099, 37.350140, 36.835857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624926, 0.380806, -0.681509,
		0.754053, 0.520497, -0.400609,
		0.202169, -0.764245, -0.612419,
		42.928749, 37.120865, 36.652130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933300, 37.956470, 36.384079>,  <42.787231, 37.655838, 37.080826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933300, 37.956470, 36.384079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805824, 37.578526, 36.353935>,  <42.729340, 37.351761, 36.335850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805824, 37.578526, 36.353935>,  <42.933300, 37.956470, 36.384079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805824, 37.578526, 36.353935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694156, 0.286784, -0.660230,
		0.645436, -0.158095, -0.747274,
		-0.318685, -0.944861, -0.075358,
		42.710220, 37.295067, 36.331329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761066, 37.913929, 35.703381>,  <42.933300, 37.956470, 36.384079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761066, 37.913929, 35.703381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551315, 37.630337, 35.892010>,  <42.425465, 37.460182, 36.005188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551315, 37.630337, 35.892010>,  <42.761066, 37.913929, 35.703381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551315, 37.630337, 35.892010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759591, 0.139228, -0.635324,
		0.384778, -0.691346, -0.611544,
		-0.524373, -0.708983, 0.471568,
		42.394005, 37.417641, 36.033482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303810, 37.704224, 35.219090>,  <42.761066, 37.913929, 35.703381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303810, 37.704224, 35.219090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147236, 37.489937, 35.518364>,  <42.053291, 37.361362, 35.697929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147236, 37.489937, 35.518364>,  <42.303810, 37.704224, 35.219090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147236, 37.489937, 35.518364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762472, -0.266379, -0.589642,
		0.515184, -0.801278, -0.304201,
		-0.391435, -0.535719, 0.748187,
		42.029804, 37.329220, 35.742821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174797, 36.949833, 35.043480>,  <42.303810, 37.704224, 35.219090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174797, 36.949833, 35.043480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932499, 37.073345, 35.336800>,  <41.787121, 37.147453, 35.512791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932499, 37.073345, 35.336800>,  <42.174797, 36.949833, 35.043480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932499, 37.073345, 35.336800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791871, -0.323800, -0.517778,
		0.077563, -0.894320, 0.440655,
		-0.605743, 0.308781, 0.733300,
		41.750774, 37.165981, 35.556789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657436, 36.608631, 34.976273>,  <42.174797, 36.949833, 35.043480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657436, 36.608631, 34.976273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508804, 36.895947, 35.211555>,  <41.419624, 37.068336, 35.352726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508804, 36.895947, 35.211555>,  <41.657436, 36.608631, 34.976273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508804, 36.895947, 35.211555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888050, -0.090229, -0.450806,
		-0.270737, -0.689866, 0.671406,
		-0.371576, 0.718292, 0.588207,
		41.397331, 37.111435, 35.388020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947155, 36.438473, 35.232212>,  <41.657436, 36.608631, 34.976273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947155, 36.438473, 35.232212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944225, 36.834450, 35.288731>,  <40.942467, 37.072037, 35.322643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944225, 36.834450, 35.288731>,  <40.947155, 36.438473, 35.232212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944225, 36.834450, 35.288731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887388, 0.058705, -0.457270,
		-0.460965, -0.128735, 0.878031,
		-0.007322, 0.989940, 0.141299,
		40.942028, 37.131432, 35.331120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175373, 36.583336, 35.423874>,  <40.947155, 36.438473, 35.232212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175373, 36.583336, 35.423874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374981, 36.921604, 35.348164>,  <40.494747, 37.124565, 35.302738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374981, 36.921604, 35.348164>,  <40.175373, 36.583336, 35.423874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374981, 36.921604, 35.348164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862526, 0.463563, -0.202875,
		-0.083824, 0.264495, 0.960737,
		0.499022, 0.845666, -0.189276,
		40.524689, 37.175304, 35.291382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777012, 37.098171, 35.682617>,  <40.175373, 36.583336, 35.423874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777012, 37.098171, 35.682617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006222, 37.291061, 35.417557>,  <40.143745, 37.406796, 35.258522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006222, 37.291061, 35.417557>,  <39.777012, 37.098171, 35.682617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006222, 37.291061, 35.417557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791177, 0.536380, -0.293828,
		0.213742, 0.692644, 0.688882,
		0.573021, 0.482224, -0.662651,
		40.178127, 37.435730, 35.218761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606037, 37.780457, 35.849255>,  <39.777012, 37.098171, 35.682617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606037, 37.780457, 35.849255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754005, 37.765179, 35.477943>,  <39.842789, 37.756012, 35.255157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754005, 37.765179, 35.477943>,  <39.606037, 37.780457, 35.849255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754005, 37.765179, 35.477943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804557, 0.486471, -0.340637,
		0.464590, 0.872861, 0.149227,
		0.369924, -0.038195, -0.928277,
		39.864983, 37.753719, 35.199459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502235, 38.472408, 35.544350>,  <39.606037, 37.780457, 35.849255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502235, 38.472408, 35.544350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544308, 38.208485, 35.246735>,  <39.569553, 38.050133, 35.068165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544308, 38.208485, 35.246735>,  <39.502235, 38.472408, 35.544350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544308, 38.208485, 35.246735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798451, 0.389965, -0.458697,
		0.592800, 0.642325, -0.485805,
		0.105185, -0.659807, -0.744036,
		39.575863, 38.010544, 35.023525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595131, 38.874874, 34.887562>,  <39.502235, 38.472408, 35.544350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595131, 38.874874, 34.887562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458305, 38.510082, 34.796974>,  <39.376209, 38.291206, 34.742622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458305, 38.510082, 34.796974>,  <39.595131, 38.874874, 34.887562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458305, 38.510082, 34.796974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767991, 0.410200, -0.491859,
		0.541461, 0.005674, -0.840707,
		-0.342067, -0.911978, -0.226465,
		39.355686, 38.236488, 34.729034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533463, 38.917435, 34.219078>,  <39.595131, 38.874874, 34.887562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533463, 38.917435, 34.219078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287148, 38.634876, 34.358685>,  <39.139359, 38.465340, 34.442448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287148, 38.634876, 34.358685>,  <39.533463, 38.917435, 34.219078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287148, 38.634876, 34.358685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763865, 0.426624, -0.484255,
		0.193179, -0.564796, -0.802301,
		-0.615786, -0.706398, 0.349013,
		39.102413, 38.422958, 34.463390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020794, 38.706932, 33.586704>,  <39.533463, 38.917435, 34.219078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020794, 38.706932, 33.586704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819477, 38.595642, 33.913944>,  <38.698689, 38.528870, 34.110287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819477, 38.595642, 33.913944>,  <39.020794, 38.706932, 33.586704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819477, 38.595642, 33.913944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855215, 0.024840, -0.517677,
		0.123707, -0.960195, -0.250442,
		-0.503292, -0.278222, 0.818101,
		38.668488, 38.512177, 34.159374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459850, 38.344666, 33.292217>,  <39.020794, 38.706932, 33.586704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459850, 38.344666, 33.292217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354942, 38.349346, 33.678188>,  <38.292000, 38.352154, 33.909771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354942, 38.349346, 33.678188>,  <38.459850, 38.344666, 33.292217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354942, 38.349346, 33.678188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964724, -0.026897, -0.261885,
		0.022886, -0.999570, 0.018354,
		-0.262266, 0.011713, 0.964924,
		38.276264, 38.352856, 33.967667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951859, 37.885876, 33.414165>,  <38.459850, 38.344666, 33.292217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951859, 37.885876, 33.414165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893078, 38.167282, 33.692295>,  <37.857811, 38.336124, 33.859173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893078, 38.167282, 33.692295>,  <37.951859, 37.885876, 33.414165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893078, 38.167282, 33.692295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928148, 0.144958, -0.342823,
		-0.341974, -0.695739, 0.631666,
		-0.146950, 0.703516, 0.695320,
		37.848991, 38.378338, 33.900890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171288, 37.885715, 33.618427>,  <37.951859, 37.885876, 33.414165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171288, 37.885715, 33.618427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296482, 38.227074, 33.785164>,  <37.371601, 38.431889, 33.885204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296482, 38.227074, 33.785164>,  <37.171288, 37.885715, 33.618427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296482, 38.227074, 33.785164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889306, 0.417413, -0.186821,
		-0.333425, -0.312223, 0.889576,
		0.312990, 0.853396, 0.416837,
		37.390381, 38.483093, 33.910213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705360, 38.011585, 34.090469>,  <37.171288, 37.885715, 33.618427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705360, 38.011585, 34.090469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881683, 38.363338, 34.018497>,  <36.987476, 38.574390, 33.975315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881683, 38.363338, 34.018497>,  <36.705360, 38.011585, 34.090469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881683, 38.363338, 34.018497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897587, 0.432941, -0.083064,
		0.004853, 0.198115, 0.980167,
		0.440810, 0.879382, -0.179927,
		37.013927, 38.627151, 33.964520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266720, 38.476040, 34.386578>,  <36.705360, 38.011585, 34.090469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266720, 38.476040, 34.386578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487141, 38.710415, 34.148918>,  <36.619392, 38.851040, 34.006321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487141, 38.710415, 34.148918>,  <36.266720, 38.476040, 34.386578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487141, 38.710415, 34.148918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828092, 0.471835, -0.302714,
		0.102971, 0.658824, 0.745217,
		0.551055, 0.585937, -0.594152,
		36.652458, 38.886196, 33.970673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126644, 39.177639, 34.615612>,  <36.266720, 38.476040, 34.386578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126644, 39.177639, 34.615612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227493, 39.151131, 34.229443>,  <36.288002, 39.135227, 33.997742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227493, 39.151131, 34.229443>,  <36.126644, 39.177639, 34.615612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227493, 39.151131, 34.229443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882271, 0.394098, -0.257457,
		0.397533, 0.916676, 0.040895,
		0.252121, -0.066267, -0.965424,
		36.303131, 39.131252, 33.939816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669682, 39.607258, 34.439495>,  <36.126644, 39.177639, 34.615612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669682, 39.607258, 34.439495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805553, 39.448982, 34.098194>,  <35.887077, 39.354015, 33.893414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805553, 39.448982, 34.098194>,  <35.669682, 39.607258, 34.439495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805553, 39.448982, 34.098194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857452, 0.242529, -0.453825,
		0.386513, 0.885781, -0.256903,
		0.339683, -0.395691, -0.853255,
		35.907459, 39.330276, 33.842216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878471, 40.103008, 33.920593>,  <35.669682, 39.607258, 34.439495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878471, 40.103008, 33.920593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723282, 39.757122, 33.793003>,  <35.630169, 39.549591, 33.716450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723282, 39.757122, 33.793003>,  <35.878471, 40.103008, 33.920593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723282, 39.757122, 33.793003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878736, 0.451440, -0.155000,
		0.278028, 0.220156, -0.935003,
		-0.387974, -0.864715, -0.318972,
		35.606888, 39.497707, 33.697311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564213, 40.157967, 33.249218>,  <35.878471, 40.103008, 33.920593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564213, 40.157967, 33.249218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387169, 39.870171, 33.463295>,  <35.280941, 39.697495, 33.591740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387169, 39.870171, 33.463295>,  <35.564213, 40.157967, 33.249218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387169, 39.870171, 33.463295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868423, 0.492665, -0.055879,
		-0.223467, -0.489507, -0.842879,
		-0.442610, -0.719489, 0.535194,
		35.254387, 39.654324, 33.623852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971142, 40.536777, 32.850971>,  <35.564213, 40.157967, 33.249218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971142, 40.536777, 32.850971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897839, 40.756069, 33.177372>,  <35.853855, 40.887646, 33.373211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897839, 40.756069, 33.177372>,  <35.971142, 40.536777, 32.850971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897839, 40.756069, 33.177372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912397, -0.214176, 0.348799,
		0.365991, 0.808438, -0.460954,
		-0.183257, 0.548230, 0.816003,
		35.842861, 40.920540, 33.422173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523533, 41.036854, 32.887386>,  <35.971142, 40.536777, 32.850971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523533, 41.036854, 32.887386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359287, 41.007874, 33.250957>,  <36.260738, 40.990486, 33.469101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359287, 41.007874, 33.250957>,  <36.523533, 41.036854, 32.887386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359287, 41.007874, 33.250957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891986, -0.238638, 0.383944,
		0.189087, 0.968402, 0.162613,
		-0.410618, -0.072450, 0.908925,
		36.236103, 40.986137, 33.523636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077946, 40.855457, 33.210197>,  <36.523533, 41.036854, 32.887386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077946, 40.855457, 33.210197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790348, 40.832958, 33.487289>,  <36.617790, 40.819458, 33.653545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790348, 40.832958, 33.487289>,  <37.077946, 40.855457, 33.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790348, 40.832958, 33.487289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650181, -0.406618, 0.641815,
		0.245577, 0.911865, 0.328928,
		-0.718997, -0.056248, 0.692733,
		36.574650, 40.816086, 33.695110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760937, 40.797043, 32.916294>,  <37.077946, 40.855457, 33.210197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760937, 40.797043, 32.916294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016068, 40.995514, 32.680672>,  <38.169144, 41.114597, 32.539299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016068, 40.995514, 32.680672>,  <37.760937, 40.797043, 32.916294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016068, 40.995514, 32.680672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770181, -0.408847, 0.489556,
		0.002075, -0.765930, -0.642921,
		0.637822, 0.496181, -0.589056,
		38.207413, 41.144367, 32.503956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263458, 40.355766, 32.601227>,  <37.760937, 40.797043, 32.916294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263458, 40.355766, 32.601227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447052, 40.708870, 32.641350>,  <38.557209, 40.920734, 32.665424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447052, 40.708870, 32.641350>,  <38.263458, 40.355766, 32.601227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447052, 40.708870, 32.641350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799779, -0.459702, 0.386039,
		0.386893, -0.096962, -0.917012,
		0.458984, 0.882764, 0.100308,
		38.584747, 40.973698, 32.671444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906128, 40.443447, 32.289120>,  <38.263458, 40.355766, 32.601227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906128, 40.443447, 32.289120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903625, 40.648258, 32.632698>,  <38.902122, 40.771145, 32.838844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903625, 40.648258, 32.632698>,  <38.906128, 40.443447, 32.289120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903625, 40.648258, 32.632698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882965, -0.400373, 0.245100,
		0.469397, 0.759952, -0.449600,
		-0.006257, 0.512030, 0.858945,
		38.901749, 40.801868, 32.890381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364662, 40.959900, 32.335926>,  <38.906128, 40.443447, 32.289120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364662, 40.959900, 32.335926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293987, 40.804192, 32.697533>,  <39.251583, 40.710766, 32.914497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293987, 40.804192, 32.697533>,  <39.364662, 40.959900, 32.335926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293987, 40.804192, 32.697533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977393, -0.177750, 0.114487,
		0.116123, 0.903810, 0.411877,
		-0.176686, -0.389272, 0.904019,
		39.240982, 40.687408, 32.968739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790085, 41.261631, 32.692055>,  <39.364662, 40.959900, 32.335926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790085, 41.261631, 32.692055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733105, 40.902691, 32.859135>,  <39.698917, 40.687328, 32.959385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733105, 40.902691, 32.859135>,  <39.790085, 41.261631, 32.692055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733105, 40.902691, 32.859135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988877, -0.110785, 0.099241,
		-0.042778, 0.427193, 0.903148,
		-0.142450, -0.897348, 0.417702,
		39.690369, 40.633488, 32.984444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305279, 41.266148, 33.259693>,  <39.790085, 41.261631, 32.692055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305279, 41.266148, 33.259693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202240, 40.891483, 33.164772>,  <40.140415, 40.666687, 33.107819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202240, 40.891483, 33.164772>,  <40.305279, 41.266148, 33.259693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202240, 40.891483, 33.164772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958105, -0.279429, 0.062885,
		-0.125212, -0.211166, 0.969397,
		-0.257599, -0.936658, -0.237307,
		40.124962, 40.610485, 33.093578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656586, 40.827618, 33.700386>,  <40.305279, 41.266148, 33.259693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656586, 40.827618, 33.700386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560158, 40.559425, 33.419720>,  <40.502300, 40.398510, 33.251320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560158, 40.559425, 33.419720>,  <40.656586, 40.827618, 33.700386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560158, 40.559425, 33.419720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919220, -0.389664, 0.056529,
		-0.311316, -0.631360, 0.710258,
		-0.241072, -0.670482, -0.701668,
		40.487835, 40.358280, 33.209221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699703, 40.201363, 33.993542>,  <40.656586, 40.827618, 33.700386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699703, 40.201363, 33.993542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755802, 40.167889, 33.598911>,  <40.789463, 40.147804, 33.362133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755802, 40.167889, 33.598911>,  <40.699703, 40.201363, 33.993542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755802, 40.167889, 33.598911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953767, -0.256091, 0.157308,
		-0.265817, -0.963024, 0.043901,
		0.140249, -0.083687, -0.986574,
		40.797878, 40.142784, 33.302940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903419, 39.472900, 33.902298>,  <40.699703, 40.201363, 33.993542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903419, 39.472900, 33.902298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992779, 39.677277, 33.570267>,  <41.046394, 39.799904, 33.371048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992779, 39.677277, 33.570267>,  <40.903419, 39.472900, 33.902298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992779, 39.677277, 33.570267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878834, -0.473924, -0.055194,
		-0.421595, -0.717172, -0.554907,
		0.223400, 0.510941, -0.830079,
		41.059799, 39.830559, 33.321243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972664, 38.937317, 33.359283>,  <40.903419, 39.472900, 33.902298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972664, 38.937317, 33.359283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178547, 39.266743, 33.263943>,  <41.302078, 39.464397, 33.206738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178547, 39.266743, 33.263943>,  <40.972664, 38.937317, 33.359283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178547, 39.266743, 33.263943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839816, -0.540260, -0.053181,
		-0.172569, -0.172797, -0.969722,
		0.514712, 0.823566, -0.238350,
		41.332962, 39.513813, 33.192436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570351, 38.731327, 33.047268>,  <40.972664, 38.937317, 33.359283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570351, 38.731327, 33.047268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690868, 39.105877, 33.119297>,  <41.763180, 39.330608, 33.162514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690868, 39.105877, 33.119297>,  <41.570351, 38.731327, 33.047268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690868, 39.105877, 33.119297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944964, -0.318473, 0.074951,
		0.127531, 0.147581, -0.980794,
		0.301295, 0.936373, 0.180073,
		41.781258, 39.386787, 33.173321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982338, 38.932182, 32.511055>,  <41.570351, 38.731327, 33.047268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982338, 38.932182, 32.511055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065136, 39.182518, 32.811848>,  <42.114815, 39.332722, 32.992321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065136, 39.182518, 32.811848>,  <41.982338, 38.932182, 32.511055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065136, 39.182518, 32.811848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882680, -0.450957, 0.132340,
		0.421934, 0.636363, -0.645766,
		0.206996, 0.625844, 0.751979,
		42.127235, 39.370270, 33.037441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618988, 39.156342, 32.426277>,  <41.982338, 38.932182, 32.511055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618988, 39.156342, 32.426277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597157, 39.240025, 32.816818>,  <42.584057, 39.290234, 33.051144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597157, 39.240025, 32.816818>,  <42.618988, 39.156342, 32.426277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597157, 39.240025, 32.816818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914380, -0.382373, 0.133042,
		0.401162, 0.900014, -0.170424,
		-0.054574, 0.209203, 0.976348,
		42.580784, 39.302784, 33.109722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272678, 39.082485, 32.691120>,  <42.618988, 39.156342, 32.426277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272678, 39.082485, 32.691120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100079, 39.116879, 33.050323>,  <42.996517, 39.137516, 33.265846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100079, 39.116879, 33.050323>,  <43.272678, 39.082485, 32.691120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100079, 39.116879, 33.050323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820773, -0.375664, 0.430359,
		0.374354, 0.922758, 0.091522,
		-0.431499, 0.085988, 0.898006,
		42.970631, 39.142673, 33.319725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829647, 39.459797, 33.189449>,  <43.272678, 39.082485, 32.691120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829647, 39.459797, 33.189449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550930, 39.241604, 33.375751>,  <43.383698, 39.110687, 33.487534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550930, 39.241604, 33.375751>,  <43.829647, 39.459797, 33.189449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550930, 39.241604, 33.375751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696767, -0.668911, 0.258987,
		0.170275, 0.504982, 0.846168,
		-0.696795, -0.545482, 0.465753,
		43.341892, 39.077961, 33.515476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998642, 39.463589, 33.896286>,  <43.829647, 39.459797, 33.189449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998642, 39.463589, 33.896286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763699, 39.140732, 33.872555>,  <43.622730, 38.947018, 33.858315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763699, 39.140732, 33.872555>,  <43.998642, 39.463589, 33.896286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763699, 39.140732, 33.872555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652385, -0.515574, 0.555497,
		-0.478956, 0.287572, 0.829399,
		-0.587362, -0.807147, -0.059330,
		43.587490, 38.898586, 33.854755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965542, 39.340630, 34.603539>,  <43.998642, 39.463589, 33.896286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965542, 39.340630, 34.603539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862602, 39.001778, 34.417572>,  <43.800838, 38.798466, 34.305992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862602, 39.001778, 34.417572>,  <43.965542, 39.340630, 34.603539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862602, 39.001778, 34.417572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552386, -0.523726, 0.648522,
		-0.792870, -0.089918, 0.602721,
		-0.257347, -0.847128, -0.464916,
		43.785397, 38.747639, 34.278099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833633, 38.872952, 35.091595>,  <43.965542, 39.340630, 34.603539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833633, 38.872952, 35.091595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873203, 38.622208, 34.782463>,  <43.896946, 38.471760, 34.596985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873203, 38.622208, 34.782463>,  <43.833633, 38.872952, 35.091595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873203, 38.622208, 34.782463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501724, -0.639272, 0.582755,
		-0.859353, -0.445393, 0.251273,
		0.098923, -0.626862, -0.772825,
		43.902882, 38.434151, 34.550617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749329, 38.255146, 35.437386>,  <43.833633, 38.872952, 35.091595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749329, 38.255146, 35.437386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924610, 38.141026, 35.096428>,  <44.029778, 38.072556, 34.891853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924610, 38.141026, 35.096428>,  <43.749329, 38.255146, 35.437386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924610, 38.141026, 35.096428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442063, -0.757289, 0.480722,
		-0.782663, -0.587467, -0.205723,
		0.438199, -0.285301, -0.852400,
		44.056072, 38.055435, 34.840710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698662, 37.530216, 35.426987>,  <43.749329, 38.255146, 35.437386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698662, 37.530216, 35.426987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003372, 37.612141, 35.181141>,  <44.186199, 37.661297, 35.033634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003372, 37.612141, 35.181141>,  <43.698662, 37.530216, 35.426987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003372, 37.612141, 35.181141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583467, -0.629184, 0.513511,
		-0.281531, -0.749786, -0.598799,
		0.761778, 0.204811, -0.614610,
		44.231907, 37.673584, 34.996758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900238, 36.904530, 35.234165>,  <43.698662, 37.530216, 35.426987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900238, 36.904530, 35.234165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202847, 37.152370, 35.150486>,  <44.384411, 37.301075, 35.100277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202847, 37.152370, 35.150486>,  <43.900238, 36.904530, 35.234165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202847, 37.152370, 35.150486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618198, -0.573219, 0.537821,
		0.213318, -0.536201, -0.816691,
		0.756523, 0.619603, -0.209201,
		44.429802, 37.338253, 35.087727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417168, 36.472771, 34.842609>,  <43.900238, 36.904530, 35.234165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417168, 36.472771, 34.842609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589760, 36.785332, 35.022934>,  <44.693314, 36.972870, 35.131130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589760, 36.785332, 35.022934>,  <44.417168, 36.472771, 34.842609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589760, 36.785332, 35.022934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720936, -0.599071, 0.348373,
		0.542289, 0.174691, -0.821830,
		0.431477, 0.781407, 0.450811,
		44.719204, 37.019753, 35.158176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195751, 36.373028, 34.808563>,  <44.417168, 36.472771, 34.842609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195751, 36.373028, 34.808563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177677, 36.639446, 35.106380>,  <45.166832, 36.799297, 35.285069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177677, 36.639446, 35.106380>,  <45.195751, 36.373028, 34.808563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177677, 36.639446, 35.106380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805086, -0.416971, 0.421867,
		0.591435, 0.618481, -0.517384,
		-0.045182, 0.666046, 0.744541,
		45.164124, 36.839260, 35.329742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866570, 36.345421, 35.009159>,  <45.195751, 36.373028, 34.808563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866570, 36.345421, 35.009159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688942, 36.541348, 35.309261>,  <45.582367, 36.658901, 35.489323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688942, 36.541348, 35.309261>,  <45.866570, 36.345421, 35.009159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688942, 36.541348, 35.309261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714151, -0.312197, 0.626515,
		0.541104, 0.814012, -0.211165,
		-0.444066, 0.489814, 0.750259,
		45.555721, 36.688293, 35.534340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283867, 36.826786, 35.316845>,  <45.866570, 36.345421, 35.009159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283867, 36.826786, 35.316845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033833, 36.693378, 35.599129>,  <45.883812, 36.613335, 35.768497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033833, 36.693378, 35.599129>,  <46.283867, 36.826786, 35.316845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033833, 36.693378, 35.599129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778080, -0.194326, 0.597351,
		-0.062092, 0.922497, 0.380979,
		-0.625089, -0.333523, 0.705710,
		45.846306, 36.593323, 35.810841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550892, 36.211369, 35.140179>,  <46.283867, 36.826786, 35.316845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550892, 36.211369, 35.140179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898907, 36.096027, 35.300121>,  <47.107716, 36.026825, 35.396088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898907, 36.096027, 35.300121>,  <46.550892, 36.211369, 35.140179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.898907, 36.096027, 35.300121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286270, -0.955845, -0.066406,
		0.401347, -0.056691, -0.914170,
		0.870040, -0.288351, 0.399854,
		47.159920, 36.009521, 35.420078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.959042, 35.800137, 34.681580>,  <46.550892, 36.211369, 35.140179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.959042, 35.800137, 34.681580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.025639, 35.697098, 35.062298>,  <47.065598, 35.635273, 35.290730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.025639, 35.697098, 35.062298>,  <46.959042, 35.800137, 34.681580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.025639, 35.697098, 35.062298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003282, -0.965123, -0.261777,
		0.986036, 0.046709, -0.159845,
		0.166497, -0.257597, 0.951800,
		47.075588, 35.619820, 35.347839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703449, 35.550556, 34.849995>,  <46.959042, 35.800137, 34.681580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703449, 35.550556, 34.849995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392086, 35.409569, 35.057781>,  <47.205269, 35.324978, 35.182453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392086, 35.409569, 35.057781>,  <47.703449, 35.550556, 34.849995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.392086, 35.409569, 35.057781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134793, -0.902041, -0.410064,
		0.613116, -0.249177, 0.749666,
		-0.778409, -0.352466, 0.519469,
		47.158562, 35.303829, 35.213623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.794697, 34.876526, 34.531273>,  <47.703449, 35.550556, 34.849995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.794697, 34.876526, 34.531273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681183, 34.838139, 34.912903>,  <47.613075, 34.815105, 35.141880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681183, 34.838139, 34.912903>,  <47.794697, 34.876526, 34.531273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.681183, 34.838139, 34.912903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845553, -0.494289, 0.201788,
		0.452223, 0.863984, 0.221416,
		-0.283786, -0.095966, 0.954074,
		47.596046, 34.809349, 35.199123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.942516, 35.135502, 46.865253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555748, 35.198597, 46.785080>,  <34.323685, 35.236454, 46.736977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555748, 35.198597, 46.785080>,  <34.942516, 35.135502, 46.865253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555748, 35.198597, 46.785080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219541, 0.114678, -0.968840,
		-0.129841, -0.980799, -0.145516,
		-0.966925, 0.157742, -0.200435,
		34.265671, 35.245918, 46.724949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800217, 34.733013, 46.272720>,  <34.942516, 35.135502, 46.865253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800217, 34.733013, 46.272720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552246, 35.046875, 46.272217>,  <34.403461, 35.235191, 46.271915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552246, 35.046875, 46.272217>,  <34.800217, 34.733013, 46.272720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552246, 35.046875, 46.272217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168864, 0.131846, -0.976781,
		-0.766271, -0.605749, -0.214235,
		-0.619930, 0.784656, -0.001259,
		34.366268, 35.282272, 46.271839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250412, 34.627708, 45.693359>,  <34.800217, 34.733013, 46.272720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250412, 34.627708, 45.693359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.195168, 35.013771, 45.782257>,  <34.162022, 35.245411, 45.835594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.195168, 35.013771, 45.782257>,  <34.250412, 34.627708, 45.693359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195168, 35.013771, 45.782257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015306, 0.226447, -0.973903,
		-0.990299, -0.131103, -0.046047,
		-0.138108, 0.965160, 0.222244,
		34.153736, 35.303318, 45.848930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571770, 34.963745, 45.334221>,  <34.250412, 34.627708, 45.693359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571770, 34.963745, 45.334221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.838474, 35.246937, 45.427341>,  <33.998497, 35.416851, 45.483215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.838474, 35.246937, 45.427341>,  <33.571770, 34.963745, 45.334221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838474, 35.246937, 45.427341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015948, 0.298747, -0.954199,
		-0.745099, 0.639938, 0.187903,
		0.666763, 0.707976, 0.232802,
		34.038502, 35.459328, 45.497181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434109, 35.550529, 44.991074>,  <33.571770, 34.963745, 45.334221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434109, 35.550529, 44.991074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816242, 35.633705, 45.075073>,  <34.045521, 35.683609, 45.125473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816242, 35.633705, 45.075073>,  <33.434109, 35.550529, 44.991074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816242, 35.633705, 45.075073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163999, 0.218133, -0.962041,
		-0.245854, 0.953509, 0.174288,
		0.955332, 0.207939, 0.210003,
		34.102840, 35.696087, 45.138073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525066, 36.225830, 44.670731>,  <33.434109, 35.550529, 44.991074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525066, 36.225830, 44.670731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.889580, 36.083500, 44.753639>,  <34.108288, 35.998104, 44.803383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.889580, 36.083500, 44.753639>,  <33.525066, 36.225830, 44.670731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889580, 36.083500, 44.753639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354282, 0.420908, -0.835057,
		0.209891, 0.834402, 0.509627,
		0.911279, -0.355822, 0.207269,
		34.162964, 35.976753, 44.815819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014111, 36.796803, 44.646011>,  <33.525066, 36.225830, 44.670731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014111, 36.796803, 44.646011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.230747, 36.468849, 44.571743>,  <34.360729, 36.272076, 44.527184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.230747, 36.468849, 44.571743>,  <34.014111, 36.796803, 44.646011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230747, 36.468849, 44.571743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426218, 0.458188, -0.780001,
		0.724582, 0.343303, 0.597598,
		0.541589, -0.819882, -0.185672,
		34.393223, 36.222885, 44.516041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633110, 37.115990, 44.446178>,  <34.014111, 36.796803, 44.646011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633110, 37.115990, 44.446178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661690, 36.736256, 44.323761>,  <34.678837, 36.508415, 44.250309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661690, 36.736256, 44.323761>,  <34.633110, 37.115990, 44.446178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661690, 36.736256, 44.323761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385468, 0.309271, -0.869348,
		0.919951, -0.055856, 0.388034,
		0.071450, -0.949332, -0.306045,
		34.683125, 36.451454, 44.231949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186020, 37.125851, 44.145039>,  <34.633110, 37.115990, 44.446178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186020, 37.125851, 44.145039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021549, 36.795082, 43.991600>,  <34.922867, 36.596622, 43.899536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021549, 36.795082, 43.991600>,  <35.186020, 37.125851, 44.145039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021549, 36.795082, 43.991600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374242, 0.230577, -0.898208,
		0.831191, -0.512877, 0.214659,
		-0.411174, -0.826917, -0.383593,
		34.898197, 36.547009, 43.876522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723862, 36.764580, 43.896904>,  <35.186020, 37.125851, 44.145039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723862, 36.764580, 43.896904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388020, 36.649960, 43.712318>,  <35.186512, 36.581188, 43.601566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388020, 36.649960, 43.712318>,  <35.723862, 36.764580, 43.896904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388020, 36.649960, 43.712318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388396, 0.277217, -0.878806,
		0.379748, -0.917082, -0.121458,
		-0.839607, -0.286551, -0.461464,
		35.136139, 36.563995, 43.573879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888824, 36.295063, 43.514965>,  <35.723862, 36.764580, 43.896904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888824, 36.295063, 43.514965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555889, 36.415524, 43.328835>,  <35.356129, 36.487801, 43.217155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555889, 36.415524, 43.328835>,  <35.888824, 36.295063, 43.514965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555889, 36.415524, 43.328835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466348, -0.073235, -0.881564,
		-0.299563, -0.950760, -0.079486,
		-0.832335, 0.301152, -0.465324,
		35.306190, 36.505867, 43.189236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894596, 35.922199, 42.934235>,  <35.888824, 36.295063, 43.514965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894596, 35.922199, 42.934235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623287, 36.190403, 42.813992>,  <35.460503, 36.351326, 42.741848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623287, 36.190403, 42.813992>,  <35.894596, 35.922199, 42.934235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623287, 36.190403, 42.813992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450885, 0.056747, -0.890776,
		-0.580217, -0.739726, -0.340813,
		-0.678270, 0.670511, -0.300606,
		35.419807, 36.391556, 42.723808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694168, 35.716949, 42.283825>,  <35.894596, 35.922199, 42.934235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694168, 35.716949, 42.283825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605186, 36.106861, 42.290943>,  <35.551796, 36.340809, 42.295216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605186, 36.106861, 42.290943>,  <35.694168, 35.716949, 42.283825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605186, 36.106861, 42.290943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415681, 0.111342, -0.902670,
		-0.881887, -0.193403, -0.429966,
		-0.222453, 0.974781, 0.017797,
		35.538452, 36.399296, 42.296284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190670, 35.868847, 41.719498>,  <35.694168, 35.716949, 42.283825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190670, 35.868847, 41.719498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393135, 36.191589, 41.841343>,  <35.514614, 36.385235, 41.914452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393135, 36.191589, 41.841343>,  <35.190670, 35.868847, 41.719498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393135, 36.191589, 41.841343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314304, 0.156334, -0.936361,
		-0.803129, 0.569688, -0.174468,
		0.506159, 0.806855, 0.304612,
		35.544983, 36.433647, 41.932728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141834, 36.320862, 41.169849>,  <35.190670, 35.868847, 41.719498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141834, 36.320862, 41.169849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447269, 36.486565, 41.367970>,  <35.630531, 36.585987, 41.486843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447269, 36.486565, 41.367970>,  <35.141834, 36.320862, 41.169849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447269, 36.486565, 41.367970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416141, 0.270807, -0.868038,
		-0.493724, 0.868938, 0.034395,
		0.763586, 0.414258, 0.495305,
		35.676346, 36.610844, 41.516560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363861, 37.078476, 40.850739>,  <35.141834, 36.320862, 41.169849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363861, 37.078476, 40.850739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665943, 36.896809, 41.039799>,  <35.847191, 36.787807, 41.153236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665943, 36.896809, 41.039799>,  <35.363861, 37.078476, 40.850739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665943, 36.896809, 41.039799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611445, 0.228246, -0.757653,
		0.236220, 0.861183, 0.450070,
		0.755205, -0.454167, 0.472650,
		35.892506, 36.760559, 41.181595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781170, 37.478546, 40.583828>,  <35.363861, 37.078476, 40.850739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781170, 37.478546, 40.583828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003704, 37.182392, 40.734730>,  <36.137222, 37.004700, 40.825272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003704, 37.182392, 40.734730>,  <35.781170, 37.478546, 40.583828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003704, 37.182392, 40.734730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674417, 0.137088, -0.725513,
		0.485445, 0.658051, 0.575597,
		0.556332, -0.740389, 0.377252,
		36.170605, 36.960274, 40.847904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418957, 37.717976, 40.456547>,  <35.781170, 37.478546, 40.583828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418957, 37.717976, 40.456547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490715, 37.334831, 40.546284>,  <36.533768, 37.104946, 40.600124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490715, 37.334831, 40.546284>,  <36.418957, 37.717976, 40.456547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490715, 37.334831, 40.546284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728413, -0.023947, -0.684719,
		0.661236, 0.286243, 0.693420,
		0.179391, -0.957858, 0.224338,
		36.544533, 37.047474, 40.613586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982796, 37.666798, 40.554024>,  <36.418957, 37.717976, 40.456547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982796, 37.666798, 40.554024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947563, 37.274597, 40.483746>,  <36.926426, 37.039276, 40.441578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947563, 37.274597, 40.483746>,  <36.982796, 37.666798, 40.554024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947563, 37.274597, 40.483746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739023, 0.053940, -0.671518,
		0.667898, -0.188987, 0.719859,
		-0.088079, -0.980497, -0.175692,
		36.921139, 36.980450, 40.431038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615253, 37.503574, 40.578087>,  <36.982796, 37.666798, 40.554024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615253, 37.503574, 40.578087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410065, 37.226460, 40.375343>,  <37.286953, 37.060192, 40.253696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410065, 37.226460, 40.375343>,  <37.615253, 37.503574, 40.578087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410065, 37.226460, 40.375343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748730, -0.072308, -0.658920,
		0.419842, -0.717507, 0.555803,
		-0.512968, -0.692788, -0.506861,
		37.256176, 37.018623, 40.223286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098385, 37.058861, 40.342857>,  <37.615253, 37.503574, 40.578087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098385, 37.058861, 40.342857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767239, 37.033955, 40.119877>,  <37.568550, 37.019012, 39.986088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767239, 37.033955, 40.119877>,  <38.098385, 37.058861, 40.342857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767239, 37.033955, 40.119877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531216, 0.232095, -0.814826,
		0.180114, -0.970699, -0.159070,
		-0.827870, -0.062261, -0.557454,
		37.518879, 37.015274, 39.952641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187351, 36.591785, 39.782799>,  <38.098385, 37.058861, 40.342857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187351, 36.591785, 39.782799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932816, 36.888828, 39.699268>,  <37.780094, 37.067055, 39.649151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932816, 36.888828, 39.699268>,  <38.187351, 36.591785, 39.782799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932816, 36.888828, 39.699268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677767, 0.408944, -0.611061,
		-0.368382, -0.530374, -0.763543,
		-0.636338, 0.742609, -0.208823,
		37.741913, 37.111610, 39.636623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961582, 35.864906, 39.886929>,  <38.187351, 36.591785, 39.782799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961582, 35.864906, 39.886929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311211, 35.687683, 39.807240>,  <38.520988, 35.581348, 39.759426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311211, 35.687683, 39.807240>,  <37.961582, 35.864906, 39.886929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311211, 35.687683, 39.807240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211942, -0.716811, 0.664276,
		-0.437120, -0.538403, -0.720450,
		0.874074, -0.443062, -0.199222,
		38.573433, 35.554764, 39.747471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790699, 35.142727, 39.823780>,  <37.961582, 35.864906, 39.886929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790699, 35.142727, 39.823780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175495, 35.208992, 39.910622>,  <38.406372, 35.248753, 39.962727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175495, 35.208992, 39.910622>,  <37.790699, 35.142727, 39.823780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175495, 35.208992, 39.910622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045901, -0.685602, 0.726528,
		0.269209, -0.708876, -0.651936,
		0.961987, 0.165663, 0.217109,
		38.464092, 35.258690, 39.975754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132046, 34.479023, 39.684303>,  <37.790699, 35.142727, 39.823780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132046, 34.479023, 39.684303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354839, 34.700794, 39.931652>,  <38.488514, 34.833855, 40.080063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354839, 34.700794, 39.931652>,  <38.132046, 34.479023, 39.684303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354839, 34.700794, 39.931652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060655, -0.769723, 0.635490,
		0.828305, -0.316451, -0.462352,
		0.556984, 0.554424, 0.618371,
		38.521935, 34.867123, 40.117165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629730, 34.001385, 39.942104>,  <38.132046, 34.479023, 39.684303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629730, 34.001385, 39.942104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671810, 34.313026, 40.189308>,  <38.697060, 34.500011, 40.337631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671810, 34.313026, 40.189308>,  <38.629730, 34.001385, 39.942104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671810, 34.313026, 40.189308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215849, -0.624532, 0.750579,
		0.970743, 0.054435, -0.233870,
		0.105202, 0.779100, 0.618010,
		38.703369, 34.546757, 40.374710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259476, 33.886951, 40.361561>,  <38.629730, 34.001385, 39.942104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259476, 33.886951, 40.361561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033958, 34.151581, 40.559330>,  <38.898647, 34.310360, 40.677990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033958, 34.151581, 40.559330>,  <39.259476, 33.886951, 40.361561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033958, 34.151581, 40.559330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190592, -0.478262, 0.857286,
		0.803624, 0.577566, 0.143550,
		-0.563794, 0.661577, 0.494422,
		38.864819, 34.350052, 40.707657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646332, 34.047119, 40.962830>,  <39.259476, 33.886951, 40.361561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646332, 34.047119, 40.962830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.275341, 34.150867, 41.070545>,  <39.052746, 34.213116, 41.135174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.275341, 34.150867, 41.070545>,  <39.646332, 34.047119, 40.962830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275341, 34.150867, 41.070545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152321, -0.395635, 0.905688,
		0.341450, 0.881022, 0.327434,
		-0.927475, 0.259372, 0.269287,
		38.997097, 34.228680, 41.151333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764023, 34.349087, 41.504612>,  <39.646332, 34.047119, 40.962830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764023, 34.349087, 41.504612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366749, 34.310215, 41.530354>,  <39.128384, 34.286892, 41.545799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366749, 34.310215, 41.530354>,  <39.764023, 34.349087, 41.504612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366749, 34.310215, 41.530354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084745, -0.222999, 0.971128,
		-0.080023, 0.969963, 0.229714,
		-0.993184, -0.097179, 0.064354,
		39.068794, 34.281059, 41.549660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531445, 34.769318, 42.072655>,  <39.764023, 34.349087, 41.504612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531445, 34.769318, 42.072655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.251423, 34.490993, 42.008434>,  <39.083412, 34.323997, 41.969902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.251423, 34.490993, 42.008434>,  <39.531445, 34.769318, 42.072655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251423, 34.490993, 42.008434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089382, -0.137678, 0.986436,
		-0.708475, 0.704907, 0.034189,
		-0.700052, -0.695809, -0.160548,
		39.041409, 34.282249, 41.960270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937786, 34.954105, 42.477638>,  <39.531445, 34.769318, 42.072655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937786, 34.954105, 42.477638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857464, 34.566181, 42.422283>,  <38.809269, 34.333427, 42.389069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857464, 34.566181, 42.422283>,  <38.937786, 34.954105, 42.477638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857464, 34.566181, 42.422283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237681, -0.088812, 0.967275,
		-0.950360, 0.227128, -0.212671,
		-0.200808, -0.969807, -0.138387,
		38.797222, 34.275238, 42.380768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152164, 34.766727, 42.613811>,  <38.937786, 34.954105, 42.477638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152164, 34.766727, 42.613811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359707, 34.425797, 42.640110>,  <38.484230, 34.221237, 42.655888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359707, 34.425797, 42.640110>,  <38.152164, 34.766727, 42.613811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359707, 34.425797, 42.640110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525391, -0.257270, 0.811034,
		-0.674356, -0.455349, -0.581293,
		0.518852, -0.852332, 0.065745,
		38.515362, 34.170097, 42.659832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621429, 34.339870, 42.761166>,  <38.152164, 34.766727, 42.613811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621429, 34.339870, 42.761166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931782, 34.103722, 42.850136>,  <38.117992, 33.962032, 42.903519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931782, 34.103722, 42.850136>,  <37.621429, 34.339870, 42.761166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931782, 34.103722, 42.850136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495343, -0.351735, 0.794304,
		-0.390698, -0.726461, -0.565340,
		0.775880, -0.590369, 0.222425,
		38.164547, 33.926613, 42.916862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392368, 33.625557, 42.884277>,  <37.621429, 34.339870, 42.761166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392368, 33.625557, 42.884277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745842, 33.662754, 43.067776>,  <37.957928, 33.685074, 43.177876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745842, 33.662754, 43.067776>,  <37.392368, 33.625557, 42.884277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745842, 33.662754, 43.067776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411603, -0.312321, 0.856177,
		0.222895, -0.945414, -0.237718,
		0.883686, 0.092992, 0.458750,
		38.010948, 33.690651, 43.205402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504494, 32.974480, 43.328876>,  <37.392368, 33.625557, 42.884277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504494, 32.974480, 43.328876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719101, 33.274681, 43.483227>,  <37.847866, 33.454800, 43.575836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719101, 33.274681, 43.483227>,  <37.504494, 32.974480, 43.328876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719101, 33.274681, 43.483227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483080, -0.101788, 0.869639,
		0.691942, -0.652984, 0.307941,
		0.536516, 0.750501, 0.385875,
		37.880054, 33.499832, 43.598988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753517, 32.730164, 43.891750>,  <37.504494, 32.974480, 43.328876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753517, 32.730164, 43.891750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.773232, 33.121159, 43.973808>,  <37.785061, 33.355755, 44.023045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.773232, 33.121159, 43.973808>,  <37.753517, 32.730164, 43.891750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773232, 33.121159, 43.973808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364823, -0.173589, 0.914752,
		0.929772, -0.119925, 0.348055,
		0.049283, 0.977489, 0.205150,
		37.788017, 33.414406, 44.035355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919155, 32.634331, 44.632065>,  <37.753517, 32.730164, 43.891750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919155, 32.634331, 44.632065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.832283, 33.021324, 44.580219>,  <37.780159, 33.253521, 44.549110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.832283, 33.021324, 44.580219>,  <37.919155, 32.634331, 44.632065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832283, 33.021324, 44.580219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437729, 0.022158, 0.898834,
		0.872483, 0.251943, 0.418686,
		-0.217178, 0.967489, -0.129616,
		37.767128, 33.311569, 44.541336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076920, 32.987896, 45.247715>,  <37.919155, 32.634331, 44.632065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076920, 32.987896, 45.247715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817703, 33.227116, 45.059090>,  <37.662174, 33.370647, 44.945915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817703, 33.227116, 45.059090>,  <38.076920, 32.987896, 45.247715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817703, 33.227116, 45.059090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348142, 0.318080, 0.881829,
		0.677376, 0.735634, 0.002078,
		-0.648043, 0.598053, -0.471565,
		37.623291, 33.406532, 44.917622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083561, 33.522034, 45.609848>,  <38.076920, 32.987896, 45.247715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083561, 33.522034, 45.609848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737133, 33.564751, 45.414494>,  <37.529278, 33.590382, 45.297279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737133, 33.564751, 45.414494>,  <38.083561, 33.522034, 45.609848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737133, 33.564751, 45.414494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453873, 0.241605, 0.857687,
		0.209589, 0.964481, -0.160777,
		-0.866067, 0.106790, -0.488390,
		37.477314, 33.596786, 45.267975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810696, 34.226986, 45.718151>,  <38.083561, 33.522034, 45.609848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810696, 34.226986, 45.718151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509178, 33.987247, 45.610382>,  <37.328270, 33.843407, 45.545723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509178, 33.987247, 45.610382>,  <37.810696, 34.226986, 45.718151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509178, 33.987247, 45.610382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423116, 0.128998, 0.896846,
		-0.502764, 0.790029, -0.350830,
		-0.753791, -0.599344, -0.269419,
		37.283039, 33.807446, 45.529556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.312153, 34.571915, 46.084045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162994, 34.220657, 45.964172>,  <37.073498, 34.009903, 45.892246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162994, 34.220657, 45.964172>,  <37.312153, 34.571915, 46.084045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162994, 34.220657, 45.964172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617974, -0.005879, 0.786177,
		-0.692137, 0.478364, -0.540476,
		-0.372901, -0.878142, -0.299686,
		37.051125, 33.957214, 45.874268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575386, 34.599468, 45.963482>,  <37.312153, 34.571915, 46.084045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575386, 34.599468, 45.963482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661755, 34.222313, 46.064945>,  <36.713573, 33.996021, 46.125824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661755, 34.222313, 46.064945>,  <36.575386, 34.599468, 45.963482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661755, 34.222313, 46.064945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634590, 0.061927, 0.770364,
		-0.742075, -0.327305, -0.584976,
		0.215918, -0.942888, 0.253658,
		36.726532, 33.939445, 46.141045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909477, 34.238754, 46.047211>,  <36.575386, 34.599468, 45.963482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909477, 34.238754, 46.047211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155056, 33.990993, 46.242931>,  <36.302402, 33.842339, 46.360363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155056, 33.990993, 46.242931>,  <35.909477, 34.238754, 46.047211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155056, 33.990993, 46.242931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727458, -0.203382, 0.655317,
		-0.306390, -0.758273, -0.575455,
		0.613946, -0.619402, 0.489298,
		36.339241, 33.805176, 46.389721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444839, 33.815159, 46.378716>,  <35.909477, 34.238754, 46.047211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444839, 33.815159, 46.378716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773903, 33.737698, 46.592533>,  <35.971340, 33.691219, 46.720825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773903, 33.737698, 46.592533>,  <35.444839, 33.815159, 46.378716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773903, 33.737698, 46.592533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565389, -0.179785, 0.804992,
		-0.059786, -0.964456, -0.257390,
		0.822654, -0.193653, 0.534545,
		36.020699, 33.679600, 46.752895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475269, 33.117725, 46.599716>,  <35.444839, 33.815159, 46.378716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475269, 33.117725, 46.599716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720066, 33.285656, 46.867809>,  <35.866943, 33.386414, 47.028664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720066, 33.285656, 46.867809>,  <35.475269, 33.117725, 46.599716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720066, 33.285656, 46.867809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444933, -0.517856, 0.730657,
		0.653834, -0.745364, -0.130129,
		0.611994, 0.419829, 0.670229,
		35.903664, 33.411606, 47.068878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521549, 32.603615, 47.105682>,  <35.475269, 33.117725, 46.599716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521549, 32.603615, 47.105682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.641918, 32.945797, 47.274273>,  <35.714142, 33.151108, 47.375427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.641918, 32.945797, 47.274273>,  <35.521549, 32.603615, 47.105682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641918, 32.945797, 47.274273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399155, -0.288399, 0.870345,
		0.866094, -0.430144, 0.254672,
		0.300927, 0.855454, 0.421475,
		35.732197, 33.202435, 47.400715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881626, 32.293049, 47.704948>,  <35.521549, 32.603615, 47.105682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881626, 32.293049, 47.704948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789799, 32.676567, 47.771885>,  <35.734703, 32.906677, 47.812046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789799, 32.676567, 47.771885>,  <35.881626, 32.293049, 47.704948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789799, 32.676567, 47.771885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472068, -0.260047, 0.842335,
		0.851146, 0.114379, 0.512317,
		-0.229572, 0.958798, 0.167343,
		35.720928, 32.964207, 47.822086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082523, 32.406185, 48.431667>,  <35.881626, 32.293049, 47.704948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082523, 32.406185, 48.431667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840443, 32.711742, 48.342049>,  <35.695194, 32.895077, 48.288277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840443, 32.711742, 48.342049>,  <36.082523, 32.406185, 48.431667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840443, 32.711742, 48.342049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508350, -0.154258, 0.847222,
		0.612622, 0.626639, 0.481682,
		-0.605206, 0.763890, -0.224050,
		35.658882, 32.940910, 48.274834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166157, 32.750149, 48.974697>,  <36.082523, 32.406185, 48.431667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166157, 32.750149, 48.974697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819824, 32.833279, 48.792648>,  <35.612022, 32.883156, 48.683418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819824, 32.833279, 48.792648>,  <36.166157, 32.750149, 48.974697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819824, 32.833279, 48.792648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479914, -0.087759, 0.872915,
		0.141472, 0.974222, 0.175723,
		-0.865834, 0.207824, -0.455127,
		35.560074, 32.895626, 48.656109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848129, 32.902969, 49.499424>,  <36.166157, 32.750149, 48.974697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848129, 32.902969, 49.499424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551468, 32.871838, 49.232925>,  <35.373470, 32.853157, 49.073025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551468, 32.871838, 49.232925>,  <35.848129, 32.902969, 49.499424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551468, 32.871838, 49.232925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624540, -0.282264, 0.728201,
		-0.244736, 0.956175, 0.160733,
		-0.741656, -0.077832, -0.666249,
		35.328972, 32.848488, 49.033051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272720, 33.190666, 49.864986>,  <35.848129, 32.902969, 49.499424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272720, 33.190666, 49.864986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115936, 32.968647, 49.571514>,  <35.021866, 32.835434, 49.395432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115936, 32.968647, 49.571514>,  <35.272720, 33.190666, 49.864986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115936, 32.968647, 49.571514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503916, -0.537683, 0.675992,
		-0.769697, 0.634676, -0.068948,
		-0.391964, -0.555053, -0.733676,
		34.998348, 32.802132, 49.351410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545765, 33.024094, 50.064911>,  <35.272720, 33.190666, 49.864986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545765, 33.024094, 50.064911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622311, 32.735325, 49.798916>,  <34.668240, 32.562065, 49.639317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622311, 32.735325, 49.798916>,  <34.545765, 33.024094, 50.064911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622311, 32.735325, 49.798916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474256, -0.661185, 0.581306,
		-0.859337, 0.204133, -0.468903,
		0.191368, -0.721918, -0.664991,
		34.679722, 32.518749, 49.599419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158539, 32.517929, 50.289677>,  <34.545765, 33.024094, 50.064911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158539, 32.517929, 50.289677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380913, 32.305809, 50.033638>,  <34.514336, 32.178539, 49.880016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380913, 32.305809, 50.033638>,  <34.158539, 32.517929, 50.289677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380913, 32.305809, 50.033638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183952, -0.829456, 0.527413,
		-0.810611, -0.175465, -0.558678,
		0.555941, -0.530297, -0.640089,
		34.547695, 32.146721, 49.841610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768044, 31.916109, 50.156445>,  <34.158539, 32.517929, 50.289677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768044, 31.916109, 50.156445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156261, 31.847542, 50.088718>,  <34.389191, 31.806402, 50.048084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156261, 31.847542, 50.088718>,  <33.768044, 31.916109, 50.156445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156261, 31.847542, 50.088718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068888, -0.870818, 0.486755,
		-0.230880, -0.460752, -0.856973,
		0.970540, -0.171417, -0.169315,
		34.447422, 31.796116, 50.037926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807587, 31.223772, 49.973915>,  <33.768044, 31.916109, 50.156445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807587, 31.223772, 49.973915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187943, 31.300356, 50.071198>,  <34.416157, 31.346306, 50.129566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187943, 31.300356, 50.071198>,  <33.807587, 31.223772, 49.973915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187943, 31.300356, 50.071198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053476, -0.875543, 0.480172,
		0.304867, -0.443586, -0.842786,
		0.950892, 0.191458, 0.243203,
		34.473209, 31.357794, 50.144157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162632, 30.487160, 49.994194>,  <33.807587, 31.223772, 49.973915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162632, 30.487160, 49.994194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.395020, 30.737896, 50.201866>,  <34.534451, 30.888338, 50.326469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.395020, 30.737896, 50.201866>,  <34.162632, 30.487160, 49.994194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395020, 30.737896, 50.201866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102516, -0.689144, 0.717336,
		0.807447, -0.363522, -0.464629,
		0.580964, 0.626842, 0.519181,
		34.569309, 30.925949, 50.357620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845394, 30.273336, 50.144688>,  <34.162632, 30.487160, 49.994194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845394, 30.273336, 50.144688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776752, 30.546206, 50.428997>,  <34.735565, 30.709927, 50.599583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776752, 30.546206, 50.428997>,  <34.845394, 30.273336, 50.144688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776752, 30.546206, 50.428997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075122, -0.710310, 0.699869,
		0.982297, 0.173498, 0.070649,
		-0.171608, 0.682172, 0.710769,
		34.725269, 30.750856, 50.642227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277905, 30.109653, 50.617874>,  <34.845394, 30.273336, 50.144688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277905, 30.109653, 50.617874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017899, 30.337162, 50.819462>,  <34.861897, 30.473667, 50.940414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017899, 30.337162, 50.819462>,  <35.277905, 30.109653, 50.617874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017899, 30.337162, 50.819462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042377, -0.689282, 0.723253,
		0.758742, 0.448766, 0.472144,
		-0.650012, 0.568770, 0.503970,
		34.822895, 30.507793, 50.970654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451466, 29.936359, 51.272469>,  <35.277905, 30.109653, 50.617874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451466, 29.936359, 51.272469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093639, 30.112474, 51.303169>,  <34.878944, 30.218143, 51.321590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093639, 30.112474, 51.303169>,  <35.451466, 29.936359, 51.272469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093639, 30.112474, 51.303169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202874, -0.553060, 0.808064,
		0.398229, 0.707299, 0.584074,
		-0.894570, 0.440288, 0.076752,
		34.825268, 30.244560, 51.326195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396973, 29.988890, 52.013248>,  <35.451466, 29.936359, 51.272469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396973, 29.988890, 52.013248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018398, 30.041445, 51.895271>,  <34.791252, 30.072979, 51.824486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018398, 30.041445, 51.895271>,  <35.396973, 29.988890, 52.013248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018398, 30.041445, 51.895271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322732, -0.412926, 0.851667,
		-0.009890, 0.901237, 0.433213,
		-0.946439, 0.131389, -0.294941,
		34.734467, 30.080862, 51.806789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082653, 30.176105, 52.588127>,  <35.396973, 29.988890, 52.013248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082653, 30.176105, 52.588127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798603, 30.026447, 52.349552>,  <34.628174, 29.936651, 52.206406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798603, 30.026447, 52.349552>,  <35.082653, 30.176105, 52.588127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798603, 30.026447, 52.349552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361241, -0.533510, 0.764769,
		-0.604341, 0.758539, 0.243702,
		-0.710124, -0.374147, -0.596437,
		34.585567, 29.914204, 52.170620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481968, 30.356306, 52.915085>,  <35.082653, 30.176105, 52.588127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481968, 30.356306, 52.915085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367851, 30.052351, 52.681442>,  <34.299381, 29.869978, 52.541256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367851, 30.052351, 52.681442>,  <34.481968, 30.356306, 52.915085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367851, 30.052351, 52.681442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292953, -0.511128, 0.808039,
		-0.912571, 0.401645, -0.076788,
		-0.285296, -0.759888, -0.584103,
		34.282261, 29.824385, 52.506210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787876, 30.197399, 53.099567>,  <34.481968, 30.356306, 52.915085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787876, 30.197399, 53.099567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.929153, 29.855284, 52.947918>,  <34.013920, 29.650015, 52.856930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.929153, 29.855284, 52.947918>,  <33.787876, 30.197399, 53.099567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929153, 29.855284, 52.947918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420270, -0.507101, 0.752477,
		-0.835840, -0.106434, -0.538557,
		0.353192, -0.855289, -0.379125,
		34.035110, 29.598698, 52.834179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363380, 29.692373, 52.665859>,  <33.787876, 30.197399, 53.099567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363380, 29.692373, 52.665859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.640751, 29.461588, 52.838501>,  <33.807171, 29.323116, 52.942085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.640751, 29.461588, 52.838501>,  <33.363380, 29.692373, 52.665859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640751, 29.461588, 52.838501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617653, 0.167515, -0.768403,
		0.371040, 0.799409, 0.472520,
		0.693422, -0.576962, 0.431603,
		33.848778, 29.288500, 52.967983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947811, 30.372171, 52.976513>,  <33.363380, 29.692373, 52.665859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947811, 30.372171, 52.976513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649006, 30.601126, 53.111778>,  <32.469723, 30.738499, 53.192936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649006, 30.601126, 53.111778>,  <32.947811, 30.372171, 52.976513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649006, 30.601126, 53.111778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004974, 0.513449, -0.858106,
		-0.664796, -0.639331, -0.386398,
		-0.747009, 0.572387, 0.338159,
		32.424904, 30.772842, 53.213226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530396, 30.421486, 52.374943>,  <32.947811, 30.372171, 52.976513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530396, 30.421486, 52.374943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445473, 30.738424, 52.603718>,  <32.394520, 30.928587, 52.740982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445473, 30.738424, 52.603718>,  <32.530396, 30.421486, 52.374943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445473, 30.738424, 52.603718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068191, 0.595868, -0.800182,
		-0.974820, -0.130886, -0.180539,
		-0.212311, 0.792345, 0.571939,
		32.381779, 30.976128, 52.775299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011562, 30.705992, 52.050739>,  <32.530396, 30.421486, 52.374943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011562, 30.705992, 52.050739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109524, 31.007736, 52.294365>,  <32.168301, 31.188782, 52.440540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109524, 31.007736, 52.294365>,  <32.011562, 30.705992, 52.050739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109524, 31.007736, 52.294365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042545, 0.635954, -0.770553,
		-0.968613, 0.162801, 0.187844,
		0.244907, 0.754359, 0.609067,
		32.182995, 31.234043, 52.477085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593040, 31.366690, 51.907635>,  <32.011562, 30.705992, 52.050739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593040, 31.366690, 51.907635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934015, 31.489845, 52.076656>,  <32.138599, 31.563738, 52.178070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934015, 31.489845, 52.076656>,  <31.593040, 31.366690, 51.907635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934015, 31.489845, 52.076656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085757, 0.714928, -0.693919,
		-0.515746, 0.627761, 0.583029,
		0.852439, 0.307887, 0.422556,
		32.189747, 31.582211, 52.203423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499439, 31.960707, 51.688854>,  <31.593040, 31.366690, 51.907635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499439, 31.960707, 51.688854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880369, 31.961594, 51.810886>,  <32.108929, 31.962126, 51.884106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880369, 31.961594, 51.810886>,  <31.499439, 31.960707, 51.688854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880369, 31.961594, 51.810886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228624, 0.656954, -0.718431,
		-0.202018, 0.753928, 0.625126,
		0.952324, 0.002217, 0.305082,
		32.166065, 31.962259, 51.902412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766834, 32.614143, 51.995998>,  <31.499439, 31.960707, 51.688854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766834, 32.614143, 51.995998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121574, 32.462601, 51.890198>,  <32.334419, 32.371677, 51.826717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121574, 32.462601, 51.890198>,  <31.766834, 32.614143, 51.995998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121574, 32.462601, 51.890198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155619, 0.783916, -0.601047,
		0.435059, 0.491879, 0.754175,
		0.886852, -0.378854, -0.264504,
		32.387630, 32.348946, 51.810848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138454, 33.178108, 51.924915>,  <31.766834, 32.614143, 51.995998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138454, 33.178108, 51.924915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317078, 32.893307, 51.708164>,  <32.424252, 32.722424, 51.578114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317078, 32.893307, 51.708164>,  <32.138454, 33.178108, 51.924915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317078, 32.893307, 51.708164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146118, 0.655519, -0.740908,
		0.882742, 0.251682, 0.396765,
		0.446560, -0.712005, -0.541878,
		32.451046, 32.679707, 51.545601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714569, 33.487541, 51.450977>,  <32.138454, 33.178108, 51.924915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714569, 33.487541, 51.450977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672035, 33.146564, 51.246223>,  <32.646515, 32.941978, 51.123371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672035, 33.146564, 51.246223>,  <32.714569, 33.487541, 51.450977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672035, 33.146564, 51.246223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339055, 0.452868, -0.824592,
		0.934738, -0.261239, 0.240872,
		-0.106332, -0.852447, -0.511887,
		32.640137, 32.890831, 51.092659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233490, 33.560448, 50.975082>,  <32.714569, 33.487541, 51.450977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233490, 33.560448, 50.975082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988159, 33.284660, 50.820961>,  <32.840961, 33.119186, 50.728485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988159, 33.284660, 50.820961>,  <33.233490, 33.560448, 50.975082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988159, 33.284660, 50.820961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116679, 0.403392, -0.907558,
		0.781166, -0.601584, -0.166963,
		-0.613324, -0.689472, -0.385308,
		32.804161, 33.077820, 50.705368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634773, 33.200012, 50.420860>,  <33.233490, 33.560448, 50.975082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634773, 33.200012, 50.420860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.247814, 33.148396, 50.333687>,  <33.015640, 33.117428, 50.281384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.247814, 33.148396, 50.333687>,  <33.634773, 33.200012, 50.420860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247814, 33.148396, 50.333687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159977, 0.355776, -0.920777,
		0.196351, -0.925620, -0.323533,
		-0.967395, -0.129037, -0.217935,
		32.957596, 33.109684, 50.268307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626392, 32.892784, 49.817406>,  <33.634773, 33.200012, 50.420860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626392, 32.892784, 49.817406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266323, 33.061169, 49.862103>,  <33.050282, 33.162201, 49.888920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266323, 33.061169, 49.862103>,  <33.626392, 32.892784, 49.817406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266323, 33.061169, 49.862103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032356, 0.320496, -0.946697,
		-0.434336, -0.848572, -0.302122,
		-0.900169, 0.420960, 0.111747,
		32.996273, 33.187458, 49.895626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276932, 32.738258, 49.176975>,  <33.626392, 32.892784, 49.817406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276932, 32.738258, 49.176975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.077183, 33.048977, 49.330448>,  <32.957333, 33.235409, 49.422531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.077183, 33.048977, 49.330448>,  <33.276932, 32.738258, 49.176975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077183, 33.048977, 49.330448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130900, 0.505419, -0.852888,
		-0.856444, -0.375681, -0.354074,
		-0.499369, 0.776798, 0.383686,
		32.927372, 33.282017, 49.445553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780540, 33.013840, 48.747604>,  <33.276932, 32.738258, 49.176975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780540, 33.013840, 48.747604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850292, 33.335606, 48.974766>,  <32.892143, 33.528664, 49.111061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850292, 33.335606, 48.974766>,  <32.780540, 33.013840, 48.747604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850292, 33.335606, 48.974766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098335, 0.559626, -0.822891,
		-0.979755, 0.199343, 0.018488,
		0.174384, 0.804413, 0.567899,
		32.902607, 33.576931, 49.145134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462761, 33.581623, 48.396809>,  <32.780540, 33.013840, 48.747604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462761, 33.581623, 48.396809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708874, 33.764797, 48.653473>,  <32.856541, 33.874702, 48.807472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708874, 33.764797, 48.653473>,  <32.462761, 33.581623, 48.396809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708874, 33.764797, 48.653473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230894, 0.673583, -0.702121,
		-0.753733, 0.580159, 0.308711,
		0.615284, 0.457933, 0.641657,
		32.893459, 33.902176, 48.845970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223049, 34.260426, 48.304947>,  <32.462761, 33.581623, 48.396809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223049, 34.260426, 48.304947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586536, 34.269032, 48.471687>,  <32.804630, 34.274197, 48.571732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586536, 34.269032, 48.471687>,  <32.223049, 34.260426, 48.304947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586536, 34.269032, 48.471687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313604, 0.623857, -0.715860,
		-0.275457, 0.781242, 0.560164,
		0.908722, 0.021518, 0.416846,
		32.859154, 34.275486, 48.596741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383430, 34.932030, 48.348221>,  <32.223049, 34.260426, 48.304947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383430, 34.932030, 48.348221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734600, 34.741344, 48.366070>,  <32.945301, 34.626934, 48.376781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734600, 34.741344, 48.366070>,  <32.383430, 34.932030, 48.348221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734600, 34.741344, 48.366070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421486, 0.725248, -0.544394,
		0.227157, 0.496745, 0.837642,
		0.877923, -0.476717, 0.044626,
		32.997978, 34.598328, 48.379459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852203, 35.455700, 48.273430>,  <32.383430, 34.932030, 48.348221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852203, 35.455700, 48.273430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097816, 35.160309, 48.161995>,  <33.245186, 34.983074, 48.095135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097816, 35.160309, 48.161995>,  <32.852203, 35.455700, 48.273430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097816, 35.160309, 48.161995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422238, 0.605558, -0.674548,
		0.666838, 0.296568, 0.683648,
		0.614037, -0.738476, -0.278587,
		33.282028, 34.938766, 48.078419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366871, 35.873081, 48.063961>,  <32.852203, 35.455700, 48.273430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366871, 35.873081, 48.063961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421886, 35.506092, 47.914650>,  <33.454895, 35.285900, 47.825066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421886, 35.506092, 47.914650>,  <33.366871, 35.873081, 48.063961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421886, 35.506092, 47.914650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294424, 0.397692, -0.868997,
		0.945726, 0.009617, 0.324822,
		0.137537, -0.917469, -0.373276,
		33.463146, 35.230850, 47.802666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157413, 35.742447, 47.965183>,  <33.366871, 35.873081, 48.063961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157413, 35.742447, 47.965183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015926, 35.456348, 47.724083>,  <33.931034, 35.284691, 47.579422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015926, 35.456348, 47.724083>,  <34.157413, 35.742447, 47.965183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015926, 35.456348, 47.724083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496876, 0.402284, -0.768948,
		0.792465, -0.571480, 0.213095,
		-0.353714, -0.715247, -0.602751,
		33.909813, 35.241776, 47.543259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709938, 35.470596, 47.574982>,  <34.157413, 35.742447, 47.965183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709938, 35.470596, 47.574982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388363, 35.373016, 47.358032>,  <34.195415, 35.314468, 47.227863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388363, 35.373016, 47.358032>,  <34.709938, 35.470596, 47.574982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388363, 35.373016, 47.358032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430416, 0.390666, -0.813709,
		0.410397, -0.887617, -0.209068,
		-0.803938, -0.243957, -0.542373,
		34.147179, 35.299831, 47.195320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.517464, 39.286129, 33.007561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525227, 39.383728, 33.395393>,  <36.529884, 39.442287, 33.628094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525227, 39.383728, 33.395393>,  <36.517464, 39.286129, 33.007561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525227, 39.383728, 33.395393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892200, -0.441890, 0.093340,
		0.451223, 0.863249, -0.226269,
		0.019411, 0.243995, 0.969582,
		36.531052, 39.456928, 33.686268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147259, 39.719070, 33.205570>,  <36.517464, 39.286129, 33.007561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147259, 39.719070, 33.205570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.012787, 39.469723, 33.487957>,  <36.932102, 39.320114, 33.657391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.012787, 39.469723, 33.487957>,  <37.147259, 39.719070, 33.205570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012787, 39.469723, 33.487957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941422, -0.243593, 0.233209,
		0.026593, 0.743015, 0.668746,
		-0.336180, -0.623371, 0.705969,
		36.911934, 39.282711, 33.699749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609726, 39.782032, 33.811573>,  <37.147259, 39.719070, 33.205570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609726, 39.782032, 33.811573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446793, 39.423100, 33.879536>,  <37.349033, 39.207741, 33.920311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446793, 39.423100, 33.879536>,  <37.609726, 39.782032, 33.811573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446793, 39.423100, 33.879536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843367, -0.298202, 0.446998,
		-0.350441, 0.325370, 0.878251,
		-0.407336, -0.897335, 0.169904,
		37.324593, 39.153900, 33.930508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853851, 39.568283, 34.467403>,  <37.609726, 39.782032, 33.811573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853851, 39.568283, 34.467403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.716774, 39.241070, 34.282635>,  <37.634525, 39.044739, 34.171772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.716774, 39.241070, 34.282635>,  <37.853851, 39.568283, 34.467403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716774, 39.241070, 34.282635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628755, -0.565055, 0.534211,
		-0.698017, -0.107365, 0.707987,
		-0.342696, -0.818038, -0.461924,
		37.613964, 38.995659, 34.144058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802181, 39.083744, 34.992172>,  <37.853851, 39.568283, 34.467403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802181, 39.083744, 34.992172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.845486, 38.883495, 34.648624>,  <37.871468, 38.763348, 34.442497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.845486, 38.883495, 34.648624>,  <37.802181, 39.083744, 34.992172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845486, 38.883495, 34.648624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845269, -0.408388, 0.344585,
		-0.523260, -0.763280, 0.378949,
		0.108257, -0.500622, -0.858870,
		37.877964, 38.733311, 34.390965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051888, 38.488132, 35.218418>,  <37.802181, 39.083744, 34.992172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051888, 38.488132, 35.218418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112846, 38.457943, 34.824245>,  <38.149422, 38.439831, 34.587742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112846, 38.457943, 34.824245>,  <38.051888, 38.488132, 35.218418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112846, 38.457943, 34.824245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925591, -0.338665, 0.169079,
		-0.346493, -0.937875, 0.018246,
		0.152396, -0.075473, -0.985434,
		38.158566, 38.435303, 34.528614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253059, 37.799202, 35.169209>,  <38.051888, 38.488132, 35.218418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253059, 37.799202, 35.169209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399475, 37.999592, 34.855511>,  <38.487324, 38.119827, 34.667294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399475, 37.999592, 34.855511>,  <38.253059, 37.799202, 35.169209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399475, 37.999592, 34.855511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854580, -0.514558, 0.070166,
		-0.368386, -0.695880, -0.616476,
		0.366040, 0.500979, -0.784241,
		38.509289, 38.149887, 34.620239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504616, 37.274578, 34.608196>,  <38.253059, 37.799202, 35.169209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504616, 37.274578, 34.608196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683895, 37.629959, 34.568672>,  <38.791462, 37.843189, 34.544956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683895, 37.629959, 34.568672>,  <38.504616, 37.274578, 34.608196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683895, 37.629959, 34.568672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892676, -0.438961, 0.102185,
		0.047412, -0.134008, -0.989845,
		0.448198, 0.888456, -0.098814,
		38.818356, 37.896496, 34.539028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029003, 37.128532, 34.200508>,  <38.504616, 37.274578, 34.608196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029003, 37.128532, 34.200508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.127918, 37.481224, 34.361210>,  <39.187267, 37.692837, 34.457630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.127918, 37.481224, 34.361210>,  <39.029003, 37.128532, 34.200508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127918, 37.481224, 34.361210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911516, -0.352312, 0.212169,
		0.328619, 0.313742, -0.890829,
		0.247283, 0.881727, 0.401757,
		39.202103, 37.745743, 34.481735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697773, 37.282219, 33.982220>,  <39.029003, 37.128532, 34.200508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697773, 37.282219, 33.982220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678341, 37.507278, 34.312325>,  <39.666683, 37.642315, 34.510387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678341, 37.507278, 34.312325>,  <39.697773, 37.282219, 33.982220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678341, 37.507278, 34.312325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937080, -0.260309, 0.232636,
		0.345717, 0.784643, -0.514603,
		-0.048580, 0.562650, 0.825266,
		39.663765, 37.676075, 34.559906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285984, 37.630131, 33.952343>,  <39.697773, 37.282219, 33.982220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285984, 37.630131, 33.952343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165192, 37.661499, 34.332378>,  <40.092716, 37.680321, 34.560398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165192, 37.661499, 34.332378>,  <40.285984, 37.630131, 33.952343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165192, 37.661499, 34.332378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939733, -0.143141, 0.310504,
		0.160344, 0.986591, -0.030464,
		-0.301980, 0.078416, 0.950084,
		40.074596, 37.685024, 34.617405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853374, 38.019413, 34.247692>,  <40.285984, 37.630131, 33.952343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853374, 38.019413, 34.247692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659439, 37.824718, 34.538353>,  <40.543079, 37.707901, 34.712749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659439, 37.824718, 34.538353>,  <40.853374, 38.019413, 34.247692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659439, 37.824718, 34.538353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869825, -0.181616, 0.458716,
		-0.091302, 0.854461, 0.511429,
		-0.484838, -0.486736, 0.726650,
		40.513988, 37.678699, 34.756348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159302, 38.172817, 34.808464>,  <40.853374, 38.019413, 34.247692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159302, 38.172817, 34.808464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.963360, 37.859150, 34.960842>,  <40.845795, 37.670948, 35.052269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.963360, 37.859150, 34.960842>,  <41.159302, 38.172817, 34.808464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963360, 37.859150, 34.960842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781325, -0.201041, 0.590859,
		-0.386745, 0.587082, 0.711170,
		-0.489857, -0.784167, 0.380950,
		40.816402, 37.623901, 35.075127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115788, 38.368462, 35.510769>,  <41.159302, 38.172817, 34.808464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115788, 38.368462, 35.510769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.063572, 37.974995, 35.461185>,  <41.032242, 37.738914, 35.431435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.063572, 37.974995, 35.461185>,  <41.115788, 38.368462, 35.510769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063572, 37.974995, 35.461185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764986, -0.179465, 0.618537,
		-0.630679, -0.014086, 0.775916,
		-0.130537, -0.983663, -0.123961,
		41.024410, 37.679897, 35.423996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005817, 38.071304, 36.133915>,  <41.115788, 38.368462, 35.510769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005817, 38.071304, 36.133915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.113453, 37.759052, 35.908276>,  <41.178032, 37.571701, 35.772892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.113453, 37.759052, 35.908276>,  <41.005817, 38.071304, 36.133915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113453, 37.759052, 35.908276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582550, -0.334492, 0.740777,
		-0.766961, -0.527947, 0.364751,
		0.269084, -0.780633, -0.564098,
		41.194180, 37.524864, 35.739048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983932, 37.508781, 36.545307>,  <41.005817, 38.071304, 36.133915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983932, 37.508781, 36.545307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215183, 37.394199, 36.239700>,  <41.353931, 37.325451, 36.056335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215183, 37.394199, 36.239700>,  <40.983932, 37.508781, 36.545307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215183, 37.394199, 36.239700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701832, -0.303014, 0.644681,
		-0.416179, -0.908915, 0.025863,
		0.578123, -0.286454, -0.764014,
		41.388618, 37.308262, 36.010494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362434, 36.985645, 36.853687>,  <40.983932, 37.508781, 36.545307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362434, 36.985645, 36.853687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562351, 37.044270, 36.512226>,  <41.682301, 37.079445, 36.307350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562351, 37.044270, 36.512226>,  <41.362434, 36.985645, 36.853687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562351, 37.044270, 36.512226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847912, -0.283955, 0.447677,
		-0.176787, -0.947570, -0.266190,
		0.499791, 0.146562, -0.853656,
		41.712288, 37.088238, 36.256130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787426, 36.474617, 36.766727>,  <41.362434, 36.985645, 36.853687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787426, 36.474617, 36.766727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970409, 36.728016, 36.517117>,  <42.080200, 36.880054, 36.367348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970409, 36.728016, 36.517117>,  <41.787426, 36.474617, 36.766727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970409, 36.728016, 36.517117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888978, -0.342528, 0.303961,
		-0.021190, -0.693799, -0.719856,
		0.457459, 0.633496, -0.624031,
		42.107647, 36.918064, 36.329906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293056, 36.043274, 36.231644>,  <41.787426, 36.474617, 36.766727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293056, 36.043274, 36.231644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.418488, 36.422489, 36.253166>,  <42.493748, 36.650017, 36.266079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.418488, 36.422489, 36.253166>,  <42.293056, 36.043274, 36.231644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418488, 36.422489, 36.253166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898224, -0.314527, 0.307029,
		0.308000, -0.047943, -0.950178,
		0.313576, 0.948037, 0.053811,
		42.512562, 36.706902, 36.269310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013744, 36.037033, 35.919815>,  <42.293056, 36.043274, 36.231644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013744, 36.037033, 35.919815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.981136, 36.365044, 36.146412>,  <42.961571, 36.561852, 36.282372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.981136, 36.365044, 36.146412>,  <43.013744, 36.037033, 35.919815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981136, 36.365044, 36.146412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751057, -0.323097, 0.575779,
		0.655186, 0.472405, -0.589547,
		-0.081520, 0.820025, 0.566492,
		42.956680, 36.611050, 36.316360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739265, 36.235691, 36.090157>,  <43.013744, 36.037033, 35.919815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739265, 36.235691, 36.090157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501301, 36.386826, 36.373940>,  <43.358524, 36.477505, 36.544209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501301, 36.386826, 36.373940>,  <43.739265, 36.235691, 36.090157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501301, 36.386826, 36.373940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597027, -0.383261, 0.704748,
		0.538186, 0.842823, 0.002425,
		-0.594907, 0.377838, 0.709454,
		43.322830, 36.500175, 36.586777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077583, 36.809200, 36.535694>,  <43.739265, 36.235691, 36.090157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077583, 36.809200, 36.535694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827904, 36.568966, 36.735561>,  <43.678097, 36.424824, 36.855480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827904, 36.568966, 36.735561>,  <44.077583, 36.809200, 36.535694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827904, 36.568966, 36.735561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754792, -0.298512, 0.584106,
		-0.201650, 0.741744, 0.639650,
		-0.624201, -0.600588, 0.499668,
		43.640644, 36.388790, 36.885460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772953, 37.153252, 36.415142>,  <44.077583, 36.809200, 36.535694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772953, 37.153252, 36.415142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.038181, 37.013367, 36.150406>,  <45.197319, 36.929436, 35.991562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.038181, 37.013367, 36.150406>,  <44.772953, 37.153252, 36.415142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038181, 37.013367, 36.150406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490543, 0.464850, -0.737076,
		0.565425, 0.813397, 0.136678,
		0.663070, -0.349714, -0.661844,
		45.237103, 36.908451, 35.951851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101540, 37.818859, 36.142845>,  <44.772953, 37.153252, 36.415142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101540, 37.818859, 36.142845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.142307, 37.516651, 35.883984>,  <45.166767, 37.335327, 35.728668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.142307, 37.516651, 35.883984>,  <45.101540, 37.818859, 36.142845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142307, 37.516651, 35.883984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521429, 0.513441, -0.681534,
		0.847186, 0.406906, -0.341619,
		0.101919, -0.755517, -0.647153,
		45.172882, 37.289997, 35.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303642, 38.111721, 35.539005>,  <45.101540, 37.818859, 36.142845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303642, 38.111721, 35.539005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145531, 37.767101, 35.411572>,  <45.050663, 37.560329, 35.335110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145531, 37.767101, 35.411572>,  <45.303642, 38.111721, 35.539005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145531, 37.767101, 35.411572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519564, 0.495718, -0.695929,
		0.757503, -0.109559, -0.643573,
		-0.395276, -0.861545, -0.318585,
		45.026947, 37.508636, 35.315994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497234, 38.048733, 34.861870>,  <45.303642, 38.111721, 35.539005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497234, 38.048733, 34.861870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.157921, 37.848392, 34.930656>,  <44.954334, 37.728188, 34.971928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.157921, 37.848392, 34.930656>,  <45.497234, 38.048733, 34.861870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157921, 37.848392, 34.930656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445708, 0.499931, -0.742572,
		0.285945, -0.706556, -0.647313,
		-0.848281, -0.500847, 0.171965,
		44.903435, 37.698139, 34.982246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228996, 38.119724, 34.234341>,  <45.497234, 38.048733, 34.861870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228996, 38.119724, 34.234341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.928230, 37.963024, 34.446438>,  <44.747772, 37.869003, 34.573696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.928230, 37.963024, 34.446438>,  <45.228996, 38.119724, 34.234341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928230, 37.963024, 34.446438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658779, 0.415652, -0.627091,
		0.025264, -0.820833, -0.570610,
		-0.751912, -0.391749, 0.530246,
		44.702656, 37.845501, 34.605511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801662, 37.877987, 33.777985>,  <45.228996, 38.119724, 34.234341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801662, 37.877987, 33.777985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.576912, 37.932640, 34.104328>,  <44.442062, 37.965431, 34.300133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.576912, 37.932640, 34.104328>,  <44.801662, 37.877987, 33.777985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576912, 37.932640, 34.104328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676906, 0.490971, -0.548403,
		-0.475491, -0.860395, -0.183381,
		-0.561877, 0.136629, 0.815859,
		44.408348, 37.973629, 34.349087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170975, 37.586971, 33.600567>,  <44.801662, 37.877987, 33.777985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170975, 37.586971, 33.600567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095272, 37.844646, 33.896999>,  <44.049850, 37.999252, 34.074860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095272, 37.844646, 33.896999>,  <44.170975, 37.586971, 33.600567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095272, 37.844646, 33.896999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811113, 0.322804, -0.487743,
		-0.553423, -0.693409, 0.461419,
		-0.189257, 0.644191, 0.741080,
		44.038494, 38.037903, 34.119324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441616, 37.662552, 33.631836>,  <44.170975, 37.586971, 33.600567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441616, 37.662552, 33.631836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541790, 37.986546, 33.843952>,  <43.601894, 38.180943, 33.971222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541790, 37.986546, 33.843952>,  <43.441616, 37.662552, 33.631836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541790, 37.986546, 33.843952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705115, 0.527933, -0.473391,
		-0.663398, -0.255364, 0.703344,
		0.250431, 0.809985, 0.530291,
		43.616920, 38.229542, 34.003040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833221, 37.853058, 33.654636>,  <43.441616, 37.662552, 33.631836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833221, 37.853058, 33.654636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.055950, 38.175343, 33.735409>,  <43.189587, 38.368713, 33.783875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.055950, 38.175343, 33.735409>,  <42.833221, 37.853058, 33.654636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055950, 38.175343, 33.735409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680882, 0.581993, -0.444616,
		-0.475755, 0.110080, 0.872662,
		0.556827, 0.805709, 0.201935,
		43.223000, 38.417057, 33.795990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502747, 38.282570, 34.127926>,  <42.833221, 37.853058, 33.654636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502747, 38.282570, 34.127926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755215, 38.521198, 33.929642>,  <42.906696, 38.664375, 33.810673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755215, 38.521198, 33.929642>,  <42.502747, 38.282570, 34.127926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755215, 38.521198, 33.929642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755363, 0.617947, -0.218101,
		0.176212, 0.512101, 0.840656,
		0.631170, 0.596568, -0.495712,
		42.944565, 38.700169, 33.780930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388554, 38.887943, 34.412479>,  <42.502747, 38.282570, 34.127926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388554, 38.887943, 34.412479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.560585, 38.971069, 34.061062>,  <42.663803, 39.020947, 33.850212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.560585, 38.971069, 34.061062>,  <42.388554, 38.887943, 34.412479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560585, 38.971069, 34.061062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726407, 0.657500, -0.200068,
		0.536068, 0.724227, 0.433735,
		0.430075, 0.207818, -0.878548,
		42.689606, 39.033413, 33.797497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264996, 39.541019, 34.343170>,  <42.388554, 38.887943, 34.412479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264996, 39.541019, 34.343170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369373, 39.447613, 33.968494>,  <42.431999, 39.391571, 33.743690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369373, 39.447613, 33.968494>,  <42.264996, 39.541019, 34.343170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369373, 39.447613, 33.968494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734336, 0.581822, -0.349619,
		0.626625, 0.779073, -0.019654,
		0.260943, -0.233513, -0.936686,
		42.447655, 39.377560, 33.687489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210800, 40.188854, 34.062653>,  <42.264996, 39.541019, 34.343170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210800, 40.188854, 34.062653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201511, 39.941719, 33.748268>,  <42.195938, 39.793438, 33.559639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201511, 39.941719, 33.748268>,  <42.210800, 40.188854, 34.062653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201511, 39.941719, 33.748268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742228, 0.537333, -0.400463,
		0.669745, 0.574061, -0.471058,
		-0.023225, -0.617840, -0.785960,
		42.194546, 39.756367, 33.512482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077690, 40.596313, 33.445133>,  <42.210800, 40.188854, 34.062653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077690, 40.596313, 33.445133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.964813, 40.219719, 33.371410>,  <41.897087, 39.993763, 33.327175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.964813, 40.219719, 33.371410>,  <42.077690, 40.596313, 33.445133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964813, 40.219719, 33.371410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825582, 0.336174, -0.453212,
		0.488654, 0.024273, -0.872140,
		-0.282190, -0.941487, -0.184312,
		41.880157, 39.937271, 33.316116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913437, 40.558411, 32.734989>,  <42.077690, 40.596313, 33.445133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913437, 40.558411, 32.734989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719810, 40.246391, 32.893585>,  <41.603634, 40.059177, 32.988743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719810, 40.246391, 32.893585>,  <41.913437, 40.558411, 32.734989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719810, 40.246391, 32.893585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861595, 0.345791, -0.371595,
		0.152761, -0.521488, -0.839473,
		-0.484064, -0.780051, 0.396488,
		41.574593, 40.012375, 33.012531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466805, 40.327713, 32.222027>,  <41.913437, 40.558411, 32.734989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466805, 40.327713, 32.222027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321014, 40.203732, 32.573273>,  <41.233540, 40.129341, 32.784019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321014, 40.203732, 32.573273>,  <41.466805, 40.327713, 32.222027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321014, 40.203732, 32.573273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912724, 0.305877, -0.270876,
		-0.184636, -0.900205, -0.394387,
		-0.364478, -0.309953, 0.878115,
		41.211670, 40.110744, 32.836708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842781, 40.056282, 32.037678>,  <41.466805, 40.327713, 32.222027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842781, 40.056282, 32.037678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836689, 40.084438, 32.436638>,  <40.833035, 40.101334, 32.676014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836689, 40.084438, 32.436638>,  <40.842781, 40.056282, 32.037678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836689, 40.084438, 32.436638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992116, 0.123034, -0.023830,
		-0.124392, -0.989902, 0.067969,
		-0.015227, 0.070398, 0.997403,
		40.832119, 40.105556, 32.735859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313217, 39.582714, 32.235184>,  <40.842781, 40.056282, 32.037678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313217, 39.582714, 32.235184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.354710, 39.839844, 32.538765>,  <40.379604, 39.994122, 32.720913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.354710, 39.839844, 32.538765>,  <40.313217, 39.582714, 32.235184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354710, 39.839844, 32.538765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993141, 0.025541, 0.114099,
		0.053962, -0.765584, 0.641068,
		0.103726, 0.642828, 0.758955,
		40.385826, 40.032692, 32.766453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862263, 39.357986, 32.689838>,  <40.313217, 39.582714, 32.235184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862263, 39.357986, 32.689838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.932697, 39.733505, 32.808262>,  <39.974957, 39.958817, 32.879318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.932697, 39.733505, 32.808262>,  <39.862263, 39.357986, 32.689838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932697, 39.733505, 32.808262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975171, 0.125326, 0.182577,
		0.134300, -0.320854, 0.937559,
		0.176081, 0.938800, 0.296056,
		39.985523, 40.015144, 32.897079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753586, 39.474850, 33.469055>,  <39.862263, 39.357986, 32.689838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753586, 39.474850, 33.469055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700890, 39.808968, 33.255539>,  <39.669273, 40.009438, 33.127430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700890, 39.808968, 33.255539>,  <39.753586, 39.474850, 33.469055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700890, 39.808968, 33.255539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970931, -0.000169, 0.239360,
		0.199846, 0.549805, 0.811034,
		-0.131739, 0.835293, -0.533788,
		39.661369, 40.059555, 33.095402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.193867, 33.717155, 43.803730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838203, 33.703522, 43.621197>,  <38.624805, 33.695343, 43.511677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838203, 33.703522, 43.621197>,  <39.193867, 33.717155, 43.803730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838203, 33.703522, 43.621197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453473, 0.068098, -0.888665,
		0.061316, -0.997098, -0.045118,
		-0.889158, -0.034029, -0.456333,
		38.571457, 33.693298, 43.484295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272461, 33.284061, 43.234188>,  <39.193867, 33.717155, 43.803730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272461, 33.284061, 43.234188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937870, 33.486820, 43.150894>,  <38.737114, 33.608475, 43.100918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937870, 33.486820, 43.150894>,  <39.272461, 33.284061, 43.234188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937870, 33.486820, 43.150894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246558, 0.008759, -0.969088,
		-0.489400, -0.861964, -0.132305,
		-0.836478, 0.506893, -0.208238,
		38.686928, 33.638889, 43.088421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104706, 33.035412, 42.576553>,  <39.272461, 33.284061, 43.234188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104706, 33.035412, 42.576553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898380, 33.376060, 42.613811>,  <38.774586, 33.580448, 42.636166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898380, 33.376060, 42.613811>,  <39.104706, 33.035412, 42.576553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898380, 33.376060, 42.613811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053411, 0.140487, -0.988641,
		-0.855031, -0.504984, -0.117951,
		-0.515818, 0.851619, 0.093149,
		38.743633, 33.631546, 42.641758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713608, 33.103645, 41.989548>,  <39.104706, 33.035412, 42.576553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713608, 33.103645, 41.989548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699890, 33.476521, 42.133690>,  <38.691658, 33.700245, 42.220177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699890, 33.476521, 42.133690>,  <38.713608, 33.103645, 41.989548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699890, 33.476521, 42.133690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220119, 0.344671, -0.912551,
		-0.974870, -0.110618, 0.193370,
		-0.034295, 0.932183, 0.360358,
		38.689602, 33.756176, 42.241798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059296, 33.432148, 41.749355>,  <38.713608, 33.103645, 41.989548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059296, 33.432148, 41.749355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349304, 33.699398, 41.816227>,  <38.523308, 33.859749, 41.856350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349304, 33.699398, 41.816227>,  <38.059296, 33.432148, 41.749355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349304, 33.699398, 41.816227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264799, 0.494497, -0.827861,
		-0.635789, 0.555946, 0.535440,
		0.725020, 0.668129, 0.167182,
		38.566811, 33.899837, 41.866383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795578, 34.107342, 41.713856>,  <38.059296, 33.432148, 41.749355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795578, 34.107342, 41.713856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187672, 34.146660, 41.645184>,  <38.422928, 34.170250, 41.603981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187672, 34.146660, 41.645184>,  <37.795578, 34.107342, 41.713856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187672, 34.146660, 41.645184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197823, 0.491695, -0.847999,
		0.001063, 0.865202, 0.501422,
		0.980237, 0.098291, -0.171679,
		38.481743, 34.176147, 41.593681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811974, 34.720249, 41.543308>,  <37.795578, 34.107342, 41.713856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811974, 34.720249, 41.543308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165501, 34.580803, 41.418510>,  <38.377617, 34.497135, 41.343632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165501, 34.580803, 41.418510>,  <37.811974, 34.720249, 41.543308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165501, 34.580803, 41.418510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108234, 0.496427, -0.861305,
		0.455145, 0.795002, 0.401017,
		0.883815, -0.348615, -0.311993,
		38.430645, 34.476219, 41.324913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180504, 35.275074, 41.366913>,  <37.811974, 34.720249, 41.543308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180504, 35.275074, 41.366913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374481, 34.982708, 41.174835>,  <38.490868, 34.807289, 41.059589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374481, 34.982708, 41.174835>,  <38.180504, 35.275074, 41.366913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374481, 34.982708, 41.174835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049746, 0.571244, -0.819271,
		0.873129, 0.373413, 0.313382,
		0.484944, -0.730919, -0.480194,
		38.519966, 34.763432, 41.030777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700993, 35.555367, 41.152245>,  <38.180504, 35.275074, 41.366913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700993, 35.555367, 41.152245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716702, 35.230194, 40.919830>,  <38.726128, 35.035091, 40.780380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716702, 35.230194, 40.919830>,  <38.700993, 35.555367, 41.152245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716702, 35.230194, 40.919830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400129, 0.545622, -0.736338,
		0.915617, -0.203568, 0.346707,
		0.039277, -0.812931, -0.581034,
		38.728485, 34.986317, 40.745522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306213, 35.582253, 40.858128>,  <38.700993, 35.555367, 41.152245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306213, 35.582253, 40.858128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069431, 35.363960, 40.620892>,  <38.927361, 35.232983, 40.478550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069431, 35.363960, 40.620892>,  <39.306213, 35.582253, 40.858128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069431, 35.363960, 40.620892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142051, 0.653712, -0.743292,
		0.793351, -0.524247, -0.309449,
		-0.591959, -0.545734, -0.593093,
		38.891842, 35.200241, 40.442963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727146, 35.478783, 40.194977>,  <39.306213, 35.582253, 40.858128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727146, 35.478783, 40.194977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336632, 35.415684, 40.135677>,  <39.102322, 35.377823, 40.100098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336632, 35.415684, 40.135677>,  <39.727146, 35.478783, 40.194977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336632, 35.415684, 40.135677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068648, 0.423855, -0.903125,
		0.205303, -0.891886, -0.402975,
		-0.976288, -0.157751, -0.148245,
		39.043747, 35.368359, 40.091206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768139, 35.161102, 39.500732>,  <39.727146, 35.478783, 40.194977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768139, 35.161102, 39.500732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398289, 35.292984, 39.577003>,  <39.176380, 35.372112, 39.622768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398289, 35.292984, 39.577003>,  <39.768139, 35.161102, 39.500732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398289, 35.292984, 39.577003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001248, 0.498011, -0.867169,
		-0.380875, -0.802045, -0.460063,
		-0.924626, 0.329709, 0.190681,
		39.120899, 35.391895, 39.634209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423584, 35.149487, 38.866623>,  <39.768139, 35.161102, 39.500732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423584, 35.149487, 38.866623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257679, 35.430096, 39.098427>,  <39.158138, 35.598461, 39.237511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257679, 35.430096, 39.098427>,  <39.423584, 35.149487, 38.866623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257679, 35.430096, 39.098427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062690, 0.657393, -0.750935,
		-0.907769, -0.275128, -0.316639,
		-0.414759, 0.701526, 0.579513,
		39.133251, 35.640553, 39.272282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772556, 34.526421, 38.441532>,  <39.423584, 35.149487, 38.866623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772556, 34.526421, 38.441532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987934, 34.242500, 38.259869>,  <40.117161, 34.072147, 38.150871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987934, 34.242500, 38.259869>,  <39.772556, 34.526421, 38.441532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987934, 34.242500, 38.259869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762666, -0.639693, 0.095564,
		-0.358351, 0.294912, -0.885783,
		0.538447, -0.709802, -0.454154,
		40.149467, 34.029560, 38.123623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560295, 34.316116, 37.857647>,  <39.772556, 34.526421, 38.441532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560295, 34.316116, 37.857647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768906, 33.990303, 37.959274>,  <39.894073, 33.794815, 38.020252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768906, 33.990303, 37.959274>,  <39.560295, 34.316116, 37.857647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768906, 33.990303, 37.959274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852127, -0.512389, 0.106480,
		0.043451, -0.272032, -0.961307,
		0.521529, -0.814528, 0.254069,
		39.925365, 33.745945, 38.035496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268444, 33.699368, 37.399712>,  <39.560295, 34.316116, 37.857647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268444, 33.699368, 37.399712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422791, 33.577930, 37.748180>,  <39.515400, 33.505066, 37.957260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422791, 33.577930, 37.748180>,  <39.268444, 33.699368, 37.399712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422791, 33.577930, 37.748180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882056, -0.398119, 0.251951,
		0.270337, -0.865639, -0.421411,
		0.385870, -0.303596, 0.871168,
		39.538551, 33.486851, 38.009529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085476, 33.039772, 37.602455>,  <39.268444, 33.699368, 37.399712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085476, 33.039772, 37.602455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191311, 33.184624, 37.959972>,  <39.254810, 33.271534, 38.174480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191311, 33.184624, 37.959972>,  <39.085476, 33.039772, 37.602455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191311, 33.184624, 37.959972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888414, -0.268988, 0.371975,
		0.375121, -0.892474, 0.250548,
		0.264584, 0.362126, 0.893790,
		39.270687, 33.293262, 38.228107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602592, 32.642643, 38.025097>,  <39.085476, 33.039772, 37.602455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602592, 32.642643, 38.025097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780540, 32.900826, 38.273441>,  <38.887310, 33.055737, 38.422447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780540, 32.900826, 38.273441>,  <38.602592, 32.642643, 38.025097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780540, 32.900826, 38.273441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750625, -0.109418, 0.651605,
		0.488519, -0.755915, 0.435823,
		0.444871, 0.645461, 0.620862,
		38.914001, 33.094463, 38.459702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597073, 32.234638, 38.748299>,  <38.602592, 32.642643, 38.025097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597073, 32.234638, 38.748299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623417, 32.628952, 38.810135>,  <38.639225, 32.865540, 38.847237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623417, 32.628952, 38.810135>,  <38.597073, 32.234638, 38.748299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623417, 32.628952, 38.810135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604181, -0.083901, 0.792418,
		0.794120, -0.145592, 0.590064,
		0.065863, 0.985781, 0.154592,
		38.643177, 32.924686, 38.856514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709408, 32.393970, 39.543926>,  <38.597073, 32.234638, 38.748299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709408, 32.393970, 39.543926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525387, 32.710484, 39.382824>,  <38.414974, 32.900391, 39.286163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525387, 32.710484, 39.382824>,  <38.709408, 32.393970, 39.543926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525387, 32.710484, 39.382824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530906, 0.118432, 0.839114,
		0.711679, 0.599867, 0.365613,
		-0.460057, 0.791286, -0.402759,
		38.387371, 32.947868, 39.261997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478325, 32.628159, 40.085068>,  <38.709408, 32.393970, 39.543926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478325, 32.628159, 40.085068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288105, 32.870453, 39.829903>,  <38.173973, 33.015827, 39.676804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288105, 32.870453, 39.829903>,  <38.478325, 32.628159, 40.085068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288105, 32.870453, 39.829903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732736, 0.128516, 0.668267,
		0.486775, 0.785220, 0.382728,
		-0.475550, 0.605734, -0.637917,
		38.145439, 33.052174, 39.638527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381363, 33.333069, 40.417278>,  <38.478325, 32.628159, 40.085068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381363, 33.333069, 40.417278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097183, 33.264652, 40.144222>,  <37.926674, 33.223602, 39.980389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097183, 33.264652, 40.144222>,  <38.381363, 33.333069, 40.417278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097183, 33.264652, 40.144222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702529, 0.115342, 0.702246,
		-0.041378, 0.978489, -0.202110,
		-0.710451, -0.171046, -0.682644,
		37.884048, 33.213337, 39.939430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790325, 33.742191, 40.695606>,  <38.381363, 33.333069, 40.417278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790325, 33.742191, 40.695606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621471, 33.496037, 40.429344>,  <37.520161, 33.348343, 40.269585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621471, 33.496037, 40.429344>,  <37.790325, 33.742191, 40.695606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621471, 33.496037, 40.429344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782237, -0.123839, 0.610548,
		-0.458159, 0.778435, -0.429103,
		-0.422132, -0.615388, -0.665659,
		37.494831, 33.311420, 40.229645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133854, 33.873146, 40.779842>,  <37.790325, 33.742191, 40.695606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133854, 33.873146, 40.779842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148197, 33.516693, 40.598911>,  <37.156803, 33.302822, 40.490353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148197, 33.516693, 40.598911>,  <37.133854, 33.873146, 40.779842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148197, 33.516693, 40.598911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749648, -0.323302, 0.577498,
		-0.660864, 0.318380, -0.679627,
		0.035861, -0.891128, -0.452331,
		37.158955, 33.249355, 40.463211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492134, 33.706669, 40.621284>,  <37.133854, 33.873146, 40.779842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492134, 33.706669, 40.621284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668434, 33.348068, 40.639305>,  <36.774216, 33.132908, 40.650116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668434, 33.348068, 40.639305>,  <36.492134, 33.706669, 40.621284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668434, 33.348068, 40.639305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775960, -0.355299, 0.521199,
		-0.451247, -0.264678, -0.852245,
		0.440752, -0.896497, 0.045052,
		36.800659, 33.079121, 40.652821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947685, 33.222214, 40.559959>,  <36.492134, 33.706669, 40.621284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947685, 33.222214, 40.559959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219635, 32.945904, 40.658428>,  <36.382805, 32.780117, 40.717510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219635, 32.945904, 40.658428>,  <35.947685, 33.222214, 40.559959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219635, 32.945904, 40.658428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675709, -0.459666, 0.576302,
		-0.284938, -0.558153, -0.779279,
		0.679872, -0.690777, 0.246172,
		36.423595, 32.738670, 40.732281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673725, 32.538460, 40.433777>,  <35.947685, 33.222214, 40.559959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673725, 32.538460, 40.433777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953064, 32.524696, 40.719749>,  <36.120667, 32.516438, 40.891331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953064, 32.524696, 40.719749>,  <35.673725, 32.538460, 40.433777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953064, 32.524696, 40.719749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664693, -0.401691, 0.629942,
		0.265503, -0.915128, -0.303395,
		0.698349, -0.034413, 0.714930,
		36.162567, 32.514374, 40.934227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495655, 31.891624, 40.812145>,  <35.673725, 32.538460, 40.433777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495655, 31.891624, 40.812145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722054, 32.100475, 41.067341>,  <35.857891, 32.225784, 41.220459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722054, 32.100475, 41.067341>,  <35.495655, 31.891624, 40.812145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722054, 32.100475, 41.067341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509072, -0.387358, 0.768635,
		0.648455, -0.759828, 0.046557,
		0.565996, 0.522126, 0.637991,
		35.891853, 32.257114, 41.258739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277733, 31.428438, 40.309109>,  <35.495655, 31.891624, 40.812145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277733, 31.428438, 40.309109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892693, 31.393951, 40.206375>,  <34.661667, 31.373259, 40.144733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892693, 31.393951, 40.206375>,  <35.277733, 31.428438, 40.309109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892693, 31.393951, 40.206375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155794, 0.599428, -0.785121,
		0.221648, -0.795772, -0.563578,
		-0.962601, -0.086218, -0.256838,
		34.603912, 31.368086, 40.129322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300426, 31.239527, 39.659748>,  <35.277733, 31.428438, 40.309109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300426, 31.239527, 39.659748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944523, 31.405338, 39.736156>,  <34.730980, 31.504826, 39.782001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944523, 31.405338, 39.736156>,  <35.300426, 31.239527, 39.659748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944523, 31.405338, 39.736156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118429, 0.613856, -0.780484,
		-0.440790, -0.671824, -0.595279,
		-0.889763, 0.414528, 0.191019,
		34.677593, 31.529697, 39.793461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975311, 31.358332, 38.886387>,  <35.300426, 31.239527, 39.659748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975311, 31.358332, 38.886387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749352, 31.581558, 39.129517>,  <34.613777, 31.715494, 39.275394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749352, 31.581558, 39.129517>,  <34.975311, 31.358332, 38.886387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749352, 31.581558, 39.129517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102258, 0.778282, -0.619533,
		-0.818802, -0.287816, -0.496715,
		-0.564896, 0.558068, 0.607827,
		34.579884, 31.748978, 39.311863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354191, 31.633471, 38.490383>,  <34.975311, 31.358332, 38.886387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354191, 31.633471, 38.490383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458447, 31.868250, 38.796993>,  <34.521000, 32.009117, 38.980957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458447, 31.868250, 38.796993>,  <34.354191, 31.633471, 38.490383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458447, 31.868250, 38.796993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137869, 0.763200, -0.631283,
		-0.955541, 0.270217, 0.117998,
		0.260639, 0.586949, 0.766524,
		34.536636, 32.044334, 39.026951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825943, 32.166363, 38.434799>,  <34.354191, 31.633471, 38.490383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825943, 32.166363, 38.434799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134113, 32.317074, 38.640514>,  <34.319016, 32.407501, 38.763943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134113, 32.317074, 38.640514>,  <33.825943, 32.166363, 38.434799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134113, 32.317074, 38.640514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052222, 0.766674, -0.639910,
		-0.635392, 0.519858, 0.570986,
		0.770422, 0.376775, 0.514286,
		34.365238, 32.430107, 38.794800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666790, 32.919827, 38.427639>,  <33.825943, 32.166363, 38.434799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666790, 32.919827, 38.427639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049175, 32.879707, 38.537960>,  <34.278606, 32.855637, 38.604153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049175, 32.879707, 38.537960>,  <33.666790, 32.919827, 38.427639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049175, 32.879707, 38.537960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263564, 0.706742, -0.656544,
		-0.129074, 0.700326, 0.702056,
		0.955967, -0.100294, 0.275803,
		34.335964, 32.849621, 38.620701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963112, 33.655396, 38.601810>,  <33.666790, 32.919827, 38.427639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963112, 33.655396, 38.601810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277931, 33.418621, 38.532330>,  <34.466824, 33.276558, 38.490643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277931, 33.418621, 38.532330>,  <33.963112, 33.655396, 38.601810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277931, 33.418621, 38.532330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291179, 0.604694, -0.741323,
		0.543850, 0.532878, 0.648281,
		0.787046, -0.591934, -0.173700,
		34.514046, 33.241039, 38.480221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468330, 34.101917, 38.639977>,  <33.963112, 33.655396, 38.601810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468330, 34.101917, 38.639977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593231, 33.786900, 38.427460>,  <34.668171, 33.597889, 38.299950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593231, 33.786900, 38.427460>,  <34.468330, 34.101917, 38.639977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593231, 33.786900, 38.427460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328802, 0.614280, -0.717321,
		0.891285, 0.049294, 0.450756,
		0.312250, -0.787547, -0.531291,
		34.686905, 33.550636, 38.268074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071121, 34.374668, 38.290501>,  <34.468330, 34.101917, 38.639977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071121, 34.374668, 38.290501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970745, 34.036980, 38.101055>,  <34.910519, 33.834366, 37.987389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970745, 34.036980, 38.101055>,  <35.071121, 34.374668, 38.290501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970745, 34.036980, 38.101055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468578, 0.322188, -0.822574,
		0.847031, -0.428347, 0.314733,
		-0.250944, -0.844223, -0.473618,
		34.895462, 33.783714, 37.958969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696522, 34.107899, 37.946693>,  <35.071121, 34.374668, 38.290501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696522, 34.107899, 37.946693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378704, 33.937920, 37.773205>,  <35.188015, 33.835934, 37.669109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378704, 33.937920, 37.773205>,  <35.696522, 34.107899, 37.946693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378704, 33.937920, 37.773205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379106, 0.210803, -0.901022,
		0.474318, -0.880330, -0.006393,
		-0.794544, -0.424948, -0.433726,
		35.140339, 33.810436, 37.643085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953075, 33.868206, 37.250751>,  <35.696522, 34.107899, 37.946693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953075, 33.868206, 37.250751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557598, 33.888657, 37.194374>,  <35.320312, 33.900928, 37.160549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557598, 33.888657, 37.194374>,  <35.953075, 33.868206, 37.250751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557598, 33.888657, 37.194374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149240, 0.245510, -0.957837,
		-0.014368, -0.968045, -0.250365,
		-0.988696, 0.051127, -0.140944,
		35.260990, 33.903996, 37.152092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778618, 33.308735, 36.811588>,  <35.953075, 33.868206, 37.250751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778618, 33.308735, 36.811588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561069, 33.642899, 36.779850>,  <35.430542, 33.843399, 36.760807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561069, 33.642899, 36.779850>,  <35.778618, 33.308735, 36.811588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561069, 33.642899, 36.779850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481255, 0.233043, -0.845035,
		-0.687461, -0.497772, -0.528791,
		-0.543866, 0.835412, -0.079347,
		35.397911, 33.893520, 36.756046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.287876, 28.728830, 42.549564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.924198, 28.878574, 42.622467>,  <33.705990, 28.968422, 42.666210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.924198, 28.878574, 42.622467>,  <34.287876, 28.728830, 42.549564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924198, 28.878574, 42.622467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129464, 0.670207, -0.730795,
		-0.395732, -0.640840, -0.657815,
		-0.909195, 0.374362, 0.182257,
		33.651440, 28.990883, 42.677143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880623, 28.704409, 41.916809>,  <34.287876, 28.728830, 42.549564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880623, 28.704409, 41.916809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685696, 28.973875, 42.139050>,  <33.568741, 29.135555, 42.272392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685696, 28.973875, 42.139050>,  <33.880623, 28.704409, 41.916809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685696, 28.973875, 42.139050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075356, 0.601447, -0.795351,
		-0.869967, -0.429456, -0.242331,
		-0.487317, 0.673668, 0.555602,
		33.539501, 29.175976, 42.305729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360317, 28.894505, 41.530594>,  <33.880623, 28.704409, 41.916809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360317, 28.894505, 41.530594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.426514, 29.191280, 41.790482>,  <33.466232, 29.369347, 41.946415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.426514, 29.191280, 41.790482>,  <33.360317, 28.894505, 41.530594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426514, 29.191280, 41.790482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005671, 0.658079, -0.752928,
		-0.986195, 0.128289, 0.104700,
		0.165493, 0.741940, 0.649721,
		33.476162, 29.413862, 41.985397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880375, 29.506456, 41.363014>,  <33.360317, 28.894505, 41.530594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880375, 29.506456, 41.363014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.189564, 29.644739, 41.575806>,  <33.375076, 29.727709, 41.703480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.189564, 29.644739, 41.575806>,  <32.880375, 29.506456, 41.363014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189564, 29.644739, 41.575806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183028, 0.681345, -0.708710,
		-0.607468, 0.645179, 0.463385,
		0.772970, 0.345707, 0.531981,
		33.421455, 29.748451, 41.735401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818638, 30.139307, 41.158913>,  <32.880375, 29.506456, 41.363014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818638, 30.139307, 41.158913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.183552, 30.129044, 41.322414>,  <33.402500, 30.122885, 41.420517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.183552, 30.129044, 41.322414>,  <32.818638, 30.139307, 41.158913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183552, 30.129044, 41.322414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299771, 0.721872, -0.623728,
		-0.279067, 0.691550, 0.666243,
		0.912282, -0.025659, 0.408757,
		33.457237, 30.121346, 41.445042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037037, 30.803326, 41.345631>,  <32.818638, 30.139307, 41.158913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037037, 30.803326, 41.345631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.398121, 30.637747, 41.298710>,  <33.614773, 30.538399, 41.270557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.398121, 30.637747, 41.298710>,  <33.037037, 30.803326, 41.345631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398121, 30.637747, 41.298710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264675, 0.749229, -0.607127,
		0.339207, 0.517013, 0.785899,
		0.902710, -0.413949, -0.117304,
		33.668934, 30.513561, 41.263519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579075, 31.330315, 41.446850>,  <33.037037, 30.803326, 41.345631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579075, 31.330315, 41.446850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765041, 31.023947, 41.269211>,  <33.876621, 30.840126, 41.162628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765041, 31.023947, 41.269211>,  <33.579075, 31.330315, 41.446850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765041, 31.023947, 41.269211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423740, 0.632917, -0.647966,
		0.777365, 0.113069, 0.618804,
		0.464917, -0.765918, -0.444096,
		33.904518, 30.794170, 41.135983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308086, 31.529661, 41.310276>,  <33.579075, 31.330315, 41.446850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308086, 31.529661, 41.310276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.248253, 31.224810, 41.058311>,  <34.212353, 31.041899, 40.907131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.248253, 31.224810, 41.058311>,  <34.308086, 31.529661, 41.310276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248253, 31.224810, 41.058311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238606, 0.590426, -0.771015,
		0.959528, -0.265629, 0.093532,
		-0.149580, -0.762128, -0.629911,
		34.203381, 30.996172, 40.869339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935894, 31.457973, 41.008732>,  <34.308086, 31.529661, 41.310276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935894, 31.457973, 41.008732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665501, 31.312183, 40.752544>,  <34.503265, 31.224709, 40.598831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665501, 31.312183, 40.752544>,  <34.935894, 31.457973, 41.008732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665501, 31.312183, 40.752544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180144, 0.761022, -0.623212,
		0.714556, -0.536660, -0.448783,
		-0.675987, -0.364474, -0.640468,
		34.462704, 31.202841, 40.560402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515129, 31.383055, 41.453823>,  <34.935894, 31.457973, 41.008732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515129, 31.383055, 41.453823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.698048, 31.718462, 41.572323>,  <35.807800, 31.919706, 41.643425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.698048, 31.718462, 41.572323>,  <35.515129, 31.383055, 41.453823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698048, 31.718462, 41.572323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003065, -0.331635, 0.943403,
		0.889308, -0.432324, -0.149086,
		0.457298, 0.838519, 0.296251,
		35.835236, 31.970018, 41.661198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162277, 31.286026, 41.916729>,  <35.515129, 31.383055, 41.453823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162277, 31.286026, 41.916729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.982235, 31.637421, 41.980808>,  <35.874210, 31.848257, 42.019257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.982235, 31.637421, 41.980808>,  <36.162277, 31.286026, 41.916729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982235, 31.637421, 41.980808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025721, -0.192081, 0.981042,
		0.892603, 0.437457, 0.109053,
		-0.450110, 0.878485, 0.160200,
		35.847202, 31.900967, 42.028870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483978, 31.507387, 42.460861>,  <36.162277, 31.286026, 41.916729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483978, 31.507387, 42.460861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144184, 31.718348, 42.454906>,  <35.940308, 31.844923, 42.451336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144184, 31.718348, 42.454906>,  <36.483978, 31.507387, 42.460861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144184, 31.718348, 42.454906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020171, -0.004276, 0.999787,
		0.527224, 0.849606, 0.014270,
		-0.849487, 0.527400, -0.014884,
		35.889339, 31.876568, 42.450443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588791, 32.026237, 42.888203>,  <36.483978, 31.507387, 42.460861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588791, 32.026237, 42.888203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188988, 32.013893, 42.885704>,  <35.949108, 32.006489, 42.884205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188988, 32.013893, 42.885704>,  <36.588791, 32.026237, 42.888203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188988, 32.013893, 42.885704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000528, -0.182085, 0.983283,
		-0.031479, 0.982798, 0.181979,
		-0.999504, -0.030857, -0.006251,
		35.889137, 32.004635, 42.883827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433800, 32.181923, 43.542973>,  <36.588791, 32.026237, 42.888203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433800, 32.181923, 43.542973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078720, 32.065525, 43.400246>,  <35.865673, 31.995687, 43.314610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078720, 32.065525, 43.400246>,  <36.433800, 32.181923, 43.542973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078720, 32.065525, 43.400246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329930, -0.138529, 0.933786,
		-0.321153, 0.946643, 0.026965,
		-0.887698, -0.290992, -0.356815,
		35.812412, 31.978228, 43.293201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886391, 32.638809, 43.744373>,  <36.433800, 32.181923, 43.542973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886391, 32.638809, 43.744373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.731625, 32.273579, 43.692863>,  <35.638767, 32.054440, 43.661957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.731625, 32.273579, 43.692863>,  <35.886391, 32.638809, 43.744373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731625, 32.273579, 43.692863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245299, -0.032699, 0.968896,
		-0.888890, 0.406467, -0.211326,
		-0.386914, -0.913080, -0.128772,
		35.615551, 31.999655, 43.654232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297180, 32.582058, 44.227497>,  <35.886391, 32.638809, 43.744373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297180, 32.582058, 44.227497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375519, 32.198757, 44.144165>,  <35.422523, 31.968777, 44.094166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375519, 32.198757, 44.144165>,  <35.297180, 32.582058, 44.227497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375519, 32.198757, 44.144165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110042, -0.232579, 0.966332,
		-0.974441, -0.166329, -0.150997,
		0.195848, -0.958249, -0.208331,
		35.434273, 31.911282, 44.081665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786915, 32.197971, 44.556183>,  <35.297180, 32.582058, 44.227497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786915, 32.197971, 44.556183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.082058, 31.936844, 44.487598>,  <35.259144, 31.780169, 44.446445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.082058, 31.936844, 44.487598>,  <34.786915, 32.197971, 44.556183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082058, 31.936844, 44.487598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162159, -0.418049, 0.893834,
		-0.655191, -0.631715, -0.414320,
		0.737855, -0.652818, -0.171464,
		35.303413, 31.740999, 44.436161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542255, 31.491541, 44.843880>,  <34.786915, 32.197971, 44.556183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542255, 31.491541, 44.843880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.941532, 31.472042, 44.829762>,  <35.181099, 31.460342, 44.821293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.941532, 31.472042, 44.829762>,  <34.542255, 31.491541, 44.843880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941532, 31.472042, 44.829762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006775, -0.491670, 0.870755,
		-0.059800, -0.869416, -0.490448,
		0.998188, -0.048749, -0.035292,
		35.240990, 31.457417, 44.819176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636414, 30.809351, 45.054005>,  <34.542255, 31.491541, 44.843880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636414, 30.809351, 45.054005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.997425, 30.977411, 45.091774>,  <35.214031, 31.078247, 45.114433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.997425, 30.977411, 45.091774>,  <34.636414, 30.809351, 45.054005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997425, 30.977411, 45.091774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249921, -0.689604, 0.679696,
		0.350687, -0.589848, -0.727391,
		0.902529, 0.420151, 0.094420,
		35.268185, 31.103456, 45.120098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171494, 30.290421, 45.131649>,  <34.636414, 30.809351, 45.054005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171494, 30.290421, 45.131649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.393356, 30.595087, 45.265652>,  <35.526474, 30.777887, 45.346054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.393356, 30.595087, 45.265652>,  <35.171494, 30.290421, 45.131649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393356, 30.595087, 45.265652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341096, -0.575353, 0.743385,
		0.758956, -0.298052, -0.578922,
		0.554652, 0.761665, 0.335003,
		35.559753, 30.823587, 45.366154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806465, 30.043095, 45.185646>,  <35.171494, 30.290421, 45.131649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806465, 30.043095, 45.185646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758247, 30.345907, 45.442509>,  <35.729317, 30.527596, 45.596626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758247, 30.345907, 45.442509>,  <35.806465, 30.043095, 45.185646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758247, 30.345907, 45.442509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162155, -0.623172, 0.765090,
		0.979374, 0.196359, -0.047635,
		-0.120547, 0.757034, 0.642159,
		35.722084, 30.573017, 45.635155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970226, 29.647610, 45.843498>,  <35.806465, 30.043095, 45.185646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970226, 29.647610, 45.843498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831436, 30.009380, 45.942791>,  <35.748161, 30.226442, 46.002369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831436, 30.009380, 45.942791>,  <35.970226, 29.647610, 45.843498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831436, 30.009380, 45.942791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141334, -0.312077, 0.939485,
		0.927164, 0.290894, 0.236109,
		-0.346975, 0.904427, 0.248233,
		35.727345, 30.280708, 46.017262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361980, 29.900633, 46.405727>,  <35.970226, 29.647610, 45.843498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361980, 29.900633, 46.405727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014782, 30.097351, 46.433205>,  <35.806461, 30.215382, 46.449692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014782, 30.097351, 46.433205>,  <36.361980, 29.900633, 46.405727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014782, 30.097351, 46.433205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083178, -0.280372, 0.956281,
		0.489554, 0.824335, 0.284269,
		-0.867997, 0.491796, 0.068690,
		35.754383, 30.244890, 46.453812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.363905, 34.345219, 47.004509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698179, 34.127872, 46.972553>,  <30.898743, 33.997463, 46.953381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698179, 34.127872, 46.972553>,  <30.363905, 34.345219, 47.004509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698179, 34.127872, 46.972553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317601, 0.596799, -0.736858,
		0.448065, 0.590407, 0.671310,
		0.835684, -0.543369, -0.079891,
		30.948885, 33.964863, 46.948586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834558, 34.855965, 46.867779>,  <30.363905, 34.345219, 47.004509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834558, 34.855965, 46.867779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001421, 34.508976, 46.759354>,  <31.101538, 34.300781, 46.694298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001421, 34.508976, 46.759354>,  <30.834558, 34.855965, 46.867779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001421, 34.508976, 46.759354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393769, 0.441314, -0.806342,
		0.819102, 0.229635, 0.525680,
		0.417154, -0.867473, -0.271058,
		31.126568, 34.248734, 46.678036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424595, 35.120991, 46.417583>,  <30.834558, 34.855965, 46.867779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424595, 35.120991, 46.417583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.357079, 34.737026, 46.328072>,  <31.316568, 34.506649, 46.274364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.357079, 34.737026, 46.328072>,  <31.424595, 35.120991, 46.417583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357079, 34.737026, 46.328072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401314, 0.140435, -0.905110,
		0.900253, -0.242581, 0.361522,
		-0.168793, -0.959913, -0.223778,
		31.306440, 34.449051, 46.260937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139114, 34.803646, 46.276173>,  <31.424595, 35.120991, 46.417583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139114, 34.803646, 46.276173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.846029, 34.598740, 46.096966>,  <31.670177, 34.475796, 45.989441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.846029, 34.598740, 46.096966>,  <32.139114, 34.803646, 46.276173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846029, 34.598740, 46.096966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418310, 0.180263, -0.890237,
		0.536795, -0.839698, 0.082204,
		-0.732712, -0.512262, -0.448019,
		31.626215, 34.445061, 45.962559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521961, 34.472675, 45.760502>,  <32.139114, 34.803646, 46.276173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521961, 34.472675, 45.760502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.132027, 34.486755, 45.672447>,  <31.898066, 34.495201, 45.619614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.132027, 34.486755, 45.672447>,  <32.521961, 34.472675, 45.760502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132027, 34.486755, 45.672447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222257, 0.230133, -0.947439,
		0.017312, -0.972523, -0.232164,
		-0.974835, 0.035198, -0.220134,
		31.839577, 34.497314, 45.606407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668816, 34.326469, 45.083847>,  <32.521961, 34.472675, 45.760502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668816, 34.326469, 45.083847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.284657, 34.435818, 45.105381>,  <32.054161, 34.501427, 45.118301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.284657, 34.435818, 45.105381>,  <32.668816, 34.326469, 45.083847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284657, 34.435818, 45.105381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062117, 0.398436, -0.915090,
		-0.271611, -0.875509, -0.399640,
		-0.960400, 0.273373, 0.053836,
		31.996536, 34.517830, 45.121532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283943, 34.108372, 44.460678>,  <32.668816, 34.326469, 45.083847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283943, 34.108372, 44.460678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.098312, 34.428417, 44.612701>,  <31.986933, 34.620445, 44.703915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.098312, 34.428417, 44.612701>,  <32.283943, 34.108372, 44.460678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098312, 34.428417, 44.612701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075943, 0.463423, -0.882877,
		-0.882533, -0.380861, -0.275827,
		-0.464078, 0.800115, 0.380062,
		31.959089, 34.668453, 44.726719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954540, 34.349224, 43.857159>,  <32.283943, 34.108372, 44.460678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954540, 34.349224, 43.857159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915281, 34.652206, 44.115345>,  <31.891726, 34.833996, 44.270256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915281, 34.652206, 44.115345>,  <31.954540, 34.349224, 43.857159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915281, 34.652206, 44.115345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205865, 0.650025, -0.731497,
		-0.973646, 0.061085, -0.219732,
		-0.098147, 0.757454, 0.645469,
		31.885838, 34.879444, 44.308987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426952, 34.902794, 43.577335>,  <31.954540, 34.349224, 43.857159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426952, 34.902794, 43.577335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677208, 35.067638, 43.842285>,  <31.827362, 35.166546, 44.001255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677208, 35.067638, 43.842285>,  <31.426952, 34.902794, 43.577335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677208, 35.067638, 43.842285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239403, 0.706676, -0.665804,
		-0.742470, 0.575128, 0.343463,
		0.625640, 0.412113, 0.662373,
		31.864901, 35.191273, 44.040997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285160, 35.562767, 43.499107>,  <31.426952, 34.902794, 43.577335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285160, 35.562767, 43.499107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.651556, 35.563358, 43.659588>,  <31.871393, 35.563713, 43.755875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.651556, 35.563358, 43.659588>,  <31.285160, 35.562767, 43.499107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651556, 35.563358, 43.659588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343022, 0.515752, -0.785070,
		-0.208082, 0.856736, 0.471916,
		0.915990, 0.001481, 0.401199,
		31.926353, 35.563805, 43.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526251, 36.209412, 43.272511>,  <31.285160, 35.562767, 43.499107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526251, 36.209412, 43.272511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863520, 36.027821, 43.387726>,  <32.065880, 35.918865, 43.456856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863520, 36.027821, 43.387726>,  <31.526251, 36.209412, 43.272511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863520, 36.027821, 43.387726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450242, 0.303405, -0.839779,
		0.293846, 0.837766, 0.460221,
		0.843171, -0.453976, 0.288043,
		32.116470, 35.891628, 43.474140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038280, 36.682823, 43.066383>,  <31.526251, 36.209412, 43.272511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038280, 36.682823, 43.066383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232433, 36.337761, 43.123280>,  <32.348927, 36.130722, 43.157417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232433, 36.337761, 43.123280>,  <32.038280, 36.682823, 43.066383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232433, 36.337761, 43.123280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567559, 0.187139, -0.801783,
		0.665043, 0.469901, 0.580441,
		0.485381, -0.862654, 0.142241,
		32.378048, 36.078964, 43.165951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731236, 36.835888, 43.058277>,  <32.038280, 36.682823, 43.066383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731236, 36.835888, 43.058277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757648, 36.453182, 42.944965>,  <32.773495, 36.223560, 42.876980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757648, 36.453182, 42.944965>,  <32.731236, 36.835888, 43.058277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757648, 36.453182, 42.944965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683366, 0.250226, -0.685856,
		0.727084, -0.148295, 0.670341,
		0.066028, -0.956763, -0.283275,
		32.777458, 36.166153, 42.859982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421955, 36.698143, 42.941830>,  <32.731236, 36.835888, 43.058277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421955, 36.698143, 42.941830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.229820, 36.419891, 42.728149>,  <33.114540, 36.252941, 42.599941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.229820, 36.419891, 42.728149>,  <33.421955, 36.698143, 42.941830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229820, 36.419891, 42.728149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617557, 0.164258, -0.769183,
		0.622814, -0.699370, 0.350692,
		-0.480340, -0.695630, -0.534203,
		33.085720, 36.211201, 42.567890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939381, 36.343224, 43.219364>,  <33.421955, 36.698143, 42.941830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939381, 36.343224, 43.219364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.336983, 36.358318, 43.260406>,  <34.575542, 36.367374, 43.285034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.336983, 36.358318, 43.260406>,  <33.939381, 36.343224, 43.219364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336983, 36.358318, 43.260406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078626, -0.405394, 0.910754,
		0.075967, -0.913363, -0.399997,
		0.994006, 0.037737, 0.102611,
		34.635185, 36.369640, 43.291191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216908, 35.649235, 43.344250>,  <33.939381, 36.343224, 43.219364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216908, 35.649235, 43.344250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.442627, 35.922340, 43.529892>,  <34.578060, 36.086205, 43.641277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.442627, 35.922340, 43.529892>,  <34.216908, 35.649235, 43.344250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442627, 35.922340, 43.529892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020293, -0.573468, 0.818976,
		0.825320, -0.452730, -0.337464,
		0.564300, 0.682766, 0.464107,
		34.611916, 36.127171, 43.669125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781204, 35.305561, 43.710533>,  <34.216908, 35.649235, 43.344250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781204, 35.305561, 43.710533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715828, 35.657043, 43.889935>,  <34.676601, 35.867931, 43.997578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715828, 35.657043, 43.889935>,  <34.781204, 35.305561, 43.710533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715828, 35.657043, 43.889935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057097, -0.445434, 0.893492,
		0.984899, 0.171645, 0.022632,
		-0.163445, 0.878707, 0.448508,
		34.666794, 35.920654, 44.024487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969284, 35.097229, 44.334705>,  <34.781204, 35.305561, 43.710533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969284, 35.097229, 44.334705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779156, 35.447193, 44.371819>,  <34.665081, 35.657169, 44.394085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779156, 35.447193, 44.371819>,  <34.969284, 35.097229, 44.334705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779156, 35.447193, 44.371819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097509, -0.157193, 0.982742,
		0.874393, 0.458069, 0.160028,
		-0.475319, 0.874907, 0.092783,
		34.636559, 35.709667, 44.399654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346336, 35.461517, 44.923130>,  <34.969284, 35.097229, 44.334705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346336, 35.461517, 44.923130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979164, 35.616947, 44.891125>,  <34.758862, 35.710205, 44.871922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979164, 35.616947, 44.891125>,  <35.346336, 35.461517, 44.923130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979164, 35.616947, 44.891125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111289, -0.058617, 0.992058,
		0.380802, 0.919549, 0.097051,
		-0.917935, 0.388579, -0.080014,
		34.703785, 35.733521, 44.867119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307369, 35.824863, 45.616955>,  <35.346336, 35.461517, 44.923130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307369, 35.824863, 45.616955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946152, 35.804348, 45.446369>,  <34.729420, 35.792038, 45.344017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946152, 35.804348, 45.446369>,  <35.307369, 35.824863, 45.616955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946152, 35.804348, 45.446369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404936, -0.229553, 0.885061,
		-0.143292, 0.971944, 0.186528,
		-0.903047, -0.051290, -0.426468,
		34.675236, 35.788960, 45.318428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939137, 36.295361, 45.901569>,  <35.307369, 35.824863, 45.616955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939137, 36.295361, 45.901569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665543, 36.037971, 45.764103>,  <34.501385, 35.883537, 45.681622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665543, 36.037971, 45.764103>,  <34.939137, 36.295361, 45.901569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665543, 36.037971, 45.764103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368472, -0.101843, 0.924044,
		-0.629596, 0.758665, -0.167442,
		-0.683987, -0.643472, -0.343666,
		34.460346, 35.844929, 45.661003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209518, 36.568771, 46.089630>,  <34.939137, 36.295361, 45.901569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209518, 36.568771, 46.089630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.185444, 36.178284, 46.006329>,  <34.170998, 35.943993, 45.956348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.185444, 36.178284, 46.006329>,  <34.209518, 36.568771, 46.089630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185444, 36.178284, 46.006329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260472, -0.186047, 0.947386,
		-0.963603, 0.111266, -0.243080,
		-0.060188, -0.976220, -0.208258,
		34.167389, 35.885418, 45.943851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594051, 36.250473, 46.329720>,  <34.209518, 36.568771, 46.089630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594051, 36.250473, 46.329720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816475, 35.918022, 46.327599>,  <33.949928, 35.718552, 46.326324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816475, 35.918022, 46.327599>,  <33.594051, 36.250473, 46.329720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816475, 35.918022, 46.327599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423926, -0.289102, 0.858317,
		-0.714903, -0.475026, -0.513093,
		0.556059, -0.831126, -0.005304,
		33.983292, 35.668686, 46.326008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117363, 35.791592, 46.511471>,  <33.594051, 36.250473, 46.329720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117363, 35.791592, 46.511471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474396, 35.628807, 46.589115>,  <33.688614, 35.531136, 46.635704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474396, 35.628807, 46.589115>,  <33.117363, 35.791592, 46.511471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474396, 35.628807, 46.589115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395155, -0.498723, 0.771445,
		-0.217138, -0.765284, -0.605964,
		0.892582, -0.406960, 0.194114,
		33.742172, 35.506718, 46.647350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010170, 35.172558, 46.577358>,  <33.117363, 35.791592, 46.511471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010170, 35.172558, 46.577358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359715, 35.191463, 46.770908>,  <33.569439, 35.202808, 46.887039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359715, 35.191463, 46.770908>,  <33.010170, 35.172558, 46.577358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359715, 35.191463, 46.770908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299370, -0.731887, 0.612143,
		0.383079, -0.679785, -0.625414,
		0.873858, 0.047269, 0.483878,
		33.621872, 35.205643, 46.916073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169910, 34.471073, 46.775513>,  <33.010170, 35.172558, 46.577358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169910, 34.471073, 46.775513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408218, 34.690544, 47.010120>,  <33.551205, 34.822227, 47.150887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408218, 34.690544, 47.010120>,  <33.169910, 34.471073, 46.775513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408218, 34.690544, 47.010120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335736, -0.493266, 0.802478,
		0.729613, -0.675010, -0.109663,
		0.595774, 0.548680, 0.586518,
		33.586952, 34.855148, 47.186077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599640, 33.931847, 47.254761>,  <33.169910, 34.471073, 46.775513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599640, 33.931847, 47.254761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589401, 34.299740, 47.411442>,  <33.583256, 34.520477, 47.505451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589401, 34.299740, 47.411442>,  <33.599640, 33.931847, 47.254761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589401, 34.299740, 47.411442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270373, -0.383594, 0.883037,
		0.962415, -0.083300, 0.258491,
		-0.025599, 0.919737, 0.391699,
		33.581722, 34.575661, 47.528950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006374, 33.891411, 47.785275>,  <33.599640, 33.931847, 47.254761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006374, 33.891411, 47.785275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.790180, 34.215725, 47.875164>,  <33.660465, 34.410313, 47.929100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.790180, 34.215725, 47.875164>,  <34.006374, 33.891411, 47.785275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790180, 34.215725, 47.875164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127426, -0.342905, 0.930687,
		0.831649, 0.474385, 0.288650,
		-0.540483, 0.810787, 0.224728,
		33.628036, 34.458961, 47.942581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809856, 33.931034, 47.987972>,  <34.006374, 33.891411, 47.785275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809856, 33.931034, 47.987972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075817, 33.650951, 48.091991>,  <35.235394, 33.482903, 48.154404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075817, 33.650951, 48.091991>,  <34.809856, 33.931034, 47.987972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075817, 33.650951, 48.091991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699549, 0.461733, -0.545374,
		0.261799, 0.544535, 0.796833,
		0.664900, -0.700203, 0.260048,
		35.275288, 33.440891, 48.170006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495903, 34.203461, 48.236576>,  <34.809856, 33.931034, 47.987972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495903, 34.203461, 48.236576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.548515, 33.834206, 48.092068>,  <35.580082, 33.612652, 48.005363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.548515, 33.834206, 48.092068>,  <35.495903, 34.203461, 48.236576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548515, 33.834206, 48.092068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606199, 0.363261, -0.707505,
		0.784361, -0.125945, 0.607385,
		0.131532, -0.923136, -0.361275,
		35.587975, 33.557266, 47.983685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220631, 34.213890, 47.986599>,  <35.495903, 34.203461, 48.236576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220631, 34.213890, 47.986599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093685, 33.872856, 47.820522>,  <36.017517, 33.668236, 47.720875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093685, 33.872856, 47.820522>,  <36.220631, 34.213890, 47.986599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093685, 33.872856, 47.820522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659877, 0.115893, -0.742382,
		0.681060, -0.509580, 0.525819,
		-0.317364, -0.852583, -0.415190,
		35.998474, 33.617081, 47.695965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828842, 33.901367, 47.886311>,  <36.220631, 34.213890, 47.986599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828842, 33.901367, 47.886311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553570, 33.756081, 47.635078>,  <36.388409, 33.668907, 47.484337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553570, 33.756081, 47.635078>,  <36.828842, 33.901367, 47.886311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553570, 33.756081, 47.635078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609268, 0.180750, -0.772089,
		0.393961, -0.914004, 0.096907,
		-0.688177, -0.363215, -0.628082,
		36.347118, 33.647118, 47.446655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056755, 33.381386, 47.469448>,  <36.828842, 33.901367, 47.886311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056755, 33.381386, 47.469448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741875, 33.483006, 47.244671>,  <36.552948, 33.543976, 47.109806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741875, 33.483006, 47.244671>,  <37.056755, 33.381386, 47.469448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741875, 33.483006, 47.244671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558375, -0.093198, -0.824337,
		-0.261793, -0.962691, -0.068489,
		-0.787199, 0.254049, -0.561941,
		36.505714, 33.559219, 47.076088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118114, 32.939884, 46.990189>,  <37.056755, 33.381386, 47.469448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118114, 32.939884, 46.990189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.882420, 33.208431, 46.810383>,  <36.741001, 33.369560, 46.702499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.882420, 33.208431, 46.810383>,  <37.118114, 32.939884, 46.990189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882420, 33.208431, 46.810383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552682, -0.070905, -0.830371,
		-0.589357, -0.737724, -0.329273,
		-0.589238, 0.671368, -0.449515,
		36.705647, 33.409843, 46.675529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887535, 32.656017, 46.329556>,  <37.118114, 32.939884, 46.990189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887535, 32.656017, 46.329556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827660, 33.048958, 46.284702>,  <36.791733, 33.284721, 46.257790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827660, 33.048958, 46.284702>,  <36.887535, 32.656017, 46.329556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827660, 33.048958, 46.284702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300548, -0.062831, -0.951695,
		-0.941946, -0.176161, -0.285840,
		-0.149692, 0.982354, -0.112128,
		36.782753, 33.343662, 46.251064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559109, 32.729660, 45.682415>,  <36.887535, 32.656017, 46.329556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559109, 32.729660, 45.682415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.708340, 33.097221, 45.733700>,  <36.797878, 33.317757, 45.764473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.708340, 33.097221, 45.733700>,  <36.559109, 32.729660, 45.682415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708340, 33.097221, 45.733700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319489, 0.002505, -0.947587,
		-0.871059, 0.394482, -0.292644,
		0.373073, 0.918900, 0.128214,
		36.820263, 33.372890, 45.772163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270065, 33.145657, 45.183090>,  <36.559109, 32.729660, 45.682415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270065, 33.145657, 45.183090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.593170, 33.354942, 45.291733>,  <36.787033, 33.480515, 45.356918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.593170, 33.354942, 45.291733>,  <36.270065, 33.145657, 45.183090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593170, 33.354942, 45.291733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253797, 0.107199, -0.961299,
		-0.532081, 0.845432, -0.046199,
		0.807760, 0.523214, 0.271607,
		36.835499, 33.511906, 45.373215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369225, 33.651882, 44.652863>,  <36.270065, 33.145657, 45.183090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369225, 33.651882, 44.652863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726944, 33.622101, 44.829353>,  <36.941578, 33.604233, 44.935246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726944, 33.622101, 44.829353>,  <36.369225, 33.651882, 44.652863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726944, 33.622101, 44.829353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446013, 0.227657, -0.865589,
		-0.035998, 0.970890, 0.236804,
		0.894302, -0.074458, 0.441225,
		36.995235, 33.599762, 44.961720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711956, 34.119015, 44.339043>,  <36.369225, 33.651882, 44.652863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711956, 34.119015, 44.339043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003262, 33.911415, 44.518047>,  <37.178047, 33.786858, 44.625450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003262, 33.911415, 44.518047>,  <36.711956, 34.119015, 44.339043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003262, 33.911415, 44.518047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570123, 0.096508, -0.815871,
		0.380245, 0.849311, 0.366175,
		0.728267, -0.518996, 0.447515,
		37.221741, 33.755714, 44.652302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264904, 34.550724, 44.274250>,  <36.711956, 34.119015, 44.339043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264904, 34.550724, 44.274250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390594, 34.175968, 44.335575>,  <37.466011, 33.951115, 44.372368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390594, 34.175968, 44.335575>,  <37.264904, 34.550724, 44.274250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390594, 34.175968, 44.335575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717507, 0.128630, -0.684571,
		0.621645, 0.325114, 0.712642,
		0.314231, -0.936886, 0.153309,
		37.484863, 33.894901, 44.381569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114124, 34.595909, 44.347420>,  <37.264904, 34.550724, 44.274250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114124, 34.595909, 44.347420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997860, 34.225956, 44.249352>,  <37.928101, 34.003983, 44.190510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997860, 34.225956, 44.249352>,  <38.114124, 34.595909, 44.347420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997860, 34.225956, 44.249352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699729, -0.030702, -0.713748,
		0.652606, -0.379012, 0.656091,
		-0.290662, -0.924883, -0.245169,
		37.910660, 33.948490, 44.175800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738705, 34.253101, 44.138000>,  <38.114124, 34.595909, 44.347420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738705, 34.253101, 44.138000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466782, 34.025257, 43.953217>,  <38.303627, 33.888550, 43.842346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466782, 34.025257, 43.953217>,  <38.738705, 34.253101, 44.138000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466782, 34.025257, 43.953217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647713, -0.170854, -0.742480,
		0.343997, -0.803960, 0.485092,
		-0.679805, -0.569611, -0.461962,
		38.262840, 33.854374, 43.814629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.467953, 42.909607, 32.348183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661970, 42.834965, 32.006443>,  <27.778381, 42.790180, 31.801399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661970, 42.834965, 32.006443>,  <27.467953, 42.909607, 32.348183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661970, 42.834965, 32.006443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191512, -0.930586, 0.311982,
		-0.853260, -0.314943, -0.415641,
		0.485046, -0.186601, -0.854348,
		27.807484, 42.778984, 31.750139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147871, 42.352047, 31.991442>,  <27.467953, 42.909607, 32.348183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147871, 42.352047, 31.991442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536047, 42.447960, 31.980513>,  <27.768953, 42.505508, 31.973955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536047, 42.447960, 31.980513>,  <27.147871, 42.352047, 31.991442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536047, 42.447960, 31.980513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224823, -0.857081, 0.463536,
		0.087730, -0.455978, -0.885657,
		0.970442, 0.239782, -0.027323,
		27.827179, 42.519894, 31.972315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508886, 41.830151, 31.616629>,  <27.147871, 42.352047, 31.991442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508886, 41.830151, 31.616629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766010, 42.000538, 31.871296>,  <27.920284, 42.102772, 32.024097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766010, 42.000538, 31.871296>,  <27.508886, 41.830151, 31.616629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766010, 42.000538, 31.871296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133622, -0.880742, 0.454356,
		0.754280, -0.206993, -0.623069,
		0.642811, 0.425967, 0.636667,
		27.958855, 42.128326, 32.062298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817604, 41.270908, 31.955387>,  <27.508886, 41.830151, 31.616629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817604, 41.270908, 31.955387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932823, 41.570831, 32.193653>,  <28.001955, 41.750786, 32.336613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932823, 41.570831, 32.193653>,  <27.817604, 41.270908, 31.955387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932823, 41.570831, 32.193653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350166, -0.661423, 0.663252,
		0.891297, 0.017532, -0.453080,
		0.288050, 0.749808, 0.595664,
		28.019238, 41.795773, 32.372353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477682, 41.064854, 32.236591>,  <27.817604, 41.270908, 31.955387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477682, 41.064854, 32.236591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345966, 41.330235, 32.505337>,  <28.266937, 41.489464, 32.666584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345966, 41.330235, 32.505337>,  <28.477682, 41.064854, 32.236591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345966, 41.330235, 32.505337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178575, -0.654946, 0.734273,
		0.927189, 0.361766, 0.097190,
		-0.329289, 0.663454, 0.671861,
		28.247179, 41.529270, 32.706894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948500, 41.121468, 32.813133>,  <28.477682, 41.064854, 32.236591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948500, 41.121468, 32.813133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606876, 41.269108, 32.959747>,  <28.401901, 41.357693, 33.047718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606876, 41.269108, 32.959747>,  <28.948500, 41.121468, 32.813133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606876, 41.269108, 32.959747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020488, -0.680224, 0.732718,
		0.519772, 0.633294, 0.573390,
		-0.854059, 0.369099, 0.366537,
		28.350658, 41.379837, 33.069710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140682, 41.309193, 33.608826>,  <28.948500, 41.121468, 32.813133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140682, 41.309193, 33.608826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743567, 41.268009, 33.584267>,  <28.505297, 41.243298, 33.569530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743567, 41.268009, 33.584267>,  <29.140682, 41.309193, 33.608826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743567, 41.268009, 33.584267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035029, -0.738982, 0.672813,
		-0.114642, 0.665811, 0.737260,
		-0.992789, -0.102958, -0.061396,
		28.445730, 41.237122, 33.565849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929031, 41.223122, 34.295132>,  <29.140682, 41.309193, 33.608826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929031, 41.223122, 34.295132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.610054, 41.104912, 34.084705>,  <28.418667, 41.033985, 33.958450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.610054, 41.104912, 34.084705>,  <28.929031, 41.223122, 34.295132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610054, 41.104912, 34.084705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213258, -0.677540, 0.703889,
		-0.564451, 0.673500, 0.477276,
		-0.797444, -0.295528, -0.526068,
		28.370821, 41.016254, 33.926884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332098, 41.070923, 34.764034>,  <28.929031, 41.223122, 34.295132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332098, 41.070923, 34.764034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307159, 40.847134, 34.433434>,  <28.292196, 40.712860, 34.235073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307159, 40.847134, 34.433434>,  <28.332098, 41.070923, 34.764034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307159, 40.847134, 34.433434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084295, -0.822201, 0.562921,
		-0.994489, 0.104765, 0.004099,
		-0.062345, -0.559473, -0.826501,
		28.288456, 40.679291, 34.185482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902967, 40.553112, 34.859356>,  <28.332098, 41.070923, 34.764034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902967, 40.553112, 34.859356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081650, 40.401917, 34.534992>,  <28.188858, 40.311199, 34.340374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081650, 40.401917, 34.534992>,  <27.902967, 40.553112, 34.859356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081650, 40.401917, 34.534992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188180, -0.925788, 0.327880,
		-0.874667, 0.006131, -0.484686,
		0.446706, -0.377994, -0.810910,
		28.215662, 40.288517, 34.291718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615303, 39.871662, 34.859047>,  <27.902967, 40.553112, 34.859356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615303, 39.871662, 34.859047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899914, 39.828205, 34.581364>,  <28.070681, 39.802132, 34.414753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899914, 39.828205, 34.581364>,  <27.615303, 39.871662, 34.859047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899914, 39.828205, 34.581364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061221, -0.974633, 0.215274,
		-0.699985, -0.195673, -0.686828,
		0.711528, -0.108640, -0.694208,
		28.113373, 39.795612, 34.373100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374699, 39.233887, 34.422726>,  <27.615303, 39.871662, 34.859047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374699, 39.233887, 34.422726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767225, 39.301121, 34.385281>,  <28.002741, 39.341461, 34.362816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767225, 39.301121, 34.385281>,  <27.374699, 39.233887, 34.422726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767225, 39.301121, 34.385281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182143, -0.968347, 0.170667,
		-0.061961, -0.184529, -0.980872,
		0.981318, 0.168084, -0.093610,
		28.061621, 39.351547, 34.357197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587568, 38.714687, 34.024673>,  <27.374699, 39.233887, 34.422726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587568, 38.714687, 34.024673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917404, 38.835949, 34.215733>,  <28.115305, 38.908707, 34.330368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917404, 38.835949, 34.215733>,  <27.587568, 38.714687, 34.024673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917404, 38.835949, 34.215733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253505, -0.952795, 0.167082,
		0.505755, -0.016688, -0.862516,
		0.824589, 0.303155, 0.477650,
		28.164782, 38.926895, 34.359028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064402, 38.151405, 34.035378>,  <27.587568, 38.714687, 34.024673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064402, 38.151405, 34.035378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230600, 38.379314, 34.318989>,  <28.330318, 38.516060, 34.489155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230600, 38.379314, 34.318989>,  <28.064402, 38.151405, 34.035378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230600, 38.379314, 34.318989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299647, -0.821727, 0.484745,
		0.858823, 0.011049, -0.512154,
		0.415495, 0.569775, 0.709028,
		28.355249, 38.550247, 34.531696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697899, 37.841434, 34.166344>,  <28.064402, 38.151405, 34.035378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697899, 37.841434, 34.166344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583237, 38.063656, 34.478546>,  <28.514441, 38.196987, 34.665867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583237, 38.063656, 34.478546>,  <28.697899, 37.841434, 34.166344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583237, 38.063656, 34.478546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101636, -0.792466, 0.601389,
		0.952628, 0.251718, 0.170699,
		-0.286654, 0.555550, 0.780508,
		28.497240, 38.230320, 34.712700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212551, 37.721355, 34.477493>,  <28.697899, 37.841434, 34.166344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212551, 37.721355, 34.477493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926584, 37.862595, 34.718895>,  <28.755005, 37.947338, 34.863735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926584, 37.862595, 34.718895>,  <29.212551, 37.721355, 34.477493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926584, 37.862595, 34.718895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235700, -0.690906, 0.683443,
		0.658285, 0.630851, 0.410717,
		-0.714918, 0.353094, 0.603505,
		28.712109, 37.968521, 34.899948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508591, 37.561352, 35.174625>,  <29.212551, 37.721355, 34.477493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508591, 37.561352, 35.174625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118370, 37.619518, 35.240543>,  <28.884237, 37.654419, 35.280094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118370, 37.619518, 35.240543>,  <29.508591, 37.561352, 35.174625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118370, 37.619518, 35.240543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026578, -0.822374, 0.568326,
		0.218164, 0.550050, 0.806132,
		-0.975550, 0.145414, 0.164793,
		28.825705, 37.663143, 35.289982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413313, 37.653595, 35.948532>,  <29.508591, 37.561352, 35.174625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413313, 37.653595, 35.948532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.088934, 37.511314, 35.762699>,  <28.894306, 37.425945, 35.651199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.088934, 37.511314, 35.762699>,  <29.413313, 37.653595, 35.948532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088934, 37.511314, 35.762699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045674, -0.830063, 0.555796,
		-0.583333, 0.429502, 0.689384,
		-0.810948, -0.355700, -0.464586,
		28.845650, 37.404606, 35.623322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193066, 37.718872, 35.883667>,  <29.413313, 37.653595, 35.948532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193066, 37.718872, 35.883667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572462, 37.592457, 35.892460>,  <30.800100, 37.516609, 35.897736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572462, 37.592457, 35.892460>,  <30.193066, 37.718872, 35.883667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572462, 37.592457, 35.892460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281044, 0.807385, -0.518791,
		0.146208, 0.498247, 0.854618,
		0.948492, -0.316037, 0.021983,
		30.857010, 37.497646, 35.899055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687443, 38.274376, 36.206142>,  <30.193066, 37.718872, 35.883667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687443, 38.274376, 36.206142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.815504, 38.022362, 35.923141>,  <30.892342, 37.871155, 35.753342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.815504, 38.022362, 35.923141>,  <30.687443, 38.274376, 36.206142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815504, 38.022362, 35.923141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306663, 0.775520, -0.551839,
		0.896359, -0.040292, 0.441494,
		0.320153, -0.630036, -0.707501,
		30.911551, 37.833351, 35.710892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282137, 38.586903, 35.961250>,  <30.687443, 38.274376, 36.206142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282137, 38.586903, 35.961250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188560, 38.333046, 35.666630>,  <31.132414, 38.180733, 35.489857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188560, 38.333046, 35.666630>,  <31.282137, 38.586903, 35.961250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188560, 38.333046, 35.666630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442519, 0.605047, -0.661888,
		0.865707, -0.480779, 0.139296,
		-0.233942, -0.634641, -0.736547,
		31.118378, 38.142654, 35.445667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834827, 38.454803, 35.476097>,  <31.282137, 38.586903, 35.961250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834827, 38.454803, 35.476097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.498241, 38.377300, 35.274349>,  <31.296289, 38.330799, 35.153301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.498241, 38.377300, 35.274349>,  <31.834827, 38.454803, 35.476097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498241, 38.377300, 35.274349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316605, 0.579610, -0.750875,
		0.437829, -0.791523, -0.426376,
		-0.841467, -0.193762, -0.504370,
		31.245802, 38.319172, 35.123039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130825, 38.407063, 34.813782>,  <31.834827, 38.454803, 35.476097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130825, 38.407063, 34.813782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737103, 38.449764, 34.757580>,  <31.500868, 38.475388, 34.723858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737103, 38.449764, 34.757580>,  <32.130825, 38.407063, 34.813782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737103, 38.449764, 34.757580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174152, 0.716125, -0.675896,
		0.028461, -0.689759, -0.723480,
		-0.984307, 0.106759, -0.140504,
		31.441811, 38.481792, 34.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124420, 38.530205, 34.066441>,  <32.130825, 38.407063, 34.813782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124420, 38.530205, 34.066441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.768242, 38.658890, 34.195190>,  <31.554535, 38.736103, 34.272442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.768242, 38.658890, 34.195190>,  <32.124420, 38.530205, 34.066441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768242, 38.658890, 34.195190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152930, 0.877686, -0.454181,
		-0.428626, -0.355198, -0.830731,
		-0.890445, 0.321717, 0.321878,
		31.501108, 38.755405, 34.291756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827173, 38.722588, 33.447796>,  <32.124420, 38.530205, 34.066441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827173, 38.722588, 33.447796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.592577, 38.877781, 33.732189>,  <31.451820, 38.970898, 33.902824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.592577, 38.877781, 33.732189>,  <31.827173, 38.722588, 33.447796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592577, 38.877781, 33.732189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165295, 0.801999, -0.573999,
		-0.792911, -0.454167, -0.406233,
		-0.586490, 0.387982, 0.710985,
		31.416630, 38.994175, 33.945484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230434, 38.781902, 33.116333>,  <31.827173, 38.722588, 33.447796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230434, 38.781902, 33.116333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.240828, 39.042435, 33.419670>,  <31.247063, 39.198753, 33.601673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.240828, 39.042435, 33.419670>,  <31.230434, 38.781902, 33.116333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240828, 39.042435, 33.419670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266956, 0.735572, -0.622630,
		-0.963358, -0.186267, 0.192990,
		0.025982, 0.651336, 0.758345,
		31.248623, 39.237835, 33.647175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552547, 39.104023, 33.122208>,  <31.230434, 38.781902, 33.116333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552547, 39.104023, 33.122208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.817648, 39.340809, 33.305660>,  <30.976709, 39.482880, 33.415730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.817648, 39.340809, 33.305660>,  <30.552547, 39.104023, 33.122208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817648, 39.340809, 33.305660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335954, 0.782404, -0.524384,
		-0.669248, 0.193459, 0.717413,
		0.662753, 0.591960, 0.458629,
		31.016474, 39.518398, 33.443249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130241, 39.675674, 33.403950>,  <30.552547, 39.104023, 33.122208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130241, 39.675674, 33.403950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504185, 39.816620, 33.386623>,  <30.728552, 39.901188, 33.376228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504185, 39.816620, 33.386623>,  <30.130241, 39.675674, 33.403950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504185, 39.816620, 33.386623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314922, 0.766758, -0.559381,
		-0.163896, 0.536583, 0.827779,
		0.934859, 0.352366, -0.043313,
		30.784643, 39.922329, 33.373631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078083, 40.456520, 33.520676>,  <30.130241, 39.675674, 33.403950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078083, 40.456520, 33.520676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.441820, 40.394936, 33.366070>,  <30.660063, 40.357986, 33.273304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.441820, 40.394936, 33.366070>,  <30.078083, 40.456520, 33.520676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441820, 40.394936, 33.366070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088853, 0.835718, -0.541923,
		0.406452, 0.527137, 0.746273,
		0.909342, -0.153957, -0.386516,
		30.714622, 40.348747, 33.250114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365793, 41.177101, 33.521339>,  <30.078083, 40.456520, 33.520676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365793, 41.177101, 33.521339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600235, 40.950115, 33.290005>,  <30.740900, 40.813923, 33.151203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600235, 40.950115, 33.290005>,  <30.365793, 41.177101, 33.521339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600235, 40.950115, 33.290005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118912, 0.766298, -0.631385,
		0.801461, 0.301287, 0.516610,
		0.586105, -0.567462, -0.578332,
		30.776066, 40.779877, 33.116505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905512, 41.558765, 33.365761>,  <30.365793, 41.177101, 33.521339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905512, 41.558765, 33.365761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903166, 41.287136, 33.072144>,  <30.901758, 41.124157, 32.895973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903166, 41.287136, 33.072144>,  <30.905512, 41.558765, 33.365761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903166, 41.287136, 33.072144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196928, 0.718900, -0.666635,
		0.980401, -0.148462, 0.129514,
		-0.005863, -0.679074, -0.734046,
		30.901407, 41.083412, 32.851929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510170, 41.717747, 33.011013>,  <30.905512, 41.558765, 33.365761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510170, 41.717747, 33.011013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.263496, 41.511154, 32.773373>,  <31.115492, 41.387199, 32.630791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.263496, 41.511154, 32.773373>,  <31.510170, 41.717747, 33.011013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263496, 41.511154, 32.773373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143135, 0.668539, -0.729773,
		0.774090, -0.535074, -0.338350,
		-0.616682, -0.516480, -0.594097,
		31.078491, 41.356209, 32.595142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920296, 41.599167, 32.381588>,  <31.510170, 41.717747, 33.011013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920296, 41.599167, 32.381588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541933, 41.573425, 32.254395>,  <31.314915, 41.557980, 32.178078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541933, 41.573425, 32.254395>,  <31.920296, 41.599167, 32.381588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541933, 41.573425, 32.254395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158815, 0.762821, -0.626804,
		0.282906, -0.643400, -0.711338,
		-0.945908, -0.064356, -0.317988,
		31.258162, 41.554119, 32.158997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882843, 41.713882, 31.695713>,  <31.920296, 41.599167, 32.381588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882843, 41.713882, 31.695713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.494242, 41.774845, 31.768330>,  <31.261082, 41.811424, 31.811899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.494242, 41.774845, 31.768330>,  <31.882843, 41.713882, 31.695713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494242, 41.774845, 31.768330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025725, 0.693573, -0.719927,
		-0.235636, -0.704080, -0.669886,
		-0.971501, 0.152408, 0.181543,
		31.202791, 41.820568, 31.822792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594801, 41.766834, 31.072889>,  <31.882843, 41.713882, 31.695713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594801, 41.766834, 31.072889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331488, 41.941681, 31.318029>,  <31.173500, 42.046589, 31.465115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331488, 41.941681, 31.318029>,  <31.594801, 41.766834, 31.072889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331488, 41.941681, 31.318029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100777, 0.755626, -0.647204,
		-0.745992, -0.487806, -0.453366,
		-0.658285, 0.437120, 0.612851,
		31.134003, 42.072819, 31.501884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205910, 42.044857, 30.582144>,  <31.594801, 41.766834, 31.072889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205910, 42.044857, 30.582144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.115005, 42.244560, 30.916590>,  <31.060463, 42.364384, 31.117258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.115005, 42.244560, 30.916590>,  <31.205910, 42.044857, 30.582144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115005, 42.244560, 30.916590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334056, 0.766520, -0.548501,
		-0.914746, -0.403962, -0.007418,
		-0.227260, 0.499261, 0.836117,
		31.046827, 42.394341, 31.167425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649643, 42.532726, 30.418337>,  <31.205910, 42.044857, 30.582144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649643, 42.532726, 30.418337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.784779, 42.676098, 30.766451>,  <30.865860, 42.762119, 30.975319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.784779, 42.676098, 30.766451>,  <30.649643, 42.532726, 30.418337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784779, 42.676098, 30.766451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253203, 0.925174, -0.282739,
		-0.906507, -0.124839, 0.403312,
		0.337837, 0.358425, 0.870286,
		30.886129, 42.783627, 31.027536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065224, 42.884300, 30.826717>,  <30.649643, 42.532726, 30.418337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065224, 42.884300, 30.826717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.427135, 43.025166, 30.922508>,  <30.644283, 43.109684, 30.979982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.427135, 43.025166, 30.922508>,  <30.065224, 42.884300, 30.826717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427135, 43.025166, 30.922508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275919, 0.913074, -0.300276,
		-0.324407, 0.205608, 0.923301,
		0.904781, 0.352168, 0.239477,
		30.698570, 43.130817, 30.994350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952490, 43.546227, 31.280609>,  <30.065224, 42.884300, 30.826717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952490, 43.546227, 31.280609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326790, 43.564751, 31.140764>,  <30.551371, 43.575867, 31.056858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326790, 43.564751, 31.140764>,  <29.952490, 43.546227, 31.280609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326790, 43.564751, 31.140764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097323, 0.986755, -0.129783,
		0.338970, 0.155469, 0.927862,
		0.935750, 0.046310, -0.349611,
		30.607515, 43.578644, 31.035881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089025, 44.308556, 31.345669>,  <29.952490, 43.546227, 31.280609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089025, 44.308556, 31.345669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396595, 44.148823, 31.145952>,  <30.581137, 44.052982, 31.026121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396595, 44.148823, 31.145952>,  <30.089025, 44.308556, 31.345669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396595, 44.148823, 31.145952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158273, 0.875534, -0.456498,
		0.619441, 0.271987, 0.736421,
		0.768923, -0.399329, -0.499293,
		30.627272, 44.029022, 30.996164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689074, 44.615166, 31.563450>,  <30.089025, 44.308556, 31.345669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689074, 44.615166, 31.563450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.728231, 44.468479, 31.193382>,  <30.751726, 44.380466, 30.971342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.728231, 44.468479, 31.193382>,  <30.689074, 44.615166, 31.563450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728231, 44.468479, 31.193382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018023, 0.928829, -0.370072,
		0.995034, 0.052902, 0.084317,
		0.097893, -0.366714, -0.925169,
		30.757599, 44.358463, 30.915833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305668, 44.948517, 31.297918>,  <30.689074, 44.615166, 31.563450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305668, 44.948517, 31.297918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.024101, 44.826115, 31.041525>,  <30.855162, 44.752674, 30.887688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.024101, 44.826115, 31.041525>,  <31.305668, 44.948517, 31.297918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024101, 44.826115, 31.041525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111939, 0.938952, -0.325329,
		0.701407, -0.157253, -0.695198,
		-0.703916, -0.306007, -0.640985,
		30.812927, 44.734314, 30.849230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.319550, 30.401125, 47.146492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931564, 30.371647, 47.053772>,  <35.698772, 30.353960, 46.998138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931564, 30.371647, 47.053772>,  <36.319550, 30.401125, 47.146492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931564, 30.371647, 47.053772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181798, -0.413476, 0.892181,
		-0.161594, 0.907528, 0.387661,
		-0.969967, -0.073695, -0.231802,
		35.640575, 30.349539, 46.984230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877792, 30.691225, 47.730782>,  <36.319550, 30.401125, 47.146492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877792, 30.691225, 47.730782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666088, 30.419102, 47.527977>,  <35.539066, 30.255827, 47.406296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666088, 30.419102, 47.527977>,  <35.877792, 30.691225, 47.730782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666088, 30.419102, 47.527977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155264, -0.509817, 0.846156,
		-0.834130, 0.526560, 0.164200,
		-0.529264, -0.680310, -0.507009,
		35.507309, 30.215010, 47.375874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269112, 30.596088, 48.078999>,  <35.877792, 30.691225, 47.730782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269112, 30.596088, 48.078999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231293, 30.252497, 47.877716>,  <35.208603, 30.046341, 47.756947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231293, 30.252497, 47.877716>,  <35.269112, 30.596088, 48.078999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231293, 30.252497, 47.877716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340600, -0.447056, 0.827123,
		-0.935443, 0.249593, -0.250301,
		-0.094546, -0.858979, -0.503206,
		35.202930, 29.994802, 47.726753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599331, 30.365030, 48.246727>,  <35.269112, 30.596088, 48.078999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599331, 30.365030, 48.246727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821789, 30.051971, 48.134895>,  <34.955265, 29.864136, 48.067799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821789, 30.051971, 48.134895>,  <34.599331, 30.365030, 48.246727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821789, 30.051971, 48.134895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272336, -0.489445, 0.828418,
		-0.785198, -0.384582, -0.485346,
		0.556145, -0.782649, -0.279576,
		34.988632, 29.817177, 48.051022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203007, 29.824451, 48.497276>,  <34.599331, 30.365030, 48.246727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203007, 29.824451, 48.497276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555676, 29.651827, 48.420956>,  <34.767277, 29.548252, 48.375164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555676, 29.651827, 48.420956>,  <34.203007, 29.824451, 48.497276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555676, 29.651827, 48.420956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202042, -0.710698, 0.673860,
		-0.426417, -0.555573, -0.713797,
		0.881673, -0.431562, -0.190805,
		34.820179, 29.522358, 48.363712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037315, 29.087778, 48.451851>,  <34.203007, 29.824451, 48.497276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037315, 29.087778, 48.451851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423531, 29.105291, 48.554474>,  <34.655258, 29.115799, 48.616047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423531, 29.105291, 48.554474>,  <34.037315, 29.087778, 48.451851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423531, 29.105291, 48.554474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145200, -0.727470, 0.670600,
		0.215998, -0.684742, -0.696042,
		0.965537, 0.043783, 0.256556,
		34.713192, 29.118425, 48.631439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266598, 28.420359, 48.479500>,  <34.037315, 29.087778, 48.451851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266598, 28.420359, 48.479500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554287, 28.600796, 48.690868>,  <34.726902, 28.709059, 48.817688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554287, 28.600796, 48.690868>,  <34.266598, 28.420359, 48.479500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554287, 28.600796, 48.690868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023945, -0.776203, 0.630028,
		0.694362, -0.440480, -0.569068,
		0.719227, 0.451094, 0.528419,
		34.770054, 28.736124, 48.849396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821213, 27.903862, 48.590096>,  <34.266598, 28.420359, 48.479500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821213, 27.903862, 48.590096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.843571, 28.194237, 48.864288>,  <34.856987, 28.368462, 49.028805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.843571, 28.194237, 48.864288>,  <34.821213, 27.903862, 48.590096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843571, 28.194237, 48.864288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016359, -0.687133, 0.726347,
		0.998303, -0.029385, -0.050282,
		0.055894, 0.725937, 0.685486,
		34.860340, 28.412018, 49.069935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436981, 27.766708, 49.071136>,  <34.821213, 27.903862, 48.590096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436981, 27.766708, 49.071136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176586, 27.994562, 49.271824>,  <35.020348, 28.131275, 49.392239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176586, 27.994562, 49.271824>,  <35.436981, 27.766708, 49.071136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176586, 27.994562, 49.271824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070025, -0.613072, 0.786917,
		0.755849, 0.547409, 0.359215,
		-0.650990, 0.569637, 0.501723,
		34.981289, 28.165453, 49.422340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579784, 27.663864, 49.719723>,  <35.436981, 27.766708, 49.071136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579784, 27.663864, 49.719723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238869, 27.866964, 49.769997>,  <35.034321, 27.988825, 49.800159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238869, 27.866964, 49.769997>,  <35.579784, 27.663864, 49.719723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238869, 27.866964, 49.769997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187557, -0.520946, 0.832729,
		0.488294, 0.686151, 0.539227,
		-0.852286, 0.507753, 0.125682,
		34.983185, 28.019291, 49.807701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623653, 27.778698, 50.419468>,  <35.579784, 27.663864, 49.719723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623653, 27.778698, 50.419468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241680, 27.808149, 50.304447>,  <35.012497, 27.825821, 50.235435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241680, 27.808149, 50.304447>,  <35.623653, 27.778698, 50.419468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241680, 27.808149, 50.304447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251157, -0.716750, 0.650531,
		-0.158208, 0.693433, 0.702938,
		-0.954930, 0.073629, -0.287556,
		34.955200, 27.830238, 50.218182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165318, 27.747208, 51.116089>,  <35.623653, 27.778698, 50.419468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165318, 27.747208, 51.116089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947010, 27.652121, 50.794685>,  <34.816025, 27.595068, 50.601845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947010, 27.652121, 50.794685>,  <35.165318, 27.747208, 51.116089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947010, 27.652121, 50.794685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353085, -0.804384, 0.477805,
		-0.759909, 0.544480, 0.355077,
		-0.545773, -0.237716, -0.803506,
		34.783279, 27.580805, 50.553635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448692, 27.555916, 51.288101>,  <35.165318, 27.747208, 51.116089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448692, 27.555916, 51.288101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556843, 27.354790, 50.959694>,  <34.621731, 27.234114, 50.762650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556843, 27.354790, 50.959694>,  <34.448692, 27.555916, 51.288101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556843, 27.354790, 50.959694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210954, -0.862999, 0.459055,
		-0.939360, 0.049081, -0.339403,
		0.270374, -0.502816, -0.821020,
		34.637955, 27.203945, 50.713387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549393, 28.409729, 51.433422>,  <34.448692, 27.555916, 51.288101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549393, 28.409729, 51.433422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665447, 28.536175, 51.072117>,  <34.735081, 28.612041, 50.855331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665447, 28.536175, 51.072117>,  <34.549393, 28.409729, 51.433422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665447, 28.536175, 51.072117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905261, 0.396764, -0.151923,
		0.310359, 0.861771, 0.401282,
		0.290137, 0.316115, -0.903267,
		34.752487, 28.631010, 50.801136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105183, 28.881584, 51.613415>,  <34.549393, 28.409729, 51.433422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105183, 28.881584, 51.613415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173412, 29.157284, 51.895081>,  <34.214348, 29.322702, 52.064079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173412, 29.157284, 51.895081>,  <34.105183, 28.881584, 51.613415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173412, 29.157284, 51.895081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035767, 0.709833, -0.703461,
		-0.984696, 0.145175, 0.096424,
		0.170570, 0.689247, 0.704162,
		34.224583, 29.364058, 52.106331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792698, 29.389578, 51.280518>,  <34.105183, 28.881584, 51.613415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792698, 29.389578, 51.280518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003395, 29.559191, 51.575199>,  <34.129814, 29.660959, 51.752010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003395, 29.559191, 51.575199>,  <33.792698, 29.389578, 51.280518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003395, 29.559191, 51.575199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235928, 0.759707, -0.605957,
		-0.816627, 0.492993, 0.300129,
		0.526743, 0.424032, 0.736708,
		34.161419, 29.686401, 51.796211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542213, 30.060892, 51.338120>,  <33.792698, 29.389578, 51.280518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542213, 30.060892, 51.338120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920479, 30.070028, 51.467861>,  <34.147438, 30.075510, 51.545704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920479, 30.070028, 51.467861>,  <33.542213, 30.060892, 51.338120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920479, 30.070028, 51.467861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196355, 0.754993, -0.625644,
		-0.259172, 0.655335, 0.709483,
		0.945661, 0.022838, 0.324351,
		34.204178, 30.076880, 51.565166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635254, 30.754887, 51.501419>,  <33.542213, 30.060892, 51.338120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635254, 30.754887, 51.501419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011574, 30.624367, 51.464718>,  <34.237366, 30.546055, 51.442696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011574, 30.624367, 51.464718>,  <33.635254, 30.754887, 51.501419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011574, 30.624367, 51.464718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230032, 0.813456, -0.534205,
		0.248950, 0.481474, 0.840361,
		0.940802, -0.326300, -0.091755,
		34.293816, 30.526476, 51.437191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026474, 31.345579, 51.572956>,  <33.635254, 30.754887, 51.501419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026474, 31.345579, 51.572956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276466, 31.088335, 51.395954>,  <34.426460, 30.933989, 51.289753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276466, 31.088335, 51.395954>,  <34.026474, 31.345579, 51.572956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276466, 31.088335, 51.395954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246728, 0.700517, -0.669628,
		0.740625, 0.309327, 0.596483,
		0.624980, -0.643112, -0.442500,
		34.463959, 30.895401, 51.263203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794834, 31.629225, 51.600388>,  <34.026474, 31.345579, 51.572956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794834, 31.629225, 51.600388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750263, 31.362000, 51.306103>,  <34.723518, 31.201664, 51.129532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750263, 31.362000, 51.306103>,  <34.794834, 31.629225, 51.600388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750263, 31.362000, 51.306103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292874, 0.685369, -0.666704,
		0.949636, -0.289762, 0.119288,
		-0.111429, -0.668062, -0.735715,
		34.716835, 31.161581, 51.085388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135174, 31.895628, 51.052376>,  <34.794834, 31.629225, 51.600388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135174, 31.895628, 51.052376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992378, 31.598089, 50.826366>,  <34.906700, 31.419567, 50.690762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992378, 31.598089, 50.826366>,  <35.135174, 31.895628, 51.052376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992378, 31.598089, 50.826366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201093, 0.529499, -0.824131,
		0.912206, -0.407828, -0.039443,
		-0.356989, -0.743846, -0.565024,
		34.885281, 31.374935, 50.656860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678829, 31.737579, 50.618572>,  <35.135174, 31.895628, 51.052376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678829, 31.737579, 50.618572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333797, 31.596786, 50.473209>,  <35.126778, 31.512310, 50.385994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333797, 31.596786, 50.473209>,  <35.678829, 31.737579, 50.618572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333797, 31.596786, 50.473209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185811, 0.447695, -0.874667,
		0.470571, -0.821992, -0.320767,
		-0.862576, -0.351991, -0.363407,
		35.075024, 31.491192, 50.364189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766342, 31.500624, 49.865292>,  <35.678829, 31.737579, 50.618572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766342, 31.500624, 49.865292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380054, 31.591764, 49.915043>,  <35.148281, 31.646450, 49.944893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380054, 31.591764, 49.915043>,  <35.766342, 31.500624, 49.865292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380054, 31.591764, 49.915043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030232, 0.574582, -0.817888,
		-0.257822, -0.786090, -0.561774,
		-0.965719, 0.227853, 0.124375,
		35.090340, 31.660120, 49.952354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487312, 31.483784, 49.222408>,  <35.766342, 31.500624, 49.865292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487312, 31.483784, 49.222408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185314, 31.667521, 49.409595>,  <35.004116, 31.777761, 49.521908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185314, 31.667521, 49.409595>,  <35.487312, 31.483784, 49.222408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185314, 31.667521, 49.409595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171675, 0.550297, -0.817129,
		-0.632860, -0.697265, -0.336614,
		-0.754993, 0.459341, 0.467964,
		34.958817, 31.805323, 49.549984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988983, 31.612850, 48.701691>,  <35.487312, 31.483784, 49.222408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988983, 31.612850, 48.701691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874718, 31.893494, 48.962811>,  <34.806160, 32.061882, 49.119480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874718, 31.893494, 48.962811>,  <34.988983, 31.612850, 48.701691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874718, 31.893494, 48.962811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147606, 0.705263, -0.693409,
		-0.946895, -0.101722, -0.305027,
		-0.285659, 0.701610, 0.652795,
		34.789021, 32.103977, 49.158649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631271, 32.051590, 48.348133>,  <34.988983, 31.612850, 48.701691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631271, 32.051590, 48.348133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702652, 32.278347, 48.669827>,  <34.745480, 32.414402, 48.862843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702652, 32.278347, 48.669827>,  <34.631271, 32.051590, 48.348133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702652, 32.278347, 48.669827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235597, 0.768955, -0.594308,
		-0.955327, 0.295527, 0.003659,
		0.178448, 0.566897, 0.804229,
		34.756187, 32.448418, 48.911095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294624, 32.676678, 48.222744>,  <34.631271, 32.051590, 48.348133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294624, 32.676678, 48.222744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615150, 32.732769, 48.455376>,  <34.807465, 32.766422, 48.594955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615150, 32.732769, 48.455376>,  <34.294624, 32.676678, 48.222744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615150, 32.732769, 48.455376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352640, 0.674577, -0.648530,
		-0.483260, 0.724763, 0.491098,
		0.801314, 0.140228, 0.581577,
		34.855545, 32.774837, 48.629848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399853, 33.390076, 48.324944>,  <34.294624, 32.676678, 48.222744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399853, 33.390076, 48.324944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755318, 33.226704, 48.408337>,  <34.968597, 33.128681, 48.458370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755318, 33.226704, 48.408337>,  <34.399853, 33.390076, 48.324944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755318, 33.226704, 48.408337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450430, 0.692229, -0.563855,
		0.085981, 0.594981, 0.799128,
		0.888662, -0.408432, 0.208479,
		35.021915, 33.104176, 48.470879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166035, 34.090160, 48.525978>,  <34.399853, 33.390076, 48.324944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166035, 34.090160, 48.525978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803097, 34.250938, 48.476727>,  <33.585335, 34.347404, 48.447178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803097, 34.250938, 48.476727>,  <34.166035, 34.090160, 48.525978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803097, 34.250938, 48.476727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246202, -0.270685, 0.930653,
		0.340747, 0.874738, 0.344566,
		-0.907346, 0.401949, -0.123127,
		33.530891, 34.371525, 48.439789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064919, 34.402306, 49.154087>,  <34.166035, 34.090160, 48.525978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064919, 34.402306, 49.154087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698566, 34.364311, 48.998066>,  <33.478756, 34.341515, 48.904453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698566, 34.364311, 48.998066>,  <34.064919, 34.402306, 49.154087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698566, 34.364311, 48.998066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346627, -0.303052, 0.887699,
		-0.202527, 0.948229, 0.244634,
		-0.915878, -0.094986, -0.390057,
		33.423801, 34.335815, 48.881050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645935, 34.436134, 49.731930>,  <34.064919, 34.402306, 49.154087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645935, 34.436134, 49.731930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394058, 34.293858, 49.455677>,  <33.242931, 34.208492, 49.289925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394058, 34.293858, 49.455677>,  <33.645935, 34.436134, 49.731930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394058, 34.293858, 49.455677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541291, -0.436786, 0.718486,
		-0.557220, 0.826256, 0.082505,
		-0.629690, -0.355695, -0.690631,
		33.205151, 34.187149, 49.248489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980644, 34.622128, 49.911442>,  <33.645935, 34.436134, 49.731930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980644, 34.622128, 49.911442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.944984, 34.297112, 49.681023>,  <32.923588, 34.102100, 49.542770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.944984, 34.297112, 49.681023>,  <32.980644, 34.622128, 49.911442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944984, 34.297112, 49.681023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281223, -0.534286, 0.797152,
		-0.955493, 0.233064, -0.180873,
		-0.089149, -0.812539, -0.576049,
		32.918240, 34.053349, 49.508209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327114, 34.334629, 50.071129>,  <32.980644, 34.622128, 49.911442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327114, 34.334629, 50.071129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495529, 34.026356, 49.879807>,  <32.596577, 33.841393, 49.765015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495529, 34.026356, 49.879807>,  <32.327114, 34.334629, 50.071129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495529, 34.026356, 49.879807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394550, -0.630431, 0.668496,
		-0.816735, -0.092749, -0.569510,
		0.421039, -0.770684, -0.478301,
		32.621841, 33.795151, 49.736317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801836, 33.700161, 50.021854>,  <32.327114, 34.334629, 50.071129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801836, 33.700161, 50.021854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166779, 33.543636, 49.973717>,  <32.385742, 33.449722, 49.944836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166779, 33.543636, 49.973717>,  <31.801836, 33.700161, 50.021854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166779, 33.543636, 49.973717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214475, -0.707228, 0.673668,
		-0.348721, -0.588815, -0.729171,
		0.912356, -0.391312, -0.120339,
		32.440487, 33.426243, 49.937614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697865, 32.987320, 50.066010>,  <31.801836, 33.700161, 50.021854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697865, 32.987320, 50.066010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093136, 33.027607, 50.112236>,  <32.330299, 33.051777, 50.139973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093136, 33.027607, 50.112236>,  <31.697865, 32.987320, 50.066010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093136, 33.027607, 50.112236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034491, -0.588481, 0.807775,
		0.149365, -0.802214, -0.578052,
		0.988180, 0.100716, 0.115568,
		32.389591, 33.057823, 50.146908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058704, 32.673286, 49.456696>,  <31.697865, 32.987320, 50.066010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058704, 32.673286, 49.456696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.714165, 32.496807, 49.355968>,  <31.507441, 32.390919, 49.295532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.714165, 32.496807, 49.355968>,  <32.058704, 32.673286, 49.456696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714165, 32.496807, 49.355968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127117, 0.667121, -0.734024,
		0.491847, -0.600242, -0.630710,
		-0.861352, -0.441201, -0.251821,
		31.455759, 32.364445, 49.280422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110279, 32.523087, 48.662540>,  <32.058704, 32.673286, 49.456696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110279, 32.523087, 48.662540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724869, 32.513802, 48.769184>,  <31.493622, 32.508228, 48.833172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724869, 32.513802, 48.769184>,  <32.110279, 32.523087, 48.662540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724869, 32.513802, 48.769184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250776, 0.426156, -0.869196,
		-0.093440, -0.904352, -0.416434,
		-0.963525, -0.023214, 0.266610,
		31.435812, 32.506836, 48.849167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754524, 32.135693, 48.196045>,  <32.110279, 32.523087, 48.662540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754524, 32.135693, 48.196045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494144, 32.396439, 48.351658>,  <31.337917, 32.552887, 48.445026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494144, 32.396439, 48.351658>,  <31.754524, 32.135693, 48.196045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494144, 32.396439, 48.351658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047969, 0.476125, -0.878068,
		-0.757605, -0.590239, -0.278663,
		-0.650948, 0.651862, 0.389028,
		31.298861, 32.591995, 48.468365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236570, 32.123478, 47.718445>,  <31.754524, 32.135693, 48.196045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236570, 32.123478, 47.718445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.125099, 32.441055, 47.934593>,  <31.058216, 32.631599, 48.064281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.125099, 32.441055, 47.934593>,  <31.236570, 32.123478, 47.718445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125099, 32.441055, 47.934593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181955, 0.508820, -0.841424,
		-0.942991, -0.332808, 0.002664,
		-0.278678, 0.793940, 0.540369,
		31.041496, 32.679237, 48.096703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701582, 32.389179, 47.437756>,  <31.236570, 32.123478, 47.718445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701582, 32.389179, 47.437756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.788237, 32.721741, 47.642437>,  <30.840229, 32.921276, 47.765244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.788237, 32.721741, 47.642437>,  <30.701582, 32.389179, 47.437756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788237, 32.721741, 47.642437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049609, 0.514094, -0.856298,
		-0.974991, 0.210891, 0.070127,
		0.216637, 0.831404, 0.511699,
		30.853228, 32.971161, 47.795948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197838, 32.922649, 47.104557>,  <30.701582, 32.389179, 47.437756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197838, 32.922649, 47.104557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.485817, 33.110554, 47.308907>,  <30.658604, 33.223297, 47.431519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.485817, 33.110554, 47.308907>,  <30.197838, 32.922649, 47.104557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485817, 33.110554, 47.308907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136007, 0.626335, -0.767598,
		-0.680572, 0.622113, 0.387036,
		0.719947, 0.469766, 0.510878,
		30.701801, 33.251484, 47.462170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104090, 33.685570, 47.136715>,  <30.197838, 32.922649, 47.104557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104090, 33.685570, 47.136715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499374, 33.639389, 47.176933>,  <30.736546, 33.611683, 47.201065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499374, 33.639389, 47.176933>,  <30.104090, 33.685570, 47.136715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499374, 33.639389, 47.176933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148259, 0.557838, -0.816600,
		0.038186, 0.821881, 0.568379,
		0.988211, -0.115450, 0.100549,
		30.795837, 33.604755, 47.207100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.070194, 25.856705, 48.317410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.320316, 26.077948, 48.537613>,  <32.470390, 26.210693, 48.669735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.320316, 26.077948, 48.537613>,  <32.070194, 25.856705, 48.317410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320316, 26.077948, 48.537613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060784, 0.668778, -0.740973,
		-0.778010, 0.496796, 0.384570,
		0.625305, 0.553109, 0.550513,
		32.507908, 26.243881, 48.702766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878494, 26.463318, 48.253471>,  <32.070194, 25.856705, 48.317410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878494, 26.463318, 48.253471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.253342, 26.518539, 48.381691>,  <32.478249, 26.551672, 48.458622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.253342, 26.518539, 48.381691>,  <31.878494, 26.463318, 48.253471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253342, 26.518539, 48.381691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155188, 0.657830, -0.737005,
		-0.312613, 0.740406, 0.595040,
		0.937118, 0.138055, 0.320548,
		32.534477, 26.559956, 48.477856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934290, 27.169090, 48.471035>,  <31.878494, 26.463318, 48.253471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934290, 27.169090, 48.471035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.307365, 27.046345, 48.395214>,  <32.531212, 26.972698, 48.349720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.307365, 27.046345, 48.395214>,  <31.934290, 27.169090, 48.471035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307365, 27.046345, 48.395214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148259, 0.805248, -0.574104,
		0.328808, 0.507357, 0.796539,
		0.932687, -0.306864, -0.189551,
		32.587170, 26.954285, 48.338348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411865, 27.803989, 48.487785>,  <31.934290, 27.169090, 48.471035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411865, 27.803989, 48.487785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606789, 27.519300, 48.285408>,  <32.723743, 27.348488, 48.163982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606789, 27.519300, 48.285408>,  <32.411865, 27.803989, 48.487785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606789, 27.519300, 48.285408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255221, 0.670182, -0.696935,
		0.835100, 0.210496, 0.508232,
		0.487310, -0.711722, -0.505945,
		32.752983, 27.305784, 48.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976227, 28.202408, 48.037868>,  <32.411865, 27.803989, 48.487785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976227, 28.202408, 48.037868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.979950, 27.845421, 47.857464>,  <32.982185, 27.631229, 47.749222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.979950, 27.845421, 47.857464>,  <32.976227, 28.202408, 48.037868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979950, 27.845421, 47.857464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022705, 0.450731, -0.892371,
		0.999699, 0.018545, -0.016069,
		0.009306, -0.892467, -0.451016,
		32.982742, 27.577681, 47.722160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548916, 28.195705, 47.600357>,  <32.976227, 28.202408, 48.037868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548916, 28.195705, 47.600357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.273399, 27.938705, 47.466038>,  <33.108089, 27.784506, 47.385448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.273399, 27.938705, 47.466038>,  <33.548916, 28.195705, 47.600357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273399, 27.938705, 47.466038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061221, 0.409986, -0.910035,
		0.722370, -0.647381, -0.243060,
		-0.688791, -0.642502, -0.335795,
		33.066761, 27.745955, 47.365299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931686, 27.683287, 47.041988>,  <33.548916, 28.195705, 47.600357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931686, 27.683287, 47.041988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534573, 27.693176, 46.995041>,  <33.296307, 27.699110, 46.966873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534573, 27.693176, 46.995041>,  <33.931686, 27.683287, 47.041988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534573, 27.693176, 46.995041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119058, 0.322085, -0.939195,
		0.014580, -0.946388, -0.322703,
		-0.992780, 0.024727, -0.117371,
		33.236740, 27.700594, 46.959831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738091, 27.397654, 46.313164>,  <33.931686, 27.683287, 47.041988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738091, 27.397654, 46.313164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.410725, 27.609240, 46.402958>,  <33.214306, 27.736191, 46.456837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.410725, 27.609240, 46.402958>,  <33.738091, 27.397654, 46.313164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410725, 27.609240, 46.402958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044257, 0.447528, -0.893174,
		-0.572924, -0.721050, -0.389673,
		-0.818413, 0.528966, 0.224488,
		33.165199, 27.767929, 46.470303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288666, 27.243557, 45.836769>,  <33.738091, 27.397654, 46.313164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288666, 27.243557, 45.836769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.138775, 27.591324, 45.965572>,  <33.048840, 27.799984, 46.042854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.138775, 27.591324, 45.965572>,  <33.288666, 27.243557, 45.836769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138775, 27.591324, 45.965572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109741, 0.303280, -0.946561,
		-0.920617, -0.390041, -0.018237,
		-0.374729, 0.869419, 0.322008,
		33.026356, 27.852150, 46.062176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663601, 27.299723, 45.547817>,  <33.288666, 27.243557, 45.836769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663601, 27.299723, 45.547817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.736576, 27.676188, 45.661613>,  <32.780361, 27.902065, 45.729889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.736576, 27.676188, 45.661613>,  <32.663601, 27.299723, 45.547817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736576, 27.676188, 45.661613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202269, 0.319082, -0.925891,
		-0.962187, 0.111376, 0.248581,
		0.182439, 0.941160, 0.284489,
		32.791309, 27.958536, 45.746960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145885, 27.715950, 45.344994>,  <32.663601, 27.299723, 45.547817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145885, 27.715950, 45.344994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.442528, 27.980196, 45.391666>,  <32.620514, 28.138742, 45.419670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.442528, 27.980196, 45.391666>,  <32.145885, 27.715950, 45.344994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442528, 27.980196, 45.391666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157828, 0.340865, -0.926769,
		-0.652008, 0.668880, 0.357050,
		0.741604, 0.660613, 0.116678,
		32.665009, 28.178381, 45.426670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956656, 28.389515, 45.144817>,  <32.145885, 27.715950, 45.344994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956656, 28.389515, 45.144817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.348633, 28.372244, 45.066998>,  <32.583820, 28.361881, 45.020306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.348633, 28.372244, 45.066998>,  <31.956656, 28.389515, 45.144817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348633, 28.372244, 45.066998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179915, 0.228114, -0.956867,
		0.085696, 0.972677, 0.215770,
		0.979942, -0.043179, -0.194547,
		32.642616, 28.359291, 45.008633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382345, 28.808945, 44.949055>,  <31.956656, 28.389515, 45.144817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382345, 28.808945, 44.949055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.987844, 28.783621, 44.888000>,  <30.751144, 28.768427, 44.851368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.987844, 28.783621, 44.888000>,  <31.382345, 28.808945, 44.949055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987844, 28.783621, 44.888000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130319, -0.269952, 0.954014,
		-0.101603, 0.960790, 0.257990,
		-0.986252, -0.063310, -0.152637,
		30.691969, 28.764627, 44.842209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986300, 29.251774, 45.433800>,  <31.382345, 28.808945, 44.949055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986300, 29.251774, 45.433800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.729244, 28.974773, 45.302673>,  <30.575012, 28.808573, 45.223999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.729244, 28.974773, 45.302673>,  <30.986300, 29.251774, 45.433800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729244, 28.974773, 45.302673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119439, -0.332083, 0.935658,
		-0.756804, 0.640442, 0.130696,
		-0.642636, -0.692499, -0.327816,
		30.536453, 28.767023, 45.204330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389715, 29.338612, 45.870720>,  <30.986300, 29.251774, 45.433800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389715, 29.338612, 45.870720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.377668, 28.971605, 45.712097>,  <30.370440, 28.751402, 45.616924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.377668, 28.971605, 45.712097>,  <30.389715, 29.338612, 45.870720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377668, 28.971605, 45.712097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127131, -0.389999, 0.911997,
		-0.991429, 0.077883, -0.104898,
		-0.030119, -0.917516, -0.396557,
		30.368633, 28.696350, 45.593128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828049, 29.121033, 46.174259>,  <30.389715, 29.338612, 45.870720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828049, 29.121033, 46.174259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.043001, 28.804884, 46.056591>,  <30.171972, 28.615194, 45.985992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.043001, 28.804884, 46.056591>,  <29.828049, 29.121033, 46.174259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043001, 28.804884, 46.056591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163356, -0.439760, 0.883134,
		-0.827366, -0.426527, -0.365431,
		0.537383, -0.790371, -0.294167,
		30.204216, 28.567772, 45.968342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422632, 28.483444, 46.262592>,  <29.828049, 29.121033, 46.174259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422632, 28.483444, 46.262592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.802822, 28.359497, 46.272255>,  <30.030935, 28.285130, 46.278053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.802822, 28.359497, 46.272255>,  <29.422632, 28.483444, 46.262592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802822, 28.359497, 46.272255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155272, -0.406066, 0.900556,
		-0.269242, -0.859705, -0.434069,
		0.950473, -0.309867, 0.024158,
		30.087963, 28.266537, 46.279503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382257, 27.895235, 46.650013>,  <29.422632, 28.483444, 46.262592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382257, 27.895235, 46.650013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.772921, 27.980663, 46.640820>,  <30.007318, 28.031921, 46.635303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.772921, 27.980663, 46.640820>,  <29.382257, 27.895235, 46.650013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772921, 27.980663, 46.640820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088953, -0.304725, 0.948277,
		0.195521, -0.928186, -0.316610,
		0.976657, 0.213572, -0.022985,
		30.065918, 28.044735, 46.633923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666592, 27.395046, 47.112217>,  <29.382257, 27.895235, 46.650013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666592, 27.395046, 47.112217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.968164, 27.651951, 47.056957>,  <30.149109, 27.806093, 47.023804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.968164, 27.651951, 47.056957>,  <29.666592, 27.395046, 47.112217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968164, 27.651951, 47.056957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271140, -0.112669, 0.955923,
		0.598389, -0.758158, -0.259088,
		0.753932, 0.642263, -0.138147,
		30.194344, 27.844629, 47.015514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162315, 27.089333, 47.417770>,  <29.666592, 27.395046, 47.112217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162315, 27.089333, 47.417770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.250645, 27.479433, 47.422276>,  <30.303642, 27.713493, 47.424976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.250645, 27.479433, 47.422276>,  <30.162315, 27.089333, 47.417770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250645, 27.479433, 47.422276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182329, -0.052620, 0.981829,
		0.958120, -0.214757, -0.189436,
		0.220822, 0.975249, 0.011260,
		30.316891, 27.772007, 47.425655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827942, 27.151390, 47.643154>,  <30.162315, 27.089333, 47.417770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827942, 27.151390, 47.643154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623453, 27.482773, 47.734638>,  <30.500759, 27.681602, 47.789528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623453, 27.482773, 47.734638>,  <30.827942, 27.151390, 47.643154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623453, 27.482773, 47.734638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358984, -0.035956, 0.932651,
		0.780885, 0.558896, -0.279021,
		-0.511223, 0.828458, 0.228713,
		30.470087, 27.731310, 47.803253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242905, 27.428194, 48.072041>,  <30.827942, 27.151390, 47.643154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242905, 27.428194, 48.072041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.914450, 27.649952, 48.126274>,  <30.717377, 27.783007, 48.158813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.914450, 27.649952, 48.126274>,  <31.242905, 27.428194, 48.072041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914450, 27.649952, 48.126274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356558, 0.312808, 0.880350,
		0.445649, 0.771231, -0.454532,
		-0.821135, 0.554395, 0.135586,
		30.668110, 27.816271, 48.166950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447926, 27.967314, 48.394859>,  <31.242905, 27.428194, 48.072041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447926, 27.967314, 48.394859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.058138, 28.001326, 48.477978>,  <30.824265, 28.021732, 48.527851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.058138, 28.001326, 48.477978>,  <31.447926, 27.967314, 48.394859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058138, 28.001326, 48.477978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222190, 0.498255, 0.838078,
		-0.032275, 0.862851, -0.504426,
		-0.974469, 0.085030, 0.207798,
		30.765797, 28.026834, 48.540318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338133, 28.716488, 48.443668>,  <31.447926, 27.967314, 48.394859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338133, 28.716488, 48.443668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.045038, 28.525051, 48.637184>,  <30.869183, 28.410189, 48.753292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.045038, 28.525051, 48.637184>,  <31.338133, 28.716488, 48.443668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045038, 28.525051, 48.637184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255302, 0.465662, 0.847337,
		-0.630808, 0.744386, -0.219022,
		-0.732736, -0.478591, 0.483786,
		30.825218, 28.381474, 48.782322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153648, 29.201006, 48.891285>,  <31.338133, 28.716488, 48.443668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153648, 29.201006, 48.891285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.011965, 28.855646, 49.034992>,  <30.926954, 28.648430, 49.121216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.011965, 28.855646, 49.034992>,  <31.153648, 29.201006, 48.891285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011965, 28.855646, 49.034992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255147, 0.280379, 0.925358,
		-0.899687, 0.419437, 0.120982,
		-0.354208, -0.863401, 0.359271,
		30.905703, 28.596626, 49.142773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838930, 29.404270, 49.532421>,  <31.153648, 29.201006, 48.891285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838930, 29.404270, 49.532421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.894569, 29.009459, 49.564495>,  <30.927952, 28.772572, 49.583740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.894569, 29.009459, 49.564495>,  <30.838930, 29.404270, 49.532421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894569, 29.009459, 49.564495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353086, 0.125082, 0.927192,
		-0.925193, -0.100656, 0.365904,
		0.139096, -0.987027, 0.080185,
		30.936298, 28.713350, 49.588551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860027, 30.047436, 49.702328>,  <30.838930, 29.404270, 49.532421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860027, 30.047436, 49.702328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.525803, 30.075901, 49.920235>,  <30.325268, 30.092981, 50.050980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.525803, 30.075901, 49.920235>,  <30.860027, 30.047436, 49.702328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525803, 30.075901, 49.920235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150539, 0.983282, 0.102444,
		-0.528372, 0.167607, -0.832305,
		-0.835560, 0.071165, 0.544770,
		30.275135, 30.097250, 50.083664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115242, 30.360165, 49.436058>,  <30.860027, 30.047436, 49.702328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115242, 30.360165, 49.436058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.241171, 30.413622, 49.811935>,  <30.316729, 30.445696, 50.037460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.241171, 30.413622, 49.811935>,  <30.115242, 30.360165, 49.436058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241171, 30.413622, 49.811935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082251, 0.982472, -0.167284,
		-0.945579, 0.129956, 0.298314,
		0.314824, 0.133643, 0.939694,
		30.335619, 30.453714, 50.093845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818367, 30.864286, 49.848560>,  <30.115242, 30.360165, 49.436058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818367, 30.864286, 49.848560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.188801, 30.853926, 49.999134>,  <30.411060, 30.847710, 50.089478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.188801, 30.853926, 49.999134>,  <29.818367, 30.864286, 49.848560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188801, 30.853926, 49.999134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122137, 0.964508, -0.234111,
		-0.357007, 0.262782, 0.896377,
		0.926083, -0.025901, 0.376431,
		30.466625, 30.846155, 50.112064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929770, 31.502523, 50.267651>,  <29.818367, 30.864286, 49.848560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929770, 31.502523, 50.267651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.295004, 31.370539, 50.171822>,  <30.514145, 31.291348, 50.114323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.295004, 31.370539, 50.171822>,  <29.929770, 31.502523, 50.267651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295004, 31.370539, 50.171822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242532, 0.911779, -0.331417,
		0.327795, 0.244508, 0.912560,
		0.913087, -0.329962, -0.239576,
		30.568930, 31.271549, 50.099949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321310, 32.045464, 50.427853>,  <29.929770, 31.502523, 50.267651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321310, 32.045464, 50.427853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.567078, 31.853464, 50.177383>,  <30.714539, 31.738264, 50.027103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.567078, 31.853464, 50.177383>,  <30.321310, 32.045464, 50.427853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567078, 31.853464, 50.177383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124556, 0.842704, -0.523770,
		0.779085, 0.243822, 0.577561,
		0.614420, -0.480000, -0.626169,
		30.751404, 31.709463, 49.989532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911924, 32.430389, 50.240051>,  <30.321310, 32.045464, 50.427853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911924, 32.430389, 50.240051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.821335, 32.198582, 49.926907>,  <30.766981, 32.059498, 49.739021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.821335, 32.198582, 49.926907>,  <30.911924, 32.430389, 50.240051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821335, 32.198582, 49.926907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212100, 0.755116, -0.620334,
		0.950644, -0.306534, -0.048098,
		-0.226473, -0.579515, -0.782862,
		30.753393, 32.024727, 49.692047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517750, 32.376892, 50.496628>,  <30.911924, 32.430389, 50.240051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517750, 32.376892, 50.496628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.353350, 32.212128, 50.171318>,  <31.254709, 32.113270, 49.976131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.353350, 32.212128, 50.171318>,  <31.517750, 32.376892, 50.496628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353350, 32.212128, 50.171318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147402, 0.910387, -0.386610,
		0.899640, -0.039018, -0.434885,
		-0.410999, -0.411913, -0.813270,
		31.230051, 32.088554, 49.927338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058037, 32.208687, 50.089386>,  <31.517750, 32.376892, 50.496628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058037, 32.208687, 50.089386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280716, 32.471771, 50.292362>,  <32.414326, 32.629623, 50.414146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280716, 32.471771, 50.292362>,  <32.058037, 32.208687, 50.089386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280716, 32.471771, 50.292362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038092, -0.589995, 0.806508,
		0.829840, -0.468312, -0.303397,
		0.556700, 0.657715, 0.507440,
		32.447727, 32.669086, 50.444595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531357, 31.787279, 50.458103>,  <32.058037, 32.208687, 50.089386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531357, 31.787279, 50.458103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.564632, 32.123817, 50.671726>,  <32.584599, 32.325741, 50.799900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.564632, 32.123817, 50.671726>,  <32.531357, 31.787279, 50.458103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564632, 32.123817, 50.671726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244577, -0.536759, 0.807509,
		0.966055, 0.063444, -0.250425,
		0.083186, 0.841347, 0.534056,
		32.589588, 32.376221, 50.831944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120365, 31.762133, 50.835747>,  <32.531357, 31.787279, 50.458103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120365, 31.762133, 50.835747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896656, 32.032803, 51.027298>,  <32.762432, 32.195206, 51.142231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896656, 32.032803, 51.027298>,  <33.120365, 31.762133, 50.835747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896656, 32.032803, 51.027298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058613, -0.543949, 0.837068,
		0.826910, 0.496216, 0.264553,
		-0.559270, 0.676674, 0.478882,
		32.728874, 32.235806, 51.170963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506310, 31.899630, 51.385757>,  <33.120365, 31.762133, 50.835747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506310, 31.899630, 51.385757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.137901, 31.994854, 51.509071>,  <32.916855, 32.051991, 51.583061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.137901, 31.994854, 51.509071>,  <33.506310, 31.899630, 51.385757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137901, 31.994854, 51.509071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146299, -0.522100, 0.840243,
		0.360987, 0.818986, 0.446038,
		-0.921024, 0.238061, 0.308288,
		32.861595, 32.066273, 51.601559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481567, 31.856352, 52.117535>,  <33.506310, 31.899630, 51.385757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481567, 31.856352, 52.117535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088840, 31.900660, 52.055874>,  <32.853203, 31.927244, 52.018875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088840, 31.900660, 52.055874>,  <33.481567, 31.856352, 52.117535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088840, 31.900660, 52.055874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186875, -0.421432, 0.887397,
		0.033330, 0.900070, 0.434469,
		-0.981818, 0.110769, -0.154155,
		32.794296, 31.933889, 52.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301735, 32.021858, 52.743694>,  <33.481567, 31.856352, 52.117535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301735, 32.021858, 52.743694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.990677, 31.885906, 52.532127>,  <32.804043, 31.804337, 52.405186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.990677, 31.885906, 52.532127>,  <33.301735, 32.021858, 52.743694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990677, 31.885906, 52.532127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255929, -0.597294, 0.760092,
		-0.574257, 0.726446, 0.377498,
		-0.777644, -0.339875, -0.528919,
		32.757385, 31.783943, 52.373451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816898, 32.107113, 53.213188>,  <33.301735, 32.021858, 52.743694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816898, 32.107113, 53.213188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.629471, 31.852379, 52.968277>,  <32.517014, 31.699539, 52.821331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.629471, 31.852379, 52.968277>,  <32.816898, 32.107113, 53.213188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629471, 31.852379, 52.968277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273700, -0.554319, 0.786015,
		-0.839957, 0.535884, 0.085437,
		-0.468572, -0.636835, -0.612275,
		32.488899, 31.661327, 52.784595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173141, 32.089603, 53.447025>,  <32.816898, 32.107113, 53.213188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173141, 32.089603, 53.447025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.238194, 31.744823, 53.254948>,  <32.277225, 31.537954, 53.139702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.238194, 31.744823, 53.254948>,  <32.173141, 32.089603, 53.447025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238194, 31.744823, 53.254948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119557, -0.500301, 0.857558,
		-0.979416, -0.082058, -0.184418,
		0.162634, -0.861955, -0.480192,
		32.286983, 31.486237, 53.110889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618849, 31.629322, 53.647488>,  <32.173141, 32.089603, 53.447025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618849, 31.629322, 53.647488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909678, 31.385235, 53.521629>,  <32.084175, 31.238783, 53.446114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909678, 31.385235, 53.521629>,  <31.618849, 31.629322, 53.647488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909678, 31.385235, 53.521629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126680, -0.569665, 0.812055,
		-0.674775, -0.550561, -0.491489,
		0.727070, -0.610217, -0.314650,
		32.127800, 31.202169, 53.427235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.810619, 37.446705, 39.013096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095177, 37.260380, 39.223598>,  <37.265911, 37.148586, 39.349899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095177, 37.260380, 39.223598>,  <36.810619, 37.446705, 39.013096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095177, 37.260380, 39.223598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702731, -0.461114, 0.541797,
		-0.009713, -0.755244, -0.655372,
		0.711390, -0.465813, 0.526254,
		37.308594, 37.120636, 39.381474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544624, 36.803371, 39.190571>,  <36.810619, 37.446705, 39.013096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544624, 36.803371, 39.190571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850258, 36.853855, 39.443630>,  <37.033638, 36.884144, 39.595467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850258, 36.853855, 39.443630>,  <36.544624, 36.803371, 39.190571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850258, 36.853855, 39.443630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541079, -0.408647, 0.735011,
		0.351296, -0.903924, -0.243951,
		0.764084, 0.126210, 0.632650,
		37.079483, 36.891720, 39.633427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607395, 36.202034, 39.459225>,  <36.544624, 36.803371, 39.190571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607395, 36.202034, 39.459225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767406, 36.482452, 39.695366>,  <36.863415, 36.650703, 39.837051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767406, 36.482452, 39.695366>,  <36.607395, 36.202034, 39.459225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767406, 36.482452, 39.695366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646647, -0.240573, 0.723859,
		0.649481, -0.671312, 0.357093,
		0.400029, 0.701046, 0.590349,
		36.887417, 36.692764, 39.872471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814575, 35.745880, 40.097782>,  <36.607395, 36.202034, 39.459225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814575, 35.745880, 40.097782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817635, 36.133312, 40.197220>,  <36.819469, 36.365772, 40.256882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817635, 36.133312, 40.197220>,  <36.814575, 35.745880, 40.097782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817635, 36.133312, 40.197220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491184, -0.212902, 0.844637,
		0.871022, -0.128567, 0.474121,
		0.007651, 0.968578, 0.248592,
		36.819931, 36.423885, 40.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717503, 35.752232, 40.736782>,  <36.814575, 35.745880, 40.097782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717503, 35.752232, 40.736782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682701, 36.150223, 40.716972>,  <36.661819, 36.389019, 40.705086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682701, 36.150223, 40.716972>,  <36.717503, 35.752232, 40.736782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682701, 36.150223, 40.716972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444789, 0.005689, 0.895617,
		0.891400, 0.099947, 0.442060,
		-0.086999, 0.994977, -0.049526,
		36.656601, 36.448715, 40.702114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802116, 35.914886, 41.394405>,  <36.717503, 35.752232, 40.736782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802116, 35.914886, 41.394405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628178, 36.237652, 41.234501>,  <36.523815, 36.431309, 41.138557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628178, 36.237652, 41.234501>,  <36.802116, 35.914886, 41.394405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628178, 36.237652, 41.234501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460480, 0.182245, 0.868760,
		0.773864, 0.561858, 0.292317,
		-0.434847, 0.806909, -0.399757,
		36.497723, 36.479725, 41.114574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957401, 36.371101, 41.892349>,  <36.802116, 35.914886, 41.394405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957401, 36.371101, 41.892349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653320, 36.525604, 41.683392>,  <36.470871, 36.618305, 41.558018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653320, 36.525604, 41.683392>,  <36.957401, 36.371101, 41.892349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653320, 36.525604, 41.683392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480197, 0.207545, 0.852254,
		0.437608, 0.898739, 0.027703,
		-0.760204, 0.386256, -0.522395,
		36.425259, 36.641479, 41.526672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691105, 36.912304, 42.258640>,  <36.957401, 36.371101, 41.892349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691105, 36.912304, 42.258640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382942, 36.833176, 42.016205>,  <36.198044, 36.785698, 41.870743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382942, 36.833176, 42.016205>,  <36.691105, 36.912304, 42.258640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382942, 36.833176, 42.016205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624460, 0.042457, 0.779902,
		-0.128545, 0.979319, -0.156238,
		-0.770407, -0.197816, -0.606088,
		36.151821, 36.773830, 41.834377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159523, 37.504421, 42.219109>,  <36.691105, 36.912304, 42.258640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159523, 37.504421, 42.219109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969635, 37.164349, 42.128036>,  <35.855701, 36.960304, 42.073391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969635, 37.164349, 42.128036>,  <36.159523, 37.504421, 42.219109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969635, 37.164349, 42.128036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488082, 0.039025, 0.871925,
		-0.732408, 0.525044, -0.433484,
		-0.474716, -0.850180, -0.227682,
		35.827221, 36.909294, 42.059731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378284, 37.661186, 42.340172>,  <36.159523, 37.504421, 42.219109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378284, 37.661186, 42.340172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413906, 37.263367, 42.318459>,  <35.435280, 37.024677, 42.305431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413906, 37.263367, 42.318459>,  <35.378284, 37.661186, 42.340172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413906, 37.263367, 42.318459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638838, -0.098851, 0.762964,
		-0.764169, -0.033267, -0.644157,
		0.089057, -0.994546, -0.054287,
		35.440624, 36.965004, 42.302174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628830, 37.349033, 42.375717>,  <35.378284, 37.661186, 42.340172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628830, 37.349033, 42.375717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895168, 37.076714, 42.497807>,  <35.054970, 36.913322, 42.571060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895168, 37.076714, 42.497807>,  <34.628830, 37.349033, 42.375717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895168, 37.076714, 42.497807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572637, -0.204082, 0.794001,
		-0.478263, -0.703466, -0.525737,
		0.665846, -0.680798, 0.305226,
		35.094921, 36.872475, 42.589375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222317, 36.897842, 42.647099>,  <34.628830, 37.349033, 42.375717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222317, 36.897842, 42.647099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569004, 36.774628, 42.804024>,  <34.777016, 36.700699, 42.898178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569004, 36.774628, 42.804024>,  <34.222317, 36.897842, 42.647099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569004, 36.774628, 42.804024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423796, -0.039987, 0.904875,
		-0.263046, -0.950534, -0.165202,
		0.866720, -0.308036, 0.392314,
		34.829021, 36.682217, 42.921719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018333, 36.209267, 42.315678>,  <34.222317, 36.897842, 42.647099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018333, 36.209267, 42.315678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637043, 36.148758, 42.211006>,  <33.408268, 36.112453, 42.148205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637043, 36.148758, 42.211006>,  <34.018333, 36.209267, 42.315678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637043, 36.148758, 42.211006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233426, 0.181572, -0.955272,
		0.192033, -0.971671, -0.137765,
		-0.953224, -0.151286, -0.261681,
		33.351074, 36.103378, 42.132504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062164, 35.748196, 41.710438>,  <34.018333, 36.209267, 42.315678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062164, 35.748196, 41.710438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717831, 35.951752, 41.709930>,  <33.511230, 36.073887, 41.709625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717831, 35.951752, 41.709930>,  <34.062164, 35.748196, 41.710438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717831, 35.951752, 41.709930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123521, 0.206535, -0.970611,
		-0.493672, -0.835688, -0.240650,
		-0.860831, 0.508889, -0.001264,
		33.459579, 36.104420, 41.709553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762890, 35.506470, 41.004204>,  <34.062164, 35.748196, 41.710438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762890, 35.506470, 41.004204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528839, 35.804127, 41.133121>,  <33.388409, 35.982723, 41.210472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528839, 35.804127, 41.133121>,  <33.762890, 35.506470, 41.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528839, 35.804127, 41.133121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201434, 0.251605, -0.946636,
		-0.785525, -0.618824, 0.002675,
		-0.585128, 0.744145, 0.322294,
		33.353302, 36.027370, 41.229809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140305, 35.432205, 40.648575>,  <33.762890, 35.506470, 41.004204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140305, 35.432205, 40.648575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185467, 35.816925, 40.748325>,  <33.212563, 36.047756, 40.808174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185467, 35.816925, 40.748325>,  <33.140305, 35.432205, 40.648575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185467, 35.816925, 40.748325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126767, 0.262875, -0.956466,
		-0.985486, 0.076379, 0.151606,
		0.112907, 0.961802, 0.249377,
		33.219337, 36.105465, 40.823139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649567, 35.780472, 40.256439>,  <33.140305, 35.432205, 40.648575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649567, 35.780472, 40.256439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894753, 36.077007, 40.365765>,  <33.041862, 36.254929, 40.431358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894753, 36.077007, 40.365765>,  <32.649567, 35.780472, 40.256439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894753, 36.077007, 40.365765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240307, 0.504446, -0.829329,
		-0.752681, 0.442671, 0.487355,
		0.612964, 0.741335, 0.273310,
		33.078640, 36.299408, 40.447758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277760, 36.412933, 40.180569>,  <32.649567, 35.780472, 40.256439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277760, 36.412933, 40.180569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665657, 36.506268, 40.151855>,  <32.898396, 36.562267, 40.134628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665657, 36.506268, 40.151855>,  <32.277760, 36.412933, 40.180569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665657, 36.506268, 40.151855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174337, 0.456069, -0.872701,
		-0.170890, 0.858811, 0.482948,
		0.969744, 0.233332, -0.071785,
		32.956581, 36.576267, 40.130322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292660, 37.114983, 39.940788>,  <32.277760, 36.412933, 40.180569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292660, 37.114983, 39.940788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655003, 36.969471, 39.853992>,  <32.872410, 36.882164, 39.801914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655003, 36.969471, 39.853992>,  <32.292660, 37.114983, 39.940788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655003, 36.969471, 39.853992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075433, 0.365551, -0.927730,
		0.416811, 0.856759, 0.303696,
		0.905858, -0.363779, -0.216994,
		32.926762, 36.860336, 39.788895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599518, 37.626553, 39.588932>,  <32.292660, 37.114983, 39.940788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599518, 37.626553, 39.588932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817078, 37.300816, 39.507919>,  <32.947613, 37.105373, 39.459312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817078, 37.300816, 39.507919>,  <32.599518, 37.626553, 39.588932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817078, 37.300816, 39.507919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154350, 0.334323, -0.929733,
		0.824833, 0.474420, 0.307532,
		0.543899, -0.814342, -0.202534,
		32.980247, 37.056515, 39.447159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135254, 37.805244, 39.222488>,  <32.599518, 37.626553, 39.588932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135254, 37.805244, 39.222488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083431, 37.421047, 39.123962>,  <33.052338, 37.190529, 39.064846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083431, 37.421047, 39.123962>,  <33.135254, 37.805244, 39.222488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083431, 37.421047, 39.123962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063123, 0.239920, -0.968738,
		0.989560, -0.141057, 0.029546,
		-0.129558, -0.960490, -0.246320,
		33.044563, 37.132900, 39.050068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558224, 37.797150, 38.655178>,  <33.135254, 37.805244, 39.222488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558224, 37.797150, 38.655178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346443, 37.458672, 38.631084>,  <33.219376, 37.255585, 38.616627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346443, 37.458672, 38.631084>,  <33.558224, 37.797150, 38.655178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346443, 37.458672, 38.631084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016320, 0.081149, -0.996569,
		0.848184, -0.526650, -0.056774,
		-0.529450, -0.846200, -0.060235,
		33.187607, 37.204811, 38.613014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954975, 37.394325, 38.194050>,  <33.558224, 37.797150, 38.655178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954975, 37.394325, 38.194050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575687, 37.268120, 38.179501>,  <33.348114, 37.192398, 38.170773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575687, 37.268120, 38.179501>,  <33.954975, 37.394325, 38.194050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575687, 37.268120, 38.179501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050853, -0.037782, -0.997991,
		0.313507, -0.948168, 0.051870,
		-0.948223, -0.315515, -0.036373,
		33.291222, 37.173466, 38.168591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863369, 36.784241, 37.745983>,  <33.954975, 37.394325, 38.194050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863369, 36.784241, 37.745983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503098, 36.955006, 37.778294>,  <33.286934, 37.057465, 37.797680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503098, 36.955006, 37.778294>,  <33.863369, 36.784241, 37.745983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503098, 36.955006, 37.778294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116023, -0.057157, -0.991601,
		-0.418709, -0.902485, 0.101011,
		-0.900678, 0.426912, 0.080777,
		33.232895, 37.083080, 37.802528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450745, 36.458298, 37.237129>,  <33.863369, 36.784241, 37.745983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450745, 36.458298, 37.237129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231884, 36.784691, 37.311749>,  <33.100567, 36.980526, 37.356522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231884, 36.784691, 37.311749>,  <33.450745, 36.458298, 37.237129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231884, 36.784691, 37.311749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196397, 0.091497, -0.976246,
		-0.813668, -0.570791, 0.110194,
		-0.547150, 0.815982, 0.186550,
		33.067738, 37.029484, 37.367714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867405, 36.348999, 36.868328>,  <33.450745, 36.458298, 37.237129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867405, 36.348999, 36.868328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862549, 36.744152, 36.930214>,  <32.859634, 36.981243, 36.967346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862549, 36.744152, 36.930214>,  <32.867405, 36.348999, 36.868328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862549, 36.744152, 36.930214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002574, 0.154760, -0.987949,
		-0.999923, -0.011595, -0.004421,
		-0.012140, 0.987884, 0.154718,
		32.858906, 37.040516, 36.976631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260399, 35.767971, 36.963955>,  <32.867405, 36.348999, 36.868328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260399, 35.767971, 36.963955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522568, 35.631191, 36.694588>,  <32.679867, 35.549122, 36.532967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522568, 35.631191, 36.694588>,  <32.260399, 35.767971, 36.963955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522568, 35.631191, 36.694588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282172, -0.937935, 0.201634,
		-0.700574, 0.057866, -0.711230,
		0.655420, -0.341949, -0.673422,
		32.719193, 35.528606, 36.492561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996174, 35.297695, 36.602753>,  <32.260399, 35.767971, 36.963955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996174, 35.297695, 36.602753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382843, 35.202297, 36.565517>,  <32.614845, 35.145058, 36.543179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382843, 35.202297, 36.565517>,  <31.996174, 35.297695, 36.602753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382843, 35.202297, 36.565517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178006, -0.887434, 0.425177,
		-0.184009, -0.394437, -0.900311,
		0.966672, -0.238497, -0.093084,
		32.672844, 35.130749, 36.537594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069141, 34.649620, 36.404774>,  <31.996174, 35.297695, 36.602753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069141, 34.649620, 36.404774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419247, 34.705109, 36.590107>,  <32.629311, 34.738400, 36.701305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419247, 34.705109, 36.590107>,  <32.069141, 34.649620, 36.404774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419247, 34.705109, 36.590107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129381, -0.855917, 0.500666,
		0.466024, -0.498160, -0.731204,
		0.875261, 0.138719, 0.463330,
		32.681824, 34.746723, 36.729107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512733, 34.126781, 36.266365>,  <32.069141, 34.649620, 36.404774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512733, 34.126781, 36.266365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627838, 34.268871, 36.622120>,  <32.696899, 34.354126, 36.835571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627838, 34.268871, 36.622120>,  <32.512733, 34.126781, 36.266365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627838, 34.268871, 36.622120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127560, -0.906176, 0.403204,
		0.949169, -0.229477, -0.215449,
		0.287760, 0.355226, 0.889387,
		32.714165, 34.375439, 36.888935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865871, 33.528137, 36.698158>,  <32.512733, 34.126781, 36.266365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865871, 33.528137, 36.698158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762997, 33.811657, 36.960899>,  <32.701271, 33.981770, 37.118546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762997, 33.811657, 36.960899>,  <32.865871, 33.528137, 36.698158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762997, 33.811657, 36.960899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294809, -0.704865, 0.645176,
		0.920295, -0.027716, 0.390242,
		-0.257186, 0.708800, 0.656855,
		32.685841, 34.024296, 37.157955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990833, 33.257030, 37.311359>,  <32.865871, 33.528137, 36.698158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990833, 33.257030, 37.311359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778843, 33.570591, 37.440746>,  <32.651649, 33.758728, 37.518379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778843, 33.570591, 37.440746>,  <32.990833, 33.257030, 37.311359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778843, 33.570591, 37.440746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490265, -0.594467, 0.637377,
		0.691930, 0.179207, 0.699369,
		-0.529974, 0.783897, 0.323471,
		32.619850, 33.805759, 37.537788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018269, 33.251190, 37.985622>,  <32.990833, 33.257030, 37.311359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018269, 33.251190, 37.985622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690380, 33.475525, 37.939114>,  <32.493649, 33.610126, 37.911209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690380, 33.475525, 37.939114>,  <33.018269, 33.251190, 37.985622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690380, 33.475525, 37.939114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464562, -0.532275, 0.707719,
		0.335028, 0.634146, 0.696861,
		-0.819718, 0.560841, -0.116273,
		32.444466, 33.643776, 37.904232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996525, 33.443069, 38.612133>,  <33.018269, 33.251190, 37.985622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996525, 33.443069, 38.612133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642685, 33.519421, 38.441936>,  <32.430382, 33.565231, 38.339817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642685, 33.519421, 38.441936>,  <32.996525, 33.443069, 38.612133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642685, 33.519421, 38.441936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448629, -0.597414, 0.664702,
		-0.127316, 0.778885, 0.614109,
		-0.884603, 0.190880, -0.425490,
		32.377304, 33.576683, 38.314289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520496, 33.798546, 39.152435>,  <32.996525, 33.443069, 38.612133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520496, 33.798546, 39.152435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293205, 33.619637, 38.876160>,  <32.156830, 33.512291, 38.710392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293205, 33.619637, 38.876160>,  <32.520496, 33.798546, 39.152435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293205, 33.619637, 38.876160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501117, -0.477675, 0.721601,
		-0.652682, 0.756154, 0.047292,
		-0.568232, -0.447278, -0.690691,
		32.122734, 33.485455, 38.668953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849337, 33.703457, 39.556824>,  <32.520496, 33.798546, 39.152435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849337, 33.703457, 39.556824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882404, 33.457733, 39.242935>,  <31.902245, 33.310299, 39.054604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882404, 33.457733, 39.242935>,  <31.849337, 33.703457, 39.556824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882404, 33.457733, 39.242935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602352, -0.658110, 0.451734,
		-0.793938, 0.435334, -0.424437,
		0.082671, -0.614309, -0.784723,
		31.907206, 33.273441, 39.007519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208950, 33.459221, 39.525654>,  <31.849337, 33.703457, 39.556824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208950, 33.459221, 39.525654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422094, 33.192413, 39.317368>,  <31.549980, 33.032330, 39.192394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422094, 33.192413, 39.317368>,  <31.208950, 33.459221, 39.525654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422094, 33.192413, 39.317368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476682, -0.745044, 0.466566,
		-0.699165, -0.000398, -0.714960,
		0.532862, -0.667016, -0.520718,
		31.581953, 32.992310, 39.161152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767303, 32.984070, 39.442982>,  <31.208950, 33.459221, 39.525654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767303, 32.984070, 39.442982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113081, 32.796558, 39.370338>,  <31.320547, 32.684052, 39.326752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113081, 32.796558, 39.370338>,  <30.767303, 32.984070, 39.442982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113081, 32.796558, 39.370338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314793, -0.786402, 0.531486,
		-0.391967, -0.402270, -0.827370,
		0.864446, -0.468775, -0.181612,
		31.372416, 32.655926, 39.315853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626640, 32.289997, 39.464981>,  <30.767303, 32.984070, 39.442982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626640, 32.289997, 39.464981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026253, 32.287754, 39.482426>,  <31.266020, 32.286407, 39.492893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026253, 32.287754, 39.482426>,  <30.626640, 32.289997, 39.464981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026253, 32.287754, 39.482426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022951, -0.912461, 0.408520,
		0.037502, -0.409126, -0.911707,
		0.999033, -0.005604, 0.043609,
		31.325962, 32.286072, 39.495510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639923, 31.621668, 39.465004>,  <30.626640, 32.289997, 39.464981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639923, 31.621668, 39.465004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973076, 31.798075, 39.598759>,  <31.172968, 31.903919, 39.679012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973076, 31.798075, 39.598759>,  <30.639923, 31.621668, 39.465004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973076, 31.798075, 39.598759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081210, -0.695024, 0.714385,
		0.547460, -0.567843, -0.614688,
		0.832882, 0.441016, 0.334383,
		31.222940, 31.930380, 39.699074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124502, 31.118586, 39.567436>,  <30.639923, 31.621668, 39.465004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124502, 31.118586, 39.567436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235472, 31.423237, 39.801685>,  <31.302053, 31.606028, 39.942238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235472, 31.423237, 39.801685>,  <31.124502, 31.118586, 39.567436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235472, 31.423237, 39.801685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186690, -0.640671, 0.744773,
		0.942434, -0.097288, -0.319927,
		0.277425, 0.761627, 0.585628,
		31.318699, 31.651726, 39.977375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744898, 30.968481, 39.934460>,  <31.124502, 31.118586, 39.567436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744898, 30.968481, 39.934460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567610, 31.244709, 40.163078>,  <31.461237, 31.410446, 40.300251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567610, 31.244709, 40.163078>,  <31.744898, 30.968481, 39.934460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567610, 31.244709, 40.163078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008148, -0.634466, 0.772908,
		0.896376, 0.347224, 0.275581,
		-0.443219, 0.690571, 0.571550,
		31.434645, 31.451880, 40.334541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069103, 30.933846, 40.543087>,  <31.744898, 30.968481, 39.934460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069103, 30.933846, 40.543087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731369, 31.122910, 40.644032>,  <31.528728, 31.236347, 40.704597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731369, 31.122910, 40.644032>,  <32.069103, 30.933846, 40.543087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731369, 31.122910, 40.644032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047152, -0.534712, 0.843718,
		0.533733, 0.700483, 0.473764,
		-0.844337, 0.472659, 0.252364,
		31.478067, 31.264708, 40.719742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199463, 31.058794, 41.214478>,  <32.069103, 30.933846, 40.543087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199463, 31.058794, 41.214478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806644, 31.128942, 41.186703>,  <31.570951, 31.171032, 41.170036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806644, 31.128942, 41.186703>,  <32.199463, 31.058794, 41.214478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806644, 31.128942, 41.186703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140026, -0.431190, 0.891329,
		0.126370, 0.885054, 0.448007,
		-0.982051, 0.175370, -0.069441,
		31.512030, 31.181553, 41.165871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003487, 31.306675, 41.785629>,  <32.199463, 31.058794, 41.214478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003487, 31.306675, 41.785629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653999, 31.166357, 41.650829>,  <31.444307, 31.082167, 41.569950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653999, 31.166357, 41.650829>,  <32.003487, 31.306675, 41.785629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653999, 31.166357, 41.650829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219970, -0.332982, 0.916917,
		-0.433862, 0.875253, 0.213767,
		-0.873714, -0.350793, -0.336998,
		31.391886, 31.061119, 41.549728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400982, 31.375311, 42.378288>,  <32.003487, 31.306675, 41.785629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400982, 31.375311, 42.378288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216599, 31.128389, 42.123276>,  <31.105968, 30.980236, 41.970268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216599, 31.128389, 42.123276>,  <31.400982, 31.375311, 42.378288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216599, 31.128389, 42.123276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436539, -0.467745, 0.768536,
		-0.772625, 0.632573, -0.053866,
		-0.460960, -0.617305, -0.637535,
		31.078310, 30.943197, 41.932014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857079, 31.285316, 42.732864>,  <31.400982, 31.375311, 42.378288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857079, 31.285316, 42.732864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898603, 30.980743, 42.476913>,  <30.923519, 30.798000, 42.323341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898603, 30.980743, 42.476913>,  <30.857079, 31.285316, 42.732864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898603, 30.980743, 42.476913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283711, -0.639294, 0.714710,
		-0.953274, 0.107345, -0.282393,
		0.103812, -0.761433, -0.639878,
		30.929747, 30.752314, 42.284950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246061, 30.862402, 42.870739>,  <30.857079, 31.285316, 42.732864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246061, 30.862402, 42.870739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521585, 30.617292, 42.715794>,  <30.686899, 30.470226, 42.622826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521585, 30.617292, 42.715794>,  <30.246061, 30.862402, 42.870739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521585, 30.617292, 42.715794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345842, -0.747369, 0.567303,
		-0.637129, -0.256800, -0.726719,
		0.688811, -0.612775, -0.387358,
		30.728230, 30.433460, 42.599586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913643, 30.195360, 42.822136>,  <30.246061, 30.862402, 42.870739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913643, 30.195360, 42.822136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305178, 30.116518, 42.800117>,  <30.540098, 30.069212, 42.786907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305178, 30.116518, 42.800117>,  <29.913643, 30.195360, 42.822136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305178, 30.116518, 42.800117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096982, -0.683630, 0.723356,
		-0.180210, -0.702708, -0.688277,
		0.978836, -0.197106, -0.055047,
		30.598829, 30.057386, 42.783604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875298, 29.565832, 42.759277>,  <29.913643, 30.195360, 42.822136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875298, 29.565832, 42.759277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255310, 29.623251, 42.870152>,  <30.483318, 29.657701, 42.936676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255310, 29.623251, 42.870152>,  <29.875298, 29.565832, 42.759277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255310, 29.623251, 42.870152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074981, -0.757045, 0.649046,
		0.303011, -0.637399, -0.708454,
		0.950033, 0.143547, 0.277185,
		30.540319, 29.666315, 42.953308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321924, 28.879967, 42.615032>,  <29.875298, 29.565832, 42.759277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321924, 28.879967, 42.615032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485371, 29.100876, 42.905693>,  <30.583439, 29.233421, 43.080090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485371, 29.100876, 42.905693>,  <30.321924, 28.879967, 42.615032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485371, 29.100876, 42.905693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007696, -0.798210, 0.602330,
		0.912674, -0.240529, -0.330411,
		0.408615, 0.552275, 0.726654,
		30.607956, 29.266558, 43.123688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598301, 28.422688, 43.070358>,  <30.321924, 28.879967, 42.615032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598301, 28.422688, 43.070358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593218, 28.745155, 43.306976>,  <30.590168, 28.938637, 43.448948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593218, 28.745155, 43.306976>,  <30.598301, 28.422688, 43.070358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593218, 28.745155, 43.306976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148106, -0.583550, 0.798457,
		0.988890, 0.097756, -0.111984,
		-0.012706, 0.806172, 0.591545,
		30.589407, 28.987007, 43.484440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994139, 28.205635, 43.715179>,  <30.598301, 28.422688, 43.070358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994139, 28.205635, 43.715179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867289, 28.556974, 43.858253>,  <30.791178, 28.767778, 43.944096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867289, 28.556974, 43.858253>,  <30.994139, 28.205635, 43.715179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867289, 28.556974, 43.858253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069305, -0.397603, 0.914937,
		0.945848, 0.265361, 0.186964,
		-0.317126, 0.878348, 0.357681,
		30.772150, 28.820478, 43.965557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445358, 28.535849, 44.286674>,  <30.994139, 28.205635, 43.715179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445358, 28.535849, 44.286674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053823, 28.611858, 44.317055>,  <30.818903, 28.657463, 44.335285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053823, 28.611858, 44.317055>,  <31.445358, 28.535849, 44.286674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053823, 28.611858, 44.317055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004801, -0.349731, 0.936838,
		0.204583, 0.917377, 0.341417,
		-0.978837, 0.190022, 0.075954,
		30.760172, 28.668865, 44.339840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091549, 28.915077, 44.658031>,  <31.445358, 28.535849, 44.286674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091549, 28.915077, 44.658031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415813, 28.682421, 44.631153>,  <32.610374, 28.542828, 44.615025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415813, 28.682421, 44.631153>,  <32.091549, 28.915077, 44.658031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415813, 28.682421, 44.631153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089620, 0.236683, -0.967445,
		0.578611, 0.778250, 0.243998,
		0.810664, -0.581642, -0.067201,
		32.659012, 28.507929, 44.610992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592987, 29.487677, 44.470692>,  <32.091549, 28.915077, 44.658031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592987, 29.487677, 44.470692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816673, 29.164846, 44.394890>,  <32.950886, 28.971149, 44.349411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816673, 29.164846, 44.394890>,  <32.592987, 29.487677, 44.470692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816673, 29.164846, 44.394890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387554, 0.456570, -0.800840,
		0.732859, 0.374399, 0.568105,
		0.559214, -0.807074, -0.189502,
		32.984436, 28.922724, 44.338039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359489, 29.627981, 44.427307>,  <32.592987, 29.487677, 44.470692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359489, 29.627981, 44.427307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314552, 29.294710, 44.210716>,  <33.287590, 29.094748, 44.080761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314552, 29.294710, 44.210716>,  <33.359489, 29.627981, 44.427307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314552, 29.294710, 44.210716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344844, 0.478370, -0.807617,
		0.931913, -0.277453, 0.233575,
		-0.112341, -0.833176, -0.541477,
		33.280849, 29.044758, 44.048275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904434, 29.579184, 44.072010>,  <33.359489, 29.627981, 44.427307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904434, 29.579184, 44.072010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667706, 29.339752, 43.856068>,  <33.525669, 29.196093, 43.726501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667706, 29.339752, 43.856068>,  <33.904434, 29.579184, 44.072010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667706, 29.339752, 43.856068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266329, 0.486924, -0.831849,
		0.760800, -0.636086, -0.128753,
		-0.591821, -0.598581, -0.539861,
		33.490158, 29.160177, 43.694111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250938, 29.385191, 43.501244>,  <33.904434, 29.579184, 44.072010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250938, 29.385191, 43.501244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869164, 29.313393, 43.405880>,  <33.640099, 29.270313, 43.348663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869164, 29.313393, 43.405880>,  <34.250938, 29.385191, 43.501244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869164, 29.313393, 43.405880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130338, 0.467944, -0.874094,
		0.268459, -0.865338, -0.423226,
		-0.954433, -0.179496, -0.238410,
		33.582832, 29.259544, 43.334358>
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
