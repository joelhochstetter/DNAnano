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
	<24.782824, 34.636314, 35.129574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525806, 34.625259, 34.823273>,  <24.371597, 34.618626, 34.639492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525806, 34.625259, 34.823273>,  <24.782824, 34.636314, 35.129574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525806, 34.625259, 34.823273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254210, 0.935063, -0.247053,
		0.722853, -0.353404, -0.593792,
		-0.642542, -0.027635, -0.765752,
		24.333044, 34.616970, 34.593548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113377, 35.036541, 34.442577>,  <24.782824, 34.636314, 35.129574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113377, 35.036541, 34.442577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715042, 35.017647, 34.411388>,  <24.476042, 35.006310, 34.392677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715042, 35.017647, 34.411388>,  <25.113377, 35.036541, 34.442577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715042, 35.017647, 34.411388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006746, 0.814758, -0.579761,
		0.090912, -0.577873, -0.811047,
		-0.995836, -0.047236, -0.077970,
		24.416292, 35.003475, 34.387997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851837, 34.614307, 33.785740>,  <25.113377, 35.036541, 34.442577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851837, 34.614307, 33.785740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668745, 34.943531, 33.920231>,  <24.558889, 35.141068, 34.000927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668745, 34.943531, 33.920231>,  <24.851837, 34.614307, 33.785740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668745, 34.943531, 33.920231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187687, 0.459100, -0.868332,
		-0.869054, -0.334358, -0.364623,
		-0.457732, 0.823063, 0.336228,
		24.531425, 35.190449, 34.021099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491182, 34.796692, 33.531700>,  <24.851837, 34.614307, 33.785740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491182, 34.796692, 33.531700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532999, 34.438278, 33.704300>,  <25.558088, 34.223228, 33.807858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532999, 34.438278, 33.704300>,  <25.491182, 34.796692, 33.531700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532999, 34.438278, 33.704300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062991, 0.438967, 0.896293,
		-0.992524, -0.066519, 0.102333,
		0.104541, -0.896038, 0.431495,
		25.564362, 34.169468, 33.833748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688971, 35.453808, 33.200043>,  <25.491182, 34.796692, 33.531700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688971, 35.453808, 33.200043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551735, 35.145683, 32.985043>,  <25.469393, 34.960808, 32.856041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551735, 35.145683, 32.985043>,  <25.688971, 35.453808, 33.200043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551735, 35.145683, 32.985043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337004, 0.635087, -0.695049,
		0.876766, -0.057322, -0.477488,
		-0.343088, -0.770311, -0.537506,
		25.448809, 34.914589, 32.823792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391422, 35.625313, 32.964928>,  <25.688971, 35.453808, 33.200043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391422, 35.625313, 32.964928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681280, 35.393852, 33.114624>,  <26.855194, 35.254974, 33.204441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681280, 35.393852, 33.114624>,  <26.391422, 35.625313, 32.964928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681280, 35.393852, 33.114624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517666, 0.815551, 0.258647,
		-0.454876, 0.006303, 0.890532,
		0.724644, -0.578651, 0.374237,
		26.898674, 35.220257, 33.226894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458267, 35.841934, 33.641560>,  <26.391422, 35.625313, 32.964928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458267, 35.841934, 33.641560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794783, 35.657276, 33.529049>,  <26.996691, 35.546482, 33.461544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794783, 35.657276, 33.529049>,  <26.458267, 35.841934, 33.641560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794783, 35.657276, 33.529049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525752, 0.819781, 0.227032,
		0.125778, -0.338882, 0.932383,
		0.841288, -0.461647, -0.281278,
		27.047169, 35.518784, 33.444664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984468, 36.010662, 34.190147>,  <26.458267, 35.841934, 33.641560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984468, 36.010662, 34.190147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198076, 35.883762, 33.876671>,  <27.326241, 35.807621, 33.688583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198076, 35.883762, 33.876671>,  <26.984468, 36.010662, 34.190147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198076, 35.883762, 33.876671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702291, 0.682560, 0.202239,
		0.470757, -0.658380, 0.587303,
		0.534019, -0.317252, -0.783693,
		27.358282, 35.788586, 33.641563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658381, 35.812950, 34.413223>,  <26.984468, 36.010662, 34.190147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658381, 35.812950, 34.413223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682482, 35.905640, 34.024857>,  <27.696943, 35.961254, 33.791836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682482, 35.905640, 34.024857>,  <27.658381, 35.812950, 34.413223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682482, 35.905640, 34.024857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607517, 0.763270, 0.219870,
		0.792018, -0.603094, -0.094789,
		0.060253, 0.231726, -0.970913,
		27.700558, 35.975159, 33.733582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397518, 35.892723, 34.370083>,  <27.658381, 35.812950, 34.413223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397518, 35.892723, 34.370083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229362, 36.058708, 34.047325>,  <28.128469, 36.158298, 33.853668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229362, 36.058708, 34.047325>,  <28.397518, 35.892723, 34.370083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229362, 36.058708, 34.047325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729105, 0.683821, -0.028194,
		0.540074, -0.600165, -0.590019,
		-0.420388, 0.414959, -0.806897,
		28.103247, 36.183197, 33.805256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938093, 36.042221, 33.861435>,  <28.397518, 35.892723, 34.370083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938093, 36.042221, 33.861435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631662, 36.279232, 33.761799>,  <28.447803, 36.421436, 33.702019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631662, 36.279232, 33.761799>,  <28.938093, 36.042221, 33.861435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631662, 36.279232, 33.761799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624621, 0.777685, -0.071098,
		0.151583, -0.210050, -0.965868,
		-0.766076, 0.592524, -0.249085,
		28.401840, 36.456989, 33.687073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205420, 36.383175, 33.286568>,  <28.938093, 36.042221, 33.861435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205420, 36.383175, 33.286568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894373, 36.608128, 33.399021>,  <28.707745, 36.743099, 33.466492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894373, 36.608128, 33.399021>,  <29.205420, 36.383175, 33.286568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894373, 36.608128, 33.399021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567128, 0.820430, -0.072526,
		-0.271437, 0.103040, -0.956925,
		-0.777617, 0.562385, 0.281132,
		28.661087, 36.776844, 33.483360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142065, 36.815800, 32.678825>,  <29.205420, 36.383175, 33.286568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142065, 36.815800, 32.678825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963415, 36.967979, 33.002747>,  <28.856226, 37.059288, 33.197098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963415, 36.967979, 33.002747>,  <29.142065, 36.815800, 32.678825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963415, 36.967979, 33.002747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588691, 0.806537, -0.054240,
		-0.673772, 0.452499, -0.584188,
		-0.446625, 0.380451, 0.809804,
		28.829428, 37.082115, 33.245689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942225, 37.451508, 32.438126>,  <29.142065, 36.815800, 32.678825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942225, 37.451508, 32.438126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966169, 37.418743, 32.836063>,  <28.980536, 37.399082, 33.074825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966169, 37.418743, 32.836063>,  <28.942225, 37.451508, 32.438126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966169, 37.418743, 32.836063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554826, 0.831228, 0.035057,
		-0.829810, 0.549864, 0.095207,
		0.059862, -0.081914, 0.994840,
		28.984129, 37.394169, 33.134514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130585, 38.142254, 32.623817>,  <28.942225, 37.451508, 32.438126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130585, 38.142254, 32.623817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182800, 37.944931, 32.967819>,  <29.214130, 37.826538, 33.174221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182800, 37.944931, 32.967819>,  <29.130585, 38.142254, 32.623817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182800, 37.944931, 32.967819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547849, 0.758858, 0.352131,
		-0.826330, 0.425185, 0.369319,
		0.130540, -0.493307, 0.860004,
		29.221962, 37.796940, 33.225819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982090, 38.573349, 33.157780>,  <29.130585, 38.142254, 32.623817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982090, 38.573349, 33.157780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234272, 38.307037, 33.317413>,  <29.385582, 38.147251, 33.413193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234272, 38.307037, 33.317413>,  <28.982090, 38.573349, 33.157780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234272, 38.307037, 33.317413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661030, 0.730008, 0.173577,
		-0.406896, 0.154372, 0.900336,
		0.630457, -0.665776, 0.399082,
		29.423409, 38.107304, 33.437138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327597, 38.807262, 33.814186>,  <28.982090, 38.573349, 33.157780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327597, 38.807262, 33.814186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582119, 38.521046, 33.698868>,  <29.734833, 38.349316, 33.629677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582119, 38.521046, 33.698868>,  <29.327597, 38.807262, 33.814186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582119, 38.521046, 33.698868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768518, 0.620452, 0.156268,
		0.067057, -0.320994, 0.944704,
		0.636305, -0.715543, -0.288295,
		29.773010, 38.306381, 33.612381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889214, 38.816532, 34.231461>,  <29.327597, 38.807262, 33.814186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889214, 38.816532, 34.231461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007963, 38.634171, 33.895836>,  <30.079212, 38.524754, 33.694462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007963, 38.634171, 33.895836>,  <29.889214, 38.816532, 34.231461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007963, 38.634171, 33.895836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812639, 0.582058, -0.028739,
		0.501483, -0.673319, 0.543283,
		0.296872, -0.455905, -0.839058,
		30.097025, 38.497398, 33.644119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576004, 38.644604, 34.291996>,  <29.889214, 38.816532, 34.231461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576004, 38.644604, 34.291996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503307, 38.651169, 33.898712>,  <30.459688, 38.655109, 33.662743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503307, 38.651169, 33.898712>,  <30.576004, 38.644604, 34.291996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503307, 38.651169, 33.898712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808982, 0.570917, -0.140005,
		0.559033, -0.820843, -0.117041,
		-0.181743, 0.016417, -0.983209,
		30.448784, 38.656094, 33.603748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269001, 38.643227, 33.909058>,  <30.576004, 38.644604, 34.291996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269001, 38.643227, 33.909058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009281, 38.740044, 33.620663>,  <30.853449, 38.798134, 33.447624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009281, 38.740044, 33.620663>,  <31.269001, 38.643227, 33.909058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009281, 38.740044, 33.620663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657507, 0.655090, -0.372211,
		0.382224, -0.715733, -0.584493,
		-0.649299, 0.242040, -0.720991,
		30.814491, 38.812656, 33.404366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658920, 38.612442, 33.208252>,  <31.269001, 38.643227, 33.909058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658920, 38.612442, 33.208252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336702, 38.844318, 33.159172>,  <31.143372, 38.983444, 33.129723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336702, 38.844318, 33.159172>,  <31.658920, 38.612442, 33.208252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336702, 38.844318, 33.159172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566326, 0.692315, -0.447185,
		-0.174279, -0.429718, -0.885985,
		-0.805544, 0.579691, -0.122704,
		31.095039, 39.018227, 33.122360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511652, 38.671474, 32.507397>,  <31.658920, 38.612442, 33.208252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511652, 38.671474, 32.507397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341402, 38.990540, 32.678314>,  <31.239252, 39.181976, 32.780865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341402, 38.990540, 32.678314>,  <31.511652, 38.671474, 32.507397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341402, 38.990540, 32.678314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711540, 0.586752, -0.386566,
		-0.559064, 0.139504, -0.817304,
		-0.425627, 0.797659, 0.427295,
		31.213715, 39.229836, 32.806503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562275, 39.160683, 31.976591>,  <31.511652, 38.671474, 32.507397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562275, 39.160683, 31.976591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487768, 39.355370, 32.317978>,  <31.443064, 39.472183, 32.522812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487768, 39.355370, 32.317978>,  <31.562275, 39.160683, 31.976591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487768, 39.355370, 32.317978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661990, 0.704061, -0.257037,
		-0.725998, 0.517109, -0.453349,
		-0.186269, 0.486721, 0.853468,
		31.431887, 39.501385, 32.574017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627022, 39.956112, 31.833302>,  <31.562275, 39.160683, 31.976591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627022, 39.956112, 31.833302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661303, 39.920074, 32.230198>,  <31.681871, 39.898453, 32.468334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661303, 39.920074, 32.230198>,  <31.627022, 39.956112, 31.833302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661303, 39.920074, 32.230198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848236, 0.529018, -0.025229,
		-0.522639, 0.843815, 0.121758,
		0.085701, -0.090094, 0.992239,
		31.687014, 39.893047, 32.527870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636608, 40.601120, 32.082180>,  <31.627022, 39.956112, 31.833302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636608, 40.601120, 32.082180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809952, 40.375481, 32.363319>,  <31.913958, 40.240097, 32.532001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809952, 40.375481, 32.363319>,  <31.636608, 40.601120, 32.082180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809952, 40.375481, 32.363319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794722, 0.606967, -0.002859,
		-0.424991, 0.559805, 0.711337,
		0.433358, -0.564100, 0.702845,
		31.939959, 40.206249, 32.574173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960821, 40.920628, 32.729645>,  <31.636608, 40.601120, 32.082180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960821, 40.920628, 32.729645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160339, 40.583950, 32.646942>,  <32.280048, 40.381943, 32.597321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160339, 40.583950, 32.646942>,  <31.960821, 40.920628, 32.729645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160339, 40.583950, 32.646942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835611, 0.530347, -0.143133,
		0.230126, -0.101372, 0.967867,
		0.498795, -0.841698, -0.206754,
		32.309978, 40.331440, 32.584915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632328, 40.875317, 33.168015>,  <31.960821, 40.920628, 32.729645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632328, 40.875317, 33.168015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672138, 40.712742, 32.804718>,  <32.696026, 40.615196, 32.586739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672138, 40.712742, 32.804718>,  <32.632328, 40.875317, 33.168015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672138, 40.712742, 32.804718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937040, 0.345351, -0.051863,
		0.334741, -0.845897, 0.415220,
		0.099526, -0.406438, -0.908241,
		32.701996, 40.590809, 32.532246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160336, 40.360802, 33.168415>,  <32.632328, 40.875317, 33.168015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160336, 40.360802, 33.168415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119106, 40.508739, 32.799072>,  <33.094368, 40.597504, 32.577465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119106, 40.508739, 32.799072>,  <33.160336, 40.360802, 33.168415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119106, 40.508739, 32.799072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976726, 0.213182, -0.023645,
		0.188098, -0.904305, -0.383212,
		-0.103077, 0.369846, -0.923358,
		33.088184, 40.619694, 32.522064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587307, 39.893391, 32.608593>,  <33.160336, 40.360802, 33.168415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587307, 39.893391, 32.608593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533226, 40.285313, 32.549667>,  <33.500778, 40.520466, 32.514313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533226, 40.285313, 32.549667>,  <33.587307, 39.893391, 32.608593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533226, 40.285313, 32.549667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983787, 0.150436, 0.097636,
		0.117826, -0.131725, -0.984259,
		-0.135207, 0.979805, -0.147315,
		33.492664, 40.579254, 32.505474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408463, 40.004818, 32.607178>,  <33.587307, 39.893391, 32.608593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408463, 40.004818, 32.607178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465866, 39.676788, 32.828770>,  <34.500309, 39.479973, 32.961723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465866, 39.676788, 32.828770>,  <34.408463, 40.004818, 32.607178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465866, 39.676788, 32.828770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635730, 0.505389, 0.583463,
		-0.758455, 0.268449, 0.593870,
		0.143506, -0.820071, 0.553976,
		34.508919, 39.430767, 32.994961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324970, 40.207127, 33.335701>,  <34.408463, 40.004818, 32.607178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324970, 40.207127, 33.335701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593197, 39.917908, 33.269306>,  <34.754131, 39.744377, 33.229469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593197, 39.917908, 33.269306>,  <34.324970, 40.207127, 33.335701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593197, 39.917908, 33.269306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539440, 0.321648, 0.778169,
		-0.509261, -0.611353, 0.605724,
		0.670565, -0.723043, -0.165986,
		34.794365, 39.700996, 33.219509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664772, 39.546127, 33.710526>,  <34.324970, 40.207127, 33.335701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664772, 39.546127, 33.710526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900635, 39.349796, 33.967087>,  <35.042152, 39.231998, 34.121021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900635, 39.349796, 33.967087>,  <34.664772, 39.546127, 33.710526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900635, 39.349796, 33.967087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650746, -0.759097, 0.017350,
		0.478370, -0.427620, -0.767009,
		0.589654, -0.490829, 0.641401,
		35.077530, 39.202549, 34.159508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899391, 38.823208, 33.521461>,  <34.664772, 39.546127, 33.710526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899391, 38.823208, 33.521461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868748, 38.889565, 33.914726>,  <34.850361, 38.929379, 34.150684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868748, 38.889565, 33.914726>,  <34.899391, 38.823208, 33.521461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868748, 38.889565, 33.914726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647658, -0.757986, 0.077432,
		0.758070, -0.630822, 0.165511,
		-0.076609, 0.165893, 0.983164,
		34.845764, 38.939331, 34.209675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128853, 38.241798, 34.134411>,  <34.899391, 38.823208, 33.521461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128853, 38.241798, 34.134411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836800, 38.496891, 34.232559>,  <34.661568, 38.649948, 34.291447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836800, 38.496891, 34.232559>,  <35.128853, 38.241798, 34.134411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836800, 38.496891, 34.232559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605214, -0.770256, 0.201049,
		0.317212, -0.001708, 0.948353,
		-0.730132, 0.637732, 0.245368,
		34.617760, 38.688210, 34.306171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821121, 37.871048, 34.709133>,  <35.128853, 38.241798, 34.134411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821121, 37.871048, 34.709133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574993, 38.161022, 34.585289>,  <34.427319, 38.335007, 34.510983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574993, 38.161022, 34.585289>,  <34.821121, 37.871048, 34.709133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574993, 38.161022, 34.585289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775674, -0.486857, 0.401622,
		0.140415, 0.487279, 0.861883,
		-0.615316, 0.724935, -0.309607,
		34.390400, 38.378502, 34.492405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292381, 37.982063, 35.215446>,  <34.821121, 37.871048, 34.709133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292381, 37.982063, 35.215446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125721, 38.143402, 34.889572>,  <34.025726, 38.240204, 34.694046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125721, 38.143402, 34.889572>,  <34.292381, 37.982063, 35.215446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125721, 38.143402, 34.889572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854765, -0.478919, 0.200034,
		-0.309487, 0.779709, 0.544308,
		-0.416648, 0.403348, -0.814687,
		34.000725, 38.264408, 34.645164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633427, 38.082588, 35.469112>,  <34.292381, 37.982063, 35.215446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633427, 38.082588, 35.469112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608185, 38.074913, 35.069984>,  <33.593040, 38.070309, 34.830505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608185, 38.074913, 35.069984>,  <33.633427, 38.082588, 35.469112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608185, 38.074913, 35.069984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825711, -0.560565, 0.063000,
		-0.560553, 0.827888, 0.019533,
		-0.063107, -0.019186, -0.997822,
		33.589252, 38.069157, 34.770638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950245, 38.366241, 35.243671>,  <33.633427, 38.082588, 35.469112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950245, 38.366241, 35.243671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098564, 38.131725, 34.955566>,  <33.187557, 37.991016, 34.782703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098564, 38.131725, 34.955566>,  <32.950245, 38.366241, 35.243671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098564, 38.131725, 34.955566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855913, -0.516733, -0.020016,
		-0.360447, 0.623901, -0.693415,
		0.370798, -0.586288, -0.720260,
		33.209805, 37.955837, 34.739487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353775, 38.236759, 34.886803>,  <32.950245, 38.366241, 35.243671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353775, 38.236759, 34.886803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608391, 37.971241, 34.729733>,  <32.761162, 37.811932, 34.635490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608391, 37.971241, 34.729733>,  <32.353775, 38.236759, 34.886803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608391, 37.971241, 34.729733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743708, -0.663130, -0.084596,
		-0.204239, 0.345882, -0.915780,
		0.636541, -0.663795, -0.392672,
		32.799355, 37.772102, 34.611931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108372, 37.921787, 34.154034>,  <32.353775, 38.236759, 34.886803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108372, 37.921787, 34.154034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341599, 37.664478, 34.352516>,  <32.481537, 37.510094, 34.471607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341599, 37.664478, 34.352516>,  <32.108372, 37.921787, 34.154034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341599, 37.664478, 34.352516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723967, -0.688559, -0.041939,
		0.368648, -0.334786, -0.867189,
		0.583070, -0.643277, 0.496209,
		32.516521, 37.471497, 34.501377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798332, 37.299194, 34.062187>,  <32.108372, 37.921787, 34.154034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798332, 37.299194, 34.062187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063217, 37.199566, 34.344872>,  <32.222149, 37.139790, 34.514481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063217, 37.199566, 34.344872>,  <31.798332, 37.299194, 34.062187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063217, 37.199566, 34.344872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539097, -0.813413, 0.218479,
		0.520433, -0.525666, -0.672923,
		0.662211, -0.249067, 0.706712,
		32.261879, 37.124847, 34.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992319, 36.678349, 33.833473>,  <31.798332, 37.299194, 34.062187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992319, 36.678349, 33.833473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070904, 36.709286, 34.224457>,  <32.118053, 36.727848, 34.459045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070904, 36.709286, 34.224457>,  <31.992319, 36.678349, 33.833473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070904, 36.709286, 34.224457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621466, -0.761250, 0.185146,
		0.758408, -0.643830, -0.101491,
		0.196462, 0.077343, 0.977456,
		32.129841, 36.732491, 34.517693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987148, 36.052849, 34.051208>,  <31.992319, 36.678349, 33.833473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987148, 36.052849, 34.051208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959835, 36.253757, 34.396011>,  <31.943447, 36.374302, 34.602894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959835, 36.253757, 34.396011>,  <31.987148, 36.052849, 34.051208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959835, 36.253757, 34.396011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704311, -0.636219, 0.314915,
		0.706600, -0.585621, 0.397196,
		-0.068282, 0.502268, 0.862011,
		31.939350, 36.404438, 34.654613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971407, 35.560513, 34.588482>,  <31.987148, 36.052849, 34.051208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971407, 35.560513, 34.588482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816433, 35.877251, 34.777321>,  <31.723448, 36.067291, 34.890625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816433, 35.877251, 34.777321>,  <31.971407, 35.560513, 34.588482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816433, 35.877251, 34.777321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800633, -0.542881, 0.253509,
		0.457034, -0.279761, 0.844307,
		-0.387436, 0.791842, 0.472101,
		31.700203, 36.114803, 34.918953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857885, 35.367237, 35.232502>,  <31.971407, 35.560513, 34.588482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857885, 35.367237, 35.232502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600508, 35.668495, 35.177719>,  <31.446081, 35.849251, 35.144848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600508, 35.668495, 35.177719>,  <31.857885, 35.367237, 35.232502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600508, 35.668495, 35.177719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752199, -0.588862, 0.295701,
		0.142054, 0.293289, 0.945411,
		-0.643442, 0.753143, -0.136961,
		31.407475, 35.894440, 35.136631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418987, 35.399483, 35.816002>,  <31.857885, 35.367237, 35.232502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418987, 35.399483, 35.816002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217743, 35.606182, 35.538918>,  <31.096996, 35.730202, 35.372665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217743, 35.606182, 35.538918>,  <31.418987, 35.399483, 35.816002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217743, 35.606182, 35.538918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861710, -0.361013, 0.356547,
		-0.065832, 0.776298, 0.626918,
		-0.503113, 0.516750, -0.692710,
		31.066809, 35.761208, 35.331104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767229, 35.399872, 36.074329>,  <31.418987, 35.399483, 35.816002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767229, 35.399872, 36.074329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699841, 35.507431, 35.695004>,  <30.659407, 35.571968, 35.467407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699841, 35.507431, 35.695004>,  <30.767229, 35.399872, 36.074329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699841, 35.507431, 35.695004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857826, -0.513897, 0.006677,
		-0.485542, 0.814618, 0.317249,
		-0.168473, 0.268902, -0.948319,
		30.649300, 35.588100, 35.410507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037386, 35.749538, 36.086273>,  <30.767229, 35.399872, 36.074329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037386, 35.749538, 36.086273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114355, 35.609577, 35.719547>,  <30.160536, 35.525600, 35.499512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114355, 35.609577, 35.719547>,  <30.037386, 35.749538, 36.086273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114355, 35.609577, 35.719547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627999, -0.761811, 0.158940,
		-0.754050, 0.545173, -0.366327,
		0.192422, -0.349902, -0.916811,
		30.172083, 35.504608, 35.444504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624657, 35.190990, 36.091965>,  <30.037386, 35.749538, 36.086273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624657, 35.190990, 36.091965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765474, 35.168621, 35.718239>,  <29.849964, 35.155197, 35.494003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765474, 35.168621, 35.718239>,  <29.624657, 35.190990, 36.091965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765474, 35.168621, 35.718239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568232, -0.805979, -0.165860,
		-0.743760, 0.589296, -0.315519,
		0.352042, -0.055928, -0.934312,
		29.871086, 35.151844, 35.437946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156622, 35.382214, 35.588680>,  <29.624657, 35.190990, 36.091965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156622, 35.382214, 35.588680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423315, 35.160107, 35.389824>,  <29.583332, 35.026844, 35.270512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423315, 35.160107, 35.389824>,  <29.156622, 35.382214, 35.588680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423315, 35.160107, 35.389824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671351, -0.737122, -0.077069,
		-0.323657, 0.385137, -0.864243,
		0.666734, -0.555267, -0.497137,
		29.623335, 34.993526, 35.240685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847002, 35.198666, 34.936897>,  <29.156622, 35.382214, 35.588680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847002, 35.198666, 34.936897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141306, 34.939461, 35.015621>,  <29.317888, 34.783939, 35.062855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141306, 34.939461, 35.015621>,  <28.847002, 35.198666, 34.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141306, 34.939461, 35.015621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589164, -0.755760, -0.285853,
		0.333981, 0.094363, -0.937845,
		0.735760, -0.648014, 0.196814,
		29.362034, 34.745056, 35.074665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836224, 34.633408, 34.324738>,  <28.847002, 35.198666, 34.936897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836224, 34.633408, 34.324738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054338, 34.475647, 34.620605>,  <29.185207, 34.380993, 34.798126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054338, 34.475647, 34.620605>,  <28.836224, 34.633408, 34.324738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054338, 34.475647, 34.620605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481719, -0.869578, -0.108542,
		0.686010, -0.297127, -0.664159,
		0.545287, -0.394399, 0.739670,
		29.217924, 34.357327, 34.842506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154787, 34.068405, 33.997002>,  <28.836224, 34.633408, 34.324738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154787, 34.068405, 33.997002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138361, 33.983929, 34.387634>,  <29.128506, 33.933243, 34.622013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138361, 33.983929, 34.387634>,  <29.154787, 34.068405, 33.997002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138361, 33.983929, 34.387634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464074, -0.861550, -0.205831,
		0.884844, -0.461658, -0.062631,
		-0.041064, -0.211194, 0.976581,
		29.126041, 33.920570, 34.680607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328838, 33.344963, 34.048374>,  <29.154787, 34.068405, 33.997002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328838, 33.344963, 34.048374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131430, 33.455227, 34.378330>,  <29.012983, 33.521385, 34.576305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131430, 33.455227, 34.378330>,  <29.328838, 33.344963, 34.048374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131430, 33.455227, 34.378330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467992, -0.883600, 0.015280,
		0.733088, -0.378502, 0.565082,
		-0.493523, 0.275656, 0.824894,
		28.983374, 33.537922, 34.625797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513329, 32.799541, 34.526508>,  <29.328838, 33.344963, 34.048374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513329, 32.799541, 34.526508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165955, 32.962009, 34.640244>,  <28.957531, 33.059490, 34.708485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165955, 32.962009, 34.640244>,  <29.513329, 32.799541, 34.526508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165955, 32.962009, 34.640244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391278, -0.913662, 0.110105,
		0.304509, -0.015636, 0.952381,
		-0.868433, 0.406174, 0.284337,
		28.905424, 33.083862, 34.725544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167173, 32.965645, 34.940536>,  <29.513329, 32.799541, 34.526508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167173, 32.965645, 34.940536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913286, 33.243549, 35.075851>,  <29.760954, 33.410294, 35.157040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913286, 33.243549, 35.075851>,  <30.167173, 32.965645, 34.940536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913286, 33.243549, 35.075851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567643, 0.716237, -0.405938,
		-0.524324, -0.065630, -0.848986,
		-0.634717, 0.694764, 0.338286,
		29.722872, 33.451977, 35.177338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454332, 32.274872, 34.769554>,  <30.167173, 32.965645, 34.940536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454332, 32.274872, 34.769554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138723, 32.038052, 34.835182>,  <29.949358, 31.895960, 34.874561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138723, 32.038052, 34.835182>,  <30.454332, 32.274872, 34.769554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138723, 32.038052, 34.835182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123723, 0.414717, 0.901500,
		-0.601777, 0.691004, -0.400471,
		-0.789023, -0.592050, 0.164074,
		29.902016, 31.860437, 34.884403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806959, 32.152798, 34.069084>,  <30.454332, 32.274872, 34.769554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806959, 32.152798, 34.069084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948912, 32.473068, 33.876015>,  <31.034082, 32.665230, 33.760174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948912, 32.473068, 33.876015>,  <30.806959, 32.152798, 34.069084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948912, 32.473068, 33.876015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934066, -0.281715, 0.219446,
		0.039729, -0.528726, -0.847862,
		0.354882, 0.800678, -0.482673,
		31.055376, 32.713272, 33.731213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406704, 32.658531, 34.354092>,  <30.806959, 32.152798, 34.069084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406704, 32.658531, 34.354092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746939, 32.513027, 34.202206>,  <31.951078, 32.425724, 34.111073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746939, 32.513027, 34.202206>,  <31.406704, 32.658531, 34.354092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746939, 32.513027, 34.202206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443431, 0.108088, 0.889767,
		-0.282620, -0.925200, 0.253241,
		0.850585, -0.363761, -0.379715,
		32.002113, 32.403900, 34.088291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700125, 32.009926, 34.563393>,  <31.406704, 32.658531, 34.354092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700125, 32.009926, 34.563393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010868, 32.241287, 34.463844>,  <32.197315, 32.380104, 34.404118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010868, 32.241287, 34.463844>,  <31.700125, 32.009926, 34.563393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010868, 32.241287, 34.463844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251809, 0.076881, 0.964718,
		0.577134, -0.812117, -0.085923,
		0.776858, 0.578408, -0.248869,
		32.243927, 32.414810, 34.389183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423046, 31.729902, 34.795822>,  <31.700125, 32.009926, 34.563393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423046, 31.729902, 34.795822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429382, 32.128666, 34.765045>,  <32.433182, 32.367924, 34.746578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429382, 32.128666, 34.765045>,  <32.423046, 31.729902, 34.795822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429382, 32.128666, 34.765045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202220, 0.072172, 0.976677,
		0.979212, -0.031030, -0.200452,
		0.015839, 0.996910, -0.076946,
		32.434135, 32.427738, 34.741962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940262, 31.876318, 35.249157>,  <32.423046, 31.729902, 34.795822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940262, 31.876318, 35.249157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688370, 32.186203, 35.226326>,  <32.537235, 32.372135, 35.212627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688370, 32.186203, 35.226326>,  <32.940262, 31.876318, 35.249157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688370, 32.186203, 35.226326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087977, 0.144131, 0.985640,
		0.771814, 0.615668, -0.158921,
		-0.629732, 0.774712, -0.057078,
		32.499451, 32.418617, 35.209202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374641, 32.400021, 35.629452>,  <32.940262, 31.876318, 35.249157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374641, 32.400021, 35.629452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974979, 32.410824, 35.641884>,  <32.735184, 32.417305, 35.649345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974979, 32.410824, 35.641884>,  <33.374641, 32.400021, 35.629452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974979, 32.410824, 35.641884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035132, 0.165413, 0.985598,
		0.021474, 0.985855, -0.166221,
		-0.999152, 0.027004, 0.031083,
		32.675232, 32.418926, 35.651207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159531, 33.033859, 35.987499>,  <33.374641, 32.400021, 35.629452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159531, 33.033859, 35.987499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929893, 32.707047, 36.008972>,  <32.792110, 32.510960, 36.021854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929893, 32.707047, 36.008972>,  <33.159531, 33.033859, 35.987499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929893, 32.707047, 36.008972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139095, -0.032706, 0.989739,
		-0.806892, 0.575664, 0.132421,
		-0.574088, -0.817032, 0.053681,
		32.757668, 32.461937, 36.025078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662922, 33.302067, 36.480267>,  <33.159531, 33.033859, 35.987499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662922, 33.302067, 36.480267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685623, 32.903248, 36.459591>,  <32.699245, 32.663956, 36.447186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685623, 32.903248, 36.459591>,  <32.662922, 33.302067, 36.480267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685623, 32.903248, 36.459591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115994, -0.044833, 0.992237,
		-0.991627, -0.062309, 0.113108,
		0.056754, -0.997049, -0.051685,
		32.702648, 32.604134, 36.444084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215698, 33.074715, 37.006077>,  <32.662922, 33.302067, 36.480267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215698, 33.074715, 37.006077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453487, 32.768570, 36.907433>,  <32.596161, 32.584885, 36.848244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453487, 32.768570, 36.907433>,  <32.215698, 33.074715, 37.006077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453487, 32.768570, 36.907433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044122, -0.275180, 0.960380,
		-0.802902, -0.581803, -0.129819,
		0.594476, -0.765363, -0.246613,
		32.631828, 32.538960, 36.833450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903622, 32.536636, 37.330837>,  <32.215698, 33.074715, 37.006077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903622, 32.536636, 37.330837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283138, 32.426636, 37.268650>,  <32.510849, 32.360638, 37.231339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283138, 32.426636, 37.268650>,  <31.903622, 32.536636, 37.330837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283138, 32.426636, 37.268650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116522, -0.152790, 0.981365,
		-0.293630, -0.949226, -0.112923,
		0.948791, -0.275000, -0.155470,
		32.567776, 32.344135, 37.222008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028835, 31.886595, 37.672714>,  <31.903622, 32.536636, 37.330837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028835, 31.886595, 37.672714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401234, 31.996140, 37.576176>,  <32.624672, 32.061867, 37.518253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401234, 31.996140, 37.576176>,  <32.028835, 31.886595, 37.672714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401234, 31.996140, 37.576176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310154, -0.244799, 0.918628,
		0.192495, -0.930093, -0.312846,
		0.930994, 0.273862, -0.241350,
		32.680531, 32.078297, 37.503769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486069, 31.387363, 37.810860>,  <32.028835, 31.886595, 37.672714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486069, 31.387363, 37.810860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694798, 31.727579, 37.837044>,  <32.820034, 31.931709, 37.852753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694798, 31.727579, 37.837044>,  <32.486069, 31.387363, 37.810860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694798, 31.727579, 37.837044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230890, -0.214689, 0.948999,
		0.821215, -0.480093, -0.308410,
		0.521820, 0.850541, 0.065457,
		32.851345, 31.982740, 37.856682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006199, 31.225798, 38.302021>,  <32.486069, 31.387363, 37.810860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006199, 31.225798, 38.302021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965096, 31.623672, 38.299545>,  <32.940434, 31.862398, 38.298061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965096, 31.623672, 38.299545>,  <33.006199, 31.225798, 38.302021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965096, 31.623672, 38.299545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002086, 0.006005, 0.999980,
		0.994705, 0.102766, 0.001457,
		-0.102756, 0.994687, -0.006188,
		32.934269, 31.922079, 38.297688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423801, 31.439665, 38.820328>,  <33.006199, 31.225798, 38.302021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423801, 31.439665, 38.820328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175804, 31.751375, 38.783802>,  <33.027004, 31.938402, 38.761887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175804, 31.751375, 38.783802>,  <33.423801, 31.439665, 38.820328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175804, 31.751375, 38.783802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179302, -0.027420, 0.983412,
		0.763846, 0.626081, 0.156726,
		-0.619993, 0.779276, -0.091312,
		32.989807, 31.985159, 38.756409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676346, 32.031811, 39.230003>,  <33.423801, 31.439665, 38.820328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676346, 32.031811, 39.230003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288132, 32.105400, 39.167759>,  <33.055202, 32.149555, 39.130413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288132, 32.105400, 39.167759>,  <33.676346, 32.031811, 39.230003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288132, 32.105400, 39.167759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115530, 0.211461, 0.970534,
		0.211461, 0.959915, -0.183976,
		-0.970534, 0.183976, -0.155615,
		32.996971, 32.160591, 39.121075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651588, 32.571758, 39.593250>,  <33.676346, 32.031811, 39.230003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651588, 32.571758, 39.593250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273552, 32.457047, 39.530556>,  <33.046730, 32.388222, 39.492939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273552, 32.457047, 39.530556>,  <33.651588, 32.571758, 39.593250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273552, 32.457047, 39.530556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177545, 0.047889, 0.982947,
		-0.274379, 0.956800, -0.096174,
		-0.945090, -0.286775, -0.156735,
		32.990025, 32.371014, 39.483536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275597, 33.043800, 39.999329>,  <33.651588, 32.571758, 39.593250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275597, 33.043800, 39.999329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041706, 32.727436, 39.927155>,  <32.901371, 32.537617, 39.883850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041706, 32.727436, 39.927155>,  <33.275597, 33.043800, 39.999329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041706, 32.727436, 39.927155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153576, -0.110473, 0.981942,
		-0.796562, 0.601876, -0.056869,
		-0.584725, -0.790912, -0.180432,
		32.866287, 32.490162, 39.873024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533592, 33.106899, 40.312771>,  <33.275597, 33.043800, 39.999329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533592, 33.106899, 40.312771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607498, 32.714863, 40.283680>,  <32.651840, 32.479641, 40.266224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607498, 32.714863, 40.283680>,  <32.533592, 33.106899, 40.312771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607498, 32.714863, 40.283680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283567, -0.124022, 0.950899,
		-0.940985, -0.155064, -0.300835,
		0.184760, -0.980089, -0.072732,
		32.662926, 32.420837, 40.261860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910366, 32.825863, 40.607239>,  <32.533592, 33.106899, 40.312771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910366, 32.825863, 40.607239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185215, 32.535252, 40.605522>,  <32.350124, 32.360886, 40.604492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185215, 32.535252, 40.605522>,  <31.910366, 32.825863, 40.607239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185215, 32.535252, 40.605522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340019, -0.326785, 0.881816,
		-0.642066, -0.604457, -0.471575,
		0.687123, -0.726528, -0.004290,
		32.391354, 32.317295, 40.604237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540874, 32.323761, 40.858059>,  <31.910366, 32.825863, 40.607239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540874, 32.323761, 40.858059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918201, 32.198990, 40.903408>,  <32.144596, 32.124126, 40.930618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918201, 32.198990, 40.903408>,  <31.540874, 32.323761, 40.858059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918201, 32.198990, 40.903408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248142, -0.436008, 0.865056,
		-0.220407, -0.844154, -0.488697,
		0.943317, -0.311931, 0.113371,
		32.201195, 32.105412, 40.937420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532583, 31.532803, 40.953033>,  <31.540874, 32.323761, 40.858059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532583, 31.532803, 40.953033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891327, 31.649925, 41.085644>,  <32.106571, 31.720200, 41.165211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891327, 31.649925, 41.085644>,  <31.532583, 31.532803, 40.953033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891327, 31.649925, 41.085644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175509, -0.452408, 0.874370,
		0.406006, -0.842372, -0.354356,
		0.896859, 0.292807, 0.331524,
		32.160385, 31.737768, 41.185101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992285, 30.921131, 41.229031>,  <31.532583, 31.532803, 40.953033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992285, 30.921131, 41.229031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125023, 31.252085, 41.410278>,  <32.204666, 31.450657, 41.519028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125023, 31.252085, 41.410278>,  <31.992285, 30.921131, 41.229031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125023, 31.252085, 41.410278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156397, -0.425432, 0.891374,
		0.930279, -0.366663, -0.011776,
		0.331844, 0.827385, 0.453115,
		32.224575, 31.500299, 41.546211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375221, 30.632618, 41.692131>,  <31.992285, 30.921131, 41.229031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375221, 30.632618, 41.692131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322807, 31.008680, 41.817944>,  <32.291359, 31.234318, 41.893433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322807, 31.008680, 41.817944>,  <32.375221, 30.632618, 41.692131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322807, 31.008680, 41.817944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173788, -0.334141, 0.926363,
		0.976027, 0.066723, 0.207172,
		-0.131035, 0.940158, 0.314535,
		32.283497, 31.290728, 41.912304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851566, 30.825073, 42.254719>,  <32.375221, 30.632618, 41.692131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851566, 30.825073, 42.254719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513306, 31.037300, 42.277935>,  <32.310349, 31.164637, 42.291866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513306, 31.037300, 42.277935>,  <32.851566, 30.825073, 42.254719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513306, 31.037300, 42.277935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003617, -0.114438, 0.993424,
		0.533718, 0.839883, 0.098694,
		-0.845655, 0.530565, 0.058040,
		32.259609, 31.196470, 42.295345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025955, 31.248955, 42.857498>,  <32.851566, 30.825073, 42.254719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025955, 31.248955, 42.857498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630699, 31.291174, 42.812897>,  <32.393543, 31.316505, 42.786137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630699, 31.291174, 42.812897>,  <33.025955, 31.248955, 42.857498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630699, 31.291174, 42.812897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114646, -0.024182, 0.993112,
		0.102123, 0.994120, 0.035996,
		-0.988143, 0.105546, -0.111503,
		32.334255, 31.322838, 42.779446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858437, 31.786770, 43.243626>,  <33.025955, 31.248955, 42.857498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858437, 31.786770, 43.243626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523743, 31.574705, 43.188778>,  <32.322926, 31.447466, 43.155869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523743, 31.574705, 43.188778>,  <32.858437, 31.786770, 43.243626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523743, 31.574705, 43.188778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183636, 0.035759, 0.982343,
		-0.515896, 0.847143, -0.127278,
		-0.836737, -0.530160, -0.137118,
		32.272720, 31.415657, 43.147644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375248, 32.075535, 43.686031>,  <32.858437, 31.786770, 43.243626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375248, 32.075535, 43.686031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210884, 31.716011, 43.624977>,  <32.112267, 31.500298, 43.588345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210884, 31.716011, 43.624977>,  <32.375248, 32.075535, 43.686031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210884, 31.716011, 43.624977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221040, -0.064202, 0.973149,
		-0.884476, 0.433611, -0.172292,
		-0.410906, -0.898810, -0.152631,
		32.087612, 31.446367, 43.579189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895449, 32.109081, 44.196053>,  <32.375248, 32.075535, 43.686031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895449, 32.109081, 44.196053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922009, 31.723213, 44.094070>,  <31.937944, 31.491692, 44.032883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922009, 31.723213, 44.094070>,  <31.895449, 32.109081, 44.196053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922009, 31.723213, 44.094070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290915, -0.263131, 0.919853,
		-0.954442, 0.013094, -0.298108,
		0.066397, -0.964671, -0.254953,
		31.941927, 31.433811, 44.017586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194954, 31.669275, 44.362473>,  <31.895449, 32.109081, 44.196053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194954, 31.669275, 44.362473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547501, 31.480593, 44.372917>,  <31.759029, 31.367382, 44.379185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547501, 31.480593, 44.372917>,  <31.194954, 31.669275, 44.362473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547501, 31.480593, 44.372917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198481, -0.319563, 0.926545,
		-0.428714, -0.821810, -0.375277,
		0.881368, -0.471708, 0.026113,
		31.811911, 31.339081, 44.380753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238909, 31.451195, 45.000046>,  <31.194954, 31.669275, 44.362473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238909, 31.451195, 45.000046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588490, 31.285330, 44.898647>,  <31.798239, 31.185810, 44.837807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588490, 31.285330, 44.898647>,  <31.238909, 31.451195, 45.000046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588490, 31.285330, 44.898647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158851, -0.249226, 0.955329,
		-0.459318, -0.875180, -0.151943,
		0.873953, -0.414664, -0.253497,
		31.850676, 31.160931, 44.822598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242931, 30.725451, 45.188717>,  <31.238909, 31.451195, 45.000046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242931, 30.725451, 45.188717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614904, 30.872341, 45.181000>,  <31.838089, 30.960476, 45.176369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614904, 30.872341, 45.181000>,  <31.242931, 30.725451, 45.188717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614904, 30.872341, 45.181000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202308, -0.467097, 0.860751,
		0.307079, -0.804342, -0.508660,
		0.929932, 0.367225, -0.019289,
		31.893885, 30.982508, 45.175213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626650, 30.218712, 45.390415>,  <31.242931, 30.725451, 45.188717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626650, 30.218712, 45.390415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885458, 30.521210, 45.429321>,  <32.040741, 30.702709, 45.452667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885458, 30.521210, 45.429321>,  <31.626650, 30.218712, 45.390415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885458, 30.521210, 45.429321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374659, -0.426435, 0.823276,
		0.664076, -0.496233, -0.559245,
		0.647019, 0.756244, 0.097268,
		32.079563, 30.748083, 45.458500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261017, 29.883104, 45.553169>,  <31.626650, 30.218712, 45.390415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261017, 29.883104, 45.553169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311409, 30.261545, 45.672512>,  <32.341644, 30.488609, 45.744118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311409, 30.261545, 45.672512>,  <32.261017, 29.883104, 45.553169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311409, 30.261545, 45.672512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402071, -0.323644, 0.856501,
		0.906900, 0.012057, -0.421174,
		0.125983, 0.946102, 0.298361,
		32.349205, 30.545376, 45.762020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768822, 29.844568, 46.011864>,  <32.261017, 29.883104, 45.553169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768822, 29.844568, 46.011864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630207, 30.212196, 46.086937>,  <32.547039, 30.432774, 46.131981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630207, 30.212196, 46.086937>,  <32.768822, 29.844568, 46.011864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630207, 30.212196, 46.086937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253024, -0.101080, 0.962165,
		0.903268, 0.380912, -0.197519,
		-0.346535, 0.919070, 0.187682,
		32.526245, 30.487917, 46.143242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290180, 30.204828, 46.239056>,  <32.768822, 29.844568, 46.011864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290180, 30.204828, 46.239056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953270, 30.364487, 46.383968>,  <32.751122, 30.460281, 46.470917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953270, 30.364487, 46.383968>,  <33.290180, 30.204828, 46.239056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953270, 30.364487, 46.383968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321399, -0.167693, 0.931977,
		0.432749, 0.901421, 0.012959,
		-0.842277, 0.399147, 0.362285,
		32.700588, 30.484230, 46.492653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577236, 30.414961, 46.881901>,  <33.290180, 30.204828, 46.239056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577236, 30.414961, 46.881901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184357, 30.450520, 46.948082>,  <32.948627, 30.471855, 46.987789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184357, 30.450520, 46.948082>,  <33.577236, 30.414961, 46.881901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184357, 30.450520, 46.948082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136077, -0.270374, 0.953090,
		0.129461, 0.958642, 0.253465,
		-0.982203, 0.088897, 0.165452,
		32.889694, 30.477188, 46.997719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539326, 30.925728, 47.439789>,  <33.577236, 30.414961, 46.881901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539326, 30.925728, 47.439789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208134, 30.701546, 47.432381>,  <33.009418, 30.567036, 47.427937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208134, 30.701546, 47.432381>,  <33.539326, 30.925728, 47.439789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208134, 30.701546, 47.432381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052998, -0.111085, 0.992397,
		-0.558251, 0.820701, 0.121679,
		-0.827978, -0.560455, -0.018518,
		32.959740, 30.533409, 47.426826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193996, 31.058193, 48.006603>,  <33.539326, 30.925728, 47.439789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193996, 31.058193, 48.006603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020000, 30.707205, 47.925781>,  <32.915604, 30.496613, 47.877289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020000, 30.707205, 47.925781>,  <33.193996, 31.058193, 48.006603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020000, 30.707205, 47.925781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051775, -0.199648, 0.978499,
		-0.898944, 0.436101, 0.041414,
		-0.434993, -0.877472, -0.202051,
		32.889503, 30.443964, 47.865166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629818, 30.933977, 48.517319>,  <33.193996, 31.058193, 48.006603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629818, 30.933977, 48.517319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712715, 30.576752, 48.357578>,  <32.762455, 30.362415, 48.261734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712715, 30.576752, 48.357578>,  <32.629818, 30.933977, 48.517319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712715, 30.576752, 48.357578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009828, -0.410097, 0.911989,
		-0.978240, -0.185081, -0.093768,
		0.207245, -0.893066, -0.399354,
		32.774887, 30.308832, 48.237774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152599, 30.452768, 48.921986>,  <32.629818, 30.933977, 48.517319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152599, 30.452768, 48.921986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441082, 30.234221, 48.751648>,  <32.614170, 30.103092, 48.649445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441082, 30.234221, 48.751648>,  <32.152599, 30.452768, 48.921986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441082, 30.234221, 48.751648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097917, -0.528166, 0.843477,
		-0.685766, -0.650018, -0.327418,
		0.721206, -0.546368, -0.425845,
		32.657444, 30.070311, 48.623894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940071, 29.753880, 48.959648>,  <32.152599, 30.452768, 48.921986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940071, 29.753880, 48.959648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338993, 29.757893, 48.930580>,  <32.578346, 29.760302, 48.913139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338993, 29.757893, 48.930580>,  <31.940071, 29.753880, 48.959648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338993, 29.757893, 48.930580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059217, -0.694778, 0.716782,
		-0.043294, -0.719154, -0.693501,
		0.997306, 0.010035, -0.072666,
		32.638184, 29.760902, 48.908779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136036, 29.150511, 48.571125>,  <31.940071, 29.753880, 48.959648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136036, 29.150511, 48.571125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416897, 29.270229, 48.829556>,  <32.585411, 29.342060, 48.984612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416897, 29.270229, 48.829556>,  <32.136036, 29.150511, 48.571125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416897, 29.270229, 48.829556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087475, -0.864234, 0.495427,
		0.706636, -0.404378, -0.580640,
		0.702149, 0.299295, 0.646072,
		32.627541, 29.360018, 49.023376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451324, 28.504574, 48.714512>,  <32.136036, 29.150511, 48.571125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451324, 28.504574, 48.714512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591709, 28.755613, 48.992489>,  <32.675938, 28.906237, 49.159275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591709, 28.755613, 48.992489>,  <32.451324, 28.504574, 48.714512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591709, 28.755613, 48.992489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101261, -0.712365, 0.694466,
		0.930900, -0.314099, -0.186460,
		0.350958, 0.627597, 0.694946,
		32.696995, 28.943892, 49.200974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065811, 28.173958, 49.098064>,  <32.451324, 28.504574, 48.714512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065811, 28.173958, 49.098064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871483, 28.446077, 49.317581>,  <32.754887, 28.609350, 49.449291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871483, 28.446077, 49.317581>,  <33.065811, 28.173958, 49.098064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871483, 28.446077, 49.317581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348945, -0.726615, 0.591834,
		0.801382, 0.096030, 0.590394,
		-0.485823, 0.680300, 0.548787,
		32.725735, 28.650167, 49.482216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258430, 27.972975, 49.746033>,  <33.065811, 28.173958, 49.098064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258430, 27.972975, 49.746033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948128, 28.212633, 49.825249>,  <32.761944, 28.356428, 49.872780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948128, 28.212633, 49.825249>,  <33.258430, 27.972975, 49.746033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948128, 28.212633, 49.825249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294563, -0.621379, 0.726030,
		0.558058, 0.504888, 0.658528,
		-0.775760, 0.599145, 0.198044,
		32.715401, 28.392376, 49.884663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283142, 28.077433, 50.495995>,  <33.258430, 27.972975, 49.746033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283142, 28.077433, 50.495995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909050, 28.160147, 50.381050>,  <32.684593, 28.209774, 50.312084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909050, 28.160147, 50.381050>,  <33.283142, 28.077433, 50.495995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909050, 28.160147, 50.381050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353905, -0.567461, 0.743465,
		-0.009330, 0.797012, 0.603891,
		-0.935235, 0.206783, -0.287360,
		32.628479, 28.222181, 50.294842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855934, 28.188852, 51.194809>,  <33.283142, 28.077433, 50.495995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855934, 28.188852, 51.194809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598785, 28.111744, 50.898281>,  <32.444496, 28.065479, 50.720364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598785, 28.111744, 50.898281>,  <32.855934, 28.188852, 51.194809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598785, 28.111744, 50.898281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372169, -0.767286, 0.522266,
		-0.669482, 0.611646, 0.421524,
		-0.642872, -0.192769, -0.741320,
		32.405922, 28.053913, 50.675884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198952, 28.151361, 51.576519>,  <32.855934, 28.188852, 51.194809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198952, 28.151361, 51.576519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168152, 27.952835, 51.230629>,  <32.149673, 27.833719, 51.023094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168152, 27.952835, 51.230629>,  <32.198952, 28.151361, 51.576519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168152, 27.952835, 51.230629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427448, -0.767116, 0.478353,
		-0.900755, 0.406454, -0.153084,
		-0.076996, -0.496314, -0.864722,
		32.145054, 27.803940, 50.971214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502493, 27.867027, 51.593208>,  <32.198952, 28.151361, 51.576519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502493, 27.867027, 51.593208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726978, 27.672449, 51.325356>,  <31.861670, 27.555702, 51.164642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726978, 27.672449, 51.325356>,  <31.502493, 27.867027, 51.593208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726978, 27.672449, 51.325356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206876, -0.865822, 0.455581,
		-0.801399, -0.117147, -0.586545,
		0.561214, -0.486444, -0.669635,
		31.895342, 27.526516, 51.124466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179590, 27.317446, 51.269421>,  <31.502493, 27.867027, 51.593208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179590, 27.317446, 51.269421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568768, 27.228003, 51.246155>,  <31.802273, 27.174337, 51.232197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568768, 27.228003, 51.246155>,  <31.179590, 27.317446, 51.269421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568768, 27.228003, 51.246155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198721, -0.938287, 0.283068,
		-0.117870, -0.263850, -0.957335,
		0.972942, -0.223608, -0.058163,
		31.860651, 27.160919, 51.228706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270405, 26.704176, 51.102974>,  <31.179590, 27.317446, 51.269421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270405, 26.704176, 51.102974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615133, 26.762037, 51.297432>,  <31.821970, 26.796755, 51.414108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615133, 26.762037, 51.297432>,  <31.270405, 26.704176, 51.102974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615133, 26.762037, 51.297432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018851, -0.948672, 0.315699,
		0.506859, -0.281241, -0.814861,
		0.861823, 0.144654, 0.486144,
		31.873680, 26.805433, 51.443275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676643, 26.132431, 50.914661>,  <31.270405, 26.704176, 51.102974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676643, 26.132431, 50.914661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784094, 26.296114, 51.263462>,  <31.848564, 26.394323, 51.472744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784094, 26.296114, 51.263462>,  <31.676643, 26.132431, 50.914661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784094, 26.296114, 51.263462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205810, -0.908754, 0.363055,
		0.941000, 0.081941, -0.328335,
		0.268627, 0.409210, 0.872002,
		31.864681, 26.418877, 51.525063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418343, 26.042667, 51.058617>,  <31.676643, 26.132431, 50.914661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418343, 26.042667, 51.058617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196358, 26.059631, 51.390934>,  <32.063168, 26.069809, 51.590324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196358, 26.059631, 51.390934>,  <32.418343, 26.042667, 51.058617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196358, 26.059631, 51.390934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321830, -0.909988, 0.261431,
		0.767098, 0.412459, 0.491363,
		-0.554964, 0.042408, 0.830793,
		32.029869, 26.072353, 51.640171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801567, 25.859821, 51.707016>,  <32.418343, 26.042667, 51.058617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801567, 25.859821, 51.707016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412197, 25.784342, 51.758911>,  <32.178574, 25.739054, 51.790047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412197, 25.784342, 51.758911>,  <32.801567, 25.859821, 51.707016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412197, 25.784342, 51.758911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226075, -0.882080, 0.413309,
		0.036450, 0.431657, 0.901301,
		-0.973428, -0.188697, 0.129738,
		32.120171, 25.727734, 51.797832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706444, 25.673847, 52.381119>,  <32.801567, 25.859821, 51.707016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706444, 25.673847, 52.381119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463276, 25.489843, 52.122253>,  <32.317375, 25.379440, 51.966934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463276, 25.489843, 52.122253>,  <32.706444, 25.673847, 52.381119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463276, 25.489843, 52.122253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327888, -0.887772, 0.323033,
		-0.723131, -0.015817, 0.690530,
		-0.607924, -0.460011, -0.647162,
		32.280899, 25.351841, 51.928104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310120, 26.094894, 52.366741>,  <32.706444, 25.673847, 52.381119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310120, 26.094894, 52.366741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361214, 26.361736, 52.660313>,  <33.391872, 26.521841, 52.836456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361214, 26.361736, 52.660313>,  <33.310120, 26.094894, 52.366741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361214, 26.361736, 52.660313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991682, 0.074109, 0.105239,
		0.015815, -0.741267, 0.671024,
		0.127739, 0.667106, 0.733929,
		33.399536, 26.561869, 52.880493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629055, 25.878443, 51.757828>,  <33.310120, 26.094894, 52.366741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629055, 25.878443, 51.757828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390766, 25.557989, 51.734848>,  <33.247795, 25.365717, 51.721058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390766, 25.557989, 51.734848>,  <33.629055, 25.878443, 51.757828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390766, 25.557989, 51.734848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138260, -0.031822, -0.989885,
		0.791204, -0.597636, 0.129722,
		-0.595719, -0.801136, -0.057451,
		33.212051, 25.317648, 51.717613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917976, 25.201744, 51.413307>,  <33.629055, 25.878443, 51.757828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917976, 25.201744, 51.413307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521160, 25.196999, 51.363163>,  <33.283070, 25.194151, 51.333076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521160, 25.196999, 51.363163>,  <33.917976, 25.201744, 51.413307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521160, 25.196999, 51.363163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125716, -0.036200, -0.991406,
		0.007228, -0.999274, 0.037404,
		-0.992040, -0.011868, -0.125363,
		33.223549, 25.193439, 51.325554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831436, 24.741055, 50.873505>,  <33.917976, 25.201744, 51.413307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831436, 24.741055, 50.873505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494053, 24.955929, 50.872532>,  <33.291622, 25.084854, 50.871948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494053, 24.955929, 50.872532>,  <33.831436, 24.741055, 50.873505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494053, 24.955929, 50.872532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052453, -0.086869, -0.994838,
		-0.534626, -0.838978, 0.101447,
		-0.843460, 0.537188, -0.002436,
		33.241016, 25.117085, 50.871799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244118, 24.466942, 50.481743>,  <33.831436, 24.741055, 50.873505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244118, 24.466942, 50.481743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208958, 24.864492, 50.454964>,  <33.187862, 25.103024, 50.438896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208958, 24.864492, 50.454964>,  <33.244118, 24.466942, 50.481743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208958, 24.864492, 50.454964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198920, -0.083366, -0.976464,
		-0.976065, -0.072518, 0.205030,
		-0.087903, 0.993877, -0.066945,
		33.182587, 25.162655, 50.434879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658783, 24.611553, 50.229412>,  <33.244118, 24.466942, 50.481743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658783, 24.611553, 50.229412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861755, 24.949221, 50.160244>,  <32.983540, 25.151821, 50.118744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861755, 24.949221, 50.160244>,  <32.658783, 24.611553, 50.229412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861755, 24.949221, 50.160244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330281, 0.005192, -0.943868,
		-0.795884, 0.536056, 0.281447,
		0.507428, 0.844166, -0.172917,
		33.013985, 25.202471, 50.108368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223732, 25.052206, 49.848171>,  <32.658783, 24.611553, 50.229412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223732, 25.052206, 49.848171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591118, 25.204393, 49.804970>,  <32.811550, 25.295706, 49.779049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591118, 25.204393, 49.804970>,  <32.223732, 25.052206, 49.848171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591118, 25.204393, 49.804970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259497, 0.373639, -0.890536,
		-0.298467, 0.845954, 0.441905,
		0.918466, 0.380469, -0.108004,
		32.866657, 25.318535, 49.772568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131657, 25.828932, 49.681198>,  <32.223732, 25.052206, 49.848171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131657, 25.828932, 49.681198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473175, 25.679090, 49.536583>,  <32.678085, 25.589186, 49.449814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473175, 25.679090, 49.536583>,  <32.131657, 25.828932, 49.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473175, 25.679090, 49.536583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257480, 0.299726, -0.918623,
		0.452481, 0.877403, 0.159451,
		0.853794, -0.374604, -0.361534,
		32.729313, 25.566710, 49.428123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200134, 26.239882, 49.099819>,  <32.131657, 25.828932, 49.681198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200134, 26.239882, 49.099819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479996, 25.964815, 49.022263>,  <32.647915, 25.799774, 48.975727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479996, 25.964815, 49.022263>,  <32.200134, 26.239882, 49.099819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479996, 25.964815, 49.022263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086035, 0.188314, -0.978333,
		0.709280, 0.701179, 0.072592,
		0.699656, -0.687667, -0.193894,
		32.689892, 25.758514, 48.964096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670986, 26.585798, 48.713669>,  <32.200134, 26.239882, 49.099819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670986, 26.585798, 48.713669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780476, 26.207329, 48.644585>,  <32.846169, 25.980247, 48.603134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780476, 26.207329, 48.644585>,  <32.670986, 26.585798, 48.713669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780476, 26.207329, 48.644585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151809, 0.219820, -0.963656,
		0.949752, 0.237558, 0.203808,
		0.273725, -0.946174, -0.172711,
		32.862595, 25.923477, 48.592770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353077, 26.556343, 48.461117>,  <32.670986, 26.585798, 48.713669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353077, 26.556343, 48.461117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204010, 26.206713, 48.336464>,  <33.114571, 25.996935, 48.261673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204010, 26.206713, 48.336464>,  <33.353077, 26.556343, 48.461117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204010, 26.206713, 48.336464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237240, 0.234922, -0.942618,
		0.897129, -0.425211, 0.119819,
		-0.372663, -0.874075, -0.311632,
		33.092213, 25.944490, 48.242973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824863, 26.268948, 48.001568>,  <33.353077, 26.556343, 48.461117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824863, 26.268948, 48.001568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468544, 26.107309, 47.918446>,  <33.254753, 26.010326, 47.868572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468544, 26.107309, 47.918446>,  <33.824863, 26.268948, 48.001568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468544, 26.107309, 47.918446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208784, 0.042192, -0.977051,
		0.403590, -0.913743, 0.046784,
		-0.890800, -0.404096, -0.207803,
		33.201305, 25.986080, 47.856106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910721, 25.839272, 47.353683>,  <33.824863, 26.268948, 48.001568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910721, 25.839272, 47.353683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510834, 25.829760, 47.352646>,  <33.270901, 25.824053, 47.352024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510834, 25.829760, 47.352646>,  <33.910721, 25.839272, 47.353683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510834, 25.829760, 47.352646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001169, 0.059808, -0.998209,
		0.023885, -0.997927, -0.059764,
		-0.999714, -0.023772, -0.002595,
		33.210918, 25.822626, 47.351868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810112, 25.550924, 46.751297>,  <33.910721, 25.839272, 47.353683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810112, 25.550924, 46.751297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445736, 25.689756, 46.840500>,  <33.227112, 25.773056, 46.894020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445736, 25.689756, 46.840500>,  <33.810112, 25.550924, 46.751297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445736, 25.689756, 46.840500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204483, 0.089623, -0.974759,
		-0.358305, -0.933544, -0.010669,
		-0.910936, 0.347079, 0.223006,
		33.172455, 25.793880, 46.907402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339970, 25.139986, 46.343082>,  <33.810112, 25.550924, 46.751297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339970, 25.139986, 46.343082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151085, 25.486919, 46.406006>,  <33.037754, 25.695080, 46.443760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151085, 25.486919, 46.406006>,  <33.339970, 25.139986, 46.343082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151085, 25.486919, 46.406006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243834, 0.042965, -0.968865,
		-0.847088, -0.495870, 0.191196,
		-0.472216, 0.867334, 0.157305,
		33.009418, 25.747120, 46.453197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763607, 25.169012, 45.814194>,  <33.339970, 25.139986, 46.343082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763607, 25.169012, 45.814194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810596, 25.545319, 45.941418>,  <32.838791, 25.771103, 46.017750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810596, 25.545319, 45.941418>,  <32.763607, 25.169012, 45.814194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810596, 25.545319, 45.941418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286859, 0.338766, -0.896074,
		-0.950743, 0.014029, 0.309664,
		0.117474, 0.940766, 0.318055,
		32.845840, 25.827549, 46.036835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106167, 25.496168, 45.769238>,  <32.763607, 25.169012, 45.814194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106167, 25.496168, 45.769238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391277, 25.775024, 45.738384>,  <32.562344, 25.942337, 45.719872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391277, 25.775024, 45.738384>,  <32.106167, 25.496168, 45.769238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391277, 25.775024, 45.738384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354306, 0.262965, -0.897394,
		-0.605327, 0.666967, 0.434435,
		0.712774, 0.697140, -0.077130,
		32.605110, 25.984167, 45.715244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712847, 26.004192, 45.509563>,  <32.106167, 25.496168, 45.769238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712847, 26.004192, 45.509563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085941, 26.141880, 45.466644>,  <32.309799, 26.224493, 45.440895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085941, 26.141880, 45.466644>,  <31.712847, 26.004192, 45.509563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085941, 26.141880, 45.466644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302746, 0.586087, -0.751564,
		-0.195820, 0.733495, 0.650877,
		0.932738, 0.344221, -0.107295,
		32.365761, 26.245146, 45.434456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650673, 26.822126, 45.412121>,  <31.712847, 26.004192, 45.509563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650673, 26.822126, 45.412121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997377, 26.683487, 45.268681>,  <32.205399, 26.600304, 45.182617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997377, 26.683487, 45.268681>,  <31.650673, 26.822126, 45.412121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997377, 26.683487, 45.268681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234277, 0.351796, -0.906286,
		0.440273, 0.869545, 0.223723,
		0.866761, -0.346600, -0.358600,
		32.257404, 26.579508, 45.161102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988649, 27.337278, 45.036087>,  <31.650673, 26.822126, 45.412121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988649, 27.337278, 45.036087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159958, 27.013363, 44.875675>,  <32.262741, 26.819014, 44.779427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159958, 27.013363, 44.875675>,  <31.988649, 27.337278, 45.036087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159958, 27.013363, 44.875675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085382, 0.405539, -0.910082,
		0.899608, 0.424001, 0.104538,
		0.428270, -0.809791, -0.401028,
		32.288441, 26.770426, 44.755367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333202, 27.585457, 44.491093>,  <31.988649, 27.337278, 45.036087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333202, 27.585457, 44.491093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336597, 27.191069, 44.424408>,  <32.338634, 26.954435, 44.384399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336597, 27.191069, 44.424408>,  <32.333202, 27.585457, 44.491093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336597, 27.191069, 44.424408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224904, 0.160561, -0.961061,
		0.974344, 0.045650, -0.220386,
		0.008487, -0.985969, -0.166709,
		32.339142, 26.895277, 44.374393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756134, 27.464401, 43.957779>,  <32.333202, 27.585457, 44.491093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756134, 27.464401, 43.957779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509651, 27.149393, 43.961735>,  <32.361763, 26.960388, 43.964108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509651, 27.149393, 43.961735>,  <32.756134, 27.464401, 43.957779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509651, 27.149393, 43.961735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324906, 0.242754, -0.914061,
		0.717443, -0.566463, -0.405457,
		-0.616208, -0.787521, 0.009885,
		32.324787, 26.913137, 43.964699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851109, 27.118135, 43.314457>,  <32.756134, 27.464401, 43.957779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851109, 27.118135, 43.314457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483242, 27.020666, 43.437645>,  <32.262524, 26.962185, 43.511559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483242, 27.020666, 43.437645>,  <32.851109, 27.118135, 43.314457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483242, 27.020666, 43.437645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329025, 0.049969, -0.942998,
		0.214395, -0.968569, -0.126129,
		-0.919662, -0.243674, 0.307970,
		32.207344, 26.947565, 43.530037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691624, 26.662731, 42.786976>,  <32.851109, 27.118135, 43.314457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691624, 26.662731, 42.786976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323071, 26.757935, 42.909878>,  <32.101940, 26.815058, 42.983620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323071, 26.757935, 42.909878>,  <32.691624, 26.662731, 42.786976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323071, 26.757935, 42.909878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235984, 0.285539, -0.928859,
		-0.308810, -0.928342, -0.206924,
		-0.921383, 0.238010, 0.307251,
		32.046654, 26.829338, 43.002052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266567, 26.367210, 42.261589>,  <32.691624, 26.662731, 42.786976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266567, 26.367210, 42.261589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031746, 26.610058, 42.475796>,  <31.890854, 26.755766, 42.604321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031746, 26.610058, 42.475796>,  <32.266567, 26.367210, 42.261589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031746, 26.610058, 42.475796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431562, 0.324972, -0.841515,
		-0.684927, -0.725121, 0.071234,
		-0.587051, 0.607118, 0.535517,
		31.855631, 26.792192, 42.636452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783829, 26.432419, 41.831715>,  <32.266567, 26.367210, 42.261589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783829, 26.432419, 41.831715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707197, 26.730093, 42.087677>,  <31.661219, 26.908697, 42.241257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707197, 26.730093, 42.087677>,  <31.783829, 26.432419, 41.831715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707197, 26.730093, 42.087677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252006, 0.592830, -0.764883,
		-0.948573, -0.307796, 0.073966,
		-0.191579, 0.744187, 0.639908,
		31.649723, 26.953350, 42.279648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064522, 26.679752, 41.733067>,  <31.783829, 26.432419, 41.831715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064522, 26.679752, 41.733067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285120, 26.983526, 41.871117>,  <31.417479, 27.165791, 41.953945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285120, 26.983526, 41.871117>,  <31.064522, 26.679752, 41.733067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285120, 26.983526, 41.871117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168551, 0.506644, -0.845519,
		-0.816971, 0.408131, 0.407417,
		0.551497, 0.759435, 0.345123,
		31.450569, 27.211357, 41.974655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798279, 27.319916, 41.417919>,  <31.064522, 26.679752, 41.733067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798279, 27.319916, 41.417919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153889, 27.441450, 41.554928>,  <31.367254, 27.514370, 41.637135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153889, 27.441450, 41.554928>,  <30.798279, 27.319916, 41.417919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153889, 27.441450, 41.554928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059135, 0.665635, -0.743930,
		-0.454028, 0.681626, 0.573798,
		0.889023, 0.303834, 0.342525,
		31.420595, 27.532600, 41.657684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806345, 28.047583, 41.428062>,  <30.798279, 27.319916, 41.417919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806345, 28.047583, 41.428062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197575, 27.964472, 41.422356>,  <31.432312, 27.914604, 41.418930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197575, 27.964472, 41.422356>,  <30.806345, 28.047583, 41.428062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197575, 27.964472, 41.422356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115796, 0.599462, -0.791983,
		0.173109, 0.772964, 0.610377,
		0.978072, -0.207779, -0.014266,
		31.490995, 27.902138, 41.418076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157782, 28.692284, 41.335564>,  <30.806345, 28.047583, 41.428062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157782, 28.692284, 41.335564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396265, 28.396627, 41.210209>,  <31.539354, 28.219234, 41.134995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396265, 28.396627, 41.210209>,  <31.157782, 28.692284, 41.335564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396265, 28.396627, 41.210209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298884, 0.566644, -0.767843,
		0.745121, 0.364128, 0.558754,
		0.596208, -0.739138, -0.313386,
		31.575127, 28.174887, 41.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781933, 29.024145, 40.983570>,  <31.157782, 28.692284, 41.335564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781933, 29.024145, 40.983570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821676, 28.647648, 40.854458>,  <31.845522, 28.421749, 40.776989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821676, 28.647648, 40.854458>,  <31.781933, 29.024145, 40.983570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821676, 28.647648, 40.854458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429517, 0.333182, -0.839348,
		0.897576, -0.055245, 0.437385,
		0.099359, -0.941243, -0.322785,
		31.851484, 28.365274, 40.757622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441505, 29.009918, 40.571545>,  <31.781933, 29.024145, 40.983570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441505, 29.009918, 40.571545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274879, 28.666185, 40.452869>,  <32.174904, 28.459946, 40.381664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274879, 28.666185, 40.452869>,  <32.441505, 29.009918, 40.571545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274879, 28.666185, 40.452869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416690, 0.109577, -0.902420,
		0.807987, -0.499545, 0.312429,
		-0.416565, -0.859330, -0.296692,
		32.149910, 28.408386, 40.363861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922363, 28.571999, 40.233295>,  <32.441505, 29.009918, 40.571545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922363, 28.571999, 40.233295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556896, 28.475204, 40.102665>,  <32.337616, 28.417128, 40.024288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556896, 28.475204, 40.102665>,  <32.922363, 28.571999, 40.233295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556896, 28.475204, 40.102665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228315, 0.359172, -0.904913,
		0.336267, -0.901355, -0.272918,
		-0.913672, -0.241981, -0.326571,
		32.282795, 28.402609, 40.004692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049671, 28.169109, 39.645031>,  <32.922363, 28.571999, 40.233295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049671, 28.169109, 39.645031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677299, 28.308189, 39.600349>,  <32.453876, 28.391638, 39.573540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677299, 28.308189, 39.600349>,  <33.049671, 28.169109, 39.645031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677299, 28.308189, 39.600349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247284, 0.375044, -0.893416,
		-0.268745, -0.859329, -0.435119,
		-0.930928, 0.347699, -0.111707,
		32.398022, 28.412498, 39.566837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018089, 28.079979, 38.932449>,  <33.049671, 28.169109, 39.645031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018089, 28.079979, 38.932449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705605, 28.293804, 39.061417>,  <32.518112, 28.422100, 39.138798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705605, 28.293804, 39.061417>,  <33.018089, 28.079979, 38.932449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705605, 28.293804, 39.061417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031558, 0.481991, -0.875608,
		-0.623470, -0.694209, -0.359666,
		-0.781210, 0.534564, 0.322415,
		32.471241, 28.454174, 39.158142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395004, 27.970341, 38.480793>,  <33.018089, 28.079979, 38.932449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395004, 27.970341, 38.480793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367439, 28.321476, 38.670383>,  <32.350899, 28.532158, 38.784138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367439, 28.321476, 38.670383>,  <32.395004, 27.970341, 38.480793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367439, 28.321476, 38.670383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080707, 0.478453, -0.874396,
		-0.994353, -0.022004, -0.103819,
		-0.068913, 0.877838, 0.473975,
		32.346764, 28.584827, 38.812576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763210, 28.267792, 38.154579>,  <32.395004, 27.970341, 38.480793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763210, 28.267792, 38.154579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929968, 28.592115, 38.318916>,  <32.030022, 28.786709, 38.417519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929968, 28.592115, 38.318916>,  <31.763210, 28.267792, 38.154579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929968, 28.592115, 38.318916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045412, 0.432851, -0.900321,
		-0.907821, 0.393994, 0.143632,
		0.416892, 0.810807, 0.410843,
		32.055035, 28.835358, 38.442169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395662, 28.901062, 37.907932>,  <31.763210, 28.267792, 38.154579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395662, 28.901062, 37.907932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765619, 29.011717, 38.012276>,  <31.987593, 29.078110, 38.074883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765619, 29.011717, 38.012276>,  <31.395662, 28.901062, 37.907932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765619, 29.011717, 38.012276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123375, 0.430583, -0.894079,
		-0.359656, 0.859110, 0.364112,
		0.924893, 0.276638, 0.260854,
		32.043087, 29.094707, 38.090530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236549, 29.549068, 37.806011>,  <31.395662, 28.901062, 37.907932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236549, 29.549068, 37.806011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632915, 29.497375, 37.820919>,  <31.870735, 29.466360, 37.829865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632915, 29.497375, 37.820919>,  <31.236549, 29.549068, 37.806011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632915, 29.497375, 37.820919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111727, 0.636616, -0.763045,
		0.074883, 0.760276, 0.645270,
		0.990914, -0.129233, 0.037272,
		31.930189, 29.458605, 37.832100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573050, 30.199856, 37.785328>,  <31.236549, 29.549068, 37.806011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573050, 30.199856, 37.785328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855392, 29.942423, 37.666962>,  <32.024799, 29.787964, 37.595943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855392, 29.942423, 37.666962>,  <31.573050, 30.199856, 37.785328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855392, 29.942423, 37.666962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121050, 0.521200, -0.844806,
		0.697933, 0.560494, 0.445799,
		0.705859, -0.643582, -0.295915,
		32.067150, 29.749348, 37.578186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006187, 30.610769, 37.344608>,  <31.573050, 30.199856, 37.785328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006187, 30.610769, 37.344608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150356, 30.248240, 37.256359>,  <32.236858, 30.030722, 37.203411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150356, 30.248240, 37.256359>,  <32.006187, 30.610769, 37.344608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150356, 30.248240, 37.256359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400861, 0.364060, -0.840697,
		0.842261, 0.214571, 0.494525,
		0.360426, -0.906322, -0.220621,
		32.258484, 29.976343, 37.190174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657833, 30.744734, 37.018616>,  <32.006187, 30.610769, 37.344608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657833, 30.744734, 37.018616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581112, 30.374699, 36.887512>,  <32.535080, 30.152678, 36.808849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581112, 30.374699, 36.887512>,  <32.657833, 30.744734, 37.018616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581112, 30.374699, 36.887512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192531, 0.291999, -0.936839,
		0.962363, -0.242793, 0.122101,
		-0.191805, -0.925088, -0.327755,
		32.523571, 30.097172, 36.789185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175034, 30.569757, 36.477959>,  <32.657833, 30.744734, 37.018616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175034, 30.569757, 36.477959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846931, 30.353592, 36.402988>,  <32.650070, 30.223892, 36.358006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846931, 30.353592, 36.402988>,  <33.175034, 30.569757, 36.477959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846931, 30.353592, 36.402988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024485, 0.360547, -0.932420,
		0.571470, -0.760235, -0.308973,
		-0.820258, -0.540415, -0.187428,
		32.600853, 30.191467, 36.346760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813320, 30.601160, 36.853733>,  <33.175034, 30.569757, 36.477959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813320, 30.601160, 36.853733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125099, 30.845497, 36.798122>,  <34.312168, 30.992100, 36.764755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125099, 30.845497, 36.798122>,  <33.813320, 30.601160, 36.853733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125099, 30.845497, 36.798122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583225, -0.626535, 0.517013,
		0.228706, -0.484072, -0.844611,
		0.779450, 0.610842, -0.139030,
		34.358932, 31.028749, 36.756413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414024, 30.254745, 36.544205>,  <33.813320, 30.601160, 36.853733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414024, 30.254745, 36.544205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533737, 30.563749, 36.768227>,  <34.605564, 30.749151, 36.902641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533737, 30.563749, 36.768227>,  <34.414024, 30.254745, 36.544205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533737, 30.563749, 36.768227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527762, -0.623020, 0.577334,
		0.794921, 0.122792, -0.594157,
		0.299280, 0.772508, 0.560056,
		34.623520, 30.795502, 36.936245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108055, 30.112316, 36.729111>,  <34.414024, 30.254745, 36.544205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108055, 30.112316, 36.729111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027752, 30.383135, 37.012321>,  <34.979572, 30.545626, 37.182247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027752, 30.383135, 37.012321>,  <35.108055, 30.112316, 36.729111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027752, 30.383135, 37.012321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512056, -0.543631, 0.665029,
		0.835162, 0.496059, -0.237549,
		-0.200754, 0.677045, 0.708031,
		34.967525, 30.586248, 37.224731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755295, 30.306389, 37.024929>,  <35.108055, 30.112316, 36.729111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755295, 30.306389, 37.024929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510101, 30.402651, 37.325951>,  <35.362984, 30.460407, 37.506561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510101, 30.402651, 37.325951>,  <35.755295, 30.306389, 37.024929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510101, 30.402651, 37.325951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559807, -0.539858, 0.628625,
		0.557552, 0.806622, 0.196206,
		-0.612986, 0.240654, 0.752552,
		35.326206, 30.474848, 37.551716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178810, 30.515812, 37.603458>,  <35.755295, 30.306389, 37.024929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178810, 30.515812, 37.603458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819702, 30.434868, 37.759949>,  <35.604237, 30.386301, 37.853844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819702, 30.434868, 37.759949>,  <36.178810, 30.515812, 37.603458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819702, 30.434868, 37.759949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440461, -0.410897, 0.798222,
		-0.000774, 0.888940, 0.458023,
		-0.897772, -0.202359, 0.391225,
		35.550369, 30.374161, 37.877316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332344, 30.583202, 38.242538>,  <36.178810, 30.515812, 37.603458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332344, 30.583202, 38.242538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975342, 30.406412, 38.278534>,  <35.761143, 30.300337, 38.300133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975342, 30.406412, 38.278534>,  <36.332344, 30.583202, 38.242538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975342, 30.406412, 38.278534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265862, -0.354327, 0.896532,
		-0.364362, 0.824080, 0.433742,
		-0.892501, -0.441978, 0.089988,
		35.707592, 30.273819, 38.305531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063942, 30.760830, 38.910637>,  <36.332344, 30.583202, 38.242538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063942, 30.760830, 38.910637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850075, 30.443810, 38.793335>,  <35.721756, 30.253597, 38.722954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850075, 30.443810, 38.793335>,  <36.063942, 30.760830, 38.910637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850075, 30.443810, 38.793335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064698, -0.384394, 0.920899,
		-0.842584, 0.473398, 0.256799,
		-0.534664, -0.792549, -0.293256,
		35.689674, 30.206045, 38.705357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724274, 30.467354, 39.512188>,  <36.063942, 30.760830, 38.910637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724274, 30.467354, 39.512188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690376, 30.161030, 39.257206>,  <35.670036, 29.977236, 39.104218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690376, 30.161030, 39.257206>,  <35.724274, 30.467354, 39.512188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690376, 30.161030, 39.257206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184110, -0.640778, 0.745323,
		-0.979246, -0.054201, 0.195295,
		-0.084744, -0.765810, -0.637458,
		35.664951, 29.931286, 39.065968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232708, 29.990185, 39.857258>,  <35.724274, 30.467354, 39.512188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232708, 29.990185, 39.857258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471317, 29.780390, 39.614254>,  <35.614483, 29.654512, 39.468452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471317, 29.780390, 39.614254>,  <35.232708, 29.990185, 39.857258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471317, 29.780390, 39.614254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138160, -0.678530, 0.721463,
		-0.790617, -0.514302, -0.332294,
		0.596521, -0.524490, -0.607513,
		35.650272, 29.623043, 39.431999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033920, 29.288591, 39.948627>,  <35.232708, 29.990185, 39.857258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033920, 29.288591, 39.948627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400360, 29.273945, 39.788921>,  <35.620224, 29.265156, 39.693096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400360, 29.273945, 39.788921>,  <35.033920, 29.288591, 39.948627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400360, 29.273945, 39.788921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234936, -0.757926, 0.608567,
		-0.324898, -0.651312, -0.685736,
		0.916104, -0.036618, -0.399266,
		35.675190, 29.262959, 39.669140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230778, 28.577587, 39.900478>,  <35.033920, 29.288591, 39.948627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230778, 28.577587, 39.900478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570629, 28.788054, 39.886185>,  <35.774540, 28.914333, 39.877609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570629, 28.788054, 39.886185>,  <35.230778, 28.577587, 39.900478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570629, 28.788054, 39.886185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400561, -0.599766, 0.692699,
		0.343043, -0.602852, -0.720341,
		0.849631, 0.526166, -0.035734,
		35.825520, 28.945904, 39.875465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714226, 28.067589, 39.922348>,  <35.230778, 28.577587, 39.900478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714226, 28.067589, 39.922348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900829, 28.403498, 40.033451>,  <36.012791, 28.605043, 40.100113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900829, 28.403498, 40.033451>,  <35.714226, 28.067589, 39.922348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900829, 28.403498, 40.033451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298456, -0.445054, 0.844305,
		0.832642, -0.310979, -0.458257,
		0.466510, 0.839773, 0.277757,
		36.040783, 28.655430, 40.116779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414970, 27.845129, 40.105213>,  <35.714226, 28.067589, 39.922348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414970, 27.845129, 40.105213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300816, 28.193222, 40.265835>,  <36.232323, 28.402079, 40.362209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300816, 28.193222, 40.265835>,  <36.414970, 27.845129, 40.105213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300816, 28.193222, 40.265835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254873, -0.334981, 0.907098,
		0.923900, 0.361223, -0.126198,
		-0.285391, 0.870233, 0.401555,
		36.215199, 28.454292, 40.386303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761532, 27.819162, 40.628269>,  <36.414970, 27.845129, 40.105213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761532, 27.819162, 40.628269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554783, 28.137781, 40.753716>,  <36.430733, 28.328953, 40.828983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554783, 28.137781, 40.753716>,  <36.761532, 27.819162, 40.628269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554783, 28.137781, 40.753716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207227, -0.239027, 0.948643,
		0.830602, 0.555316, -0.041520,
		-0.516872, 0.796549, 0.313613,
		36.399723, 28.376745, 40.847801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064342, 28.018389, 41.217236>,  <36.761532, 27.819162, 40.628269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064342, 28.018389, 41.217236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694641, 28.169697, 41.237919>,  <36.472820, 28.260481, 41.250328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694641, 28.169697, 41.237919>,  <37.064342, 28.018389, 41.217236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694641, 28.169697, 41.237919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025360, -0.195965, 0.980283,
		0.380943, 0.904716, 0.190714,
		-0.924251, 0.378268, 0.051708,
		36.417366, 28.283176, 41.253429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031929, 28.457756, 41.783840>,  <37.064342, 28.018389, 41.217236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031929, 28.457756, 41.783840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644619, 28.365526, 41.745316>,  <36.412231, 28.310188, 41.722202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644619, 28.365526, 41.745316>,  <37.031929, 28.457756, 41.783840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644619, 28.365526, 41.745316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087661, -0.047496, 0.995017,
		-0.234001, 0.971895, 0.025777,
		-0.968276, -0.230575, -0.096311,
		36.354137, 28.296354, 41.716423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753025, 28.790501, 42.355743>,  <37.031929, 28.457756, 41.783840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753025, 28.790501, 42.355743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466164, 28.536654, 42.240540>,  <36.294048, 28.384344, 42.171417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466164, 28.536654, 42.240540>,  <36.753025, 28.790501, 42.355743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466164, 28.536654, 42.240540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139648, -0.274020, 0.951531,
		-0.682780, 0.722614, 0.107891,
		-0.717154, -0.634620, -0.288006,
		36.251019, 28.346268, 42.154137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213554, 28.849066, 42.845139>,  <36.753025, 28.790501, 42.355743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213554, 28.849066, 42.845139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143330, 28.488884, 42.685959>,  <36.101196, 28.272776, 42.590450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143330, 28.488884, 42.685959>,  <36.213554, 28.849066, 42.845139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143330, 28.488884, 42.685959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219833, -0.358161, 0.907411,
		-0.959611, 0.246786, -0.135072,
		-0.175559, -0.900454, -0.397947,
		36.090664, 28.218748, 42.566574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583309, 28.720140, 43.004837>,  <36.213554, 28.849066, 42.845139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583309, 28.720140, 43.004837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723110, 28.349855, 42.947006>,  <35.806992, 28.127684, 42.912308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723110, 28.349855, 42.947006>,  <35.583309, 28.720140, 43.004837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723110, 28.349855, 42.947006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423842, -0.293826, 0.856752,
		-0.835586, -0.238164, -0.495050,
		0.349506, -0.925713, -0.144573,
		35.827961, 28.072142, 42.903633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964035, 28.253197, 43.014233>,  <35.583309, 28.720140, 43.004837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964035, 28.253197, 43.014233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292843, 28.045069, 43.106796>,  <35.490128, 27.920193, 43.162334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292843, 28.045069, 43.106796>,  <34.964035, 28.253197, 43.014233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292843, 28.045069, 43.106796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409583, -0.257906, 0.875058,
		-0.395631, -0.814094, -0.425119,
		0.822020, -0.520322, 0.231403,
		35.539448, 27.888973, 43.176216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790104, 27.568171, 43.152237>,  <34.964035, 28.253197, 43.014233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790104, 27.568171, 43.152237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142780, 27.608534, 43.336601>,  <35.354385, 27.632751, 43.447220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142780, 27.608534, 43.336601>,  <34.790104, 27.568171, 43.152237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142780, 27.608534, 43.336601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384878, -0.411242, 0.826286,
		0.272925, -0.905923, -0.323751,
		0.881692, 0.100909, 0.460909,
		35.407288, 27.638807, 43.474873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997219, 26.856083, 43.492512>,  <34.790104, 27.568171, 43.152237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997219, 26.856083, 43.492512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163467, 27.166027, 43.683025>,  <35.263218, 27.351994, 43.797333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163467, 27.166027, 43.683025>,  <34.997219, 26.856083, 43.492512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163467, 27.166027, 43.683025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273451, -0.392977, 0.877949,
		0.867458, -0.495135, 0.048557,
		0.415622, 0.774861, 0.476286,
		35.288155, 27.398485, 43.825912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362602, 26.600258, 44.005253>,  <34.997219, 26.856083, 43.492512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362602, 26.600258, 44.005253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317009, 26.979528, 44.123890>,  <35.289654, 27.207090, 44.195072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317009, 26.979528, 44.123890>,  <35.362602, 26.600258, 44.005253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317009, 26.979528, 44.123890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166239, -0.276124, 0.946636,
		0.979475, 0.157206, -0.126151,
		-0.113984, 0.948178, 0.296590,
		35.282814, 27.263983, 44.212868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726574, 26.578932, 44.681313>,  <35.362602, 26.600258, 44.005253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726574, 26.578932, 44.681313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527824, 26.925991, 44.674282>,  <35.408577, 27.134226, 44.670063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527824, 26.925991, 44.674282>,  <35.726574, 26.578932, 44.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527824, 26.925991, 44.674282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104915, -0.039948, 0.993679,
		0.861459, 0.495575, 0.110878,
		-0.496871, 0.867646, -0.017579,
		35.378761, 27.186285, 44.669010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058495, 27.097326, 45.105431>,  <35.726574, 26.578932, 44.681313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058495, 27.097326, 45.105431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676800, 27.216106, 45.091259>,  <35.447784, 27.287374, 45.082756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676800, 27.216106, 45.091259>,  <36.058495, 27.097326, 45.105431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676800, 27.216106, 45.091259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010546, 0.151803, 0.988355,
		0.298872, 0.942749, -0.147987,
		-0.954235, 0.296952, -0.035427,
		35.390530, 27.305193, 45.080631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011520, 27.633745, 45.569901>,  <36.058495, 27.097326, 45.105431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011520, 27.633745, 45.569901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627419, 27.524960, 45.544788>,  <35.396957, 27.459688, 45.529720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627419, 27.524960, 45.544788>,  <36.011520, 27.633745, 45.569901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627419, 27.524960, 45.544788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068426, 0.011321, 0.997592,
		-0.270596, 0.962241, -0.029481,
		-0.960258, -0.271962, -0.062779,
		35.339340, 27.443371, 45.525955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697136, 27.887506, 46.180096>,  <36.011520, 27.633745, 45.569901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697136, 27.887506, 46.180096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406532, 27.642248, 46.056004>,  <35.232170, 27.495092, 45.981548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406532, 27.642248, 46.056004>,  <35.697136, 27.887506, 46.180096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406532, 27.642248, 46.056004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247206, -0.188032, 0.950544,
		-0.641154, 0.767266, -0.014967,
		-0.726505, -0.613145, -0.310230,
		35.188580, 27.458305, 45.962933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024605, 28.068729, 46.468811>,  <35.697136, 27.887506, 46.180096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024605, 28.068729, 46.468811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008877, 27.681074, 46.371468>,  <34.999439, 27.448481, 46.313061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008877, 27.681074, 46.371468>,  <35.024605, 28.068729, 46.468811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008877, 27.681074, 46.371468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137805, -0.235963, 0.961941,
		-0.989679, 0.071363, -0.124274,
		-0.039323, -0.969138, -0.243362,
		34.997082, 27.390333, 46.298458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604263, 27.788898, 47.014385>,  <35.024605, 28.068729, 46.468811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604263, 27.788898, 47.014385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797661, 27.479937, 46.849640>,  <34.913700, 27.294559, 46.750793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797661, 27.479937, 46.849640>,  <34.604263, 27.788898, 47.014385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797661, 27.479937, 46.849640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299645, -0.296041, 0.906958,
		-0.822464, -0.561920, 0.088313,
		0.483493, -0.772403, -0.411859,
		34.942707, 27.248217, 46.726082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392441, 27.283188, 47.327522>,  <34.604263, 27.788898, 47.014385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392441, 27.283188, 47.327522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742081, 27.155415, 47.181145>,  <34.951866, 27.078751, 47.093319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742081, 27.155415, 47.181145>,  <34.392441, 27.283188, 47.327522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742081, 27.155415, 47.181145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285393, -0.271887, 0.919037,
		-0.393067, -0.907766, -0.146491,
		0.874099, -0.319435, -0.365940,
		35.004311, 27.059584, 47.071362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511272, 26.685207, 47.655270>,  <34.392441, 27.283188, 47.327522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511272, 26.685207, 47.655270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873322, 26.802710, 47.532330>,  <35.090549, 26.873211, 47.458565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873322, 26.802710, 47.532330>,  <34.511272, 26.685207, 47.655270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873322, 26.802710, 47.532330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414909, -0.452586, 0.789314,
		0.092765, -0.841946, -0.531527,
		0.905122, 0.293756, -0.307347,
		35.144859, 26.890837, 47.440125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908356, 26.187185, 47.963451>,  <34.511272, 26.685207, 47.655270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908356, 26.187185, 47.963451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217278, 26.408833, 47.839191>,  <35.402630, 26.541821, 47.764633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217278, 26.408833, 47.839191>,  <34.908356, 26.187185, 47.963451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217278, 26.408833, 47.839191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572054, -0.393985, 0.719396,
		0.276239, -0.733299, -0.621260,
		0.772300, 0.554119, -0.310653,
		35.448967, 26.575068, 47.745995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518085, 25.740555, 47.972347>,  <34.908356, 26.187185, 47.963451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518085, 25.740555, 47.972347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669289, 26.110653, 47.985207>,  <35.760010, 26.332712, 47.992920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669289, 26.110653, 47.985207>,  <35.518085, 25.740555, 47.972347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669289, 26.110653, 47.985207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569796, -0.259876, 0.779613,
		0.729686, -0.276385, -0.625436,
		0.378009, 0.925244, 0.032145,
		35.782692, 26.388226, 47.994850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296310, 25.720825, 48.012661>,  <35.518085, 25.740555, 47.972347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296310, 25.720825, 48.012661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170021, 26.061144, 48.180691>,  <36.094246, 26.265335, 48.281509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170021, 26.061144, 48.180691>,  <36.296310, 25.720825, 48.012661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170021, 26.061144, 48.180691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544824, -0.199913, 0.814372,
		0.776843, 0.485985, -0.400417,
		-0.315724, 0.850796, 0.420077,
		36.075302, 26.316383, 48.306713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857033, 25.880409, 48.305386>,  <36.296310, 25.720825, 48.012661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857033, 25.880409, 48.305386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572132, 26.104240, 48.474888>,  <36.401192, 26.238539, 48.576588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572132, 26.104240, 48.474888>,  <36.857033, 25.880409, 48.305386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572132, 26.104240, 48.474888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499726, -0.019697, 0.865960,
		0.492917, 0.828545, -0.265605,
		-0.712255, 0.559576, 0.423754,
		36.358456, 26.272114, 48.602013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232922, 26.398590, 48.737041>,  <36.857033, 25.880409, 48.305386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232922, 26.398590, 48.737041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867722, 26.346788, 48.891785>,  <36.648602, 26.315708, 48.984631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867722, 26.346788, 48.891785>,  <37.232922, 26.398590, 48.737041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867722, 26.346788, 48.891785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404798, -0.169729, 0.898516,
		-0.050699, 0.976945, 0.207384,
		-0.913000, -0.129502, 0.386860,
		36.593822, 26.307938, 49.007843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288551, 26.816637, 49.374424>,  <37.232922, 26.398590, 48.737041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288551, 26.816637, 49.374424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951664, 26.603006, 49.403885>,  <36.749531, 26.474829, 49.421562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951664, 26.603006, 49.403885>,  <37.288551, 26.816637, 49.374424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951664, 26.603006, 49.403885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203911, -0.189098, 0.960553,
		-0.499080, 0.824018, 0.268166,
		-0.842223, -0.534075, 0.073651,
		36.698997, 26.442783, 49.425980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762112, 27.029789, 49.976639>,  <37.288551, 26.816637, 49.374424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762112, 27.029789, 49.976639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772324, 26.643660, 49.872719>,  <36.778450, 26.411982, 49.810368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772324, 26.643660, 49.872719>,  <36.762112, 27.029789, 49.976639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772324, 26.643660, 49.872719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105510, -0.255829, 0.960947,
		-0.994090, -0.051943, 0.095321,
		0.025529, -0.965325, -0.259798,
		36.779984, 26.354061, 49.794781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375763, 27.531094, 50.135891>,  <36.762112, 27.029789, 49.976639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375763, 27.531094, 50.135891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593971, 27.789534, 50.349419>,  <36.724895, 27.944597, 50.477535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593971, 27.789534, 50.349419>,  <36.375763, 27.531094, 50.135891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593971, 27.789534, 50.349419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211730, 0.510036, -0.833687,
		-0.810913, 0.567817, 0.141435,
		0.545519, 0.646102, 0.533818,
		36.757626, 27.983364, 50.509563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127350, 28.242779, 49.948402>,  <36.375763, 27.531094, 50.135891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127350, 28.242779, 49.948402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499767, 28.220007, 50.092575>,  <36.723217, 28.206345, 50.179081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499767, 28.220007, 50.092575>,  <36.127350, 28.242779, 49.948402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499767, 28.220007, 50.092575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316658, 0.616903, -0.720526,
		-0.181335, 0.784977, 0.592392,
		0.931045, -0.056929, 0.360435,
		36.779079, 28.202929, 50.200706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262535, 28.895803, 49.933304>,  <36.127350, 28.242779, 49.948402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262535, 28.895803, 49.933304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607128, 28.693701, 49.913021>,  <36.813885, 28.572439, 49.900852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607128, 28.693701, 49.913021>,  <36.262535, 28.895803, 49.933304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607128, 28.693701, 49.913021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268602, 0.538153, -0.798902,
		0.430937, 0.674617, 0.599321,
		0.861479, -0.505255, -0.050706,
		36.865570, 28.542124, 49.897808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799561, 29.397547, 49.732491>,  <36.262535, 28.895803, 49.933304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799561, 29.397547, 49.732491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988457, 29.049852, 49.673954>,  <37.101795, 28.841236, 49.638832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988457, 29.049852, 49.673954>,  <36.799561, 29.397547, 49.732491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988457, 29.049852, 49.673954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401645, 0.359977, -0.842079,
		0.784645, 0.338888, 0.519121,
		0.472242, -0.869236, -0.146342,
		37.130131, 28.789082, 49.630051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502899, 29.559332, 49.667709>,  <36.799561, 29.397547, 49.732491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502899, 29.559332, 49.667709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445839, 29.203617, 49.493896>,  <37.411602, 28.990189, 49.389610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445839, 29.203617, 49.493896>,  <37.502899, 29.559332, 49.667709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445839, 29.203617, 49.493896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428421, 0.340286, -0.837055,
		0.892248, -0.305570, 0.332446,
		-0.142653, -0.889288, -0.434532,
		37.403042, 28.936831, 49.363537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158318, 29.403677, 49.385685>,  <37.502899, 29.559332, 49.667709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158318, 29.403677, 49.385685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894012, 29.181198, 49.184078>,  <37.735428, 29.047710, 49.063114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894012, 29.181198, 49.184078>,  <38.158318, 29.403677, 49.385685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894012, 29.181198, 49.184078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331251, 0.386485, -0.860757,
		0.673546, -0.735714, -0.071134,
		-0.660763, -0.556196, -0.504021,
		37.695782, 29.014339, 49.032871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481426, 29.134914, 48.753197>,  <38.158318, 29.403677, 49.385685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481426, 29.134914, 48.753197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086063, 29.134848, 48.692459>,  <37.848846, 29.134808, 48.656017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086063, 29.134848, 48.692459>,  <38.481426, 29.134914, 48.753197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086063, 29.134848, 48.692459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133529, 0.475163, -0.869707,
		0.072293, -0.879898, -0.469631,
		-0.988405, -0.000165, -0.151843,
		37.789543, 29.134798, 48.646908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441914, 29.133413, 47.976185>,  <38.481426, 29.134914, 48.753197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441914, 29.133413, 47.976185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054611, 29.187700, 48.060143>,  <37.822227, 29.220272, 48.110516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054611, 29.187700, 48.060143>,  <38.441914, 29.133413, 47.976185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054611, 29.187700, 48.060143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114560, 0.505378, -0.855260,
		-0.222150, -0.852158, -0.473789,
		-0.968259, 0.135719, 0.209893,
		37.764133, 29.228416, 48.123112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164001, 29.014227, 47.371128>,  <38.441914, 29.133413, 47.976185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164001, 29.014227, 47.371128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922573, 29.251873, 47.583813>,  <37.777714, 29.394461, 47.711426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922573, 29.251873, 47.583813>,  <38.164001, 29.014227, 47.371128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922573, 29.251873, 47.583813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229203, 0.509449, -0.829414,
		-0.763651, -0.622485, -0.171317,
		-0.603575, 0.594117, 0.531716,
		37.741501, 29.430107, 47.743328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546543, 28.917995, 47.079369>,  <38.164001, 29.014227, 47.371128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546543, 28.917995, 47.079369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517204, 29.273661, 47.260040>,  <37.499603, 29.487059, 47.368443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517204, 29.273661, 47.260040>,  <37.546543, 28.917995, 47.079369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517204, 29.273661, 47.260040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351164, 0.400868, -0.846161,
		-0.933437, -0.220674, 0.282840,
		-0.073344, 0.889161, 0.451678,
		37.495201, 29.540409, 47.395542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953381, 29.181854, 46.870735>,  <37.546543, 28.917995, 47.079369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953381, 29.181854, 46.870735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171570, 29.499838, 46.976944>,  <37.302483, 29.690628, 47.040668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171570, 29.499838, 46.976944>,  <36.953381, 29.181854, 46.870735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171570, 29.499838, 46.976944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320193, 0.490423, -0.810532,
		-0.774558, 0.357102, 0.522052,
		0.545469, 0.794961, 0.265519,
		37.335209, 29.738327, 47.056599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521309, 29.654179, 46.738865>,  <36.953381, 29.181854, 46.870735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521309, 29.654179, 46.738865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883060, 29.823713, 46.758717>,  <37.100113, 29.925434, 46.770626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883060, 29.823713, 46.758717>,  <36.521309, 29.654179, 46.738865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883060, 29.823713, 46.758717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182531, 0.489334, -0.852780,
		-0.385723, 0.762178, 0.519907,
		0.904378, 0.423836, 0.049626,
		37.154373, 29.950865, 46.773605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491547, 30.447107, 46.603439>,  <36.521309, 29.654179, 46.738865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491547, 30.447107, 46.603439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834354, 30.268766, 46.500114>,  <37.040039, 30.161762, 46.438118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834354, 30.268766, 46.500114>,  <36.491547, 30.447107, 46.603439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834354, 30.268766, 46.500114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051832, 0.424176, -0.904095,
		0.512666, 0.788218, 0.340419,
		0.857022, -0.445855, -0.258315,
		37.091461, 30.135010, 46.422619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885574, 31.023232, 46.165524>,  <36.491547, 30.447107, 46.603439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885574, 31.023232, 46.165524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078953, 30.685863, 46.071781>,  <37.194981, 30.483442, 46.015537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078953, 30.685863, 46.071781>,  <36.885574, 31.023232, 46.165524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078953, 30.685863, 46.071781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194351, 0.364454, -0.910715,
		0.853526, 0.394736, 0.340114,
		0.483447, -0.843420, -0.234354,
		37.223988, 30.432838, 46.001476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529106, 31.280197, 45.756935>,  <36.885574, 31.023232, 46.165524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529106, 31.280197, 45.756935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450451, 30.904158, 45.645546>,  <37.403259, 30.678534, 45.578712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450451, 30.904158, 45.645546>,  <37.529106, 31.280197, 45.756935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450451, 30.904158, 45.645546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025658, 0.288852, -0.957030,
		0.980140, -0.181044, -0.080921,
		-0.196639, -0.940100, -0.278470,
		37.391460, 30.622128, 45.562004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929874, 31.125034, 45.255440>,  <37.529106, 31.280197, 45.756935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929874, 31.125034, 45.255440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646549, 30.851204, 45.186558>,  <37.476555, 30.686905, 45.145229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646549, 30.851204, 45.186558>,  <37.929874, 31.125034, 45.255440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646549, 30.851204, 45.186558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003183, 0.240847, -0.970558,
		0.705896, -0.688002, -0.168415,
		-0.708308, -0.684577, -0.172202,
		37.434055, 30.645830, 45.134895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143124, 30.570667, 44.765366>,  <37.929874, 31.125034, 45.255440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143124, 30.570667, 44.765366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745251, 30.560677, 44.725399>,  <37.506527, 30.554682, 44.701420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745251, 30.560677, 44.725399>,  <38.143124, 30.570667, 44.765366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745251, 30.560677, 44.725399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095440, 0.141130, -0.985380,
		0.038711, -0.989676, -0.137996,
		-0.994682, -0.024975, -0.099918,
		37.446846, 30.553185, 44.695423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032093, 30.241102, 44.137547>,  <38.143124, 30.570667, 44.765366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032093, 30.241102, 44.137547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661465, 30.372469, 44.210880>,  <37.439087, 30.451288, 44.254883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661465, 30.372469, 44.210880>,  <38.032093, 30.241102, 44.137547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661465, 30.372469, 44.210880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143624, 0.141565, -0.979455,
		-0.347623, -0.933864, -0.084001,
		-0.926569, 0.328416, 0.183336,
		37.383495, 30.470993, 44.265881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657104, 29.966805, 43.652828>,  <38.032093, 30.241102, 44.137547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657104, 29.966805, 43.652828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389122, 30.242802, 43.762417>,  <37.228333, 30.408400, 43.828171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389122, 30.242802, 43.762417>,  <37.657104, 29.966805, 43.652828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389122, 30.242802, 43.762417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331085, 0.052620, -0.942133,
		-0.664481, -0.721902, 0.193193,
		-0.669961, 0.689992, 0.273976,
		37.188133, 30.449799, 43.844608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148151, 29.790052, 43.264511>,  <37.657104, 29.966805, 43.652828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148151, 29.790052, 43.264511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062889, 30.168951, 43.360256>,  <37.011734, 30.396290, 43.417702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062889, 30.168951, 43.360256>,  <37.148151, 29.790052, 43.264511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062889, 30.168951, 43.360256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239152, 0.186952, -0.952814,
		-0.947297, -0.260338, 0.186687,
		-0.213153, 0.947245, 0.239360,
		36.998943, 30.453125, 43.432064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656227, 29.935280, 42.868038>,  <37.148151, 29.790052, 43.264511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656227, 29.935280, 42.868038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760887, 30.302856, 42.986080>,  <36.823685, 30.523403, 43.056904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760887, 30.302856, 42.986080>,  <36.656227, 29.935280, 42.868038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760887, 30.302856, 42.986080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048266, 0.317831, -0.946918,
		-0.963955, 0.233519, 0.127514,
		0.261651, 0.918941, 0.295104,
		36.839382, 30.578539, 43.074612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090702, 30.357607, 42.664391>,  <36.656227, 29.935280, 42.868038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090702, 30.357607, 42.664391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440842, 30.549059, 42.691723>,  <36.650925, 30.663931, 42.708122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440842, 30.549059, 42.691723>,  <36.090702, 30.357607, 42.664391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440842, 30.549059, 42.691723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153284, 0.408770, -0.899673,
		-0.458541, 0.777059, 0.431185,
		0.875354, 0.478631, 0.068327,
		36.703449, 30.692648, 42.712219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872597, 30.907972, 42.218208>,  <36.090702, 30.357607, 42.664391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872597, 30.907972, 42.218208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265919, 30.865883, 42.277576>,  <36.501915, 30.840630, 42.313198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265919, 30.865883, 42.277576>,  <35.872597, 30.907972, 42.218208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265919, 30.865883, 42.277576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175532, 0.334058, -0.926064,
		0.047862, 0.936661, 0.346953,
		0.983310, -0.105224, 0.148425,
		36.560913, 30.834316, 42.322105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157391, 31.542645, 41.982933>,  <35.872597, 30.907972, 42.218208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157391, 31.542645, 41.982933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423466, 31.244043, 41.976559>,  <36.583111, 31.064882, 41.972736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423466, 31.244043, 41.976559>,  <36.157391, 31.542645, 41.982933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423466, 31.244043, 41.976559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261525, 0.252920, -0.931470,
		0.699376, 0.615437, 0.363469,
		0.665190, -0.746504, -0.015933,
		36.623024, 31.020092, 41.971779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614498, 31.779964, 41.533871>,  <36.157391, 31.542645, 41.982933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614498, 31.779964, 41.533871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759453, 31.410656, 41.584854>,  <36.846428, 31.189072, 41.615444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759453, 31.410656, 41.584854>,  <36.614498, 31.779964, 41.533871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759453, 31.410656, 41.584854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406554, 0.033532, -0.913011,
		0.838682, 0.382684, 0.387511,
		0.362389, -0.923270, 0.127459,
		36.868168, 31.133675, 41.623093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349072, 31.833126, 41.332676>,  <36.614498, 31.779964, 41.533871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349072, 31.833126, 41.332676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259869, 31.444250, 41.304062>,  <37.206348, 31.210924, 41.286896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259869, 31.444250, 41.304062>,  <37.349072, 31.833126, 41.332676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259869, 31.444250, 41.304062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404733, -0.025581, -0.914077,
		0.886826, -0.232794, 0.399182,
		-0.223004, -0.972189, -0.071533,
		37.192966, 31.152594, 41.282600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945179, 31.437361, 41.142933>,  <37.349072, 31.833126, 41.332676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945179, 31.437361, 41.142933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613419, 31.238129, 41.041737>,  <37.414364, 31.118589, 40.981018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613419, 31.238129, 41.041737>,  <37.945179, 31.437361, 41.142933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613419, 31.238129, 41.041737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270247, 0.038627, -0.962016,
		0.488936, -0.866269, 0.102568,
		-0.829402, -0.498083, -0.252993,
		37.364597, 31.088703, 40.965839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261402, 30.955488, 40.876640>,  <37.945179, 31.437361, 41.142933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261402, 30.955488, 40.876640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880775, 30.968454, 40.754349>,  <37.652401, 30.976234, 40.680973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880775, 30.968454, 40.754349>,  <38.261402, 30.955488, 40.876640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880775, 30.968454, 40.754349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304218, -0.044427, -0.951566,
		-0.044427, -0.998487, 0.032415,
		0.951566, -0.032415, 0.305731,
		37.595306, 30.978178, 40.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239281, 30.426437, 40.375751>,  <38.261402, 30.955488, 40.876640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239281, 30.426437, 40.375751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939896, 30.684324, 40.313595>,  <37.760265, 30.839056, 40.276302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939896, 30.684324, 40.313595>,  <38.239281, 30.426437, 40.375751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939896, 30.684324, 40.313595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216103, 0.015586, -0.976246,
		-0.626981, -0.764262, -0.150991,
		-0.748461, 0.644718, -0.155387,
		37.715359, 30.877739, 40.266979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213825, 30.342106, 39.731922>,  <38.239281, 30.426437, 40.375751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213825, 30.342106, 39.731922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988884, 30.668453, 39.785767>,  <37.853920, 30.864262, 39.818073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988884, 30.668453, 39.785767>,  <38.213825, 30.342106, 39.731922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988884, 30.668453, 39.785767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253909, 0.325296, -0.910886,
		-0.786950, -0.478060, -0.390087,
		-0.562352, 0.815869, 0.134608,
		37.820179, 30.913214, 39.826149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936829, 30.441570, 39.071083>,  <38.213825, 30.342106, 39.731922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936829, 30.441570, 39.071083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945057, 30.783922, 39.277790>,  <37.949993, 30.989332, 39.401814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945057, 30.783922, 39.277790>,  <37.936829, 30.441570, 39.071083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945057, 30.783922, 39.277790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425642, 0.460200, -0.779131,
		-0.904658, 0.235984, -0.354832,
		0.020569, 0.855878, 0.516769,
		37.951229, 31.040686, 39.432819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608658, 31.038273, 38.647827>,  <37.936829, 30.441570, 39.071083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608658, 31.038273, 38.647827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814518, 31.233900, 38.929520>,  <37.938034, 31.351276, 39.098537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814518, 31.233900, 38.929520>,  <37.608658, 31.038273, 38.647827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814518, 31.233900, 38.929520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314289, 0.656582, -0.685655,
		-0.797721, 0.574205, 0.184200,
		0.514649, 0.489069, 0.704236,
		37.968914, 31.380621, 39.140789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399708, 31.671154, 38.571823>,  <37.608658, 31.038273, 38.647827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399708, 31.671154, 38.571823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757401, 31.698793, 38.748714>,  <37.972015, 31.715378, 38.854851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757401, 31.698793, 38.748714>,  <37.399708, 31.671154, 38.571823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757401, 31.698793, 38.748714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272663, 0.699433, -0.660642,
		-0.354961, 0.711350, 0.606617,
		0.894236, 0.069100, 0.442230,
		38.025673, 31.719524, 38.881382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459167, 32.280212, 38.665081>,  <37.399708, 31.671154, 38.571823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459167, 32.280212, 38.665081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837097, 32.149769, 38.677467>,  <38.063854, 32.071503, 38.684898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837097, 32.149769, 38.677467>,  <37.459167, 32.280212, 38.665081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837097, 32.149769, 38.677467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255074, 0.673095, -0.694176,
		0.205538, 0.663773, 0.719138,
		0.944824, -0.326113, 0.030965,
		38.120544, 32.051933, 38.686756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849766, 32.764835, 38.882282>,  <37.459167, 32.280212, 38.665081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849766, 32.764835, 38.882282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077190, 32.515453, 38.667603>,  <38.213646, 32.365822, 38.538795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077190, 32.515453, 38.667603>,  <37.849766, 32.764835, 38.882282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077190, 32.515453, 38.667603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292474, 0.762976, -0.576478,
		0.768897, 0.170790, 0.616140,
		0.568557, -0.623457, -0.536698,
		38.247757, 32.328415, 38.506592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397732, 33.172539, 38.672695>,  <37.849766, 32.764835, 38.882282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397732, 33.172539, 38.672695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426369, 32.859177, 38.425747>,  <38.443550, 32.671158, 38.277576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426369, 32.859177, 38.425747>,  <38.397732, 33.172539, 38.672695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426369, 32.859177, 38.425747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362689, 0.597036, -0.715545,
		0.929156, -0.172686, 0.326876,
		0.071592, -0.783408, -0.617371,
		38.447845, 32.624153, 38.240536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001186, 33.338318, 38.300930>,  <38.397732, 33.172539, 38.672695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001186, 33.338318, 38.300930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788330, 33.067459, 38.097633>,  <38.660618, 32.904945, 37.975655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788330, 33.067459, 38.097633>,  <39.001186, 33.338318, 38.300930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788330, 33.067459, 38.097633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325434, 0.390583, -0.861126,
		0.781614, -0.623637, 0.012520,
		-0.532139, -0.677142, -0.508238,
		38.628689, 32.864315, 37.945164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374886, 33.175095, 37.697781>,  <39.001186, 33.338318, 38.300930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374886, 33.175095, 37.697781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026089, 33.034744, 37.561241>,  <38.816811, 32.950535, 37.479317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026089, 33.034744, 37.561241>,  <39.374886, 33.175095, 37.697781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026089, 33.034744, 37.561241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193465, 0.393532, -0.898723,
		0.449667, -0.849719, -0.275276,
		-0.871992, -0.350870, -0.341350,
		38.764492, 32.929482, 37.458836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621780, 32.868004, 37.147949>,  <39.374886, 33.175095, 37.697781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621780, 32.868004, 37.147949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227684, 32.929131, 37.117100>,  <38.991226, 32.965809, 37.098591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227684, 32.929131, 37.117100>,  <39.621780, 32.868004, 37.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227684, 32.929131, 37.117100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113952, 0.249322, -0.961693,
		-0.127738, -0.956287, -0.263056,
		-0.985240, 0.152821, -0.077123,
		38.932114, 32.974976, 37.093964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379463, 32.474766, 36.602917>,  <39.621780, 32.868004, 37.147949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379463, 32.474766, 36.602917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116386, 32.770264, 36.661819>,  <38.958538, 32.947563, 36.697163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116386, 32.770264, 36.661819>,  <39.379463, 32.474766, 36.602917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116386, 32.770264, 36.661819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189710, 0.351629, -0.916715,
		-0.729003, -0.574984, -0.371414,
		-0.657696, 0.738749, 0.147259,
		38.919079, 32.991890, 36.705997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993114, 32.437412, 36.074974>,  <39.379463, 32.474766, 36.602917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993114, 32.437412, 36.074974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985317, 32.817253, 36.200111>,  <38.980640, 33.045158, 36.275192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985317, 32.817253, 36.200111>,  <38.993114, 32.437412, 36.074974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985317, 32.817253, 36.200111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217427, 0.309440, -0.925728,
		-0.975882, 0.049979, -0.212500,
		-0.019489, 0.949605, 0.312844,
		38.979469, 33.102135, 36.293964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991840, 32.843613, 35.481968>,  <38.993114, 32.437412, 36.074974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991840, 32.843613, 35.481968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044910, 33.138912, 35.746506>,  <39.076752, 33.316093, 35.905228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044910, 33.138912, 35.746506>,  <38.991840, 32.843613, 35.481968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044910, 33.138912, 35.746506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199062, 0.633803, -0.747441,
		-0.970964, 0.230819, -0.062866,
		0.132679, 0.738252, 0.661347,
		39.084713, 33.360390, 35.944908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715115, 33.436405, 35.322052>,  <38.991840, 32.843613, 35.481968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715115, 33.436405, 35.322052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029140, 33.514778, 35.557095>,  <39.217556, 33.561802, 35.698120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029140, 33.514778, 35.557095>,  <38.715115, 33.436405, 35.322052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029140, 33.514778, 35.557095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417892, 0.532691, -0.735939,
		-0.457211, 0.823316, 0.336317,
		0.785063, 0.195935, 0.587610,
		39.264660, 33.573559, 35.733376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097759, 33.922504, 34.964764>,  <38.715115, 33.436405, 35.322052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097759, 33.922504, 34.964764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376602, 33.825993, 35.234825>,  <39.543907, 33.768085, 35.396862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376602, 33.825993, 35.234825>,  <39.097759, 33.922504, 34.964764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376602, 33.825993, 35.234825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706426, 0.392048, -0.589288,
		-0.122509, 0.887740, 0.443745,
		0.697104, -0.241280, 0.675152,
		39.585732, 33.753609, 35.437370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750881, 33.947582, 34.721611>,  <39.097759, 33.922504, 34.964764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750881, 33.947582, 34.721611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890312, 33.870358, 35.088482>,  <39.973972, 33.824024, 35.308605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890312, 33.870358, 35.088482>,  <39.750881, 33.947582, 34.721611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890312, 33.870358, 35.088482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936378, 0.114642, -0.331743,
		-0.041102, 0.974467, 0.220737,
		0.348578, -0.193058, 0.917182,
		39.994884, 33.812439, 35.363636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107193, 34.528709, 34.995228>,  <39.750881, 33.947582, 34.721611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107193, 34.528709, 34.995228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228508, 34.174480, 35.135960>,  <40.301296, 33.961945, 35.220398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228508, 34.174480, 35.135960>,  <40.107193, 34.528709, 34.995228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228508, 34.174480, 35.135960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942606, 0.224683, -0.247006,
		0.139692, 0.406548, 0.902887,
		0.303283, -0.885571, 0.351828,
		40.319492, 33.908810, 35.241508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835033, 34.684292, 35.125736>,  <40.107193, 34.528709, 34.995228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835033, 34.684292, 35.125736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813766, 34.285301, 35.106899>,  <40.801006, 34.045906, 35.095596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813766, 34.285301, 35.106899>,  <40.835033, 34.684292, 35.125736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813766, 34.285301, 35.106899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835080, -0.018555, -0.549816,
		0.547554, -0.068556, 0.833957,
		-0.053167, -0.997475, -0.047090,
		40.797817, 33.986057, 35.092773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385300, 34.191986, 35.345276>,  <40.835033, 34.684292, 35.125736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385300, 34.191986, 35.345276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717918, 33.970341, 35.329853>,  <41.917492, 33.837353, 35.320599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717918, 33.970341, 35.329853>,  <41.385300, 34.191986, 35.345276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717918, 33.970341, 35.329853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550081, -0.811902, -0.195516,
		0.077035, 0.183789, -0.979943,
		0.831551, -0.554110, -0.038554,
		41.967384, 33.804108, 35.318287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511875, 33.821846, 34.625835>,  <41.385300, 34.191986, 35.345276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511875, 33.821846, 34.625835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664364, 33.619453, 34.935326>,  <41.755856, 33.498016, 35.121021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664364, 33.619453, 34.935326>,  <41.511875, 33.821846, 34.625835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664364, 33.619453, 34.935326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410686, -0.842501, -0.348610,
		0.828256, -0.184862, -0.528978,
		0.381220, -0.505982, 0.773727,
		41.778728, 33.467659, 35.167442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814514, 33.166935, 34.294060>,  <41.511875, 33.821846, 34.625835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814514, 33.166935, 34.294060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787720, 33.104969, 34.688320>,  <41.771641, 33.067787, 34.924877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787720, 33.104969, 34.688320>,  <41.814514, 33.166935, 34.294060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787720, 33.104969, 34.688320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255617, -0.952239, -0.167037,
		0.964454, -0.263140, 0.024189,
		-0.066988, -0.154917, 0.985654,
		41.767624, 33.058495, 34.984016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117020, 32.563820, 34.380264>,  <41.814514, 33.166935, 34.294060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117020, 32.563820, 34.380264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895527, 32.577850, 34.713047>,  <41.762630, 32.586269, 34.912716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895527, 32.577850, 34.713047>,  <42.117020, 32.563820, 34.380264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895527, 32.577850, 34.713047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218540, -0.970211, -0.104555,
		0.803508, -0.239711, 0.544898,
		-0.553729, 0.035071, 0.831958,
		41.729408, 32.588371, 34.962635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280018, 31.954489, 34.713242>,  <42.117020, 32.563820, 34.380264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280018, 31.954489, 34.713242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943390, 32.077984, 34.890526>,  <41.741413, 32.152081, 34.996895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943390, 32.077984, 34.890526>,  <42.280018, 31.954489, 34.713242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943390, 32.077984, 34.890526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370520, -0.927025, -0.057788,
		0.393027, -0.212852, 0.894553,
		-0.841574, 0.308737, 0.443211,
		41.690918, 32.170605, 35.023491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176567, 31.502819, 35.303768>,  <42.280018, 31.954489, 34.713242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176567, 31.502819, 35.303768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830620, 31.651983, 35.169338>,  <41.623051, 31.741482, 35.088680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830620, 31.651983, 35.169338>,  <42.176567, 31.502819, 35.303768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830620, 31.651983, 35.169338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358055, -0.927469, -0.107694,
		-0.351860, 0.027192, 0.935658,
		-0.864865, 0.372910, -0.336076,
		41.571159, 31.763857, 35.068516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769318, 30.975704, 35.586285>,  <42.176567, 31.502819, 35.303768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769318, 30.975704, 35.586285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528214, 31.145533, 35.316048>,  <41.383553, 31.247429, 35.153904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528214, 31.145533, 35.316048>,  <41.769318, 30.975704, 35.586285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528214, 31.145533, 35.316048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513567, -0.854428, -0.078757,
		-0.610681, 0.299489, 0.733058,
		-0.602758, 0.424570, -0.675591,
		41.347385, 31.272903, 35.113369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111122, 30.852449, 35.763855>,  <41.769318, 30.975704, 35.586285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111122, 30.852449, 35.763855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097706, 30.908398, 35.368015>,  <41.089657, 30.941967, 35.130512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097706, 30.908398, 35.368015>,  <41.111122, 30.852449, 35.763855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097706, 30.908398, 35.368015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425816, -0.897794, -0.112460,
		-0.904188, 0.417616, 0.089675,
		-0.033545, 0.139870, -0.989602,
		41.087643, 30.950359, 35.071136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527779, 30.493992, 35.509129>,  <41.111122, 30.852449, 35.763855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527779, 30.493992, 35.509129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743496, 30.530107, 35.174225>,  <40.872929, 30.551777, 34.973282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743496, 30.530107, 35.174225>,  <40.527779, 30.493992, 35.509129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743496, 30.530107, 35.174225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255354, -0.929892, -0.264754,
		-0.802467, 0.356579, -0.478433,
		0.539297, 0.090287, -0.837261,
		40.905285, 30.557194, 34.923046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129646, 30.251934, 35.000622>,  <40.527779, 30.493992, 35.509129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129646, 30.251934, 35.000622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480495, 30.240725, 34.808846>,  <40.691006, 30.233999, 34.693779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480495, 30.240725, 34.808846>,  <40.129646, 30.251934, 35.000622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480495, 30.240725, 34.808846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220325, -0.910523, -0.349864,
		-0.426736, 0.412508, -0.804818,
		0.877127, -0.028022, -0.479439,
		40.743633, 30.232319, 34.665012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912430, 29.991100, 34.417755>,  <40.129646, 30.251934, 35.000622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912430, 29.991100, 34.417755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310410, 29.951279, 34.412575>,  <40.549198, 29.927385, 34.409466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310410, 29.951279, 34.412575>,  <39.912430, 29.991100, 34.417755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310410, 29.951279, 34.412575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100168, -0.975786, -0.194442,
		0.006723, 0.194757, -0.980829,
		0.994948, -0.099554, -0.012948,
		40.608894, 29.921412, 34.408691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046635, 29.547298, 33.799736>,  <39.912430, 29.991100, 34.417755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046635, 29.547298, 33.799736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349724, 29.515923, 34.058872>,  <40.531578, 29.497097, 34.214355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349724, 29.515923, 34.058872>,  <40.046635, 29.547298, 33.799736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349724, 29.515923, 34.058872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042698, -0.984663, -0.169163,
		0.651178, 0.155840, -0.742752,
		0.757723, -0.078441, 0.647845,
		40.577042, 29.492390, 34.253227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424706, 29.094137, 33.449577>,  <40.046635, 29.547298, 33.799736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424706, 29.094137, 33.449577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598160, 29.087603, 33.809956>,  <40.702232, 29.083681, 34.026180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598160, 29.087603, 33.809956>,  <40.424706, 29.094137, 33.449577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598160, 29.087603, 33.809956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177820, -0.978623, -0.103331,
		0.883371, 0.205013, -0.421457,
		0.433631, -0.016336, 0.900942,
		40.728249, 29.082701, 34.080238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056358, 28.766348, 33.428600>,  <40.424706, 29.094137, 33.449577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056358, 28.766348, 33.428600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984802, 28.711229, 33.818268>,  <40.941868, 28.678158, 34.052071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984802, 28.711229, 33.818268>,  <41.056358, 28.766348, 33.428600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984802, 28.711229, 33.818268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222413, -0.970176, -0.096387,
		0.958401, 0.199426, 0.204199,
		-0.178887, -0.137794, 0.974173,
		40.931137, 28.669891, 34.110519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599804, 28.252651, 33.651520>,  <41.056358, 28.766348, 33.428600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599804, 28.252651, 33.651520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335957, 28.211134, 33.949280>,  <41.177647, 28.186224, 34.127934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335957, 28.211134, 33.949280>,  <41.599804, 28.252651, 33.651520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335957, 28.211134, 33.949280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184885, -0.982393, 0.026852,
		0.728502, 0.155339, 0.667199,
		-0.659623, -0.103793, 0.744395,
		41.138069, 28.179996, 34.172600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825073, 27.674137, 34.006454>,  <41.599804, 28.252651, 33.651520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825073, 27.674137, 34.006454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441441, 27.722294, 34.108952>,  <41.211262, 27.751188, 34.170448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441441, 27.722294, 34.108952>,  <41.825073, 27.674137, 34.006454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441441, 27.722294, 34.108952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102328, -0.991303, 0.082751,
		0.263978, 0.053145, 0.963063,
		-0.959085, 0.120392, 0.256244,
		41.153713, 27.758411, 34.185825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789551, 27.306416, 34.571568>,  <41.825073, 27.674137, 34.006454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789551, 27.306416, 34.571568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406326, 27.327621, 34.458920>,  <41.176392, 27.340345, 34.391331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406326, 27.327621, 34.458920>,  <41.789551, 27.306416, 34.571568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406326, 27.327621, 34.458920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107356, -0.977571, 0.181188,
		-0.265698, 0.203823, 0.942264,
		-0.958060, 0.053016, -0.281620,
		41.118908, 27.343527, 34.374435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279346, 26.817680, 35.105015>,  <41.789551, 27.306416, 34.571568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279346, 26.817680, 35.105015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087856, 26.872559, 34.758144>,  <40.972961, 26.905485, 34.550022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087856, 26.872559, 34.758144>,  <41.279346, 26.817680, 35.105015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087856, 26.872559, 34.758144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188956, -0.980669, -0.050837,
		-0.857391, 0.139523, 0.495393,
		-0.478723, 0.137194, -0.867180,
		40.944241, 26.913717, 34.497990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704548, 26.351904, 35.151970>,  <41.279346, 26.817680, 35.105015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704548, 26.351904, 35.151970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723335, 26.426832, 34.759499>,  <40.734608, 26.471788, 34.524017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723335, 26.426832, 34.759499>,  <40.704548, 26.351904, 35.151970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723335, 26.426832, 34.759499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135460, -0.971991, -0.192052,
		-0.989669, 0.141930, -0.020277,
		0.046966, 0.187321, -0.981175,
		40.737427, 26.483028, 34.465145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120636, 25.987814, 34.832024>,  <40.704548, 26.351904, 35.151970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120636, 25.987814, 34.832024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385822, 26.059931, 34.541374>,  <40.544933, 26.103201, 34.366985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385822, 26.059931, 34.541374>,  <40.120636, 25.987814, 34.832024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385822, 26.059931, 34.541374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001663, -0.970922, -0.239390,
		-0.748650, 0.157499, -0.643985,
		0.662963, 0.180290, -0.726619,
		40.584713, 26.114017, 34.323387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898590, 25.595734, 34.313210>,  <40.120636, 25.987814, 34.832024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898590, 25.595734, 34.313210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285099, 25.665192, 34.237137>,  <40.517002, 25.706865, 34.191494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285099, 25.665192, 34.237137>,  <39.898590, 25.595734, 34.313210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285099, 25.665192, 34.237137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100530, -0.934230, -0.342211,
		-0.237100, 0.311549, -0.920175,
		0.966270, 0.173643, -0.190186,
		40.574982, 25.717285, 34.180080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228127, 25.642918, 33.612839>,  <39.898590, 25.595734, 34.313210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228127, 25.642918, 33.612839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513981, 25.501310, 33.854160>,  <40.685493, 25.416346, 33.998951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513981, 25.501310, 33.854160>,  <40.228127, 25.642918, 33.612839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513981, 25.501310, 33.854160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066131, -0.824419, -0.562103,
		0.696366, 0.441595, -0.565746,
		0.714634, -0.354016, 0.603300,
		40.728371, 25.395105, 34.035149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902405, 25.556351, 33.285110>,  <40.228127, 25.642918, 33.612839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902405, 25.556351, 33.285110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836800, 25.303148, 33.587742>,  <40.797436, 25.151226, 33.769321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836800, 25.303148, 33.587742>,  <40.902405, 25.556351, 33.285110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836800, 25.303148, 33.587742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110607, -0.750323, -0.651753,
		0.980238, -0.190577, 0.053046,
		-0.164011, -0.633005, 0.756574,
		40.787598, 25.113247, 33.814713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300949, 24.971283, 33.218105>,  <40.902405, 25.556351, 33.285110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300949, 24.971283, 33.218105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933105, 24.897303, 33.356731>,  <40.712399, 24.852915, 33.439907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933105, 24.897303, 33.356731>,  <41.300949, 24.971283, 33.218105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933105, 24.897303, 33.356731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162538, -0.624025, -0.764313,
		0.357627, -0.759201, 0.543799,
		-0.919611, -0.184950, 0.346567,
		40.657223, 24.841818, 33.460701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983620, 25.129723, 33.565819>,  <41.300949, 24.971283, 33.218105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983620, 25.129723, 33.565819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261177, 24.874197, 33.698742>,  <42.427711, 24.720881, 33.778496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261177, 24.874197, 33.698742>,  <41.983620, 25.129723, 33.565819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261177, 24.874197, 33.698742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051962, -0.504711, -0.861723,
		0.718204, 0.580673, -0.383408,
		0.693890, -0.638816, 0.332312,
		42.469345, 24.682552, 33.798435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637936, 25.014021, 33.064842>,  <41.983620, 25.129723, 33.565819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637936, 25.014021, 33.064842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504208, 24.711367, 33.289604>,  <42.423969, 24.529774, 33.424461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504208, 24.711367, 33.289604>,  <42.637936, 25.014021, 33.064842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504208, 24.711367, 33.289604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233795, -0.510988, -0.827183,
		0.913001, -0.407913, -0.006064,
		-0.334319, -0.756636, 0.561901,
		42.403912, 24.484375, 33.458176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062046, 24.381889, 33.035572>,  <42.637936, 25.014021, 33.064842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062046, 24.381889, 33.035572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665817, 24.336512, 33.066280>,  <42.428078, 24.309284, 33.084705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665817, 24.336512, 33.066280>,  <43.062046, 24.381889, 33.035572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665817, 24.336512, 33.066280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040917, -0.289792, -0.956214,
		0.130726, -0.950342, 0.282419,
		-0.990574, -0.113446, 0.076768,
		42.368645, 24.302479, 33.089310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431656, 24.350676, 33.674210>,  <43.062046, 24.381889, 33.035572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431656, 24.350676, 33.674210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750778, 24.365582, 33.433506>,  <43.942253, 24.374525, 33.289085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750778, 24.365582, 33.433506>,  <43.431656, 24.350676, 33.674210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750778, 24.365582, 33.433506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418119, 0.753274, -0.507695,
		0.434368, 0.656650, 0.616552,
		0.797810, 0.037266, -0.601756,
		43.990120, 24.376760, 33.252979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789547, 25.003017, 33.856022>,  <43.431656, 24.350676, 33.674210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789547, 25.003017, 33.856022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786083, 24.889753, 33.472408>,  <43.784004, 24.821795, 33.242241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786083, 24.889753, 33.472408>,  <43.789547, 25.003017, 33.856022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786083, 24.889753, 33.472408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340249, 0.902677, -0.263448,
		0.940296, 0.324029, -0.104160,
		-0.008658, -0.283159, -0.959034,
		43.783485, 24.804806, 33.184700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248405, 25.403793, 33.476658>,  <43.789547, 25.003017, 33.856022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248405, 25.403793, 33.476658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945976, 25.312962, 33.231125>,  <43.764519, 25.258463, 33.083805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945976, 25.312962, 33.231125>,  <44.248405, 25.403793, 33.476658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945976, 25.312962, 33.231125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183766, 0.973808, -0.133897,
		0.628160, 0.011566, -0.777998,
		-0.756072, -0.227078, -0.613832,
		43.719154, 25.244839, 33.046974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421310, 25.682644, 32.901154>,  <44.248405, 25.403793, 33.476658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421310, 25.682644, 32.901154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021393, 25.685474, 32.908737>,  <43.781441, 25.687174, 32.913288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021393, 25.685474, 32.908737>,  <44.421310, 25.682644, 32.901154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021393, 25.685474, 32.908737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006623, 0.999692, -0.023902,
		-0.019123, -0.023771, -0.999534,
		-0.999795, 0.007077, 0.018960,
		43.721455, 25.687597, 32.914425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157848, 26.032825, 32.284821>,  <44.421310, 25.682644, 32.901154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157848, 26.032825, 32.284821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895576, 26.051458, 32.586262>,  <43.738213, 26.062637, 32.767124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895576, 26.051458, 32.586262>,  <44.157848, 26.032825, 32.284821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895576, 26.051458, 32.586262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082571, 0.987685, -0.132893,
		-0.750508, -0.149361, -0.643761,
		-0.655682, 0.046581, 0.753599,
		43.698872, 26.065434, 32.812340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632172, 26.490427, 32.069073>,  <44.157848, 26.032825, 32.284821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632172, 26.490427, 32.069073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569443, 26.481060, 32.464012>,  <43.531807, 26.475441, 32.700977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569443, 26.481060, 32.464012>,  <43.632172, 26.490427, 32.069073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569443, 26.481060, 32.464012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097141, 0.995237, 0.008174,
		-0.982839, -0.094630, -0.158347,
		-0.156819, -0.023415, 0.987350,
		43.522396, 26.474035, 32.760216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996769, 26.850203, 32.298428>,  <43.632172, 26.490427, 32.069073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996769, 26.850203, 32.298428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239536, 26.834740, 32.615955>,  <43.385197, 26.825462, 32.806473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239536, 26.834740, 32.615955>,  <42.996769, 26.850203, 32.298428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239536, 26.834740, 32.615955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105608, 0.986036, 0.128763,
		-0.787714, -0.161983, 0.594364,
		0.606922, -0.038659, 0.793821,
		43.421612, 26.823141, 32.854103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732891, 27.349478, 32.755489>,  <42.996769, 26.850203, 32.298428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732891, 27.349478, 32.755489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101570, 27.287769, 32.897858>,  <43.322777, 27.250744, 32.983280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101570, 27.287769, 32.897858>,  <42.732891, 27.349478, 32.755489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101570, 27.287769, 32.897858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143925, 0.988029, 0.055539,
		-0.360230, 0.000036, 0.932864,
		0.921694, -0.154269, 0.355922,
		43.378078, 27.241489, 33.004635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885468, 27.797422, 33.291283>,  <42.732891, 27.349478, 32.755489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885468, 27.797422, 33.291283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259529, 27.696844, 33.191467>,  <43.483967, 27.636497, 33.131580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259529, 27.696844, 33.191467>,  <42.885468, 27.797422, 33.291283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259529, 27.696844, 33.191467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297959, 0.939292, 0.170148,
		0.191603, -0.233465, 0.953301,
		0.935152, -0.251444, -0.249535,
		43.540073, 27.621410, 33.116608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440441, 28.104349, 33.762451>,  <42.885468, 27.797422, 33.291283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440441, 28.104349, 33.762451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625816, 28.025614, 33.416855>,  <43.737041, 27.978373, 33.209496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625816, 28.025614, 33.416855>,  <43.440441, 28.104349, 33.762451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625816, 28.025614, 33.416855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337599, 0.940703, -0.033228,
		0.819300, -0.276284, 0.502408,
		0.463437, -0.196836, -0.863992,
		43.764847, 27.966562, 33.157658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008503, 28.345360, 33.864178>,  <43.440441, 28.104349, 33.762451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008503, 28.345360, 33.864178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055504, 28.301643, 33.469360>,  <44.083702, 28.275414, 33.232471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055504, 28.301643, 33.469360>,  <44.008503, 28.345360, 33.864178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055504, 28.301643, 33.469360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469884, 0.881743, -0.041696,
		0.874873, -0.458895, 0.154959,
		0.117500, -0.109291, -0.987041,
		44.090755, 28.268856, 33.173248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800163, 28.552235, 33.739250>,  <44.008503, 28.345360, 33.864178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800163, 28.552235, 33.739250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561089, 28.580084, 33.419769>,  <44.417645, 28.596792, 33.228081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561089, 28.580084, 33.419769>,  <44.800163, 28.552235, 33.739250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561089, 28.580084, 33.419769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361931, 0.912362, -0.191315,
		0.715381, -0.403421, -0.570509,
		-0.597691, 0.069622, -0.798697,
		44.381783, 28.600971, 33.180161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148052, 28.958090, 33.363876>,  <44.800163, 28.552235, 33.739250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148052, 28.958090, 33.363876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784409, 28.983397, 33.199184>,  <44.566223, 28.998581, 33.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784409, 28.983397, 33.199184>,  <45.148052, 28.958090, 33.363876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784409, 28.983397, 33.199184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109905, 0.989806, -0.090585,
		0.401800, -0.127603, -0.906793,
		-0.909108, 0.063265, -0.411728,
		44.511677, 29.002377, 33.075665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229107, 29.540695, 32.854153>,  <45.148052, 28.958090, 33.363876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229107, 29.540695, 32.854153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838326, 29.499281, 32.928810>,  <44.603855, 29.474432, 32.973602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838326, 29.499281, 32.928810>,  <45.229107, 29.540695, 32.854153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838326, 29.499281, 32.928810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106476, 0.994299, -0.005773,
		-0.184980, -0.025513, -0.982411,
		-0.976957, -0.103535, 0.186642,
		44.545238, 29.468220, 32.984802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872498, 30.095800, 32.496059>,  <45.229107, 29.540695, 32.854153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872498, 30.095800, 32.496059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593853, 29.983370, 32.760101>,  <44.426666, 29.915911, 32.918526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593853, 29.983370, 32.760101>,  <44.872498, 30.095800, 32.496059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593853, 29.983370, 32.760101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266866, 0.955558, 0.125262,
		-0.665973, -0.088900, -0.740660,
		-0.696608, -0.281078, 0.660100,
		44.384872, 29.899046, 32.958130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163887, 30.432039, 32.287796>,  <44.872498, 30.095800, 32.496059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163887, 30.432039, 32.287796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158070, 30.335037, 32.675812>,  <44.154579, 30.276836, 32.908623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158070, 30.335037, 32.675812>,  <44.163887, 30.432039, 32.287796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158070, 30.335037, 32.675812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255551, 0.938825, 0.230873,
		-0.966686, -0.244538, -0.075624,
		-0.014540, -0.242507, 0.970041,
		44.153706, 30.262285, 32.966824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632935, 30.683043, 32.539406>,  <44.163887, 30.432039, 32.287796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632935, 30.683043, 32.539406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835022, 30.624361, 32.879578>,  <43.956276, 30.589151, 33.083679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835022, 30.624361, 32.879578>,  <43.632935, 30.683043, 32.539406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835022, 30.624361, 32.879578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156937, 0.953395, 0.257699,
		-0.848601, -0.263659, 0.458650,
		0.505220, -0.146705, 0.850430,
		43.986588, 30.580349, 33.134708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172192, 30.967093, 33.078953>,  <43.632935, 30.683043, 32.539406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172192, 30.967093, 33.078953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542389, 30.943960, 33.228683>,  <43.764507, 30.930080, 33.318523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542389, 30.943960, 33.228683>,  <43.172192, 30.967093, 33.078953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542389, 30.943960, 33.228683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123580, 0.888090, 0.442747,
		-0.358043, -0.456018, 0.814772,
		0.925490, -0.057833, 0.374329,
		43.820038, 30.926611, 33.340981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151211, 31.133030, 33.814281>,  <43.172192, 30.967093, 33.078953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151211, 31.133030, 33.814281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536873, 31.189924, 33.724689>,  <43.768272, 31.224062, 33.670933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536873, 31.189924, 33.724689>,  <43.151211, 31.133030, 33.814281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536873, 31.189924, 33.724689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009872, 0.824353, 0.565990,
		0.265145, -0.547915, 0.793402,
		0.964158, 0.142237, -0.223982,
		43.826118, 31.232595, 33.657494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423004, 31.426884, 34.412136>,  <43.151211, 31.133030, 33.814281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423004, 31.426884, 34.412136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720551, 31.502533, 34.155731>,  <43.899078, 31.547922, 34.001888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720551, 31.502533, 34.155731>,  <43.423004, 31.426884, 34.412136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720551, 31.502533, 34.155731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165197, 0.877334, 0.450550,
		0.647595, -0.441041, 0.621372,
		0.743862, 0.189125, -0.641016,
		43.943710, 31.559271, 33.963425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967861, 31.646254, 34.789341>,  <43.423004, 31.426884, 34.412136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967861, 31.646254, 34.789341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049442, 31.779335, 34.421055>,  <44.098389, 31.859184, 34.200085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049442, 31.779335, 34.421055>,  <43.967861, 31.646254, 34.789341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049442, 31.779335, 34.421055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412226, 0.823853, 0.389019,
		0.887961, -0.458882, 0.030875,
		0.203950, 0.332706, -0.920712,
		44.110626, 31.879147, 34.144840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570202, 31.885687, 34.792522>,  <43.967861, 31.646254, 34.789341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570202, 31.885687, 34.792522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404362, 32.092056, 34.492676>,  <44.304859, 32.215878, 34.312767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404362, 32.092056, 34.492676>,  <44.570202, 31.885687, 34.792522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404362, 32.092056, 34.492676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370141, 0.848142, 0.379013,
		0.831326, -0.120326, -0.542604,
		-0.414600, 0.515924, -0.749620,
		44.279984, 32.246834, 34.267788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121304, 32.303143, 34.428787>,  <44.570202, 31.885687, 34.792522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121304, 32.303143, 34.428787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769295, 32.479816, 34.358959>,  <44.558090, 32.585823, 34.317062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769295, 32.479816, 34.358959>,  <45.121304, 32.303143, 34.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769295, 32.479816, 34.358959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387961, 0.880563, 0.272205,
		0.273950, 0.171820, -0.946271,
		-0.880022, 0.441687, -0.174571,
		44.505287, 32.612324, 34.306587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447788, 32.892311, 34.116291>,  <45.121304, 32.303143, 34.428787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447788, 32.892311, 34.116291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072598, 32.958492, 34.238163>,  <44.847485, 32.998199, 34.311287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072598, 32.958492, 34.238163>,  <45.447788, 32.892311, 34.116291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072598, 32.958492, 34.238163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253107, 0.927343, 0.275631,
		-0.236936, 0.335651, -0.911702,
		-0.937976, 0.165451, 0.304676,
		44.791206, 33.008129, 34.329567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619076, 33.695366, 34.310764>,  <45.447788, 32.892311, 34.116291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619076, 33.695366, 34.310764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431515, 33.533298, 33.996830>,  <45.318977, 33.436058, 33.808472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431515, 33.533298, 33.996830>,  <45.619076, 33.695366, 34.310764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431515, 33.533298, 33.996830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226703, -0.803599, 0.550304,
		-0.853658, 0.435965, 0.284960,
		-0.468907, -0.405170, -0.784833,
		45.290844, 33.411747, 33.761379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294552, 33.635929, 34.730549>,  <45.619076, 33.695366, 34.310764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294552, 33.635929, 34.730549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962349, 33.547707, 34.935143>,  <45.763027, 33.494774, 35.057899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962349, 33.547707, 34.935143>,  <46.294552, 33.635929, 34.730549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962349, 33.547707, 34.935143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496509, -0.123065, -0.859264,
		0.252459, -0.967580, -0.007300,
		-0.830508, -0.220554, 0.511481,
		45.713196, 33.481541, 35.088585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072845, 33.886757, 34.730797>,  <46.294552, 33.635929, 34.730549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072845, 33.886757, 34.730797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200825, 34.025280, 34.378048>,  <47.277611, 34.108395, 34.166397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200825, 34.025280, 34.378048>,  <47.072845, 33.886757, 34.730797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200825, 34.025280, 34.378048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860216, -0.496278, 0.117206,
		-0.397066, -0.796103, -0.456682,
		0.319949, 0.346306, -0.881876,
		47.296810, 34.129173, 34.113483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.465153, 34.499493, 34.594707>,  <47.072845, 33.886757, 34.730797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.465153, 34.499493, 34.594707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671455, 34.613091, 34.918026>,  <47.795238, 34.681248, 35.112019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671455, 34.613091, 34.918026>,  <47.465153, 34.499493, 34.594707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671455, 34.613091, 34.918026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311425, 0.816776, -0.485686,
		-0.798129, 0.502219, 0.332814,
		0.515756, 0.283994, 0.808297,
		47.826183, 34.698288, 35.160515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.233452, 35.146545, 34.882507>,  <47.465153, 34.499493, 34.594707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.233452, 35.146545, 34.882507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628845, 35.096268, 34.916199>,  <47.866081, 35.066101, 34.936413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628845, 35.096268, 34.916199>,  <47.233452, 35.146545, 34.882507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.628845, 35.096268, 34.916199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150897, 0.777893, -0.610010,
		0.011153, 0.615697, 0.787904,
		0.988487, -0.125696, 0.084231,
		47.925392, 35.058559, 34.941467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.435299, 33.665867, 45.561874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133461, 33.403610, 45.551163>,  <34.952358, 33.246258, 45.544735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133461, 33.403610, 45.551163>,  <35.435299, 33.665867, 45.561874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133461, 33.403610, 45.551163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021879, 0.065928, -0.997584,
		0.655821, -0.752191, -0.064094,
		-0.754599, -0.655639, -0.026780,
		34.907082, 33.206917, 45.543129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606228, 33.293175, 44.929230>,  <35.435299, 33.665867, 45.561874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606228, 33.293175, 44.929230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221886, 33.210808, 45.003368>,  <34.991280, 33.161388, 45.047852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221886, 33.210808, 45.003368>,  <35.606228, 33.293175, 44.929230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221886, 33.210808, 45.003368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188878, -0.002547, -0.981997,
		0.202685, -0.978566, -0.036447,
		-0.960856, -0.205920, 0.185345,
		34.933628, 33.149033, 45.058971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482185, 32.800999, 44.414795>,  <35.606228, 33.293175, 44.929230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482185, 32.800999, 44.414795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.122585, 32.930546, 44.532722>,  <34.906826, 33.008274, 44.603477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.122585, 32.930546, 44.532722>,  <35.482185, 32.800999, 44.414795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122585, 32.930546, 44.532722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305454, 0.018737, -0.952023,
		-0.313854, -0.945917, 0.082083,
		-0.898996, 0.323869, 0.294814,
		34.852886, 33.027706, 44.621166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043369, 32.439709, 44.030769>,  <35.482185, 32.800999, 44.414795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043369, 32.439709, 44.030769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819962, 32.752495, 44.141472>,  <34.685917, 32.940166, 44.207893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819962, 32.752495, 44.141472>,  <35.043369, 32.439709, 44.030769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819962, 32.752495, 44.141472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464979, -0.018845, -0.885121,
		-0.686915, -0.623042, 0.374121,
		-0.558518, 0.781961, 0.276757,
		34.652405, 32.987083, 44.224499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357384, 32.197693, 43.970749>,  <35.043369, 32.439709, 44.030769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357384, 32.197693, 43.970749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.360004, 32.597561, 43.980637>,  <34.361576, 32.837482, 43.986568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.360004, 32.597561, 43.980637>,  <34.357384, 32.197693, 43.970749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360004, 32.597561, 43.980637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586842, 0.023857, -0.809350,
		-0.809675, -0.009204, 0.586806,
		0.006550, 0.999673, 0.024718,
		34.361969, 32.897461, 43.988052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608219, 32.470695, 43.931740>,  <34.357384, 32.197693, 43.970749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608219, 32.470695, 43.931740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.870125, 32.737263, 43.789097>,  <34.027267, 32.897205, 43.703510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.870125, 32.737263, 43.789097>,  <33.608219, 32.470695, 43.931740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870125, 32.737263, 43.789097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402891, -0.091461, -0.910667,
		-0.639502, 0.739945, 0.208610,
		0.654764, 0.666420, -0.356606,
		34.066555, 32.937187, 43.682114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197495, 32.779182, 43.391216>,  <33.608219, 32.470695, 43.931740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197495, 32.779182, 43.391216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570454, 32.905361, 43.320644>,  <33.794228, 32.981068, 43.278301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570454, 32.905361, 43.320644>,  <33.197495, 32.779182, 43.391216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570454, 32.905361, 43.320644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214402, 0.089757, -0.972613,
		-0.290973, 0.944688, 0.151322,
		0.932398, 0.315448, -0.176426,
		33.850174, 32.999996, 43.267715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152939, 33.317734, 42.977390>,  <33.197495, 32.779182, 43.391216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152939, 33.317734, 42.977390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523224, 33.193443, 42.891136>,  <33.745396, 33.118870, 42.839386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523224, 33.193443, 42.891136>,  <33.152939, 33.317734, 42.977390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523224, 33.193443, 42.891136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180415, 0.138299, -0.973819,
		0.332413, 0.940384, 0.071966,
		0.925717, -0.310726, -0.215632,
		33.800938, 33.100224, 42.826447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386909, 33.831699, 42.520863>,  <33.152939, 33.317734, 42.977390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386909, 33.831699, 42.520863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661640, 33.549465, 42.451107>,  <33.826481, 33.380123, 42.409252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661640, 33.549465, 42.451107>,  <33.386909, 33.831699, 42.520863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661640, 33.549465, 42.451107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138259, 0.362393, -0.921713,
		0.713547, 0.608949, 0.346456,
		0.686829, -0.705587, -0.174392,
		33.867687, 33.337788, 42.398788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733845, 34.131100, 42.076672>,  <33.386909, 33.831699, 42.520863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733845, 34.131100, 42.076672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.911896, 33.780266, 42.004463>,  <34.018726, 33.569767, 41.961140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.911896, 33.780266, 42.004463>,  <33.733845, 34.131100, 42.076672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911896, 33.780266, 42.004463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400214, 0.375194, -0.836097,
		0.801057, 0.299922, 0.518030,
		0.445125, -0.877084, -0.180519,
		34.045433, 33.517139, 41.950306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510731, 34.175606, 41.992226>,  <33.733845, 34.131100, 42.076672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510731, 34.175606, 41.992226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.381203, 33.850567, 41.798389>,  <34.303486, 33.655544, 41.682087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.381203, 33.850567, 41.798389>,  <34.510731, 34.175606, 41.992226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381203, 33.850567, 41.798389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330767, 0.382635, -0.862661,
		0.886415, -0.439637, 0.144873,
		-0.323824, -0.812595, -0.484590,
		34.284054, 33.606789, 41.653011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090393, 34.081856, 41.524597>,  <34.510731, 34.175606, 41.992226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090393, 34.081856, 41.524597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.790585, 33.866917, 41.369946>,  <34.610699, 33.737953, 41.277153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.790585, 33.866917, 41.369946>,  <35.090393, 34.081856, 41.524597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790585, 33.866917, 41.369946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352673, 0.170136, -0.920150,
		0.560219, -0.826022, 0.061988,
		-0.749517, -0.537346, -0.386629,
		34.565731, 33.705711, 41.253956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387253, 33.495247, 41.109028>,  <35.090393, 34.081856, 41.524597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387253, 33.495247, 41.109028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011578, 33.551643, 40.983776>,  <34.786171, 33.585480, 40.908627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011578, 33.551643, 40.983776>,  <35.387253, 33.495247, 41.109028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011578, 33.551643, 40.983776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328717, 0.105305, -0.938539,
		-0.099351, -0.984395, -0.145247,
		-0.939188, 0.140990, -0.313125,
		34.729820, 33.593941, 40.889839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217106, 33.069405, 40.552494>,  <35.387253, 33.495247, 41.109028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217106, 33.069405, 40.552494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974319, 33.385006, 40.514427>,  <34.828648, 33.574368, 40.491589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974319, 33.385006, 40.514427>,  <35.217106, 33.069405, 40.552494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974319, 33.385006, 40.514427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251758, 0.077315, -0.964697,
		-0.753795, -0.609500, -0.245567,
		-0.606968, 0.789007, -0.095167,
		34.792229, 33.621708, 40.485878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207813, 33.115730, 39.931385>,  <35.217106, 33.069405, 40.552494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207813, 33.115730, 39.931385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991894, 33.441914, 40.014942>,  <34.862343, 33.637623, 40.065075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991894, 33.441914, 40.014942>,  <35.207813, 33.115730, 39.931385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991894, 33.441914, 40.014942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112671, 0.315911, -0.942075,
		-0.834218, -0.484998, -0.262408,
		-0.539802, 0.815462, 0.208893,
		34.829952, 33.686554, 40.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767796, 33.151588, 39.427315>,  <35.207813, 33.115730, 39.931385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767796, 33.151588, 39.427315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792034, 33.524899, 39.568920>,  <34.806580, 33.748886, 39.653885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792034, 33.524899, 39.568920>,  <34.767796, 33.151588, 39.427315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792034, 33.524899, 39.568920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114019, 0.345872, -0.931328,
		-0.991629, 0.096802, -0.085452,
		0.060599, 0.933275, 0.354014,
		34.810215, 33.804882, 39.675125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277317, 33.563549, 38.917637>,  <34.767796, 33.151588, 39.427315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277317, 33.563549, 38.917637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507706, 33.830109, 39.107018>,  <34.645939, 33.990044, 39.220646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507706, 33.830109, 39.107018>,  <34.277317, 33.563549, 38.917637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507706, 33.830109, 39.107018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213819, 0.436195, -0.874080,
		-0.789008, 0.604682, 0.108748,
		0.575976, 0.666404, 0.473454,
		34.680500, 34.030029, 39.249054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183632, 34.177834, 38.579926>,  <34.277317, 33.563549, 38.917637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183632, 34.177834, 38.579926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.529751, 34.210342, 38.777779>,  <34.737423, 34.229847, 38.896488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.529751, 34.210342, 38.777779>,  <34.183632, 34.177834, 38.579926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529751, 34.210342, 38.777779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384348, 0.525872, -0.758772,
		-0.321779, 0.846672, 0.423799,
		0.865295, 0.081271, 0.494631,
		34.789341, 34.234722, 38.926167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434383, 34.958393, 38.519852>,  <34.183632, 34.177834, 38.579926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434383, 34.958393, 38.519852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768730, 34.752853, 38.597084>,  <34.969337, 34.629528, 38.643421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768730, 34.752853, 38.597084>,  <34.434383, 34.958393, 38.519852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768730, 34.752853, 38.597084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370172, 0.267929, -0.889487,
		0.405332, 0.814967, 0.414167,
		0.835870, -0.513851, 0.193077,
		35.019489, 34.598698, 38.655006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017845, 35.348396, 38.288929>,  <34.434383, 34.958393, 38.519852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017845, 35.348396, 38.288929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193428, 34.989876, 38.314106>,  <35.298779, 34.774765, 38.329212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193428, 34.989876, 38.314106>,  <35.017845, 35.348396, 38.288929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193428, 34.989876, 38.314106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453663, 0.160617, -0.876580,
		0.775570, 0.413334, 0.477123,
		0.438955, -0.896302, 0.062945,
		35.325115, 34.720985, 38.332989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661915, 35.480976, 38.100262>,  <35.017845, 35.348396, 38.288929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661915, 35.480976, 38.100262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654259, 35.082321, 38.068405>,  <35.649666, 34.843128, 38.049294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654259, 35.082321, 38.068405>,  <35.661915, 35.480976, 38.100262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654259, 35.082321, 38.068405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507173, 0.058966, -0.859824,
		0.861632, -0.056845, 0.504341,
		-0.019138, -0.996640, -0.079637,
		35.648518, 34.783329, 38.044514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334209, 35.259533, 37.824196>,  <35.661915, 35.480976, 38.100262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334209, 35.259533, 37.824196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055790, 34.983479, 37.744968>,  <35.888741, 34.817844, 37.697433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055790, 34.983479, 37.744968>,  <36.334209, 35.259533, 37.824196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055790, 34.983479, 37.744968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362109, -0.099205, -0.926842,
		0.619999, -0.716846, 0.318956,
		-0.696044, -0.690138, -0.198069,
		35.846977, 34.776436, 37.685547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673489, 34.718433, 38.269943>,  <36.334209, 35.259533, 37.824196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673489, 34.718433, 38.269943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070168, 34.674316, 38.243523>,  <37.308174, 34.647846, 38.227669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070168, 34.674316, 38.243523>,  <36.673489, 34.718433, 38.269943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070168, 34.674316, 38.243523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056513, -0.087477, 0.994562,
		-0.115479, -0.990041, -0.080518,
		0.991701, -0.110301, -0.066052,
		37.367680, 34.641228, 38.223705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827515, 34.071800, 38.688457>,  <36.673489, 34.718433, 38.269943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827515, 34.071800, 38.688457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155960, 34.298397, 38.660564>,  <37.353027, 34.434357, 38.643829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155960, 34.298397, 38.660564>,  <36.827515, 34.071800, 38.688457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155960, 34.298397, 38.660564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259071, -0.261052, 0.929911,
		0.508587, -0.781624, -0.361114,
		0.821110, 0.566495, -0.069728,
		37.402294, 34.468346, 38.639645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389954, 33.677834, 38.926552>,  <36.827515, 34.071800, 38.688457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389954, 33.677834, 38.926552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532822, 34.051041, 38.944038>,  <37.618542, 34.274963, 38.954529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532822, 34.051041, 38.944038>,  <37.389954, 33.677834, 38.926552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532822, 34.051041, 38.944038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211273, -0.126292, 0.969234,
		0.909833, -0.336942, -0.242228,
		0.357167, 0.933017, 0.043718,
		37.639973, 34.330944, 38.957153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064140, 33.616650, 39.228966>,  <37.389954, 33.677834, 38.926552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064140, 33.616650, 39.228966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980568, 34.003948, 39.283875>,  <37.930424, 34.236328, 39.316822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980568, 34.003948, 39.283875>,  <38.064140, 33.616650, 39.228966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980568, 34.003948, 39.283875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324606, -0.063751, 0.943698,
		0.922486, 0.241726, -0.300980,
		-0.208928, 0.968248, 0.137275,
		37.917889, 34.294422, 39.325058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591496, 33.782257, 39.703156>,  <38.064140, 33.616650, 39.228966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591496, 33.782257, 39.703156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303074, 34.058151, 39.729515>,  <38.130020, 34.223690, 39.745331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303074, 34.058151, 39.729515>,  <38.591496, 33.782257, 39.703156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303074, 34.058151, 39.729515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119094, 0.029679, 0.992439,
		0.682568, 0.723450, -0.103544,
		-0.721053, 0.689738, 0.065900,
		38.086758, 34.265072, 39.749287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913036, 34.230106, 40.120647>,  <38.591496, 33.782257, 39.703156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913036, 34.230106, 40.120647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523350, 34.316322, 40.147320>,  <38.289539, 34.368053, 40.163322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523350, 34.316322, 40.147320>,  <38.913036, 34.230106, 40.120647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523350, 34.316322, 40.147320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064676, -0.016330, 0.997773,
		0.216153, 0.976357, 0.001969,
		-0.974215, 0.215544, 0.066676,
		38.231087, 34.380985, 40.167324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882603, 34.703106, 40.644234>,  <38.913036, 34.230106, 40.120647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882603, 34.703106, 40.644234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512863, 34.555050, 40.607170>,  <38.291019, 34.466217, 40.584930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512863, 34.555050, 40.607170>,  <38.882603, 34.703106, 40.644234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512863, 34.555050, 40.607170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075592, -0.060390, 0.995308,
		-0.373996, 0.927012, 0.027841,
		-0.924344, -0.370137, -0.092661,
		38.235561, 34.444008, 40.579372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373638, 35.206619, 40.878834>,  <38.882603, 34.703106, 40.644234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373638, 35.206619, 40.878834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266861, 34.826302, 40.941738>,  <38.202793, 34.598110, 40.979481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266861, 34.826302, 40.941738>,  <38.373638, 35.206619, 40.878834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266861, 34.826302, 40.941738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014647, 0.159157, 0.987145,
		-0.963601, 0.265814, -0.028560,
		-0.266942, -0.950795, 0.157257,
		38.186779, 34.541061, 40.988914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254227, 35.279804, 41.602760>,  <38.373638, 35.206619, 40.878834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254227, 35.279804, 41.602760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170506, 34.899540, 41.511166>,  <38.120274, 34.671383, 41.456207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170506, 34.899540, 41.511166>,  <38.254227, 35.279804, 41.602760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170506, 34.899540, 41.511166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301458, -0.160037, 0.939953,
		-0.930224, 0.265763, -0.253089,
		-0.209301, -0.950662, -0.228986,
		38.107716, 34.614342, 41.442471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597809, 35.062138, 41.939114>,  <38.254227, 35.279804, 41.602760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597809, 35.062138, 41.939114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.801800, 34.725719, 41.866932>,  <37.924194, 34.523869, 41.823624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.801800, 34.725719, 41.866932>,  <37.597809, 35.062138, 41.939114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801800, 34.725719, 41.866932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212978, -0.326708, 0.920816,
		-0.833407, -0.431160, -0.345737,
		0.509974, -0.841049, -0.180453,
		37.954792, 34.473404, 41.812798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230900, 34.491623, 42.281834>,  <37.597809, 35.062138, 41.939114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230900, 34.491623, 42.281834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611034, 34.372986, 42.244106>,  <37.839115, 34.301804, 42.221470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611034, 34.372986, 42.244106>,  <37.230900, 34.491623, 42.281834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611034, 34.372986, 42.244106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007466, -0.281242, 0.959608,
		-0.311147, -0.912651, -0.265058,
		0.950333, -0.296600, -0.094322,
		37.896133, 34.284008, 42.215809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229862, 33.814663, 42.511299>,  <37.230900, 34.491623, 42.281834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229862, 33.814663, 42.511299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613968, 33.925129, 42.527420>,  <37.844433, 33.991409, 42.537090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613968, 33.925129, 42.527420>,  <37.229862, 33.814663, 42.511299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613968, 33.925129, 42.527420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103569, -0.486698, 0.867409,
		0.259164, -0.828768, -0.495961,
		0.960264, 0.276168, 0.040300,
		37.902046, 34.007980, 42.539509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454399, 33.384632, 42.917572>,  <37.229862, 33.814663, 42.511299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454399, 33.384632, 42.917572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761066, 33.640621, 42.938145>,  <37.945068, 33.794216, 42.950489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761066, 33.640621, 42.938145>,  <37.454399, 33.384632, 42.917572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761066, 33.640621, 42.938145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229296, -0.347751, 0.909117,
		0.599699, -0.685200, -0.413355,
		0.766671, 0.639978, 0.051432,
		37.991066, 33.832615, 42.953575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086975, 32.969906, 43.073643>,  <37.454399, 33.384632, 42.917572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086975, 32.969906, 43.073643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102604, 33.351677, 43.191998>,  <38.111980, 33.580738, 43.263008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102604, 33.351677, 43.191998>,  <38.086975, 32.969906, 43.073643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102604, 33.351677, 43.191998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215273, -0.297199, 0.930232,
		0.975772, 0.027346, -0.217075,
		0.039076, 0.954424, 0.295885,
		38.114326, 33.638004, 43.280762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736725, 33.072796, 43.408131>,  <38.086975, 32.969906, 43.073643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736725, 33.072796, 43.408131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476814, 33.342728, 43.548073>,  <38.320869, 33.504688, 43.632038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476814, 33.342728, 43.548073>,  <38.736725, 33.072796, 43.408131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476814, 33.342728, 43.548073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110279, -0.371701, 0.921779,
		0.752086, 0.637530, 0.167102,
		-0.649774, 0.674829, 0.349857,
		38.281883, 33.545177, 43.653030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125103, 33.507477, 43.873310>,  <38.736725, 33.072796, 43.408131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125103, 33.507477, 43.873310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.742741, 33.548538, 43.983368>,  <38.513321, 33.573174, 44.049400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.742741, 33.548538, 43.983368>,  <39.125103, 33.507477, 43.873310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742741, 33.548538, 43.983368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232168, -0.309563, 0.922100,
		0.179828, 0.945322, 0.272081,
		-0.955908, 0.102651, 0.275141,
		38.455967, 33.579334, 44.065910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164352, 33.672947, 44.521778>,  <39.125103, 33.507477, 43.873310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164352, 33.672947, 44.521778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770241, 33.606552, 44.505379>,  <38.533775, 33.566715, 44.495541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770241, 33.606552, 44.505379>,  <39.164352, 33.672947, 44.521778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770241, 33.606552, 44.505379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020477, -0.123510, 0.992132,
		-0.169744, 0.978363, 0.118292,
		-0.985275, -0.165986, -0.040999,
		38.474659, 33.556755, 44.493080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898872, 33.981194, 45.162048>,  <39.164352, 33.672947, 44.521778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898872, 33.981194, 45.162048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625126, 33.724606, 45.023392>,  <38.460876, 33.570652, 44.940197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625126, 33.724606, 45.023392>,  <38.898872, 33.981194, 45.162048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625126, 33.724606, 45.023392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000816, -0.476090, 0.879396,
		-0.729136, 0.601548, 0.326344,
		-0.684368, -0.641466, -0.346644,
		38.419815, 33.532166, 44.919399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.182724, 34.011028, 45.762917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178104, 33.671349, 45.551739>,  <38.175331, 33.467541, 45.425034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178104, 33.671349, 45.551739>,  <38.182724, 34.011028, 45.762917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178104, 33.671349, 45.551739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254251, -0.508131, 0.822897,
		-0.967069, 0.143737, -0.210040,
		-0.011553, -0.849201, -0.527944,
		38.174637, 33.416588, 45.393356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499298, 33.735817, 45.714294>,  <38.182724, 34.011028, 45.762917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499298, 33.735817, 45.714294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732197, 33.417667, 45.646919>,  <37.871937, 33.226780, 45.606495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732197, 33.417667, 45.646919>,  <37.499298, 33.735817, 45.714294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732197, 33.417667, 45.646919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524345, -0.525701, 0.669851,
		-0.621327, -0.301702, -0.723138,
		0.582250, -0.795370, -0.168436,
		37.906872, 33.179058, 45.596390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063683, 33.179295, 45.718678>,  <37.499298, 33.735817, 45.714294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063683, 33.179295, 45.718678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427418, 33.029472, 45.791130>,  <37.645660, 32.939579, 45.834602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427418, 33.029472, 45.791130>,  <37.063683, 33.179295, 45.718678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427418, 33.029472, 45.791130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386273, -0.598292, 0.702025,
		-0.154581, -0.708345, -0.688732,
		0.909339, -0.374559, 0.181130,
		37.700218, 32.917103, 45.845470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020569, 32.359600, 45.784157>,  <37.063683, 33.179295, 45.718678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020569, 32.359600, 45.784157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340797, 32.505020, 45.974697>,  <37.532936, 32.592274, 46.089020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340797, 32.505020, 45.974697>,  <37.020569, 32.359600, 45.784157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340797, 32.505020, 45.974697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256216, -0.510928, 0.820552,
		0.541696, -0.778961, -0.315887,
		0.800574, 0.363555, 0.476350,
		37.580971, 32.614086, 46.117603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209251, 31.844114, 46.197113>,  <37.020569, 32.359600, 45.784157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209251, 31.844114, 46.197113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403656, 32.143688, 46.377285>,  <37.520298, 32.323433, 46.485390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403656, 32.143688, 46.377285>,  <37.209251, 31.844114, 46.197113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403656, 32.143688, 46.377285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326158, -0.322726, 0.888521,
		0.810809, -0.578746, 0.087421,
		0.486015, 0.748933, 0.450432,
		37.549461, 32.368370, 46.512413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430428, 31.561481, 46.717606>,  <37.209251, 31.844114, 46.197113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430428, 31.561481, 46.717606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.455677, 31.948376, 46.815968>,  <37.470825, 32.180511, 46.874985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.455677, 31.948376, 46.815968>,  <37.430428, 31.561481, 46.717606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455677, 31.948376, 46.815968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211351, -0.227854, 0.950481,
		0.975370, -0.111967, 0.190045,
		0.063120, 0.967236, 0.245906,
		37.474613, 32.238548, 46.889740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741219, 31.578247, 47.380295>,  <37.430428, 31.561481, 46.717606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741219, 31.578247, 47.380295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612892, 31.956182, 47.353874>,  <37.535896, 32.182941, 47.338020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612892, 31.956182, 47.353874>,  <37.741219, 31.578247, 47.380295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612892, 31.956182, 47.353874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112531, 0.031220, 0.993158,
		0.940434, 0.326051, 0.096308,
		-0.320813, 0.944836, -0.066052,
		37.516647, 32.239632, 47.334057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187706, 32.024300, 47.712639>,  <37.741219, 31.578247, 47.380295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187706, 32.024300, 47.712639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.832294, 32.207790, 47.708824>,  <37.619049, 32.317886, 47.706535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.832294, 32.207790, 47.708824>,  <38.187706, 32.024300, 47.712639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832294, 32.207790, 47.708824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024962, 0.069083, 0.997299,
		0.458149, 0.885887, -0.072833,
		-0.888525, 0.458729, -0.009537,
		37.565739, 32.345409, 47.705963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244267, 32.574440, 48.211166>,  <38.187706, 32.024300, 47.712639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244267, 32.574440, 48.211166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849453, 32.516819, 48.182827>,  <37.612564, 32.482246, 48.165825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849453, 32.516819, 48.182827>,  <38.244267, 32.574440, 48.211166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849453, 32.516819, 48.182827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092949, 0.152995, 0.983846,
		-0.130882, 0.977672, -0.164400,
		-0.987031, -0.144048, -0.070849,
		37.553345, 32.473606, 48.161572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930897, 32.987442, 48.685150>,  <38.244267, 32.574440, 48.211166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930897, 32.987442, 48.685150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623726, 32.736485, 48.633518>,  <37.439423, 32.585911, 48.602539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623726, 32.736485, 48.633518>,  <37.930897, 32.987442, 48.685150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623726, 32.736485, 48.633518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141968, -0.029790, 0.989423,
		-0.624602, 0.778133, -0.066193,
		-0.767931, -0.627392, -0.129077,
		37.393345, 32.548267, 48.594795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432598, 33.250912, 49.096020>,  <37.930897, 32.987442, 48.685150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432598, 33.250912, 49.096020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310902, 32.874371, 49.037647>,  <37.237885, 32.648445, 49.002625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310902, 32.874371, 49.037647>,  <37.432598, 33.250912, 49.096020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310902, 32.874371, 49.037647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143641, -0.106111, 0.983925,
		-0.941702, 0.320316, -0.102933,
		-0.304245, -0.941349, -0.145936,
		37.219627, 32.591965, 48.993866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663097, 33.142426, 49.318035>,  <37.432598, 33.250912, 49.096020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663097, 33.142426, 49.318035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855129, 32.792660, 49.346115>,  <36.970348, 32.582802, 49.362965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855129, 32.792660, 49.346115>,  <36.663097, 33.142426, 49.318035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855129, 32.792660, 49.346115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385343, -0.138321, 0.912348,
		-0.788057, -0.465050, -0.403354,
		0.480079, -0.874412, 0.070199,
		36.999153, 32.530334, 49.367176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177692, 32.691746, 49.700680>,  <36.663097, 33.142426, 49.318035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177692, 32.691746, 49.700680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505470, 32.462482, 49.700363>,  <36.702137, 32.324924, 49.700172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505470, 32.462482, 49.700363>,  <36.177692, 32.691746, 49.700680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505470, 32.462482, 49.700363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298331, -0.427706, 0.853268,
		-0.489397, -0.698969, -0.521473,
		0.819445, -0.573158, -0.000794,
		36.751305, 32.290535, 49.700127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947582, 32.079765, 49.786015>,  <36.177692, 32.691746, 49.700680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947582, 32.079765, 49.786015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.332848, 32.024506, 49.878304>,  <36.564007, 31.991348, 49.933678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.332848, 32.024506, 49.878304>,  <35.947582, 32.079765, 49.786015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332848, 32.024506, 49.878304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267248, -0.587314, 0.763963,
		0.029964, -0.797481, -0.602600,
		0.963162, -0.138152, 0.230724,
		36.621796, 31.983059, 49.947521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031441, 31.395002, 49.712963>,  <35.947582, 32.079765, 49.786015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031441, 31.395002, 49.712963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303226, 31.553595, 49.959904>,  <36.466297, 31.648750, 50.108070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303226, 31.553595, 49.959904>,  <36.031441, 31.395002, 49.712963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303226, 31.553595, 49.959904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093172, -0.787983, 0.608606,
		0.727767, -0.471048, -0.498467,
		0.679467, 0.396480, 0.617356,
		36.507065, 31.672539, 50.145111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468761, 30.816473, 49.814148>,  <36.031441, 31.395002, 49.712963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468761, 30.816473, 49.814148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522415, 31.077707, 50.112274>,  <36.554607, 31.234447, 50.291149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522415, 31.077707, 50.112274>,  <36.468761, 30.816473, 49.814148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522415, 31.077707, 50.112274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181188, -0.723267, 0.666375,
		0.974258, -0.224426, 0.021315,
		0.134135, 0.653083, 0.745312,
		36.562656, 31.273632, 50.335869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807808, 30.433184, 50.279099>,  <36.468761, 30.816473, 49.814148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807808, 30.433184, 50.279099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710636, 30.740339, 50.516190>,  <36.652332, 30.924633, 50.658443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710636, 30.740339, 50.516190>,  <36.807808, 30.433184, 50.279099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710636, 30.740339, 50.516190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264302, -0.640313, 0.721210,
		0.933343, 0.018545, 0.358507,
		-0.242932, 0.767890, 0.592730,
		36.637756, 30.970707, 50.694008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999542, 30.241499, 50.987103>,  <36.807808, 30.433184, 50.279099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999542, 30.241499, 50.987103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726143, 30.527472, 51.046021>,  <36.562103, 30.699055, 51.081371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726143, 30.527472, 51.046021>,  <36.999542, 30.241499, 50.987103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726143, 30.527472, 51.046021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206309, -0.382767, 0.900514,
		0.700187, 0.585115, 0.409119,
		-0.683502, 0.714933, 0.147294,
		36.521091, 30.741951, 51.090210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214264, 30.354090, 51.658558>,  <36.999542, 30.241499, 50.987103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214264, 30.354090, 51.658558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855232, 30.518124, 51.593826>,  <36.639812, 30.616545, 51.554989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855232, 30.518124, 51.593826>,  <37.214264, 30.354090, 51.658558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855232, 30.518124, 51.593826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275378, -0.234861, 0.932206,
		0.344276, 0.881289, 0.323734,
		-0.897575, 0.410085, -0.161830,
		36.585960, 30.641150, 51.545277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073948, 30.789673, 52.140713>,  <37.214264, 30.354090, 51.658558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073948, 30.789673, 52.140713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727688, 30.637630, 52.010380>,  <36.519932, 30.546404, 51.932178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727688, 30.637630, 52.010380>,  <37.073948, 30.789673, 52.140713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727688, 30.637630, 52.010380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281002, -0.169754, 0.944575,
		-0.414352, 0.909232, 0.040137,
		-0.865650, -0.380107, -0.325834,
		36.467991, 30.523598, 51.912628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589520, 30.912029, 52.695824>,  <37.073948, 30.789673, 52.140713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589520, 30.912029, 52.695824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391235, 30.658104, 52.458748>,  <36.272266, 30.505749, 52.316502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391235, 30.658104, 52.458748>,  <36.589520, 30.912029, 52.695824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391235, 30.658104, 52.458748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399640, -0.439168, 0.804624,
		-0.771078, 0.635723, -0.035998,
		-0.495709, -0.634813, -0.592693,
		36.242523, 30.467659, 52.280941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872269, 30.877249, 52.928684>,  <36.589520, 30.912029, 52.695824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872269, 30.877249, 52.928684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913780, 30.544939, 52.709946>,  <35.938686, 30.345552, 52.578701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913780, 30.544939, 52.709946>,  <35.872269, 30.877249, 52.928684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913780, 30.544939, 52.709946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528571, -0.511815, 0.677243,
		-0.842521, 0.218764, -0.492240,
		0.103780, -0.830775, -0.546848,
		35.944916, 30.295706, 52.545891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232506, 30.533783, 52.993496>,  <35.872269, 30.877249, 52.928684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232506, 30.533783, 52.993496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485905, 30.240494, 52.894650>,  <35.637943, 30.064520, 52.835342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485905, 30.240494, 52.894650>,  <35.232506, 30.533783, 52.993496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485905, 30.240494, 52.894650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442503, -0.605310, 0.661657,
		-0.634729, -0.309803, -0.707914,
		0.633491, -0.733227, -0.247119,
		35.675953, 30.020527, 52.820515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845024, 29.891933, 53.103485>,  <35.232506, 30.533783, 52.993496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845024, 29.891933, 53.103485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235970, 29.808914, 53.087051>,  <35.470535, 29.759102, 53.077190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235970, 29.808914, 53.087051>,  <34.845024, 29.891933, 53.103485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235970, 29.808914, 53.087051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093068, -0.596109, 0.797491,
		-0.190007, -0.775614, -0.601931,
		0.977362, -0.207550, -0.041080,
		35.529179, 29.746649, 53.074726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575970, 30.371374, 52.697556>,  <34.845024, 29.891933, 53.103485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575970, 30.371374, 52.697556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176651, 30.394674, 52.698841>,  <33.937061, 30.408653, 52.699612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176651, 30.394674, 52.698841>,  <34.575970, 30.371374, 52.697556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176651, 30.394674, 52.698841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002855, 0.103724, -0.994602,
		-0.058268, -0.992899, -0.103714,
		-0.998297, 0.058249, 0.003210,
		33.877163, 30.412149, 52.699802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415115, 30.004805, 52.102200>,  <34.575970, 30.371374, 52.697556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415115, 30.004805, 52.102200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099045, 30.233236, 52.191193>,  <33.909405, 30.370295, 52.244587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099045, 30.233236, 52.191193>,  <34.415115, 30.004805, 52.102200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099045, 30.233236, 52.191193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053832, 0.296929, -0.953381,
		-0.610517, -0.765311, -0.203882,
		-0.790172, 0.571080, 0.222479,
		33.861992, 30.404560, 52.257935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978039, 29.812391, 51.675808>,  <34.415115, 30.004805, 52.102200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978039, 29.812391, 51.675808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861523, 30.182192, 51.774151>,  <33.791615, 30.404072, 51.833157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861523, 30.182192, 51.774151>,  <33.978039, 29.812391, 51.675808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861523, 30.182192, 51.774151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105344, 0.224440, -0.968777,
		-0.950817, -0.308094, 0.032014,
		-0.291289, 0.924503, 0.245857,
		33.774136, 30.459543, 51.847908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438496, 29.927431, 51.214920>,  <33.978039, 29.812391, 51.675808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438496, 29.927431, 51.214920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.492809, 30.290743, 51.373203>,  <33.525398, 30.508730, 51.468174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.492809, 30.290743, 51.373203>,  <33.438496, 29.927431, 51.214920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492809, 30.290743, 51.373203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239608, 0.417660, -0.876441,
		-0.961327, 0.024192, 0.274344,
		0.135785, 0.908281, 0.395712,
		33.533546, 30.563227, 51.491917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837265, 30.388384, 50.962769>,  <33.438496, 29.927431, 51.214920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837265, 30.388384, 50.962769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.168705, 30.583420, 51.072811>,  <33.367569, 30.700441, 51.138836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.168705, 30.583420, 51.072811>,  <32.837265, 30.388384, 50.962769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168705, 30.583420, 51.072811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089752, 0.369351, -0.924945,
		-0.552605, 0.791098, 0.262281,
		0.828597, 0.487589, 0.275108,
		33.417286, 30.729696, 51.155342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837437, 30.780699, 50.446613>,  <32.837265, 30.388384, 50.962769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837437, 30.780699, 50.446613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.195812, 30.854330, 50.608311>,  <33.410839, 30.898508, 50.705330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.195812, 30.854330, 50.608311>,  <32.837437, 30.780699, 50.446613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195812, 30.854330, 50.608311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351428, 0.262817, -0.898569,
		-0.271648, 0.947123, 0.170777,
		0.895938, 0.184079, 0.404239,
		33.464592, 30.909554, 50.729584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062538, 31.496021, 50.162533>,  <32.837437, 30.780699, 50.446613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062538, 31.496021, 50.162533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387741, 31.299913, 50.288170>,  <33.582863, 31.182249, 50.363552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387741, 31.299913, 50.288170>,  <33.062538, 31.496021, 50.162533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387741, 31.299913, 50.288170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500236, 0.312090, -0.807690,
		0.297959, 0.813780, 0.498982,
		0.813009, -0.490267, 0.314092,
		33.631645, 31.152834, 50.382397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540131, 31.902430, 50.050152>,  <33.062538, 31.496021, 50.162533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540131, 31.902430, 50.050152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736835, 31.554399, 50.063660>,  <33.854858, 31.345581, 50.071766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736835, 31.554399, 50.063660>,  <33.540131, 31.902430, 50.050152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736835, 31.554399, 50.063660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370119, 0.173765, -0.912588,
		0.788153, 0.461273, 0.407482,
		0.491758, -0.870076, 0.033773,
		33.884361, 31.293377, 50.073792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162834, 32.027039, 49.881157>,  <33.540131, 31.902430, 50.050152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162834, 32.027039, 49.881157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141087, 31.634741, 49.806122>,  <34.128036, 31.399363, 49.761101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141087, 31.634741, 49.806122>,  <34.162834, 32.027039, 49.881157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141087, 31.634741, 49.806122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459395, 0.142236, -0.876770,
		0.886566, -0.133849, 0.442814,
		-0.054371, -0.980741, -0.187591,
		34.124775, 31.340519, 49.749844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812534, 31.824800, 49.875275>,  <34.162834, 32.027039, 49.881157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812534, 31.824800, 49.875275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596169, 31.564859, 49.661694>,  <34.466351, 31.408895, 49.533546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596169, 31.564859, 49.661694>,  <34.812534, 31.824800, 49.875275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596169, 31.564859, 49.661694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676661, 0.040822, -0.735162,
		0.499545, -0.758963, 0.417650,
		-0.540911, -0.649854, -0.533952,
		34.433895, 31.369904, 49.501507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302826, 31.553921, 49.439877>,  <34.812534, 31.824800, 49.875275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302826, 31.553921, 49.439877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952576, 31.432247, 49.289810>,  <34.742424, 31.359243, 49.199772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952576, 31.432247, 49.289810>,  <35.302826, 31.553921, 49.439877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952576, 31.432247, 49.289810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287810, 0.295164, -0.911067,
		0.387868, -0.905731, -0.170906,
		-0.875627, -0.304186, -0.375163,
		34.689888, 31.340992, 49.177261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514008, 31.239519, 48.867672>,  <35.302826, 31.553921, 49.439877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514008, 31.239519, 48.867672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124783, 31.299263, 48.797432>,  <34.891247, 31.335110, 48.755287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124783, 31.299263, 48.797432>,  <35.514008, 31.239519, 48.867672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124783, 31.299263, 48.797432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201363, 0.179829, -0.962868,
		-0.112237, -0.972292, -0.205061,
		-0.973065, 0.149362, -0.175600,
		34.832863, 31.344070, 48.744751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417282, 30.953047, 48.248814>,  <35.514008, 31.239519, 48.867672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417282, 30.953047, 48.248814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127422, 31.227972, 48.268745>,  <34.953506, 31.392927, 48.280704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127422, 31.227972, 48.268745>,  <35.417282, 30.953047, 48.248814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127422, 31.227972, 48.268745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158635, 0.236740, -0.958535,
		-0.670610, -0.686697, -0.280585,
		-0.724649, 0.687314, 0.049826,
		34.910027, 31.434166, 48.283695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991802, 30.861618, 47.639122>,  <35.417282, 30.953047, 48.248814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991802, 30.861618, 47.639122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920979, 31.225639, 47.789028>,  <34.878483, 31.444054, 47.878971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920979, 31.225639, 47.789028>,  <34.991802, 30.861618, 47.639122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920979, 31.225639, 47.789028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071707, 0.391697, -0.917296,
		-0.981584, -0.135546, -0.134613,
		-0.177063, 0.910056, 0.374763,
		34.867859, 31.498655, 47.901459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605305, 31.167835, 47.232430>,  <34.991802, 30.861618, 47.639122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605305, 31.167835, 47.232430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750870, 31.492716, 47.414814>,  <34.838207, 31.687643, 47.524242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750870, 31.492716, 47.414814>,  <34.605305, 31.167835, 47.232430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750870, 31.492716, 47.414814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049931, 0.505832, -0.861186,
		-0.930094, 0.290630, 0.224633,
		0.363913, 0.812200, 0.455959,
		34.860043, 31.736376, 47.551601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219322, 31.669006, 46.959599>,  <34.605305, 31.167835, 47.232430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219322, 31.669006, 46.959599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.499187, 31.872274, 47.160488>,  <34.667107, 31.994236, 47.281021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.499187, 31.872274, 47.160488>,  <34.219322, 31.669006, 46.959599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499187, 31.872274, 47.160488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050478, 0.736336, -0.674731,
		-0.712687, 0.446734, 0.540839,
		0.699664, 0.508172, 0.502226,
		34.709087, 32.024727, 47.311157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915012, 32.291882, 47.116550>,  <34.219322, 31.669006, 46.959599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915012, 32.291882, 47.116550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311764, 32.321388, 47.075111>,  <34.549816, 32.339092, 47.050247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311764, 32.321388, 47.075111>,  <33.915012, 32.291882, 47.116550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311764, 32.321388, 47.075111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127109, 0.549287, -0.825910,
		-0.004018, 0.832372, 0.554203,
		0.991881, 0.073763, -0.103594,
		34.609329, 32.343517, 47.044033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986092, 32.862122, 46.857403>,  <33.915012, 32.291882, 47.116550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986092, 32.862122, 46.857403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356064, 32.738361, 46.769058>,  <34.578045, 32.664104, 46.716053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356064, 32.738361, 46.769058>,  <33.986092, 32.862122, 46.857403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356064, 32.738361, 46.769058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005037, 0.590916, -0.806717,
		0.380109, 0.745043, 0.548114,
		0.924928, -0.309401, -0.220859,
		34.633541, 32.645542, 46.702801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307770, 33.386269, 46.709091>,  <33.986092, 32.862122, 46.857403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307770, 33.386269, 46.709091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.544971, 33.108910, 46.545364>,  <34.687294, 32.942493, 46.447128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.544971, 33.108910, 46.545364>,  <34.307770, 33.386269, 46.709091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544971, 33.108910, 46.545364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003927, 0.505853, -0.862611,
		0.805188, 0.513141, 0.297252,
		0.593007, -0.693396, -0.409322,
		34.722874, 32.900890, 46.422569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809616, 33.803299, 46.378014>,  <34.307770, 33.386269, 46.709091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809616, 33.803299, 46.378014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801479, 33.435833, 46.220211>,  <34.796597, 33.215351, 46.125530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801479, 33.435833, 46.220211>,  <34.809616, 33.803299, 46.378014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801479, 33.435833, 46.220211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068681, 0.394943, -0.916135,
		0.997431, 0.008455, -0.071131,
		-0.020346, -0.918667, -0.394509,
		34.795376, 33.160233, 46.101860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.807888, 25.886736, 33.808327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.427223, 25.830107, 33.917358>,  <41.198826, 25.796129, 33.982777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.427223, 25.830107, 33.917358>,  <41.807888, 25.886736, 33.808327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427223, 25.830107, 33.917358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177755, 0.977583, -0.112852,
		-0.250493, -0.155849, -0.955492,
		-0.951660, -0.141575, 0.272581,
		41.141724, 25.787634, 33.999134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505753, 26.372793, 33.375954>,  <41.807888, 25.886736, 33.808327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505753, 26.372793, 33.375954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.226307, 26.282921, 33.647678>,  <41.058640, 26.228996, 33.810711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.226307, 26.282921, 33.647678>,  <41.505753, 26.372793, 33.375954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226307, 26.282921, 33.647678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235286, 0.968755, 0.078445,
		-0.675709, -0.105029, -0.729648,
		-0.698611, -0.224682, 0.679309,
		41.016724, 26.215517, 33.851471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826267, 26.664118, 33.153473>,  <41.505753, 26.372793, 33.375954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826267, 26.664118, 33.153473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797832, 26.617243, 33.549698>,  <40.780769, 26.589117, 33.787434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797832, 26.617243, 33.549698>,  <40.826267, 26.664118, 33.153473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797832, 26.617243, 33.549698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160222, 0.981521, 0.104621,
		-0.984518, -0.151273, -0.088552,
		-0.071089, -0.117189, 0.990562,
		40.776505, 26.582087, 33.846867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211498, 27.014658, 33.391998>,  <40.826267, 26.664118, 33.153473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211498, 27.014658, 33.391998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452694, 26.981022, 33.709320>,  <40.597412, 26.960840, 33.899712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452694, 26.981022, 33.709320>,  <40.211498, 27.014658, 33.391998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452694, 26.981022, 33.709320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066319, 0.985703, 0.154894,
		-0.794987, -0.146011, 0.588793,
		0.602991, -0.084091, 0.793304,
		40.633591, 26.955795, 33.947311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884483, 27.410549, 34.022743>,  <40.211498, 27.014658, 33.391998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884483, 27.410549, 34.022743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.268581, 27.395405, 34.133373>,  <40.499043, 27.386318, 34.199749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.268581, 27.395405, 34.133373>,  <39.884483, 27.410549, 34.022743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268581, 27.395405, 34.133373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037077, 0.999280, 0.008056,
		-0.276677, 0.002519, 0.960960,
		0.960247, -0.037859, 0.276571,
		40.556656, 27.384047, 34.216343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953022, 27.766670, 34.582977>,  <39.884483, 27.410549, 34.022743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953022, 27.766670, 34.582977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.335819, 27.768141, 34.466946>,  <40.565498, 27.769022, 34.397327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.335819, 27.768141, 34.466946>,  <39.953022, 27.766670, 34.582977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335819, 27.768141, 34.466946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065468, 0.971391, 0.228285,
		0.282620, -0.237458, 0.929376,
		0.956995, 0.003674, -0.290081,
		40.622917, 27.769243, 34.379921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365650, 28.022278, 35.176521>,  <39.953022, 27.766670, 34.582977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365650, 28.022278, 35.176521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.539158, 28.071505, 34.819489>,  <40.643265, 28.101042, 34.605270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.539158, 28.071505, 34.819489>,  <40.365650, 28.022278, 35.176521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539158, 28.071505, 34.819489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058147, 0.984739, 0.164034,
		0.899144, -0.123054, 0.419998,
		0.433773, 0.123068, -0.892578,
		40.669289, 28.108425, 34.551716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614250, 28.727776, 35.311569>,  <40.365650, 28.022278, 35.176521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614250, 28.727776, 35.311569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.736420, 28.688240, 34.932739>,  <40.809723, 28.664518, 34.705441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.736420, 28.688240, 34.932739>,  <40.614250, 28.727776, 35.311569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736420, 28.688240, 34.932739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282335, 0.959273, -0.009060,
		0.909397, -0.264625, 0.320889,
		0.305423, -0.098837, -0.947073,
		40.828045, 28.658588, 34.648617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361687, 28.946417, 35.256233>,  <40.614250, 28.727776, 35.311569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361687, 28.946417, 35.256233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.168625, 28.995596, 34.909378>,  <41.052788, 29.025105, 34.701267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.168625, 28.995596, 34.909378>,  <41.361687, 28.946417, 35.256233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168625, 28.995596, 34.909378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254974, 0.966936, -0.004822,
		0.837872, -0.223424, -0.498049,
		-0.482658, 0.122949, -0.867136,
		41.023827, 29.032480, 34.649239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552139, 29.534382, 35.129616>,  <41.361687, 28.946417, 35.256233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552139, 29.534382, 35.129616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264717, 29.505075, 34.852978>,  <41.092262, 29.487492, 34.686993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264717, 29.505075, 34.852978>,  <41.552139, 29.534382, 35.129616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264717, 29.505075, 34.852978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021884, 0.991561, -0.127777,
		0.695124, -0.106950, -0.710889,
		-0.718557, -0.073264, -0.691599,
		41.049149, 29.483097, 34.645496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860401, 29.587973, 34.403107>,  <41.552139, 29.534382, 35.129616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860401, 29.587973, 34.403107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.477528, 29.703535, 34.395889>,  <41.247803, 29.772873, 34.391560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.477528, 29.703535, 34.395889>,  <41.860401, 29.587973, 34.403107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477528, 29.703535, 34.395889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288819, 0.957356, 0.007246,
		0.019366, 0.001725, -0.999811,
		-0.957188, 0.288905, -0.018042,
		41.190372, 29.790207, 34.390476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903000, 30.245909, 34.197941>,  <41.860401, 29.587973, 34.403107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903000, 30.245909, 34.197941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523586, 30.241192, 34.324520>,  <41.295937, 30.238361, 34.400467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523586, 30.241192, 34.324520>,  <41.903000, 30.245909, 34.197941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523586, 30.241192, 34.324520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040016, 0.986833, 0.156716,
		-0.314126, 0.161314, -0.935576,
		-0.948538, -0.011790, 0.316445,
		41.239025, 30.237656, 34.419453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520924, 30.698828, 33.803604>,  <41.903000, 30.245909, 34.197941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520924, 30.698828, 33.803604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.323112, 30.671804, 34.150219>,  <41.204426, 30.655590, 34.358189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.323112, 30.671804, 34.150219>,  <41.520924, 30.698828, 33.803604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323112, 30.671804, 34.150219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039537, 0.994194, 0.100075,
		-0.868264, 0.083750, -0.488982,
		-0.494524, -0.067559, 0.866534,
		41.174755, 30.651537, 34.410179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192032, 31.304939, 33.825920>,  <41.520924, 30.698828, 33.803604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192032, 31.304939, 33.825920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178684, 31.174925, 34.203964>,  <41.170677, 31.096916, 34.430790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178684, 31.174925, 34.203964>,  <41.192032, 31.304939, 33.825920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178684, 31.174925, 34.203964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040590, 0.944419, 0.326230,
		-0.998619, 0.049248, -0.018319,
		-0.033367, -0.325036, 0.945113,
		41.168674, 31.077414, 34.487499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705467, 31.774132, 34.111595>,  <41.192032, 31.304939, 33.825920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705467, 31.774132, 34.111595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877914, 31.617937, 34.436962>,  <40.981384, 31.524221, 34.632183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877914, 31.617937, 34.436962>,  <40.705467, 31.774132, 34.111595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877914, 31.617937, 34.436962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177794, 0.920594, 0.347701,
		-0.884604, -0.005280, 0.466314,
		0.431122, -0.390485, 0.813422,
		41.007252, 31.500792, 34.680988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433640, 32.236702, 34.652271>,  <40.705467, 31.774132, 34.111595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433640, 32.236702, 34.652271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786331, 32.094589, 34.776424>,  <40.997944, 32.009323, 34.850914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786331, 32.094589, 34.776424>,  <40.433640, 32.236702, 34.652271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786331, 32.094589, 34.776424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281009, 0.923993, 0.259367,
		-0.378935, -0.141472, 0.914546,
		0.881727, -0.355279, 0.310379,
		41.050850, 31.988005, 34.869537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480392, 32.407906, 35.375744>,  <40.433640, 32.236702, 34.652271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480392, 32.407906, 35.375744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.852676, 32.346882, 35.242775>,  <41.076046, 32.310268, 35.162994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.852676, 32.346882, 35.242775>,  <40.480392, 32.407906, 35.375744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852676, 32.346882, 35.242775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290342, 0.860898, 0.417800,
		0.222444, -0.485367, 0.845540,
		0.930710, -0.152559, -0.332424,
		41.131889, 32.301113, 35.143047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855358, 32.670170, 35.914711>,  <40.480392, 32.407906, 35.375744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855358, 32.670170, 35.914711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126671, 32.657257, 35.621071>,  <41.289459, 32.649509, 35.444889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126671, 32.657257, 35.621071>,  <40.855358, 32.670170, 35.914711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126671, 32.657257, 35.621071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420995, 0.835883, 0.352225,
		0.602248, -0.547957, 0.580552,
		0.678278, -0.032283, -0.734096,
		41.330154, 32.647572, 35.400841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518105, 32.875439, 36.260624>,  <40.855358, 32.670170, 35.914711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518105, 32.875439, 36.260624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579018, 32.921059, 35.867931>,  <41.615566, 32.948429, 35.632317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579018, 32.921059, 35.867931>,  <41.518105, 32.875439, 36.260624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579018, 32.921059, 35.867931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715571, 0.672454, 0.189114,
		0.681740, -0.731299, 0.020794,
		0.152282, 0.114048, -0.981734,
		41.624702, 32.955273, 35.573410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338455, 32.868748, 36.168846>,  <41.518105, 32.875439, 36.260624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338455, 32.868748, 36.168846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.160645, 33.044609, 35.856667>,  <42.053959, 33.150127, 35.669357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.160645, 33.044609, 35.856667>,  <42.338455, 32.868748, 36.168846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160645, 33.044609, 35.856667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733078, 0.679249, -0.034904,
		0.514772, -0.587644, -0.624247,
		-0.444530, 0.439654, -0.780447,
		42.027287, 33.176506, 35.622532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842709, 33.007774, 35.783512>,  <42.338455, 32.868748, 36.168846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842709, 33.007774, 35.783512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575840, 33.285942, 35.676723>,  <42.415718, 33.452843, 35.612652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575840, 33.285942, 35.676723>,  <42.842709, 33.007774, 35.783512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575840, 33.285942, 35.676723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722399, 0.691464, -0.004129,
		0.181728, -0.195612, -0.963696,
		-0.667169, 0.695423, -0.266968,
		42.375690, 33.494568, 35.596634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151299, 33.348366, 35.297428>,  <42.842709, 33.007774, 35.783512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151299, 33.348366, 35.297428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865643, 33.594280, 35.431313>,  <42.694248, 33.741829, 35.511642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865643, 33.594280, 35.431313>,  <43.151299, 33.348366, 35.297428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865643, 33.594280, 35.431313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639510, 0.767455, -0.045172,
		-0.284650, 0.181795, -0.941236,
		-0.714144, 0.614788, 0.334716,
		42.651398, 33.778717, 35.531727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408192, 33.331783, 34.521683>,  <43.151299, 33.348366, 35.297428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408192, 33.331783, 34.521683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.791088, 33.237225, 34.454979>,  <44.020824, 33.180489, 34.414959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.791088, 33.237225, 34.454979>,  <43.408192, 33.331783, 34.521683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791088, 33.237225, 34.454979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289232, -0.793831, -0.534955,
		-0.005918, 0.560313, -0.828260,
		0.957241, -0.236393, -0.166758,
		44.078259, 33.166306, 34.404953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498909, 33.332493, 33.842564>,  <43.408192, 33.331783, 34.521683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498909, 33.332493, 33.842564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.807552, 33.108452, 33.963165>,  <43.992737, 32.974026, 34.035526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.807552, 33.108452, 33.963165>,  <43.498909, 33.332493, 33.842564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807552, 33.108452, 33.963165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411908, -0.801154, -0.434147,
		0.484721, 0.210798, -0.848887,
		0.771607, -0.560103, 0.301507,
		44.039036, 32.940422, 34.053616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635994, 32.861385, 33.295609>,  <43.498909, 33.332493, 33.842564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635994, 32.861385, 33.295609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.843544, 32.668957, 33.578266>,  <43.968075, 32.553501, 33.747860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.843544, 32.668957, 33.578266>,  <43.635994, 32.861385, 33.295609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843544, 32.668957, 33.578266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204845, -0.872513, -0.443576,
		0.829943, 0.085409, -0.551271,
		0.518877, -0.481068, 0.706641,
		43.999207, 32.524635, 33.790257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202187, 32.383797, 32.944733>,  <43.635994, 32.861385, 33.295609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202187, 32.383797, 32.944733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.176533, 32.257645, 33.323452>,  <44.161140, 32.181953, 33.550682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.176533, 32.257645, 33.323452>,  <44.202187, 32.383797, 32.944733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176533, 32.257645, 33.323452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099218, -0.946065, -0.308412,
		0.992997, 0.074159, 0.091969,
		-0.064137, -0.315377, 0.946797,
		44.157291, 32.163033, 33.607491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743431, 31.969830, 33.010086>,  <44.202187, 32.383797, 32.944733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743431, 31.969830, 33.010086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504787, 31.838278, 33.302906>,  <44.361599, 31.759346, 33.478596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504787, 31.838278, 33.302906>,  <44.743431, 31.969830, 33.010086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504787, 31.838278, 33.302906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249099, -0.943009, -0.220642,
		0.762892, 0.050715, 0.644534,
		-0.596612, -0.328879, 0.732047,
		44.325806, 31.739614, 33.522522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.073486, 31.413960, 33.452118>,  <44.743431, 31.969830, 33.010086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.073486, 31.413960, 33.452118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684551, 31.350378, 33.520569>,  <44.451191, 31.312229, 33.561638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684551, 31.350378, 33.520569>,  <45.073486, 31.413960, 33.452118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684551, 31.350378, 33.520569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160754, -0.986989, -0.003387,
		0.169438, 0.024216, 0.985243,
		-0.972342, -0.158956, 0.171126,
		44.392849, 31.302691, 33.571907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051300, 30.810162, 33.850346>,  <45.073486, 31.413960, 33.452118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051300, 30.810162, 33.850346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.680573, 30.848995, 33.705250>,  <44.458138, 30.872295, 33.618191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.680573, 30.848995, 33.705250>,  <45.051300, 30.810162, 33.850346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680573, 30.848995, 33.705250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086638, -0.995223, -0.044995,
		-0.365375, -0.010275, 0.930803,
		-0.926820, 0.097083, -0.362740,
		44.402527, 30.878120, 33.596428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614491, 30.389860, 34.237461>,  <45.051300, 30.810162, 33.850346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614491, 30.389860, 34.237461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425068, 30.447630, 33.889923>,  <44.311413, 30.482292, 33.681400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425068, 30.447630, 33.889923>,  <44.614491, 30.389860, 34.237461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425068, 30.447630, 33.889923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079484, -0.989447, -0.121150,
		-0.877170, 0.011688, 0.480038,
		-0.473556, 0.144424, -0.868842,
		44.283001, 30.490957, 33.629269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161823, 29.829470, 34.228474>,  <44.614491, 30.389860, 34.237461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161823, 29.829470, 34.228474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180202, 29.957304, 33.849895>,  <44.191231, 30.034004, 33.622749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180202, 29.957304, 33.849895>,  <44.161823, 29.829470, 34.228474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180202, 29.957304, 33.849895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033318, -0.947407, -0.318292,
		-0.998388, -0.016909, -0.054178,
		0.045947, 0.319584, -0.946443,
		44.193985, 30.053179, 33.565964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524261, 29.527140, 33.854805>,  <44.161823, 29.829470, 34.228474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524261, 29.527140, 33.854805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767654, 29.636721, 33.556892>,  <43.913689, 29.702469, 33.378143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767654, 29.636721, 33.556892>,  <43.524261, 29.527140, 33.854805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767654, 29.636721, 33.556892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085205, -0.955651, -0.281907,
		-0.788980, 0.108076, -0.604838,
		0.608482, 0.273955, -0.744781,
		43.950199, 29.718906, 33.333458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243847, 29.378206, 33.200607>,  <43.524261, 29.527140, 33.854805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243847, 29.378206, 33.200607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637444, 29.396656, 33.131744>,  <43.873600, 29.407726, 33.090427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637444, 29.396656, 33.131744>,  <43.243847, 29.378206, 33.200607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637444, 29.396656, 33.131744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012224, -0.981123, -0.193000,
		-0.177805, 0.187806, -0.965978,
		0.983990, 0.046124, -0.172153,
		43.932640, 29.410494, 33.080097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279327, 29.052969, 32.638950>,  <43.243847, 29.378206, 33.200607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279327, 29.052969, 32.638950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.665554, 29.032263, 32.740925>,  <43.897289, 29.019840, 32.802109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.665554, 29.032263, 32.740925>,  <43.279327, 29.052969, 32.638950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665554, 29.032263, 32.740925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004929, -0.976186, -0.216878,
		0.260093, 0.210668, -0.942322,
		0.965571, -0.051764, 0.254938,
		43.955227, 29.016733, 32.817406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630760, 28.667427, 32.152706>,  <43.279327, 29.052969, 32.638950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630760, 28.667427, 32.152706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870777, 28.652531, 32.472347>,  <44.014790, 28.643593, 32.664131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870777, 28.652531, 32.472347>,  <43.630760, 28.667427, 32.152706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870777, 28.652531, 32.472347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106634, -0.986278, -0.126039,
		0.792827, 0.160840, -0.587840,
		0.600046, -0.037243, 0.799098,
		44.050793, 28.641357, 32.712078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225166, 28.148855, 31.877958>,  <43.630760, 28.667427, 32.152706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225166, 28.148855, 31.877958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.171169, 28.187393, 32.272419>,  <44.138771, 28.210516, 32.509094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.171169, 28.187393, 32.272419>,  <44.225166, 28.148855, 31.877958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171169, 28.187393, 32.272419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079128, -0.993131, 0.086197,
		0.987682, -0.066396, 0.141690,
		-0.134993, 0.096347, 0.986151,
		44.130672, 28.216297, 32.568264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617508, 27.659933, 32.168068>,  <44.225166, 28.148855, 31.877958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617508, 27.659933, 32.168068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349251, 27.752052, 32.450119>,  <44.188297, 27.807323, 32.619350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349251, 27.752052, 32.450119>,  <44.617508, 27.659933, 32.168068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349251, 27.752052, 32.450119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010909, -0.947419, 0.319809,
		0.741701, 0.222170, 0.632867,
		-0.670642, 0.230298, 0.705126,
		44.148060, 27.821142, 32.661655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735096, 27.246494, 32.758087>,  <44.617508, 27.659933, 32.168068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735096, 27.246494, 32.758087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368877, 27.378862, 32.849525>,  <44.149147, 27.458284, 32.904388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368877, 27.378862, 32.849525>,  <44.735096, 27.246494, 32.758087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368877, 27.378862, 32.849525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246520, -0.910802, 0.331161,
		0.317797, 0.246841, 0.915464,
		-0.915551, 0.330922, 0.228599,
		44.094212, 27.478140, 32.918106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586227, 27.064507, 33.440304>,  <44.735096, 27.246494, 32.758087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586227, 27.064507, 33.440304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220299, 27.103590, 33.283558>,  <44.000740, 27.127041, 33.189510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220299, 27.103590, 33.283558>,  <44.586227, 27.064507, 33.440304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220299, 27.103590, 33.283558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215187, -0.939016, 0.268223,
		-0.341755, 0.329699, 0.880058,
		-0.914821, 0.097711, -0.391861,
		43.945854, 27.132904, 33.166000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123024, 26.638557, 33.907433>,  <44.586227, 27.064507, 33.440304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123024, 26.638557, 33.907433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.897129, 26.699570, 33.583012>,  <43.761593, 26.736177, 33.388359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.897129, 26.699570, 33.583012>,  <44.123024, 26.638557, 33.907433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897129, 26.699570, 33.583012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265366, -0.964142, 0.003456,
		-0.781440, 0.217177, 0.584966,
		-0.564741, 0.152530, -0.811050,
		43.727707, 26.745329, 33.339695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488586, 26.312323, 34.040001>,  <44.123024, 26.638557, 33.907433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488586, 26.312323, 34.040001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499386, 26.356682, 33.642616>,  <43.505863, 26.383297, 33.404186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499386, 26.356682, 33.642616>,  <43.488586, 26.312323, 34.040001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499386, 26.356682, 33.642616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444540, -0.888818, -0.111295,
		-0.895352, 0.444640, 0.025303,
		0.026997, 0.110896, -0.993465,
		43.507484, 26.389950, 33.344578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831608, 26.058233, 33.797974>,  <43.488586, 26.312323, 34.040001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831608, 26.058233, 33.797974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095158, 26.058006, 33.497074>,  <43.253288, 26.057871, 33.316532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095158, 26.058006, 33.497074>,  <42.831608, 26.058233, 33.797974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095158, 26.058006, 33.497074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187519, -0.968556, -0.163513,
		-0.728504, 0.248796, -0.638265,
		0.658877, -0.000567, -0.752250,
		43.292820, 26.057837, 33.271400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.133831, 34.401035, 42.528049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750042, 34.288383, 42.532055>,  <38.519768, 34.220791, 42.534458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750042, 34.288383, 42.532055>,  <39.133831, 34.401035, 42.528049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750042, 34.288383, 42.532055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054655, 0.151093, -0.987007,
		0.276463, -0.947551, -0.160362,
		-0.959469, -0.281636, 0.010017,
		38.462200, 34.203892, 42.535061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059639, 33.808456, 42.083908>,  <39.133831, 34.401035, 42.528049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059639, 33.808456, 42.083908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693810, 33.967236, 42.114891>,  <38.474312, 34.062504, 42.133480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693810, 33.967236, 42.114891>,  <39.059639, 33.808456, 42.083908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693810, 33.967236, 42.114891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061873, 0.051939, -0.996732,
		-0.399669, -0.916372, -0.022942,
		-0.914569, 0.396943, 0.077457,
		38.419437, 34.086319, 42.138126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612156, 33.407742, 41.584988>,  <39.059639, 33.808456, 42.083908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612156, 33.407742, 41.584988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404758, 33.740238, 41.665192>,  <38.280319, 33.939735, 41.713314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404758, 33.740238, 41.665192>,  <38.612156, 33.407742, 41.584988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404758, 33.740238, 41.665192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198136, 0.111314, -0.973833,
		-0.831810, -0.544653, 0.106983,
		-0.518492, 0.831242, 0.200507,
		38.249210, 33.989609, 41.725346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021530, 33.323059, 41.273079>,  <38.612156, 33.407742, 41.584988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021530, 33.323059, 41.273079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068024, 33.719051, 41.305145>,  <38.095921, 33.956646, 41.324387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068024, 33.719051, 41.305145>,  <38.021530, 33.323059, 41.273079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068024, 33.719051, 41.305145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224381, 0.104803, -0.968849,
		-0.967545, 0.094623, 0.234315,
		0.116233, 0.989981, 0.080170,
		38.102894, 34.016045, 41.329197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361229, 33.569809, 40.997314>,  <38.021530, 33.323059, 41.273079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361229, 33.569809, 40.997314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650097, 33.845383, 40.972534>,  <37.823418, 34.010727, 40.957668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650097, 33.845383, 40.972534>,  <37.361229, 33.569809, 40.997314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650097, 33.845383, 40.972534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326893, 0.260986, -0.908310,
		-0.609602, 0.676203, 0.413684,
		0.722168, 0.688938, -0.061949,
		37.866749, 34.052063, 40.953949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037453, 33.881462, 40.528599>,  <37.361229, 33.569809, 40.997314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037453, 33.881462, 40.528599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383469, 34.081078, 40.549267>,  <37.591080, 34.200848, 40.561668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383469, 34.081078, 40.549267>,  <37.037453, 33.881462, 40.528599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383469, 34.081078, 40.549267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185016, 0.413035, -0.891723,
		-0.466340, 0.761818, 0.449622,
		0.865041, 0.499034, 0.051666,
		37.642982, 34.230789, 40.564766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961533, 34.498539, 40.220222>,  <37.037453, 33.881462, 40.528599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961533, 34.498539, 40.220222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361523, 34.495663, 40.220592>,  <37.601517, 34.493938, 40.220814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361523, 34.495663, 40.220592>,  <36.961533, 34.498539, 40.220222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361523, 34.495663, 40.220592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003148, 0.315415, -0.948949,
		0.006528, 0.948927, 0.315430,
		0.999974, -0.007188, 0.000928,
		37.661514, 34.493507, 40.220871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224396, 35.208435, 39.909607>,  <36.961533, 34.498539, 40.220222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224396, 35.208435, 39.909607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512054, 34.935654, 39.856289>,  <37.684650, 34.771984, 39.824299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512054, 34.935654, 39.856289>,  <37.224396, 35.208435, 39.909607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512054, 34.935654, 39.856289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031177, 0.159975, -0.986629,
		0.694156, 0.713689, 0.093785,
		0.719150, -0.681950, -0.133298,
		37.727798, 34.731068, 39.816299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680916, 35.544353, 39.583866>,  <37.224396, 35.208435, 39.909607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680916, 35.544353, 39.583866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758327, 35.157555, 39.517570>,  <37.804775, 34.925476, 39.477795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758327, 35.157555, 39.517570>,  <37.680916, 35.544353, 39.583866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758327, 35.157555, 39.517570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019128, 0.172616, -0.984804,
		0.980908, 0.187417, 0.051903,
		0.193529, -0.966995, -0.165735,
		37.816387, 34.867455, 39.467850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161991, 35.519005, 39.107796>,  <37.680916, 35.544353, 39.583866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161991, 35.519005, 39.107796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970013, 35.169910, 39.072052>,  <37.854824, 34.960453, 39.050606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970013, 35.169910, 39.072052>,  <38.161991, 35.519005, 39.107796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970013, 35.169910, 39.072052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045936, 0.076721, -0.995994,
		0.876096, -0.482127, 0.003269,
		-0.479945, -0.872736, -0.089362,
		37.826031, 34.908089, 39.045242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525089, 35.163124, 38.614201>,  <38.161991, 35.519005, 39.107796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525089, 35.163124, 38.614201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188030, 34.947807, 38.608662>,  <37.985794, 34.818619, 38.605339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188030, 34.947807, 38.608662>,  <38.525089, 35.163124, 38.614201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188030, 34.947807, 38.608662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030520, -0.022074, -0.999290,
		0.537601, -0.842472, 0.035029,
		-0.842647, -0.538288, -0.013845,
		37.935238, 34.786320, 38.604507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663757, 34.666355, 38.159695>,  <38.525089, 35.163124, 38.614201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663757, 34.666355, 38.159695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264553, 34.650734, 38.179527>,  <38.025032, 34.641361, 38.191425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264553, 34.650734, 38.179527>,  <38.663757, 34.666355, 38.159695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264553, 34.650734, 38.179527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047821, -0.044774, -0.997852,
		0.041184, -0.998234, 0.042817,
		-0.998007, -0.039048, 0.049580,
		37.965153, 34.639019, 38.194401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444874, 34.187412, 37.687630>,  <38.663757, 34.666355, 38.159695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444874, 34.187412, 37.687630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163826, 34.464241, 37.753799>,  <37.995197, 34.630337, 37.793503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163826, 34.464241, 37.753799>,  <38.444874, 34.187412, 37.687630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163826, 34.464241, 37.753799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081763, 0.152417, -0.984928,
		-0.706853, -0.705555, -0.050506,
		-0.702620, 0.692070, 0.165424,
		37.953041, 34.671864, 37.803425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593109, 33.845741, 36.943737>,  <38.444874, 34.187412, 37.687630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593109, 33.845741, 36.943737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634060, 33.647800, 36.598568>,  <38.658630, 33.529034, 36.391468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634060, 33.647800, 36.598568>,  <38.593109, 33.845741, 36.943737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634060, 33.647800, 36.598568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415788, -0.809356, 0.414805,
		-0.903681, 0.316326, -0.288615,
		0.102379, -0.494854, -0.862924,
		38.664772, 33.499344, 36.339691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880505, 33.679825, 36.764198>,  <38.593109, 33.845741, 36.943737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880505, 33.679825, 36.764198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186928, 33.437531, 36.678192>,  <38.370781, 33.292152, 36.626587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186928, 33.437531, 36.678192>,  <37.880505, 33.679825, 36.764198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186928, 33.437531, 36.678192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374147, -0.692226, 0.617120,
		-0.522653, -0.392304, -0.756922,
		0.766060, -0.605740, -0.215015,
		38.416744, 33.255810, 36.613686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552204, 32.969044, 36.777771>,  <37.880505, 33.679825, 36.764198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552204, 32.969044, 36.777771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936260, 32.979706, 36.889061>,  <38.166695, 32.986103, 36.955837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936260, 32.979706, 36.889061>,  <37.552204, 32.969044, 36.777771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936260, 32.979706, 36.889061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161841, -0.758573, 0.631169,
		0.227880, -0.651042, -0.724026,
		0.960145, 0.026654, 0.278230,
		38.224304, 32.987701, 36.972530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711197, 32.270046, 37.004440>,  <37.552204, 32.969044, 36.777771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711197, 32.270046, 37.004440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023811, 32.473820, 37.148479>,  <38.211380, 32.596085, 37.234905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023811, 32.473820, 37.148479>,  <37.711197, 32.270046, 37.004440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023811, 32.473820, 37.148479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089252, -0.662586, 0.743649,
		0.617437, -0.549052, -0.563305,
		0.781541, 0.509432, 0.360101,
		38.258274, 32.626648, 37.256508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212997, 31.810408, 37.262207>,  <37.711197, 32.270046, 37.004440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212997, 31.810408, 37.262207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341934, 32.135845, 37.455765>,  <38.419296, 32.331108, 37.571899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341934, 32.135845, 37.455765>,  <38.212997, 31.810408, 37.262207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341934, 32.135845, 37.455765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272251, -0.569265, 0.775768,
		0.906627, -0.118324, -0.405003,
		0.322346, 0.813595, 0.483897,
		38.438637, 32.379925, 37.600933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895397, 31.682064, 37.524784>,  <38.212997, 31.810408, 37.262207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895397, 31.682064, 37.524784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726917, 31.956074, 37.762550>,  <38.625828, 32.120480, 37.905212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726917, 31.956074, 37.762550>,  <38.895397, 31.682064, 37.524784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726917, 31.956074, 37.762550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225408, -0.555763, 0.800199,
		0.878512, 0.471030, 0.079677,
		-0.421199, 0.685025, 0.594418,
		38.600559, 32.161583, 37.940876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208126, 31.585077, 38.167118>,  <38.895397, 31.682064, 37.524784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208126, 31.585077, 38.167118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891418, 31.813087, 38.254906>,  <38.701393, 31.949894, 38.307579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891418, 31.813087, 38.254906>,  <39.208126, 31.585077, 38.167118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891418, 31.813087, 38.254906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148104, -0.527748, 0.836390,
		0.592589, 0.629726, 0.502279,
		-0.791773, 0.570024, 0.219473,
		38.653885, 31.984095, 38.320747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373791, 31.814529, 38.896362>,  <39.208126, 31.585077, 38.167118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373791, 31.814529, 38.896362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984150, 31.849669, 38.813023>,  <38.750366, 31.870752, 38.763020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984150, 31.849669, 38.813023>,  <39.373791, 31.814529, 38.896362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984150, 31.849669, 38.813023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226038, -0.401182, 0.887671,
		-0.005607, 0.911776, 0.410649,
		-0.974102, 0.087846, -0.208346,
		38.691917, 31.876022, 38.750519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146851, 31.931683, 39.565987>,  <39.373791, 31.814529, 38.896362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146851, 31.931683, 39.565987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811417, 31.853279, 39.362675>,  <38.610157, 31.806236, 39.240688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811417, 31.853279, 39.362675>,  <39.146851, 31.931683, 39.565987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811417, 31.853279, 39.362675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442721, -0.298478, 0.845523,
		-0.317441, 0.934072, 0.163523,
		-0.838588, -0.196008, -0.508283,
		38.559841, 31.794477, 39.210190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608009, 32.090885, 40.014145>,  <39.146851, 31.931683, 39.565987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608009, 32.090885, 40.014145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427299, 31.860086, 39.741974>,  <38.318874, 31.721607, 39.578671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427299, 31.860086, 39.741974>,  <38.608009, 32.090885, 40.014145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427299, 31.860086, 39.741974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533875, -0.436199, 0.724367,
		-0.714756, 0.690513, -0.110979,
		-0.451776, -0.576994, -0.680424,
		38.291767, 31.686989, 39.537846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905949, 32.235226, 40.004860>,  <38.608009, 32.090885, 40.014145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905949, 32.235226, 40.004860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947006, 31.864822, 39.859543>,  <37.971642, 31.642582, 39.772354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947006, 31.864822, 39.859543>,  <37.905949, 32.235226, 40.004860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947006, 31.864822, 39.859543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659770, -0.336700, 0.671816,
		-0.744424, 0.170727, -0.645511,
		0.102646, -0.926005, -0.363288,
		37.977798, 31.587021, 39.750557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173756, 32.013367, 39.998398>,  <37.905949, 32.235226, 40.004860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173756, 32.013367, 39.998398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359970, 31.662779, 39.949295>,  <37.471699, 31.452425, 39.919834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359970, 31.662779, 39.949295>,  <37.173756, 32.013367, 39.998398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359970, 31.662779, 39.949295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755728, -0.465860, 0.460270,
		-0.460592, -0.121522, -0.879254,
		0.465543, -0.876474, -0.122734,
		37.499630, 31.399837, 39.912468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668652, 31.497997, 39.932518>,  <37.173756, 32.013367, 39.998398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668652, 31.497997, 39.932518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990463, 31.277176, 40.020134>,  <37.183548, 31.144684, 40.072704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990463, 31.277176, 40.020134>,  <36.668652, 31.497997, 39.932518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990463, 31.277176, 40.020134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534321, -0.511753, 0.672763,
		-0.259306, -0.658292, -0.706691,
		0.804525, -0.552051, 0.219039,
		37.231819, 31.111561, 40.085846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407223, 30.883211, 40.064278>,  <36.668652, 31.497997, 39.932518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407223, 30.883211, 40.064278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758892, 30.906351, 40.253468>,  <36.969894, 30.920235, 40.366982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758892, 30.906351, 40.253468>,  <36.407223, 30.883211, 40.064278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758892, 30.906351, 40.253468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431598, -0.323943, 0.841893,
		0.201918, -0.944306, -0.259836,
		0.879177, 0.057848, 0.472971,
		37.022644, 30.923706, 40.395359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387997, 30.321043, 40.527344>,  <36.407223, 30.883211, 40.064278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387997, 30.321043, 40.527344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662174, 30.576223, 40.667736>,  <36.826679, 30.729332, 40.751972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662174, 30.576223, 40.667736>,  <36.387997, 30.321043, 40.527344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662174, 30.576223, 40.667736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333537, -0.153384, 0.930176,
		0.647239, -0.754649, 0.107643,
		0.685445, 0.637949, 0.350979,
		36.867809, 30.767609, 40.773029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743614, 29.734283, 40.391708>,  <36.387997, 30.321043, 40.527344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743614, 29.734283, 40.391708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546249, 29.395214, 40.313744>,  <36.427830, 29.191772, 40.266964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546249, 29.395214, 40.313744>,  <36.743614, 29.734283, 40.391708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546249, 29.395214, 40.313744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264421, 0.359673, -0.894828,
		0.828627, -0.389983, -0.401611,
		-0.493416, -0.847672, -0.194915,
		36.398224, 29.140913, 40.255268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960823, 29.583162, 39.759903>,  <36.743614, 29.734283, 40.391708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960823, 29.583162, 39.759903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608364, 29.397171, 39.794258>,  <36.396889, 29.285576, 39.814873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608364, 29.397171, 39.794258>,  <36.960823, 29.583162, 39.759903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608364, 29.397171, 39.794258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260143, 0.325032, -0.909219,
		0.394853, -0.823497, -0.407362,
		-0.881145, -0.464980, 0.085887,
		36.344021, 29.257677, 39.820023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822582, 29.201794, 39.143948>,  <36.960823, 29.583162, 39.759903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822582, 29.201794, 39.143948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461452, 29.255270, 39.307423>,  <36.244774, 29.287355, 39.405510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461452, 29.255270, 39.307423>,  <36.822582, 29.201794, 39.143948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461452, 29.255270, 39.307423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356425, 0.299013, -0.885185,
		-0.240547, -0.944837, -0.222306,
		-0.902828, 0.133693, 0.408691,
		36.190605, 29.295378, 39.430031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451168, 29.137041, 38.514332>,  <36.822582, 29.201794, 39.143948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451168, 29.137041, 38.514332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183186, 29.263083, 38.783215>,  <36.022396, 29.338707, 38.944546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183186, 29.263083, 38.783215>,  <36.451168, 29.137041, 38.514332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183186, 29.263083, 38.783215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554618, 0.389469, -0.735331,
		-0.493511, -0.865461, -0.086165,
		-0.669959, 0.315106, 0.672208,
		35.982197, 29.357615, 38.984879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744514, 28.861870, 38.370697>,  <36.451168, 29.137041, 38.514332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744514, 28.861870, 38.370697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734890, 29.206739, 38.573112>,  <35.729115, 29.413660, 38.694561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734890, 29.206739, 38.573112>,  <35.744514, 28.861870, 38.370697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734890, 29.206739, 38.573112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485197, 0.432502, -0.759951,
		-0.874074, -0.263818, 0.407916,
		-0.024064, 0.862173, 0.506043,
		35.727673, 29.465391, 38.724926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177048, 29.126970, 38.181149>,  <35.744514, 28.861870, 38.370697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177048, 29.126970, 38.181149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339008, 29.459669, 38.333069>,  <35.436184, 29.659288, 38.424221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339008, 29.459669, 38.333069>,  <35.177048, 29.126970, 38.181149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339008, 29.459669, 38.333069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485116, 0.547509, -0.681833,
		-0.775058, 0.091829, 0.625182,
		0.404905, 0.831746, 0.379803,
		35.460480, 29.709192, 38.447010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604034, 29.581039, 38.343651>,  <35.177048, 29.126970, 38.181149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604034, 29.581039, 38.343651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928581, 29.813120, 38.315201>,  <35.123310, 29.952368, 38.298130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928581, 29.813120, 38.315201>,  <34.604034, 29.581039, 38.343651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928581, 29.813120, 38.315201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460868, 0.560095, -0.688400,
		-0.359571, 0.591323, 0.721835,
		0.811363, 0.580200, -0.071128,
		35.171989, 29.987181, 38.293861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419765, 30.258120, 38.491962>,  <34.604034, 29.581039, 38.343651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419765, 30.258120, 38.491962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768463, 30.305178, 38.301712>,  <34.977684, 30.333412, 38.187561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768463, 30.305178, 38.301712>,  <34.419765, 30.258120, 38.491962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768463, 30.305178, 38.301712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414019, 0.695982, -0.586684,
		0.262006, 0.708357, 0.655426,
		0.871746, 0.117644, -0.475624,
		35.029987, 30.340471, 38.159023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530624, 30.973646, 38.499901>,  <34.419765, 30.258120, 38.491962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530624, 30.973646, 38.499901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776573, 30.826208, 38.221027>,  <34.924145, 30.737745, 38.053703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776573, 30.826208, 38.221027>,  <34.530624, 30.973646, 38.499901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776573, 30.826208, 38.221027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263506, 0.737214, -0.622158,
		0.743299, 0.566261, 0.356166,
		0.614875, -0.368597, -0.697184,
		34.961037, 30.715630, 38.011871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633747, 31.518141, 38.079948>,  <34.530624, 30.973646, 38.499901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633747, 31.518141, 38.079948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764606, 31.235619, 37.828838>,  <34.843121, 31.066105, 37.678173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764606, 31.235619, 37.828838>,  <34.633747, 31.518141, 38.079948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764606, 31.235619, 37.828838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127017, 0.625440, -0.769865,
		0.936399, 0.331595, 0.114897,
		0.327145, -0.706307, -0.627779,
		34.862751, 31.023727, 37.640503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133846, 31.810314, 37.540730>,  <34.633747, 31.518141, 38.079948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133846, 31.810314, 37.540730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949646, 31.498058, 37.371716>,  <34.839127, 31.310705, 37.270306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949646, 31.498058, 37.371716>,  <35.133846, 31.810314, 37.540730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949646, 31.498058, 37.371716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224213, 0.562871, -0.795553,
		0.858874, -0.271618, -0.434234,
		-0.460505, -0.780641, -0.422535,
		34.811493, 31.263866, 37.244953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486317, 31.829039, 36.838844>,  <35.133846, 31.810314, 37.540730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486317, 31.829039, 36.838844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134315, 31.639484, 36.851650>,  <34.923115, 31.525751, 36.859333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134315, 31.639484, 36.851650>,  <35.486317, 31.829039, 36.838844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134315, 31.639484, 36.851650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294873, 0.492255, -0.818984,
		0.372346, -0.730149, -0.572923,
		-0.880005, -0.473885, 0.032012,
		34.870316, 31.497318, 36.861252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.526810, 27.797224, 43.995850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164211, 27.726313, 43.842571>,  <35.946651, 27.683765, 43.750603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164211, 27.726313, 43.842571>,  <36.526810, 27.797224, 43.995850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164211, 27.726313, 43.842571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362738, 0.137473, -0.921695,
		0.216077, -0.974512, -0.060313,
		-0.906494, -0.177279, -0.383198,
		35.892262, 27.673130, 43.727612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641788, 27.285061, 43.412865>,  <36.526810, 27.797224, 43.995850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641788, 27.285061, 43.412865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292091, 27.470297, 43.354553>,  <36.082275, 27.581438, 43.319565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292091, 27.470297, 43.354553>,  <36.641788, 27.285061, 43.412865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292091, 27.470297, 43.354553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184856, 0.039854, -0.981957,
		-0.448923, -0.885415, -0.120447,
		-0.874240, 0.463089, -0.145783,
		36.029819, 27.609222, 43.310818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373737, 26.954613, 42.723988>,  <36.641788, 27.285061, 43.412865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373737, 26.954613, 42.723988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.210186, 27.312712, 42.794811>,  <36.112057, 27.527571, 42.837307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.210186, 27.312712, 42.794811>,  <36.373737, 26.954613, 42.723988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210186, 27.312712, 42.794811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103737, 0.238360, -0.965620,
		-0.906675, -0.376450, -0.190330,
		-0.408875, 0.895248, 0.177063,
		36.087524, 27.581285, 42.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897350, 27.020140, 42.085995>,  <36.373737, 26.954613, 42.723988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897350, 27.020140, 42.085995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962696, 27.378727, 42.250751>,  <36.001904, 27.593880, 42.349606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962696, 27.378727, 42.250751>,  <35.897350, 27.020140, 42.085995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962696, 27.378727, 42.250751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147002, 0.434964, -0.888368,
		-0.975552, 0.084580, 0.202842,
		0.163367, 0.896467, 0.411896,
		36.011707, 27.647667, 42.374321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349030, 27.443253, 41.846767>,  <35.897350, 27.020140, 42.085995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349030, 27.443253, 41.846767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623798, 27.715029, 41.949917>,  <35.788658, 27.878094, 42.011806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623798, 27.715029, 41.949917>,  <35.349030, 27.443253, 41.846767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623798, 27.715029, 41.949917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155404, 0.483967, -0.861177,
		-0.709919, 0.551488, 0.438036,
		0.686924, 0.679439, 0.257874,
		35.829876, 27.918859, 42.027279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099564, 28.082914, 41.498741>,  <35.349030, 27.443253, 41.846767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099564, 28.082914, 41.498741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490177, 28.120905, 41.576057>,  <35.724545, 28.143700, 41.622448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490177, 28.120905, 41.576057>,  <35.099564, 28.082914, 41.498741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490177, 28.120905, 41.576057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120961, 0.500674, -0.857143,
		-0.178183, 0.860410, 0.477437,
		0.976534, 0.094977, 0.193288,
		35.783138, 28.149399, 41.634045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217583, 28.696884, 41.307896>,  <35.099564, 28.082914, 41.498741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217583, 28.696884, 41.307896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590828, 28.553101, 41.311470>,  <35.814777, 28.466829, 41.313614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590828, 28.553101, 41.311470>,  <35.217583, 28.696884, 41.307896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590828, 28.553101, 41.311470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192127, 0.477425, -0.857410,
		0.303939, 0.801781, 0.514556,
		0.933118, -0.359461, 0.008936,
		35.870762, 28.445263, 41.314152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677338, 29.279190, 41.358212>,  <35.217583, 28.696884, 41.307896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677338, 29.279190, 41.358212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.884792, 28.991627, 41.173092>,  <36.009266, 28.819090, 41.062019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.884792, 28.991627, 41.173092>,  <35.677338, 29.279190, 41.358212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884792, 28.991627, 41.173092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195465, 0.626655, -0.754385,
		0.832349, 0.300794, 0.465530,
		0.518641, -0.718907, -0.462801,
		36.040386, 28.775955, 41.034252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063068, 29.602737, 41.005581>,  <35.677338, 29.279190, 41.358212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063068, 29.602737, 41.005581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097195, 29.255228, 40.810459>,  <36.117668, 29.046722, 40.693386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097195, 29.255228, 40.810459>,  <36.063068, 29.602737, 41.005581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097195, 29.255228, 40.810459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035041, 0.486674, -0.872881,
		0.995738, 0.091561, 0.011077,
		0.085313, -0.868772, -0.487808,
		36.122787, 28.994596, 40.664116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639061, 29.965305, 41.178028>,  <36.063068, 29.602737, 41.005581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639061, 29.965305, 41.178028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.829487, 30.316511, 41.197842>,  <36.943745, 30.527235, 41.209732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.829487, 30.316511, 41.197842>,  <36.639061, 29.965305, 41.178028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829487, 30.316511, 41.197842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034450, -0.037667, 0.998696,
		0.878734, -0.477153, 0.012315,
		0.476067, 0.878013, 0.049538,
		36.972305, 30.579914, 41.212704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192623, 29.928251, 41.662605>,  <36.639061, 29.965305, 41.178028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192623, 29.928251, 41.662605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078579, 30.309517, 41.622223>,  <37.010151, 30.538277, 41.597996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078579, 30.309517, 41.622223>,  <37.192623, 29.928251, 41.662605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078579, 30.309517, 41.622223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003073, 0.104416, 0.994529,
		0.958489, 0.283862, -0.026841,
		-0.285112, 0.953163, -0.100954,
		36.993046, 30.595467, 41.591938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747570, 30.393894, 42.031086>,  <37.192623, 29.928251, 41.662605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747570, 30.393894, 42.031086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395569, 30.583256, 42.015640>,  <37.184368, 30.696873, 42.006374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395569, 30.583256, 42.015640>,  <37.747570, 30.393894, 42.031086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395569, 30.583256, 42.015640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085830, 0.238445, 0.967356,
		0.467157, 0.847958, -0.250463,
		-0.879998, 0.473405, -0.038612,
		37.131569, 30.725277, 42.004055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865414, 31.047668, 42.356991>,  <37.747570, 30.393894, 42.031086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865414, 31.047668, 42.356991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472740, 30.973127, 42.372841>,  <37.237137, 30.928402, 42.382351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472740, 30.973127, 42.372841>,  <37.865414, 31.047668, 42.356991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472740, 30.973127, 42.372841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024044, 0.327497, 0.944546,
		-0.188995, 0.926293, -0.325979,
		-0.981684, -0.186352, 0.039624,
		37.178234, 30.917221, 42.384727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679901, 31.574163, 42.765644>,  <37.865414, 31.047668, 42.356991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679901, 31.574163, 42.765644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.377731, 31.312084, 42.768616>,  <37.196430, 31.154837, 42.770397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.377731, 31.312084, 42.768616>,  <37.679901, 31.574163, 42.765644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377731, 31.312084, 42.768616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004753, 0.016817, 0.999847,
		-0.655222, 0.755271, -0.015818,
		-0.755422, -0.655197, 0.007429,
		37.151104, 31.115524, 42.770844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310001, 31.738039, 43.333538>,  <37.679901, 31.574163, 42.765644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310001, 31.738039, 43.333538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.126194, 31.390192, 43.261311>,  <37.015907, 31.181484, 43.217976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.126194, 31.390192, 43.261311>,  <37.310001, 31.738039, 43.333538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126194, 31.390192, 43.261311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130365, -0.135059, 0.982224,
		-0.878547, 0.474892, -0.051305,
		-0.459521, -0.869618, -0.180565,
		36.988338, 31.129307, 43.207142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020554, 31.610416, 43.986534>,  <37.310001, 31.738039, 43.333538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020554, 31.610416, 43.986534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955791, 31.260355, 43.804153>,  <36.916935, 31.050318, 43.694725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955791, 31.260355, 43.804153>,  <37.020554, 31.610416, 43.986534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955791, 31.260355, 43.804153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161120, -0.432400, 0.887170,
		-0.973564, 0.217103, -0.070996,
		-0.161908, -0.875155, -0.455949,
		36.907219, 30.997808, 43.667370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385204, 31.395720, 44.137356>,  <37.020554, 31.610416, 43.986534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385204, 31.395720, 44.137356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647404, 31.106676, 44.049572>,  <36.804722, 30.933250, 43.996902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647404, 31.106676, 44.049572>,  <36.385204, 31.395720, 44.137356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647404, 31.106676, 44.049572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085665, -0.359867, 0.929062,
		-0.750324, -0.590197, -0.297794,
		0.655496, -0.722609, -0.219458,
		36.844051, 30.889894, 43.983734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152206, 30.840565, 44.412102>,  <36.385204, 31.395720, 44.137356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152206, 30.840565, 44.412102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.521446, 30.692865, 44.369114>,  <36.742989, 30.604246, 44.343323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.521446, 30.692865, 44.369114>,  <36.152206, 30.840565, 44.412102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521446, 30.692865, 44.369114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034737, -0.358360, 0.932937,
		-0.383006, -0.857454, -0.343626,
		0.923092, -0.369257, -0.107469,
		36.798374, 30.582090, 44.336876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225239, 30.136351, 44.732998>,  <36.152206, 30.840565, 44.412102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225239, 30.136351, 44.732998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596264, 30.285429, 44.722252>,  <36.818878, 30.374876, 44.715805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596264, 30.285429, 44.722252>,  <36.225239, 30.136351, 44.732998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596264, 30.285429, 44.722252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165090, -0.344252, 0.924249,
		0.335217, -0.861735, -0.380844,
		0.927564, 0.372697, -0.026864,
		36.874535, 30.397238, 44.714191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718647, 29.590462, 45.044865>,  <36.225239, 30.136351, 44.732998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718647, 29.590462, 45.044865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961098, 29.908422, 45.055756>,  <37.106567, 30.099199, 45.062290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961098, 29.908422, 45.055756>,  <36.718647, 29.590462, 45.044865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961098, 29.908422, 45.055756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275493, -0.241938, 0.930360,
		0.746135, -0.556412, -0.365635,
		0.606124, 0.794904, 0.027230,
		37.142937, 30.146894, 45.063923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319824, 29.286362, 45.383316>,  <36.718647, 29.590462, 45.044865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319824, 29.286362, 45.383316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.313717, 29.683249, 45.432747>,  <37.310051, 29.921381, 45.462406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.313717, 29.683249, 45.432747>,  <37.319824, 29.286362, 45.383316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313717, 29.683249, 45.432747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146449, -0.120042, 0.981908,
		0.989100, 0.033091, -0.143477,
		-0.015269, 0.992217, 0.123580,
		37.309135, 29.980913, 45.469822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942760, 29.332855, 45.814919>,  <37.319824, 29.286362, 45.383316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942760, 29.332855, 45.814919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720333, 29.662842, 45.855347>,  <37.586876, 29.860834, 45.879604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720333, 29.662842, 45.855347>,  <37.942760, 29.332855, 45.814919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720333, 29.662842, 45.855347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017823, -0.133414, 0.990900,
		0.830944, 0.549209, 0.088891,
		-0.556070, 0.824967, 0.101071,
		37.553513, 29.910332, 45.885670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307529, 29.763458, 46.201649>,  <37.942760, 29.332855, 45.814919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307529, 29.763458, 46.201649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919754, 29.851227, 46.245529>,  <37.687088, 29.903889, 46.271858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919754, 29.851227, 46.245529>,  <38.307529, 29.763458, 46.201649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919754, 29.851227, 46.245529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052795, -0.250106, 0.966778,
		0.239572, 0.943027, 0.230879,
		-0.969442, 0.219423, 0.109705,
		37.628922, 29.917053, 46.278442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.025135, 31.620398, 46.544270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188622, 31.277033, 46.420284>,  <32.286713, 31.071014, 46.345894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188622, 31.277033, 46.420284>,  <32.025135, 31.620398, 46.544270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188622, 31.277033, 46.420284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128650, 0.390421, -0.911603,
		0.903546, 0.332715, 0.270009,
		0.408721, -0.858413, -0.309960,
		32.311237, 31.019508, 46.327297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510002, 31.813644, 46.075867>,  <32.025135, 31.620398, 46.544270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510002, 31.813644, 46.075867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.448254, 31.426367, 45.997105>,  <32.411205, 31.194000, 45.949848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.448254, 31.426367, 45.997105>,  <32.510002, 31.813644, 46.075867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448254, 31.426367, 45.997105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184171, 0.223999, -0.957030,
		0.970696, -0.111474, -0.212892,
		-0.154372, -0.968193, -0.196904,
		32.401943, 31.135908, 45.938034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000423, 31.593596, 45.506458>,  <32.510002, 31.813644, 46.075867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000423, 31.593596, 45.506458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689507, 31.342125, 45.516167>,  <32.502956, 31.191242, 45.521992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689507, 31.342125, 45.516167>,  <33.000423, 31.593596, 45.506458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689507, 31.342125, 45.516167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121785, 0.112504, -0.986160,
		0.617243, -0.769487, -0.164011,
		-0.777290, -0.628675, 0.024269,
		32.456318, 31.153522, 45.523449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170292, 31.063795, 45.039940>,  <33.000423, 31.593596, 45.506458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170292, 31.063795, 45.039940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774063, 31.084040, 45.090866>,  <32.536327, 31.096186, 45.121422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774063, 31.084040, 45.090866>,  <33.170292, 31.063795, 45.039940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774063, 31.084040, 45.090866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133001, -0.132247, -0.982253,
		-0.032875, -0.989924, 0.137731,
		-0.990571, 0.050610, 0.127313,
		32.476891, 31.099222, 45.129059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055286, 30.755209, 44.468334>,  <33.170292, 31.063795, 45.039940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055286, 30.755209, 44.468334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683670, 30.854799, 44.577805>,  <32.460701, 30.914555, 44.643486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683670, 30.854799, 44.577805>,  <33.055286, 30.755209, 44.468334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683670, 30.854799, 44.577805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303061, -0.087803, -0.948917,
		-0.212233, -0.964520, 0.157029,
		-0.929038, 0.248981, 0.273674,
		32.404957, 30.929493, 44.659908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654716, 30.253374, 44.096611>,  <33.055286, 30.755209, 44.468334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654716, 30.253374, 44.096611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.417179, 30.556734, 44.204079>,  <32.274658, 30.738750, 44.268559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.417179, 30.556734, 44.204079>,  <32.654716, 30.253374, 44.096611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417179, 30.556734, 44.204079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228341, 0.161338, -0.960120,
		-0.771502, -0.631505, 0.077365,
		-0.593839, 0.758400, 0.268671,
		32.239029, 30.784254, 44.284679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058079, 30.160690, 43.706402>,  <32.654716, 30.253374, 44.096611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058079, 30.160690, 43.706402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020279, 30.544191, 43.813633>,  <31.997599, 30.774292, 43.877972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020279, 30.544191, 43.813633>,  <32.058079, 30.160690, 43.706402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020279, 30.544191, 43.813633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095218, 0.259344, -0.961079,
		-0.990961, -0.116346, 0.066783,
		-0.094498, 0.958751, 0.268078,
		31.991930, 30.831818, 43.894058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560196, 30.316603, 43.305279>,  <32.058079, 30.160690, 43.706402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560196, 30.316603, 43.305279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705997, 30.674215, 43.409470>,  <31.793478, 30.888783, 43.471985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705997, 30.674215, 43.409470>,  <31.560196, 30.316603, 43.305279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705997, 30.674215, 43.409470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022291, 0.288014, -0.957367,
		-0.930935, 0.343158, 0.124912,
		0.364505, 0.894031, 0.260472,
		31.815350, 30.942425, 43.487610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130589, 30.803339, 43.016659>,  <31.560196, 30.316603, 43.305279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130589, 30.803339, 43.016659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.491848, 30.970934, 43.054131>,  <31.708603, 31.071491, 43.076614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.491848, 30.970934, 43.054131>,  <31.130589, 30.803339, 43.016659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491848, 30.970934, 43.054131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065414, 0.349948, -0.934482,
		-0.424320, 0.837846, 0.343462,
		0.903147, 0.418986, 0.093683,
		31.762793, 31.096630, 43.082237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025957, 31.486460, 42.658054>,  <31.130589, 30.803339, 43.016659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025957, 31.486460, 42.658054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421637, 31.438824, 42.692242>,  <31.659044, 31.410242, 42.712753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421637, 31.438824, 42.692242>,  <31.025957, 31.486460, 42.658054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421637, 31.438824, 42.692242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128105, 0.418883, -0.898958,
		0.071255, 0.900197, 0.429614,
		0.989197, -0.119091, 0.085472,
		31.718395, 31.403097, 42.717884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348024, 32.048981, 42.452095>,  <31.025957, 31.486460, 42.658054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348024, 32.048981, 42.452095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645178, 31.784927, 42.407658>,  <31.823471, 31.626495, 42.380993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645178, 31.784927, 42.407658>,  <31.348024, 32.048981, 42.452095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645178, 31.784927, 42.407658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225085, 0.402622, -0.887261,
		0.630442, 0.634127, 0.447688,
		0.742886, -0.660135, -0.111097,
		31.868044, 31.586887, 42.374329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892723, 32.545338, 42.243881>,  <31.348024, 32.048981, 42.452095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892723, 32.545338, 42.243881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.015110, 32.174526, 42.157162>,  <32.088543, 31.952040, 42.105129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.015110, 32.174526, 42.157162>,  <31.892723, 32.545338, 42.243881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015110, 32.174526, 42.157162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532969, 0.355481, -0.767839,
		0.788878, 0.119384, 0.602843,
		0.305967, -0.927028, -0.216803,
		32.106899, 31.896418, 42.092121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620903, 32.541119, 42.092735>,  <31.892723, 32.545338, 42.243881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620903, 32.541119, 42.092735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493378, 32.204273, 41.918747>,  <32.416862, 32.002167, 41.814354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493378, 32.204273, 41.918747>,  <32.620903, 32.541119, 42.092735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493378, 32.204273, 41.918747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399321, 0.296859, -0.867420,
		0.859592, -0.450240, 0.241631,
		-0.318817, -0.842116, -0.434968,
		32.397732, 31.951639, 41.788258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254826, 32.227425, 41.740120>,  <32.620903, 32.541119, 42.092735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254826, 32.227425, 41.740120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921009, 32.094219, 41.564556>,  <32.720718, 32.014297, 41.459217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921009, 32.094219, 41.564556>,  <33.254826, 32.227425, 41.740120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921009, 32.094219, 41.564556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387231, 0.212148, -0.897243,
		0.391905, -0.918748, -0.048094,
		-0.834543, -0.333010, -0.438909,
		32.670647, 31.994316, 41.432884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023411, 32.236782, 41.724503>,  <33.254826, 32.227425, 41.740120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023411, 32.236782, 41.724503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.077526, 32.629044, 41.781086>,  <34.109997, 32.864403, 41.815037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.077526, 32.629044, 41.781086>,  <34.023411, 32.236782, 41.724503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077526, 32.629044, 41.781086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105648, -0.156235, 0.982053,
		0.985157, -0.117919, -0.124742,
		0.135291, 0.980656, 0.141458,
		34.118114, 32.923241, 41.823524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592674, 32.310844, 42.147247>,  <34.023411, 32.236782, 41.724503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592674, 32.310844, 42.147247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385075, 32.644680, 42.221107>,  <34.260513, 32.844982, 42.265423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385075, 32.644680, 42.221107>,  <34.592674, 32.310844, 42.147247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385075, 32.644680, 42.221107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216657, -0.080521, 0.972921,
		0.826861, 0.544951, -0.139030,
		-0.518999, 0.834593, 0.184647,
		34.229374, 32.895058, 42.276501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983192, 32.663681, 42.697285>,  <34.592674, 32.310844, 42.147247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983192, 32.663681, 42.697285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.626091, 32.842632, 42.718597>,  <34.411831, 32.950005, 42.731384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.626091, 32.842632, 42.718597>,  <34.983192, 32.663681, 42.697285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626091, 32.842632, 42.718597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189626, 0.265828, 0.945187,
		0.408692, 0.853925, -0.322154,
		-0.892756, 0.447379, 0.053285,
		34.358265, 32.976845, 42.734581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043324, 33.423744, 42.926487>,  <34.983192, 32.663681, 42.697285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043324, 33.423744, 42.926487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.678352, 33.305302, 43.039478>,  <34.459370, 33.234238, 43.107273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.678352, 33.305302, 43.039478>,  <35.043324, 33.423744, 42.926487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678352, 33.305302, 43.039478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218217, 0.231893, 0.947949,
		-0.346196, 0.926579, -0.146971,
		-0.912431, -0.296105, 0.282475,
		34.404625, 33.216469, 43.124222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746120, 33.979618, 43.302925>,  <35.043324, 33.423744, 42.926487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746120, 33.979618, 43.302925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561382, 33.643391, 43.416164>,  <34.450539, 33.441654, 43.484108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561382, 33.643391, 43.416164>,  <34.746120, 33.979618, 43.302925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561382, 33.643391, 43.416164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102388, 0.266521, 0.958375,
		-0.881030, 0.471608, -0.037028,
		-0.461846, -0.840566, 0.283100,
		34.422829, 33.391220, 43.501095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319462, 34.180721, 43.880676>,  <34.746120, 33.979618, 43.302925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319462, 34.180721, 43.880676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347462, 33.782963, 43.912376>,  <34.364262, 33.544308, 43.931396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347462, 33.782963, 43.912376>,  <34.319462, 34.180721, 43.880676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347462, 33.782963, 43.912376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135044, 0.088160, 0.986910,
		-0.988364, -0.058378, 0.140458,
		0.069996, -0.994394, 0.079251,
		34.368462, 33.484646, 43.936153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967678, 34.047497, 44.509972>,  <34.319462, 34.180721, 43.880676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967678, 34.047497, 44.509972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196327, 33.730190, 44.426094>,  <34.333515, 33.539806, 44.375767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196327, 33.730190, 44.426094>,  <33.967678, 34.047497, 44.509972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196327, 33.730190, 44.426094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177225, -0.130168, 0.975524,
		-0.801150, -0.594793, 0.066180,
		0.571621, -0.793270, -0.209696,
		34.367813, 33.492210, 44.363186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816902, 33.646397, 45.028866>,  <33.967678, 34.047497, 44.509972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816902, 33.646397, 45.028866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139523, 33.457512, 44.886608>,  <34.333096, 33.344181, 44.801254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139523, 33.457512, 44.886608>,  <33.816902, 33.646397, 45.028866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139523, 33.457512, 44.886608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134754, -0.438907, 0.888370,
		-0.575598, -0.764442, -0.290369,
		0.806553, -0.472216, -0.355647,
		34.381489, 33.315845, 44.779915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732037, 32.840855, 45.127766>,  <33.816902, 33.646397, 45.028866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732037, 32.840855, 45.127766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.119797, 32.938992, 45.124420>,  <34.352451, 32.997871, 45.122414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.119797, 32.938992, 45.124420>,  <33.732037, 32.840855, 45.127766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119797, 32.938992, 45.124420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115983, -0.427721, 0.896439,
		0.216354, -0.869979, -0.443089,
		0.969402, 0.245339, -0.008363,
		34.410618, 33.012592, 45.121910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053402, 32.298454, 45.400970>,  <33.732037, 32.840855, 45.127766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053402, 32.298454, 45.400970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340000, 32.573357, 45.448822>,  <34.511959, 32.738300, 45.477531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340000, 32.573357, 45.448822>,  <34.053402, 32.298454, 45.400970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340000, 32.573357, 45.448822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199696, -0.366375, 0.908785,
		0.668400, -0.627250, -0.399749,
		0.716494, 0.687260, 0.119626,
		34.554947, 32.779533, 45.484711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805553, 31.970438, 45.495365>,  <34.053402, 32.298454, 45.400970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805553, 31.970438, 45.495365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.781143, 32.321827, 45.684917>,  <34.766495, 32.532661, 45.798649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.781143, 32.321827, 45.684917>,  <34.805553, 31.970438, 45.495365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781143, 32.321827, 45.684917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247353, -0.446647, 0.859839,
		0.967002, 0.169691, -0.190034,
		-0.061029, 0.878471, 0.473882,
		34.762833, 32.585369, 45.827084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363941, 31.881784, 45.899334>,  <34.805553, 31.970438, 45.495365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363941, 31.881784, 45.899334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183704, 32.203690, 46.053902>,  <35.075562, 32.396832, 46.146641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183704, 32.203690, 46.053902>,  <35.363941, 31.881784, 45.899334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183704, 32.203690, 46.053902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149723, -0.358594, 0.921408,
		0.880083, 0.473039, 0.041090,
		-0.450597, 0.804764, 0.386417,
		35.048527, 32.445118, 46.169827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815613, 32.215611, 46.442219>,  <35.363941, 31.881784, 45.899334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815613, 32.215611, 46.442219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.447716, 32.342033, 46.535328>,  <35.226978, 32.417889, 46.591194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.447716, 32.342033, 46.535328>,  <35.815613, 32.215611, 46.442219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447716, 32.342033, 46.535328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107245, -0.368101, 0.923580,
		0.377590, 0.874418, 0.304662,
		-0.919741, 0.316061, 0.232769,
		35.171795, 32.436852, 46.605160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863163, 32.439243, 47.059036>,  <35.815613, 32.215611, 46.442219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863163, 32.439243, 47.059036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466175, 32.400177, 47.029480>,  <35.227982, 32.376736, 47.011745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466175, 32.400177, 47.029480>,  <35.863163, 32.439243, 47.059036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466175, 32.400177, 47.029480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029236, -0.396997, 0.917354,
		-0.118929, 0.912609, 0.391153,
		-0.992472, -0.097665, -0.073895,
		35.168434, 32.370876, 47.007313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413502, 32.857624, 47.545979>,  <35.863163, 32.439243, 47.059036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413502, 32.857624, 47.545979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.787914, 32.730103, 47.605595>,  <37.012562, 32.653591, 47.641365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.787914, 32.730103, 47.605595>,  <36.413502, 32.857624, 47.545979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787914, 32.730103, 47.605595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251466, 0.309619, -0.917006,
		0.246197, 0.895824, 0.369980,
		0.936030, -0.318802, 0.149042,
		37.068722, 32.634460, 47.650307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995384, 33.415630, 47.220772>,  <36.413502, 32.857624, 47.545979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995384, 33.415630, 47.220772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.156189, 33.052532, 47.268757>,  <37.252670, 32.834675, 47.297550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.156189, 33.052532, 47.268757>,  <36.995384, 33.415630, 47.220772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156189, 33.052532, 47.268757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412511, 0.062582, -0.908800,
		0.817447, 0.414838, 0.399612,
		0.402013, -0.907741, 0.119967,
		37.276794, 32.780209, 47.304749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650703, 33.443035, 47.374798>,  <36.995384, 33.415630, 47.220772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650703, 33.443035, 47.374798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593277, 33.093479, 47.189022>,  <37.558819, 32.883743, 47.077557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593277, 33.093479, 47.189022>,  <37.650703, 33.443035, 47.374798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593277, 33.093479, 47.189022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533439, 0.326948, -0.780095,
		0.833565, -0.359746, 0.419228,
		-0.143570, -0.873892, -0.464435,
		37.550205, 32.831310, 47.049690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239189, 33.319176, 47.023186>,  <37.650703, 33.443035, 47.374798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239189, 33.319176, 47.023186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015747, 33.029301, 46.861794>,  <37.881683, 32.855377, 46.764957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015747, 33.029301, 46.861794>,  <38.239189, 33.319176, 47.023186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015747, 33.029301, 46.861794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561179, 0.028002, -0.827221,
		0.610773, -0.688511, 0.391036,
		-0.558601, -0.724685, -0.403481,
		37.848167, 32.811893, 46.740749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730492, 32.855442, 46.641510>,  <38.239189, 33.319176, 47.023186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730492, 32.855442, 46.641510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369320, 32.795414, 46.480412>,  <38.152618, 32.759396, 46.383751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369320, 32.795414, 46.480412>,  <38.730492, 32.855442, 46.641510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369320, 32.795414, 46.480412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393610, 0.087616, -0.915093,
		0.172616, -0.984785, -0.020041,
		-0.902925, -0.150071, -0.402745,
		38.098442, 32.750393, 46.359589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855034, 32.287476, 46.088753>,  <38.730492, 32.855442, 46.641510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855034, 32.287476, 46.088753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.523479, 32.497684, 46.012043>,  <38.324547, 32.623810, 45.966019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.523479, 32.497684, 46.012043>,  <38.855034, 32.287476, 46.088753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523479, 32.497684, 46.012043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359979, 0.238647, -0.901922,
		-0.428218, -0.816621, -0.386989,
		-0.828882, 0.525527, -0.191774,
		38.274815, 32.655342, 45.954510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666325, 32.125946, 45.338280>,  <38.855034, 32.287476, 46.088753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666325, 32.125946, 45.338280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439938, 32.446388, 45.416161>,  <38.304104, 32.638653, 45.462891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439938, 32.446388, 45.416161>,  <38.666325, 32.125946, 45.338280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439938, 32.446388, 45.416161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029762, 0.255866, -0.966254,
		-0.823890, -0.541074, -0.168655,
		-0.565968, 0.801107, 0.194701,
		38.270145, 32.686722, 45.474571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154701, 32.280148, 44.742168>,  <38.666325, 32.125946, 45.338280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154701, 32.280148, 44.742168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178890, 32.628063, 44.938053>,  <38.193405, 32.836811, 45.055584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178890, 32.628063, 44.938053>,  <38.154701, 32.280148, 44.742168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178890, 32.628063, 44.938053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003350, 0.490784, -0.871275,
		-0.998164, 0.051047, 0.032593,
		0.060472, 0.869784, 0.489712,
		38.197033, 32.889000, 45.084969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548401, 32.657776, 44.505421>,  <38.154701, 32.280148, 44.742168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548401, 32.657776, 44.505421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798653, 32.942013, 44.634193>,  <37.948807, 33.112556, 44.711456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798653, 32.942013, 44.634193>,  <37.548401, 32.657776, 44.505421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798653, 32.942013, 44.634193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158798, 0.520035, -0.839254,
		-0.763783, 0.473943, 0.438193,
		0.625634, 0.710592, 0.321933,
		37.986343, 33.155190, 44.730774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182030, 33.311886, 44.503506>,  <37.548401, 32.657776, 44.505421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182030, 33.311886, 44.503506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.573956, 33.391731, 44.507748>,  <37.809113, 33.439640, 44.510292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.573956, 33.391731, 44.507748>,  <37.182030, 33.311886, 44.503506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573956, 33.391731, 44.507748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092689, 0.500698, -0.860645,
		-0.177107, 0.842292, 0.509094,
		0.979817, 0.199614, 0.010606,
		37.867901, 33.451614, 44.510929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278954, 33.998718, 44.476307>,  <37.182030, 33.311886, 44.503506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278954, 33.998718, 44.476307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613125, 33.830154, 44.335182>,  <37.813625, 33.729015, 44.250507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613125, 33.830154, 44.335182>,  <37.278954, 33.998718, 44.476307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613125, 33.830154, 44.335182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056492, 0.572706, -0.817812,
		0.546693, 0.703152, 0.454647,
		0.835425, -0.421408, -0.352816,
		37.863754, 33.703732, 44.229336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608948, 34.529392, 44.101311>,  <37.278954, 33.998718, 44.476307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608948, 34.529392, 44.101311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.825085, 34.217552, 43.974659>,  <37.954765, 34.030449, 43.898666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.825085, 34.217552, 43.974659>,  <37.608948, 34.529392, 44.101311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825085, 34.217552, 43.974659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052240, 0.344490, -0.937335,
		0.839824, 0.523020, 0.145415,
		0.540339, -0.779601, -0.316633,
		37.987186, 33.983673, 43.879669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171509, 34.864044, 43.671028>,  <37.608948, 34.529392, 44.101311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171509, 34.864044, 43.671028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.179485, 34.484844, 43.543972>,  <38.184273, 34.257324, 43.467739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.179485, 34.484844, 43.543972>,  <38.171509, 34.864044, 43.671028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179485, 34.484844, 43.543972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002829, 0.317646, -0.948205,
		0.999797, 0.019807, 0.003652,
		0.019941, -0.948002, -0.317637,
		38.185467, 34.200443, 43.448681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739437, 34.881691, 43.149639>,  <38.171509, 34.864044, 43.671028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739437, 34.881691, 43.149639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.505287, 34.563461, 43.087166>,  <38.364796, 34.372524, 43.049683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.505287, 34.563461, 43.087166>,  <38.739437, 34.881691, 43.149639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505287, 34.563461, 43.087166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010666, 0.185063, -0.982669,
		0.810690, -0.576900, -0.099847,
		-0.585379, -0.795574, -0.156181,
		38.329674, 34.324787, 43.040310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.325302, 39.434643, 33.615147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.217991, 39.679775, 33.317837>,  <32.153606, 39.826855, 33.139450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.217991, 39.679775, 33.317837>,  <32.325302, 39.434643, 33.615147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217991, 39.679775, 33.317837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938592, -0.340050, 0.058400,
		-0.216962, 0.713303, 0.666427,
		-0.268275, 0.612833, -0.743279,
		32.137508, 39.863625, 33.094852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801762, 39.890934, 33.811768>,  <32.325302, 39.434643, 33.615147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801762, 39.890934, 33.811768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.766426, 39.885029, 33.413376>,  <31.745224, 39.881485, 33.174339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.766426, 39.885029, 33.413376>,  <31.801762, 39.890934, 33.811768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766426, 39.885029, 33.413376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979834, -0.178622, 0.089555,
		-0.179227, 0.983807, 0.001312,
		-0.088339, -0.014765, -0.995981,
		31.739923, 39.880600, 33.114582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237736, 40.303650, 33.593895>,  <31.801762, 39.890934, 33.811768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237736, 40.303650, 33.593895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287178, 40.051960, 33.286964>,  <31.316843, 39.900944, 33.102806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287178, 40.051960, 33.286964>,  <31.237736, 40.303650, 33.593895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287178, 40.051960, 33.286964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895750, -0.403503, 0.186591,
		-0.427028, 0.664272, -0.613505,
		0.123604, -0.629227, -0.767330,
		31.324259, 39.863190, 33.056767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556684, 40.229527, 33.314007>,  <31.237736, 40.303650, 33.593895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556684, 40.229527, 33.314007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744295, 39.915577, 33.152027>,  <30.856861, 39.727207, 33.054840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744295, 39.915577, 33.152027>,  <30.556684, 40.229527, 33.314007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744295, 39.915577, 33.152027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825386, -0.552685, 0.115228,
		-0.314249, 0.280195, -0.907049,
		0.469027, -0.784876, -0.404949,
		30.885002, 39.680115, 33.030540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067322, 39.819778, 33.044945>,  <30.556684, 40.229527, 33.314007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067322, 39.819778, 33.044945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378263, 39.569191, 33.067787>,  <30.564829, 39.418839, 33.081493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378263, 39.569191, 33.067787>,  <30.067322, 39.819778, 33.044945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378263, 39.569191, 33.067787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621608, -0.751036, 0.222592,
		-0.096556, -0.208532, -0.973238,
		0.777354, -0.626465, 0.057108,
		30.611469, 39.381252, 33.084919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850506, 39.228573, 32.632210>,  <30.067322, 39.819778, 33.044945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850506, 39.228573, 32.632210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.157921, 39.106400, 32.857086>,  <30.342369, 39.033096, 32.992012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.157921, 39.106400, 32.857086>,  <29.850506, 39.228573, 32.632210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157921, 39.106400, 32.857086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500653, -0.834204, 0.231194,
		0.398370, -0.459145, -0.794033,
		0.768537, -0.305434, 0.562194,
		30.388481, 39.014771, 33.025745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154051, 38.519211, 32.322308>,  <29.850506, 39.228573, 32.632210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154051, 38.519211, 32.322308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225729, 38.576439, 32.711651>,  <30.268736, 38.610775, 32.945255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225729, 38.576439, 32.711651>,  <30.154051, 38.519211, 32.322308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225729, 38.576439, 32.711651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433943, -0.876431, 0.208714,
		0.882940, -0.459781, -0.094967,
		0.179194, 0.143072, 0.973355,
		30.279488, 38.619362, 33.003658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352932, 37.858517, 32.505760>,  <30.154051, 38.519211, 32.322308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352932, 37.858517, 32.505760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283382, 38.049862, 32.850071>,  <30.241652, 38.164669, 33.056656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283382, 38.049862, 32.850071>,  <30.352932, 37.858517, 32.505760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283382, 38.049862, 32.850071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434137, -0.821802, 0.369007,
		0.883907, -0.309534, 0.350565,
		-0.173875, 0.478362, 0.860777,
		30.231220, 38.193371, 33.108303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493048, 37.250790, 33.116440>,  <30.352932, 37.858517, 32.505760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493048, 37.250790, 33.116440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281693, 37.559235, 33.258530>,  <30.154879, 37.744301, 33.343784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281693, 37.559235, 33.258530>,  <30.493048, 37.250790, 33.116440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281693, 37.559235, 33.258530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741804, -0.622831, 0.248615,
		0.412955, -0.132140, 0.901114,
		-0.528390, 0.771117, 0.355223,
		30.123175, 37.790569, 33.365097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197294, 37.037159, 33.812027>,  <30.493048, 37.250790, 33.116440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197294, 37.037159, 33.812027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989563, 37.360226, 33.700336>,  <29.864923, 37.554066, 33.633324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989563, 37.360226, 33.700336>,  <30.197294, 37.037159, 33.812027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989563, 37.360226, 33.700336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845209, -0.437207, 0.307364,
		0.126170, 0.395625, 0.909704,
		-0.519329, 0.807670, -0.279223,
		29.833765, 37.602528, 33.616570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584541, 37.094315, 34.274372>,  <30.197294, 37.037159, 33.812027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584541, 37.094315, 34.274372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509371, 37.310825, 33.946541>,  <29.464268, 37.440731, 33.749844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509371, 37.310825, 33.946541>,  <29.584541, 37.094315, 34.274372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509371, 37.310825, 33.946541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950580, -0.310201, 0.013099,
		-0.247143, 0.781535, 0.572821,
		-0.187927, 0.541275, -0.819576,
		29.452993, 37.473209, 33.700668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994537, 37.354736, 34.526741>,  <29.584541, 37.094315, 34.274372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994537, 37.354736, 34.526741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007730, 37.409882, 34.130779>,  <29.015646, 37.442970, 33.893204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007730, 37.409882, 34.130779>,  <28.994537, 37.354736, 34.526741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007730, 37.409882, 34.130779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930994, -0.356025, -0.080605,
		-0.363543, 0.924251, 0.116610,
		0.032983, 0.137866, -0.989902,
		29.017626, 37.451241, 33.833809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204132, 37.530258, 34.353855>,  <28.994537, 37.354736, 34.526741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204132, 37.530258, 34.353855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412535, 37.408192, 34.035000>,  <28.537577, 37.334953, 33.843685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412535, 37.408192, 34.035000>,  <28.204132, 37.530258, 34.353855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412535, 37.408192, 34.035000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795080, -0.513225, -0.323184,
		-0.310487, 0.802169, -0.510023,
		0.521004, -0.305164, -0.797138,
		28.568836, 37.316643, 33.795860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692551, 37.564354, 33.824200>,  <28.204132, 37.530258, 34.353855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692551, 37.564354, 33.824200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993464, 37.321510, 33.721836>,  <28.174011, 37.175804, 33.660419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993464, 37.321510, 33.721836>,  <27.692551, 37.564354, 33.824200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993464, 37.321510, 33.721836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649800, -0.747830, -0.136049,
		-0.108779, 0.268636, -0.957080,
		0.752281, -0.607112, -0.255908,
		28.219149, 37.139378, 33.645065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416267, 37.191357, 33.221840>,  <27.692551, 37.564354, 33.824200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416267, 37.191357, 33.221840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.725391, 36.977810, 33.359097>,  <27.910866, 36.849682, 33.441452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.725391, 36.977810, 33.359097>,  <27.416267, 37.191357, 33.221840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725391, 36.977810, 33.359097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476780, -0.845259, -0.241284,
		0.418861, 0.022861, -0.907763,
		0.772811, -0.533867, 0.343146,
		27.957235, 36.817650, 33.462040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611437, 36.735260, 32.691166>,  <27.416267, 37.191357, 33.221840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611437, 36.735260, 32.691166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765112, 36.558399, 33.015362>,  <27.857317, 36.452282, 33.209881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765112, 36.558399, 33.015362>,  <27.611437, 36.735260, 32.691166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765112, 36.558399, 33.015362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438313, -0.859977, -0.261383,
		0.812577, -0.254830, -0.524194,
		0.384187, -0.442155, 0.810493,
		27.880367, 36.425755, 33.258511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630213, 36.107380, 32.471790>,  <27.611437, 36.735260, 32.691166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630213, 36.107380, 32.471790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.714220, 36.045925, 32.858009>,  <27.764624, 36.009052, 33.089741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.714220, 36.045925, 32.858009>,  <27.630213, 36.107380, 32.471790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714220, 36.045925, 32.858009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413697, -0.908775, -0.054620,
		0.885860, -0.387974, -0.254416,
		0.210016, -0.153637, 0.965551,
		27.777225, 35.999832, 33.147675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096239, 35.464218, 32.621170>,  <27.630213, 36.107380, 32.471790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096239, 35.464218, 32.621170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891460, 35.548557, 32.954266>,  <27.768593, 35.599159, 33.154121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891460, 35.548557, 32.954266>,  <28.096239, 35.464218, 32.621170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891460, 35.548557, 32.954266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443283, -0.895208, -0.045857,
		0.735805, -0.392616, 0.551764,
		-0.511948, 0.210845, 0.832739,
		27.737877, 35.611813, 33.204086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067032, 34.781555, 32.997974>,  <28.096239, 35.464218, 32.621170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067032, 34.781555, 32.997974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781652, 35.016411, 33.150948>,  <27.610424, 35.157326, 33.242733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781652, 35.016411, 33.150948>,  <28.067032, 34.781555, 32.997974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781652, 35.016411, 33.150948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568247, -0.804145, 0.174489,
		0.409982, -0.092827, 0.907358,
		-0.713450, 0.587141, 0.382434,
		27.567617, 35.192554, 33.265678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885326, 34.550888, 33.693222>,  <28.067032, 34.781555, 32.997974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885326, 34.550888, 33.693222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573198, 34.727638, 33.516205>,  <27.385921, 34.833691, 33.409996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573198, 34.727638, 33.516205>,  <27.885326, 34.550888, 33.693222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573198, 34.727638, 33.516205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587371, -0.760780, 0.276058,
		-0.214690, 0.475349, 0.853201,
		-0.780322, 0.441879, -0.442539,
		27.339102, 34.860203, 33.383442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442036, 34.042179, 34.108349>,  <27.885326, 34.550888, 33.693222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442036, 34.042179, 34.108349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763662, 33.821087, 34.195953>,  <27.956638, 33.688431, 34.248516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763662, 33.821087, 34.195953>,  <27.442036, 34.042179, 34.108349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763662, 33.821087, 34.195953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590090, -0.696956, 0.407488,
		-0.072591, -0.456882, -0.886560,
		0.804068, -0.552730, 0.219009,
		28.004883, 33.655270, 34.261658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663347, 33.352230, 34.489937>,  <27.442036, 34.042179, 34.108349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663347, 33.352230, 34.489937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968641, 33.137035, 34.633072>,  <28.151817, 33.007919, 34.718952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968641, 33.137035, 34.633072>,  <27.663347, 33.352230, 34.489937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968641, 33.137035, 34.633072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390986, 0.825470, 0.407099,
		-0.514396, -0.170803, 0.840371,
		0.763235, -0.537983, 0.357837,
		28.197611, 32.975639, 34.740421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806444, 33.642166, 35.160503>,  <27.663347, 33.352230, 34.489937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806444, 33.642166, 35.160503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.144287, 33.463974, 35.041721>,  <28.346992, 33.357059, 34.970451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.144287, 33.463974, 35.041721>,  <27.806444, 33.642166, 35.160503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144287, 33.463974, 35.041721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522290, 0.807511, 0.274115,
		0.117677, -0.386615, 0.914703,
		0.844610, -0.445483, -0.296951,
		28.397671, 33.330330, 34.952637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274883, 33.636585, 35.727562>,  <27.806444, 33.642166, 35.160503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274883, 33.636585, 35.727562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497866, 33.599979, 35.397503>,  <28.631655, 33.578014, 35.199467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497866, 33.599979, 35.397503>,  <28.274883, 33.636585, 35.727562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497866, 33.599979, 35.397503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629908, 0.694052, 0.348578,
		0.540795, -0.714084, 0.444551,
		0.557455, -0.091517, -0.825147,
		28.665102, 33.572525, 35.149960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038145, 33.602566, 35.990986>,  <28.274883, 33.636585, 35.727562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038145, 33.602566, 35.990986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066311, 33.706707, 35.605808>,  <29.083210, 33.769192, 35.374702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066311, 33.706707, 35.605808>,  <29.038145, 33.602566, 35.990986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066311, 33.706707, 35.605808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701962, 0.672930, 0.233271,
		0.708725, -0.692375, -0.135371,
		0.070415, 0.260350, -0.962943,
		29.087435, 33.784813, 35.316925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701941, 33.853497, 35.950012>,  <29.038145, 33.602566, 35.990986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701941, 33.853497, 35.950012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555899, 33.996937, 35.606358>,  <29.468273, 34.083000, 35.400166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555899, 33.996937, 35.606358>,  <29.701941, 33.853497, 35.950012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555899, 33.996937, 35.606358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774953, 0.628456, -0.067014,
		0.515896, -0.690254, -0.507348,
		-0.365103, 0.358598, -0.859132,
		29.446367, 34.104515, 35.348618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171850, 33.792824, 35.375000>,  <29.701941, 33.853497, 35.950012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171850, 33.792824, 35.375000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948723, 34.106773, 35.267067>,  <29.814846, 34.295143, 35.202305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948723, 34.106773, 35.267067>,  <30.171850, 33.792824, 35.375000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948723, 34.106773, 35.267067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829298, 0.540090, -0.143414,
		0.033174, -0.303774, -0.952166,
		-0.557821, 0.784872, -0.269836,
		29.781376, 34.342236, 35.186115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461559, 34.093922, 34.844715>,  <30.171850, 33.792824, 35.375000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461559, 34.093922, 34.844715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197777, 34.381733, 34.931801>,  <30.039507, 34.554420, 34.984051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197777, 34.381733, 34.931801>,  <30.461559, 34.093922, 34.844715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197777, 34.381733, 34.931801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653433, 0.691837, -0.307224,
		-0.371679, -0.060339, -0.926399,
		-0.659454, 0.719528, 0.217713,
		29.999941, 34.597591, 34.997116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835335, 34.625282, 34.666817>,  <30.461559, 34.093922, 34.844715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835335, 34.625282, 34.666817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.497072, 34.818001, 34.758675>,  <30.294115, 34.933632, 34.813789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.497072, 34.818001, 34.758675>,  <30.835335, 34.625282, 34.666817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497072, 34.818001, 34.758675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465540, 0.876283, -0.124104,
		-0.261029, 0.001961, -0.965329,
		-0.845657, 0.481794, 0.229649,
		30.243376, 34.962540, 34.827568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615763, 35.094017, 34.217873>,  <30.835335, 34.625282, 34.666817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615763, 35.094017, 34.217873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.477629, 35.222897, 34.570446>,  <30.394749, 35.300224, 34.781990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.477629, 35.222897, 34.570446>,  <30.615763, 35.094017, 34.217873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477629, 35.222897, 34.570446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564328, 0.821735, -0.079280,
		-0.749851, 0.470041, -0.465601,
		-0.345336, 0.322200, 0.881437,
		30.374027, 35.319557, 34.834877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525896, 35.788639, 34.153393>,  <30.615763, 35.094017, 34.217873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525896, 35.788639, 34.153393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537090, 35.736595, 34.549835>,  <30.543808, 35.705368, 34.787701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537090, 35.736595, 34.549835>,  <30.525896, 35.788639, 34.153393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537090, 35.736595, 34.549835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687008, 0.722719, 0.075474,
		-0.726110, 0.678785, 0.109610,
		0.027987, -0.130105, 0.991105,
		30.545486, 35.697563, 34.847168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364910, 36.460773, 34.509815>,  <30.525896, 35.788639, 34.153393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364910, 36.460773, 34.509815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.581116, 36.237373, 34.761505>,  <30.710838, 36.103333, 34.912521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.581116, 36.237373, 34.761505>,  <30.364910, 36.460773, 34.509815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581116, 36.237373, 34.761505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639141, 0.758931, 0.124590,
		-0.547124, 0.334823, 0.767170,
		0.540513, -0.558496, 0.629228,
		30.743269, 36.069824, 34.950275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546963, 36.850426, 35.171722>,  <30.364910, 36.460773, 34.509815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546963, 36.850426, 35.171722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.821640, 36.560638, 35.147720>,  <30.986446, 36.386765, 35.133320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.821640, 36.560638, 35.147720>,  <30.546963, 36.850426, 35.171722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821640, 36.560638, 35.147720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726264, 0.680122, 0.099868,
		-0.031540, -0.112158, 0.993190,
		0.686691, -0.724468, -0.060006,
		31.027647, 36.343300, 35.129719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098076, 37.189873, 35.387875>,  <30.546963, 36.850426, 35.171722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098076, 37.189873, 35.387875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.285240, 36.857121, 35.268517>,  <31.397539, 36.657471, 35.196899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.285240, 36.857121, 35.268517>,  <31.098076, 37.189873, 35.387875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285240, 36.857121, 35.268517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824776, 0.532328, -0.190714,
		0.317496, -0.156874, 0.935194,
		0.467912, -0.831876, -0.298397,
		31.425613, 36.607559, 35.178997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690331, 37.136883, 35.682106>,  <31.098076, 37.189873, 35.387875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690331, 37.136883, 35.682106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.772383, 36.894882, 35.374367>,  <31.821613, 36.749680, 35.189724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.772383, 36.894882, 35.374367>,  <31.690331, 37.136883, 35.682106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772383, 36.894882, 35.374367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850080, 0.499705, -0.166307,
		0.485062, -0.619891, 0.616806,
		0.205129, -0.605004, -0.769346,
		31.833921, 36.713383, 35.143562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346142, 36.867977, 35.813789>,  <31.690331, 37.136883, 35.682106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346142, 36.867977, 35.813789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.279930, 36.861275, 35.419365>,  <32.240204, 36.857254, 35.182709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.279930, 36.861275, 35.419365>,  <32.346142, 36.867977, 35.813789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279930, 36.861275, 35.419365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867667, 0.472792, -0.153689,
		0.468777, -0.881015, -0.063728,
		-0.165533, -0.016751, -0.986062,
		32.230270, 36.856251, 35.123547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985420, 36.698666, 35.469582>,  <32.346142, 36.867977, 35.813789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985420, 36.698666, 35.469582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.771889, 36.875492, 35.181248>,  <32.643768, 36.981590, 35.008247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.771889, 36.875492, 35.181248>,  <32.985420, 36.698666, 35.469582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771889, 36.875492, 35.181248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836455, 0.401031, -0.373519,
		0.123955, -0.802340, -0.583854,
		-0.533833, 0.442069, -0.720831,
		32.611740, 37.008114, 34.965000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361904, 36.528111, 34.966835>,  <32.985420, 36.698666, 35.469582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361904, 36.528111, 34.966835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128292, 36.828117, 34.842651>,  <32.988125, 37.008121, 34.768143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128292, 36.828117, 34.842651>,  <33.361904, 36.528111, 34.966835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128292, 36.828117, 34.842651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786627, 0.428550, -0.444479,
		-0.200321, -0.503803, -0.840270,
		-0.584028, 0.750018, -0.310458,
		32.953083, 37.053123, 34.749516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653847, 36.885948, 34.341309>,  <33.361904, 36.528111, 34.966835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653847, 36.885948, 34.341309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.372482, 37.164597, 34.397774>,  <33.203663, 37.331787, 34.431652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.372482, 37.164597, 34.397774>,  <33.653847, 36.885948, 34.341309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372482, 37.164597, 34.397774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633121, 0.704343, -0.321028,
		-0.323059, -0.136445, -0.936491,
		-0.703414, 0.696623, 0.141158,
		33.161457, 37.373585, 34.440121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618034, 37.256916, 33.685905>,  <33.653847, 36.885948, 34.341309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618034, 37.256916, 33.685905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.481663, 37.478626, 33.989628>,  <33.399841, 37.611652, 34.171860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.481663, 37.478626, 33.989628>,  <33.618034, 37.256916, 33.685905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481663, 37.478626, 33.989628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571410, 0.763547, -0.300810,
		-0.746497, 0.331318, -0.577036,
		-0.340930, 0.554278, 0.759304,
		33.379383, 37.644909, 34.217419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665234, 37.908539, 33.457722>,  <33.618034, 37.256916, 33.685905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665234, 37.908539, 33.457722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.621231, 37.968842, 33.850693>,  <33.594830, 38.005024, 34.086475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.621231, 37.968842, 33.850693>,  <33.665234, 37.908539, 33.457722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621231, 37.968842, 33.850693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607098, 0.792812, -0.053682,
		-0.786976, 0.590526, -0.178738,
		-0.110005, 0.150758, 0.982431,
		33.588230, 38.014069, 34.145424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449345, 38.676105, 33.560848>,  <33.665234, 37.908539, 33.457722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449345, 38.676105, 33.560848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.617867, 38.510536, 33.883629>,  <33.718979, 38.411194, 34.077297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.617867, 38.510536, 33.883629>,  <33.449345, 38.676105, 33.560848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617867, 38.510536, 33.883629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784871, 0.612218, -0.095745,
		-0.454400, 0.673691, 0.582804,
		0.421306, -0.413919, 0.806952,
		33.744259, 38.386360, 34.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.186573, 30.442827, 47.022049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.794773, 30.387848, 46.963146>,  <37.559692, 30.354860, 46.927803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.794773, 30.387848, 46.963146>,  <38.186573, 30.442827, 47.022049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794773, 30.387848, 46.963146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056178, -0.515649, 0.854956,
		-0.193445, 0.845704, 0.497357,
		-0.979501, -0.137446, -0.147260,
		37.500923, 30.346615, 46.918968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814907, 30.851847, 47.534737>,  <38.186573, 30.442827, 47.022049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814907, 30.851847, 47.534737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630875, 30.521217, 47.405060>,  <37.520454, 30.322840, 47.327251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630875, 30.521217, 47.405060>,  <37.814907, 30.851847, 47.534737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630875, 30.521217, 47.405060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058946, -0.335894, 0.940054,
		-0.885917, 0.451612, 0.105816,
		-0.460082, -0.826572, -0.324195,
		37.492851, 30.273245, 47.307800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225212, 30.649532, 48.022900>,  <37.814907, 30.851847, 47.534737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225212, 30.649532, 48.022900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317280, 30.307785, 47.836533>,  <37.372520, 30.102737, 47.724712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317280, 30.307785, 47.836533>,  <37.225212, 30.649532, 48.022900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317280, 30.307785, 47.836533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123355, -0.500525, 0.856889,
		-0.965301, -0.139754, -0.220595,
		0.230167, -0.854367, -0.465918,
		37.386330, 30.051476, 47.696758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797615, 30.122051, 48.260178>,  <37.225212, 30.649532, 48.022900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797615, 30.122051, 48.260178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094650, 29.900757, 48.109184>,  <37.272873, 29.767981, 48.018589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094650, 29.900757, 48.109184>,  <36.797615, 30.122051, 48.260178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094650, 29.900757, 48.109184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130048, -0.671996, 0.729046,
		-0.656999, -0.492292, -0.570965,
		0.742590, -0.553236, -0.377479,
		37.317429, 29.734785, 47.995941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595306, 29.536121, 48.520252>,  <36.797615, 30.122051, 48.260178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595306, 29.536121, 48.520252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959396, 29.446512, 48.380932>,  <37.177849, 29.392746, 48.297340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959396, 29.446512, 48.380932>,  <36.595306, 29.536121, 48.520252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959396, 29.446512, 48.380932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089924, -0.714060, 0.694285,
		-0.404242, -0.663273, -0.629807,
		0.910221, -0.224024, -0.348297,
		37.232464, 29.379305, 48.276443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539989, 28.907124, 48.374317>,  <36.595306, 29.536121, 48.520252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539989, 28.907124, 48.374317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922222, 28.984455, 48.463299>,  <37.151562, 29.030853, 48.516685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922222, 28.984455, 48.463299>,  <36.539989, 28.907124, 48.374317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922222, 28.984455, 48.463299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011305, -0.778278, 0.627818,
		0.294504, -0.597418, -0.745895,
		0.955584, 0.193327, 0.222452,
		37.208897, 29.042454, 48.530033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812855, 28.256453, 48.523506>,  <36.539989, 28.907124, 48.374317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812855, 28.256453, 48.523506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075958, 28.514912, 48.678349>,  <37.233818, 28.669987, 48.771255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075958, 28.514912, 48.678349>,  <36.812855, 28.256453, 48.523506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075958, 28.514912, 48.678349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025231, -0.532542, 0.846027,
		0.752809, -0.546711, -0.366585,
		0.657755, 0.646146, 0.387109,
		37.273285, 28.708755, 48.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476852, 27.808252, 48.790157>,  <36.812855, 28.256453, 48.523506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476852, 27.808252, 48.790157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391697, 28.153664, 48.973022>,  <37.340603, 28.360910, 49.082741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391697, 28.153664, 48.973022>,  <37.476852, 27.808252, 48.790157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391697, 28.153664, 48.973022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060918, -0.455245, 0.888280,
		0.975175, 0.216955, 0.044313,
		-0.212890, 0.863529, 0.457160,
		37.327831, 28.412722, 49.110172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779419, 27.657322, 49.358177>,  <37.476852, 27.808252, 48.790157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779419, 27.657322, 49.358177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589222, 27.998983, 49.442394>,  <37.475101, 28.203979, 49.492924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589222, 27.998983, 49.442394>,  <37.779419, 27.657322, 49.358177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589222, 27.998983, 49.442394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160518, -0.319555, 0.933873,
		0.864950, 0.410255, 0.289054,
		-0.475494, 0.854152, 0.210546,
		37.446575, 28.255230, 49.505558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056522, 27.914042, 50.029106>,  <37.779419, 27.657322, 49.358177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056522, 27.914042, 50.029106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695889, 28.083899, 49.996071>,  <37.479507, 28.185812, 49.976250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695889, 28.083899, 49.996071>,  <38.056522, 27.914042, 50.029106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695889, 28.083899, 49.996071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161740, -0.153814, 0.974772,
		0.401224, 0.892200, 0.207358,
		-0.901587, 0.424641, -0.082590,
		37.425411, 28.211290, 49.971294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971451, 28.246777, 50.644135>,  <38.056522, 27.914042, 50.029106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971451, 28.246777, 50.644135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600216, 28.221598, 50.497337>,  <37.377476, 28.206490, 50.409260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600216, 28.221598, 50.497337>,  <37.971451, 28.246777, 50.644135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600216, 28.221598, 50.497337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353472, -0.160921, 0.921500,
		-0.117063, 0.984958, 0.127099,
		-0.928091, -0.062948, -0.366993,
		37.321789, 28.202713, 50.387241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644249, 28.627218, 51.134422>,  <37.971451, 28.246777, 50.644135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644249, 28.627218, 51.134422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.383488, 28.393494, 50.941093>,  <37.227032, 28.253260, 50.825096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.383488, 28.393494, 50.941093>,  <37.644249, 28.627218, 51.134422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383488, 28.393494, 50.941093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381124, -0.298549, 0.874993,
		-0.655562, 0.754620, -0.028068,
		-0.651908, -0.584309, -0.483321,
		37.187916, 28.218201, 50.796097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929195, 28.944712, 51.340202>,  <37.644249, 28.627218, 51.134422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929195, 28.944712, 51.340202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937435, 28.545002, 51.327404>,  <36.942379, 28.305176, 51.319725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937435, 28.545002, 51.327404>,  <36.929195, 28.944712, 51.340202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937435, 28.545002, 51.327404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413578, -0.037651, 0.909690,
		-0.910236, -0.005508, -0.414054,
		0.020600, -0.999276, -0.031993,
		36.943615, 28.245220, 51.317806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281281, 28.649958, 51.409477>,  <36.929195, 28.944712, 51.340202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281281, 28.649958, 51.409477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540897, 28.395102, 51.575752>,  <36.696667, 28.242188, 51.675518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540897, 28.395102, 51.575752>,  <36.281281, 28.649958, 51.409477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540897, 28.395102, 51.575752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514021, 0.035541, 0.857041,
		-0.560829, -0.769929, -0.304435,
		0.649041, -0.637139, 0.415692,
		36.735611, 28.203960, 51.700459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149189, 29.245998, 51.855198>,  <36.281281, 28.649958, 51.409477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149189, 29.245998, 51.855198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048050, 29.577726, 52.054512>,  <35.987366, 29.776764, 52.174103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048050, 29.577726, 52.054512>,  <36.149189, 29.245998, 51.855198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048050, 29.577726, 52.054512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061242, 0.500273, -0.863699,
		-0.965566, -0.248901, -0.075704,
		-0.252848, 0.829322, 0.498290,
		35.972195, 29.826523, 52.203999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611328, 29.552105, 51.494205>,  <36.149189, 29.245998, 51.855198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611328, 29.552105, 51.494205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794266, 29.821953, 51.725971>,  <35.904030, 29.983862, 51.865032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794266, 29.821953, 51.725971>,  <35.611328, 29.552105, 51.494205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794266, 29.821953, 51.725971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193523, 0.560432, -0.805273,
		-0.867976, 0.480419, 0.125757,
		0.457346, 0.674621, 0.579414,
		35.931469, 30.024340, 51.899796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416695, 30.278221, 51.316326>,  <35.611328, 29.552105, 51.494205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416695, 30.278221, 51.316326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737968, 30.381943, 51.530857>,  <35.930733, 30.444176, 51.659576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737968, 30.381943, 51.530857>,  <35.416695, 30.278221, 51.316326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737968, 30.381943, 51.530857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235579, 0.688661, -0.685747,
		-0.547168, 0.677131, 0.492036,
		0.803187, 0.259306, 0.536331,
		35.978924, 30.459734, 51.691757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373039, 31.040800, 51.325134>,  <35.416695, 30.278221, 51.316326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373039, 31.040800, 51.325134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752823, 30.923758, 51.370575>,  <35.980694, 30.853531, 51.397839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752823, 30.923758, 51.370575>,  <35.373039, 31.040800, 51.325134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752823, 30.923758, 51.370575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302489, 0.756302, -0.580092,
		0.083819, 0.585139, 0.806589,
		0.949460, -0.292607, 0.113605,
		36.037663, 30.835976, 51.404655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700985, 31.667746, 51.339546>,  <35.373039, 31.040800, 51.325134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700985, 31.667746, 51.339546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976429, 31.385782, 51.271515>,  <36.141693, 31.216604, 51.230698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976429, 31.385782, 51.271515>,  <35.700985, 31.667746, 51.339546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976429, 31.385782, 51.271515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452625, 0.601075, -0.658664,
		0.566525, 0.376581, 0.732964,
		0.688607, -0.704908, -0.170074,
		36.183010, 31.174309, 51.220493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191166, 32.014534, 51.371918>,  <35.700985, 31.667746, 51.339546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191166, 32.014534, 51.371918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316334, 31.690308, 51.173904>,  <36.391434, 31.495771, 51.055096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316334, 31.690308, 51.173904>,  <36.191166, 32.014534, 51.371918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316334, 31.690308, 51.173904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547265, 0.579865, -0.603537,
		0.776263, -0.082059, 0.625046,
		0.312917, -0.810569, -0.495036,
		36.410210, 31.447136, 51.025394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887344, 32.064579, 51.263645>,  <36.191166, 32.014534, 51.371918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887344, 32.064579, 51.263645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770836, 31.823107, 50.966801>,  <36.700932, 31.678225, 50.788692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770836, 31.823107, 50.966801>,  <36.887344, 32.064579, 51.263645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770836, 31.823107, 50.966801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420591, 0.615941, -0.666123,
		0.859222, -0.506151, 0.074494,
		-0.291275, -0.603679, -0.742112,
		36.683453, 31.642002, 50.744167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459351, 32.167545, 50.918968>,  <36.887344, 32.064579, 51.263645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459351, 32.167545, 50.918968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172722, 32.014133, 50.685928>,  <37.000744, 31.922087, 50.546104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172722, 32.014133, 50.685928>,  <37.459351, 32.167545, 50.918968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172722, 32.014133, 50.685928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335164, 0.543185, -0.769815,
		0.611711, -0.746896, -0.260684,
		-0.716571, -0.383533, -0.582605,
		36.957748, 31.899075, 50.511147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844379, 31.820673, 50.336487>,  <37.459351, 32.167545, 50.918968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844379, 31.820673, 50.336487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.468723, 31.853966, 50.203167>,  <37.243332, 31.873941, 50.123173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.468723, 31.853966, 50.203167>,  <37.844379, 31.820673, 50.336487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468723, 31.853966, 50.203167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341862, 0.322158, -0.882805,
		0.033900, -0.943020, -0.331005,
		-0.939138, 0.083231, -0.333304,
		37.186981, 31.878935, 50.103176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841599, 31.536282, 49.653305>,  <37.844379, 31.820673, 50.336487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841599, 31.536282, 49.653305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521648, 31.773739, 49.688622>,  <37.329678, 31.916212, 49.709812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521648, 31.773739, 49.688622>,  <37.841599, 31.536282, 49.653305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521648, 31.773739, 49.688622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037828, 0.196685, -0.979737,
		-0.598978, -0.780324, -0.179778,
		-0.799872, 0.593641, 0.088292,
		37.281689, 31.951832, 49.715111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457375, 31.309690, 49.201488>,  <37.841599, 31.536282, 49.653305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457375, 31.309690, 49.201488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317364, 31.680546, 49.254997>,  <37.233356, 31.903059, 49.287102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317364, 31.680546, 49.254997>,  <37.457375, 31.309690, 49.201488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317364, 31.680546, 49.254997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113370, 0.183683, -0.976426,
		-0.929853, -0.326612, -0.169404,
		-0.350029, 0.927138, 0.133770,
		37.212357, 31.958687, 49.295128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958218, 31.350838, 48.753651>,  <37.457375, 31.309690, 49.201488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958218, 31.350838, 48.753651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.038788, 31.733297, 48.838696>,  <37.087132, 31.962772, 48.889725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.038788, 31.733297, 48.838696>,  <36.958218, 31.350838, 48.753651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038788, 31.733297, 48.838696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041296, 0.225161, -0.973446,
		-0.978632, 0.187300, 0.084839,
		0.201429, 0.956149, 0.212615,
		37.099216, 32.020142, 48.902481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448505, 31.729172, 48.442299>,  <36.958218, 31.350838, 48.753651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448505, 31.729172, 48.442299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755917, 31.982574, 48.478142>,  <36.940365, 32.134617, 48.499645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755917, 31.982574, 48.478142>,  <36.448505, 31.729172, 48.442299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755917, 31.982574, 48.478142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088365, 0.243804, -0.965791,
		-0.633681, 0.734322, 0.243351,
		0.768531, 0.633507, 0.089605,
		36.986477, 32.172626, 48.505024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271194, 32.267994, 47.935524>,  <36.448505, 31.729172, 48.442299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271194, 32.267994, 47.935524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652355, 32.353275, 48.021809>,  <36.881050, 32.404442, 48.073578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652355, 32.353275, 48.021809>,  <36.271194, 32.267994, 47.935524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652355, 32.353275, 48.021809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168385, 0.219642, -0.960939,
		-0.252250, 0.952000, 0.173397,
		0.952899, 0.213199, 0.215707,
		36.938225, 32.417236, 48.086521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720760, 32.763336, 47.675194>,  <36.271194, 32.267994, 47.935524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720760, 32.763336, 47.675194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407673, 32.549511, 47.547695>,  <35.219822, 32.421215, 47.471195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407673, 32.549511, 47.547695>,  <35.720760, 32.763336, 47.675194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407673, 32.549511, 47.547695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165535, -0.314884, 0.934583,
		-0.599962, 0.784276, 0.157975,
		-0.782715, -0.534564, -0.318744,
		35.172859, 32.389141, 47.452072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239868, 32.703693, 48.243153>,  <35.720760, 32.763336, 47.675194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239868, 32.703693, 48.243153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075581, 32.430172, 48.001911>,  <34.977009, 32.266060, 47.857166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075581, 32.430172, 48.001911>,  <35.239868, 32.703693, 48.243153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075581, 32.430172, 48.001911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510799, -0.375350, 0.773432,
		-0.755246, 0.625724, -0.195122,
		-0.410716, -0.683800, -0.603101,
		34.952366, 32.225033, 47.820980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604610, 32.646919, 48.557705>,  <35.239868, 32.703693, 48.243153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604610, 32.646919, 48.557705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651581, 32.322170, 48.328941>,  <34.679764, 32.127319, 48.191685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651581, 32.322170, 48.328941>,  <34.604610, 32.646919, 48.557705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651581, 32.322170, 48.328941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382964, -0.568367, 0.728215,
		-0.916269, 0.133505, -0.377660,
		0.117429, -0.811871, -0.571905,
		34.686810, 32.078609, 48.157372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919739, 32.247173, 48.514397>,  <34.604610, 32.646919, 48.557705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919739, 32.247173, 48.514397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220875, 31.994286, 48.441147>,  <34.401554, 31.842552, 48.397198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220875, 31.994286, 48.441147>,  <33.919739, 32.247173, 48.514397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220875, 31.994286, 48.441147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321117, -0.595641, 0.736271,
		-0.574562, -0.495488, -0.651437,
		0.752836, -0.632221, -0.183123,
		34.446724, 31.804619, 48.386208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565197, 31.669231, 48.712894>,  <33.919739, 32.247173, 48.514397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565197, 31.669231, 48.712894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.952030, 31.570667, 48.687504>,  <34.184132, 31.511528, 48.672268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.952030, 31.570667, 48.687504>,  <33.565197, 31.669231, 48.712894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952030, 31.570667, 48.687504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114610, -0.644539, 0.755933,
		-0.227185, -0.723775, -0.651565,
		0.967084, -0.246412, -0.063477,
		34.242157, 31.496744, 48.668461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600697, 31.023766, 48.583679>,  <33.565197, 31.669231, 48.712894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600697, 31.023766, 48.583679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937252, 31.119560, 48.777466>,  <34.139187, 31.177038, 48.893738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937252, 31.119560, 48.777466>,  <33.600697, 31.023766, 48.583679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937252, 31.119560, 48.777466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232754, -0.648463, 0.724790,
		0.487736, -0.722593, -0.489869,
		0.841391, 0.239488, 0.484465,
		34.189671, 31.191406, 48.922806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874607, 30.383337, 48.826218>,  <33.600697, 31.023766, 48.583679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874607, 30.383337, 48.826218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047295, 30.677412, 49.035259>,  <34.150906, 30.853857, 49.160686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047295, 30.677412, 49.035259>,  <33.874607, 30.383337, 48.826218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047295, 30.677412, 49.035259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394915, -0.366844, 0.842299,
		0.810964, -0.570020, 0.131964,
		0.431718, 0.735188, 0.522607,
		34.176811, 30.897968, 49.192039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882935, 29.652704, 48.801392>,  <33.874607, 30.383337, 48.826218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882935, 29.652704, 48.801392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484138, 29.646473, 48.831768>,  <33.244862, 29.642735, 48.849995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484138, 29.646473, 48.831768>,  <33.882935, 29.652704, 48.801392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484138, 29.646473, 48.831768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077489, 0.228199, -0.970526,
		-0.002213, -0.973490, -0.228719,
		-0.996991, -0.015575, 0.075940,
		33.185040, 29.641800, 48.854549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541740, 29.266916, 48.179649>,  <33.882935, 29.652704, 48.801392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541740, 29.266916, 48.179649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270702, 29.533686, 48.303635>,  <33.108078, 29.693748, 48.378025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270702, 29.533686, 48.303635>,  <33.541740, 29.266916, 48.179649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270702, 29.533686, 48.303635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272444, 0.163848, -0.948118,
		-0.683111, -0.726887, 0.070677,
		-0.677594, 0.666926, 0.309962,
		33.067425, 29.733763, 48.396622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986343, 29.124943, 47.737175>,  <33.541740, 29.266916, 48.179649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986343, 29.124943, 47.737175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935387, 29.490925, 47.890343>,  <32.904812, 29.710514, 47.982243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935387, 29.490925, 47.890343>,  <32.986343, 29.124943, 47.737175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935387, 29.490925, 47.890343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306393, 0.330880, -0.892548,
		-0.943342, -0.231027, 0.238184,
		-0.127393, 0.914956, 0.382918,
		32.897167, 29.765411, 48.005219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218319, 29.310930, 47.571667>,  <32.986343, 29.124943, 47.737175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218319, 29.310930, 47.571667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424938, 29.645060, 47.646942>,  <32.548908, 29.845537, 47.692108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424938, 29.645060, 47.646942>,  <32.218319, 29.310930, 47.571667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424938, 29.645060, 47.646942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350635, 0.406862, -0.843515,
		-0.781176, 0.369727, 0.503056,
		0.516544, 0.835324, 0.188192,
		32.579903, 29.895657, 47.703400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850340, 29.890818, 47.346329>,  <32.218319, 29.310930, 47.571667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850340, 29.890818, 47.346329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187984, 30.099258, 47.396809>,  <32.390572, 30.224323, 47.427097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187984, 30.099258, 47.396809>,  <31.850340, 29.890818, 47.346329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187984, 30.099258, 47.396809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143698, 0.446635, -0.883101,
		-0.516552, 0.727302, 0.451892,
		0.844112, 0.521104, 0.126198,
		32.441219, 30.255590, 47.434669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668650, 30.535957, 47.377190>,  <31.850340, 29.890818, 47.346329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668650, 30.535957, 47.377190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043396, 30.522762, 47.237938>,  <32.268242, 30.514845, 47.154388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043396, 30.522762, 47.237938>,  <31.668650, 30.535957, 47.377190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043396, 30.522762, 47.237938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276530, 0.539472, -0.795299,
		0.214042, 0.841357, 0.496291,
		0.936866, -0.032989, -0.348130,
		32.324455, 30.512865, 47.133499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646917, 31.059315, 46.920204>,  <31.668650, 30.535957, 47.377190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646917, 31.059315, 46.920204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993977, 30.903135, 46.797085>,  <32.202213, 30.809427, 46.723213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993977, 30.903135, 46.797085>,  <31.646917, 31.059315, 46.920204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993977, 30.903135, 46.797085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140860, 0.400668, -0.905331,
		0.476811, 0.828863, 0.292639,
		0.867646, -0.390450, -0.307796,
		32.254269, 30.785999, 46.704746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.301643, 25.432552, 49.646687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.381615, 25.811008, 49.748550>,  <36.429596, 26.038082, 49.809669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.381615, 25.811008, 49.748550>,  <36.301643, 25.432552, 49.646687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381615, 25.811008, 49.748550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230565, 0.298037, -0.926290,
		-0.952297, 0.126473, 0.277732,
		0.199926, 0.946139, 0.254660,
		36.441593, 26.094851, 49.824947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673927, 25.740562, 49.599361>,  <36.301643, 25.432552, 49.646687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673927, 25.740562, 49.599361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.990887, 25.981390, 49.560123>,  <36.181061, 26.125887, 49.536583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.990887, 25.981390, 49.560123>,  <35.673927, 25.740562, 49.599361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990887, 25.981390, 49.560123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441784, 0.455522, -0.772869,
		-0.420636, 0.655755, 0.626938,
		0.792396, 0.602068, -0.098093,
		36.228607, 26.162010, 49.530697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461620, 26.321859, 49.597252>,  <35.673927, 25.740562, 49.599361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461620, 26.321859, 49.597252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.805588, 26.334307, 49.393459>,  <36.011971, 26.341776, 49.271183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.805588, 26.334307, 49.393459>,  <35.461620, 26.321859, 49.597252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805588, 26.334307, 49.393459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481454, 0.380951, -0.789353,
		0.169522, 0.924071, 0.342570,
		0.859921, 0.031119, -0.509477,
		36.063564, 26.343643, 49.240616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482681, 26.968122, 49.253464>,  <35.461620, 26.321859, 49.597252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482681, 26.968122, 49.253464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.754982, 26.759813, 49.047405>,  <35.918362, 26.634829, 48.923771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.754982, 26.759813, 49.047405>,  <35.482681, 26.968122, 49.253464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754982, 26.759813, 49.047405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334191, 0.405004, -0.851051,
		0.651840, 0.751511, 0.101669,
		0.680751, -0.520772, -0.515146,
		35.959206, 26.603582, 48.892860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612614, 27.442297, 48.735168>,  <35.482681, 26.968122, 49.253464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612614, 27.442297, 48.735168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.776310, 27.097204, 48.616367>,  <35.874527, 26.890148, 48.545086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.776310, 27.097204, 48.616367>,  <35.612614, 27.442297, 48.735168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776310, 27.097204, 48.616367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202830, 0.231349, -0.951492,
		0.889594, 0.449635, -0.080309,
		0.409245, -0.862732, -0.297006,
		35.899082, 26.838385, 48.527264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141838, 27.565676, 48.307693>,  <35.612614, 27.442297, 48.735168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141838, 27.565676, 48.307693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023540, 27.202152, 48.189980>,  <35.952560, 26.984037, 48.119350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023540, 27.202152, 48.189980>,  <36.141838, 27.565676, 48.307693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023540, 27.202152, 48.189980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258877, 0.372782, -0.891076,
		0.919521, -0.187346, -0.345518,
		-0.295742, -0.908810, -0.294281,
		35.934818, 26.929510, 48.101696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335648, 27.505753, 47.554821>,  <36.141838, 27.565676, 48.307693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335648, 27.505753, 47.554821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.067272, 27.212376, 47.598457>,  <35.906246, 27.036350, 47.624638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.067272, 27.212376, 47.598457>,  <36.335648, 27.505753, 47.554821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067272, 27.212376, 47.598457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399687, 0.233799, -0.886334,
		0.624571, -0.638279, -0.450013,
		-0.670941, -0.733443, 0.109087,
		35.865990, 26.992342, 47.631184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290478, 27.155285, 46.932911>,  <36.335648, 27.505753, 47.554821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290478, 27.155285, 46.932911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.933498, 27.042057, 47.073429>,  <35.719311, 26.974119, 47.157738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.933498, 27.042057, 47.073429>,  <36.290478, 27.155285, 46.932911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933498, 27.042057, 47.073429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377754, 0.043158, -0.924899,
		0.246654, -0.958127, -0.145449,
		-0.892448, -0.283074, 0.351291,
		35.665764, 26.957136, 47.178818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094406, 26.615091, 46.496761>,  <36.290478, 27.155285, 46.932911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094406, 26.615091, 46.496761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762581, 26.759144, 46.667473>,  <35.563488, 26.845575, 46.769897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762581, 26.759144, 46.667473>,  <36.094406, 26.615091, 46.496761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762581, 26.759144, 46.667473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452415, 0.014567, -0.891689,
		-0.327342, -0.932788, 0.150844,
		-0.829559, 0.360132, 0.426775,
		35.513714, 26.867184, 46.795506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580154, 26.331720, 46.086094>,  <36.094406, 26.615091, 46.496761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580154, 26.331720, 46.086094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372223, 26.591375, 46.308228>,  <35.247463, 26.747169, 46.441505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372223, 26.591375, 46.308228>,  <35.580154, 26.331720, 46.086094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372223, 26.591375, 46.308228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654937, 0.114535, -0.746953,
		-0.548482, -0.751997, 0.365606,
		-0.519832, 0.649139, 0.555332,
		35.216274, 26.786118, 46.474827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842934, 26.144318, 46.034912>,  <35.580154, 26.331720, 46.086094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842934, 26.144318, 46.034912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.904552, 26.532133, 46.111080>,  <34.941525, 26.764822, 46.156780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.904552, 26.532133, 46.111080>,  <34.842934, 26.144318, 46.034912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904552, 26.532133, 46.111080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394886, 0.237073, -0.887616,
		-0.905723, 0.061541, 0.419379,
		0.154048, 0.969541, 0.190420,
		34.950768, 26.822996, 46.168205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248592, 26.476477, 45.833820>,  <34.842934, 26.144318, 46.034912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248592, 26.476477, 45.833820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526821, 26.763859, 45.834591>,  <34.693760, 26.936287, 45.835052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526821, 26.763859, 45.834591>,  <34.248592, 26.476477, 45.833820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526821, 26.763859, 45.834591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274116, 0.267867, -0.923638,
		-0.664108, 0.641928, 0.383260,
		0.695572, 0.718454, 0.001930,
		34.735493, 26.979395, 45.835171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578129, 26.815367, 45.746239>,  <34.248592, 26.476477, 45.833820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578129, 26.815367, 45.746239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262344, 26.570135, 45.734379>,  <33.072872, 26.422997, 45.727264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262344, 26.570135, 45.734379>,  <33.578129, 26.815367, 45.746239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262344, 26.570135, 45.734379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033406, -0.005310, 0.999428,
		-0.612886, 0.790003, -0.016289,
		-0.789465, -0.613080, -0.029646,
		33.025505, 26.386211, 45.725487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072880, 27.084911, 46.242905>,  <33.578129, 26.815367, 45.746239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072880, 27.084911, 46.242905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.009628, 26.692415, 46.198799>,  <32.971676, 26.456917, 46.172337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.009628, 26.692415, 46.198799>,  <33.072880, 27.084911, 46.242905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009628, 26.692415, 46.198799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247083, -0.068798, 0.966549,
		-0.956005, 0.180083, -0.231569,
		-0.158128, -0.981243, -0.110267,
		32.962189, 26.398043, 46.165718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470573, 26.886503, 46.571247>,  <33.072880, 27.084911, 46.242905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470573, 26.886503, 46.571247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657730, 26.533487, 46.552494>,  <32.770023, 26.321678, 46.541241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657730, 26.533487, 46.552494>,  <32.470573, 26.886503, 46.571247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657730, 26.533487, 46.552494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075554, -0.092802, 0.992814,
		-0.880549, -0.460990, -0.110101,
		0.467894, -0.882540, -0.046887,
		32.798100, 26.268726, 46.538429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139973, 26.538921, 47.115284>,  <32.470573, 26.886503, 46.571247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139973, 26.538921, 47.115284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.450191, 26.297140, 47.042446>,  <32.636322, 26.152071, 46.998745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.450191, 26.297140, 47.042446>,  <32.139973, 26.538921, 47.115284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450191, 26.297140, 47.042446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093360, -0.395093, 0.913885,
		-0.624344, -0.691763, -0.362846,
		0.775550, -0.604454, -0.182091,
		32.682858, 26.115805, 46.987820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928942, 25.898888, 47.289436>,  <32.139973, 26.538921, 47.115284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928942, 25.898888, 47.289436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.324326, 25.842833, 47.312439>,  <32.561558, 25.809198, 47.326241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.324326, 25.842833, 47.312439>,  <31.928942, 25.898888, 47.289436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324326, 25.842833, 47.312439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091609, -0.250707, 0.963719,
		-0.120638, -0.957866, -0.260652,
		0.988461, -0.140139, 0.057505,
		32.620865, 25.800791, 47.329689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115295, 25.296654, 47.494335>,  <31.928942, 25.898888, 47.289436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115295, 25.296654, 47.494335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440178, 25.498611, 47.611229>,  <32.635109, 25.619787, 47.681366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440178, 25.498611, 47.611229>,  <32.115295, 25.296654, 47.494335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440178, 25.498611, 47.611229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198710, -0.231542, 0.952314,
		0.548485, -0.831545, -0.087732,
		0.812206, 0.504897, 0.292233,
		32.683842, 25.650080, 47.698898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463509, 24.845245, 47.931866>,  <32.115295, 25.296654, 47.494335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463509, 24.845245, 47.931866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.672466, 25.175362, 48.017654>,  <32.797840, 25.373432, 48.069126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.672466, 25.175362, 48.017654>,  <32.463509, 24.845245, 47.931866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672466, 25.175362, 48.017654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009719, -0.257267, 0.966291,
		0.852647, -0.502703, -0.142416,
		0.522396, 0.825290, 0.214472,
		32.829185, 25.422949, 48.081997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034927, 24.607580, 48.377636>,  <32.463509, 24.845245, 47.931866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034927, 24.607580, 48.377636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015598, 25.000748, 48.448666>,  <33.004002, 25.236649, 48.491283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015598, 25.000748, 48.448666>,  <33.034927, 24.607580, 48.377636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015598, 25.000748, 48.448666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138544, -0.169467, 0.975749,
		0.989177, 0.071748, -0.127989,
		-0.048318, 0.982921, 0.177573,
		33.001102, 25.295624, 48.501938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625393, 24.810303, 48.787209>,  <33.034927, 24.607580, 48.377636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625393, 24.810303, 48.787209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.339836, 25.082243, 48.854328>,  <33.168503, 25.245407, 48.894600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.339836, 25.082243, 48.854328>,  <33.625393, 24.810303, 48.787209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339836, 25.082243, 48.854328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300992, 0.081553, 0.950133,
		0.632265, 0.728801, -0.262850,
		-0.713894, 0.679852, 0.167800,
		33.125668, 25.286198, 48.904667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971302, 25.337877, 49.096233>,  <33.625393, 24.810303, 48.787209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971302, 25.337877, 49.096233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.581463, 25.362349, 49.182411>,  <33.347561, 25.377031, 49.234119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.581463, 25.362349, 49.182411>,  <33.971302, 25.337877, 49.096233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581463, 25.362349, 49.182411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211391, -0.066470, 0.975139,
		0.073978, 0.995911, 0.051849,
		-0.974598, 0.061178, 0.215444,
		33.289082, 25.380701, 49.247044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997890, 25.705343, 49.797890>,  <33.971302, 25.337877, 49.096233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997890, 25.705343, 49.797890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.612606, 25.636398, 49.715416>,  <33.381435, 25.595032, 49.665932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.612606, 25.636398, 49.715416>,  <33.997890, 25.705343, 49.797890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612606, 25.636398, 49.715416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204364, -0.028415, 0.978482,
		-0.174512, 0.984624, -0.007855,
		-0.963214, -0.172363, -0.206180,
		33.323643, 25.584690, 49.653561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653114, 26.294041, 50.004158>,  <33.997890, 25.705343, 49.797890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653114, 26.294041, 50.004158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.430962, 25.962864, 50.035320>,  <33.297672, 25.764158, 50.054020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.430962, 25.962864, 50.035320>,  <33.653114, 26.294041, 50.004158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430962, 25.962864, 50.035320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029247, 0.074182, 0.996816,
		-0.831084, 0.555887, -0.016984,
		-0.555377, -0.827941, 0.077909,
		33.264347, 25.714481, 50.058693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218658, 26.483997, 50.485435>,  <33.653114, 26.294041, 50.004158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218658, 26.483997, 50.485435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191723, 26.084913, 50.488003>,  <33.175560, 25.845463, 50.489544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191723, 26.084913, 50.488003>,  <33.218658, 26.483997, 50.485435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191723, 26.084913, 50.488003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133941, 0.015410, 0.990870,
		-0.988699, 0.065864, -0.134672,
		-0.067338, -0.997710, 0.006414,
		33.171520, 25.785601, 50.489925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489117, 26.825102, 50.182205>,  <33.218658, 26.483997, 50.485435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489117, 26.825102, 50.182205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.240356, 26.978685, 50.455208>,  <32.091099, 27.070835, 50.619007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.240356, 26.978685, 50.455208>,  <32.489117, 26.825102, 50.182205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240356, 26.978685, 50.455208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032718, 0.858046, -0.512529,
		-0.782411, -0.341073, -0.521058,
		-0.621902, 0.383961, 0.682504,
		32.053787, 27.093874, 50.659958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843788, 27.131189, 49.893841>,  <32.489117, 26.825102, 50.182205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843788, 27.131189, 49.893841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909107, 27.348703, 50.223114>,  <31.948298, 27.479212, 50.420677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909107, 27.348703, 50.223114>,  <31.843788, 27.131189, 49.893841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909107, 27.348703, 50.223114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100138, 0.820940, -0.562165,
		-0.981482, 0.174231, 0.079603,
		0.163296, 0.543784, 0.823185,
		31.958096, 27.511839, 50.470070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466778, 27.779877, 49.785561>,  <31.843788, 27.131189, 49.893841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466778, 27.779877, 49.785561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.747107, 27.865421, 50.057770>,  <31.915304, 27.916748, 50.221096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.747107, 27.865421, 50.057770>,  <31.466778, 27.779877, 49.785561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747107, 27.865421, 50.057770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221995, 0.841238, -0.492987,
		-0.677912, 0.496569, 0.542083,
		0.700824, 0.213862, 0.680522,
		31.957354, 27.929581, 50.261925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371420, 28.435755, 49.950653>,  <31.466778, 27.779877, 49.785561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371420, 28.435755, 49.950653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.754738, 28.380407, 50.050671>,  <31.984730, 28.347198, 50.110680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.754738, 28.380407, 50.050671>,  <31.371420, 28.435755, 49.950653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754738, 28.380407, 50.050671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237709, 0.871623, -0.428682,
		-0.158626, 0.470241, 0.868165,
		0.958297, -0.138370, 0.250043,
		32.042229, 28.338896, 50.125683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671608, 29.138134, 50.128983>,  <31.371420, 28.435755, 49.950653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671608, 29.138134, 50.128983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.991495, 28.909283, 50.056187>,  <32.183426, 28.771973, 50.012508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.991495, 28.909283, 50.056187>,  <31.671608, 29.138134, 50.128983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991495, 28.909283, 50.056187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392246, 0.727390, -0.563070,
		0.454524, 0.378913, 0.806122,
		0.799720, -0.572126, -0.181989,
		32.231411, 28.737644, 50.001591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104504, 29.618614, 50.052704>,  <31.671608, 29.138134, 50.128983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104504, 29.618614, 50.052704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303917, 29.305225, 49.904305>,  <32.423565, 29.117191, 49.815266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303917, 29.305225, 49.904305>,  <32.104504, 29.618614, 50.052704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303917, 29.305225, 49.904305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491065, 0.607919, -0.623930,
		0.714369, 0.128864, 0.687802,
		0.498530, -0.783472, -0.370998,
		32.453476, 29.070185, 49.793007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840580, 29.722643, 50.201633>,  <32.104504, 29.618614, 50.052704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840580, 29.722643, 50.201633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.832466, 29.476538, 49.886410>,  <32.827599, 29.328875, 49.697273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.832466, 29.476538, 49.886410>,  <32.840580, 29.722643, 50.201633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832466, 29.476538, 49.886410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450047, 0.698232, -0.556713,
		0.892774, -0.365957, 0.262735,
		-0.020283, -0.615262, -0.788062,
		32.826382, 29.291960, 49.649990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563744, 29.694191, 49.873142>,  <32.840580, 29.722643, 50.201633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563744, 29.694191, 49.873142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264427, 29.616835, 49.619316>,  <33.084839, 29.570421, 49.467022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264427, 29.616835, 49.619316>,  <33.563744, 29.694191, 49.873142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264427, 29.616835, 49.619316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414487, 0.610560, -0.674845,
		0.517945, -0.767995, -0.376718,
		-0.748287, -0.193388, -0.634561,
		33.039940, 29.558819, 49.428947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084244, 30.053989, 49.567261>,  <33.563744, 29.694191, 49.873142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084244, 30.053989, 49.567261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.109814, 30.448788, 49.626259>,  <34.125156, 30.685667, 49.661655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.109814, 30.448788, 49.626259>,  <34.084244, 30.053989, 49.567261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109814, 30.448788, 49.626259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350500, -0.116174, 0.929329,
		0.934378, -0.111103, 0.338516,
		0.063924, 0.986995, 0.147492,
		34.128990, 30.744886, 49.670506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488129, 30.182825, 50.131187>,  <34.084244, 30.053989, 49.567261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488129, 30.182825, 50.131187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271690, 30.518486, 50.109123>,  <34.141827, 30.719883, 50.095886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271690, 30.518486, 50.109123>,  <34.488129, 30.182825, 50.131187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271690, 30.518486, 50.109123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276228, -0.115397, 0.954139,
		0.794302, 0.531515, 0.294237,
		-0.541094, 0.839151, -0.055159,
		34.109364, 30.770231, 50.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624580, 30.397896, 50.732296>,  <34.488129, 30.182825, 50.131187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624580, 30.397896, 50.732296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.319618, 30.635841, 50.630417>,  <34.136639, 30.778608, 50.569290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.319618, 30.635841, 50.630417>,  <34.624580, 30.397896, 50.732296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319618, 30.635841, 50.630417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300528, 0.023082, 0.953494,
		0.573077, 0.803495, 0.161175,
		-0.762408, 0.594863, -0.254701,
		34.090897, 30.814301, 50.554008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652504, 31.018751, 51.187042>,  <34.624580, 30.397896, 50.732296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652504, 31.018751, 51.187042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276321, 31.007570, 51.051533>,  <34.050613, 31.000862, 50.970226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276321, 31.007570, 51.051533>,  <34.652504, 31.018751, 51.187042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276321, 31.007570, 51.051533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338087, -0.026572, 0.940740,
		-0.035298, 0.999256, 0.015539,
		-0.940453, -0.027953, -0.338773,
		33.994186, 30.999184, 50.949902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348515, 31.552006, 51.564861>,  <34.652504, 31.018751, 51.187042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348515, 31.552006, 51.564861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.059219, 31.307699, 51.435928>,  <33.885643, 31.161116, 51.358570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.059219, 31.307699, 51.435928>,  <34.348515, 31.552006, 51.564861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059219, 31.307699, 51.435928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429991, 0.033019, 0.902229,
		-0.540406, 0.791124, -0.286503,
		-0.723235, -0.610764, -0.322333,
		33.842247, 31.124470, 51.339230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722977, 31.763760, 51.963131>,  <34.348515, 31.552006, 51.564861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722977, 31.763760, 51.963131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.660103, 31.394953, 51.821609>,  <33.622379, 31.173670, 51.736694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.660103, 31.394953, 51.821609>,  <33.722977, 31.763760, 51.963131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660103, 31.394953, 51.821609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216298, -0.317421, 0.923287,
		-0.963592, 0.221653, -0.149536,
		-0.157184, -0.922016, -0.353808,
		33.612949, 31.118347, 51.715466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095814, 31.580669, 52.230976>,  <33.722977, 31.763760, 51.963131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095814, 31.580669, 52.230976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286667, 31.240982, 52.140491>,  <33.401180, 31.037170, 52.086201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286667, 31.240982, 52.140491>,  <33.095814, 31.580669, 52.230976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286667, 31.240982, 52.140491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363470, -0.425042, 0.828993,
		-0.800144, -0.313322, -0.511467,
		0.477137, -0.849217, -0.226212,
		33.429810, 30.986217, 52.072628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715336, 31.027018, 52.406643>,  <33.095814, 31.580669, 52.230976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715336, 31.027018, 52.406643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076824, 30.857237, 52.384258>,  <33.293716, 30.755369, 52.370827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076824, 30.857237, 52.384258>,  <32.715336, 31.027018, 52.406643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076824, 30.857237, 52.384258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166363, -0.468592, 0.867609,
		-0.394478, -0.774766, -0.494089,
		0.903721, -0.424451, -0.055957,
		33.347939, 30.729902, 52.367470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588135, 30.364393, 52.667496>,  <32.715336, 31.027018, 52.406643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588135, 30.364393, 52.667496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985821, 30.404030, 52.684059>,  <33.224434, 30.427813, 52.693996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985821, 30.404030, 52.684059>,  <32.588135, 30.364393, 52.667496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985821, 30.404030, 52.684059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007733, -0.318505, 0.947890,
		0.107116, -0.942728, -0.315897,
		0.994217, 0.099092, 0.041407,
		33.284084, 30.433758, 52.696480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.073978, 33.944504, 37.401730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394203, 34.170082, 37.482796>,  <35.586338, 34.305428, 37.531437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394203, 34.170082, 37.482796>,  <35.073978, 33.944504, 37.401730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394203, 34.170082, 37.482796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137684, -0.156057, 0.978105,
		0.583223, -0.810935, -0.047287,
		0.800559, 0.563943, 0.202669,
		35.634373, 34.339264, 37.543598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689507, 33.518135, 37.841427>,  <35.073978, 33.944504, 37.401730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689507, 33.518135, 37.841427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671017, 33.911991, 37.908783>,  <35.659924, 34.148304, 37.949196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671017, 33.911991, 37.908783>,  <35.689507, 33.518135, 37.841427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671017, 33.911991, 37.908783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188508, -0.174137, 0.966510,
		0.980983, 0.012933, 0.193661,
		-0.046223, 0.984636, 0.168388,
		35.657150, 34.207382, 37.959301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968727, 33.605305, 38.511932>,  <35.689507, 33.518135, 37.841427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968727, 33.605305, 38.511932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767151, 33.943542, 38.441490>,  <35.646206, 34.146484, 38.399223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767151, 33.943542, 38.441490>,  <35.968727, 33.605305, 38.511932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767151, 33.943542, 38.441490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234353, 0.062380, 0.970148,
		0.831339, 0.530165, 0.166732,
		-0.503938, 0.845597, -0.176105,
		35.615971, 34.197220, 38.388660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086784, 33.949589, 39.059917>,  <35.968727, 33.605305, 38.511932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086784, 33.949589, 39.059917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759453, 34.142559, 38.934948>,  <35.563053, 34.258343, 38.859966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759453, 34.142559, 38.934948>,  <36.086784, 33.949589, 39.059917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759453, 34.142559, 38.934948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309285, 0.088555, 0.946837,
		0.484446, 0.871449, 0.076740,
		-0.818324, 0.482426, -0.312426,
		35.513954, 34.287289, 38.841221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915833, 34.514622, 39.503777>,  <36.086784, 33.949589, 39.059917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915833, 34.514622, 39.503777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560123, 34.447273, 39.333675>,  <35.346699, 34.406864, 39.231613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560123, 34.447273, 39.333675>,  <35.915833, 34.514622, 39.503777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560123, 34.447273, 39.333675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405903, -0.137997, 0.903438,
		-0.210797, 0.976016, 0.054374,
		-0.889274, -0.168371, -0.425257,
		35.293343, 34.396763, 39.206097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415565, 34.943794, 39.865749>,  <35.915833, 34.514622, 39.503777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415565, 34.943794, 39.865749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223392, 34.638500, 39.692932>,  <35.108089, 34.455326, 39.589241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223392, 34.638500, 39.692932>,  <35.415565, 34.943794, 39.865749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223392, 34.638500, 39.692932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481337, -0.182340, 0.857360,
		-0.733143, 0.619864, -0.279769,
		-0.480434, -0.763231, -0.432045,
		35.079262, 34.409531, 39.563320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803513, 35.024143, 39.995934>,  <35.415565, 34.943794, 39.865749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803513, 35.024143, 39.995934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797028, 34.633484, 39.910248>,  <34.793137, 34.399086, 39.858837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797028, 34.633484, 39.910248>,  <34.803513, 35.024143, 39.995934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797028, 34.633484, 39.910248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385151, -0.191606, 0.902744,
		-0.922711, 0.097143, -0.373051,
		-0.016217, -0.976653, -0.214212,
		34.792164, 34.340488, 39.845985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273430, 34.876282, 40.402382>,  <34.803513, 35.024143, 39.995934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273430, 34.876282, 40.402382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413891, 34.520267, 40.286091>,  <34.498169, 34.306660, 40.216316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413891, 34.520267, 40.286091>,  <34.273430, 34.876282, 40.402382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413891, 34.520267, 40.286091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404787, -0.424297, 0.810012,
		-0.844297, -0.166756, -0.509269,
		0.351155, -0.890036, -0.290732,
		34.519238, 34.253258, 40.198872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748692, 34.397598, 40.374187>,  <34.273430, 34.876282, 40.402382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748692, 34.397598, 40.374187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068451, 34.160648, 40.414310>,  <34.260307, 34.018478, 40.438385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068451, 34.160648, 40.414310>,  <33.748692, 34.397598, 40.374187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068451, 34.160648, 40.414310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408221, -0.413039, 0.814097,
		-0.440821, -0.691731, -0.572001,
		0.799395, -0.592374, 0.100303,
		34.308270, 33.982937, 40.444401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579937, 33.692963, 40.352760>,  <33.748692, 34.397598, 40.374187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579937, 33.692963, 40.352760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927094, 33.693832, 40.551460>,  <34.135387, 33.694355, 40.670681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927094, 33.693832, 40.551460>,  <33.579937, 33.692963, 40.352760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927094, 33.693832, 40.551460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450693, -0.417064, 0.789261,
		0.208894, -0.908874, -0.360986,
		0.867894, 0.002178, 0.496745,
		34.187462, 33.694485, 40.700485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592194, 33.022217, 40.696892>,  <33.579937, 33.692963, 40.352760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592194, 33.022217, 40.696892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853714, 33.261211, 40.882603>,  <34.010624, 33.404610, 40.994030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853714, 33.261211, 40.882603>,  <33.592194, 33.022217, 40.696892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853714, 33.261211, 40.882603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320093, -0.337586, 0.885198,
		0.685629, -0.727354, -0.029462,
		0.653799, 0.597487, 0.464280,
		34.049854, 33.440456, 41.021885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732922, 32.469349, 41.087627>,  <33.592194, 33.022217, 40.696892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732922, 32.469349, 41.087627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883823, 32.807724, 41.238392>,  <33.974365, 33.010750, 41.328850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883823, 32.807724, 41.238392>,  <33.732922, 32.469349, 41.087627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883823, 32.807724, 41.238392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252131, -0.297798, 0.920732,
		0.891128, -0.442382, 0.100942,
		0.377254, 0.845940, 0.376914,
		33.996998, 33.061504, 41.351467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465397, 31.783058, 41.184044>,  <33.732922, 32.469349, 41.087627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465397, 31.783058, 41.184044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084465, 31.875031, 41.103836>,  <32.855907, 31.930214, 41.055710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084465, 31.875031, 41.103836>,  <33.465397, 31.783058, 41.184044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084465, 31.875031, 41.103836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244997, 0.184699, -0.951769,
		-0.181806, -0.955520, -0.232226,
		-0.952325, 0.229932, -0.200520,
		32.798767, 31.944010, 41.043678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375912, 31.432875, 40.542027>,  <33.465397, 31.783058, 41.184044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375912, 31.432875, 40.542027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058781, 31.676266, 40.555733>,  <32.868500, 31.822300, 40.563957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058781, 31.676266, 40.555733>,  <33.375912, 31.432875, 40.542027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058781, 31.676266, 40.555733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048332, 0.118822, -0.991738,
		-0.607522, -0.784625, -0.123615,
		-0.792831, 0.608477, 0.034264,
		32.820930, 31.858809, 40.566013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801105, 31.170710, 40.041996>,  <33.375912, 31.432875, 40.542027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801105, 31.170710, 40.041996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763062, 31.563778, 40.105637>,  <32.740234, 31.799618, 40.143822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763062, 31.563778, 40.105637>,  <32.801105, 31.170710, 40.041996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763062, 31.563778, 40.105637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030547, 0.162636, -0.986213,
		-0.994998, -0.088938, -0.045486,
		-0.095110, 0.982670, 0.159106,
		32.734528, 31.858580, 40.153370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205276, 31.353922, 39.688374>,  <32.801105, 31.170710, 40.041996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205276, 31.353922, 39.688374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400841, 31.697559, 39.748936>,  <32.518181, 31.903742, 39.785275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400841, 31.697559, 39.748936>,  <32.205276, 31.353922, 39.688374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400841, 31.697559, 39.748936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003373, 0.171702, -0.985143,
		-0.872325, 0.482161, 0.081049,
		0.488914, 0.859092, 0.151406,
		32.547516, 31.955288, 39.794357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758043, 31.882845, 39.281105>,  <32.205276, 31.353922, 39.688374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758043, 31.882845, 39.281105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128483, 32.021122, 39.341557>,  <32.350746, 32.104088, 39.377827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128483, 32.021122, 39.341557>,  <31.758043, 31.882845, 39.281105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128483, 32.021122, 39.341557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079779, 0.212073, -0.973992,
		-0.368750, 0.914069, 0.168822,
		0.926099, 0.345691, 0.151126,
		32.406311, 32.124828, 39.386894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792707, 32.524506, 39.004341>,  <31.758043, 31.882845, 39.281105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792707, 32.524506, 39.004341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165768, 32.380920, 39.018799>,  <32.389603, 32.294769, 39.027473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165768, 32.380920, 39.018799>,  <31.792707, 32.524506, 39.004341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165768, 32.380920, 39.018799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051381, 0.032982, -0.998134,
		0.357102, 0.932768, 0.049204,
		0.932651, -0.358964, 0.036148,
		32.445564, 32.273232, 39.029644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172817, 32.979542, 38.509670>,  <31.792707, 32.524506, 39.004341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172817, 32.979542, 38.509670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438396, 32.692619, 38.594185>,  <32.597744, 32.520466, 38.644894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438396, 32.692619, 38.594185>,  <32.172817, 32.979542, 38.509670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438396, 32.692619, 38.594185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320858, 0.018059, -0.946955,
		0.675444, 0.696522, 0.242144,
		0.663948, -0.717308, 0.211287,
		32.637581, 32.477428, 38.657570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845406, 33.195095, 38.237408>,  <32.172817, 32.979542, 38.509670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845406, 33.195095, 38.237408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881054, 32.798454, 38.274883>,  <32.902443, 32.560471, 38.297367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881054, 32.798454, 38.274883>,  <32.845406, 33.195095, 38.237408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881054, 32.798454, 38.274883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442664, -0.044826, -0.895567,
		0.892248, 0.121287, 0.434952,
		0.089124, -0.991605, 0.093685,
		32.907791, 32.500973, 38.302990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497913, 33.071415, 37.955959>,  <32.845406, 33.195095, 38.237408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497913, 33.071415, 37.955959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298500, 32.726395, 37.921383>,  <33.178852, 32.519382, 37.900639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298500, 32.726395, 37.921383>,  <33.497913, 33.071415, 37.955959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298500, 32.726395, 37.921383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324274, -0.093086, -0.941372,
		0.803932, -0.497339, 0.326109,
		-0.498537, -0.862548, -0.086439,
		33.148937, 32.467628, 37.895451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826996, 32.737717, 37.362862>,  <33.497913, 33.071415, 37.955959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826996, 32.737717, 37.362862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490627, 32.538647, 37.447880>,  <33.288807, 32.419205, 37.498894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490627, 32.538647, 37.447880>,  <33.826996, 32.737717, 37.362862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490627, 32.538647, 37.447880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077843, -0.277442, -0.957584,
		0.535532, -0.821796, 0.194566,
		-0.840920, -0.497672, 0.212550,
		33.238350, 32.389347, 37.511646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768818, 32.062542, 36.948185>,  <33.826996, 32.737717, 37.362862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768818, 32.062542, 36.948185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390865, 32.145683, 37.049374>,  <33.164093, 32.195568, 37.110088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390865, 32.145683, 37.049374>,  <33.768818, 32.062542, 36.948185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390865, 32.145683, 37.049374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307305, -0.296449, -0.904257,
		-0.112955, -0.932157, 0.343982,
		-0.944883, 0.207848, 0.252971,
		33.107399, 32.208038, 37.125263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325546, 31.425655, 36.727493>,  <33.768818, 32.062542, 36.948185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325546, 31.425655, 36.727493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129040, 31.773497, 36.747284>,  <33.011135, 31.982201, 36.759159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129040, 31.773497, 36.747284>,  <33.325546, 31.425655, 36.727493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129040, 31.773497, 36.747284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370358, -0.157137, -0.915502,
		-0.788349, -0.468078, 0.399261,
		-0.491265, 0.869604, 0.049478,
		32.981659, 32.034378, 36.762127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651321, 31.259527, 36.504814>,  <33.325546, 31.425655, 36.727493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651321, 31.259527, 36.504814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682858, 31.656519, 36.467350>,  <32.701778, 31.894714, 36.444870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682858, 31.656519, 36.467350>,  <32.651321, 31.259527, 36.504814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682858, 31.656519, 36.467350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439760, -0.049690, -0.896740,
		-0.894648, 0.111888, 0.432534,
		0.078842, 0.992478, -0.093659,
		32.706509, 31.954262, 36.439251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002514, 31.486494, 36.212868>,  <32.651321, 31.259527, 36.504814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002514, 31.486494, 36.212868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266010, 31.776531, 36.132565>,  <32.424107, 31.950554, 36.084381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266010, 31.776531, 36.132565>,  <32.002514, 31.486494, 36.212868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266010, 31.776531, 36.132565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398356, 0.109774, -0.910638,
		-0.638258, 0.679847, 0.361157,
		0.658741, 0.725091, -0.200757,
		32.463631, 31.994059, 36.072338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815302, 30.694006, 36.078945>,  <32.002514, 31.486494, 36.212868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815302, 30.694006, 36.078945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037796, 30.475410, 35.828522>,  <32.171291, 30.344254, 35.678268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037796, 30.475410, 35.828522>,  <31.815302, 30.694006, 36.078945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037796, 30.475410, 35.828522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381116, -0.501711, 0.776554,
		-0.738480, -0.670549, -0.070794,
		0.556236, -0.546489, -0.626060,
		32.204666, 30.311464, 35.640705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466320, 29.984438, 36.037407>,  <31.815302, 30.694006, 36.078945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466320, 29.984438, 36.037407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856371, 30.003317, 35.950783>,  <32.090401, 30.014645, 35.898808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856371, 30.003317, 35.950783>,  <31.466320, 29.984438, 36.037407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856371, 30.003317, 35.950783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215112, -0.436969, 0.873376,
		-0.053407, -0.898238, -0.436253,
		0.975128, 0.047199, -0.216559,
		32.148911, 30.017477, 35.885815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714216, 29.302664, 36.062286>,  <31.466320, 29.984438, 36.037407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714216, 29.302664, 36.062286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967470, 29.593794, 36.167667>,  <32.119423, 29.768473, 36.230896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967470, 29.593794, 36.167667>,  <31.714216, 29.302664, 36.062286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967470, 29.593794, 36.167667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161926, -0.457373, 0.874408,
		0.756914, -0.510960, -0.407433,
		0.633137, 0.727825, 0.263455,
		32.157410, 29.812141, 36.246704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142601, 28.946108, 36.364784>,  <31.714216, 29.302664, 36.062286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142601, 28.946108, 36.364784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259289, 29.304090, 36.499809>,  <32.329304, 29.518881, 36.580826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259289, 29.304090, 36.499809>,  <32.142601, 28.946108, 36.364784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259289, 29.304090, 36.499809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137933, -0.388587, 0.911029,
		0.946505, -0.219207, -0.236804,
		0.291723, 0.894957, 0.337564,
		32.346806, 29.572578, 36.601078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703144, 28.751822, 36.798897>,  <32.142601, 28.946108, 36.364784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703144, 28.751822, 36.798897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575962, 29.112686, 36.915520>,  <32.499653, 29.329205, 36.985493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575962, 29.112686, 36.915520>,  <32.703144, 28.751822, 36.798897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575962, 29.112686, 36.915520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060573, -0.287562, 0.955845,
		0.946170, 0.321574, 0.036785,
		-0.317952, 0.902163, 0.291561,
		32.480576, 29.383335, 37.002987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105728, 29.037291, 37.261261>,  <32.703144, 28.751822, 36.798897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105728, 29.037291, 37.261261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754696, 29.212339, 37.339592>,  <32.544079, 29.317369, 37.386589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754696, 29.212339, 37.339592>,  <33.105728, 29.037291, 37.261261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754696, 29.212339, 37.339592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057892, -0.308729, 0.949386,
		0.475930, 0.844495, 0.245598,
		-0.877576, 0.437623, 0.195823,
		32.491425, 29.343626, 37.398338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237511, 29.368782, 37.783165>,  <33.105728, 29.037291, 37.261261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237511, 29.368782, 37.783165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838341, 29.391676, 37.794918>,  <32.598839, 29.405413, 37.801971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838341, 29.391676, 37.794918>,  <33.237511, 29.368782, 37.783165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838341, 29.391676, 37.794918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007294, -0.353098, 0.935558,
		0.063923, 0.933834, 0.351949,
		-0.997928, 0.057236, 0.029383,
		32.538963, 29.408846, 37.803734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160431, 29.667755, 38.401440>,  <33.237511, 29.368782, 37.783165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160431, 29.667755, 38.401440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821594, 29.477806, 38.306000>,  <32.618290, 29.363836, 38.248737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821594, 29.477806, 38.306000>,  <33.160431, 29.667755, 38.401440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821594, 29.477806, 38.306000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119323, -0.267552, 0.956127,
		-0.517875, 0.838399, 0.169979,
		-0.847094, -0.474872, -0.238598,
		32.567467, 29.335344, 38.234421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733521, 29.790855, 38.949146>,  <33.160431, 29.667755, 38.401440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733521, 29.790855, 38.949146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519867, 29.496319, 38.783012>,  <32.391674, 29.319597, 38.683331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519867, 29.496319, 38.783012>,  <32.733521, 29.790855, 38.949146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519867, 29.496319, 38.783012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199272, -0.367789, 0.908307,
		-0.821580, 0.567921, 0.049716,
		-0.534132, -0.736340, -0.415339,
		32.359627, 29.275417, 38.658409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059185, 29.724543, 39.300022>,  <32.733521, 29.790855, 38.949146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059185, 29.724543, 39.300022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117664, 29.360413, 39.145134>,  <32.152752, 29.141935, 39.052200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117664, 29.360413, 39.145134>,  <32.059185, 29.724543, 39.300022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117664, 29.360413, 39.145134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382185, -0.413008, 0.826655,
		-0.912447, 0.027132, -0.408294,
		0.146200, -0.910323, -0.387217,
		32.161526, 29.087315, 39.028969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535349, 29.363070, 39.556377>,  <32.059185, 29.724543, 39.300022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535349, 29.363070, 39.556377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798929, 29.085386, 39.440544>,  <31.957077, 28.918776, 39.371044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798929, 29.085386, 39.440544>,  <31.535349, 29.363070, 39.556377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798929, 29.085386, 39.440544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343300, -0.620120, 0.705405,
		-0.669279, -0.365409, -0.646948,
		0.658947, -0.694210, -0.289588,
		31.996614, 28.877123, 39.353668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156410, 28.736919, 39.477402>,  <31.535349, 29.363070, 39.556377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156410, 28.736919, 39.477402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541746, 28.632668, 39.502857>,  <31.772947, 28.570116, 39.518131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541746, 28.632668, 39.502857>,  <31.156410, 28.736919, 39.477402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541746, 28.632668, 39.502857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241600, -0.739616, 0.628170,
		-0.116648, -0.620517, -0.775469,
		0.963340, -0.260628, 0.063642,
		31.830748, 28.554480, 39.521950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088394, 28.056868, 39.594040>,  <31.156410, 28.736919, 39.477402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088394, 28.056868, 39.594040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458454, 28.153839, 39.710880>,  <31.680490, 28.212021, 39.780987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458454, 28.153839, 39.710880>,  <31.088394, 28.056868, 39.594040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458454, 28.153839, 39.710880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125979, -0.529811, 0.838707,
		0.358085, -0.812730, -0.459615,
		0.925151, 0.242427, 0.292105,
		31.736000, 28.226566, 39.798512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265991, 27.504627, 39.999653>,  <31.088394, 28.056868, 39.594040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265991, 27.504627, 39.999653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548683, 27.769007, 40.100594>,  <31.718298, 27.927633, 40.161156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548683, 27.769007, 40.100594>,  <31.265991, 27.504627, 39.999653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548683, 27.769007, 40.100594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110606, -0.455522, 0.883327,
		0.698783, -0.596363, -0.395036,
		0.706731, 0.660946, 0.252350,
		31.760702, 27.967291, 40.176300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860102, 27.151464, 40.335773>,  <31.265991, 27.504627, 39.999653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860102, 27.151464, 40.335773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850756, 27.536198, 40.444832>,  <31.845148, 27.767036, 40.510265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850756, 27.536198, 40.444832>,  <31.860102, 27.151464, 40.335773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850756, 27.536198, 40.444832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005632, -0.272842, 0.962042,
		0.999711, 0.020942, 0.011792,
		-0.023364, 0.961831, 0.272645,
		31.843746, 27.824747, 40.526627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423424, 27.263418, 40.829845>,  <31.860102, 27.151464, 40.335773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423424, 27.263418, 40.829845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155357, 27.549019, 40.910919>,  <31.994518, 27.720379, 40.959564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155357, 27.549019, 40.910919>,  <32.423424, 27.263418, 40.829845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155357, 27.549019, 40.910919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033206, -0.301645, 0.952842,
		0.741469, 0.631831, 0.225861,
		-0.670165, 0.714003, 0.202680,
		31.954308, 27.763220, 40.971722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737686, 27.621250, 41.420330>,  <32.423424, 27.263418, 40.829845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737686, 27.621250, 41.420330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349266, 27.716713, 41.424587>,  <32.116215, 27.773991, 41.427143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349266, 27.716713, 41.424587>,  <32.737686, 27.621250, 41.420330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349266, 27.716713, 41.424587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095955, -0.430445, 0.897502,
		0.218776, 0.870494, 0.440882,
		-0.971046, 0.238657, 0.010643,
		32.057953, 27.788309, 41.427780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567402, 27.894911, 42.134655>,  <32.737686, 27.621250, 41.420330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567402, 27.894911, 42.134655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210178, 27.797108, 41.983570>,  <31.995844, 27.738426, 41.892918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210178, 27.797108, 41.983570>,  <32.567402, 27.894911, 42.134655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210178, 27.797108, 41.983570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264672, -0.393400, 0.880446,
		-0.363867, 0.886258, 0.286614,
		-0.893057, -0.244506, -0.377713,
		31.942261, 27.723757, 41.870255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076225, 28.127432, 42.609509>,  <32.567402, 27.894911, 42.134655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076225, 28.127432, 42.609509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916567, 27.830389, 42.394394>,  <31.820772, 27.652163, 42.265324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916567, 27.830389, 42.394394>,  <32.076225, 28.127432, 42.609509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916567, 27.830389, 42.394394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096638, -0.549199, 0.830085,
		-0.911781, 0.383295, 0.147445,
		-0.399144, -0.742607, -0.537790,
		31.796824, 27.607607, 42.233055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511724, 28.044481, 42.966610>,  <32.076225, 28.127432, 42.609509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511724, 28.044481, 42.966610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553692, 27.710649, 42.750290>,  <31.578873, 27.510349, 42.620499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553692, 27.710649, 42.750290>,  <31.511724, 28.044481, 42.966610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553692, 27.710649, 42.750290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070321, -0.536216, 0.841147,
		-0.991991, -0.126281, 0.002430,
		0.104918, -0.834581, -0.540802,
		31.585167, 27.460276, 42.588051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105078, 27.651434, 43.272671>,  <31.511724, 28.044481, 42.966610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105078, 27.651434, 43.272671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337233, 27.392853, 43.074581>,  <31.476526, 27.237705, 42.955727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337233, 27.392853, 43.074581>,  <31.105078, 27.651434, 43.272671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337233, 27.392853, 43.074581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103231, -0.544823, 0.832173,
		-0.807770, -0.534107, -0.249475,
		0.580389, -0.646451, -0.495227,
		31.511349, 27.198917, 42.926014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979973, 27.046305, 43.687149>,  <31.105078, 27.651434, 43.272671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979973, 27.046305, 43.687149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313782, 26.997604, 43.472210>,  <31.514067, 26.968384, 43.343246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313782, 26.997604, 43.472210>,  <30.979973, 27.046305, 43.687149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313782, 26.997604, 43.472210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419352, -0.492229, 0.762794,
		-0.357371, -0.861909, -0.359720,
		0.834523, -0.121751, -0.537352,
		31.564138, 26.961079, 43.311005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113979, 26.486008, 44.012836>,  <30.979973, 27.046305, 43.687149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113979, 26.486008, 44.012836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453381, 26.604229, 43.837250>,  <31.657021, 26.675161, 43.731895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453381, 26.604229, 43.837250>,  <31.113979, 26.486008, 44.012836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453381, 26.604229, 43.837250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528486, -0.516077, 0.674068,
		-0.027320, -0.803937, -0.594087,
		0.848502, 0.295551, -0.438969,
		31.707932, 26.692894, 43.705559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538988, 25.869095, 43.950787>,  <31.113979, 26.486008, 44.012836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538988, 25.869095, 43.950787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764675, 26.197927, 43.981361>,  <31.900087, 26.395227, 43.999706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764675, 26.197927, 43.981361>,  <31.538988, 25.869095, 43.950787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764675, 26.197927, 43.981361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340095, -0.315782, 0.885786,
		0.752325, -0.473779, -0.457756,
		0.564218, 0.822080, 0.076441,
		31.933941, 26.444551, 44.004295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105946, 25.621614, 44.159588>,  <31.538988, 25.869095, 43.950787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105946, 25.621614, 44.159588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179985, 26.007586, 44.234047>,  <32.224407, 26.239168, 44.278721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179985, 26.007586, 44.234047>,  <32.105946, 25.621614, 44.159588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179985, 26.007586, 44.234047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462579, -0.252671, 0.849810,
		0.867040, -0.071192, -0.493126,
		0.185098, 0.964930, 0.186144,
		32.235516, 26.297064, 44.289890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827023, 25.648888, 44.346210>,  <32.105946, 25.621614, 44.159588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827023, 25.648888, 44.346210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672329, 26.000668, 44.457207>,  <32.579514, 26.211737, 44.523804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672329, 26.000668, 44.457207>,  <32.827023, 25.648888, 44.346210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672329, 26.000668, 44.457207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522709, -0.038855, 0.851625,
		0.759745, 0.474399, -0.444671,
		-0.386733, 0.879452, 0.277493,
		32.556309, 26.264503, 44.540455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368916, 26.076725, 44.560658>,  <32.827023, 25.648888, 44.346210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368916, 26.076725, 44.560658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034576, 26.199820, 44.742493>,  <32.833973, 26.273676, 44.851593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034576, 26.199820, 44.742493>,  <33.368916, 26.076725, 44.560658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034576, 26.199820, 44.742493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434082, -0.136400, 0.890488,
		0.336041, 0.941644, -0.019572,
		-0.835853, 0.307737, 0.454586,
		32.783821, 26.292141, 44.878868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570000, 26.648975, 45.061409>,  <33.368916, 26.076725, 44.560658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570000, 26.648975, 45.061409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220821, 26.497635, 45.184578>,  <33.011314, 26.406832, 45.258480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220821, 26.497635, 45.184578>,  <33.570000, 26.648975, 45.061409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220821, 26.497635, 45.184578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332371, 0.000730, 0.943148,
		-0.357064, 0.925663, 0.125115,
		-0.872946, -0.378349, 0.307924,
		32.958939, 26.384130, 45.276955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178665, 26.999201, 45.336689>,  <33.570000, 26.648975, 45.061409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178665, 26.999201, 45.336689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537888, 27.160194, 45.407677>,  <34.753422, 27.256790, 45.450268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537888, 27.160194, 45.407677>,  <34.178665, 26.999201, 45.336689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537888, 27.160194, 45.407677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011872, 0.381128, -0.924446,
		-0.439715, 0.832314, 0.337497,
		0.898059, 0.402486, 0.177469,
		34.807304, 27.280941, 45.460918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126438, 27.558876, 44.932098>,  <34.178665, 26.999201, 45.336689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126438, 27.558876, 44.932098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516273, 27.499357, 44.999081>,  <34.750175, 27.463646, 45.039268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516273, 27.499357, 44.999081>,  <34.126438, 27.558876, 44.932098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516273, 27.499357, 44.999081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216182, 0.428831, -0.877137,
		0.058708, 0.891046, 0.450100,
		0.974587, -0.148798, 0.167452,
		34.808651, 27.454718, 45.049316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489574, 28.111631, 44.788326>,  <34.126438, 27.558876, 44.932098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489574, 28.111631, 44.788326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787895, 27.847855, 44.750565>,  <34.966888, 27.689589, 44.727905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787895, 27.847855, 44.750565>,  <34.489574, 28.111631, 44.788326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787895, 27.847855, 44.750565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305523, 0.464529, -0.831185,
		0.591975, 0.591056, 0.547922,
		0.745802, -0.659444, -0.094408,
		35.011635, 27.650021, 44.722240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157413, 28.479103, 44.609322>,  <34.489574, 28.111631, 44.788326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157413, 28.479103, 44.609322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198414, 28.099823, 44.489048>,  <35.223015, 27.872255, 44.416885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198414, 28.099823, 44.489048>,  <35.157413, 28.479103, 44.609322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198414, 28.099823, 44.489048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251803, 0.317163, -0.914332,
		0.962335, 0.018004, 0.271269,
		0.102498, -0.948200, -0.300683,
		35.229164, 27.815363, 44.398842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892254, 28.428249, 44.338181>,  <35.157413, 28.479103, 44.609322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892254, 28.428249, 44.338181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647655, 28.152906, 44.182110>,  <35.500896, 27.987701, 44.088467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647655, 28.152906, 44.182110>,  <35.892254, 28.428249, 44.338181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647655, 28.152906, 44.182110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224864, 0.321600, -0.919788,
		0.758623, -0.650183, -0.041870,
		-0.611496, -0.688357, -0.390176,
		35.464207, 27.946400, 44.065056>
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
