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
	<24.472107, 34.630829, 35.435032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394928, 34.747074, 35.060158>,  <24.348621, 34.816822, 34.835232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394928, 34.747074, 35.060158>,  <24.472107, 34.630829, 35.435032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394928, 34.747074, 35.060158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484631, 0.802273, 0.348556,
		0.853173, 0.521441, -0.013956,
		-0.192948, 0.290615, -0.937184,
		24.337044, 34.834259, 34.779003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663172, 34.488583, 36.178627>,  <24.472107, 34.630829, 35.435032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663172, 34.488583, 36.178627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877018, 34.637360, 35.875088>,  <25.005325, 34.726624, 35.692963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877018, 34.637360, 35.875088>,  <24.663172, 34.488583, 36.178627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877018, 34.637360, 35.875088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839206, -0.339482, 0.424837,
		-0.099601, -0.863953, -0.493625,
		0.534615, 0.371939, -0.758847,
		25.037403, 34.748940, 35.647434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829033, 33.992008, 35.746971>,  <24.663172, 34.488583, 36.178627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829033, 33.992008, 35.746971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097652, 34.284569, 35.794418>,  <25.258823, 34.460106, 35.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097652, 34.284569, 35.794418>,  <24.829033, 33.992008, 35.746971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097652, 34.284569, 35.794418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692177, -0.676372, 0.251817,
		0.264412, -0.087002, -0.960478,
		0.671549, 0.731404, 0.118620,
		25.299118, 34.503990, 35.830006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468971, 33.800354, 35.423222>,  <24.829033, 33.992008, 35.746971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468971, 33.800354, 35.423222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584517, 34.071873, 35.693272>,  <25.653843, 34.234783, 35.855301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584517, 34.071873, 35.693272>,  <25.468971, 33.800354, 35.423222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584517, 34.071873, 35.693272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729783, -0.612555, 0.303633,
		0.619658, 0.404990, -0.672315,
		0.288861, 0.678793, 0.675129,
		25.671175, 34.275509, 35.895809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136942, 33.668785, 35.437202>,  <25.468971, 33.800354, 35.423222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136942, 33.668785, 35.437202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072123, 33.869789, 35.776901>,  <26.033232, 33.990391, 35.980721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072123, 33.869789, 35.776901>,  <26.136942, 33.668785, 35.437202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072123, 33.869789, 35.776901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720242, -0.528061, 0.449892,
		0.674531, 0.684569, -0.276358,
		-0.162048, 0.502511, 0.849249,
		26.023508, 34.020542, 36.031677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779825, 34.017487, 35.786545>,  <26.136942, 33.668785, 35.437202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779825, 34.017487, 35.786545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505445, 33.918377, 36.060211>,  <26.340818, 33.858910, 36.224411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505445, 33.918377, 36.060211>,  <26.779825, 34.017487, 35.786545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505445, 33.918377, 36.060211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711784, -0.423756, 0.560174,
		0.151119, 0.871227, 0.467041,
		-0.685950, -0.247779, 0.684163,
		26.299660, 33.844044, 36.265461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117598, 34.198395, 36.303871>,  <26.779825, 34.017487, 35.786545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117598, 34.198395, 36.303871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844055, 33.932667, 36.424553>,  <26.679930, 33.773232, 36.496960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844055, 33.932667, 36.424553>,  <27.117598, 34.198395, 36.303871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844055, 33.932667, 36.424553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655435, -0.377679, 0.654037,
		-0.320544, 0.645011, 0.693695,
		-0.683855, -0.664319, 0.301700,
		26.638899, 33.733372, 36.515064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223469, 34.215584, 37.071434>,  <27.117598, 34.198395, 36.303871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223469, 34.215584, 37.071434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101984, 33.848625, 36.968559>,  <27.029093, 33.628452, 36.906834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101984, 33.848625, 36.968559>,  <27.223469, 34.215584, 37.071434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101984, 33.848625, 36.968559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785847, -0.393835, 0.476801,
		-0.538704, -0.057302, 0.840544,
		-0.303714, -0.917394, -0.257191,
		27.010870, 33.573406, 36.891403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994322, 33.730068, 37.748466>,  <27.223469, 34.215584, 37.071434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994322, 33.730068, 37.748466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123251, 33.516472, 37.435810>,  <27.200609, 33.388313, 37.248215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123251, 33.516472, 37.435810>,  <26.994322, 33.730068, 37.748466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123251, 33.516472, 37.435810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711410, -0.408089, 0.572153,
		-0.624502, -0.740487, 0.248347,
		0.322324, -0.533988, -0.781642,
		27.219948, 33.356274, 37.201317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089151, 33.161503, 38.024639>,  <26.994322, 33.730068, 37.748466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089151, 33.161503, 38.024639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317345, 33.131477, 37.697491>,  <27.454260, 33.113464, 37.501202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317345, 33.131477, 37.697491>,  <27.089151, 33.161503, 38.024639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317345, 33.131477, 37.697491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651290, -0.565342, 0.506172,
		-0.500372, -0.821434, -0.273632,
		0.570482, -0.075060, -0.817873,
		27.488489, 33.108959, 37.452129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322996, 32.493439, 38.046360>,  <27.089151, 33.161503, 38.024639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322996, 32.493439, 38.046360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577972, 32.678581, 37.799969>,  <27.730959, 32.789665, 37.652134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577972, 32.678581, 37.799969>,  <27.322996, 32.493439, 38.046360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577972, 32.678581, 37.799969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769697, -0.346086, 0.536462,
		0.035122, -0.816082, -0.576868,
		0.637442, 0.462855, -0.615981,
		27.769205, 32.817436, 37.615173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931253, 32.049706, 37.888016>,  <27.322996, 32.493439, 38.046360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931253, 32.049706, 37.888016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063896, 32.156097, 37.525955>,  <28.143482, 32.219933, 37.308720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063896, 32.156097, 37.525955>,  <27.931253, 32.049706, 37.888016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063896, 32.156097, 37.525955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145136, 0.962396, 0.229628,
		0.932187, 0.055223, 0.357741,
		0.331608, 0.265978, -0.905148,
		28.163378, 32.235889, 37.254410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489170, 32.539639, 38.151367>,  <27.931253, 32.049706, 37.888016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489170, 32.539639, 38.151367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538744, 32.298279, 37.836266>,  <28.568487, 32.153465, 37.647205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538744, 32.298279, 37.836266>,  <28.489170, 32.539639, 38.151367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538744, 32.298279, 37.836266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902437, -0.261569, 0.342330,
		-0.412612, -0.753322, 0.512111,
		0.123932, -0.603397, -0.787752,
		28.575924, 32.117260, 37.599941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637587, 32.997406, 38.674801>,  <28.489170, 32.539639, 38.151367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637587, 32.997406, 38.674801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852144, 32.940655, 38.342018>,  <28.980879, 32.906605, 38.142349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852144, 32.940655, 38.342018>,  <28.637587, 32.997406, 38.674801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852144, 32.940655, 38.342018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825763, 0.115415, -0.552082,
		0.174350, 0.983132, -0.055252,
		0.536393, -0.141881, -0.831957,
		29.013062, 32.898090, 38.092430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545492, 33.491024, 38.229176>,  <28.637587, 32.997406, 38.674801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545492, 33.491024, 38.229176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641159, 33.168724, 38.012447>,  <28.698559, 32.975346, 37.882412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641159, 33.168724, 38.012447>,  <28.545492, 33.491024, 38.229176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641159, 33.168724, 38.012447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768310, 0.184159, -0.613013,
		0.593716, 0.562895, -0.575022,
		0.239167, -0.805751, -0.541816,
		28.712910, 32.926998, 37.849903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799152, 33.609795, 37.498135>,  <28.545492, 33.491024, 38.229176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799152, 33.609795, 37.498135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620510, 33.253475, 37.531647>,  <28.513325, 33.039684, 37.551754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620510, 33.253475, 37.531647>,  <28.799152, 33.609795, 37.498135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620510, 33.253475, 37.531647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575013, 0.214020, -0.789655,
		0.685495, -0.400837, -0.607804,
		-0.446605, -0.890800, 0.083777,
		28.486528, 32.986237, 37.556778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698942, 33.248482, 36.822662>,  <28.799152, 33.609795, 37.498135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698942, 33.248482, 36.822662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410448, 33.121628, 37.068993>,  <28.237350, 33.045517, 37.216793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410448, 33.121628, 37.068993>,  <28.698942, 33.248482, 36.822662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410448, 33.121628, 37.068993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691105, 0.269377, -0.670679,
		0.046804, -0.909320, -0.413456,
		-0.721237, -0.317132, 0.615828,
		28.194077, 33.026489, 37.253742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209106, 33.066448, 36.384102>,  <28.698942, 33.248482, 36.822662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209106, 33.066448, 36.384102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009785, 33.092667, 36.729912>,  <27.890192, 33.108398, 36.937397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009785, 33.092667, 36.729912>,  <28.209106, 33.066448, 36.384102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009785, 33.092667, 36.729912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823969, 0.274445, -0.495737,
		-0.269757, -0.959366, -0.082749,
		-0.498304, 0.065546, 0.864522,
		27.860294, 33.112331, 36.989269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604017, 32.709133, 36.179924>,  <28.209106, 33.066448, 36.384102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604017, 32.709133, 36.179924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476704, 32.903107, 36.505753>,  <27.400316, 33.019489, 36.701252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476704, 32.903107, 36.505753>,  <27.604017, 32.709133, 36.179924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476704, 32.903107, 36.505753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893798, 0.132863, -0.428336,
		-0.315942, -0.864398, 0.391147,
		-0.318285, 0.484936, 0.814575,
		27.381218, 33.048588, 36.750126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020786, 32.442036, 36.374603>,  <27.604017, 32.709133, 36.179924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020786, 32.442036, 36.374603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983686, 32.795998, 36.557186>,  <26.961426, 33.008373, 36.666737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983686, 32.795998, 36.557186>,  <27.020786, 32.442036, 36.374603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983686, 32.795998, 36.557186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943031, 0.069040, -0.325463,
		-0.319516, -0.460636, 0.828085,
		-0.092749, 0.884900, 0.456453,
		26.955862, 33.061466, 36.694122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312090, 32.490131, 36.513390>,  <27.020786, 32.442036, 36.374603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312090, 32.490131, 36.513390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446726, 32.854351, 36.609398>,  <26.527508, 33.072884, 36.667004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446726, 32.854351, 36.609398>,  <26.312090, 32.490131, 36.513390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446726, 32.854351, 36.609398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904567, 0.383483, -0.186279,
		-0.261659, -0.154412, 0.952729,
		0.336592, 0.910548, 0.240018,
		26.547703, 33.127514, 36.681404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683638, 32.852631, 36.640690>,  <26.312090, 32.490131, 36.513390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683638, 32.852631, 36.640690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964165, 33.137333, 36.656448>,  <26.132481, 33.308155, 36.665901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964165, 33.137333, 36.656448>,  <25.683638, 32.852631, 36.640690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964165, 33.137333, 36.656448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699296, 0.697659, -0.155747,
		-0.138337, 0.081681, 0.987011,
		0.701319, 0.711759, 0.039392,
		26.174561, 33.350861, 36.668266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406384, 33.406525, 37.080814>,  <25.683638, 32.852631, 36.640690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406384, 33.406525, 37.080814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680389, 33.542706, 36.823181>,  <25.844793, 33.624416, 36.668602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680389, 33.542706, 36.823181>,  <25.406384, 33.406525, 37.080814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680389, 33.542706, 36.823181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630564, 0.719877, -0.290113,
		0.364892, 0.604868, 0.707805,
		0.685013, 0.340457, -0.644086,
		25.885893, 33.644844, 36.629955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699350, 34.095001, 37.202377>,  <25.406384, 33.406525, 37.080814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699350, 34.095001, 37.202377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982719, 34.099377, 36.920097>,  <26.152740, 34.102001, 36.750729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982719, 34.099377, 36.920097>,  <25.699350, 34.095001, 37.202377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982719, 34.099377, 36.920097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591583, 0.554519, -0.585268,
		0.384925, 0.832099, 0.399304,
		0.708422, 0.010937, -0.705704,
		26.195246, 34.102657, 36.708385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873653, 34.738693, 37.164925>,  <25.699350, 34.095001, 37.202377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873653, 34.738693, 37.164925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913654, 34.533264, 36.824043>,  <25.937654, 34.410007, 36.619514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913654, 34.533264, 36.824043>,  <25.873653, 34.738693, 37.164925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913654, 34.533264, 36.824043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560442, 0.678627, -0.474731,
		0.822134, 0.525083, -0.219962,
		0.100001, -0.513569, -0.852201,
		25.943655, 34.379192, 36.568382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001463, 35.228638, 36.692455>,  <25.873653, 34.738693, 37.164925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001463, 35.228638, 36.692455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915981, 34.921051, 36.451450>,  <25.864693, 34.736500, 36.306847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915981, 34.921051, 36.451450>,  <26.001463, 35.228638, 36.692455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915981, 34.921051, 36.451450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386928, 0.632946, -0.670571,
		0.897005, 0.089827, -0.432797,
		-0.213702, -0.768967, -0.602512,
		25.851871, 34.690361, 36.270699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294125, 35.266705, 36.014126>,  <26.001463, 35.228638, 36.692455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294125, 35.266705, 36.014126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954647, 35.056736, 35.988270>,  <25.750961, 34.930756, 35.972755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954647, 35.056736, 35.988270>,  <26.294125, 35.266705, 36.014126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954647, 35.056736, 35.988270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342160, 0.638140, -0.689713,
		0.403293, -0.563238, -0.721192,
		-0.848694, -0.524920, -0.064640,
		25.700039, 34.899261, 35.968876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767820, 35.232399, 35.395996>,  <26.294125, 35.266705, 36.014126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767820, 35.232399, 35.395996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649088, 34.897247, 35.212757>,  <26.577848, 34.696156, 35.102814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649088, 34.897247, 35.212757>,  <26.767820, 35.232399, 35.395996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649088, 34.897247, 35.212757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848527, 0.011362, 0.529031,
		-0.438057, 0.545743, -0.714333,
		-0.296831, -0.837876, -0.458100,
		26.560040, 34.645885, 35.075329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507254, 35.188984, 35.585220>,  <26.767820, 35.232399, 35.395996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507254, 35.188984, 35.585220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440556, 35.313663, 35.211044>,  <27.400537, 35.388470, 34.986538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440556, 35.313663, 35.211044>,  <27.507254, 35.188984, 35.585220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440556, 35.313663, 35.211044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976478, -0.183735, 0.112838,
		-0.136701, 0.932248, 0.335001,
		-0.166745, 0.311696, -0.935437,
		27.390532, 35.407173, 34.930412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583635, 34.786282, 34.941807>,  <27.507254, 35.188984, 35.585220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583635, 34.786282, 34.941807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744688, 34.864628, 34.584141>,  <27.841320, 34.911636, 34.369541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744688, 34.864628, 34.584141>,  <27.583635, 34.786282, 34.941807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744688, 34.864628, 34.584141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914127, -0.136774, 0.381661,
		-0.047545, -0.971046, -0.234112,
		0.402631, 0.195862, -0.894162,
		27.865477, 34.923386, 34.315891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058058, 34.250313, 34.800430>,  <27.583635, 34.786282, 34.941807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058058, 34.250313, 34.800430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151163, 34.553314, 34.556461>,  <28.207027, 34.735115, 34.410080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151163, 34.553314, 34.556461>,  <28.058058, 34.250313, 34.800430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151163, 34.553314, 34.556461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967941, -0.119577, 0.220887,
		0.094392, -0.641781, -0.761057,
		0.232766, 0.757508, -0.609919,
		28.220993, 34.780567, 34.373486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496832, 34.081482, 34.317970>,  <28.058058, 34.250313, 34.800430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496832, 34.081482, 34.317970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573502, 34.472965, 34.347347>,  <28.619503, 34.707855, 34.364975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573502, 34.472965, 34.347347>,  <28.496832, 34.081482, 34.317970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573502, 34.472965, 34.347347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979434, -0.195547, 0.049709,
		0.063013, 0.062407, -0.996060,
		0.191675, 0.978707, 0.073445,
		28.631004, 34.766579, 34.369381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023518, 34.190941, 33.828304>,  <28.496832, 34.081482, 34.317970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023518, 34.190941, 33.828304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028980, 34.458885, 34.125248>,  <29.032257, 34.619652, 34.303413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028980, 34.458885, 34.125248>,  <29.023518, 34.190941, 33.828304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028980, 34.458885, 34.125248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957358, -0.223029, 0.183638,
		0.288580, 0.708197, -0.644343,
		0.013656, 0.669862, 0.742360,
		29.033077, 34.659843, 34.347958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671389, 34.254944, 33.935162>,  <29.023518, 34.190941, 33.828304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671389, 34.254944, 33.935162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556404, 34.460232, 34.258636>,  <29.487413, 34.583405, 34.452721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556404, 34.460232, 34.258636>,  <29.671389, 34.254944, 33.935162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556404, 34.460232, 34.258636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850220, -0.252037, 0.462172,
		0.441013, 0.820419, -0.363896,
		-0.287460, 0.513215, 0.808689,
		29.470167, 34.614197, 34.501244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378498, 34.786789, 33.647499>,  <29.671389, 34.254944, 33.935162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378498, 34.786789, 33.647499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391804, 35.023708, 33.969513>,  <29.399788, 35.165859, 34.162720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391804, 35.023708, 33.969513>,  <29.378498, 34.786789, 33.647499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391804, 35.023708, 33.969513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713997, -0.577711, 0.395548,
		0.699358, 0.561632, -0.442118,
		0.033264, 0.592300, 0.805030,
		29.401783, 35.201397, 34.211021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963627, 34.961674, 33.782047>,  <29.378498, 34.786789, 33.647499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963627, 34.961674, 33.782047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792048, 34.980076, 34.142910>,  <29.689100, 34.991116, 34.359428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792048, 34.980076, 34.142910>,  <29.963627, 34.961674, 33.782047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792048, 34.980076, 34.142910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674148, -0.648452, 0.353602,
		0.601273, 0.759865, 0.247137,
		-0.428946, 0.046004, 0.902158,
		29.663364, 34.993877, 34.413559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497286, 34.968334, 34.290333>,  <29.963627, 34.961674, 33.782047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497286, 34.968334, 34.290333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205206, 34.850540, 34.536938>,  <30.029959, 34.779865, 34.684902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205206, 34.850540, 34.536938>,  <30.497286, 34.968334, 34.290333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205206, 34.850540, 34.536938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639861, -0.611125, 0.465945,
		0.239552, 0.734715, 0.634673,
		-0.730200, -0.294484, 0.616511,
		29.986145, 34.762196, 34.721889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873140, 34.915211, 34.903816>,  <30.497286, 34.968334, 34.290333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873140, 34.915211, 34.903816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543861, 34.700542, 34.977936>,  <30.346294, 34.571743, 35.022408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543861, 34.700542, 34.977936>,  <30.873140, 34.915211, 34.903816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543861, 34.700542, 34.977936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545213, -0.656164, 0.521720,
		-0.158403, 0.530506, 0.832750,
		-0.823196, -0.536668, 0.185300,
		30.296904, 34.539543, 35.033527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929228, 34.736610, 35.734562>,  <30.873140, 34.915211, 34.903816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929228, 34.736610, 35.734562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688414, 34.469116, 35.560047>,  <30.543924, 34.308620, 35.455338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688414, 34.469116, 35.560047>,  <30.929228, 34.736610, 35.734562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688414, 34.469116, 35.560047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486227, -0.740454, 0.464016,
		-0.633352, 0.067223, 0.770939,
		-0.602037, -0.668737, -0.436282,
		30.507803, 34.268494, 35.429161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444317, 34.260410, 36.129829>,  <30.929228, 34.736610, 35.734562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444317, 34.260410, 36.129829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622698, 34.078159, 35.821667>,  <30.729727, 33.968811, 35.636768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622698, 34.078159, 35.821667>,  <30.444317, 34.260410, 36.129829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622698, 34.078159, 35.821667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369389, -0.690333, 0.622087,
		-0.815277, -0.562003, -0.139554,
		0.445953, -0.455624, -0.770411,
		30.756483, 33.941471, 35.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185350, 33.514977, 36.071980>,  <30.444317, 34.260410, 36.129829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185350, 33.514977, 36.071980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546185, 33.604443, 35.924351>,  <30.762686, 33.658123, 35.835773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546185, 33.604443, 35.924351>,  <30.185350, 33.514977, 36.071980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546185, 33.604443, 35.924351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397831, -0.762427, 0.510329,
		-0.167243, -0.607188, -0.776758,
		0.902087, 0.223670, -0.369069,
		30.816811, 33.671543, 35.813629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448112, 33.040379, 35.499878>,  <30.185350, 33.514977, 36.071980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448112, 33.040379, 35.499878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742002, 33.169476, 35.738544>,  <30.918337, 33.246933, 35.881744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742002, 33.169476, 35.738544>,  <30.448112, 33.040379, 35.499878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742002, 33.169476, 35.738544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212609, -0.944812, 0.249254,
		0.644185, -0.056277, -0.762797,
		0.734727, 0.322743, 0.596669,
		30.962421, 33.266300, 35.917545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479712, 33.254475, 34.700733>,  <30.448112, 33.040379, 35.499878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479712, 33.254475, 34.700733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498280, 33.454895, 35.046402>,  <30.509420, 33.575146, 35.253803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498280, 33.454895, 35.046402>,  <30.479712, 33.254475, 34.700733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498280, 33.454895, 35.046402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679425, 0.650016, -0.340382,
		-0.732275, -0.571340, 0.370600,
		0.046422, 0.501048, 0.864173,
		30.512207, 33.605209, 35.305653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785971, 33.281010, 34.966927>,  <30.479712, 33.254475, 34.700733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785971, 33.281010, 34.966927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992693, 33.598392, 35.095509>,  <30.116726, 33.788822, 35.172657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992693, 33.598392, 35.095509>,  <29.785971, 33.281010, 34.966927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992693, 33.598392, 35.095509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739905, 0.602857, -0.298502,
		-0.430641, -0.083579, 0.898645,
		0.516806, 0.793459, 0.321455,
		30.147736, 33.836430, 35.191944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263071, 33.772762, 35.072639>,  <29.785971, 33.281010, 34.966927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263071, 33.772762, 35.072639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593365, 33.997925, 35.087032>,  <29.791542, 34.133022, 35.095669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593365, 33.997925, 35.087032>,  <29.263071, 33.772762, 35.072639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593365, 33.997925, 35.087032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520255, 0.784712, -0.336989,
		-0.217932, 0.259542, 0.940821,
		0.825736, 0.562907, 0.035986,
		29.841085, 34.166798, 35.097828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066017, 34.416710, 35.570129>,  <29.263071, 33.772762, 35.072639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066017, 34.416710, 35.570129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346394, 34.516777, 35.302967>,  <29.514620, 34.576817, 35.142670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346394, 34.516777, 35.302967>,  <29.066017, 34.416710, 35.570129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346394, 34.516777, 35.302967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612609, 0.690730, -0.384192,
		0.365230, 0.678460, 0.637415,
		0.700941, 0.250168, -0.667906,
		29.556675, 34.591827, 35.102596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026722, 35.119480, 35.576984>,  <29.066017, 34.416710, 35.570129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026722, 35.119480, 35.576984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180971, 34.989006, 35.231754>,  <29.273521, 34.910721, 35.024616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180971, 34.989006, 35.231754>,  <29.026722, 35.119480, 35.576984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180971, 34.989006, 35.231754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720496, 0.477868, -0.502521,
		0.576350, 0.815627, -0.050735,
		0.385624, -0.326182, -0.863075,
		29.296658, 34.891151, 34.972832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962498, 35.738544, 35.106060>,  <29.026722, 35.119480, 35.576984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962498, 35.738544, 35.106060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017900, 35.410107, 34.884567>,  <29.051142, 35.213043, 34.751671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017900, 35.410107, 34.884567>,  <28.962498, 35.738544, 35.106060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017900, 35.410107, 34.884567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761912, 0.268856, -0.589242,
		0.632697, 0.503512, -0.588363,
		0.138506, -0.821092, -0.553736,
		29.059452, 35.163780, 34.718445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974556, 35.973110, 34.410065>,  <28.962498, 35.738544, 35.106060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974556, 35.973110, 34.410065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860468, 35.590378, 34.432419>,  <28.792015, 35.360737, 34.445831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860468, 35.590378, 34.432419>,  <28.974556, 35.973110, 34.410065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860468, 35.590378, 34.432419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833580, 0.218859, -0.507194,
		0.473068, -0.191244, -0.860018,
		-0.285221, -0.956831, 0.055882,
		28.774902, 35.303329, 34.449184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570280, 35.890701, 33.844051>,  <28.974556, 35.973110, 34.410065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570280, 35.890701, 33.844051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514149, 35.532017, 34.011967>,  <28.480471, 35.316807, 34.112717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514149, 35.532017, 34.011967>,  <28.570280, 35.890701, 33.844051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514149, 35.532017, 34.011967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901928, -0.059134, -0.427819,
		0.408453, -0.438650, -0.800470,
		-0.140328, -0.896710, 0.419785,
		28.472050, 35.263004, 34.137901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508575, 35.370987, 33.253109>,  <28.570280, 35.890701, 33.844051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508575, 35.370987, 33.253109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299913, 35.229828, 33.563808>,  <28.174717, 35.145130, 33.750229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299913, 35.229828, 33.563808>,  <28.508575, 35.370987, 33.253109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299913, 35.229828, 33.563808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757455, -0.227392, -0.612009,
		0.392605, -0.907609, -0.148687,
		-0.521655, -0.352902, 0.776748,
		28.143417, 35.123959, 33.796833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495228, 35.626888, 32.521027>,  <28.508575, 35.370987, 33.253109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495228, 35.626888, 32.521027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494604, 35.230068, 32.470688>,  <28.494230, 34.991978, 32.440483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494604, 35.230068, 32.470688>,  <28.495228, 35.626888, 32.521027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494604, 35.230068, 32.470688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896126, -0.054468, 0.440445,
		-0.443797, 0.113465, -0.888915,
		-0.001558, -0.992048, -0.125852,
		28.494137, 34.932453, 32.432934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993980, 35.544994, 32.057999>,  <28.495228, 35.626888, 32.521027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993980, 35.544994, 32.057999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076593, 35.270260, 32.336739>,  <28.126162, 35.105419, 32.503983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076593, 35.270260, 32.336739>,  <27.993980, 35.544994, 32.057999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076593, 35.270260, 32.336739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950200, 0.029075, 0.310281,
		-0.233375, -0.726227, -0.646630,
		0.206533, -0.686840, 0.696846,
		28.138554, 35.064209, 32.545792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570946, 34.929119, 31.972244>,  <27.993980, 35.544994, 32.057999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570946, 34.929119, 31.972244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676620, 34.984543, 32.354031>,  <27.740026, 35.017799, 32.583103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676620, 34.984543, 32.354031>,  <27.570946, 34.929119, 31.972244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676620, 34.984543, 32.354031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961982, -0.033204, 0.271088,
		0.069256, -0.989796, 0.124527,
		0.264188, 0.138567, 0.954466,
		27.755877, 35.026112, 32.640369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266697, 34.465775, 31.995089>,  <27.570946, 34.929119, 31.972244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266697, 34.465775, 31.995089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321974, 34.148319, 31.758093>,  <28.355141, 33.957848, 31.615896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321974, 34.148319, 31.758093>,  <28.266697, 34.465775, 31.995089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321974, 34.148319, 31.758093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954836, 0.265643, -0.133122,
		0.263041, -0.547332, 0.794505,
		0.138193, -0.793638, -0.592487,
		28.363432, 33.910229, 31.580347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972639, 34.320892, 32.012474>,  <28.266697, 34.465775, 31.995089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972639, 34.320892, 32.012474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844481, 34.159191, 31.669794>,  <28.767586, 34.062172, 31.464188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844481, 34.159191, 31.669794>,  <28.972639, 34.320892, 32.012474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844481, 34.159191, 31.669794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933907, 0.016640, -0.357127,
		0.158624, -0.914497, 0.372199,
		-0.320398, -0.404249, -0.856696,
		28.748362, 34.037918, 31.412785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220606, 33.632851, 31.981079>,  <28.972639, 34.320892, 32.012474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220606, 33.632851, 31.981079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144527, 33.793587, 31.622784>,  <29.098881, 33.890026, 31.407806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144527, 33.793587, 31.622784>,  <29.220606, 33.632851, 31.981079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144527, 33.793587, 31.622784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867867, -0.357709, -0.344749,
		-0.458948, -0.842953, -0.280708,
		-0.190195, 0.401838, -0.895741,
		29.087469, 33.914139, 31.354061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301304, 33.024914, 31.593370>,  <29.220606, 33.632851, 31.981079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301304, 33.024914, 31.593370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381216, 33.383610, 31.435410>,  <29.429163, 33.598827, 31.340633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381216, 33.383610, 31.435410>,  <29.301304, 33.024914, 31.593370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381216, 33.383610, 31.435410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936996, -0.292718, -0.190671,
		-0.286577, -0.331930, -0.898719,
		0.199782, 0.896738, -0.394903,
		29.441151, 33.652630, 31.316938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261072, 32.336842, 31.125385>,  <29.301304, 33.024914, 31.593370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261072, 32.336842, 31.125385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144627, 32.432976, 30.754982>,  <29.074760, 32.490658, 30.532740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144627, 32.432976, 30.754982>,  <29.261072, 32.336842, 31.125385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144627, 32.432976, 30.754982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906667, -0.239580, -0.347212,
		-0.305300, -0.940659, -0.148161,
		-0.291112, 0.240336, -0.926009,
		29.057293, 32.505077, 30.477179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326391, 31.763594, 30.586096>,  <29.261072, 32.336842, 31.125385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326391, 31.763594, 30.586096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367231, 32.114502, 30.398493>,  <29.391735, 32.325047, 30.285931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367231, 32.114502, 30.398493>,  <29.326391, 31.763594, 30.586096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367231, 32.114502, 30.398493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946732, -0.230440, -0.224936,
		-0.305408, -0.421058, -0.854070,
		0.102101, 0.877273, -0.469007,
		29.397861, 32.377686, 30.257790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483738, 31.720947, 29.853949>,  <29.326391, 31.763594, 30.586096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483738, 31.720947, 29.853949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634638, 32.021866, 30.069998>,  <29.725178, 32.202415, 30.199627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634638, 32.021866, 30.069998>,  <29.483738, 31.720947, 29.853949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634638, 32.021866, 30.069998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926083, -0.310975, -0.213694,
		0.007204, 0.580815, -0.814004,
		0.377252, 0.752295, 0.540123,
		29.747814, 32.247555, 30.232035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052870, 32.124531, 29.535721>,  <29.483738, 31.720947, 29.853949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052870, 32.124531, 29.535721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108114, 32.074020, 29.928654>,  <30.141260, 32.043713, 30.164413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108114, 32.074020, 29.928654>,  <30.052870, 32.124531, 29.535721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108114, 32.074020, 29.928654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834465, -0.519402, -0.184090,
		0.533473, 0.845148, 0.033642,
		0.138110, -0.126280, 0.982333,
		30.149548, 32.036137, 30.223354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634769, 32.316315, 29.075397>,  <30.052870, 32.124531, 29.535721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634769, 32.316315, 29.075397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770958, 32.452744, 28.724913>,  <30.852671, 32.534599, 28.514622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770958, 32.452744, 28.724913>,  <30.634769, 32.316315, 29.075397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770958, 32.452744, 28.724913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193554, 0.886508, 0.420286,
		0.920118, -0.312689, 0.235814,
		0.340470, 0.341070, -0.876214,
		30.873098, 32.555065, 28.462048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123669, 32.351875, 29.640621>,  <30.634769, 32.316315, 29.075397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123669, 32.351875, 29.640621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198969, 31.972548, 29.742804>,  <31.244148, 31.744951, 29.804113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198969, 31.972548, 29.742804>,  <31.123669, 32.351875, 29.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198969, 31.972548, 29.742804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512932, 0.316749, 0.797854,
		-0.837534, -0.019164, 0.546050,
		0.188251, -0.948316, 0.255458,
		31.255444, 31.688053, 29.819441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027086, 32.320152, 30.334236>,  <31.123669, 32.351875, 29.640621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027086, 32.320152, 30.334236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216316, 31.975889, 30.258907>,  <31.329855, 31.769331, 30.213711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216316, 31.975889, 30.258907>,  <31.027086, 32.320152, 30.334236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216316, 31.975889, 30.258907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437123, 0.043706, 0.898339,
		-0.764934, -0.507301, 0.396891,
		0.473075, -0.860660, -0.188321,
		31.358238, 31.717691, 30.202412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532448, 32.751274, 30.707094>,  <31.027086, 32.320152, 30.334236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532448, 32.751274, 30.707094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819056, 32.619045, 30.461390>,  <31.991020, 32.539707, 30.313967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819056, 32.619045, 30.461390>,  <31.532448, 32.751274, 30.707094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819056, 32.619045, 30.461390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611667, -0.721081, -0.325432,
		-0.335352, 0.608901, -0.718874,
		0.716522, -0.330577, -0.614260,
		32.034012, 32.519871, 30.277111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263073, 33.032158, 30.558062>,  <31.532448, 32.751274, 30.707094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263073, 33.032158, 30.558062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437637, 33.341980, 30.374926>,  <32.542377, 33.527874, 30.265043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437637, 33.341980, 30.374926>,  <32.263073, 33.032158, 30.558062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437637, 33.341980, 30.374926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333903, -0.611935, -0.716969,
		-0.835497, 0.160019, -0.525680,
		0.436411, 0.774551, -0.457839,
		32.568562, 33.574345, 30.237574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053860, 33.155216, 29.832146>,  <32.263073, 33.032158, 30.558062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053860, 33.155216, 29.832146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417034, 33.322681, 29.824381>,  <32.634937, 33.423161, 29.819721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417034, 33.322681, 29.824381>,  <32.053860, 33.155216, 29.832146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417034, 33.322681, 29.824381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167710, -0.405372, -0.898636,
		-0.384095, 0.812647, -0.438265,
		0.907934, 0.418663, -0.019412,
		32.689415, 33.448280, 29.818558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225155, 33.385956, 29.121008>,  <32.053860, 33.155216, 29.832146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225155, 33.385956, 29.121008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585049, 33.334358, 29.287788>,  <32.800983, 33.303398, 29.387856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585049, 33.334358, 29.287788>,  <32.225155, 33.385956, 29.121008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585049, 33.334358, 29.287788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301370, -0.507391, -0.807298,
		0.315693, 0.852006, -0.417640,
		0.899730, -0.128994, 0.416949,
		32.854969, 33.295658, 29.412872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644062, 33.503822, 28.626560>,  <32.225155, 33.385956, 29.121008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644062, 33.503822, 28.626560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881477, 33.319630, 28.890581>,  <33.023926, 33.209114, 29.048994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881477, 33.319630, 28.890581>,  <32.644062, 33.503822, 28.626560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881477, 33.319630, 28.890581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507348, -0.422565, -0.751024,
		0.624751, 0.780635, -0.017181,
		0.593536, -0.460486, 0.660052,
		33.059540, 33.181484, 29.088596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183865, 33.572914, 28.225819>,  <32.644062, 33.503822, 28.626560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183865, 33.572914, 28.225819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263176, 33.281731, 28.488348>,  <33.310760, 33.107021, 28.645866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263176, 33.281731, 28.488348>,  <33.183865, 33.572914, 28.225819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263176, 33.281731, 28.488348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525591, -0.486238, -0.698088,
		0.827310, 0.483372, 0.286200,
		0.198275, -0.727959, 0.656326,
		33.322659, 33.063343, 28.685246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975586, 33.491798, 28.278646>,  <33.183865, 33.572914, 28.225819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975586, 33.491798, 28.278646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814240, 33.154140, 28.419903>,  <33.717430, 32.951546, 28.504658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814240, 33.154140, 28.419903>,  <33.975586, 33.491798, 28.278646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814240, 33.154140, 28.419903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616523, -0.535904, -0.576807,
		0.676161, -0.014945, 0.736602,
		-0.403368, -0.844147, 0.353143,
		33.693230, 32.900898, 28.525846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512314, 33.168106, 28.456079>,  <33.975586, 33.491798, 28.278646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512314, 33.168106, 28.456079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231976, 32.885124, 28.419594>,  <34.063774, 32.715336, 28.397703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231976, 32.885124, 28.419594>,  <34.512314, 33.168106, 28.456079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231976, 32.885124, 28.419594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630902, -0.555120, -0.542036,
		0.332833, -0.437430, 0.835390,
		-0.700845, -0.707458, -0.091213,
		34.021721, 32.672886, 28.392229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740925, 32.502750, 28.679268>,  <34.512314, 33.168106, 28.456079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740925, 32.502750, 28.679268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456490, 32.425838, 28.408745>,  <34.285828, 32.379692, 28.246431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456490, 32.425838, 28.408745>,  <34.740925, 32.502750, 28.679268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456490, 32.425838, 28.408745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640544, -0.573801, -0.510348,
		-0.289936, -0.796104, 0.531183,
		-0.711084, -0.192278, -0.676305,
		34.243164, 32.368156, 28.205853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869152, 31.812929, 28.405170>,  <34.740925, 32.502750, 28.679268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869152, 31.812929, 28.405170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603523, 31.937014, 28.133059>,  <34.444145, 32.011463, 27.969791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603523, 31.937014, 28.133059>,  <34.869152, 31.812929, 28.405170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603523, 31.937014, 28.133059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554879, -0.405349, -0.726499,
		-0.501120, -0.859918, 0.097050,
		-0.664069, 0.310213, -0.680279,
		34.404301, 32.030075, 27.928974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760242, 31.203552, 27.999588>,  <34.869152, 31.812929, 28.405170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760242, 31.203552, 27.999588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648781, 31.518696, 27.779905>,  <34.581902, 31.707783, 27.648096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648781, 31.518696, 27.779905>,  <34.760242, 31.203552, 27.999588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648781, 31.518696, 27.779905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610781, -0.295929, -0.734420,
		-0.741145, -0.540097, -0.398746,
		-0.278658, 0.787859, -0.549207,
		34.565182, 31.755053, 27.615143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750832, 30.876396, 27.387980>,  <34.760242, 31.203552, 27.999588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750832, 30.876396, 27.387980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782848, 31.269445, 27.320995>,  <34.802059, 31.505276, 27.280806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782848, 31.269445, 27.320995>,  <34.750832, 30.876396, 27.387980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782848, 31.269445, 27.320995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754180, -0.169545, -0.634403,
		-0.651771, -0.075517, -0.754647,
		0.080038, 0.982625, -0.167458,
		34.806858, 31.564234, 27.270758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958801, 30.888485, 26.693701>,  <34.750832, 30.876396, 27.387980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958801, 30.888485, 26.693701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046577, 31.258245, 26.818491>,  <35.099243, 31.480103, 26.893366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046577, 31.258245, 26.818491>,  <34.958801, 30.888485, 26.693701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046577, 31.258245, 26.818491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748146, 0.045803, -0.661951,
		-0.626198, 0.378662, -0.681536,
		0.219439, 0.924401, 0.311976,
		35.112408, 31.535566, 26.912085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869453, 31.257769, 26.144657>,  <34.958801, 30.888485, 26.693701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869453, 31.257769, 26.144657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102654, 31.459982, 26.399075>,  <35.242573, 31.581310, 26.551725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102654, 31.459982, 26.399075>,  <34.869453, 31.257769, 26.144657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102654, 31.459982, 26.399075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680381, 0.124100, -0.722275,
		-0.444066, 0.853836, -0.271604,
		0.582999, 0.505532, 0.636042,
		35.277554, 31.611641, 26.589888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145878, 31.746355, 25.724560>,  <34.869453, 31.257769, 26.144657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145878, 31.746355, 25.724560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387119, 31.769880, 26.042757>,  <35.531864, 31.783995, 26.233675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387119, 31.769880, 26.042757>,  <35.145878, 31.746355, 25.724560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387119, 31.769880, 26.042757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789791, 0.095757, -0.605855,
		-0.111805, 0.993666, 0.011302,
		0.603099, 0.058812, 0.795495,
		35.568050, 31.787523, 26.281406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671650, 32.340729, 25.656078>,  <35.145878, 31.746355, 25.724560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671650, 32.340729, 25.656078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830807, 32.053566, 25.884567>,  <35.926300, 31.881269, 26.021660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830807, 32.053566, 25.884567>,  <35.671650, 32.340729, 25.656078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830807, 32.053566, 25.884567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800267, -0.032868, -0.598743,
		0.448615, 0.695365, 0.561437,
		0.397892, -0.717905, 0.571222,
		35.950172, 31.838194, 26.055933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380505, 32.477867, 25.597021>,  <35.671650, 32.340729, 25.656078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380505, 32.477867, 25.597021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399395, 32.103050, 25.735418>,  <36.410728, 31.878159, 25.818457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399395, 32.103050, 25.735418>,  <36.380505, 32.477867, 25.597021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399395, 32.103050, 25.735418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693696, -0.218460, -0.686339,
		0.718718, 0.272431, 0.639708,
		0.047229, -0.937047, 0.345995,
		36.413563, 31.821936, 25.839216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131252, 32.345585, 25.782026>,  <36.380505, 32.477867, 25.597021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131252, 32.345585, 25.782026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938904, 32.003902, 25.702944>,  <36.823494, 31.798893, 25.655495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938904, 32.003902, 25.702944>,  <37.131252, 32.345585, 25.782026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938904, 32.003902, 25.702944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691016, -0.230437, -0.685124,
		0.539680, -0.466077, 0.701083,
		-0.480876, -0.854208, -0.197704,
		36.794640, 31.747641, 25.643633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658684, 31.820526, 25.715485>,  <37.131252, 32.345585, 25.782026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658684, 31.820526, 25.715485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346409, 31.654087, 25.528982>,  <37.159046, 31.554224, 25.417082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346409, 31.654087, 25.528982>,  <37.658684, 31.820526, 25.715485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346409, 31.654087, 25.528982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613325, -0.367077, -0.699347,
		0.119845, -0.831936, 0.541775,
		-0.780686, -0.416097, -0.466255,
		37.112202, 31.529259, 25.389105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852261, 31.193432, 25.475824>,  <37.658684, 31.820526, 25.715485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852261, 31.193432, 25.475824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527512, 31.287636, 25.262136>,  <37.332661, 31.344158, 25.133923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527512, 31.287636, 25.262136>,  <37.852261, 31.193432, 25.475824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527512, 31.287636, 25.262136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501580, -0.186924, -0.844676,
		-0.298787, -0.953727, 0.033633,
		-0.811877, 0.235509, -0.534221,
		37.283947, 31.358288, 25.101870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745937, 30.690666, 25.001774>,  <37.852261, 31.193432, 25.475824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745937, 30.690666, 25.001774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536354, 31.000715, 24.860548>,  <37.410603, 31.186745, 24.775812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536354, 31.000715, 24.860548>,  <37.745937, 30.690666, 25.001774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536354, 31.000715, 24.860548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308602, -0.213594, -0.926899,
		-0.793873, -0.594612, -0.127291,
		-0.523957, 0.775122, -0.353065,
		37.379166, 31.233252, 24.754629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473358, 30.368080, 24.511427>,  <37.745937, 30.690666, 25.001774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473358, 30.368080, 24.511427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409195, 30.751583, 24.417570>,  <37.370697, 30.981686, 24.361256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409195, 30.751583, 24.417570>,  <37.473358, 30.368080, 24.511427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409195, 30.751583, 24.417570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330617, -0.171798, -0.927997,
		-0.930034, -0.226431, -0.289424,
		-0.160405, 0.958757, -0.234640,
		37.361073, 31.039209, 24.347178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161121, 30.376928, 23.815430>,  <37.473358, 30.368080, 24.511427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161121, 30.376928, 23.815430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281921, 30.757870, 23.832485>,  <37.354401, 30.986435, 23.842718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281921, 30.757870, 23.832485>,  <37.161121, 30.376928, 23.815430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281921, 30.757870, 23.832485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333197, -0.063543, -0.940714,
		-0.893183, 0.298303, -0.336512,
		0.302001, 0.952354, 0.042639,
		37.372520, 31.043575, 23.845276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004112, 30.637510, 23.098738>,  <37.161121, 30.376928, 23.815430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004112, 30.637510, 23.098738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265209, 30.885002, 23.273600>,  <37.421867, 31.033497, 23.378517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265209, 30.885002, 23.273600>,  <37.004112, 30.637510, 23.098738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265209, 30.885002, 23.273600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506764, 0.072325, -0.859046,
		-0.563134, 0.782268, -0.266340,
		0.652741, 0.618730, 0.437153,
		37.461033, 31.070621, 23.404745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041904, 31.179867, 22.644781>,  <37.004112, 30.637510, 23.098738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041904, 31.179867, 22.644781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365913, 31.178087, 22.879335>,  <37.560318, 31.177019, 23.020067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365913, 31.178087, 22.879335>,  <37.041904, 31.179867, 22.644781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365913, 31.178087, 22.879335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586273, -0.014854, -0.809977,
		0.012312, 0.999880, -0.009425,
		0.810020, -0.004447, 0.586386,
		37.608921, 31.176754, 23.055252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416847, 31.802879, 22.439793>,  <37.041904, 31.179867, 22.644781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416847, 31.802879, 22.439793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663239, 31.545494, 22.621572>,  <37.811073, 31.391064, 22.730640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663239, 31.545494, 22.621572>,  <37.416847, 31.802879, 22.439793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663239, 31.545494, 22.621572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622579, 0.044185, -0.781309,
		0.482663, 0.764201, 0.427824,
		0.615980, -0.643463, 0.454449,
		37.848034, 31.352455, 22.757908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061287, 32.116127, 22.299736>,  <37.416847, 31.802879, 22.439793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061287, 32.116127, 22.299736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154987, 31.743696, 22.411615>,  <38.211208, 31.520239, 22.478743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154987, 31.743696, 22.411615>,  <38.061287, 32.116127, 22.299736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154987, 31.743696, 22.411615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855562, 0.060805, -0.514118,
		0.461674, 0.359731, 0.810833,
		0.234246, -0.931073, 0.279700,
		38.225262, 31.464375, 22.495525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826008, 32.125507, 22.627829>,  <38.061287, 32.116127, 22.299736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826008, 32.125507, 22.627829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756664, 31.743410, 22.531940>,  <38.715057, 31.514153, 22.474407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756664, 31.743410, 22.531940>,  <38.826008, 32.125507, 22.627829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756664, 31.743410, 22.531940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926637, -0.075751, -0.368247,
		0.333605, -0.285972, 0.898291,
		-0.173355, -0.955239, -0.239721,
		38.704659, 31.456839, 22.460024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433167, 31.846725, 22.738939>,  <38.826008, 32.125507, 22.627829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433167, 31.846725, 22.738939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268162, 31.550592, 22.526623>,  <39.169159, 31.372911, 22.399233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268162, 31.550592, 22.526623>,  <39.433167, 31.846725, 22.738939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268162, 31.550592, 22.526623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900801, -0.244768, -0.358673,
		0.135617, -0.626094, 0.767863,
		-0.412511, -0.740334, -0.530792,
		39.144409, 31.328493, 22.367386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886818, 31.327862, 22.784124>,  <39.433167, 31.846725, 22.738939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886818, 31.327862, 22.784124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688282, 31.252962, 22.445047>,  <39.569160, 31.208023, 22.241602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688282, 31.252962, 22.445047>,  <39.886818, 31.327862, 22.784124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688282, 31.252962, 22.445047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850469, -0.300826, -0.431516,
		-0.174207, -0.935116, 0.308562,
		-0.496341, -0.187250, -0.847693,
		39.539379, 31.196787, 22.190739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035095, 30.724670, 22.600172>,  <39.886818, 31.327862, 22.784124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035095, 30.724670, 22.600172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927193, 30.888023, 22.251356>,  <39.862450, 30.986034, 22.042067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927193, 30.888023, 22.251356>,  <40.035095, 30.724670, 22.600172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927193, 30.888023, 22.251356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771389, -0.450406, -0.449547,
		-0.576360, -0.793951, -0.193522,
		-0.269755, 0.408382, -0.872041,
		39.846268, 31.010538, 21.989744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993717, 30.123867, 22.101156>,  <40.035095, 30.724670, 22.600172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993717, 30.123867, 22.101156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023945, 30.467012, 21.897840>,  <40.042080, 30.672899, 21.775850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023945, 30.467012, 21.897840>,  <39.993717, 30.123867, 22.101156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023945, 30.467012, 21.897840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815359, -0.346597, -0.463746,
		-0.574003, -0.379393, -0.725659,
		0.075570, 0.857864, -0.508290,
		40.046616, 30.724371, 21.745354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273937, 29.890890, 21.417391>,  <39.993717, 30.123867, 22.101156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273937, 29.890890, 21.417391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338276, 30.285679, 21.415813>,  <40.376877, 30.522552, 21.414867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338276, 30.285679, 21.415813>,  <40.273937, 29.890890, 21.417391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338276, 30.285679, 21.415813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809079, -0.134139, -0.572187,
		-0.565261, 0.088841, -0.820114,
		0.160843, 0.986972, -0.003944,
		40.386528, 30.581770, 21.414631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336567, 30.125774, 20.685589>,  <40.273937, 29.890890, 21.417391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336567, 30.125774, 20.685589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518394, 30.385818, 20.929138>,  <40.627491, 30.541845, 21.075268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518394, 30.385818, 20.929138>,  <40.336567, 30.125774, 20.685589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518394, 30.385818, 20.929138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777709, 0.043554, -0.627113,
		-0.434211, 0.758591, -0.485798,
		0.454565, 0.650109, 0.608875,
		40.654762, 30.580851, 21.111801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783821, 30.593781, 20.210276>,  <40.336567, 30.125774, 20.685589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783821, 30.593781, 20.210276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925949, 30.663637, 20.577591>,  <41.011227, 30.705551, 20.797979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925949, 30.663637, 20.577591>,  <40.783821, 30.593781, 20.210276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925949, 30.663637, 20.577591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905652, 0.178874, -0.384446,
		-0.231398, 0.968248, -0.094609,
		0.355316, 0.174643, 0.918287,
		41.032543, 30.716030, 20.853077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134621, 31.212435, 20.109701>,  <40.783821, 30.593781, 20.210276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134621, 31.212435, 20.109701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301056, 30.997042, 20.402798>,  <41.400917, 30.867805, 20.578655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301056, 30.997042, 20.402798>,  <41.134621, 31.212435, 20.109701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301056, 30.997042, 20.402798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879486, 0.443042, -0.173833,
		-0.231029, 0.716765, 0.657931,
		0.416089, -0.538481, 0.732740,
		41.425884, 30.835497, 20.622620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644348, 31.595739, 20.215233>,  <41.134621, 31.212435, 20.109701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644348, 31.595739, 20.215233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760948, 31.278107, 20.428574>,  <41.830910, 31.087528, 20.556578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760948, 31.278107, 20.428574>,  <41.644348, 31.595739, 20.215233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760948, 31.278107, 20.428574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956448, 0.250851, -0.149270,
		-0.015259, 0.553635, 0.832620,
		0.291504, -0.794080, 0.533351,
		41.848400, 31.039883, 20.588579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258469, 31.803493, 20.702946>,  <41.644348, 31.595739, 20.215233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258469, 31.803493, 20.702946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302860, 31.408020, 20.662571>,  <42.329494, 31.170736, 20.638346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302860, 31.408020, 20.662571>,  <42.258469, 31.803493, 20.702946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302860, 31.408020, 20.662571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973945, 0.128411, -0.186927,
		0.197773, -0.077562, 0.977174,
		0.110981, -0.988683, -0.100937,
		42.336155, 31.111416, 20.632290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790043, 31.704273, 21.037683>,  <42.258469, 31.803493, 20.702946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790043, 31.704273, 21.037683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768776, 31.388792, 20.792694>,  <42.756016, 31.199503, 20.645700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768776, 31.388792, 20.792694>,  <42.790043, 31.704273, 21.037683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768776, 31.388792, 20.792694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930315, 0.183766, -0.317403,
		0.362888, -0.586668, 0.723970,
		-0.053169, -0.788702, -0.612472,
		42.752827, 31.152182, 20.608952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439034, 31.230719, 21.068281>,  <42.790043, 31.704273, 21.037683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439034, 31.230719, 21.068281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260433, 31.173157, 20.715027>,  <43.153275, 31.138620, 20.503075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260433, 31.173157, 20.715027>,  <43.439034, 31.230719, 21.068281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260433, 31.173157, 20.715027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877265, 0.123940, -0.463730,
		0.176189, -0.981799, 0.070903,
		-0.446502, -0.143905, -0.883135,
		43.126484, 31.129986, 20.450087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936157, 30.999893, 20.763844>,  <43.439034, 31.230719, 21.068281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936157, 30.999893, 20.763844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703064, 31.083771, 20.449785>,  <43.563210, 31.134098, 20.261351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703064, 31.083771, 20.449785>,  <43.936157, 30.999893, 20.763844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703064, 31.083771, 20.449785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810760, 0.216138, -0.544016,
		0.055622, -0.953579, -0.295963,
		-0.582730, 0.209696, -0.785145,
		43.528244, 31.146679, 20.214241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218506, 30.724077, 20.166927>,  <43.936157, 30.999893, 20.763844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218506, 30.724077, 20.166927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997910, 31.024038, 20.020775>,  <43.865551, 31.204016, 19.933084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997910, 31.024038, 20.020775>,  <44.218506, 30.724077, 20.166927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997910, 31.024038, 20.020775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685912, 0.158376, -0.710240,
		-0.474744, -0.642309, -0.601711,
		-0.551491, 0.749903, -0.365379,
		43.832462, 31.249010, 19.911161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448421, 30.711027, 19.529377>,  <44.218506, 30.724077, 20.166927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448421, 30.711027, 19.529377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241089, 31.052874, 19.541800>,  <44.116688, 31.257982, 19.549253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241089, 31.052874, 19.541800>,  <44.448421, 30.711027, 19.529377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241089, 31.052874, 19.541800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683564, 0.435865, -0.585458,
		-0.513879, -0.282231, -0.810107,
		-0.518332, 0.854615, 0.031059,
		44.085590, 31.309258, 19.551117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467007, 30.859079, 18.851299>,  <44.448421, 30.711027, 19.529377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467007, 30.859079, 18.851299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386944, 31.202679, 19.039793>,  <44.338905, 31.408838, 19.152889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386944, 31.202679, 19.039793>,  <44.467007, 30.859079, 18.851299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386944, 31.202679, 19.039793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782083, 0.429788, -0.451253,
		-0.590155, 0.278221, -0.757833,
		-0.200159, 0.858997, 0.471233,
		44.326897, 31.460379, 19.181164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525612, 31.404560, 18.352722>,  <44.467007, 30.859079, 18.851299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525612, 31.404560, 18.352722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599369, 31.552027, 18.717157>,  <44.643623, 31.640507, 18.935820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599369, 31.552027, 18.717157>,  <44.525612, 31.404560, 18.352722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599369, 31.552027, 18.717157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676113, 0.625224, -0.389828,
		-0.713352, 0.687880, -0.133975,
		0.184391, 0.368667, 0.911090,
		44.654686, 31.662626, 18.990484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462132, 32.189907, 18.294552>,  <44.525612, 31.404560, 18.352722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462132, 32.189907, 18.294552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717358, 32.086853, 18.584791>,  <44.870495, 32.025021, 18.758934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717358, 32.086853, 18.584791>,  <44.462132, 32.189907, 18.294552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717358, 32.086853, 18.584791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717303, 0.541458, -0.438519,
		-0.279901, 0.800278, 0.530293,
		0.638068, -0.257639, 0.725597,
		44.908779, 32.009560, 18.802471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915913, 32.710400, 18.558737>,  <44.462132, 32.189907, 18.294552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915913, 32.710400, 18.558737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131912, 32.401077, 18.691637>,  <45.261513, 32.215485, 18.771378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131912, 32.401077, 18.691637>,  <44.915913, 32.710400, 18.558737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131912, 32.401077, 18.691637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792061, 0.333391, -0.511361,
		0.284671, 0.539299, 0.792540,
		0.540002, -0.773310, 0.332251,
		45.293911, 32.169083, 18.791313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621315, 33.013329, 18.661232>,  <44.915913, 32.710400, 18.558737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621315, 33.013329, 18.661232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611080, 32.615639, 18.619528>,  <45.604939, 32.377026, 18.594505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611080, 32.615639, 18.619528>,  <45.621315, 33.013329, 18.661232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611080, 32.615639, 18.619528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859113, 0.031461, -0.510818,
		0.511146, -0.102640, 0.853343,
		-0.025583, -0.994221, -0.104260,
		45.603405, 32.317371, 18.588249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243835, 33.599998, 18.755724>,  <45.621315, 33.013329, 18.661232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243835, 33.599998, 18.755724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364262, 33.628567, 19.136095>,  <45.436516, 33.645710, 19.364317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364262, 33.628567, 19.136095>,  <45.243835, 33.599998, 18.755724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364262, 33.628567, 19.136095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948099, 0.084579, -0.306521,
		-0.102321, 0.993854, -0.042252,
		0.301064, 0.071423, 0.950926,
		45.454582, 33.649994, 19.421373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647327, 34.190994, 18.723633>,  <45.243835, 33.599998, 18.755724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647327, 34.190994, 18.723633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730450, 33.953587, 19.034645>,  <45.780323, 33.811142, 19.221252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730450, 33.953587, 19.034645>,  <45.647327, 34.190994, 18.723633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730450, 33.953587, 19.034645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902404, -0.190416, -0.386534,
		0.377470, 0.781969, 0.496025,
		0.207806, -0.593520, 0.777528,
		45.792793, 33.775532, 19.267904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297913, 34.469765, 19.035347>,  <45.647327, 34.190994, 18.723633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297913, 34.469765, 19.035347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240475, 34.074146, 19.048969>,  <46.206013, 33.836773, 19.057142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240475, 34.074146, 19.048969>,  <46.297913, 34.469765, 19.035347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240475, 34.074146, 19.048969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896964, -0.144612, -0.417784,
		0.418134, -0.029444, 0.907908,
		-0.143596, -0.989050, 0.034057,
		46.197395, 33.777431, 19.059187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866985, 34.029041, 19.539001>,  <46.297913, 34.469765, 19.035347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866985, 34.029041, 19.539001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.699978, 33.870564, 19.211903>,  <46.599773, 33.775478, 19.015644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.699978, 33.870564, 19.211903>,  <46.866985, 34.029041, 19.539001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699978, 33.870564, 19.211903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900768, -0.062047, -0.429847,
		0.119564, -0.916068, 0.382784,
		-0.417519, -0.396194, -0.817746,
		46.574722, 33.751705, 18.966579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655804, 33.307858, 19.549273>,  <46.866985, 34.029041, 19.539001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655804, 33.307858, 19.549273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490967, 33.670635, 19.584223>,  <46.392063, 33.888302, 19.605192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490967, 33.670635, 19.584223>,  <46.655804, 33.307858, 19.549273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490967, 33.670635, 19.584223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820304, -0.411039, 0.397678,
		0.396585, 0.092208, 0.913355,
		-0.412094, 0.906942, 0.087374,
		46.367340, 33.942719, 19.610435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331875, 33.346558, 20.240337>,  <46.655804, 33.307858, 19.549273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331875, 33.346558, 20.240337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168709, 33.640568, 20.023691>,  <46.070808, 33.816975, 19.893703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168709, 33.640568, 20.023691>,  <46.331875, 33.346558, 20.240337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168709, 33.640568, 20.023691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875261, -0.145983, 0.461093,
		0.259847, 0.662142, 0.702885,
		-0.407919, 0.735021, -0.541614,
		46.046333, 33.861073, 19.861206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957050, 33.927204, 20.615528>,  <46.331875, 33.346558, 20.240337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957050, 33.927204, 20.615528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801296, 33.826958, 20.260998>,  <45.707844, 33.766811, 20.048279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801296, 33.826958, 20.260998>,  <45.957050, 33.927204, 20.615528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801296, 33.826958, 20.260998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819209, -0.345644, 0.457632,
		-0.421041, 0.904281, -0.070715,
		-0.389385, -0.250612, -0.886325,
		45.684479, 33.751774, 19.995100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299297, 34.233936, 20.536926>,  <45.957050, 33.927204, 20.615528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299297, 34.233936, 20.536926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297153, 33.852375, 20.416904>,  <45.295868, 33.623436, 20.344891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297153, 33.852375, 20.416904>,  <45.299297, 34.233936, 20.536926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297153, 33.852375, 20.416904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617539, -0.232848, 0.751284,
		-0.786522, 0.189322, -0.587827,
		-0.005360, -0.953907, -0.300054,
		45.295544, 33.566204, 20.326889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665863, 34.001045, 20.617548>,  <45.299297, 34.233936, 20.536926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665863, 34.001045, 20.617548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867378, 33.655724, 20.605469>,  <44.988289, 33.448532, 20.598221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867378, 33.655724, 20.605469>,  <44.665863, 34.001045, 20.617548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867378, 33.655724, 20.605469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692813, -0.424686, 0.582797,
		-0.515955, -0.272682, -0.812056,
		0.503787, -0.863300, -0.030201,
		45.018513, 33.396732, 20.596409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164822, 33.456158, 20.397852>,  <44.665863, 34.001045, 20.617548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164822, 33.456158, 20.397852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457657, 33.285038, 20.609903>,  <44.633358, 33.182365, 20.737135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457657, 33.285038, 20.609903>,  <44.164822, 33.456158, 20.397852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457657, 33.285038, 20.609903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659177, -0.248546, 0.709726,
		-0.171851, -0.869034, -0.463947,
		0.732089, -0.427790, 0.530134,
		44.677284, 33.156700, 20.768942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828857, 32.977917, 20.612225>,  <44.164822, 33.456158, 20.397852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828857, 32.977917, 20.612225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155216, 32.960030, 20.842813>,  <44.351032, 32.949295, 20.981167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155216, 32.960030, 20.842813>,  <43.828857, 32.977917, 20.612225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155216, 32.960030, 20.842813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574152, -0.180470, 0.798612,
		0.068320, -0.982563, -0.172922,
		0.815894, -0.044722, 0.576470,
		44.399982, 32.946613, 21.015755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814888, 32.357376, 20.977377>,  <43.828857, 32.977917, 20.612225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814888, 32.357376, 20.977377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063202, 32.582096, 21.196106>,  <44.212189, 32.716927, 21.327343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063202, 32.582096, 21.196106>,  <43.814888, 32.357376, 20.977377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063202, 32.582096, 21.196106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608358, -0.094749, 0.787987,
		0.494499, -0.821832, 0.282954,
		0.620783, 0.561796, 0.546821,
		44.249435, 32.750633, 21.360153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764198, 32.142429, 21.630732>,  <43.814888, 32.357376, 20.977377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764198, 32.142429, 21.630732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936840, 32.496937, 21.697952>,  <44.040424, 32.709641, 21.738285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936840, 32.496937, 21.697952>,  <43.764198, 32.142429, 21.630732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936840, 32.496937, 21.697952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477639, 0.066494, 0.876036,
		0.765232, -0.458368, 0.452017,
		0.431604, 0.886272, 0.168051,
		44.066322, 32.762817, 21.748367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816753, 32.101578, 22.300817>,  <43.764198, 32.142429, 21.630732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816753, 32.101578, 22.300817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857723, 32.478260, 22.172626>,  <43.882305, 32.704269, 22.095713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857723, 32.478260, 22.172626>,  <43.816753, 32.101578, 22.300817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857723, 32.478260, 22.172626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365261, 0.335273, 0.868434,
		0.925253, 0.028105, 0.378308,
		0.102429, 0.941702, -0.320478,
		43.888451, 32.760769, 22.076483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219940, 32.521549, 22.828968>,  <43.816753, 32.101578, 22.300817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219940, 32.521549, 22.828968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007683, 32.776470, 22.605448>,  <43.880329, 32.929424, 22.471334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007683, 32.776470, 22.605448>,  <44.219940, 32.521549, 22.828968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007683, 32.776470, 22.605448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342537, 0.441801, 0.829145,
		0.775297, 0.631391, -0.016138,
		-0.530644, 0.637305, -0.558802,
		43.848488, 32.967663, 22.437807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281116, 33.115551, 23.233679>,  <44.219940, 32.521549, 22.828968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281116, 33.115551, 23.233679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964066, 33.165260, 22.994917>,  <43.773834, 33.195084, 22.851660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964066, 33.165260, 22.994917>,  <44.281116, 33.115551, 23.233679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964066, 33.165260, 22.994917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482435, 0.470814, 0.738641,
		0.372822, 0.873436, -0.313229,
		-0.792629, 0.124269, -0.596906,
		43.726276, 33.202541, 22.815845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146263, 33.764317, 23.349831>,  <44.281116, 33.115551, 23.233679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146263, 33.764317, 23.349831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808796, 33.620991, 23.189913>,  <43.606316, 33.534996, 23.093962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808796, 33.620991, 23.189913>,  <44.146263, 33.764317, 23.349831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808796, 33.620991, 23.189913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530721, 0.444312, 0.721749,
		-0.080979, 0.821096, -0.565016,
		-0.843669, -0.358312, -0.399793,
		43.555695, 33.513496, 23.069975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633381, 34.328960, 23.261944>,  <44.146263, 33.764317, 23.349831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633381, 34.328960, 23.261944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435444, 33.981556, 23.273375>,  <43.316681, 33.773113, 23.280233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435444, 33.981556, 23.273375>,  <43.633381, 34.328960, 23.261944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435444, 33.981556, 23.273375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516108, 0.320198, 0.794421,
		-0.699116, 0.378364, -0.606694,
		-0.494843, -0.868512, 0.028579,
		43.286991, 33.721001, 23.281948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926922, 34.448780, 23.329630>,  <43.633381, 34.328960, 23.261944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926922, 34.448780, 23.329630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965744, 34.067123, 23.442911>,  <42.989037, 33.838131, 23.510880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965744, 34.067123, 23.442911>,  <42.926922, 34.448780, 23.329630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965744, 34.067123, 23.442911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443001, 0.213392, 0.870755,
		-0.891253, -0.209967, -0.401974,
		0.097052, -0.954137, 0.283202,
		42.994858, 33.780884, 23.527872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238499, 34.244030, 23.401455>,  <42.926922, 34.448780, 23.329630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238499, 34.244030, 23.401455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432598, 33.957005, 23.601309>,  <42.549057, 33.784790, 23.721222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432598, 33.957005, 23.601309>,  <42.238499, 34.244030, 23.401455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432598, 33.957005, 23.601309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689285, 0.037652, 0.723511,
		-0.537977, -0.695475, -0.476335,
		0.485249, -0.717563, 0.499637,
		42.578175, 33.741737, 23.751200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678238, 33.674500, 23.503981>,  <42.238499, 34.244030, 23.401455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678238, 33.674500, 23.503981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966900, 33.682510, 23.780766>,  <42.140099, 33.687317, 23.946836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966900, 33.682510, 23.780766>,  <41.678238, 33.674500, 23.503981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966900, 33.682510, 23.780766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686146, -0.111765, 0.718827,
		0.091735, -0.993533, -0.066913,
		0.721657, 0.020029, 0.691961,
		42.183395, 33.688519, 23.988354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362488, 33.343990, 23.971643>,  <41.678238, 33.674500, 23.503981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362488, 33.343990, 23.971643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647709, 33.519470, 24.190399>,  <41.818844, 33.624760, 24.321653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647709, 33.519470, 24.190399>,  <41.362488, 33.343990, 23.971643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647709, 33.519470, 24.190399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616894, 0.021925, 0.786741,
		0.333155, -0.898365, 0.286267,
		0.713056, 0.438702, 0.546891,
		41.861626, 33.651081, 24.354467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439350, 33.003620, 24.645571>,  <41.362488, 33.343990, 23.971643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439350, 33.003620, 24.645571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583359, 33.374668, 24.685369>,  <41.669765, 33.597298, 24.709248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583359, 33.374668, 24.685369>,  <41.439350, 33.003620, 24.645571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583359, 33.374668, 24.685369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551253, 0.125479, 0.824849,
		0.752663, -0.351814, 0.556530,
		0.360026, 0.927622, 0.099495,
		41.691368, 33.652954, 24.715218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585316, 33.071537, 25.384729>,  <41.439350, 33.003620, 24.645571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585316, 33.071537, 25.384729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578011, 33.444630, 25.240686>,  <41.573627, 33.668484, 25.154261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578011, 33.444630, 25.240686>,  <41.585316, 33.071537, 25.384729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578011, 33.444630, 25.240686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479951, 0.307777, 0.821535,
		0.877105, 0.187841, 0.442043,
		-0.018267, 0.932732, -0.360108,
		41.572529, 33.724449, 25.132654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526600, 33.460690, 25.951580>,  <41.585316, 33.071537, 25.384729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526600, 33.460690, 25.951580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440983, 33.713093, 25.653313>,  <41.389614, 33.864532, 25.474352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440983, 33.713093, 25.653313>,  <41.526600, 33.460690, 25.951580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440983, 33.713093, 25.653313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734339, 0.399442, 0.548811,
		0.644152, 0.665042, 0.377872,
		-0.214044, 0.631004, -0.745667,
		41.376770, 33.902393, 25.429613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314991, 34.029373, 26.290384>,  <41.526600, 33.460690, 25.951580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314991, 34.029373, 26.290384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154457, 34.100140, 25.930910>,  <41.058136, 34.142597, 25.715225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154457, 34.100140, 25.930910>,  <41.314991, 34.029373, 26.290384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154457, 34.100140, 25.930910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761143, 0.481375, 0.434671,
		0.509503, 0.858475, -0.058536,
		-0.401332, 0.176912, -0.898685,
		41.034058, 34.153214, 25.661304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269993, 34.731857, 26.199745>,  <41.314991, 34.029373, 26.290384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269993, 34.731857, 26.199745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009045, 34.529705, 25.973824>,  <40.852474, 34.408413, 25.838270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009045, 34.529705, 25.973824>,  <41.269993, 34.731857, 26.199745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009045, 34.529705, 25.973824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753786, 0.510188, 0.414144,
		0.078859, 0.695918, -0.713778,
		-0.652371, -0.505377, -0.564806,
		40.813332, 34.378094, 25.804382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795868, 35.242672, 25.920504>,  <41.269993, 34.731857, 26.199745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795868, 35.242672, 25.920504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591003, 34.907318, 25.845871>,  <40.468086, 34.706108, 25.801090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591003, 34.907318, 25.845871>,  <40.795868, 35.242672, 25.920504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591003, 34.907318, 25.845871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841648, 0.446578, 0.303638,
		-0.171240, 0.312547, -0.934340,
		-0.512157, -0.838381, -0.186583,
		40.437355, 34.655804, 25.789896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174953, 35.406948, 25.590502>,  <40.795868, 35.242672, 25.920504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174953, 35.406948, 25.590502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126652, 35.052570, 25.769619>,  <40.097672, 34.839943, 25.877089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126652, 35.052570, 25.769619>,  <40.174953, 35.406948, 25.590502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126652, 35.052570, 25.769619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888441, 0.297676, 0.349373,
		-0.442823, -0.355649, -0.823056,
		-0.120750, -0.885947, 0.447791,
		40.090427, 34.786785, 25.903955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458538, 35.373703, 25.722990>,  <40.174953, 35.406948, 25.590502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458538, 35.373703, 25.722990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557678, 35.041859, 25.923119>,  <39.617161, 34.842754, 26.043196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557678, 35.041859, 25.923119>,  <39.458538, 35.373703, 25.722990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557678, 35.041859, 25.923119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831499, 0.082867, 0.549312,
		-0.497173, -0.552165, -0.669278,
		0.247850, -0.829606, 0.500323,
		39.632034, 34.792976, 26.073215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848351, 34.928040, 25.803802>,  <39.458538, 35.373703, 25.722990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848351, 34.928040, 25.803802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104527, 34.834381, 26.096382>,  <39.258232, 34.778187, 26.271929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104527, 34.834381, 26.096382>,  <38.848351, 34.928040, 25.803802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104527, 34.834381, 26.096382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747514, 0.028518, 0.663634,
		-0.176247, -0.971783, -0.156765,
		0.640437, -0.234148, 0.731448,
		39.296658, 34.764137, 26.315817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471298, 34.434986, 26.123688>,  <38.848351, 34.928040, 25.803802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471298, 34.434986, 26.123688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764328, 34.524864, 26.380701>,  <38.940144, 34.578793, 26.534910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764328, 34.524864, 26.380701>,  <38.471298, 34.434986, 26.123688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764328, 34.524864, 26.380701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658096, -0.007393, 0.752898,
		0.173924, -0.974401, 0.142456,
		0.732571, 0.224697, 0.642535,
		38.984100, 34.592274, 26.573462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445389, 33.869106, 26.593731>,  <38.471298, 34.434986, 26.123688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445389, 33.869106, 26.593731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636936, 34.184299, 26.748533>,  <38.751865, 34.373413, 26.841415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636936, 34.184299, 26.748533>,  <38.445389, 33.869106, 26.593731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636936, 34.184299, 26.748533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506236, -0.112304, 0.855051,
		0.717227, -0.605370, 0.345126,
		0.478864, 0.787981, 0.387008,
		38.780594, 34.420692, 26.864635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544369, 33.578644, 27.337921>,  <38.445389, 33.869106, 26.593731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544369, 33.578644, 27.337921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605274, 33.971760, 27.296103>,  <38.641819, 34.207630, 27.271011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605274, 33.971760, 27.296103>,  <38.544369, 33.578644, 27.337921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605274, 33.971760, 27.296103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580895, 0.174572, 0.795038,
		0.799610, -0.060328, 0.597482,
		0.152267, 0.982795, -0.104546,
		38.650955, 34.266598, 27.264738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675228, 33.865227, 28.023912>,  <38.544369, 33.578644, 27.337921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675228, 33.865227, 28.023912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529583, 34.182121, 27.828039>,  <38.442196, 34.372257, 27.710516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529583, 34.182121, 27.828039>,  <38.675228, 33.865227, 28.023912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529583, 34.182121, 27.828039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690079, 0.123607, 0.713101,
		0.625470, 0.597570, 0.501696,
		-0.364114, 0.792232, -0.489682,
		38.420349, 34.419792, 27.681135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413818, 34.294052, 28.601946>,  <38.675228, 33.865227, 28.023912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413818, 34.294052, 28.601946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271660, 34.451694, 28.262918>,  <38.186367, 34.546280, 28.059502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271660, 34.451694, 28.262918>,  <38.413818, 34.294052, 28.601946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271660, 34.451694, 28.262918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727471, 0.452753, 0.515558,
		0.586926, 0.799808, 0.125798,
		-0.355392, 0.394109, -0.847570,
		38.165043, 34.569927, 28.008648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387901, 35.032742, 28.773687>,  <38.413818, 34.294052, 28.601946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387901, 35.032742, 28.773687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126705, 34.937881, 28.485977>,  <37.969986, 34.880966, 28.313351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126705, 34.937881, 28.485977>,  <38.387901, 35.032742, 28.773687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126705, 34.937881, 28.485977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744193, 0.377272, 0.551219,
		0.140639, 0.895223, -0.422844,
		-0.652991, -0.237155, -0.719278,
		37.930809, 34.866734, 28.270193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944996, 35.652912, 28.512730>,  <38.387901, 35.032742, 28.773687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944996, 35.652912, 28.512730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748825, 35.308189, 28.460928>,  <37.631123, 35.101357, 28.429846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748825, 35.308189, 28.460928>,  <37.944996, 35.652912, 28.512730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748825, 35.308189, 28.460928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809795, 0.395740, 0.433154,
		-0.322044, 0.317303, -0.891967,
		-0.490428, -0.861805, -0.129505,
		37.601696, 35.049648, 28.422077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285702, 35.844936, 28.621044>,  <37.944996, 35.652912, 28.512730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285702, 35.844936, 28.621044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204170, 35.453335, 28.620163>,  <37.155251, 35.218372, 28.619635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204170, 35.453335, 28.620163>,  <37.285702, 35.844936, 28.621044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204170, 35.453335, 28.620163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803974, 0.166103, 0.570996,
		-0.558642, 0.118155, -0.820950,
		-0.203828, -0.979004, -0.002202,
		37.143021, 35.159634, 28.619503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625595, 35.750866, 28.446140>,  <37.285702, 35.844936, 28.621044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625595, 35.750866, 28.446140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705257, 35.398575, 28.618027>,  <36.753056, 35.187199, 28.721159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705257, 35.398575, 28.618027>,  <36.625595, 35.750866, 28.446140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705257, 35.398575, 28.618027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880846, 0.031289, 0.472369,
		-0.429473, -0.472589, -0.769553,
		0.199158, -0.880727, 0.429716,
		36.765003, 35.134357, 28.746943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071175, 35.367191, 28.221949>,  <36.625595, 35.750866, 28.446140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071175, 35.367191, 28.221949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219269, 35.212086, 28.559603>,  <36.308125, 35.119022, 28.762196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219269, 35.212086, 28.559603>,  <36.071175, 35.367191, 28.221949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219269, 35.212086, 28.559603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927654, -0.106592, 0.357906,
		-0.048803, -0.915577, -0.399171,
		0.370239, -0.387760, 0.844136,
		36.330341, 35.095757, 28.812843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665276, 34.814850, 28.334579>,  <36.071175, 35.367191, 28.221949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665276, 34.814850, 28.334579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820278, 34.841007, 28.702398>,  <35.913280, 34.856701, 28.923090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820278, 34.841007, 28.702398>,  <35.665276, 34.814850, 28.334579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820278, 34.841007, 28.702398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904487, -0.165810, 0.392950,
		0.178167, -0.983987, -0.005103,
		0.387504, 0.065395, 0.919545,
		35.936531, 34.860626, 28.978262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174343, 34.330814, 28.813490>,  <35.665276, 34.814850, 28.334579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174343, 34.330814, 28.813490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367176, 34.559399, 29.079130>,  <35.482876, 34.696548, 29.238514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367176, 34.559399, 29.079130>,  <35.174343, 34.330814, 28.813490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367176, 34.559399, 29.079130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738689, -0.142464, 0.658819,
		0.471102, -0.808166, 0.353455,
		0.482081, 0.571464, 0.664098,
		35.511799, 34.730839, 29.278360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995644, 34.035938, 29.413532>,  <35.174343, 34.330814, 28.813490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995644, 34.035938, 29.413532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134285, 34.394524, 29.523962>,  <35.217472, 34.609676, 29.590219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134285, 34.394524, 29.523962>,  <34.995644, 34.035938, 29.413532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134285, 34.394524, 29.523962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426597, -0.111469, 0.897546,
		0.835392, -0.428867, 0.343793,
		0.346605, 0.896464, 0.276074,
		35.238266, 34.663464, 29.606785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192760, 33.972515, 30.136761>,  <34.995644, 34.035938, 29.413532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192760, 33.972515, 30.136761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089970, 34.351437, 30.060263>,  <35.028294, 34.578789, 30.014364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089970, 34.351437, 30.060263>,  <35.192760, 33.972515, 30.136761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089970, 34.351437, 30.060263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593382, 0.001532, 0.804920,
		0.762798, 0.320326, 0.561720,
		-0.256976, 0.947306, -0.191244,
		35.012878, 34.635628, 30.002890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031582, 34.216461, 30.716133>,  <35.192760, 33.972515, 30.136761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031582, 34.216461, 30.716133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865566, 34.479649, 30.464794>,  <34.765957, 34.637562, 30.313992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865566, 34.479649, 30.464794>,  <35.031582, 34.216461, 30.716133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865566, 34.479649, 30.464794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652356, 0.266186, 0.709631,
		0.634173, 0.704430, 0.318752,
		-0.415038, 0.657969, -0.628347,
		34.741055, 34.677040, 30.276291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754406, 34.111382, 30.807457>,  <35.031582, 34.216461, 30.716133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754406, 34.111382, 30.807457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766129, 34.023636, 31.197538>,  <35.773163, 33.970989, 31.431587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766129, 34.023636, 31.197538>,  <35.754406, 34.111382, 30.807457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766129, 34.023636, 31.197538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998428, -0.040215, -0.039047,
		0.047783, 0.974814, 0.217840,
		0.029303, -0.219363, 0.975203,
		35.774918, 33.957829, 31.490099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358559, 34.535454, 31.167431>,  <35.754406, 34.111382, 30.807457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358559, 34.535454, 31.167431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272823, 34.198574, 31.365322>,  <36.221382, 33.996445, 31.484056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272823, 34.198574, 31.365322>,  <36.358559, 34.535454, 31.167431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272823, 34.198574, 31.365322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976082, -0.165828, 0.140586,
		-0.036362, 0.513028, 0.857601,
		-0.214339, -0.842201, 0.494728,
		36.208523, 33.945915, 31.513741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918858, 34.572063, 31.580591>,  <36.358559, 34.535454, 31.167431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918858, 34.572063, 31.580591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796768, 34.194984, 31.634502>,  <36.723515, 33.968739, 31.666849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796768, 34.194984, 31.634502>,  <36.918858, 34.572063, 31.580591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796768, 34.194984, 31.634502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924299, -0.327332, -0.196280,
		0.229149, 0.064667, 0.971241,
		-0.305225, -0.942694, 0.134780,
		36.705200, 33.912178, 31.674936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470268, 34.237526, 31.975025>,  <36.918858, 34.572063, 31.580591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470268, 34.237526, 31.975025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242905, 33.941860, 31.830502>,  <37.106487, 33.764462, 31.743788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242905, 33.941860, 31.830502>,  <37.470268, 34.237526, 31.975025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242905, 33.941860, 31.830502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822682, -0.505224, -0.260657,
		0.010128, -0.445402, 0.895274,
		-0.568411, -0.739166, -0.361307,
		37.072380, 33.720112, 31.722109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563301, 33.613773, 32.419971>,  <37.470268, 34.237526, 31.975025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563301, 33.613773, 32.419971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465569, 33.565411, 32.035122>,  <37.406929, 33.536392, 31.804213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465569, 33.565411, 32.035122>,  <37.563301, 33.613773, 32.419971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465569, 33.565411, 32.035122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936396, -0.287192, -0.201702,
		-0.251926, -0.950211, 0.183388,
		-0.244327, -0.120910, -0.962125,
		37.392269, 33.529137, 31.746485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950817, 32.986725, 32.189816>,  <37.563301, 33.613773, 32.419971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950817, 32.986725, 32.189816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853489, 33.189548, 31.859072>,  <37.795094, 33.311241, 31.660627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853489, 33.189548, 31.859072>,  <37.950817, 32.986725, 32.189816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853489, 33.189548, 31.859072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817787, -0.351142, -0.455985,
		-0.521554, -0.787143, -0.329223,
		-0.243322, 0.507055, -0.826855,
		37.780491, 33.341663, 31.611015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110390, 32.517776, 31.743444>,  <37.950817, 32.986725, 32.189816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110390, 32.517776, 31.743444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090710, 32.866989, 31.549374>,  <38.078903, 33.076515, 31.432932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090710, 32.866989, 31.549374>,  <38.110390, 32.517776, 31.743444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090710, 32.866989, 31.549374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809352, -0.249797, -0.531554,
		-0.585259, -0.418830, -0.694300,
		-0.049197, 0.873031, -0.485178,
		38.075951, 33.128899, 31.403820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336224, 32.382389, 31.106859>,  <38.110390, 32.517776, 31.743444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336224, 32.382389, 31.106859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332378, 32.781967, 31.088867>,  <38.330070, 33.021713, 31.078072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332378, 32.781967, 31.088867>,  <38.336224, 32.382389, 31.106859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332378, 32.781967, 31.088867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766070, -0.021553, -0.642396,
		-0.642686, -0.040631, -0.765052,
		-0.009613, 0.998942, -0.044978,
		38.329494, 33.081650, 31.075375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282032, 32.653042, 30.397385>,  <38.336224, 32.382389, 31.106859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282032, 32.653042, 30.397385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450199, 32.967110, 30.579266>,  <38.551098, 33.155552, 30.688395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450199, 32.967110, 30.579266>,  <38.282032, 32.653042, 30.397385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450199, 32.967110, 30.579266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716076, 0.020636, -0.697717,
		-0.557211, 0.618935, -0.553566,
		0.420418, 0.785171, 0.454703,
		38.576324, 33.202660, 30.715677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488605, 33.113422, 29.839787>,  <38.282032, 32.653042, 30.397385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488605, 33.113422, 29.839787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706646, 33.244614, 30.148407>,  <38.837471, 33.323330, 30.333580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706646, 33.244614, 30.148407>,  <38.488605, 33.113422, 29.839787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706646, 33.244614, 30.148407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822002, -0.028126, -0.568789,
		-0.164849, 0.944267, -0.284929,
		0.545103, 0.327977, 0.771553,
		38.870178, 33.343006, 30.379873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959965, 33.673912, 29.620026>,  <38.488605, 33.113422, 29.839787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959965, 33.673912, 29.620026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123238, 33.544117, 29.961338>,  <39.221203, 33.466240, 30.166126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123238, 33.544117, 29.961338>,  <38.959965, 33.673912, 29.620026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123238, 33.544117, 29.961338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899901, -0.014150, -0.435865,
		0.153509, 0.945783, 0.286234,
		0.408184, -0.324491, 0.853283,
		39.245693, 33.446770, 30.217323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433121, 34.099689, 29.649973>,  <38.959965, 33.673912, 29.620026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433121, 34.099689, 29.649973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559010, 33.778969, 29.853176>,  <39.634541, 33.586536, 29.975098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559010, 33.778969, 29.853176>,  <39.433121, 34.099689, 29.649973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559010, 33.778969, 29.853176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920978, 0.128442, -0.367834,
		0.229678, 0.583629, 0.778861,
		0.314718, -0.801797, 0.508010,
		39.653423, 33.538429, 30.005579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036942, 34.278187, 29.955015>,  <39.433121, 34.099689, 29.649973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036942, 34.278187, 29.955015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063610, 33.879078, 29.956024>,  <40.079613, 33.639614, 29.956629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063610, 33.879078, 29.956024>,  <40.036942, 34.278187, 29.955015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063610, 33.879078, 29.956024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940424, 0.061999, -0.334303,
		0.333402, 0.024660, 0.942462,
		0.066676, -0.997772, 0.002520,
		40.083614, 33.579746, 29.956779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642025, 34.115726, 30.167589>,  <40.036942, 34.278187, 29.955015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642025, 34.115726, 30.167589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576237, 33.748722, 30.022741>,  <40.536762, 33.528519, 29.935833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576237, 33.748722, 30.022741>,  <40.642025, 34.115726, 30.167589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576237, 33.748722, 30.022741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843288, 0.059643, -0.534142,
		0.511677, -0.393223, 0.763913,
		-0.164475, -0.917507, -0.362118,
		40.526894, 33.473469, 29.914106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277287, 33.755127, 30.288288>,  <40.642025, 34.115726, 30.167589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277287, 33.755127, 30.288288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090271, 33.559357, 29.993841>,  <40.978062, 33.441895, 29.817173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090271, 33.559357, 29.993841>,  <41.277287, 33.755127, 30.288288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090271, 33.559357, 29.993841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860301, -0.060500, -0.506184,
		0.203206, -0.869941, 0.449343,
		-0.467536, -0.489430, -0.736117,
		40.950008, 33.412529, 29.773006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749641, 33.203674, 29.950335>,  <41.277287, 33.755127, 30.288288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749641, 33.203674, 29.950335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488777, 33.261181, 29.652605>,  <41.332260, 33.295685, 29.473967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488777, 33.261181, 29.652605>,  <41.749641, 33.203674, 29.950335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488777, 33.261181, 29.652605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672635, -0.343108, -0.655621,
		-0.349634, -0.928230, 0.127065,
		-0.652164, 0.143759, -0.744322,
		41.293129, 33.304310, 29.429308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848896, 32.601395, 29.459217>,  <41.749641, 33.203674, 29.950335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848896, 32.601395, 29.459217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659958, 32.866894, 29.227240>,  <41.546597, 33.026192, 29.088053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659958, 32.866894, 29.227240>,  <41.848896, 32.601395, 29.459217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659958, 32.866894, 29.227240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634051, -0.201182, -0.746663,
		-0.612268, -0.720395, -0.325821,
		-0.472343, 0.663745, -0.579944,
		41.518253, 33.066017, 29.053257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896553, 32.393917, 28.743235>,  <41.848896, 32.601395, 29.459217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896553, 32.393917, 28.743235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776440, 32.769325, 28.675106>,  <41.704372, 32.994572, 28.634230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776440, 32.769325, 28.675106>,  <41.896553, 32.393917, 28.743235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776440, 32.769325, 28.675106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366542, -0.051313, -0.928985,
		-0.880612, -0.341388, -0.328598,
		-0.300283, 0.938520, -0.170320,
		41.686356, 33.050880, 28.624010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547623, 32.370335, 28.059237>,  <41.896553, 32.393917, 28.743235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547623, 32.370335, 28.059237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687672, 32.739010, 28.126062>,  <41.771702, 32.960213, 28.166159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687672, 32.739010, 28.126062>,  <41.547623, 32.370335, 28.059237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687672, 32.739010, 28.126062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382081, 0.022318, -0.923859,
		-0.855236, 0.387296, -0.344344,
		0.350122, 0.921685, 0.167066,
		41.792709, 33.015514, 28.176182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386436, 32.664898, 27.433556>,  <41.547623, 32.370335, 28.059237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386436, 32.664898, 27.433556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659115, 32.900505, 27.607157>,  <41.822720, 33.041870, 27.711317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659115, 32.900505, 27.607157>,  <41.386436, 32.664898, 27.433556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659115, 32.900505, 27.607157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543721, -0.010928, -0.839195,
		-0.489555, 0.808049, -0.327709,
		0.681692, 0.589014, 0.434003,
		41.863621, 33.077209, 27.737358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531590, 33.277115, 26.979631>,  <41.386436, 32.664898, 27.433556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531590, 33.277115, 26.979631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838676, 33.215935, 27.228539>,  <42.022930, 33.179226, 27.377882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838676, 33.215935, 27.228539>,  <41.531590, 33.277115, 26.979631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838676, 33.215935, 27.228539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617964, -0.080147, -0.782111,
		0.169497, 0.984978, 0.032988,
		0.767718, -0.152951, 0.622266,
		42.068993, 33.170048, 27.415218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043011, 33.677483, 26.756952>,  <41.531590, 33.277115, 26.979631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043011, 33.677483, 26.756952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180546, 33.357899, 26.954308>,  <42.263065, 33.166149, 27.072721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180546, 33.357899, 26.954308>,  <42.043011, 33.677483, 26.756952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180546, 33.357899, 26.954308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620125, -0.201359, -0.758222,
		0.705140, 0.566667, 0.426223,
		0.343835, -0.798964, 0.493390,
		42.283695, 33.118210, 27.102325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836433, 33.708584, 26.774424>,  <42.043011, 33.677483, 26.756952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836433, 33.708584, 26.774424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746067, 33.324852, 26.842119>,  <42.691845, 33.094612, 26.882736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746067, 33.324852, 26.842119>,  <42.836433, 33.708584, 26.774424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746067, 33.324852, 26.842119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786448, -0.282138, -0.549453,
		0.574857, 0.008967, 0.818205,
		-0.225920, -0.959332, 0.169241,
		42.678291, 33.037052, 26.892891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467686, 33.410263, 26.852896>,  <42.836433, 33.708584, 26.774424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467686, 33.410263, 26.852896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219666, 33.110340, 26.760525>,  <43.070854, 32.930386, 26.705103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219666, 33.110340, 26.760525>,  <43.467686, 33.410263, 26.852896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219666, 33.110340, 26.760525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734698, -0.451652, -0.506191,
		0.275248, -0.483524, 0.830929,
		-0.620046, -0.749810, -0.230928,
		43.033653, 32.885399, 26.691246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871384, 32.791870, 26.966072>,  <43.467686, 33.410263, 26.852896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871384, 32.791870, 26.966072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583565, 32.663883, 26.719536>,  <43.410873, 32.587093, 26.571615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583565, 32.663883, 26.719536>,  <43.871384, 32.791870, 26.966072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583565, 32.663883, 26.719536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681147, -0.498021, -0.536670,
		-0.135235, -0.805977, 0.576292,
		-0.719549, -0.319963, -0.616338,
		43.367699, 32.567894, 26.534634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995960, 32.120712, 26.850121>,  <43.871384, 32.791870, 26.966072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995960, 32.120712, 26.850121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763062, 32.237465, 26.546598>,  <43.623322, 32.307518, 26.364485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763062, 32.237465, 26.546598>,  <43.995960, 32.120712, 26.850121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763062, 32.237465, 26.546598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477339, -0.632797, -0.609685,
		-0.658126, -0.717199, 0.229121,
		-0.582252, 0.291881, -0.758807,
		43.588387, 32.325031, 26.318956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795444, 31.540176, 26.462099>,  <43.995960, 32.120712, 26.850121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795444, 31.540176, 26.462099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792736, 31.834616, 26.191362>,  <43.791111, 32.011280, 26.028921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792736, 31.834616, 26.191362>,  <43.795444, 31.540176, 26.462099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792736, 31.834616, 26.191362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652395, -0.509715, -0.560866,
		-0.757849, -0.445363, -0.476778,
		-0.006769, 0.736099, -0.676840,
		43.790707, 32.055447, 25.988310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785309, 31.246851, 25.881409>,  <43.795444, 31.540176, 26.462099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785309, 31.246851, 25.881409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880276, 31.618721, 25.768740>,  <43.937256, 31.841843, 25.701138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880276, 31.618721, 25.768740>,  <43.785309, 31.246851, 25.881409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880276, 31.618721, 25.768740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672002, -0.366567, -0.643461,
		-0.701461, -0.036518, -0.711772,
		0.237414, 0.929675, -0.281672,
		43.951500, 31.897623, 25.684238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733467, 31.226627, 25.207493>,  <43.785309, 31.246851, 25.881409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733467, 31.226627, 25.207493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940907, 31.564060, 25.263243>,  <44.065369, 31.766520, 25.296692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940907, 31.564060, 25.263243>,  <43.733467, 31.226627, 25.207493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940907, 31.564060, 25.263243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715563, -0.338984, -0.610786,
		-0.468004, 0.416481, -0.779433,
		0.518597, 0.843583, 0.139373,
		44.096485, 31.817135, 25.305054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780296, 31.588507, 24.540539>,  <43.733467, 31.226627, 25.207493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780296, 31.588507, 24.540539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089962, 31.715662, 24.759487>,  <44.275761, 31.791956, 24.890856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089962, 31.715662, 24.759487>,  <43.780296, 31.588507, 24.540539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089962, 31.715662, 24.759487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626785, -0.264245, -0.733018,
		-0.088379, 0.910561, -0.403817,
		0.774164, 0.317890, 0.547371,
		44.322212, 31.811029, 24.923698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241623, 31.853645, 24.121637>,  <43.780296, 31.588507, 24.540539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241623, 31.853645, 24.121637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491726, 31.803579, 24.429762>,  <44.641788, 31.773539, 24.614637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491726, 31.803579, 24.429762>,  <44.241623, 31.853645, 24.121637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491726, 31.803579, 24.429762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717005, -0.297603, -0.630347,
		0.308146, 0.946449, -0.096334,
		0.625260, -0.125167, 0.770314,
		44.679302, 31.766029, 24.660856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877914, 32.100155, 23.818689>,  <44.241623, 31.853645, 24.121637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877914, 32.100155, 23.818689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967766, 31.873642, 24.135893>,  <45.021679, 31.737734, 24.326214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967766, 31.873642, 24.135893>,  <44.877914, 32.100155, 23.818689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967766, 31.873642, 24.135893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795457, -0.363490, -0.484895,
		0.562840, 0.739726, 0.368805,
		0.224633, -0.566286, 0.793007,
		45.035156, 31.703756, 24.373795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577908, 32.167736, 23.974445>,  <44.877914, 32.100155, 23.818689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577908, 32.167736, 23.974445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499619, 31.811857, 24.139437>,  <45.452644, 31.598331, 24.238432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499619, 31.811857, 24.139437>,  <45.577908, 32.167736, 23.974445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499619, 31.811857, 24.139437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878344, -0.346097, -0.329741,
		0.436126, 0.297760, 0.849196,
		-0.195721, -0.889694, 0.412477,
		45.440903, 31.544949, 24.263180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197308, 31.947332, 23.931572>,  <45.577908, 32.167736, 23.974445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197308, 31.947332, 23.931572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009285, 31.620018, 24.063908>,  <45.896469, 31.423630, 24.143309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009285, 31.620018, 24.063908>,  <46.197308, 31.947332, 23.931572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009285, 31.620018, 24.063908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791257, -0.556760, -0.252843,
		0.391097, 0.142930, 0.909183,
		-0.470059, -0.818284, 0.330841,
		45.868267, 31.374533, 24.163160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.654644, 31.587763, 24.441191>,  <46.197308, 31.947332, 23.931572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.654644, 31.587763, 24.441191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400471, 31.350914, 24.242950>,  <46.247967, 31.208805, 24.124006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400471, 31.350914, 24.242950>,  <46.654644, 31.587763, 24.441191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400471, 31.350914, 24.242950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760338, -0.591689, -0.267937,
		-0.134591, -0.547080, 0.826189,
		-0.635430, -0.592121, -0.495602,
		46.209843, 31.173277, 24.094269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799896, 30.879099, 24.575701>,  <46.654644, 31.587763, 24.441191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799896, 30.879099, 24.575701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592514, 30.846491, 24.235216>,  <46.468086, 30.826925, 24.030926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592514, 30.846491, 24.235216>,  <46.799896, 30.879099, 24.575701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592514, 30.846491, 24.235216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702591, -0.608018, -0.369703,
		-0.487413, -0.789727, 0.372505,
		-0.518454, -0.081521, -0.851211,
		46.436977, 30.822035, 23.979853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818439, 30.113510, 24.482296>,  <46.799896, 30.879099, 24.575701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818439, 30.113510, 24.482296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684391, 30.278843, 24.143627>,  <46.603962, 30.378042, 23.940426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684391, 30.278843, 24.143627>,  <46.818439, 30.113510, 24.482296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684391, 30.278843, 24.143627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611392, -0.588334, -0.529210,
		-0.716865, -0.694996, -0.055545,
		-0.335120, 0.413332, -0.846671,
		46.583855, 30.402842, 23.889626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701706, 29.576262, 24.015844>,  <46.818439, 30.113510, 24.482296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701706, 29.576262, 24.015844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780453, 29.903992, 23.800455>,  <46.827702, 30.100630, 23.671221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780453, 29.903992, 23.800455>,  <46.701706, 29.576262, 24.015844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.780453, 29.903992, 23.800455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552769, -0.546361, -0.629234,
		-0.809747, -0.173777, -0.560457,
		0.196865, 0.819324, -0.538472,
		46.839512, 30.149790, 23.638914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.080326, 29.065914, 23.599323>,  <46.701706, 29.576262, 24.015844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.080326, 29.065914, 23.599323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167175, 28.728115, 23.795153>,  <47.219284, 28.525436, 23.912651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167175, 28.728115, 23.795153>,  <47.080326, 29.065914, 23.599323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.167175, 28.728115, 23.795153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867368, 0.063170, 0.493641,
		-0.447804, -0.531823, -0.718773,
		0.217125, -0.844496, 0.489575,
		47.232311, 28.474766, 23.942024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441299, 28.657377, 23.636065>,  <47.080326, 29.065914, 23.599323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441299, 28.657377, 23.636065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667244, 28.488817, 23.919853>,  <46.802811, 28.387682, 24.090126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667244, 28.488817, 23.919853>,  <46.441299, 28.657377, 23.636065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.667244, 28.488817, 23.919853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800689, -0.071976, 0.594740,
		-0.199560, -0.904013, -0.378069,
		0.564865, -0.421402, 0.709470,
		46.836704, 28.362398, 24.132694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047222, 28.240915, 23.931419>,  <46.441299, 28.657377, 23.636065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047222, 28.240915, 23.931419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325470, 28.303461, 24.211895>,  <46.492416, 28.340988, 24.380180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325470, 28.303461, 24.211895>,  <46.047222, 28.240915, 23.931419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325470, 28.303461, 24.211895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713759, 0.039508, 0.699276,
		0.081645, -0.986908, 0.139095,
		0.695616, 0.156373, 0.701189,
		46.534157, 28.350370, 24.422253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827255, 27.805124, 24.501047>,  <46.047222, 28.240915, 23.931419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827255, 27.805124, 24.501047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079666, 28.078255, 24.648321>,  <46.231113, 28.242132, 24.736685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079666, 28.078255, 24.648321>,  <45.827255, 27.805124, 24.501047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079666, 28.078255, 24.648321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643318, 0.195361, 0.740254,
		0.433536, -0.703976, 0.562551,
		0.631022, 0.682826, 0.368184,
		46.268974, 28.283102, 24.758776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072376, 27.659691, 25.188366>,  <45.827255, 27.805124, 24.501047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072376, 27.659691, 25.188366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092880, 28.054613, 25.128235>,  <46.105183, 28.291567, 25.092157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092880, 28.054613, 25.128235>,  <46.072376, 27.659691, 25.188366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092880, 28.054613, 25.128235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646459, 0.147536, 0.748548,
		0.761225, 0.058809, 0.645816,
		0.051259, 0.987307, -0.150325,
		46.108257, 28.350805, 25.083138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105640, 27.881943, 25.875772>,  <46.072376, 27.659691, 25.188366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105640, 27.881943, 25.875772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012318, 28.198908, 25.650331>,  <45.956322, 28.389088, 25.515066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012318, 28.198908, 25.650331>,  <46.105640, 27.881943, 25.875772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012318, 28.198908, 25.650331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599840, 0.338905, 0.724801,
		0.765349, 0.507174, 0.396251,
		-0.233309, 0.792413, -0.563604,
		45.942326, 28.436632, 25.481251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.155262, 28.436401, 26.368931>,  <46.105640, 27.881943, 25.875772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.155262, 28.436401, 26.368931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952202, 28.569689, 26.051125>,  <45.830368, 28.649662, 25.860439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952202, 28.569689, 26.051125>,  <46.155262, 28.436401, 26.368931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952202, 28.569689, 26.051125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741249, 0.301116, 0.599899,
		0.439139, 0.893473, 0.094137,
		-0.507648, 0.333219, -0.794518,
		45.799908, 28.669655, 25.812769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022957, 29.172760, 26.471325>,  <46.155262, 28.436401, 26.368931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022957, 29.172760, 26.471325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747425, 29.049513, 26.208851>,  <45.582108, 28.975565, 26.051367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747425, 29.049513, 26.208851>,  <46.022957, 29.172760, 26.471325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747425, 29.049513, 26.208851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708128, 0.479717, 0.518099,
		0.155149, 0.821545, -0.548628,
		-0.688828, -0.308116, -0.656186,
		45.540775, 28.957079, 26.011995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586758, 29.701864, 26.618916>,  <46.022957, 29.172760, 26.471325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586758, 29.701864, 26.618916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356087, 29.480963, 26.378099>,  <45.217682, 29.348421, 26.233610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356087, 29.480963, 26.378099>,  <45.586758, 29.701864, 26.618916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356087, 29.480963, 26.378099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816864, 0.401543, 0.414120,
		0.013044, 0.730600, -0.682681,
		-0.576682, -0.552256, -0.602039,
		45.183083, 29.315287, 26.197487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218189, 30.087193, 26.280781>,  <45.586758, 29.701864, 26.618916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218189, 30.087193, 26.280781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023216, 29.738707, 26.257479>,  <44.906235, 29.529615, 26.243498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023216, 29.738707, 26.257479>,  <45.218189, 30.087193, 26.280781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023216, 29.738707, 26.257479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807421, 0.424330, 0.409898,
		-0.332390, 0.246833, -0.910269,
		-0.487430, -0.871216, -0.058256,
		44.876987, 29.477343, 26.240002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641010, 30.232832, 25.986282>,  <45.218189, 30.087193, 26.280781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641010, 30.232832, 25.986282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552540, 29.891699, 26.175493>,  <44.499458, 29.687019, 26.289021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552540, 29.891699, 26.175493>,  <44.641010, 30.232832, 25.986282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552540, 29.891699, 26.175493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822999, 0.423447, 0.378636,
		-0.523216, -0.305558, -0.795537,
		-0.221173, -0.852834, 0.473028,
		44.486187, 29.635849, 26.317402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886944, 30.197792, 25.843170>,  <44.641010, 30.232832, 25.986282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886944, 30.197792, 25.843170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004665, 29.974161, 26.153219>,  <44.075298, 29.839983, 26.339249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004665, 29.974161, 26.153219>,  <43.886944, 30.197792, 25.843170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004665, 29.974161, 26.153219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849317, 0.218897, 0.480358,
		-0.438230, -0.799697, -0.410414,
		0.294303, -0.559079, 0.775124,
		44.092957, 29.806437, 26.385756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424595, 29.609276, 26.004330>,  <43.886944, 30.197792, 25.843170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424595, 29.609276, 26.004330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609737, 29.687407, 26.350187>,  <43.720821, 29.734285, 26.557703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609737, 29.687407, 26.350187>,  <43.424595, 29.609276, 26.004330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609737, 29.687407, 26.350187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883242, 0.018933, 0.468535,
		0.075157, -0.980552, 0.181301,
		0.462855, 0.195346, 0.864642,
		43.748596, 29.746004, 26.609581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067924, 29.242435, 26.529442>,  <43.424595, 29.609276, 26.004330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067924, 29.242435, 26.529442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284264, 29.513449, 26.728813>,  <43.414066, 29.676056, 26.848436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284264, 29.513449, 26.728813>,  <43.067924, 29.242435, 26.529442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284264, 29.513449, 26.728813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747614, 0.115691, 0.653979,
		0.385428, -0.726337, 0.569105,
		0.540849, 0.677533, 0.498429,
		43.446518, 29.716709, 26.878342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045128, 29.165592, 27.254246>,  <43.067924, 29.242435, 26.529442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045128, 29.165592, 27.254246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188938, 29.538557, 27.239536>,  <43.275223, 29.762335, 27.230711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188938, 29.538557, 27.239536>,  <43.045128, 29.165592, 27.254246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188938, 29.538557, 27.239536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664349, 0.283440, 0.691594,
		0.655273, -0.224214, 0.721350,
		0.359525, 0.932411, -0.036775,
		43.296795, 29.818281, 27.228504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144257, 29.361809, 27.983381>,  <43.045128, 29.165592, 27.254246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144257, 29.361809, 27.983381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100266, 29.682562, 27.748472>,  <43.073872, 29.875013, 27.607527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100266, 29.682562, 27.748472>,  <43.144257, 29.361809, 27.983381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100266, 29.682562, 27.748472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700081, 0.356923, 0.618459,
		0.705543, 0.479158, 0.522128,
		-0.109980, 0.801881, -0.587274,
		43.067272, 29.923126, 27.572290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302135, 30.029524, 28.402391>,  <43.144257, 29.361809, 27.983381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302135, 30.029524, 28.402391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091110, 30.182196, 28.098812>,  <42.964497, 30.273798, 27.916664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091110, 30.182196, 28.098812>,  <43.302135, 30.029524, 28.402391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091110, 30.182196, 28.098812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593388, 0.473756, 0.650728,
		0.607925, 0.793648, -0.023451,
		-0.527559, 0.381678, -0.758949,
		42.932842, 30.296700, 27.871128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222992, 30.720407, 28.567204>,  <43.302135, 30.029524, 28.402391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222992, 30.720407, 28.567204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920849, 30.639784, 28.317787>,  <42.739563, 30.591410, 28.168137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920849, 30.639784, 28.317787>,  <43.222992, 30.720407, 28.567204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920849, 30.639784, 28.317787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654434, 0.281236, 0.701871,
		0.033893, 0.938232, -0.344342,
		-0.755359, -0.201561, -0.623543,
		42.694241, 30.579315, 28.130724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727062, 31.298809, 28.590471>,  <43.222992, 30.720407, 28.567204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727062, 31.298809, 28.590471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497482, 31.030437, 28.402666>,  <42.359734, 30.869415, 28.289984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497482, 31.030437, 28.402666>,  <42.727062, 31.298809, 28.590471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497482, 31.030437, 28.402666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795490, 0.320708, 0.514142,
		-0.194375, 0.668582, -0.717785,
		-0.573945, -0.670928, -0.469513,
		42.325298, 30.829159, 28.261812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142799, 31.589720, 28.279371>,  <42.727062, 31.298809, 28.590471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142799, 31.589720, 28.279371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046406, 31.211679, 28.367655>,  <41.988567, 30.984856, 28.420626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046406, 31.211679, 28.367655>,  <42.142799, 31.589720, 28.279371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046406, 31.211679, 28.367655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676825, 0.326642, 0.659707,
		-0.695581, 0.009601, -0.718384,
		-0.240988, -0.945099, 0.220708,
		41.974110, 30.928150, 28.433867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489746, 31.662464, 28.323114>,  <42.142799, 31.589720, 28.279371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489746, 31.662464, 28.323114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561848, 31.317127, 28.511644>,  <41.605110, 31.109926, 28.624763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561848, 31.317127, 28.511644>,  <41.489746, 31.662464, 28.323114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561848, 31.317127, 28.511644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706055, 0.220050, 0.673100,
		-0.684831, -0.454114, -0.569901,
		0.180258, -0.863342, 0.471327,
		41.615925, 31.058125, 28.653042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894203, 31.529671, 28.601126>,  <41.489746, 31.662464, 28.323114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894203, 31.529671, 28.601126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125557, 31.262608, 28.788614>,  <41.264370, 31.102369, 28.901108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125557, 31.262608, 28.788614>,  <40.894203, 31.529671, 28.601126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125557, 31.262608, 28.788614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568502, 0.082177, 0.818567,
		-0.585040, -0.739920, -0.332034,
		0.578388, -0.667657, 0.468723,
		41.299072, 31.062311, 28.929232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441765, 31.236666, 28.996540>,  <40.894203, 31.529671, 28.601126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441765, 31.236666, 28.996540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786766, 31.140512, 29.174662>,  <40.993767, 31.082821, 29.281534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786766, 31.140512, 29.174662>,  <40.441765, 31.236666, 28.996540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786766, 31.140512, 29.174662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435487, 0.095612, 0.895103,
		-0.257746, -0.965957, -0.022218,
		0.862507, -0.240384, 0.445306,
		41.045517, 31.068398, 29.308254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329498, 30.653648, 29.498987>,  <40.441765, 31.236666, 28.996540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329498, 30.653648, 29.498987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670929, 30.820543, 29.623774>,  <40.875786, 30.920681, 29.698645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670929, 30.820543, 29.623774>,  <40.329498, 30.653648, 29.498987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670929, 30.820543, 29.623774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366100, 0.054367, 0.928986,
		0.370649, -0.907169, 0.199157,
		0.853575, 0.417239, 0.311964,
		40.927002, 30.945715, 29.717363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472279, 30.240694, 30.147402>,  <40.329498, 30.653648, 29.498987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472279, 30.240694, 30.147402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690170, 30.575363, 30.170179>,  <40.820908, 30.776165, 30.183846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690170, 30.575363, 30.170179>,  <40.472279, 30.240694, 30.147402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690170, 30.575363, 30.170179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183546, 0.052693, 0.981598,
		0.818277, -0.545161, 0.182272,
		0.544733, 0.836674, 0.056944,
		40.853592, 30.826365, 30.187263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032616, 30.135517, 30.570686>,  <40.472279, 30.240694, 30.147402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032616, 30.135517, 30.570686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956997, 30.528294, 30.567894>,  <40.911625, 30.763960, 30.566219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956997, 30.528294, 30.567894>,  <41.032616, 30.135517, 30.570686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956997, 30.528294, 30.567894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216015, -0.034651, 0.975775,
		0.957914, 0.185973, 0.218665,
		-0.189045, 0.981944, -0.006981,
		40.900284, 30.822876, 30.565800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451115, 30.506126, 31.200871>,  <41.032616, 30.135517, 30.570686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451115, 30.506126, 31.200871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154266, 30.762756, 31.123260>,  <40.976158, 30.916735, 31.076694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154266, 30.762756, 31.123260>,  <41.451115, 30.506126, 31.200871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154266, 30.762756, 31.123260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216228, 0.044839, 0.975313,
		0.634436, 0.765749, 0.105451,
		-0.742116, 0.641575, -0.194023,
		40.931633, 30.955229, 31.065054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396526, 30.903984, 31.833193>,  <41.451115, 30.506126, 31.200871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396526, 30.903984, 31.833193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080978, 31.038849, 31.627668>,  <40.891647, 31.119768, 31.504353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080978, 31.038849, 31.627668>,  <41.396526, 30.903984, 31.833193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080978, 31.038849, 31.627668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433013, 0.288340, 0.854025,
		0.436097, 0.896205, -0.081469,
		-0.788872, 0.337160, -0.513813,
		40.844318, 31.139997, 31.473524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340927, 31.620094, 31.948843>,  <41.396526, 30.903984, 31.833193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340927, 31.620094, 31.948843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991611, 31.440702, 31.872711>,  <40.782021, 31.333067, 31.827032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991611, 31.440702, 31.872711>,  <41.340927, 31.620094, 31.948843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991611, 31.440702, 31.872711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361313, 0.334111, 0.870530,
		-0.326825, 0.828996, -0.453818,
		-0.873292, -0.448481, -0.190331,
		40.729626, 31.306158, 31.815611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850544, 32.062630, 32.254528>,  <41.340927, 31.620094, 31.948843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850544, 32.062630, 32.254528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650608, 31.721478, 32.194202>,  <40.530647, 31.516785, 32.158005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650608, 31.721478, 32.194202>,  <40.850544, 32.062630, 32.254528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650608, 31.721478, 32.194202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485069, 0.131399, 0.864547,
		-0.717542, 0.505294, -0.479387,
		-0.499842, -0.852885, -0.150818,
		40.500656, 31.465612, 32.148956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165451, 32.209187, 32.613110>,  <40.850544, 32.062630, 32.254528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165451, 32.209187, 32.613110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188377, 31.813160, 32.561768>,  <40.202133, 31.575542, 32.530964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188377, 31.813160, 32.561768>,  <40.165451, 32.209187, 32.613110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188377, 31.813160, 32.561768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667267, -0.133620, 0.732735,
		-0.742610, 0.043653, -0.668300,
		0.057313, -0.990070, -0.128356,
		40.205570, 31.516138, 32.523262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480576, 31.964237, 32.542267>,  <40.165451, 32.209187, 32.613110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480576, 31.964237, 32.542267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697124, 31.650410, 32.663174>,  <39.827053, 31.462112, 32.735718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697124, 31.650410, 32.663174>,  <39.480576, 31.964237, 32.542267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697124, 31.650410, 32.663174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614224, -0.123551, 0.779400,
		-0.574148, -0.607605, -0.548789,
		0.541371, -0.784571, 0.302270,
		39.859535, 31.415039, 32.753853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025593, 31.540880, 32.742188>,  <39.480576, 31.964237, 32.542267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025593, 31.540880, 32.742188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331223, 31.367325, 32.933155>,  <39.514603, 31.263191, 33.047733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331223, 31.367325, 32.933155>,  <39.025593, 31.540880, 32.742188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331223, 31.367325, 32.933155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622879, -0.303511, 0.721043,
		-0.167951, -0.848306, -0.502165,
		0.764078, -0.433888, 0.477417,
		39.560448, 31.237158, 33.076382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854851, 30.854324, 32.841446>,  <39.025593, 31.540880, 32.742188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854851, 30.854324, 32.841446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146984, 30.878847, 33.113583>,  <39.322262, 30.893560, 33.276863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146984, 30.878847, 33.113583>,  <38.854851, 30.854324, 32.841446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146984, 30.878847, 33.113583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574987, -0.482533, 0.660721,
		0.368794, -0.873730, -0.317156,
		0.730329, 0.061309, 0.680338,
		39.366081, 30.897240, 33.317684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834759, 30.168461, 33.275105>,  <38.854851, 30.854324, 32.841446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834759, 30.168461, 33.275105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049377, 30.436768, 33.479923>,  <39.178150, 30.597752, 33.602814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049377, 30.436768, 33.479923>,  <38.834759, 30.168461, 33.275105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049377, 30.436768, 33.479923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526359, -0.208262, 0.824362,
		0.659593, -0.711829, 0.241321,
		0.536547, 0.670765, 0.512046,
		39.210342, 30.637997, 33.633537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960011, 29.817249, 33.945126>,  <38.834759, 30.168461, 33.275105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960011, 29.817249, 33.945126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033108, 30.205265, 34.009163>,  <39.076965, 30.438074, 34.047585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033108, 30.205265, 34.009163>,  <38.960011, 29.817249, 33.945126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033108, 30.205265, 34.009163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613912, -0.014603, 0.789240,
		0.767931, -0.242513, 0.592849,
		0.182743, 0.970039, 0.160096,
		39.087933, 30.496277, 34.057190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085739, 29.834869, 34.718304>,  <38.960011, 29.817249, 33.945126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085739, 29.834869, 34.718304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962536, 30.197580, 34.603149>,  <38.888615, 30.415207, 34.534058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962536, 30.197580, 34.603149>,  <39.085739, 29.834869, 34.718304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962536, 30.197580, 34.603149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588784, 0.056009, 0.806348,
		0.747304, 0.417868, 0.516646,
		-0.308010, 0.906780, -0.287890,
		38.870132, 30.469614, 34.516781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064922, 30.223139, 35.283779>,  <39.085739, 29.834869, 34.718304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064922, 30.223139, 35.283779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828327, 30.427378, 35.034161>,  <38.686371, 30.549921, 34.884388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828327, 30.427378, 35.034161>,  <39.064922, 30.223139, 35.283779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828327, 30.427378, 35.034161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704970, 0.048176, 0.707599,
		0.391363, 0.858469, 0.331462,
		-0.591483, 0.510599, -0.624049,
		38.650883, 30.580557, 34.846947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841816, 30.819094, 35.705570>,  <39.064922, 30.223139, 35.283779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841816, 30.819094, 35.705570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594532, 30.745949, 35.399792>,  <38.446159, 30.702063, 35.216324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594532, 30.745949, 35.399792>,  <38.841816, 30.819094, 35.705570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594532, 30.745949, 35.399792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784486, 0.083003, 0.614566,
		-0.048929, 0.979629, -0.194767,
		-0.618213, -0.182862, -0.764444,
		38.409069, 30.691090, 35.170460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291084, 31.328491, 35.722496>,  <38.841816, 30.819094, 35.705570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291084, 31.328491, 35.722496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128746, 31.051075, 35.484409>,  <38.031342, 30.884624, 35.341557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128746, 31.051075, 35.484409>,  <38.291084, 31.328491, 35.722496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128746, 31.051075, 35.484409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867014, 0.086165, 0.490777,
		-0.289087, 0.715245, -0.636281,
		-0.405850, -0.693542, -0.595218,
		38.006992, 30.843012, 35.305843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590778, 31.518848, 35.644802>,  <38.291084, 31.328491, 35.722496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590778, 31.518848, 35.644802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603775, 31.128544, 35.558239>,  <37.611572, 30.894361, 35.506302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603775, 31.128544, 35.558239>,  <37.590778, 31.518848, 35.644802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603775, 31.128544, 35.558239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842546, -0.143215, 0.519237,
		-0.537644, 0.165464, -0.826777,
		0.032492, -0.975762, -0.216409,
		37.613522, 30.835815, 35.493317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328300, 31.510092, 36.235775>,  <37.590778, 31.518848, 35.644802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328300, 31.510092, 36.235775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537518, 31.211708, 36.400688>,  <37.663048, 31.032679, 36.499638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537518, 31.211708, 36.400688>,  <37.328300, 31.510092, 36.235775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537518, 31.211708, 36.400688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752014, 0.631566, 0.188679,
		-0.401132, 0.211358, 0.891303,
		0.523038, -0.745957, 0.412285,
		37.694427, 30.987921, 36.524372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668663, 31.819979, 36.896061>,  <37.328300, 31.510092, 36.235775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668663, 31.819979, 36.896061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880608, 31.523186, 36.731762>,  <38.007774, 31.345110, 36.633183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880608, 31.523186, 36.731762>,  <37.668663, 31.819979, 36.896061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880608, 31.523186, 36.731762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847352, 0.483313, 0.220009,
		0.035277, -0.464620, 0.884807,
		0.529859, -0.741982, -0.410746,
		38.039566, 31.300591, 36.608540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229927, 31.421757, 37.345253>,  <37.668663, 31.819979, 36.896061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229927, 31.421757, 37.345253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320744, 31.456934, 36.957291>,  <38.375233, 31.478041, 36.724514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320744, 31.456934, 36.957291>,  <38.229927, 31.421757, 37.345253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320744, 31.456934, 36.957291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838737, 0.488485, 0.240632,
		0.494946, -0.868129, 0.037145,
		0.227045, 0.087945, -0.969905,
		38.388859, 31.483316, 36.666321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391853, 32.132126, 37.500004>,  <38.229927, 31.421757, 37.345253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391853, 32.132126, 37.500004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481487, 32.273540, 37.136730>,  <38.535267, 32.358391, 36.918766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481487, 32.273540, 37.136730>,  <38.391853, 32.132126, 37.500004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481487, 32.273540, 37.136730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648201, -0.749941, -0.132001,
		-0.727750, -0.559105, -0.397217,
		0.224087, 0.353540, -0.908182,
		38.548714, 32.379601, 36.864277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033890, 31.930738, 37.169701>,  <38.391853, 32.132126, 37.500004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033890, 31.930738, 37.169701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245628, 32.198048, 37.378777>,  <39.372673, 32.358433, 37.504223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245628, 32.198048, 37.378777>,  <39.033890, 31.930738, 37.169701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245628, 32.198048, 37.378777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624877, -0.109614, 0.772990,
		0.573861, -0.735797, 0.359563,
		0.529351, 0.668272, 0.522686,
		39.404434, 32.398529, 37.535583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119335, 31.638208, 37.823025>,  <39.033890, 31.930738, 37.169701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119335, 31.638208, 37.823025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182037, 32.028851, 37.881912>,  <39.219658, 32.263237, 37.917244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182037, 32.028851, 37.881912>,  <39.119335, 31.638208, 37.823025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182037, 32.028851, 37.881912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442816, -0.063737, 0.894344,
		0.882803, -0.205385, 0.422464,
		0.156759, 0.976604, 0.147215,
		39.229065, 32.321831, 37.926075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533321, 31.756313, 38.480198>,  <39.119335, 31.638208, 37.823025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533321, 31.756313, 38.480198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288067, 32.059044, 38.389614>,  <39.140915, 32.240681, 38.335266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288067, 32.059044, 38.389614>,  <39.533321, 31.756313, 38.480198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288067, 32.059044, 38.389614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384828, -0.035795, 0.922294,
		0.689909, 0.652636, 0.313195,
		-0.613133, 0.756825, -0.226457,
		39.104126, 32.286091, 38.321678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598248, 32.417957, 38.977276>,  <39.533321, 31.756313, 38.480198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598248, 32.417957, 38.977276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230957, 32.377403, 38.824127>,  <39.010582, 32.353069, 38.732239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230957, 32.377403, 38.824127>,  <39.598248, 32.417957, 38.977276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230957, 32.377403, 38.824127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365318, -0.156650, 0.917608,
		-0.153009, 0.982437, 0.106801,
		-0.918222, -0.101386, -0.382871,
		38.955490, 32.346989, 38.709267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135120, 32.889896, 39.323017>,  <39.598248, 32.417957, 38.977276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135120, 32.889896, 39.323017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914845, 32.582523, 39.192627>,  <38.782681, 32.398102, 39.114391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914845, 32.582523, 39.192627>,  <39.135120, 32.889896, 39.323017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914845, 32.582523, 39.192627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340489, -0.149765, 0.928244,
		-0.762111, 0.622162, -0.179169,
		-0.550686, -0.768430, -0.325976,
		38.749638, 32.351994, 39.094833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459312, 33.004395, 39.549816>,  <39.135120, 32.889896, 39.323017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459312, 33.004395, 39.549816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486294, 32.611759, 39.478333>,  <38.502483, 32.376179, 39.435444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486294, 32.611759, 39.478333>,  <38.459312, 33.004395, 39.549816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486294, 32.611759, 39.478333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465865, -0.189375, 0.864354,
		-0.882281, 0.024953, -0.470061,
		0.067449, -0.981588, -0.178707,
		38.506527, 32.317284, 39.424721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779297, 32.639145, 39.464661>,  <38.459312, 33.004395, 39.549816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779297, 32.639145, 39.464661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056747, 32.383835, 39.598217>,  <38.223217, 32.230648, 39.678352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056747, 32.383835, 39.598217>,  <37.779297, 32.639145, 39.464661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056747, 32.383835, 39.598217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581204, -0.222074, 0.782869,
		-0.425540, -0.737078, -0.525007,
		0.693626, -0.638278, 0.333892,
		38.264835, 32.192352, 39.698383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526703, 32.060177, 39.149338>,  <37.779297, 32.639145, 39.464661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526703, 32.060177, 39.149338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728912, 32.031864, 39.493301>,  <37.850239, 32.014877, 39.699680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728912, 32.031864, 39.493301>,  <37.526703, 32.060177, 39.149338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728912, 32.031864, 39.493301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820673, -0.347107, 0.453885,
		0.266353, -0.935150, -0.233559,
		0.505521, -0.070782, 0.859906,
		37.880569, 32.010628, 39.751274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073090, 31.937389, 39.560829>,  <37.526703, 32.060177, 39.149338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073090, 31.937389, 39.560829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374004, 31.853924, 39.810799>,  <37.554554, 31.803844, 39.960781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374004, 31.853924, 39.810799>,  <37.073090, 31.937389, 39.560829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374004, 31.853924, 39.810799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655607, -0.330937, 0.678719,
		0.065185, -0.920293, -0.385761,
		0.752283, -0.208666, 0.624923,
		37.599689, 31.791325, 39.998276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908863, 31.307871, 39.970173>,  <37.073090, 31.937389, 39.560829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908863, 31.307871, 39.970173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209396, 31.451427, 40.191692>,  <37.389717, 31.537561, 40.324604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209396, 31.451427, 40.191692>,  <36.908863, 31.307871, 39.970173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209396, 31.451427, 40.191692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523117, -0.187674, 0.831341,
		0.402296, -0.914316, 0.046737,
		0.751337, 0.358894, 0.553795,
		37.434799, 31.559095, 40.357830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145081, 30.753469, 40.377426>,  <36.908863, 31.307871, 39.970173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145081, 30.753469, 40.377426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254177, 31.095221, 40.554356>,  <37.319637, 31.300270, 40.660515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254177, 31.095221, 40.554356>,  <37.145081, 30.753469, 40.377426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254177, 31.095221, 40.554356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681142, -0.153214, 0.715940,
		0.679453, -0.496555, 0.540164,
		0.272743, 0.854376, 0.442326,
		37.335999, 31.351534, 40.687054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221352, 30.638865, 41.156910>,  <37.145081, 30.753469, 40.377426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221352, 30.638865, 41.156910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150986, 31.025751, 41.083641>,  <37.108765, 31.257883, 41.039680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150986, 31.025751, 41.083641>,  <37.221352, 30.638865, 41.156910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150986, 31.025751, 41.083641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799568, -0.031849, 0.599730,
		0.574234, 0.251957, 0.778956,
		-0.175915, 0.967214, -0.183168,
		37.098209, 31.315916, 41.028690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135941, 30.958483, 41.850269>,  <37.221352, 30.638865, 41.156910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135941, 30.958483, 41.850269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960758, 31.224699, 41.608524>,  <36.855648, 31.384430, 41.463478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960758, 31.224699, 41.608524>,  <37.135941, 30.958483, 41.850269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960758, 31.224699, 41.608524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744558, 0.108225, 0.658727,
		0.503817, 0.738472, 0.448138,
		-0.437952, 0.665542, -0.604361,
		36.829372, 31.424362, 41.427216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076153, 31.680719, 42.164501>,  <37.135941, 30.958483, 41.850269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076153, 31.680719, 42.164501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803040, 31.630159, 41.876659>,  <36.639172, 31.599823, 41.703953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803040, 31.630159, 41.876659>,  <37.076153, 31.680719, 42.164501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803040, 31.630159, 41.876659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721356, 0.272993, 0.636491,
		0.115996, 0.953676, -0.277573,
		-0.682781, -0.126399, -0.719606,
		36.598206, 31.592239, 41.660778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583572, 32.194717, 42.263771>,  <37.076153, 31.680719, 42.164501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583572, 32.194717, 42.263771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388367, 31.905693, 42.067917>,  <36.271244, 31.732277, 41.950405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388367, 31.905693, 42.067917>,  <36.583572, 32.194717, 42.263771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388367, 31.905693, 42.067917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844092, 0.247923, 0.475439,
		-0.222143, 0.645319, -0.730901,
		-0.488017, -0.722563, -0.489634,
		36.241962, 31.688925, 41.921028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960567, 32.400051, 42.054775>,  <36.583572, 32.194717, 42.263771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960567, 32.400051, 42.054775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908028, 32.007854, 42.113262>,  <35.876503, 31.772535, 42.148354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908028, 32.007854, 42.113262>,  <35.960567, 32.400051, 42.054775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908028, 32.007854, 42.113262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849845, 0.187310, 0.492625,
		-0.510404, -0.059557, -0.857870,
		-0.131348, -0.980494, 0.146217,
		35.868622, 31.713707, 42.157127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321987, 32.115906, 41.752491>,  <35.960567, 32.400051, 42.054775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321987, 32.115906, 41.752491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432156, 31.934883, 42.091747>,  <35.498257, 31.826269, 42.295300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432156, 31.934883, 42.091747>,  <35.321987, 32.115906, 41.752491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432156, 31.934883, 42.091747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884859, 0.225483, 0.407655,
		-0.375727, -0.862757, -0.338347,
		0.275416, -0.452556, 0.848138,
		35.514782, 31.799116, 42.346188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752174, 31.693708, 41.881378>,  <35.321987, 32.115906, 41.752491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752174, 31.693708, 41.881378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957020, 31.813753, 42.203289>,  <35.079926, 31.885780, 42.396435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957020, 31.813753, 42.203289>,  <34.752174, 31.693708, 41.881378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957020, 31.813753, 42.203289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845643, 0.340265, 0.411227,
		-0.150424, -0.891152, 0.428043,
		0.512114, 0.300113, 0.804780,
		35.110653, 31.903788, 42.444725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781517, 31.798475, 41.118252>,  <34.752174, 31.693708, 41.881378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781517, 31.798475, 41.118252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758736, 32.177063, 41.245346>,  <34.745068, 32.404217, 41.321602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758736, 32.177063, 41.245346>,  <34.781517, 31.798475, 41.118252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758736, 32.177063, 41.245346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419047, 0.266198, -0.868066,
		-0.906177, -0.182586, 0.381453,
		-0.056954, 0.946468, 0.317734,
		34.741650, 32.461002, 41.340668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683971, 30.985092, 41.120705>,  <34.781517, 31.798475, 41.118252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683971, 30.985092, 41.120705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729519, 30.962152, 41.517441>,  <34.756847, 30.948389, 41.755482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729519, 30.962152, 41.517441>,  <34.683971, 30.985092, 41.120705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729519, 30.962152, 41.517441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439903, -0.898044, -0.001421,
		0.890797, -0.436151, -0.127491,
		0.113872, -0.057350, 0.991839,
		34.763680, 30.944948, 41.814991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359936, 31.269997, 41.109650>,  <34.683971, 30.985092, 41.120705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359936, 31.269997, 41.109650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641815, 31.436152, 41.339729>,  <35.810944, 31.535845, 41.477776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641815, 31.436152, 41.339729>,  <35.359936, 31.269997, 41.109650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641815, 31.436152, 41.339729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510791, 0.265653, -0.817632,
		-0.492436, 0.869990, -0.024970,
		0.704698, 0.415386, 0.575200,
		35.853226, 31.560768, 41.512291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819584, 31.785667, 40.673599>,  <35.359936, 31.269997, 41.109650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819584, 31.785667, 40.673599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054008, 31.716105, 40.990150>,  <36.194664, 31.674368, 41.180080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054008, 31.716105, 40.990150>,  <35.819584, 31.785667, 40.673599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054008, 31.716105, 40.990150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810139, 0.108642, -0.576084,
		0.014207, 0.978751, 0.204559,
		0.586066, -0.173906, 0.791381,
		36.229828, 31.663933, 41.227566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370716, 32.284294, 40.575092>,  <35.819584, 31.785667, 40.673599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370716, 32.284294, 40.575092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486961, 32.004723, 40.836487>,  <36.556709, 31.836979, 40.993324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486961, 32.004723, 40.836487>,  <36.370716, 32.284294, 40.575092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486961, 32.004723, 40.836487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848469, -0.127474, -0.513665,
		0.442317, 0.703739, 0.555973,
		0.290614, -0.698929, 0.653485,
		36.574146, 31.795044, 41.032532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005371, 32.586895, 40.900146>,  <36.370716, 32.284294, 40.575092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005371, 32.586895, 40.900146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022270, 32.188465, 40.931244>,  <37.032410, 31.949406, 40.949902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022270, 32.188465, 40.931244>,  <37.005371, 32.586895, 40.900146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022270, 32.188465, 40.931244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825553, -0.009030, -0.564253,
		0.562742, 0.088021, 0.821933,
		0.042244, -0.996078, 0.077748,
		37.034943, 31.889643, 40.954567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733757, 32.463322, 41.161091>,  <37.005371, 32.586895, 40.900146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733757, 32.463322, 41.161091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625183, 32.095074, 41.048820>,  <37.560040, 31.874125, 40.981457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625183, 32.095074, 41.048820>,  <37.733757, 32.463322, 41.161091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625183, 32.095074, 41.048820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835486, -0.080611, -0.543568,
		0.477795, -0.382043, 0.791047,
		-0.271433, -0.920622, -0.280676,
		37.543755, 31.818888, 40.964619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333843, 32.108047, 41.157059>,  <37.733757, 32.463322, 41.161091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333843, 32.108047, 41.157059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083271, 31.919502, 40.908737>,  <37.932926, 31.806374, 40.759743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083271, 31.919502, 40.908737>,  <38.333843, 32.108047, 41.157059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083271, 31.919502, 40.908737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704497, -0.001545, -0.709706,
		0.333572, -0.881936, 0.333044,
		-0.626429, -0.471366, -0.620806,
		37.895344, 31.778093, 40.722496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688927, 31.634060, 40.805073>,  <38.333843, 32.108047, 41.157059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688927, 31.634060, 40.805073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371578, 31.670807, 40.564365>,  <38.181171, 31.692856, 40.419941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371578, 31.670807, 40.564365>,  <38.688927, 31.634060, 40.805073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371578, 31.670807, 40.564365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606450, 0.033553, -0.794413,
		-0.052793, -0.995205, -0.082335,
		-0.793367, 0.091871, -0.601771,
		38.133568, 31.698368, 40.383835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723236, 31.191751, 40.131645>,  <38.688927, 31.634060, 40.805073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723236, 31.191751, 40.131645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463818, 31.478350, 40.028870>,  <38.308167, 31.650309, 39.967205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463818, 31.478350, 40.028870>,  <38.723236, 31.191751, 40.131645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463818, 31.478350, 40.028870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352881, -0.016071, -0.935530,
		-0.674432, -0.697406, -0.242415,
		-0.648549, 0.716496, -0.256940,
		38.269253, 31.693298, 39.951786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798477, 31.183689, 39.362282>,  <38.723236, 31.191751, 40.131645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798477, 31.183689, 39.362282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543613, 31.482929, 39.436451>,  <38.390697, 31.662474, 39.480953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543613, 31.482929, 39.436451>,  <38.798477, 31.183689, 39.362282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543613, 31.482929, 39.436451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282735, 0.450675, -0.846731,
		-0.717003, -0.487074, -0.498664,
		-0.637156, 0.748098, 0.185422,
		38.352467, 31.707359, 39.492077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342525, 31.215954, 38.817345>,  <38.798477, 31.183689, 39.362282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342525, 31.215954, 38.817345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350872, 31.567257, 39.008438>,  <38.355881, 31.778040, 39.123093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350872, 31.567257, 39.008438>,  <38.342525, 31.215954, 38.817345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350872, 31.567257, 39.008438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092173, 0.474108, -0.875629,
		-0.995524, 0.062303, -0.071060,
		0.020864, 0.878259, 0.477729,
		38.357132, 31.830734, 39.151756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834312, 31.631992, 38.543171>,  <38.342525, 31.215954, 38.817345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834312, 31.631992, 38.543171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116512, 31.872051, 38.693954>,  <38.285831, 32.016087, 38.784424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116512, 31.872051, 38.693954>,  <37.834312, 31.631992, 38.543171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116512, 31.872051, 38.693954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062675, 0.476970, -0.876682,
		-0.705934, 0.642124, 0.298888,
		0.705499, 0.600147, 0.376955,
		38.328163, 32.052094, 38.807041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718983, 32.352901, 38.294163>,  <37.834312, 31.631992, 38.543171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718983, 32.352901, 38.294163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099777, 32.343708, 38.416271>,  <38.328255, 32.338192, 38.489536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099777, 32.343708, 38.416271>,  <37.718983, 32.352901, 38.294163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099777, 32.343708, 38.416271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288370, 0.402092, -0.869002,
		-0.102771, 0.915311, 0.389415,
		0.951988, -0.022987, 0.305272,
		38.385372, 32.336811, 38.507854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042351, 33.057728, 38.319355>,  <37.718983, 32.352901, 38.294163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042351, 33.057728, 38.319355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330708, 32.782890, 38.283096>,  <38.503723, 32.617989, 38.261341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330708, 32.782890, 38.283096>,  <38.042351, 33.057728, 38.319355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330708, 32.782890, 38.283096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425921, 0.542407, -0.724145,
		0.546724, 0.483421, 0.683664,
		0.720892, -0.687094, -0.090648,
		38.546974, 32.576763, 38.255901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573860, 33.480370, 38.085190>,  <38.042351, 33.057728, 38.319355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573860, 33.480370, 38.085190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729694, 33.118805, 38.155804>,  <38.823193, 32.901867, 38.198170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729694, 33.118805, 38.155804>,  <38.573860, 33.480370, 38.085190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729694, 33.118805, 38.155804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833927, 0.264862, -0.484164,
		0.390886, 0.335837, 0.856984,
		0.389583, -0.903915, 0.176532,
		38.846569, 32.847630, 38.208763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328682, 33.566799, 38.136570>,  <38.573860, 33.480370, 38.085190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328682, 33.566799, 38.136570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289307, 33.174381, 38.069801>,  <39.265682, 32.938931, 38.029739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289307, 33.174381, 38.069801>,  <39.328682, 33.566799, 38.136570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289307, 33.174381, 38.069801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850793, 0.004037, -0.525486,
		0.516199, -0.193744, 0.834267,
		-0.098442, -0.981044, -0.166920,
		39.259773, 32.880070, 38.019726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908386, 33.352726, 38.394039>,  <39.328682, 33.566799, 38.136570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908386, 33.352726, 38.394039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735752, 33.108807, 38.128143>,  <39.632172, 32.962456, 37.968605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735752, 33.108807, 38.128143>,  <39.908386, 33.352726, 38.394039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735752, 33.108807, 38.128143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875525, -0.105706, -0.471469,
		0.217236, -0.785473, 0.579518,
		-0.431584, -0.609802, -0.664738,
		39.606277, 32.925865, 37.928722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379658, 32.768238, 38.286873>,  <39.908386, 33.352726, 38.394039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379658, 32.768238, 38.286873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136738, 32.811733, 37.972073>,  <39.990986, 32.837830, 37.783192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136738, 32.811733, 37.972073>,  <40.379658, 32.768238, 38.286873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136738, 32.811733, 37.972073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733251, -0.304596, -0.607918,
		-0.305869, -0.946246, 0.105185,
		-0.607278, 0.108816, -0.787002,
		39.954548, 32.844353, 37.735973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312462, 32.030514, 38.044346>,  <40.379658, 32.768238, 38.286873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312462, 32.030514, 38.044346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315678, 32.359623, 37.817020>,  <40.317608, 32.557087, 37.680626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315678, 32.359623, 37.817020>,  <40.312462, 32.030514, 38.044346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315678, 32.359623, 37.817020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731157, -0.392546, -0.557959,
		-0.682163, -0.411043, -0.604730,
		0.008039, 0.822771, -0.568316,
		40.318089, 32.606453, 37.646526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148346, 31.991867, 37.322792>,  <40.312462, 32.030514, 38.044346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148346, 31.991867, 37.322792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430908, 32.263279, 37.403381>,  <40.600445, 32.426128, 37.451733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430908, 32.263279, 37.403381>,  <40.148346, 31.991867, 37.322792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430908, 32.263279, 37.403381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661771, -0.532153, -0.528083,
		-0.251108, 0.506367, -0.824947,
		0.706402, 0.678532, 0.201471,
		40.642830, 32.466839, 37.463821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683575, 31.502352, 37.321560>,  <40.148346, 31.991867, 37.322792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683575, 31.502352, 37.321560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291935, 31.507481, 37.402760>,  <40.056953, 31.510557, 37.451477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291935, 31.507481, 37.402760>,  <40.683575, 31.502352, 37.321560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291935, 31.507481, 37.402760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026584, -0.981385, 0.190199,
		0.201656, 0.191620, 0.960529,
		-0.979095, 0.012821, 0.202996,
		39.998207, 31.511328, 37.463657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152714, 31.097408, 36.917847>,  <40.683575, 31.502352, 37.321560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152714, 31.097408, 36.917847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515255, 30.974504, 36.801834>,  <41.732780, 30.900763, 36.732227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515255, 30.974504, 36.801834>,  <41.152714, 31.097408, 36.917847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515255, 30.974504, 36.801834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205280, -0.279746, 0.937871,
		-0.369305, -0.909579, -0.190474,
		0.906352, -0.307260, -0.290030,
		41.787159, 30.882326, 36.714825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442516, 30.389046, 36.976982>,  <41.152714, 31.097408, 36.917847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442516, 30.389046, 36.976982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774792, 30.606928, 37.023029>,  <41.974155, 30.737658, 37.050655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774792, 30.606928, 37.023029>,  <41.442516, 30.389046, 36.976982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774792, 30.606928, 37.023029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046733, -0.274259, 0.960520,
		0.554771, -0.792514, -0.253279,
		0.830690, 0.544705, 0.115114,
		42.023998, 30.770340, 37.057564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079872, 30.013865, 37.308491>,  <41.442516, 30.389046, 36.976982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079872, 30.013865, 37.308491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992714, 30.390207, 37.412270>,  <41.940418, 30.616013, 37.474537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992714, 30.390207, 37.412270>,  <42.079872, 30.013865, 37.308491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992714, 30.390207, 37.412270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175867, -0.299331, 0.937802,
		0.959996, 0.158717, 0.230689,
		-0.217897, 0.940856, 0.259443,
		41.927345, 30.672464, 37.490101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368565, 30.116428, 36.697762>,  <42.079872, 30.013865, 37.308491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368565, 30.116428, 36.697762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241009, 30.017097, 36.331886>,  <42.164474, 29.957499, 36.112362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241009, 30.017097, 36.331886>,  <42.368565, 30.116428, 36.697762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241009, 30.017097, 36.331886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941468, 0.028319, -0.335911,
		0.109318, -0.968263, 0.224761,
		-0.318885, -0.248326, -0.914684,
		42.145344, 29.942600, 36.057480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635605, 29.349918, 36.415939>,  <42.368565, 30.116428, 36.697762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635605, 29.349918, 36.415939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566174, 29.685955, 36.210369>,  <42.524513, 29.887577, 36.087029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566174, 29.685955, 36.210369>,  <42.635605, 29.349918, 36.415939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566174, 29.685955, 36.210369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976128, 0.215943, 0.023300,
		0.130552, -0.497610, -0.857520,
		-0.173581, 0.840091, -0.513923,
		42.514099, 29.937983, 36.056190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018349, 29.981100, 36.168736>,  <42.635605, 29.349918, 36.415939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018349, 29.981100, 36.168736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157295, 29.978710, 36.543819>,  <43.240662, 29.977276, 36.768871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157295, 29.978710, 36.543819>,  <43.018349, 29.981100, 36.168736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157295, 29.978710, 36.543819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904086, -0.263324, -0.336585,
		0.248934, 0.964689, -0.086066,
		0.347363, -0.005976, 0.937712,
		43.261505, 29.976917, 36.825134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698540, 30.270960, 36.063751>,  <43.018349, 29.981100, 36.168736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698540, 30.270960, 36.063751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706577, 30.055616, 36.400742>,  <43.711399, 29.926411, 36.602936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706577, 30.055616, 36.400742>,  <43.698540, 30.270960, 36.063751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706577, 30.055616, 36.400742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944867, -0.265242, -0.192025,
		0.326839, 0.799887, 0.503347,
		0.020090, -0.538357, 0.842478,
		43.712605, 29.894110, 36.653484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071701, 30.921011, 35.939548>,  <43.698540, 30.270960, 36.063751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071701, 30.921011, 35.939548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083195, 31.311090, 35.851761>,  <44.090092, 31.545137, 35.799088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083195, 31.311090, 35.851761>,  <44.071701, 30.921011, 35.939548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083195, 31.311090, 35.851761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560803, 0.197472, 0.804055,
		0.827451, 0.099975, 0.552567,
		0.028731, 0.975197, -0.219465,
		44.091812, 31.603649, 35.785923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292313, 31.297394, 36.566372>,  <44.071701, 30.921011, 35.939548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292313, 31.297394, 36.566372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074234, 31.546282, 36.341660>,  <43.943386, 31.695614, 36.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074234, 31.546282, 36.341660>,  <44.292313, 31.297394, 36.566372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074234, 31.546282, 36.341660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379869, 0.414023, 0.827215,
		0.747302, 0.664400, 0.010638,
		-0.545197, 0.622220, -0.561785,
		43.910675, 31.732948, 36.173122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258450, 31.860027, 36.964115>,  <44.292313, 31.297394, 36.566372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258450, 31.860027, 36.964115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972095, 31.915895, 36.690475>,  <43.800282, 31.949417, 36.526291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972095, 31.915895, 36.690475>,  <44.258450, 31.860027, 36.964115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972095, 31.915895, 36.690475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601280, 0.374718, 0.705726,
		0.354916, 0.916558, -0.184274,
		-0.715889, 0.139673, -0.684101,
		43.757328, 31.957798, 36.485245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372414, 32.609306, 36.850243>,  <44.258450, 31.860027, 36.964115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372414, 32.609306, 36.850243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275120, 32.891476, 36.583942>,  <44.216743, 33.060776, 36.424164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275120, 32.891476, 36.583942>,  <44.372414, 32.609306, 36.850243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275120, 32.891476, 36.583942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895493, 0.427063, 0.125337,
		0.372731, -0.565685, -0.735576,
		-0.243236, 0.705420, -0.665746,
		44.202148, 33.103104, 36.384220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961395, 32.611885, 36.371162>,  <44.372414, 32.609306, 36.850243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961395, 32.611885, 36.371162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766834, 32.959644, 36.336372>,  <44.650097, 33.168301, 36.315498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766834, 32.959644, 36.336372>,  <44.961395, 32.611885, 36.371162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766834, 32.959644, 36.336372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873367, 0.480881, -0.077351,
		-0.025426, -0.113581, -0.993203,
		-0.486398, 0.869398, -0.086972,
		44.620914, 33.220463, 36.310280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206257, 32.891087, 35.810444>,  <44.961395, 32.611885, 36.371162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206257, 32.891087, 35.810444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066612, 33.169975, 36.060886>,  <44.982826, 33.337307, 36.211151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066612, 33.169975, 36.060886>,  <45.206257, 32.891087, 35.810444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066612, 33.169975, 36.060886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879896, 0.473732, -0.036911,
		-0.322339, 0.538018, -0.778867,
		-0.349115, 0.697219, 0.626102,
		44.961876, 33.379143, 36.248718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294712, 33.587807, 35.590878>,  <45.206257, 32.891087, 35.810444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294712, 33.587807, 35.590878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333141, 33.540459, 35.986202>,  <45.356197, 33.512051, 36.223396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333141, 33.540459, 35.986202>,  <45.294712, 33.587807, 35.590878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333141, 33.540459, 35.986202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897131, 0.440419, -0.034456,
		-0.431192, 0.889955, 0.148507,
		0.096070, -0.118373, 0.988311,
		45.361961, 33.504948, 36.282696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275364, 34.151402, 35.924431>,  <45.294712, 33.587807, 35.590878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275364, 34.151402, 35.924431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517963, 33.873447, 36.078987>,  <45.663525, 33.706676, 36.171719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517963, 33.873447, 36.078987>,  <45.275364, 34.151402, 35.924431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517963, 33.873447, 36.078987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792631, 0.566561, -0.225266,
		-0.062378, 0.442887, 0.894405,
		0.606502, -0.694882, 0.386387,
		45.699913, 33.664982, 36.194904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733963, 34.531784, 36.427551>,  <45.275364, 34.151402, 35.924431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733963, 34.531784, 36.427551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891846, 34.208702, 36.252361>,  <45.986576, 34.014851, 36.147247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891846, 34.208702, 36.252361>,  <45.733963, 34.531784, 36.427551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891846, 34.208702, 36.252361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703210, 0.572352, -0.421792,
		0.591358, -0.141503, 0.793897,
		0.394704, -0.807706, -0.437971,
		46.010258, 33.966389, 36.120972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487999, 34.451660, 36.674843>,  <45.733963, 34.531784, 36.427551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487999, 34.451660, 36.674843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405247, 34.294212, 36.316566>,  <46.355595, 34.199745, 36.101601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405247, 34.294212, 36.316566>,  <46.487999, 34.451660, 36.674843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405247, 34.294212, 36.316566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864095, 0.355854, -0.355960,
		0.458848, -0.847606, 0.266502,
		-0.206877, -0.393615, -0.895695,
		46.343185, 34.176128, 36.047859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022785, 34.013901, 36.562489>,  <46.487999, 34.451660, 36.674843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022785, 34.013901, 36.562489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.838657, 34.129772, 36.226822>,  <46.728180, 34.199295, 36.025421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.838657, 34.129772, 36.226822>,  <47.022785, 34.013901, 36.562489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838657, 34.129772, 36.226822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865514, 0.356695, -0.351645,
		0.197461, -0.888176, -0.414913,
		-0.460320, 0.289677, -0.839162,
		46.700562, 34.216675, 35.975075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.358662, 33.720978, 35.957077>,  <47.022785, 34.013901, 36.562489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.358662, 33.720978, 35.957077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208660, 34.091785, 35.956383>,  <47.118660, 34.314270, 35.955967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208660, 34.091785, 35.956383>,  <47.358662, 33.720978, 35.957077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208660, 34.091785, 35.956383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853284, 0.344446, -0.391490,
		-0.362323, -0.148288, -0.920181,
		-0.375006, 0.927021, -0.001731,
		47.096157, 34.369892, 35.955864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.462326, 33.906879, 35.215206>,  <47.358662, 33.720978, 35.957077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.462326, 33.906879, 35.215206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474033, 34.211441, 35.474251>,  <47.481056, 34.394176, 35.629677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474033, 34.211441, 35.474251>,  <47.462326, 33.906879, 35.215206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.474033, 34.211441, 35.474251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834202, 0.338331, -0.435475,
		-0.550682, 0.552987, -0.625264,
		0.029266, 0.761405, 0.647616,
		47.482815, 34.439861, 35.668537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492775, 34.530701, 34.888447>,  <47.462326, 33.906879, 35.215206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492775, 34.530701, 34.888447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677437, 34.577564, 35.240162>,  <47.788235, 34.605682, 35.451191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677437, 34.577564, 35.240162>,  <47.492775, 34.530701, 34.888447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.677437, 34.577564, 35.240162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820386, 0.320639, -0.473452,
		-0.337402, 0.939928, 0.051910,
		0.461655, 0.117158, 0.879289,
		47.815933, 34.612713, 35.503948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493568, 35.231998, 34.933434>,  <47.492775, 34.530701, 34.888447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493568, 35.231998, 34.933434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781048, 34.997791, 35.083450>,  <47.953533, 34.857269, 35.173458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781048, 34.997791, 35.083450>,  <47.493568, 35.231998, 34.933434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.781048, 34.997791, 35.083450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684510, 0.501008, -0.529563,
		0.122169, 0.637311, 0.760861,
		0.718694, -0.585513, 0.375038,
		47.996655, 34.822136, 35.195961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.262131, 28.444834, 25.183973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.990803, 28.581743, 24.923901>,  <39.828007, 28.663889, 24.767857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.990803, 28.581743, 24.923901>,  <40.262131, 28.444834, 25.183973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990803, 28.581743, 24.923901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630633, 0.182915, 0.754217,
		0.377075, 0.921625, 0.091773,
		-0.678319, 0.342272, -0.650180,
		39.787308, 28.684425, 24.728848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033684, 29.203209, 25.363190>,  <40.262131, 28.444834, 25.183973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033684, 29.203209, 25.363190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.736862, 29.029486, 25.158941>,  <39.558769, 28.925251, 25.036392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.736862, 29.029486, 25.158941>,  <40.033684, 29.203209, 25.363190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736862, 29.029486, 25.158941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610097, 0.121957, 0.782885,
		-0.277739, 0.892470, -0.355468,
		-0.742053, -0.434308, -0.510621,
		39.514248, 28.899193, 25.005754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574448, 29.515562, 25.756268>,  <40.033684, 29.203209, 25.363190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574448, 29.515562, 25.756268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.379635, 29.269966, 25.507811>,  <39.262749, 29.122608, 25.358736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.379635, 29.269966, 25.507811>,  <39.574448, 29.515562, 25.756268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379635, 29.269966, 25.507811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828895, 0.100847, 0.550239,
		-0.275202, 0.782843, -0.558050,
		-0.487029, -0.613992, -0.621141,
		39.233524, 29.085768, 25.321468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965359, 29.918463, 25.570110>,  <39.574448, 29.515562, 25.756268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965359, 29.918463, 25.570110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874352, 29.533714, 25.509394>,  <38.819748, 29.302866, 25.472963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874352, 29.533714, 25.509394>,  <38.965359, 29.918463, 25.570110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874352, 29.533714, 25.509394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755019, 0.075813, 0.651305,
		-0.614963, 0.262791, -0.743479,
		-0.227523, -0.961870, -0.151789,
		38.806095, 29.245153, 25.463858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217602, 29.923925, 25.315086>,  <38.965359, 29.918463, 25.570110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217602, 29.923925, 25.315086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315395, 29.567997, 25.469200>,  <38.374069, 29.354439, 25.561668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315395, 29.567997, 25.469200>,  <38.217602, 29.923925, 25.315086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315395, 29.567997, 25.469200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804776, 0.035441, 0.592519,
		-0.540891, -0.454929, -0.707444,
		0.244481, -0.889822, 0.385286,
		38.388741, 29.301050, 25.584785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612823, 29.379784, 25.294621>,  <38.217602, 29.923925, 25.315086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612823, 29.379784, 25.294621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863045, 29.292295, 25.594179>,  <38.013176, 29.239803, 25.773914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863045, 29.292295, 25.594179>,  <37.612823, 29.379784, 25.294621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863045, 29.292295, 25.594179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761272, 0.038939, 0.647262,
		-0.170732, -0.975010, -0.142149,
		0.625552, -0.218722, 0.748896,
		38.050709, 29.226679, 25.818848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238338, 28.899624, 25.619373>,  <37.612823, 29.379784, 25.294621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238338, 28.899624, 25.619373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524025, 28.922329, 25.898420>,  <37.695438, 28.935951, 26.065849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524025, 28.922329, 25.898420>,  <37.238338, 28.899624, 25.619373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524025, 28.922329, 25.898420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699923, 0.055548, 0.712055,
		0.001664, -0.996841, 0.079400,
		0.714217, 0.056759, 0.697620,
		37.738289, 28.939358, 26.107706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143482, 28.416761, 26.238527>,  <37.238338, 28.899624, 25.619373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143482, 28.416761, 26.238527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347546, 28.734478, 26.370495>,  <37.469982, 28.925108, 26.449675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347546, 28.734478, 26.370495>,  <37.143482, 28.416761, 26.238527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347546, 28.734478, 26.370495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687207, 0.145771, 0.711686,
		0.517193, -0.589790, 0.620208,
		0.510154, 0.794291, 0.329916,
		37.500591, 28.972765, 26.469469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865669, 28.413273, 26.811192>,  <37.143482, 28.416761, 26.238527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865669, 28.413273, 26.811192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057510, 28.764269, 26.811329>,  <37.172615, 28.974867, 26.811411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057510, 28.764269, 26.811329>,  <36.865669, 28.413273, 26.811192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057510, 28.764269, 26.811329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588835, 0.321540, 0.741543,
		0.650584, -0.355846, 0.670906,
		0.479598, 0.877488, 0.000345,
		37.201389, 29.027515, 26.811432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080059, 28.522551, 27.481733>,  <36.865669, 28.413273, 26.811192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080059, 28.522551, 27.481733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141968, 28.890221, 27.336870>,  <37.179111, 29.110823, 27.249952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141968, 28.890221, 27.336870>,  <37.080059, 28.522551, 27.481733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141968, 28.890221, 27.336870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250380, 0.391101, 0.885635,
		0.955696, -0.046396, 0.290676,
		0.154773, 0.919177, -0.362158,
		37.188400, 29.165974, 27.228224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564556, 28.900059, 27.936008>,  <37.080059, 28.522551, 27.481733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564556, 28.900059, 27.936008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355461, 29.170071, 27.727745>,  <37.230003, 29.332077, 27.602787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355461, 29.170071, 27.727745>,  <37.564556, 28.900059, 27.936008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355461, 29.170071, 27.727745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172003, 0.514670, 0.839958,
		0.834962, 0.528632, -0.152930,
		-0.522737, 0.675029, -0.520656,
		37.198639, 29.372580, 27.571548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970264, 29.481134, 27.965084>,  <37.564556, 28.900059, 27.936008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970264, 29.481134, 27.965084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583927, 29.563961, 27.902765>,  <37.352123, 29.613657, 27.865374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583927, 29.563961, 27.902765>,  <37.970264, 29.481134, 27.965084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583927, 29.563961, 27.902765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039014, 0.478184, 0.877393,
		0.256178, 0.853501, -0.453772,
		-0.965842, 0.207065, -0.155798,
		37.294174, 29.626081, 27.856026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851791, 30.235685, 27.967079>,  <37.970264, 29.481134, 27.965084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851791, 30.235685, 27.967079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499252, 30.075550, 28.067440>,  <37.287727, 29.979469, 28.127657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499252, 30.075550, 28.067440>,  <37.851791, 30.235685, 27.967079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499252, 30.075550, 28.067440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024311, 0.568776, 0.822133,
		-0.471840, 0.718487, -0.511022,
		-0.881349, -0.400339, 0.250904,
		37.234848, 29.955448, 28.142712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532440, 30.659817, 28.440828>,  <37.851791, 30.235685, 27.967079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532440, 30.659817, 28.440828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251003, 30.384592, 28.511860>,  <37.082142, 30.219458, 28.554480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251003, 30.384592, 28.511860>,  <37.532440, 30.659817, 28.440828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251003, 30.384592, 28.511860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251102, 0.474511, 0.843675,
		-0.664764, 0.549009, -0.506634,
		-0.703589, -0.688061, 0.177580,
		37.039928, 30.178173, 28.565134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882038, 31.046602, 28.620350>,  <37.532440, 30.659817, 28.440828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882038, 31.046602, 28.620350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882233, 30.681969, 28.784794>,  <36.882351, 30.463188, 28.883461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882233, 30.681969, 28.784794>,  <36.882038, 31.046602, 28.620350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882233, 30.681969, 28.784794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247376, 0.398224, 0.883302,
		-0.968919, -0.102133, -0.225309,
		0.000491, -0.911585, 0.411112,
		36.882381, 30.408493, 28.908127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311775, 31.061609, 28.994732>,  <36.882038, 31.046602, 28.620350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311775, 31.061609, 28.994732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466267, 30.733332, 29.163155>,  <36.558964, 30.536366, 29.264208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466267, 30.733332, 29.163155>,  <36.311775, 31.061609, 28.994732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466267, 30.733332, 29.163155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254893, 0.343744, 0.903808,
		-0.886485, -0.456404, -0.076424,
		0.386231, -0.820692, 0.421058,
		36.582134, 30.487123, 29.289473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716278, 30.817436, 29.437183>,  <36.311775, 31.061609, 28.994732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716278, 30.817436, 29.437183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076454, 30.687395, 29.552774>,  <36.292561, 30.609371, 29.622129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076454, 30.687395, 29.552774>,  <35.716278, 30.817436, 29.437183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076454, 30.687395, 29.552774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272135, 0.097226, 0.957335,
		-0.339328, -0.940667, -0.000925,
		0.900444, -0.325103, 0.288980,
		36.346588, 30.589865, 29.639469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590527, 30.406736, 30.013638>,  <35.716278, 30.817436, 29.437183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590527, 30.406736, 30.013638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977566, 30.494728, 30.063217>,  <36.209789, 30.547523, 30.092964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977566, 30.494728, 30.063217>,  <35.590527, 30.406736, 30.013638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977566, 30.494728, 30.063217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189788, 0.309854, 0.931649,
		0.166538, -0.924986, 0.341564,
		0.967598, 0.219979, 0.123948,
		36.267845, 30.560722, 30.100401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764023, 30.305603, 30.690250>,  <35.590527, 30.406736, 30.013638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764023, 30.305603, 30.690250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069775, 30.548586, 30.603796>,  <36.253227, 30.694376, 30.551924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069775, 30.548586, 30.603796>,  <35.764023, 30.305603, 30.690250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069775, 30.548586, 30.603796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176749, 0.519794, 0.835808,
		0.620062, -0.600676, 0.504689,
		0.764384, 0.607456, -0.216136,
		36.299091, 30.730824, 30.538956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077572, 30.362827, 31.346872>,  <35.764023, 30.305603, 30.690250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077572, 30.362827, 31.346872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228664, 30.661751, 31.128204>,  <36.319321, 30.841105, 30.997004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228664, 30.661751, 31.128204>,  <36.077572, 30.362827, 31.346872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228664, 30.661751, 31.128204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075671, 0.563518, 0.822631,
		0.922817, -0.352102, 0.156310,
		0.377734, 0.747310, -0.546668,
		36.341984, 30.885944, 30.964205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476692, 30.724377, 31.824083>,  <36.077572, 30.362827, 31.346872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476692, 30.724377, 31.824083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459839, 30.998156, 31.532946>,  <36.449726, 31.162422, 31.358263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459839, 30.998156, 31.532946>,  <36.476692, 30.724377, 31.824083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459839, 30.998156, 31.532946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022698, 0.728958, 0.684182,
		0.998854, 0.012307, -0.046250,
		-0.042135, 0.684448, -0.727843,
		36.447197, 31.203489, 31.314592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393570, 30.530975, 32.538918>,  <36.476692, 30.724377, 31.824083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393570, 30.530975, 32.538918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489693, 30.313620, 32.860657>,  <36.547367, 30.183207, 33.053699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489693, 30.313620, 32.860657>,  <36.393570, 30.530975, 32.538918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489693, 30.313620, 32.860657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827813, -0.318021, -0.462156,
		0.506931, 0.776910, 0.373405,
		0.240303, -0.543390, 0.804352,
		36.561783, 30.150602, 33.101963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122948, 30.566120, 32.691772>,  <36.393570, 30.530975, 32.538918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122948, 30.566120, 32.691772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979305, 30.218809, 32.828674>,  <36.893120, 30.010422, 32.910816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979305, 30.218809, 32.828674>,  <37.122948, 30.566120, 32.691772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979305, 30.218809, 32.828674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751076, -0.486541, -0.446277,
		0.554012, 0.096797, 0.826862,
		-0.359104, -0.868279, 0.342252,
		36.871574, 29.958326, 32.931351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688099, 30.244549, 33.028362>,  <37.122948, 30.566120, 32.691772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688099, 30.244549, 33.028362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421005, 29.961283, 32.936592>,  <37.260750, 29.791323, 32.881531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421005, 29.961283, 32.936592>,  <37.688099, 30.244549, 33.028362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421005, 29.961283, 32.936592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668379, -0.434671, -0.603598,
		0.327725, -0.556383, 0.763567,
		-0.667732, -0.708166, -0.229422,
		37.220684, 29.748833, 32.867764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068844, 29.680712, 32.780945>,  <37.688099, 30.244549, 33.028362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068844, 29.680712, 32.780945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711960, 29.532211, 32.678078>,  <37.497829, 29.443111, 32.616356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711960, 29.532211, 32.678078>,  <38.068844, 29.680712, 32.780945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711960, 29.532211, 32.678078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397191, -0.374021, -0.838062,
		0.214946, -0.849871, 0.481163,
		-0.892209, -0.371252, -0.257166,
		37.444298, 29.420835, 32.600929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232811, 28.997959, 32.515503>,  <38.068844, 29.680712, 32.780945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232811, 28.997959, 32.515503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873528, 29.078354, 32.359127>,  <37.657959, 29.126591, 32.265301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873528, 29.078354, 32.359127>,  <38.232811, 28.997959, 32.515503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873528, 29.078354, 32.359127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247263, -0.504297, -0.827372,
		-0.363440, -0.839814, 0.403266,
		-0.898205, 0.200988, -0.390936,
		37.604065, 29.138651, 32.241844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942764, 28.433170, 32.197243>,  <38.232811, 28.997959, 32.515503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942764, 28.433170, 32.197243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738728, 28.696186, 31.975447>,  <37.616306, 28.853994, 31.842371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738728, 28.696186, 31.975447>,  <37.942764, 28.433170, 32.197243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738728, 28.696186, 31.975447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296640, -0.470622, -0.830975,
		-0.807350, -0.588354, 0.045007,
		-0.510089, 0.657537, -0.554486,
		37.585701, 28.893448, 31.809101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656265, 28.012196, 31.755423>,  <37.942764, 28.433170, 32.197243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656265, 28.012196, 31.755423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635162, 28.377230, 31.593237>,  <37.622501, 28.596251, 31.495926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635162, 28.377230, 31.593237>,  <37.656265, 28.012196, 31.755423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635162, 28.377230, 31.593237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321930, -0.368811, -0.871974,
		-0.945292, -0.176535, -0.274332,
		-0.052758, 0.912586, -0.405466,
		37.619335, 28.651005, 31.471598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357101, 27.945171, 31.146547>,  <37.656265, 28.012196, 31.755423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357101, 27.945171, 31.146547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.537659, 28.300358, 31.111303>,  <37.645992, 28.513470, 31.090157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.537659, 28.300358, 31.111303>,  <37.357101, 27.945171, 31.146547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537659, 28.300358, 31.111303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330396, -0.258040, -0.907884,
		-0.828905, 0.380701, -0.409857,
		0.451392, 0.887965, -0.088109,
		37.673077, 28.566748, 31.084871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202785, 28.047331, 30.435974>,  <37.357101, 27.945171, 31.146547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202785, 28.047331, 30.435974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499641, 28.293285, 30.542662>,  <37.677757, 28.440859, 30.606674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499641, 28.293285, 30.542662>,  <37.202785, 28.047331, 30.435974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499641, 28.293285, 30.542662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442079, -0.149964, -0.884351,
		-0.503778, 0.774225, -0.383123,
		0.742141, 0.614887, 0.266721,
		37.722282, 28.477751, 30.622679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285614, 28.607512, 29.924389>,  <37.202785, 28.047331, 30.435974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285614, 28.607512, 29.924389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634129, 28.594009, 30.120234>,  <37.843239, 28.585909, 30.237740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634129, 28.594009, 30.120234>,  <37.285614, 28.607512, 29.924389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634129, 28.594009, 30.120234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487847, -0.049200, -0.871542,
		0.053506, 0.998218, -0.026401,
		0.871288, -0.033754, 0.489610,
		37.895515, 28.583883, 30.267117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759521, 28.880890, 29.366081>,  <37.285614, 28.607512, 29.924389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759521, 28.880890, 29.366081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016865, 28.737015, 29.636404>,  <38.171272, 28.650688, 29.798597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016865, 28.737015, 29.636404>,  <37.759521, 28.880890, 29.366081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016865, 28.737015, 29.636404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699492, -0.082571, -0.709854,
		0.311129, 0.929411, 0.198478,
		0.643358, -0.359690, 0.675806,
		38.209873, 28.629108, 29.839146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363495, 29.299402, 29.368498>,  <37.759521, 28.880890, 29.366081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363495, 29.299402, 29.368498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.450455, 28.942713, 29.527275>,  <38.502632, 28.728699, 29.622541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.450455, 28.942713, 29.527275>,  <38.363495, 29.299402, 29.368498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450455, 28.942713, 29.527275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788874, -0.078970, -0.609461,
		0.574818, 0.445635, 0.686290,
		0.217401, -0.891725, 0.396943,
		38.515675, 28.675196, 29.646358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118862, 29.214739, 29.342850>,  <38.363495, 29.299402, 29.368498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118862, 29.214739, 29.342850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.988075, 28.838465, 29.379074>,  <38.909603, 28.612700, 29.400808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.988075, 28.838465, 29.379074>,  <39.118862, 29.214739, 29.342850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988075, 28.838465, 29.379074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646886, -0.292644, -0.704200,
		0.688933, -0.171671, 0.704202,
		-0.326971, -0.940685, 0.090561,
		38.889984, 28.556259, 29.406242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720573, 28.801615, 29.505709>,  <39.118862, 29.214739, 29.342850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720573, 28.801615, 29.505709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.447845, 28.552038, 29.352968>,  <39.284206, 28.402292, 29.261324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.447845, 28.552038, 29.352968>,  <39.720573, 28.801615, 29.505709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447845, 28.552038, 29.352968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667923, -0.318121, -0.672813,
		0.298322, -0.713788, 0.633648,
		-0.681823, -0.623943, -0.381853,
		39.243298, 28.364855, 29.238413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067513, 28.135721, 29.441454>,  <39.720573, 28.801615, 29.505709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067513, 28.135721, 29.441454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.744904, 28.093372, 29.208797>,  <39.551338, 28.067963, 29.069204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.744904, 28.093372, 29.208797>,  <40.067513, 28.135721, 29.441454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744904, 28.093372, 29.208797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588945, -0.058067, -0.806084,
		0.051567, -0.992683, 0.109185,
		-0.806527, -0.105871, -0.581642,
		39.502945, 28.061611, 29.034306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985489, 27.442518, 29.205826>,  <40.067513, 28.135721, 29.441454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985489, 27.442518, 29.205826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.798744, 27.690903, 28.953972>,  <39.686695, 27.839933, 28.802858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.798744, 27.690903, 28.953972>,  <39.985489, 27.442518, 29.205826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798744, 27.690903, 28.953972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650841, -0.240757, -0.720029,
		-0.598701, -0.745949, -0.291748,
		-0.466864, 0.620963, -0.629636,
		39.658684, 27.877192, 28.765081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088760, 27.190973, 28.531475>,  <39.985489, 27.442518, 29.205826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088760, 27.190973, 28.531475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966789, 27.561546, 28.443167>,  <39.893604, 27.783890, 28.390182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966789, 27.561546, 28.443167>,  <40.088760, 27.190973, 28.531475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966789, 27.561546, 28.443167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540026, -0.022746, -0.841341,
		-0.784468, -0.375771, -0.493362,
		-0.304929, 0.926434, -0.220770,
		39.875309, 27.839476, 28.376936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918835, 27.146149, 27.881458>,  <40.088760, 27.190973, 28.531475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918835, 27.146149, 27.881458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980515, 27.535561, 27.948940>,  <40.017521, 27.769207, 27.989429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980515, 27.535561, 27.948940>,  <39.918835, 27.146149, 27.881458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980515, 27.535561, 27.948940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484542, 0.074295, -0.871607,
		-0.861070, 0.216144, -0.460261,
		0.154198, 0.973531, 0.168704,
		40.026775, 27.827620, 27.999552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654663, 27.375038, 27.343494>,  <39.918835, 27.146149, 27.881458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654663, 27.375038, 27.343494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898834, 27.660593, 27.480743>,  <40.045338, 27.831926, 27.563093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898834, 27.660593, 27.480743>,  <39.654663, 27.375038, 27.343494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898834, 27.660593, 27.480743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365204, 0.130730, -0.921703,
		-0.702850, 0.687948, -0.180913,
		0.610433, 0.713889, 0.343124,
		40.081963, 27.874760, 27.583681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.687359, 27.831762, 26.801888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012077, 27.929987, 27.013809>,  <40.206909, 27.988922, 27.140963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012077, 27.929987, 27.013809>,  <39.687359, 27.831762, 26.801888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012077, 27.929987, 27.013809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477849, 0.242134, -0.844412,
		-0.335639, 0.938654, 0.079221,
		0.811792, 0.245562, 0.529805,
		40.255615, 28.003656, 27.172750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838280, 28.558208, 26.671329>,  <39.687359, 27.831762, 26.801888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838280, 28.558208, 26.671329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.177959, 28.408857, 26.820700>,  <40.381767, 28.319246, 26.910322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.177959, 28.408857, 26.820700>,  <39.838280, 28.558208, 26.671329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177959, 28.408857, 26.820700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484869, 0.271198, -0.831477,
		0.209182, 0.887154, 0.411341,
		0.849202, -0.373377, 0.373424,
		40.432720, 28.296844, 26.932726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329674, 29.003201, 26.427887>,  <39.838280, 28.558208, 26.671329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329674, 29.003201, 26.427887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543285, 28.676334, 26.514652>,  <40.671452, 28.480215, 26.566711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543285, 28.676334, 26.514652>,  <40.329674, 29.003201, 26.427887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543285, 28.676334, 26.514652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520246, 0.115375, -0.846187,
		0.666448, 0.564739, 0.486741,
		0.534033, -0.817165, 0.216912,
		40.703495, 28.431185, 26.579725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790077, 29.035769, 25.898043>,  <40.329674, 29.003201, 26.427887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790077, 29.035769, 25.898043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.883038, 28.692045, 26.080286>,  <40.938816, 28.485811, 26.189632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.883038, 28.692045, 26.080286>,  <40.790077, 29.035769, 25.898043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883038, 28.692045, 26.080286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678698, -0.192253, -0.708807,
		0.696676, 0.473949, 0.538531,
		0.232404, -0.859309, 0.455606,
		40.952759, 28.434252, 26.216969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482319, 28.988287, 25.974680>,  <40.790077, 29.035769, 25.898043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482319, 28.988287, 25.974680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.359085, 28.607744, 25.975306>,  <41.285145, 28.379417, 25.975681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.359085, 28.607744, 25.975306>,  <41.482319, 28.988287, 25.974680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359085, 28.607744, 25.975306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677694, -0.220615, -0.701470,
		0.667693, -0.215052, 0.712698,
		-0.308084, -0.951358, 0.001563,
		41.266659, 28.322336, 25.975775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018860, 28.620358, 26.125853>,  <41.482319, 28.988287, 25.974680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018860, 28.620358, 26.125853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.779629, 28.361429, 25.936842>,  <41.636089, 28.206072, 25.823435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.779629, 28.361429, 25.936842>,  <42.018860, 28.620358, 26.125853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779629, 28.361429, 25.936842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779545, -0.332987, -0.530500,
		0.186058, -0.685635, 0.703766,
		-0.598074, -0.647321, -0.472528,
		41.600208, 28.167233, 25.795084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464474, 28.096916, 26.097658>,  <42.018860, 28.620358, 26.125853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464474, 28.096916, 26.097658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.183472, 28.017933, 25.824165>,  <42.014870, 27.970543, 25.660069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.183472, 28.017933, 25.824165>,  <42.464474, 28.096916, 26.097658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183472, 28.017933, 25.824165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701105, -0.356990, -0.617260,
		-0.122202, -0.912999, 0.389229,
		-0.702508, -0.197460, -0.683734,
		41.972717, 27.958694, 25.619045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630989, 27.493200, 25.751503>,  <42.464474, 28.096916, 26.097658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630989, 27.493200, 25.751503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.380100, 27.668736, 25.494129>,  <42.229565, 27.774057, 25.339705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.380100, 27.668736, 25.494129>,  <42.630989, 27.493200, 25.751503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380100, 27.668736, 25.494129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521798, -0.376548, -0.765466,
		-0.578200, -0.815863, 0.007196,
		-0.627226, 0.438838, -0.643436,
		42.191933, 27.800386, 25.301098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443813, 27.000227, 25.341377>,  <42.630989, 27.493200, 25.751503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443813, 27.000227, 25.341377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.342003, 27.317928, 25.120697>,  <42.280914, 27.508549, 24.988289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.342003, 27.317928, 25.120697>,  <42.443813, 27.000227, 25.341377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342003, 27.317928, 25.120697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433135, -0.416443, -0.799356,
		-0.864644, -0.442419, -0.238023,
		-0.254527, 0.794255, -0.551702,
		42.265644, 27.556204, 24.955187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283276, 26.786991, 24.801678>,  <42.443813, 27.000227, 25.341377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283276, 26.786991, 24.801678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.392300, 27.158632, 24.701696>,  <42.457714, 27.381617, 24.641706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.392300, 27.158632, 24.701696>,  <42.283276, 26.786991, 24.801678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392300, 27.158632, 24.701696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530742, -0.361876, -0.766393,
		-0.802512, 0.076225, -0.591747,
		0.272557, 0.929105, -0.249954,
		42.474068, 27.437365, 24.626711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374218, 26.741529, 24.073088>,  <42.283276, 26.786991, 24.801678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374218, 26.741529, 24.073088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.575771, 27.069546, 24.181629>,  <42.696705, 27.266356, 24.246754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.575771, 27.069546, 24.181629>,  <42.374218, 26.741529, 24.073088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575771, 27.069546, 24.181629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614810, -0.119833, -0.779518,
		-0.606720, 0.559618, -0.564552,
		0.503884, 0.820041, 0.271354,
		42.726936, 27.315557, 24.263035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694622, 26.934965, 23.427341>,  <42.374218, 26.741529, 24.073088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694622, 26.934965, 23.427341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.923424, 27.136396, 23.686333>,  <43.060703, 27.257256, 23.841726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.923424, 27.136396, 23.686333>,  <42.694622, 26.934965, 23.427341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923424, 27.136396, 23.686333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779920, -0.089416, -0.619460,
		-0.254052, 0.859310, -0.443896,
		0.572000, 0.503578, 0.647476,
		43.095024, 27.287470, 23.880575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954556, 27.562115, 23.107428>,  <42.694622, 26.934965, 23.427341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954556, 27.562115, 23.107428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.205208, 27.461220, 23.402374>,  <43.355598, 27.400682, 23.579342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.205208, 27.461220, 23.402374>,  <42.954556, 27.562115, 23.107428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205208, 27.461220, 23.402374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771708, 0.068972, -0.632226,
		0.108614, 0.965204, 0.237874,
		0.626633, -0.252238, 0.737365,
		43.393196, 27.385548, 23.623583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499584, 28.102802, 23.051317>,  <42.954556, 27.562115, 23.107428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499584, 28.102802, 23.051317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.649620, 27.781870, 23.237038>,  <43.739639, 27.589310, 23.348469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.649620, 27.781870, 23.237038>,  <43.499584, 28.102802, 23.051317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649620, 27.781870, 23.237038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893565, 0.179653, -0.411420,
		0.246683, 0.569199, 0.784321,
		0.375085, -0.802332, 0.464299,
		43.762146, 27.541170, 23.376328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121342, 28.330149, 23.307840>,  <43.499584, 28.102802, 23.051317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121342, 28.330149, 23.307840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.137135, 27.930460, 23.308231>,  <44.146610, 27.690647, 23.308466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.137135, 27.930460, 23.308231>,  <44.121342, 28.330149, 23.307840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137135, 27.930460, 23.308231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902947, 0.035259, -0.428302,
		0.427934, 0.017791, 0.903635,
		0.039482, -0.999220, 0.000976,
		44.148979, 27.630693, 23.308523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872223, 28.224247, 23.281420>,  <44.121342, 28.330149, 23.307840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872223, 28.224247, 23.281420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.711430, 27.864147, 23.214533>,  <44.614952, 27.648088, 23.174400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.711430, 27.864147, 23.214533>,  <44.872223, 28.224247, 23.281420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711430, 27.864147, 23.214533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844206, -0.293668, -0.448415,
		0.354578, -0.321423, 0.878044,
		-0.401984, -0.900248, -0.167219,
		44.590836, 27.594072, 23.164368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313969, 27.726271, 23.528555>,  <44.872223, 28.224247, 23.281420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313969, 27.726271, 23.528555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.089176, 27.549074, 23.249146>,  <44.954300, 27.442757, 23.081499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.089176, 27.549074, 23.249146>,  <45.313969, 27.726271, 23.528555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089176, 27.549074, 23.249146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826796, -0.325593, -0.458692,
		-0.024239, -0.835313, 0.549241,
		-0.561980, -0.442992, -0.698525,
		44.920582, 27.416176, 23.039589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553844, 26.993418, 23.427223>,  <45.313969, 27.726271, 23.528555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553844, 26.993418, 23.427223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.357594, 27.122089, 23.103294>,  <45.239841, 27.199291, 22.908937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.357594, 27.122089, 23.103294>,  <45.553844, 26.993418, 23.427223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357594, 27.122089, 23.103294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793380, -0.219396, -0.567814,
		-0.360325, -0.921080, -0.147572,
		-0.490626, 0.321678, -0.809821,
		45.210407, 27.218594, 22.860348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766228, 26.417908, 22.910139>,  <45.553844, 26.993418, 23.427223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766228, 26.417908, 22.910139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.588055, 26.715458, 22.710842>,  <45.481152, 26.893988, 22.591265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.588055, 26.715458, 22.710842>,  <45.766228, 26.417908, 22.910139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588055, 26.715458, 22.710842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711035, -0.044271, -0.701761,
		-0.544079, -0.666853, -0.509200,
		-0.445428, 0.743873, -0.498243,
		45.454426, 26.938620, 22.561369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720612, 26.186153, 22.307203>,  <45.766228, 26.417908, 22.910139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720612, 26.186153, 22.307203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.712761, 26.582020, 22.250389>,  <45.708050, 26.819540, 22.216301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.712761, 26.582020, 22.250389>,  <45.720612, 26.186153, 22.307203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712761, 26.582020, 22.250389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665728, -0.093056, -0.740369,
		-0.745936, -0.109086, -0.657023,
		-0.019623, 0.989667, -0.142036,
		45.706875, 26.878920, 22.207779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713886, 26.234291, 21.538639>,  <45.720612, 26.186153, 22.307203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713886, 26.234291, 21.538639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.837898, 26.571905, 21.713676>,  <45.912304, 26.774473, 21.818699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.837898, 26.571905, 21.713676>,  <45.713886, 26.234291, 21.538639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837898, 26.571905, 21.713676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709379, 0.101076, -0.697542,
		-0.632980, 0.526675, -0.567405,
		0.310027, 0.844036, 0.437591,
		45.930908, 26.825115, 21.844954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827641, 26.794224, 21.004505>,  <45.713886, 26.234291, 21.538639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827641, 26.794224, 21.004505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.045929, 26.896166, 21.323814>,  <46.176903, 26.957331, 21.515400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.045929, 26.896166, 21.323814>,  <45.827641, 26.794224, 21.004505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045929, 26.896166, 21.323814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826024, -0.003340, -0.563625,
		-0.140977, 0.966973, -0.212341,
		0.545719, 0.254857, 0.798272,
		46.209644, 26.972624, 21.563295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727032, 27.394436, 20.490040>,  <45.827641, 26.794224, 21.004505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727032, 27.394436, 20.490040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.433044, 27.142672, 20.389112>,  <45.256653, 26.991613, 20.328556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.433044, 27.142672, 20.389112>,  <45.727032, 27.394436, 20.490040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433044, 27.142672, 20.389112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270609, -0.613424, 0.741945,
		-0.621765, 0.477027, 0.621171,
		-0.734969, -0.629410, -0.252317,
		45.212555, 26.953848, 20.313417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387386, 27.715397, 20.669971>,  <45.727032, 27.394436, 20.490040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387386, 27.715397, 20.669971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.424065, 28.061146, 20.472204>,  <46.446072, 28.268595, 20.353544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.424065, 28.061146, 20.472204>,  <46.387386, 27.715397, 20.669971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424065, 28.061146, 20.472204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976647, 0.174945, 0.124718,
		0.194300, 0.471438, 0.860229,
		0.091696, 0.864373, -0.494420,
		46.451572, 28.320457, 20.323877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150280, 28.328012, 20.977097>,  <46.387386, 27.715397, 20.669971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150280, 28.328012, 20.977097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.129318, 28.437206, 20.592861>,  <46.116741, 28.502722, 20.362320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.129318, 28.437206, 20.592861>,  <46.150280, 28.328012, 20.977097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129318, 28.437206, 20.592861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990082, 0.111358, 0.085662,
		0.130354, 0.955552, 0.264441,
		-0.052406, 0.272985, -0.960590,
		46.113598, 28.519102, 20.304684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775146, 29.012417, 20.892149>,  <46.150280, 28.328012, 20.977097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775146, 29.012417, 20.892149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.755104, 28.819851, 20.542126>,  <45.743076, 28.704311, 20.332111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.755104, 28.819851, 20.542126>,  <45.775146, 29.012417, 20.892149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755104, 28.819851, 20.542126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986563, 0.160281, -0.031685,
		0.155509, 0.861711, -0.482981,
		-0.050109, -0.481418, -0.875057,
		45.740070, 28.675426, 20.279608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355011, 29.364069, 20.487488>,  <45.775146, 29.012417, 20.892149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355011, 29.364069, 20.487488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.344666, 28.988142, 20.351210>,  <45.338459, 28.762585, 20.269444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.344666, 28.988142, 20.351210>,  <45.355011, 29.364069, 20.487488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344666, 28.988142, 20.351210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991568, 0.067406, -0.110679,
		0.126983, 0.334959, -0.933637,
		-0.025860, -0.939819, -0.340694,
		45.336906, 28.706196, 20.249001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945229, 29.372206, 19.887587>,  <45.355011, 29.364069, 20.487488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945229, 29.372206, 19.887587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.932957, 28.998777, 20.030416>,  <44.925594, 28.774721, 20.116116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.932957, 28.998777, 20.030416>,  <44.945229, 29.372206, 19.887587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932957, 28.998777, 20.030416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996227, 0.057575, 0.064941,
		-0.081186, -0.353737, -0.931815,
		-0.030677, -0.933571, 0.357077,
		44.923752, 28.718706, 20.137539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224815, 29.146399, 19.761349>,  <44.945229, 29.372206, 19.887587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224815, 29.146399, 19.761349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.345871, 28.847094, 19.997490>,  <44.418503, 28.667511, 20.139174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.345871, 28.847094, 19.997490>,  <44.224815, 29.146399, 19.761349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345871, 28.847094, 19.997490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903962, -0.029021, 0.426627,
		-0.302096, -0.662770, -0.685182,
		0.302640, -0.748261, 0.590351,
		44.436665, 28.622616, 20.174595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657509, 28.697060, 19.714344>,  <44.224815, 29.146399, 19.761349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657509, 28.697060, 19.714344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.859951, 28.588001, 20.041641>,  <43.981415, 28.522566, 20.238020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.859951, 28.588001, 20.041641>,  <43.657509, 28.697060, 19.714344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859951, 28.588001, 20.041641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857568, -0.058051, 0.511084,
		-0.091854, -0.960357, -0.263206,
		0.506103, -0.272662, 0.818239,
		44.011784, 28.506207, 20.287115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175465, 28.222933, 19.952288>,  <43.657509, 28.697060, 19.714344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175465, 28.222933, 19.952288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.402409, 28.354836, 20.254114>,  <43.538574, 28.433977, 20.435209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.402409, 28.354836, 20.254114>,  <43.175465, 28.222933, 19.952288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402409, 28.354836, 20.254114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784828, -0.060879, 0.616716,
		0.249303, -0.942101, 0.224261,
		0.567356, 0.329755, 0.754565,
		43.572617, 28.453762, 20.480484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934223, 27.815561, 20.518234>,  <43.175465, 28.222933, 19.952288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934223, 27.815561, 20.518234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.139351, 28.113997, 20.688112>,  <43.262428, 28.293058, 20.790039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.139351, 28.113997, 20.688112>,  <42.934223, 27.815561, 20.518234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139351, 28.113997, 20.688112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652810, 0.017622, 0.757317,
		0.557542, -0.665612, 0.496091,
		0.512822, 0.746090, 0.424693,
		43.293198, 28.337824, 20.815519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145535, 27.627989, 21.122221>,  <42.934223, 27.815561, 20.518234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145535, 27.627989, 21.122221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.138538, 28.026695, 21.153605>,  <43.134338, 28.265919, 21.172434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.138538, 28.026695, 21.153605>,  <43.145535, 27.627989, 21.122221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138538, 28.026695, 21.153605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527518, -0.075861, 0.846150,
		0.849364, -0.026586, 0.527138,
		-0.017493, 0.996764, 0.078459,
		43.133289, 28.325724, 21.177141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274494, 27.766363, 21.834991>,  <43.145535, 27.627989, 21.122221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274494, 27.766363, 21.834991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.091942, 28.086958, 21.680418>,  <42.982410, 28.279314, 21.587673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.091942, 28.086958, 21.680418>,  <43.274494, 27.766363, 21.834991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091942, 28.086958, 21.680418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641295, 0.004775, 0.767279,
		0.616809, 0.597993, 0.511811,
		-0.456384, 0.801487, -0.386435,
		42.955025, 28.327404, 21.564487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111557, 28.303745, 22.333290>,  <43.274494, 27.766363, 21.834991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111557, 28.303745, 22.333290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.841095, 28.375765, 22.047522>,  <42.678818, 28.418976, 21.876060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.841095, 28.375765, 22.047522>,  <43.111557, 28.303745, 22.333290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841095, 28.375765, 22.047522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735936, -0.119163, 0.666482,
		0.034867, 0.976413, 0.213077,
		-0.676153, 0.180049, -0.714423,
		42.638248, 28.429779, 21.833195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727226, 28.906620, 22.578014>,  <43.111557, 28.303745, 22.333290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727226, 28.906620, 22.578014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.478992, 28.712610, 22.331558>,  <42.330051, 28.596205, 22.183685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.478992, 28.712610, 22.331558>,  <42.727226, 28.906620, 22.578014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478992, 28.712610, 22.331558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755034, 0.157507, 0.636487,
		-0.211665, 0.860199, -0.463957,
		-0.620582, -0.485025, -0.616141,
		42.292816, 28.567102, 22.146717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125603, 29.247826, 22.601589>,  <42.727226, 28.906620, 22.578014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125603, 29.247826, 22.601589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002964, 28.911648, 22.422859>,  <41.929382, 28.709942, 22.315620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002964, 28.911648, 22.422859>,  <42.125603, 29.247826, 22.601589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002964, 28.911648, 22.422859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761978, -0.064616, 0.644371,
		-0.570430, 0.538032, -0.620589,
		-0.306593, -0.840444, -0.446827,
		41.910988, 28.659515, 22.288811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376144, 29.337337, 22.476732>,  <42.125603, 29.247826, 22.601589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376144, 29.337337, 22.476732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477482, 28.950716, 22.492702>,  <41.538284, 28.718744, 22.502285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477482, 28.950716, 22.492702>,  <41.376144, 29.337337, 22.476732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477482, 28.950716, 22.492702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816043, -0.191368, 0.545391,
		-0.519509, -0.170751, -0.837230,
		0.253346, -0.966552, 0.039923,
		41.553486, 28.660751, 22.504679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801968, 28.948841, 22.250132>,  <41.376144, 29.337337, 22.476732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801968, 28.948841, 22.250132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.018566, 28.710659, 22.487520>,  <41.148525, 28.567749, 22.629953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.018566, 28.710659, 22.487520>,  <40.801968, 28.948841, 22.250132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018566, 28.710659, 22.487520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809649, -0.179281, 0.558862,
		-0.226383, -0.783125, -0.579194,
		0.541498, -0.595461, 0.593470,
		41.181015, 28.532022, 22.665562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329762, 28.306305, 22.280416>,  <40.801968, 28.948841, 22.250132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329762, 28.306305, 22.280416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584045, 28.315866, 22.589039>,  <40.736614, 28.321604, 22.774212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584045, 28.315866, 22.589039>,  <40.329762, 28.306305, 22.280416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584045, 28.315866, 22.589039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757579, -0.172500, 0.629538,
		0.148142, -0.984719, -0.091551,
		0.635711, 0.023904, 0.771557,
		40.774757, 28.323038, 22.820505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082943, 27.862295, 22.831423>,  <40.329762, 28.306305, 22.280416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082943, 27.862295, 22.831423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.330524, 28.087481, 23.050503>,  <40.479073, 28.222591, 23.181950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.330524, 28.087481, 23.050503>,  <40.082943, 27.862295, 22.831423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330524, 28.087481, 23.050503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693960, 0.065379, 0.717040,
		0.367859, -0.823892, 0.431140,
		0.618950, 0.562964, 0.547697,
		40.516209, 28.256369, 23.214811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949749, 27.597507, 23.413734>,  <40.082943, 27.862295, 22.831423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949749, 27.597507, 23.413734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142620, 27.933823, 23.512186>,  <40.258343, 28.135611, 23.571257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142620, 27.933823, 23.512186>,  <39.949749, 27.597507, 23.413734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142620, 27.933823, 23.512186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595895, 0.108823, 0.795655,
		0.642191, -0.530317, 0.553493,
		0.482182, 0.840786, 0.246128,
		40.287273, 28.186058, 23.586025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233223, 27.555626, 24.065981>,  <39.949749, 27.597507, 23.413734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233223, 27.555626, 24.065981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187691, 27.949390, 24.012350>,  <40.160374, 28.185650, 23.980171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187691, 27.949390, 24.012350>,  <40.233223, 27.555626, 24.065981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187691, 27.949390, 24.012350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613231, 0.036562, 0.789057,
		0.781659, 0.172037, 0.599510,
		-0.113828, 0.984411, -0.134078,
		40.153542, 28.244715, 23.972126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134777, 27.817608, 24.772951>,  <40.233223, 27.555626, 24.065981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134777, 27.817608, 24.772951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004200, 28.121668, 24.548235>,  <39.925854, 28.304104, 24.413406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004200, 28.121668, 24.548235>,  <40.134777, 27.817608, 24.772951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004200, 28.121668, 24.548235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699419, 0.205535, 0.684521,
		0.635806, 0.616381, 0.464569,
		-0.326441, 0.760151, -0.561789,
		39.906269, 28.349712, 24.379698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.415905, 27.380323, 29.545237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.562531, 27.747763, 29.486162>,  <38.650505, 27.968225, 29.450718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.562531, 27.747763, 29.486162>,  <38.415905, 27.380323, 29.545237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562531, 27.747763, 29.486162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416048, 0.303819, 0.857087,
		0.832187, -0.252732, 0.493549,
		0.366563, 0.918597, -0.147686,
		38.672501, 28.023342, 29.441856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876595, 27.523464, 30.088106>,  <38.415905, 27.380323, 29.545237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876595, 27.523464, 30.088106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773857, 27.886854, 29.956226>,  <38.712215, 28.104889, 29.877098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773857, 27.886854, 29.956226>,  <38.876595, 27.523464, 30.088106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773857, 27.886854, 29.956226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396771, 0.211949, 0.893113,
		0.881250, 0.360210, 0.306018,
		-0.256848, 0.908475, -0.329701,
		38.696804, 28.159397, 29.857317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009872, 28.035606, 30.702051>,  <38.876595, 27.523464, 30.088106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009872, 28.035606, 30.702051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.767509, 28.211864, 30.437111>,  <38.622093, 28.317619, 30.278147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.767509, 28.211864, 30.437111>,  <39.009872, 28.035606, 30.702051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767509, 28.211864, 30.437111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436291, 0.512153, 0.739831,
		0.665229, 0.737245, -0.118066,
		-0.605904, 0.440646, -0.662353,
		38.585739, 28.344059, 30.238405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014462, 28.641930, 30.895617>,  <39.009872, 28.035606, 30.702051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014462, 28.641930, 30.895617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.676701, 28.636036, 30.681414>,  <38.474045, 28.632500, 30.552891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.676701, 28.636036, 30.681414>,  <39.014462, 28.641930, 30.895617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676701, 28.636036, 30.681414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460095, 0.531979, 0.710852,
		0.274407, 0.846629, -0.455982,
		-0.844401, -0.014733, -0.535509,
		38.423382, 28.631617, 30.520761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744629, 29.302366, 30.865629>,  <39.014462, 28.641930, 30.895617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744629, 29.302366, 30.865629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424549, 29.073004, 30.795328>,  <38.232502, 28.935387, 30.753147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424549, 29.073004, 30.795328>,  <38.744629, 29.302366, 30.865629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424549, 29.073004, 30.795328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485282, 0.446874, 0.751535,
		-0.352395, 0.686667, -0.635851,
		-0.800200, -0.573404, -0.175751,
		38.184490, 28.900982, 30.742603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162384, 29.715099, 30.891077>,  <38.744629, 29.302366, 30.865629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162384, 29.715099, 30.891077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018173, 29.347963, 30.957512>,  <37.931644, 29.127682, 30.997372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018173, 29.347963, 30.957512>,  <38.162384, 29.715099, 30.891077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018173, 29.347963, 30.957512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655282, 0.375954, 0.655182,
		-0.663794, 0.127380, -0.736988,
		-0.360531, -0.917841, 0.166086,
		37.910015, 29.072611, 31.007338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503613, 29.859213, 31.038414>,  <38.162384, 29.715099, 30.891077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503613, 29.859213, 31.038414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.554623, 29.484648, 31.169176>,  <37.585228, 29.259909, 31.247633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.554623, 29.484648, 31.169176>,  <37.503613, 29.859213, 31.038414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554623, 29.484648, 31.169176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551769, 0.206908, 0.807924,
		-0.824190, -0.283405, -0.490298,
		0.127523, -0.936414, 0.326905,
		37.592880, 29.203724, 31.267248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847393, 29.693743, 31.110329>,  <37.503613, 29.859213, 31.038414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847393, 29.693743, 31.110329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.101997, 29.485350, 31.337811>,  <37.254761, 29.360313, 31.474300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.101997, 29.485350, 31.337811>,  <36.847393, 29.693743, 31.110329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101997, 29.485350, 31.337811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438294, 0.362396, 0.822537,
		-0.634623, -0.772818, 0.002327,
		0.636515, -0.520981, 0.568707,
		37.292953, 29.329056, 31.508423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396862, 29.531532, 31.727884>,  <36.847393, 29.693743, 31.110329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396862, 29.531532, 31.727884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.741425, 29.386379, 31.870035>,  <36.948162, 29.299288, 31.955326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.741425, 29.386379, 31.870035>,  <36.396862, 29.531532, 31.727884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741425, 29.386379, 31.870035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352760, 0.075964, 0.932625,
		-0.365427, -0.928734, -0.062573,
		0.861408, -0.362880, 0.355379,
		36.999847, 29.277515, 31.976648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398407, 28.964554, 32.040119>,  <36.396862, 29.531532, 31.727884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398407, 28.964554, 32.040119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.705299, 29.145924, 32.221565>,  <36.889435, 29.254745, 32.330433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.705299, 29.145924, 32.221565>,  <36.398407, 28.964554, 32.040119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705299, 29.145924, 32.221565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581015, 0.191827, 0.790964,
		0.271631, -0.870405, 0.410623,
		0.767227, 0.453428, 0.453613,
		36.935467, 29.281950, 32.357651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428684, 28.737194, 32.679523>,  <36.398407, 28.964554, 32.040119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428684, 28.737194, 32.679523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.665337, 29.056076, 32.727592>,  <36.807327, 29.247406, 32.756432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.665337, 29.056076, 32.727592>,  <36.428684, 28.737194, 32.679523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665337, 29.056076, 32.727592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658513, 0.391850, 0.642507,
		0.465122, -0.459257, 0.756799,
		0.591627, 0.797206, 0.120169,
		36.842823, 29.295238, 32.763641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389591, 28.819746, 33.382900>,  <36.428684, 28.737194, 32.679523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389591, 28.819746, 33.382900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540596, 29.162928, 33.243526>,  <36.631199, 29.368837, 33.159904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540596, 29.162928, 33.243526>,  <36.389591, 28.819746, 33.382900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540596, 29.162928, 33.243526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603410, 0.513333, 0.610234,
		0.702414, -0.020122, 0.711485,
		0.377508, 0.857953, -0.348431,
		36.653847, 29.420313, 33.138996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821983, 29.127243, 33.907085>,  <36.389591, 28.819746, 33.382900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821983, 29.127243, 33.907085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.707458, 29.424194, 33.664795>,  <36.638744, 29.602365, 33.519421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.707458, 29.424194, 33.664795>,  <36.821983, 29.127243, 33.907085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707458, 29.424194, 33.664795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571017, 0.375448, 0.730054,
		0.769394, 0.554900, 0.316416,
		-0.286310, 0.742378, -0.605725,
		36.621567, 29.646908, 33.483078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908974, 29.753843, 34.229908>,  <36.821983, 29.127243, 33.907085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908974, 29.753843, 34.229908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608456, 29.800379, 33.970055>,  <36.428146, 29.828300, 33.814144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608456, 29.800379, 33.970055>,  <36.908974, 29.753843, 34.229908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608456, 29.800379, 33.970055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620411, 0.211151, 0.755318,
		0.225042, 0.970505, -0.086460,
		-0.751296, 0.116337, -0.649630,
		36.383068, 29.835279, 33.775166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498611, 29.952915, 34.583759>,  <36.908974, 29.753843, 34.229908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498611, 29.952915, 34.583759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634151, 30.260094, 34.801174>,  <37.715477, 30.444401, 34.931622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634151, 30.260094, 34.801174>,  <37.498611, 29.952915, 34.583759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634151, 30.260094, 34.801174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598410, 0.269879, -0.754368,
		-0.726005, 0.580879, -0.368099,
		0.338854, 0.767949, 0.543537,
		37.735809, 30.490479, 34.964237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602795, 30.539284, 34.109383>,  <37.498611, 29.952915, 34.583759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602795, 30.539284, 34.109383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836979, 30.598455, 34.428219>,  <37.977489, 30.633959, 34.619522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836979, 30.598455, 34.428219>,  <37.602795, 30.539284, 34.109383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836979, 30.598455, 34.428219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736908, 0.312751, -0.599294,
		-0.337945, 0.938245, 0.074091,
		0.585456, 0.147930, 0.797093,
		38.012615, 30.642834, 34.667347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886803, 31.176483, 34.070114>,  <37.602795, 30.539284, 34.109383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886803, 31.176483, 34.070114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.136211, 30.956142, 34.292030>,  <38.285854, 30.823938, 34.425179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.136211, 30.956142, 34.292030>,  <37.886803, 31.176483, 34.070114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136211, 30.956142, 34.292030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775899, 0.348908, -0.525589,
		0.095953, 0.758172, 0.644956,
		0.623517, -0.550853, 0.554786,
		38.323265, 30.790886, 34.458466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516537, 31.630173, 34.126472>,  <37.886803, 31.176483, 34.070114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516537, 31.630173, 34.126472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.682167, 31.291210, 34.259403>,  <38.781548, 31.087833, 34.339161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.682167, 31.291210, 34.259403>,  <38.516537, 31.630173, 34.126472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682167, 31.291210, 34.259403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800431, 0.165149, -0.576225,
		0.433413, 0.504608, 0.746675,
		0.414080, -0.847406, 0.332326,
		38.806393, 31.036989, 34.359100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167873, 31.727570, 34.290577>,  <38.516537, 31.630173, 34.126472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167873, 31.727570, 34.290577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.164936, 31.332598, 34.227421>,  <39.163174, 31.095615, 34.189526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.164936, 31.332598, 34.227421>,  <39.167873, 31.727570, 34.290577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164936, 31.332598, 34.227421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797914, 0.089384, -0.596107,
		0.602726, -0.130365, 0.787227,
		-0.007346, -0.987429, -0.157894,
		39.162731, 31.036369, 34.180054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772503, 31.501112, 34.422569>,  <39.167873, 31.727570, 34.290577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772503, 31.501112, 34.422569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614624, 31.242790, 34.161144>,  <39.519897, 31.087797, 34.004288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614624, 31.242790, 34.161144>,  <39.772503, 31.501112, 34.422569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614624, 31.242790, 34.161144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811021, 0.089415, -0.578144,
		0.431806, -0.758250, 0.488468,
		-0.394701, -0.645803, -0.653566,
		39.496212, 31.049049, 33.965073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295620, 31.167067, 34.121902>,  <39.772503, 31.501112, 34.422569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295620, 31.167067, 34.121902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.005260, 31.077471, 33.861782>,  <39.831043, 31.023714, 33.705708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.005260, 31.077471, 33.861782>,  <40.295620, 31.167067, 34.121902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005260, 31.077471, 33.861782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670009, -0.016641, -0.742166,
		0.155416, -0.974450, 0.162155,
		-0.725902, -0.223989, -0.650304,
		39.787491, 31.010275, 33.666691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664902, 30.826468, 33.578060>,  <40.295620, 31.167067, 34.121902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664902, 30.826468, 33.578060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306847, 30.917976, 33.425014>,  <40.092014, 30.972881, 33.333187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306847, 30.917976, 33.425014>,  <40.664902, 30.826468, 33.578060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306847, 30.917976, 33.425014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409476, 0.082609, -0.908573,
		-0.176248, -0.969969, -0.167623,
		-0.895135, 0.228772, -0.382619,
		40.038307, 30.986609, 33.310230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523788, 30.305040, 33.030922>,  <40.664902, 30.826468, 33.578060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523788, 30.305040, 33.030922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333084, 30.644754, 32.940224>,  <40.218662, 30.848583, 32.885803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333084, 30.644754, 32.940224>,  <40.523788, 30.305040, 33.030922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333084, 30.644754, 32.940224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291167, -0.090813, -0.952352,
		-0.829412, -0.520061, -0.203989,
		-0.476757, 0.849288, -0.226747,
		40.190056, 30.899540, 32.872200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190342, 30.207544, 32.472157>,  <40.523788, 30.305040, 33.030922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190342, 30.207544, 32.472157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158020, 30.606236, 32.471031>,  <40.138626, 30.845449, 32.470356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158020, 30.606236, 32.471031>,  <40.190342, 30.207544, 32.472157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158020, 30.606236, 32.471031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149412, 0.009322, -0.988731,
		-0.985468, -0.080314, -0.149677,
		-0.080804, 0.996726, -0.002814,
		40.133778, 30.905252, 32.470188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811878, 30.384584, 31.916355>,  <40.190342, 30.207544, 32.472157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811878, 30.384584, 31.916355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.004856, 30.724976, 31.999386>,  <40.120644, 30.929211, 32.049206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.004856, 30.724976, 31.999386>,  <39.811878, 30.384584, 31.916355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004856, 30.724976, 31.999386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262358, 0.085716, -0.961156,
		-0.835715, 0.518160, -0.181907,
		0.482441, 0.850977, 0.207577,
		40.149590, 30.980268, 32.061661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551167, 30.838825, 31.494652>,  <39.811878, 30.384584, 31.916355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551167, 30.838825, 31.494652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918915, 30.965605, 31.587858>,  <40.139565, 31.041674, 31.643782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918915, 30.965605, 31.587858>,  <39.551167, 30.838825, 31.494652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918915, 30.965605, 31.587858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172006, 0.208834, -0.962706,
		-0.353793, 0.925165, 0.137479,
		0.919372, 0.316951, 0.233018,
		40.194725, 31.060690, 31.657763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690548, 31.355026, 30.905542>,  <39.551167, 30.838825, 31.494652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690548, 31.355026, 30.905542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.045185, 31.289717, 31.078653>,  <40.257965, 31.250530, 31.182520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.045185, 31.289717, 31.078653>,  <39.690548, 31.355026, 30.905542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045185, 31.289717, 31.078653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462202, 0.276247, -0.842649,
		0.018030, 0.947116, 0.320385,
		0.886591, -0.163276, 0.432778,
		40.311161, 31.240734, 31.208487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033279, 31.813498, 30.649120>,  <39.690548, 31.355026, 30.905542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033279, 31.813498, 30.649120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316719, 31.561123, 30.775488>,  <40.486782, 31.409698, 30.851309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316719, 31.561123, 30.775488>,  <40.033279, 31.813498, 30.649120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316719, 31.561123, 30.775488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567833, 0.244115, -0.786113,
		0.418865, 0.736430, 0.531246,
		0.708602, -0.630934, 0.315918,
		40.529301, 31.371843, 30.870264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085930, 32.567978, 30.829226>,  <40.033279, 31.813498, 30.649120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085930, 32.567978, 30.829226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957104, 32.859196, 30.587162>,  <39.879807, 33.033928, 30.441923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957104, 32.859196, 30.587162>,  <40.085930, 32.567978, 30.829226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957104, 32.859196, 30.587162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828071, 0.093195, 0.552823,
		0.458880, 0.679163, 0.572859,
		-0.322070, 0.728047, -0.605160,
		39.860481, 33.077610, 30.405615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876495, 33.120430, 31.273558>,  <40.085930, 32.567978, 30.829226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876495, 33.120430, 31.273558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.670891, 33.199306, 30.939634>,  <39.547527, 33.246632, 30.739281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.670891, 33.199306, 30.939634>,  <39.876495, 33.120430, 31.273558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670891, 33.199306, 30.939634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791930, 0.264867, 0.550175,
		0.329604, 0.943907, 0.020017,
		-0.514012, 0.197192, -0.834809,
		39.516685, 33.258465, 30.689192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537861, 33.772991, 31.375658>,  <39.876495, 33.120430, 31.273558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537861, 33.772991, 31.375658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339916, 33.616116, 31.065483>,  <39.221149, 33.521992, 30.879379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339916, 33.616116, 31.065483>,  <39.537861, 33.772991, 31.375658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339916, 33.616116, 31.065483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868279, 0.187522, 0.459267,
		-0.034708, 0.900568, -0.433327,
		-0.494860, -0.392189, -0.775436,
		39.191460, 33.498459, 30.832851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032188, 34.215382, 31.330027>,  <39.537861, 33.772991, 31.375658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032188, 34.215382, 31.330027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900848, 33.900444, 31.121307>,  <38.822044, 33.711483, 30.996075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900848, 33.900444, 31.121307>,  <39.032188, 34.215382, 31.330027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900848, 33.900444, 31.121307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929341, 0.170538, 0.327478,
		-0.168851, 0.592457, -0.787708,
		-0.328351, -0.787345, -0.521799,
		38.802341, 33.664242, 30.964767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462711, 34.374737, 31.148746>,  <39.032188, 34.215382, 31.330027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462711, 34.374737, 31.148746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.402939, 33.982681, 31.096601>,  <38.367077, 33.747448, 31.065313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.402939, 33.982681, 31.096601>,  <38.462711, 34.374737, 31.148746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402939, 33.982681, 31.096601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961845, 0.113532, 0.248926,
		-0.229182, 0.162587, -0.959709,
		-0.149430, -0.980141, -0.130365,
		38.358109, 33.688641, 31.057491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867840, 34.209381, 30.644049>,  <38.462711, 34.374737, 31.148746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867840, 34.209381, 30.644049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909924, 33.892868, 30.884981>,  <37.935173, 33.702961, 31.029541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909924, 33.892868, 30.884981>,  <37.867840, 34.209381, 30.644049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909924, 33.892868, 30.884981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989288, -0.021651, 0.144363,
		-0.101190, -0.611068, -0.785083,
		0.105214, -0.791282, 0.602332,
		37.941486, 33.655483, 31.065681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354832, 33.781082, 30.475027>,  <37.867840, 34.209381, 30.644049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354832, 33.781082, 30.475027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485497, 33.671822, 30.836952>,  <37.563896, 33.606266, 31.054108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485497, 33.671822, 30.836952>,  <37.354832, 33.781082, 30.475027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485497, 33.671822, 30.836952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936177, 0.038037, 0.349465,
		-0.129873, -0.961219, -0.243293,
		0.326658, -0.273151, 0.904810,
		37.583492, 33.589878, 31.108395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916195, 33.264931, 30.615465>,  <37.354832, 33.781082, 30.475027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916195, 33.264931, 30.615465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.065067, 33.368900, 30.971874>,  <37.154388, 33.431282, 31.185720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.065067, 33.368900, 30.971874>,  <36.916195, 33.264931, 30.615465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065067, 33.368900, 30.971874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925102, 0.025993, 0.378828,
		0.075307, -0.965279, 0.250131,
		0.372177, 0.259925, 0.891024,
		37.176720, 33.446880, 31.239182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630302, 32.725441, 31.120806>,  <36.916195, 33.264931, 30.615465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630302, 32.725441, 31.120806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.728344, 33.049477, 31.333855>,  <36.787167, 33.243896, 31.461683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.728344, 33.049477, 31.333855>,  <36.630302, 32.725441, 31.120806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728344, 33.049477, 31.333855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924295, 0.029456, 0.380540,
		0.292582, -0.585569, 0.755979,
		0.245100, 0.810087, 0.532620,
		36.801872, 33.292503, 31.493641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204979, 32.676323, 31.662025>,  <36.630302, 32.725441, 31.120806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204979, 32.676323, 31.662025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.349236, 33.047771, 31.696896>,  <36.435791, 33.270641, 31.717817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.349236, 33.047771, 31.696896>,  <36.204979, 32.676323, 31.662025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349236, 33.047771, 31.696896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900956, 0.322668, 0.290109,
		0.241273, -0.183167, 0.953015,
		0.360646, 0.928620, 0.087174,
		36.457428, 33.326359, 31.723047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926365, 32.961060, 32.271252>,  <36.204979, 32.676323, 31.662025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926365, 32.961060, 32.271252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.010380, 33.287491, 32.055882>,  <36.060787, 33.483349, 31.926659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.010380, 33.287491, 32.055882>,  <35.926365, 32.961060, 32.271252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010380, 33.287491, 32.055882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873389, 0.404119, 0.271809,
		0.439406, 0.413168, 0.797631,
		0.210035, 0.816076, -0.538429,
		36.073391, 33.532314, 31.894354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677254, 33.579124, 32.722633>,  <35.926365, 32.961060, 32.271252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677254, 33.579124, 32.722633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.712666, 33.705215, 32.344681>,  <35.733913, 33.780869, 32.117908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.712666, 33.705215, 32.344681>,  <35.677254, 33.579124, 32.722633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712666, 33.705215, 32.344681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874101, 0.479432, 0.078052,
		0.477608, 0.819010, 0.317983,
		0.088526, 0.315228, -0.944878,
		35.739223, 33.799782, 32.061218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.153873, 33.247906, 28.086262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817741, 33.230389, 27.870140>,  <42.616062, 33.219879, 27.740467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817741, 33.230389, 27.870140>,  <43.153873, 33.247906, 28.086262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817741, 33.230389, 27.870140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502403, 0.437205, 0.745951,
		0.203559, 0.898295, -0.389396,
		-0.840330, -0.043789, -0.540304,
		42.565643, 33.217251, 27.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761887, 33.852322, 28.327232>,  <43.153873, 33.247906, 28.086262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761887, 33.852322, 28.327232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497795, 33.615784, 28.142012>,  <42.339340, 33.473862, 28.030880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497795, 33.615784, 28.142012>,  <42.761887, 33.852322, 28.327232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497795, 33.615784, 28.142012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638600, 0.117461, 0.760521,
		-0.395338, 0.797820, -0.455183,
		-0.660225, -0.591343, -0.463051,
		42.299728, 33.438381, 28.003096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208698, 34.199436, 28.468096>,  <42.761887, 33.852322, 28.327232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208698, 34.199436, 28.468096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077106, 33.832481, 28.378490>,  <41.998154, 33.612309, 28.324728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077106, 33.832481, 28.378490>,  <42.208698, 34.199436, 28.468096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077106, 33.832481, 28.378490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646277, 0.045753, 0.761730,
		-0.688550, 0.395365, -0.607935,
		-0.328977, -0.917384, -0.224012,
		41.978413, 33.557266, 28.311287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457214, 34.328445, 28.513126>,  <42.208698, 34.199436, 28.468096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457214, 34.328445, 28.513126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506451, 33.931973, 28.532751>,  <41.535992, 33.694088, 28.544525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506451, 33.931973, 28.532751>,  <41.457214, 34.328445, 28.513126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506451, 33.931973, 28.532751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754254, -0.061310, 0.653714,
		-0.644941, -0.117471, -0.755150,
		0.123090, -0.991182, 0.049062,
		41.543377, 33.634617, 28.547470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818428, 33.960735, 28.387806>,  <41.457214, 34.328445, 28.513126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818428, 33.960735, 28.387806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040016, 33.694008, 28.587194>,  <41.172970, 33.533970, 28.706827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040016, 33.694008, 28.587194>,  <40.818428, 33.960735, 28.387806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040016, 33.694008, 28.587194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736344, -0.113054, 0.667095,
		-0.388478, -0.736595, -0.553637,
		0.553970, -0.666819, 0.498468,
		41.206207, 33.493961, 28.736734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292927, 33.617893, 28.749393>,  <40.818428, 33.960735, 28.387806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292927, 33.617893, 28.749393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615402, 33.466377, 28.931192>,  <40.808887, 33.375469, 29.040272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615402, 33.466377, 28.931192>,  <40.292927, 33.617893, 28.749393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615402, 33.466377, 28.931192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568161, -0.281338, 0.773332,
		-0.165061, -0.881685, -0.442026,
		0.806194, -0.378789, 0.454501,
		40.857262, 33.352741, 29.067543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267815, 32.880783, 28.773666>,  <40.292927, 33.617893, 28.749393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267815, 32.880783, 28.773666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469505, 33.032726, 29.083881>,  <40.590519, 33.123894, 29.270010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469505, 33.032726, 29.083881>,  <40.267815, 32.880783, 28.773666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469505, 33.032726, 29.083881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768154, -0.213043, 0.603781,
		0.394576, -0.900176, 0.184369,
		0.504231, 0.379862, 0.775536,
		40.620773, 33.146687, 29.316542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160725, 32.369774, 29.325882>,  <40.267815, 32.880783, 28.773666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160725, 32.369774, 29.325882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270626, 32.706715, 29.511332>,  <40.336567, 32.908878, 29.622601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270626, 32.706715, 29.511332>,  <40.160725, 32.369774, 29.325882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270626, 32.706715, 29.511332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809957, -0.057078, 0.583705,
		0.518150, -0.535891, 0.666590,
		0.274754, 0.842355, 0.463624,
		40.353054, 32.959423, 29.650419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214317, 32.316395, 30.120916>,  <40.160725, 32.369774, 29.325882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214317, 32.316395, 30.120916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141888, 32.699577, 30.031887>,  <40.098431, 32.929485, 29.978470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141888, 32.699577, 30.031887>,  <40.214317, 32.316395, 30.120916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141888, 32.699577, 30.031887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841622, -0.033848, 0.539006,
		0.508809, 0.284921, 0.812363,
		-0.181071, 0.957953, -0.222574,
		40.087566, 32.986965, 29.965115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712254, 32.122723, 30.509434>,  <40.214317, 32.316395, 30.120916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712254, 32.122723, 30.509434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773945, 31.728621, 30.539047>,  <40.810959, 31.492159, 30.556816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773945, 31.728621, 30.539047>,  <40.712254, 32.122723, 30.509434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773945, 31.728621, 30.539047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409900, -0.004373, -0.912120,
		0.898997, 0.171022, 0.403183,
		0.154229, -0.985258, 0.074033,
		40.820213, 31.433043, 30.561256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483746, 31.962318, 30.331400>,  <40.712254, 32.122723, 30.509434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483746, 31.962318, 30.331400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288773, 31.615622, 30.289118>,  <41.171791, 31.407604, 30.263748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288773, 31.615622, 30.289118>,  <41.483746, 31.962318, 30.331400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288773, 31.615622, 30.289118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282382, -0.041921, -0.958385,
		0.826241, -0.496993, 0.265186,
		-0.487428, -0.866741, -0.105705,
		41.142544, 31.355598, 30.257406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054745, 31.430784, 30.119867>,  <41.483746, 31.962318, 30.331400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054745, 31.430784, 30.119867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707161, 31.263889, 30.013420>,  <41.498611, 31.163752, 29.949553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707161, 31.263889, 30.013420>,  <42.054745, 31.430784, 30.119867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707161, 31.263889, 30.013420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420807, -0.339982, -0.841032,
		0.260436, -0.842808, 0.471008,
		-0.868962, -0.417238, -0.266116,
		41.446472, 31.138718, 29.933586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246525, 30.811348, 29.907549>,  <42.054745, 31.430784, 30.119867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246525, 30.811348, 29.907549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891987, 30.886391, 29.738226>,  <41.679264, 30.931417, 29.636633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891987, 30.886391, 29.738226>,  <42.246525, 30.811348, 29.907549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891987, 30.886391, 29.738226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313782, -0.428897, -0.847106,
		-0.340478, -0.883658, 0.321285,
		-0.886349, 0.187608, -0.423306,
		41.626083, 30.942673, 29.611235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040604, 30.227272, 29.533459>,  <42.246525, 30.811348, 29.907549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040604, 30.227272, 29.533459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802113, 30.488075, 29.346098>,  <41.659019, 30.644558, 29.233683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802113, 30.488075, 29.346098>,  <42.040604, 30.227272, 29.533459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802113, 30.488075, 29.346098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261336, -0.394041, -0.881156,
		-0.759089, -0.647779, 0.064545,
		-0.596228, 0.652008, -0.468400,
		41.623245, 30.683678, 29.205578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618999, 29.838425, 29.110418>,  <42.040604, 30.227272, 29.533459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618999, 29.838425, 29.110418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631912, 30.203892, 28.948347>,  <41.639660, 30.423172, 28.851105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631912, 30.203892, 28.948347>,  <41.618999, 29.838425, 29.110418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631912, 30.203892, 28.948347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304291, -0.395129, -0.866764,
		-0.952032, -0.095311, -0.290777,
		0.032282, 0.913668, -0.405177,
		41.641598, 30.477993, 28.826794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518848, 29.729803, 28.479961>,  <41.618999, 29.838425, 29.110418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518848, 29.729803, 28.479961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664833, 30.102196, 28.476496>,  <41.752426, 30.325632, 28.474417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664833, 30.102196, 28.476496>,  <41.518848, 29.729803, 28.479961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664833, 30.102196, 28.476496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429440, -0.176592, -0.885662,
		-0.826065, 0.319514, -0.464250,
		0.364964, 0.930981, -0.008664,
		41.774323, 30.381491, 28.473896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538300, 29.903717, 27.729834>,  <41.518848, 29.729803, 28.479961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538300, 29.903717, 27.729834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772984, 30.162956, 27.924047>,  <41.913795, 30.318499, 28.040575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772984, 30.162956, 27.924047>,  <41.538300, 29.903717, 27.729834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772984, 30.162956, 27.924047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694642, -0.094608, -0.713107,
		-0.416226, 0.755660, -0.505702,
		0.586710, 0.648095, 0.485534,
		41.948997, 30.357386, 28.069708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838631, 30.241098, 27.213673>,  <41.538300, 29.903717, 27.729834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838631, 30.241098, 27.213673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076435, 30.348146, 27.516970>,  <42.219120, 30.412376, 27.698948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076435, 30.348146, 27.516970>,  <41.838631, 30.241098, 27.213673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076435, 30.348146, 27.516970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780902, 0.032639, -0.623800,
		-0.191691, 0.962971, -0.189582,
		0.594514, 0.267622, 0.758243,
		42.254787, 30.428432, 27.744442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310818, 30.587860, 26.801155>,  <41.838631, 30.241098, 27.213673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310818, 30.587860, 26.801155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488499, 30.501158, 27.148880>,  <42.595108, 30.449137, 27.357515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488499, 30.501158, 27.148880>,  <42.310818, 30.587860, 26.801155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488499, 30.501158, 27.148880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879987, -0.076668, -0.468770,
		0.168258, 0.973210, 0.156688,
		0.444199, -0.216758, 0.869312,
		42.621758, 30.436131, 27.409674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888912, 31.043623, 26.909636>,  <42.310818, 30.587860, 26.801155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888912, 31.043623, 26.909636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965321, 30.704039, 27.106724>,  <43.011166, 30.500288, 27.224977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965321, 30.704039, 27.106724>,  <42.888912, 31.043623, 26.909636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965321, 30.704039, 27.106724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861237, -0.095876, -0.499078,
		0.470939, 0.519683, 0.712844,
		0.191018, -0.848962, 0.492722,
		43.022625, 30.449350, 27.254539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663979, 31.005089, 27.126526>,  <42.888912, 31.043623, 26.909636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663979, 31.005089, 27.126526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535706, 30.627207, 27.153929>,  <43.458740, 30.400476, 27.170370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535706, 30.627207, 27.153929>,  <43.663979, 31.005089, 27.126526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535706, 30.627207, 27.153929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877716, -0.323573, -0.353432,
		0.356058, -0.053208, 0.932948,
		-0.320682, -0.944706, 0.068509,
		43.439503, 30.343796, 27.174482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186127, 30.582718, 27.591255>,  <43.663979, 31.005089, 27.126526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186127, 30.582718, 27.591255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967937, 30.332972, 27.367603>,  <43.837025, 30.183123, 27.233412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967937, 30.332972, 27.367603>,  <44.186127, 30.582718, 27.591255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967937, 30.332972, 27.367603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837300, -0.435603, -0.330422,
		-0.037254, -0.648395, 0.760392,
		-0.545473, -0.624367, -0.559129,
		43.804295, 30.145662, 27.199865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540031, 29.921059, 27.600748>,  <44.186127, 30.582718, 27.591255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540031, 29.921059, 27.600748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290913, 29.864031, 27.293036>,  <44.141441, 29.829815, 27.108408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290913, 29.864031, 27.293036>,  <44.540031, 29.921059, 27.600748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290913, 29.864031, 27.293036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665285, -0.613935, -0.424828,
		-0.411720, -0.776375, 0.477210,
		-0.622802, -0.142571, -0.769280,
		44.104073, 29.821260, 27.062252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.863247, 31.211817, 21.110752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084278, 31.190832, 21.443476>,  <39.216896, 31.178242, 21.643110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084278, 31.190832, 21.443476>,  <38.863247, 31.211817, 21.110752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084278, 31.190832, 21.443476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829123, 0.067129, 0.555022,
		-0.084961, -0.996364, -0.006410,
		0.552573, -0.052470, 0.831811,
		39.250050, 31.175093, 21.693020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611938, 30.595352, 21.460615>,  <38.863247, 31.211817, 21.110752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611938, 30.595352, 21.460615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785648, 30.812572, 21.748087>,  <38.889874, 30.942904, 21.920570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785648, 30.812572, 21.748087>,  <38.611938, 30.595352, 21.460615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785648, 30.812572, 21.748087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811676, -0.110070, 0.573644,
		0.390621, -0.832456, 0.392979,
		0.434278, 0.543049, 0.718680,
		38.915932, 30.975487, 21.963692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588032, 30.225780, 22.117994>,  <38.611938, 30.595352, 21.460615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588032, 30.225780, 22.117994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613350, 30.614594, 22.208458>,  <38.628540, 30.847881, 22.262735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613350, 30.614594, 22.208458>,  <38.588032, 30.225780, 22.117994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613350, 30.614594, 22.208458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705053, -0.116832, 0.699465,
		0.706325, -0.203724, 0.677939,
		0.063292, 0.972032, 0.226158,
		38.632339, 30.906202, 22.276306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519062, 30.230764, 22.837757>,  <38.588032, 30.225780, 22.117994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519062, 30.230764, 22.837757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451065, 30.613392, 22.743036>,  <38.410267, 30.842968, 22.686205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451065, 30.613392, 22.743036>,  <38.519062, 30.230764, 22.837757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451065, 30.613392, 22.743036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614519, 0.084950, 0.784314,
		0.770369, 0.278848, 0.573390,
		-0.169995, 0.956570, -0.236801,
		38.400066, 30.900364, 22.671995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729992, 30.527102, 23.397064>,  <38.519062, 30.230764, 22.837757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729992, 30.527102, 23.397064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462681, 30.758614, 23.210123>,  <38.302296, 30.897522, 23.097960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462681, 30.758614, 23.210123>,  <38.729992, 30.527102, 23.397064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462681, 30.758614, 23.210123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494077, 0.124342, 0.860481,
		0.556142, 0.805948, 0.202867,
		-0.668277, 0.578781, -0.467352,
		38.262199, 30.932247, 23.069918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707024, 31.067564, 23.805470>,  <38.729992, 30.527102, 23.397064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707024, 31.067564, 23.805470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.372013, 31.100769, 23.589447>,  <38.171005, 31.120693, 23.459833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.372013, 31.100769, 23.589447>,  <38.707024, 31.067564, 23.805470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372013, 31.100769, 23.589447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503618, 0.266102, 0.821924,
		0.211941, 0.960364, -0.181060,
		-0.837526, 0.083014, -0.540054,
		38.120754, 31.125673, 23.427431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400867, 31.713734, 24.039742>,  <38.707024, 31.067564, 23.805470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400867, 31.713734, 24.039742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103634, 31.529289, 23.845753>,  <37.925293, 31.418623, 23.729359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103634, 31.529289, 23.845753>,  <38.400867, 31.713734, 24.039742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103634, 31.529289, 23.845753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619029, 0.198336, 0.759912,
		-0.254217, 0.864892, -0.432822,
		-0.743086, -0.461112, -0.484973,
		37.880707, 31.390955, 23.700260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855499, 32.238174, 23.922333>,  <38.400867, 31.713734, 24.039742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855499, 32.238174, 23.922333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700802, 31.869720, 23.904705>,  <37.607983, 31.648649, 23.894129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700802, 31.869720, 23.904705>,  <37.855499, 32.238174, 23.922333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700802, 31.869720, 23.904705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632180, 0.230028, 0.739888,
		-0.671399, 0.314008, -0.671284,
		-0.386745, -0.921133, -0.044069,
		37.584778, 31.593380, 23.891485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147240, 32.337238, 23.974802>,  <37.855499, 32.238174, 23.922333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147240, 32.337238, 23.974802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230267, 31.958464, 24.072971>,  <37.280083, 31.731199, 24.131872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230267, 31.958464, 24.072971>,  <37.147240, 32.337238, 23.974802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230267, 31.958464, 24.072971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592349, 0.077992, 0.801897,
		-0.778485, -0.311820, -0.544728,
		0.207564, -0.946935, 0.245422,
		37.292534, 31.674383, 24.146599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503899, 32.076519, 24.353638>,  <37.147240, 32.337238, 23.974802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503899, 32.076519, 24.353638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787876, 31.814734, 24.457680>,  <36.958263, 31.657663, 24.520105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787876, 31.814734, 24.457680>,  <36.503899, 32.076519, 24.353638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787876, 31.814734, 24.457680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533716, -0.259024, 0.805018,
		-0.459481, -0.710342, -0.533190,
		0.709947, -0.654463, 0.260104,
		37.000862, 31.618395, 24.535711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166359, 31.572851, 24.427099>,  <36.503899, 32.076519, 24.353638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166359, 31.572851, 24.427099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.505035, 31.492163, 24.624048>,  <36.708241, 31.443748, 24.742218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.505035, 31.492163, 24.624048>,  <36.166359, 31.572851, 24.427099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505035, 31.492163, 24.624048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519637, -0.114446, 0.846687,
		-0.114446, -0.972733, -0.201722,
		-0.846687, 0.201722, -0.492370,
		36.759041, 31.431646, 24.771759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107719, 30.939625, 24.849451>,  <36.166359, 31.572851, 24.427099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107719, 30.939625, 24.849451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413242, 31.131922, 25.021725>,  <36.596554, 31.247299, 25.125090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413242, 31.131922, 25.021725>,  <36.107719, 30.939625, 24.849451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413242, 31.131922, 25.021725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430463, -0.117790, 0.894890,
		0.480940, -0.868916, 0.116972,
		0.763806, 0.480740, 0.430685,
		36.642384, 31.276144, 25.150930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155270, 30.619591, 25.479582>,  <36.107719, 30.939625, 24.849451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155270, 30.619591, 25.479582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379906, 30.946621, 25.530476>,  <36.514687, 31.142839, 25.561012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379906, 30.946621, 25.530476>,  <36.155270, 30.619591, 25.479582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379906, 30.946621, 25.530476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369345, 0.110100, 0.922747,
		0.740409, -0.565194, 0.363799,
		0.561586, 0.817578, 0.127232,
		36.548382, 31.191895, 25.568645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408230, 30.541908, 26.199806>,  <36.155270, 30.619591, 25.479582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408230, 30.541908, 26.199806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407761, 30.930115, 26.103394>,  <36.407478, 31.163038, 26.045546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407761, 30.930115, 26.103394>,  <36.408230, 30.541908, 26.199806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407761, 30.930115, 26.103394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422602, 0.217970, 0.879714,
		0.906315, 0.102888, 0.409887,
		-0.001169, 0.970517, -0.241030,
		36.407410, 31.221270, 26.031084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027084, 30.338135, 26.684326>,  <36.408230, 30.541908, 26.199806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027084, 30.338135, 26.684326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098633, 29.986034, 26.860128>,  <37.141560, 29.774775, 26.965611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098633, 29.986034, 26.860128>,  <37.027084, 30.338135, 26.684326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098633, 29.986034, 26.860128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673041, -0.216365, -0.707249,
		0.717650, 0.422311, 0.553744,
		0.178868, -0.880250, 0.439507,
		37.152294, 29.721960, 26.991982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754669, 30.240522, 26.656355>,  <37.027084, 30.338135, 26.684326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754669, 30.240522, 26.656355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609650, 29.877419, 26.740761>,  <37.522636, 29.659555, 26.791405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609650, 29.877419, 26.740761>,  <37.754669, 30.240522, 26.656355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609650, 29.877419, 26.740761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678254, -0.412284, -0.608271,
		0.639162, -0.077409, 0.765166,
		-0.362552, -0.907761, 0.211014,
		37.500885, 29.605091, 26.804066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338135, 29.818577, 26.922424>,  <37.754669, 30.240522, 26.656355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338135, 29.818577, 26.922424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070545, 29.559660, 26.776281>,  <37.909992, 29.404310, 26.688595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070545, 29.559660, 26.776281>,  <38.338135, 29.818577, 26.922424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070545, 29.559660, 26.776281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724618, -0.458472, -0.514521,
		0.165540, -0.608947, 0.775745,
		-0.668973, -0.647293, -0.365358,
		37.869854, 29.365473, 26.666674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627308, 29.115189, 27.041615>,  <38.338135, 29.818577, 26.922424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627308, 29.115189, 27.041615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354885, 29.069817, 26.752256>,  <38.191433, 29.042593, 26.578642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354885, 29.069817, 26.752256>,  <38.627308, 29.115189, 27.041615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354885, 29.069817, 26.752256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669083, -0.497760, -0.551872,
		-0.297478, -0.859866, 0.414895,
		-0.681054, -0.113430, -0.723394,
		38.150570, 29.035788, 26.535238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623833, 28.499884, 26.705633>,  <38.627308, 29.115189, 27.041615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623833, 28.499884, 26.705633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.465908, 28.739384, 26.426888>,  <38.371151, 28.883083, 26.259640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.465908, 28.739384, 26.426888>,  <38.623833, 28.499884, 26.705633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465908, 28.739384, 26.426888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643585, -0.361061, -0.674858,
		-0.655682, -0.714934, -0.242796,
		-0.394815, 0.598753, -0.696862,
		38.347462, 28.919010, 26.217829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660290, 28.125366, 26.089115>,  <38.623833, 28.499884, 26.705633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660290, 28.125366, 26.089115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607365, 28.490658, 25.934967>,  <38.575611, 28.709833, 25.842478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607365, 28.490658, 25.934967>,  <38.660290, 28.125366, 26.089115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607365, 28.490658, 25.934967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460668, -0.287593, -0.839688,
		-0.877655, -0.288630, -0.382642,
		-0.132314, 0.913227, -0.385370,
		38.567669, 28.764626, 25.819357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574696, 27.981459, 25.418451>,  <38.660290, 28.125366, 26.089115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574696, 27.981459, 25.418451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653332, 28.372837, 25.443724>,  <38.700516, 28.607664, 25.458887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653332, 28.372837, 25.443724>,  <38.574696, 27.981459, 25.418451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653332, 28.372837, 25.443724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574371, -0.062700, -0.816190,
		-0.794638, 0.196747, -0.574318,
		0.196593, 0.978447, 0.063182,
		38.712311, 28.666370, 25.462679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302517, 28.277531, 24.729258>,  <38.574696, 27.981459, 25.418451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302517, 28.277531, 24.729258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.582047, 28.533773, 24.856552>,  <38.749763, 28.687519, 24.932928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.582047, 28.533773, 24.856552>,  <38.302517, 28.277531, 24.729258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582047, 28.533773, 24.856552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419804, -0.007088, -0.907587,
		-0.579149, 0.767838, -0.273881,
		0.698821, 0.640604, 0.318237,
		38.791695, 28.725954, 24.952023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509480, 28.574203, 24.226280>,  <38.302517, 28.277531, 24.729258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509480, 28.574203, 24.226280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828377, 28.644037, 24.457426>,  <39.019714, 28.685938, 24.596113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828377, 28.644037, 24.457426>,  <38.509480, 28.574203, 24.226280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828377, 28.644037, 24.457426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589328, -0.017743, -0.807699,
		-0.130757, 0.984483, -0.117031,
		0.797243, 0.174582, 0.577863,
		39.067551, 28.696411, 24.630785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876575, 28.977007, 23.840448>,  <38.509480, 28.574203, 24.226280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876575, 28.977007, 23.840448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156387, 28.907970, 24.117828>,  <39.324272, 28.866549, 24.284256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156387, 28.907970, 24.117828>,  <38.876575, 28.977007, 23.840448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156387, 28.907970, 24.117828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714373, 0.144120, -0.684764,
		0.018244, 0.974393, 0.224109,
		0.699528, -0.172590, 0.693450,
		39.366245, 28.856194, 24.325863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440216, 29.402363, 23.729019>,  <38.876575, 28.977007, 23.840448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440216, 29.402363, 23.729019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.582836, 29.086012, 23.927969>,  <39.668407, 28.896200, 24.047338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.582836, 29.086012, 23.927969>,  <39.440216, 29.402363, 23.729019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582836, 29.086012, 23.927969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719819, -0.106834, -0.685892,
		0.595594, 0.602575, 0.531199,
		0.356551, -0.790880, 0.497374,
		39.689800, 28.848747, 24.077181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123215, 29.529871, 23.767586>,  <39.440216, 29.402363, 23.729019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123215, 29.529871, 23.767586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.114525, 29.134760, 23.829325>,  <40.109310, 28.897694, 23.866367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.114525, 29.134760, 23.829325>,  <40.123215, 29.529871, 23.767586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114525, 29.134760, 23.829325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783427, -0.112726, -0.611175,
		0.621104, 0.107644, 0.776301,
		-0.021720, -0.987778, 0.154346,
		40.108009, 28.838427, 23.875628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787582, 29.314390, 23.871971>,  <40.123215, 29.529871, 23.767586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787582, 29.314390, 23.871971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617744, 28.964750, 23.777594>,  <40.515842, 28.754967, 23.720968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617744, 28.964750, 23.777594>,  <40.787582, 29.314390, 23.871971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617744, 28.964750, 23.777594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815374, -0.255893, -0.519310,
		0.393553, -0.412878, 0.821370,
		-0.424595, -0.874100, -0.235943,
		40.490364, 28.702520, 23.706810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393955, 28.872066, 23.949732>,  <40.787582, 29.314390, 23.871971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393955, 28.872066, 23.949732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.117809, 28.662909, 23.749739>,  <40.952122, 28.537415, 23.629744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.117809, 28.662909, 23.749739>,  <41.393955, 28.872066, 23.949732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117809, 28.662909, 23.749739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716073, -0.395334, -0.575283,
		0.103152, -0.755177, 0.647354,
		-0.690362, -0.522894, -0.499982,
		40.910702, 28.506041, 23.599745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384140, 28.272943, 24.465631>,  <41.393955, 28.872066, 23.949732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384140, 28.272943, 24.465631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.639965, 28.117029, 24.730667>,  <41.793461, 28.023481, 24.889688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.639965, 28.117029, 24.730667>,  <41.384140, 28.272943, 24.465631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639965, 28.117029, 24.730667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708629, 0.035188, 0.704704,
		-0.297998, -0.920234, -0.253707,
		0.639565, -0.389785, 0.662590,
		41.831833, 28.000093, 24.929443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138477, 27.658859, 24.645012>,  <41.384140, 28.272943, 24.465631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138477, 27.658859, 24.645012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.390316, 27.752275, 24.941410>,  <41.541420, 27.808325, 25.119249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.390316, 27.752275, 24.941410>,  <41.138477, 27.658859, 24.645012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390316, 27.752275, 24.941410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771610, 0.076580, 0.631470,
		0.090759, -0.969315, 0.228453,
		0.629588, 0.233588, 0.740983,
		41.579193, 27.822338, 25.163708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725159, 27.411324, 25.199829>,  <41.138477, 27.658859, 24.645012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725159, 27.411324, 25.199829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.019459, 27.609261, 25.384783>,  <41.196041, 27.728022, 25.495754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.019459, 27.609261, 25.384783>,  <40.725159, 27.411324, 25.199829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019459, 27.609261, 25.384783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616107, 0.205571, 0.760364,
		0.281206, -0.844319, 0.456124,
		0.735755, 0.494839, 0.462383,
		41.240185, 27.757713, 25.523497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767700, 27.085089, 25.902052>,  <40.725159, 27.411324, 25.199829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767700, 27.085089, 25.902052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.916203, 27.455587, 25.928102>,  <41.005302, 27.677887, 25.943733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.916203, 27.455587, 25.928102>,  <40.767700, 27.085089, 25.902052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916203, 27.455587, 25.928102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526983, 0.152437, 0.836093,
		0.764500, -0.344722, 0.544708,
		0.371253, 0.926245, 0.065125,
		41.027580, 27.733461, 25.947639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899517, 27.171757, 26.525173>,  <40.767700, 27.085089, 25.902052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899517, 27.171757, 26.525173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.943569, 27.558830, 26.434437>,  <40.970001, 27.791075, 26.379995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.943569, 27.558830, 26.434437>,  <40.899517, 27.171757, 26.525173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943569, 27.558830, 26.434437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145488, 0.241464, 0.959441,
		0.983211, -0.072659, 0.167379,
		0.110128, 0.967686, -0.226839,
		40.976608, 27.849136, 26.366385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493294, 27.430904, 26.824587>,  <40.899517, 27.171757, 26.525173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493294, 27.430904, 26.824587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241772, 27.735857, 26.763420>,  <41.090858, 27.918829, 26.726721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241772, 27.735857, 26.763420>,  <41.493294, 27.430904, 26.824587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241772, 27.735857, 26.763420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107374, 0.109639, 0.988155,
		0.770114, 0.637775, 0.012919,
		-0.628804, 0.762379, -0.152915,
		41.053131, 27.964571, 26.717546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599777, 27.881998, 27.365047>,  <41.493294, 27.430904, 26.824587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599777, 27.881998, 27.365047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241020, 27.999514, 27.232821>,  <41.025764, 28.070023, 27.153484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241020, 27.999514, 27.232821>,  <41.599777, 27.881998, 27.365047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241020, 27.999514, 27.232821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374420, -0.106626, 0.921109,
		0.235364, 0.949905, 0.205632,
		-0.896891, 0.293789, -0.330567,
		40.971954, 28.087650, 27.133650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281906, 28.269382, 27.916521>,  <41.599777, 27.881998, 27.365047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281906, 28.269382, 27.916521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956108, 28.251055, 27.685177>,  <40.760628, 28.240059, 27.546370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956108, 28.251055, 27.685177>,  <41.281906, 28.269382, 27.916521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956108, 28.251055, 27.685177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579272, 0.119751, 0.806290,
		0.032316, 0.991746, -0.124078,
		-0.814494, -0.045819, -0.578360,
		40.711761, 28.237309, 27.511669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918995, 28.869963, 27.952591>,  <41.281906, 28.269382, 27.916521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918995, 28.869963, 27.952591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.668068, 28.569073, 27.871969>,  <40.517509, 28.388538, 27.823597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.668068, 28.569073, 27.871969>,  <40.918995, 28.869963, 27.952591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668068, 28.569073, 27.871969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650251, 0.363534, 0.667096,
		-0.428536, 0.549543, -0.717188,
		-0.627320, -0.752227, -0.201554,
		40.479874, 28.343405, 27.811502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311554, 29.050835, 28.378527>,  <40.918995, 28.869963, 27.952591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311554, 29.050835, 28.378527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.219460, 28.688652, 28.235899>,  <40.164204, 28.471342, 28.150322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.219460, 28.688652, 28.235899>,  <40.311554, 29.050835, 28.378527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219460, 28.688652, 28.235899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736993, -0.077038, 0.671496,
		-0.635480, 0.417388, -0.649579,
		-0.230232, -0.905457, -0.356568,
		40.150391, 28.417015, 28.128929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552906, 29.042484, 28.172697>,  <40.311554, 29.050835, 28.378527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552906, 29.042484, 28.172697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656395, 28.663832, 28.249592>,  <39.718487, 28.436640, 28.295729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656395, 28.663832, 28.249592>,  <39.552906, 29.042484, 28.172697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656395, 28.663832, 28.249592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749495, -0.071184, 0.658172,
		-0.609361, -0.314363, -0.727911,
		0.258721, -0.946630, 0.192237,
		39.734013, 28.379843, 28.307262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977364, 28.730293, 28.089499>,  <39.552906, 29.042484, 28.172697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977364, 28.730293, 28.089499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196068, 28.462997, 28.291292>,  <39.327290, 28.302620, 28.412369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196068, 28.462997, 28.291292>,  <38.977364, 28.730293, 28.089499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196068, 28.462997, 28.291292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765597, -0.155069, 0.624352,
		-0.338987, -0.727605, -0.596388,
		0.546763, -0.668240, 0.504486,
		39.360096, 28.262526, 28.442638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499187, 28.096687, 28.269865>,  <38.977364, 28.730293, 28.089499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499187, 28.096687, 28.269865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.826694, 28.052301, 28.495184>,  <39.023197, 28.025669, 28.630375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.826694, 28.052301, 28.495184>,  <38.499187, 28.096687, 28.269865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826694, 28.052301, 28.495184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572232, -0.237328, 0.785001,
		0.046578, -0.965071, -0.257815,
		0.818768, -0.110966, 0.563299,
		39.072327, 28.019011, 28.664173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448532, 27.414516, 28.744698>,  <38.499187, 28.096687, 28.269865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448532, 27.414516, 28.744698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.680210, 27.706213, 28.890430>,  <38.819218, 27.881231, 28.977871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.680210, 27.706213, 28.890430>,  <38.448532, 27.414516, 28.744698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680210, 27.706213, 28.890430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531295, -0.001279, 0.847186,
		0.618270, -0.684255, 0.386701,
		0.579197, 0.729241, 0.364332,
		38.853970, 27.924986, 28.999729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.513397, 29.076170, 27.438381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.359344, 29.267309, 27.122574>,  <44.266914, 29.381992, 26.933090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.359344, 29.267309, 27.122574>,  <44.513397, 29.076170, 27.438381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359344, 29.267309, 27.122574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553266, -0.565171, -0.611946,
		-0.738629, -0.672491, -0.046714,
		-0.385127, 0.477847, -0.789519,
		44.243805, 29.410664, 26.885717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262337, 28.532923, 27.003353>,  <44.513397, 29.076170, 27.438381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262337, 28.532923, 27.003353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.336033, 28.866106, 26.794649>,  <44.380249, 29.066015, 26.669426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.336033, 28.866106, 26.794649>,  <44.262337, 28.532923, 27.003353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336033, 28.866106, 26.794649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577922, -0.521194, -0.627983,
		-0.795023, -0.185838, -0.577410,
		0.184240, 0.832959, -0.521762,
		44.391304, 29.115993, 26.638121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287941, 28.361292, 26.273012>,  <44.262337, 28.532923, 27.003353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287941, 28.361292, 26.273012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.479038, 28.712587, 26.281590>,  <44.593697, 28.923365, 26.286736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.479038, 28.712587, 26.281590>,  <44.287941, 28.361292, 26.273012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479038, 28.712587, 26.281590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717118, -0.375765, -0.586977,
		-0.507448, 0.295800, -0.809320,
		0.477742, 0.878239, 0.021442,
		44.622360, 28.976059, 26.288023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391773, 28.378132, 25.639521>,  <44.287941, 28.361292, 26.273012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391773, 28.378132, 25.639521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.640163, 28.645758, 25.802855>,  <44.789200, 28.806334, 25.900856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.640163, 28.645758, 25.802855>,  <44.391773, 28.378132, 25.639521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640163, 28.645758, 25.802855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748978, -0.352878, -0.560812,
		-0.231126, 0.654087, -0.720244,
		0.620978, 0.669065, 0.408337,
		44.826458, 28.846478, 25.925356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695412, 28.773937, 25.069874>,  <44.391773, 28.378132, 25.639521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695412, 28.773937, 25.069874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.942211, 28.802258, 25.383385>,  <45.090290, 28.819250, 25.571491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.942211, 28.802258, 25.383385>,  <44.695412, 28.773937, 25.069874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942211, 28.802258, 25.383385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786955, -0.060947, -0.613993,
		0.004296, 0.995627, -0.093322,
		0.616996, 0.070802, 0.783775,
		45.127312, 28.823498, 25.618517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092411, 29.123293, 24.776936>,  <44.695412, 28.773937, 25.069874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092411, 29.123293, 24.776936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.291843, 28.976425, 25.091034>,  <45.411503, 28.888306, 25.279493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.291843, 28.976425, 25.091034>,  <45.092411, 29.123293, 24.776936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291843, 28.976425, 25.091034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821616, -0.088623, -0.563110,
		0.276347, 0.925923, 0.257486,
		0.498578, -0.367168, 0.785244,
		45.441418, 28.866274, 25.326607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.778149, 29.403488, 24.672462>,  <45.092411, 29.123293, 24.776936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.778149, 29.403488, 24.672462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.824257, 29.098375, 24.926983>,  <45.851921, 28.915308, 25.079695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.824257, 29.098375, 24.926983>,  <45.778149, 29.403488, 24.672462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824257, 29.098375, 24.926983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949252, -0.104126, -0.296781,
		0.292634, 0.638220, 0.712068,
		0.115267, -0.762780, 0.636302,
		45.858837, 28.869541, 25.117874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462109, 29.546556, 25.062963>,  <45.778149, 29.403488, 24.672462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462109, 29.546556, 25.062963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.343227, 29.164663, 25.067989>,  <46.271896, 28.935528, 25.071005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.343227, 29.164663, 25.067989>,  <46.462109, 29.546556, 25.062963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343227, 29.164663, 25.067989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886490, -0.280804, -0.367811,
		0.354689, -0.098177, 0.929816,
		-0.297206, -0.954731, 0.012565,
		46.254066, 28.878244, 25.071758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072155, 29.225260, 25.164621>,  <46.462109, 29.546556, 25.062963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072155, 29.225260, 25.164621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.837906, 28.911592, 25.082521>,  <46.697357, 28.723392, 25.033260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.837906, 28.911592, 25.082521>,  <47.072155, 29.225260, 25.164621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837906, 28.911592, 25.082521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748318, -0.425694, -0.508728,
		0.311553, -0.451516, 0.836103,
		-0.585623, -0.784167, -0.205252,
		46.662220, 28.676342, 25.020947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375717, 28.549313, 25.379858>,  <47.072155, 29.225260, 25.164621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375717, 28.549313, 25.379858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.128277, 28.490797, 25.071072>,  <46.979813, 28.455688, 24.885799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.128277, 28.490797, 25.071072>,  <47.375717, 28.549313, 25.379858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.128277, 28.490797, 25.071072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720537, -0.497404, -0.483130,
		-0.313302, -0.855095, 0.413102,
		-0.618601, -0.146290, -0.771966,
		46.942696, 28.446911, 24.839481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.564846, 27.896774, 25.087894>,  <47.375717, 28.549313, 25.379858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.564846, 27.896774, 25.087894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.336002, 28.047503, 24.796497>,  <47.198696, 28.137939, 24.621660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.336002, 28.047503, 24.796497>,  <47.564846, 27.896774, 25.087894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336002, 28.047503, 24.796497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656611, -0.321822, -0.682124,
		-0.491485, -0.868582, -0.063310,
		-0.572106, 0.376823, -0.728491,
		47.164371, 28.160549, 24.577950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504639, 27.369658, 24.684607>,  <47.564846, 27.896774, 25.087894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504639, 27.369658, 24.684607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.445515, 27.700584, 24.467831>,  <47.410042, 27.899139, 24.337765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.445515, 27.700584, 24.467831>,  <47.504639, 27.369658, 24.684607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445515, 27.700584, 24.467831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574912, -0.373998, -0.727737,
		-0.804754, -0.419134, -0.420354,
		-0.147808, 0.827316, -0.541942,
		47.401173, 27.948780, 24.305248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.321056, 27.123562, 24.051935>,  <47.504639, 27.369658, 24.684607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.321056, 27.123562, 24.051935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.437473, 27.498056, 23.973188>,  <47.507324, 27.722754, 23.925941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.437473, 27.498056, 23.973188>,  <47.321056, 27.123562, 24.051935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.437473, 27.498056, 23.973188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530909, -0.329235, -0.780858,
		-0.795882, 0.122746, -0.592878,
		0.291044, 0.936236, -0.196866,
		47.524788, 27.778927, 23.914129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132652, 27.331427, 23.388149>,  <47.321056, 27.123562, 24.051935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132652, 27.331427, 23.388149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.474312, 27.482206, 23.531450>,  <47.679306, 27.572674, 23.617430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.474312, 27.482206, 23.531450>,  <47.132652, 27.331427, 23.388149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.474312, 27.482206, 23.531450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511977, -0.488762, -0.706393,
		-0.091174, 0.786780, -0.610463,
		0.854147, 0.376947, 0.358251,
		47.730556, 27.595291, 23.638926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537155, 27.153330, 22.795258>,  <47.132652, 27.331427, 23.388149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537155, 27.153330, 22.795258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.485065, 27.119673, 22.400095>,  <46.453812, 27.099478, 22.162996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.485065, 27.119673, 22.400095>,  <46.537155, 27.153330, 22.795258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485065, 27.119673, 22.400095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989540, 0.073405, 0.124184,
		0.062068, 0.993746, -0.092821,
		-0.130221, -0.084142, -0.987908,
		46.445999, 27.094431, 22.103722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328362, 27.852156, 22.531202>,  <46.537155, 27.153330, 22.795258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328362, 27.852156, 22.531202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.199718, 27.570921, 22.277514>,  <46.122532, 27.402180, 22.125299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.199718, 27.570921, 22.277514>,  <46.328362, 27.852156, 22.531202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199718, 27.570921, 22.277514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946621, 0.254253, 0.198154,
		0.021933, 0.664094, -0.747327,
		-0.321603, -0.703089, -0.634222,
		46.103237, 27.359995, 22.087248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740761, 28.143576, 22.129961>,  <46.328362, 27.852156, 22.531202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740761, 28.143576, 22.129961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.720535, 27.744728, 22.152571>,  <45.708401, 27.505419, 22.166136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.720535, 27.744728, 22.152571>,  <45.740761, 28.143576, 22.129961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720535, 27.744728, 22.152571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891835, 0.070552, 0.446825,
		-0.449526, -0.027819, -0.892834,
		-0.050561, -0.997120, 0.056525,
		45.705368, 27.445593, 22.169529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090130, 27.984934, 21.898031>,  <45.740761, 28.143576, 22.129961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090130, 27.984934, 21.898031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.209999, 27.668663, 22.111582>,  <45.281921, 27.478901, 22.239712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.209999, 27.668663, 22.111582>,  <45.090130, 27.984934, 21.898031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209999, 27.668663, 22.111582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883639, -0.019050, 0.467780,
		-0.359693, -0.611936, -0.704383,
		0.299670, -0.790678, 0.533879,
		45.299900, 27.431459, 22.271746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443954, 27.610668, 21.837399>,  <45.090130, 27.984934, 21.898031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443954, 27.610668, 21.837399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.683029, 27.499033, 22.138031>,  <44.826473, 27.432053, 22.318411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.683029, 27.499033, 22.138031>,  <44.443954, 27.610668, 21.837399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683029, 27.499033, 22.138031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799399, -0.136080, 0.585186,
		-0.061041, -0.950576, -0.304434,
		0.597691, -0.279084, 0.751583,
		44.862335, 27.415306, 22.363506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192432, 26.885761, 22.142338>,  <44.443954, 27.610668, 21.837399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192432, 26.885761, 22.142338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.404045, 27.065619, 22.430212>,  <44.531013, 27.173532, 22.602938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.404045, 27.065619, 22.430212>,  <44.192432, 26.885761, 22.142338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404045, 27.065619, 22.430212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791679, -0.043873, 0.609360,
		0.305571, -0.892129, 0.332765,
		0.529028, 0.449646, 0.719686,
		44.562752, 27.200512, 22.646118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004726, 26.499405, 22.653442>,  <44.192432, 26.885761, 22.142338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004726, 26.499405, 22.653442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.188072, 26.810968, 22.824654>,  <44.298080, 26.997906, 22.927380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.188072, 26.810968, 22.824654>,  <44.004726, 26.499405, 22.653442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188072, 26.810968, 22.824654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622719, -0.062161, 0.779972,
		0.634132, -0.624052, 0.456548,
		0.458364, 0.778907, 0.428027,
		44.325581, 27.044640, 22.953062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217556, 26.368240, 23.398617>,  <44.004726, 26.499405, 22.653442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217556, 26.368240, 23.398617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.181274, 26.764158, 23.354652>,  <44.159504, 27.001709, 23.328274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.181274, 26.764158, 23.354652>,  <44.217556, 26.368240, 23.398617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181274, 26.764158, 23.354652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590164, 0.035475, 0.806503,
		0.802171, 0.138023, 0.580923,
		-0.090708, 0.989793, -0.109913,
		44.154060, 27.061096, 23.321678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123741, 26.494949, 24.104059>,  <44.217556, 26.368240, 23.398617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123741, 26.494949, 24.104059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.036537, 26.840944, 23.923273>,  <43.984215, 27.048540, 23.814802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.036537, 26.840944, 23.923273>,  <44.123741, 26.494949, 24.104059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036537, 26.840944, 23.923273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693480, 0.188553, 0.695366,
		0.686701, 0.465024, 0.558743,
		-0.218009, 0.864985, -0.451964,
		43.971134, 27.100439, 23.787683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087700, 26.963297, 24.656498>,  <44.123741, 26.494949, 24.104059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087700, 26.963297, 24.656498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.899025, 27.133436, 24.347540>,  <43.785820, 27.235519, 24.162165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.899025, 27.133436, 24.347540>,  <44.087700, 26.963297, 24.656498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899025, 27.133436, 24.347540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784653, 0.197168, 0.587745,
		0.402287, 0.883292, 0.240748,
		-0.471683, 0.425346, -0.772396,
		43.757519, 27.261040, 24.115822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799801, 27.693241, 24.851109>,  <44.087700, 26.963297, 24.656498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799801, 27.693241, 24.851109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.588600, 27.587435, 24.528309>,  <43.461880, 27.523951, 24.334629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.588600, 27.587435, 24.528309>,  <43.799801, 27.693241, 24.851109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588600, 27.587435, 24.528309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848418, 0.206182, 0.487520,
		0.037432, 0.942083, -0.333285,
		-0.528002, -0.264516, -0.806998,
		43.430199, 27.508080, 24.286209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379272, 28.257084, 24.779356>,  <43.799801, 27.693241, 24.851109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379272, 28.257084, 24.779356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.175938, 27.971760, 24.586365>,  <43.053936, 27.800566, 24.470570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.175938, 27.971760, 24.586365>,  <43.379272, 28.257084, 24.779356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175938, 27.971760, 24.586365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853730, 0.343991, 0.390917,
		-0.112875, 0.610624, -0.783835,
		-0.508335, -0.713308, -0.482480,
		43.023438, 27.757767, 24.441620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820896, 28.643433, 24.379145>,  <43.379272, 28.257084, 24.779356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820896, 28.643433, 24.379145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.709225, 28.266872, 24.454853>,  <42.642220, 28.040936, 24.500278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.709225, 28.266872, 24.454853>,  <42.820896, 28.643433, 24.379145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709225, 28.266872, 24.454853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827103, 0.335889, 0.450644,
		-0.487810, -0.030736, -0.872408,
		-0.279182, -0.941400, 0.189272,
		42.625469, 27.984453, 24.511635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130562, 28.698959, 24.290613>,  <42.820896, 28.643433, 24.379145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130562, 28.698959, 24.290613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210636, 28.376617, 24.513512>,  <42.258682, 28.183212, 24.647251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210636, 28.376617, 24.513512>,  <42.130562, 28.698959, 24.290613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210636, 28.376617, 24.513512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785692, 0.207749, 0.582691,
		-0.585332, -0.554470, -0.591565,
		0.200187, -0.805855, 0.557245,
		42.270691, 28.134861, 24.680685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700069, 28.195658, 23.826181>,  <42.130562, 28.698959, 24.290613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700069, 28.195658, 23.826181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.420086, 28.220560, 23.541595>,  <41.252094, 28.235502, 23.370844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.420086, 28.220560, 23.541595>,  <41.700069, 28.195658, 23.826181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420086, 28.220560, 23.541595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712184, -0.013634, -0.701860,
		-0.053398, -0.997967, -0.034798,
		-0.699958, 0.062260, -0.711464,
		41.210098, 28.239237, 23.328156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918415, 27.696123, 23.300055>,  <41.700069, 28.195658, 23.826181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918415, 27.696123, 23.300055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.676392, 27.952244, 23.110777>,  <41.531178, 28.105917, 22.997210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.676392, 27.952244, 23.110777>,  <41.918415, 27.696123, 23.300055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676392, 27.952244, 23.110777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681541, 0.109294, -0.723572,
		-0.411589, -0.760307, -0.502522,
		-0.605059, 0.640303, -0.473196,
		41.494873, 28.144335, 22.968819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864391, 27.349091, 22.563744>,  <41.918415, 27.696123, 23.300055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864391, 27.349091, 22.563744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.772087, 27.738161, 22.553555>,  <41.716705, 27.971603, 22.547441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.772087, 27.738161, 22.553555>,  <41.864391, 27.349091, 22.563744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772087, 27.738161, 22.553555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662775, 0.137965, -0.735999,
		-0.712375, -0.186723, -0.676503,
		-0.230761, 0.972677, -0.025473,
		41.702858, 28.029964, 22.545914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544052, 27.455925, 21.923758>,  <41.864391, 27.349091, 22.563744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544052, 27.455925, 21.923758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.668865, 27.815474, 22.046827>,  <41.743752, 28.031204, 22.120670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.668865, 27.815474, 22.046827>,  <41.544052, 27.455925, 21.923758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668865, 27.815474, 22.046827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467070, 0.136877, -0.873562,
		-0.827336, 0.416282, -0.377127,
		0.312028, 0.898874, 0.307676,
		41.762474, 28.085136, 22.139130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644699, 27.867844, 21.250679>,  <41.544052, 27.455925, 21.923758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644699, 27.867844, 21.250679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.833290, 28.099615, 21.516603>,  <41.946445, 28.238678, 21.676159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.833290, 28.099615, 21.516603>,  <41.644699, 27.867844, 21.250679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833290, 28.099615, 21.516603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584850, 0.358789, -0.727475,
		-0.660046, 0.731802, -0.169718,
		0.471475, 0.579427, 0.664812,
		41.974731, 28.273443, 21.716047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746506, 28.613605, 20.977770>,  <41.644699, 27.867844, 21.250679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746506, 28.613605, 20.977770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.032043, 28.568724, 21.254271>,  <42.203365, 28.541794, 21.420172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.032043, 28.568724, 21.254271>,  <41.746506, 28.613605, 20.977770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032043, 28.568724, 21.254271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671355, 0.390504, -0.629912,
		-0.199258, 0.913738, 0.354089,
		0.713848, -0.112204, 0.691253,
		42.246197, 28.535063, 21.461647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240170, 29.243597, 20.936155>,  <41.746506, 28.613605, 20.977770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240170, 29.243597, 20.936155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.446709, 28.946890, 21.107346>,  <42.570633, 28.768866, 21.210060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.446709, 28.946890, 21.107346>,  <42.240170, 29.243597, 20.936155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446709, 28.946890, 21.107346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725167, 0.112886, -0.679256,
		0.455538, 0.661089, 0.596194,
		0.516351, -0.741767, 0.427976,
		42.601612, 28.724360, 21.235739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213066, 29.940447, 21.233553>,  <42.240170, 29.243597, 20.936155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213066, 29.940447, 21.233553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.118099, 30.285851, 21.055573>,  <42.061119, 30.493093, 20.948784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.118099, 30.285851, 21.055573>,  <42.213066, 29.940447, 21.233553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118099, 30.285851, 21.055573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857552, 0.028859, 0.513587,
		0.456328, 0.503506, 0.733653,
		-0.237422, 0.863510, -0.444952,
		42.046871, 30.544903, 20.922087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905048, 30.287861, 21.736788>,  <42.213066, 29.940447, 21.233553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905048, 30.287861, 21.736788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.804600, 30.485664, 21.403944>,  <41.744331, 30.604345, 21.204239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.804600, 30.485664, 21.403944>,  <41.905048, 30.287861, 21.736788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804600, 30.485664, 21.403944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884187, 0.232635, 0.405086,
		0.393895, 0.837463, 0.378817,
		-0.251119, 0.494506, -0.832107,
		41.729263, 30.634016, 21.154312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581688, 30.876699, 22.012197>,  <41.905048, 30.287861, 21.736788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581688, 30.876699, 22.012197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.407787, 30.826826, 21.655447>,  <41.303448, 30.796902, 21.441397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.407787, 30.826826, 21.655447>,  <41.581688, 30.876699, 22.012197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407787, 30.826826, 21.655447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857815, 0.358796, 0.367993,
		0.274119, 0.925051, -0.262943,
		-0.434755, -0.124683, -0.891876,
		41.277359, 30.789421, 21.387884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186035, 31.430389, 21.932302>,  <41.581688, 30.876699, 22.012197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186035, 31.430389, 21.932302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.021904, 31.185915, 21.661573>,  <40.923428, 31.039230, 21.499136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.021904, 31.185915, 21.661573>,  <41.186035, 31.430389, 21.932302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021904, 31.185915, 21.661573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911566, 0.253669, 0.323572,
		-0.026074, 0.749737, -0.661222,
		-0.410326, -0.611185, -0.676821,
		40.898808, 31.002560, 21.458527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641983, 31.814268, 21.496178>,  <41.186035, 31.430389, 21.932302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641983, 31.814268, 21.496178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.559288, 31.425365, 21.452410>,  <40.509670, 31.192024, 21.426149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.559288, 31.425365, 21.452410>,  <40.641983, 31.814268, 21.496178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559288, 31.425365, 21.452410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977490, 0.200441, 0.065858,
		-0.042099, 0.120574, -0.991811,
		-0.206741, -0.972258, -0.109422,
		40.497265, 31.133688, 21.419582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100876, 31.792818, 21.003460>,  <40.641983, 31.814268, 21.496178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100876, 31.792818, 21.003460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.090313, 31.465519, 21.233162>,  <40.083977, 31.269138, 21.370983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.090313, 31.465519, 21.233162>,  <40.100876, 31.792818, 21.003460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090313, 31.465519, 21.233162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890247, 0.280553, 0.358819,
		-0.454713, -0.501755, -0.735852,
		-0.026406, -0.818249, 0.574257,
		40.082390, 31.220043, 21.405439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422707, 31.707602, 20.980188>,  <40.100876, 31.792818, 21.003460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422707, 31.707602, 20.980188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542080, 31.472662, 21.281109>,  <39.613705, 31.331697, 21.461660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542080, 31.472662, 21.281109>,  <39.422707, 31.707602, 20.980188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542080, 31.472662, 21.281109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776567, 0.308811, 0.549163,
		-0.554870, -0.748101, -0.363957,
		0.298435, -0.587350, 0.752300,
		39.631611, 31.296457, 21.506800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.798996, 31.157209, 22.881687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.808800, 30.830994, 23.112959>,  <46.814682, 30.635263, 23.251722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.808800, 30.830994, 23.112959>,  <46.798996, 31.157209, 22.881687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808800, 30.830994, 23.112959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978452, 0.099035, 0.181175,
		-0.205016, -0.570162, -0.795540,
		0.024513, -0.815541, 0.578180,
		46.816154, 30.586332, 23.286413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145947, 30.940258, 22.813282>,  <46.798996, 31.157209, 22.881687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145947, 30.940258, 22.813282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.291840, 30.760330, 23.139381>,  <46.379375, 30.652374, 23.335041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.291840, 30.760330, 23.139381>,  <46.145947, 30.940258, 22.813282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291840, 30.760330, 23.139381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791484, 0.311391, 0.525917,
		-0.490429, -0.837077, -0.242450,
		0.364736, -0.449820, 0.815248,
		46.401260, 30.625385, 23.383955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638927, 30.492445, 23.024929>,  <46.145947, 30.940258, 22.813282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638927, 30.492445, 23.024929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.878597, 30.578014, 23.333532>,  <46.022400, 30.629356, 23.518694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.878597, 30.578014, 23.333532>,  <45.638927, 30.492445, 23.024929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878597, 30.578014, 23.333532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800553, 0.147699, 0.580775,
		0.010290, -0.965620, 0.259754,
		0.599173, 0.213924, 0.771510,
		46.058350, 30.642193, 23.564985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289173, 30.374281, 23.608398>,  <45.638927, 30.492445, 23.024929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289173, 30.374281, 23.608398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.576492, 30.597500, 23.774593>,  <45.748882, 30.731432, 23.874310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.576492, 30.597500, 23.774593>,  <45.289173, 30.374281, 23.608398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576492, 30.597500, 23.774593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683024, 0.451995, 0.573741,
		0.132378, -0.695905, 0.705828,
		0.718299, 0.558048, 0.415486,
		45.791981, 30.764914, 23.899239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333836, 30.171909, 24.337194>,  <45.289173, 30.374281, 23.608398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333836, 30.171909, 24.337194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.493233, 30.536083, 24.292809>,  <45.588871, 30.754587, 24.266176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.493233, 30.536083, 24.292809>,  <45.333836, 30.171909, 24.337194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493233, 30.536083, 24.292809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563859, 0.338606, 0.753266,
		0.723373, -0.237601, 0.648288,
		0.398491, 0.910435, -0.110965,
		45.612782, 30.809214, 24.259520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352081, 30.442513, 24.897919>,  <45.333836, 30.171909, 24.337194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352081, 30.442513, 24.897919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.384186, 30.785519, 24.694654>,  <45.403450, 30.991322, 24.572695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.384186, 30.785519, 24.694654>,  <45.352081, 30.442513, 24.897919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384186, 30.785519, 24.694654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572229, 0.457068, 0.680913,
		0.816157, 0.236134, 0.527379,
		0.080262, 0.857514, -0.508162,
		45.408264, 31.042772, 24.542206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405415, 30.960827, 25.406910>,  <45.352081, 30.442513, 24.897919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405415, 30.960827, 25.406910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.290524, 31.175480, 25.089540>,  <45.221588, 31.304272, 24.899118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.290524, 31.175480, 25.089540>,  <45.405415, 30.960827, 25.406910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290524, 31.175480, 25.089540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513575, 0.612923, 0.600471,
		0.808542, 0.579955, 0.099554,
		-0.287227, 0.536635, -0.793425,
		45.204357, 31.336470, 24.851513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440521, 31.629877, 25.668842>,  <45.405415, 30.960827, 25.406910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440521, 31.629877, 25.668842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.203663, 31.696026, 25.353371>,  <45.061546, 31.735714, 25.164087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.203663, 31.696026, 25.353371>,  <45.440521, 31.629877, 25.668842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203663, 31.696026, 25.353371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569540, 0.606494, 0.554788,
		0.570074, 0.777700, -0.264949,
		-0.592149, 0.165371, -0.788677,
		45.026020, 31.745638, 25.116768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403301, 32.341351, 25.537537>,  <45.440521, 31.629877, 25.668842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403301, 32.341351, 25.537537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.077347, 32.170918, 25.380358>,  <44.881775, 32.068657, 25.286051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.077347, 32.170918, 25.380358>,  <45.403301, 32.341351, 25.537537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077347, 32.170918, 25.380358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575572, 0.674805, 0.461904,
		0.068351, 0.602569, -0.795135,
		-0.814890, -0.426085, -0.392945,
		44.832878, 32.043091, 25.262474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892422, 32.833866, 25.498888>,  <45.403301, 32.341351, 25.537537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892422, 32.833866, 25.498888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.639809, 32.533840, 25.420336>,  <44.488239, 32.353825, 25.373205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.639809, 32.533840, 25.420336>,  <44.892422, 32.833866, 25.498888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639809, 32.533840, 25.420336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750822, 0.528417, 0.396285,
		-0.193470, 0.397713, -0.896880,
		-0.631535, -0.750067, -0.196379,
		44.450348, 32.308819, 25.361422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236622, 33.116844, 25.308821>,  <44.892422, 32.833866, 25.498888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236622, 33.116844, 25.308821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.146095, 32.737759, 25.398819>,  <44.091778, 32.510307, 25.452818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.146095, 32.737759, 25.398819>,  <44.236622, 33.116844, 25.308821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146095, 32.737759, 25.398819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851766, 0.304609, 0.426272,
		-0.472519, -0.095171, -0.876167,
		-0.226319, -0.947711, 0.224997,
		44.078201, 32.453445, 25.466318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527866, 33.062649, 25.230637>,  <44.236622, 33.116844, 25.308821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527866, 33.062649, 25.230637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.594032, 32.731388, 25.444853>,  <43.633732, 32.532631, 25.573383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.594032, 32.731388, 25.444853>,  <43.527866, 33.062649, 25.230637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594032, 32.731388, 25.444853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888684, 0.110295, 0.445056,
		-0.427641, -0.549549, -0.717718,
		0.165419, -0.828149, 0.535542,
		43.643658, 32.482944, 25.605515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220203, 32.896427, 24.493332>,  <43.527866, 33.062649, 25.230637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220203, 32.896427, 24.493332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.991512, 33.127674, 24.260469>,  <42.854298, 33.266422, 24.120752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.991512, 33.127674, 24.260469>,  <43.220203, 32.896427, 24.493332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991512, 33.127674, 24.260469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508898, -0.306688, -0.804341,
		-0.643546, -0.756122, -0.118862,
		-0.571726, 0.578120, -0.582157,
		42.819996, 33.301109, 24.085823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027157, 32.550369, 23.887882>,  <43.220203, 32.896427, 24.493332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027157, 32.550369, 23.887882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.026890, 32.933819, 23.774008>,  <43.026730, 33.163887, 23.705683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.026890, 32.933819, 23.774008>,  <43.027157, 32.550369, 23.887882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026890, 32.933819, 23.774008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497062, -0.246709, -0.831904,
		-0.867715, -0.142057, -0.476330,
		-0.000663, 0.958621, -0.284684,
		43.026691, 33.221405, 23.688602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543049, 32.609955, 23.278105>,  <43.027157, 32.550369, 23.887882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543049, 32.609955, 23.278105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.776756, 32.934334, 23.265522>,  <42.916981, 33.128960, 23.257973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.776756, 32.934334, 23.265522>,  <42.543049, 32.609955, 23.278105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776756, 32.934334, 23.265522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246029, -0.213933, -0.945358,
		-0.773366, 0.544608, -0.324512,
		0.584273, 0.810947, -0.031459,
		42.952038, 33.177616, 23.256084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456333, 32.981850, 22.606070>,  <42.543049, 32.609955, 23.278105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456333, 32.981850, 22.606070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.802059, 33.132370, 22.739548>,  <43.009495, 33.222683, 22.819635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.802059, 33.132370, 22.739548>,  <42.456333, 32.981850, 22.606070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802059, 33.132370, 22.739548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405805, -0.129823, -0.904692,
		-0.297113, 0.917358, -0.264912,
		0.864318, 0.376299, 0.333696,
		43.061356, 33.245258, 22.839657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618076, 33.551250, 22.060110>,  <42.456333, 32.981850, 22.606070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618076, 33.551250, 22.060110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.937023, 33.430183, 22.268951>,  <43.128391, 33.357544, 22.394257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.937023, 33.430183, 22.268951>,  <42.618076, 33.551250, 22.060110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937023, 33.430183, 22.268951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507668, -0.131370, -0.851479,
		0.326302, 0.944000, 0.048904,
		0.797371, -0.302666, 0.522104,
		43.176235, 33.339382, 22.425583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167927, 33.938965, 21.824381>,  <42.618076, 33.551250, 22.060110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167927, 33.938965, 21.824381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.367485, 33.643307, 22.005386>,  <43.487221, 33.465912, 22.113989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.367485, 33.643307, 22.005386>,  <43.167927, 33.938965, 21.824381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367485, 33.643307, 22.005386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669348, -0.003058, -0.742943,
		0.550528, 0.673537, 0.493221,
		0.498892, -0.739147, 0.452514,
		43.517151, 33.421562, 22.141140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889149, 34.058094, 21.716146>,  <43.167927, 33.938965, 21.824381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889149, 34.058094, 21.716146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.884495, 33.672386, 21.822020>,  <43.881702, 33.440964, 21.885544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.884495, 33.672386, 21.822020>,  <43.889149, 34.058094, 21.716146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884495, 33.672386, 21.822020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795273, -0.169377, -0.582110,
		0.606139, 0.203726, 0.768824,
		-0.011630, -0.964265, 0.264684,
		43.881004, 33.383106, 21.901424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591621, 33.928654, 21.786631>,  <43.889149, 34.058094, 21.716146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591621, 33.928654, 21.786631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.442497, 33.557640, 21.797235>,  <44.353024, 33.335033, 21.803598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.442497, 33.557640, 21.797235>,  <44.591621, 33.928654, 21.786631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442497, 33.557640, 21.797235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808799, -0.338826, -0.480668,
		0.454817, -0.157752, 0.876502,
		-0.372808, -0.927530, 0.026514,
		44.330654, 33.279381, 21.805189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090836, 33.464870, 21.964197>,  <44.591621, 33.928654, 21.786631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090836, 33.464870, 21.964197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.815083, 33.227947, 21.797377>,  <44.649632, 33.085793, 21.697285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.815083, 33.227947, 21.797377>,  <45.090836, 33.464870, 21.964197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815083, 33.227947, 21.797377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640134, -0.228608, -0.733462,
		0.339093, -0.772601, 0.536753,
		-0.689380, -0.592306, -0.417049,
		44.608269, 33.050255, 21.672262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467964, 32.929543, 21.738060>,  <45.090836, 33.464870, 21.964197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467964, 32.929543, 21.738060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.135765, 32.911526, 21.515982>,  <44.936447, 32.900715, 21.382734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.135765, 32.911526, 21.515982>,  <45.467964, 32.929543, 21.738060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135765, 32.911526, 21.515982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556918, -0.086362, -0.826065,
		-0.010741, -0.995245, 0.096808,
		-0.830498, -0.045042, -0.555197,
		44.886616, 32.898014, 21.349422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550980, 32.422245, 21.321007>,  <45.467964, 32.929543, 21.738060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550980, 32.422245, 21.321007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.289135, 32.669308, 21.146662>,  <45.132027, 32.817547, 21.042055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.289135, 32.669308, 21.146662>,  <45.550980, 32.422245, 21.321007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289135, 32.669308, 21.146662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644286, 0.154240, -0.749069,
		-0.395441, -0.771174, -0.498917,
		-0.654616, 0.617658, -0.435864,
		45.092751, 32.854607, 21.015903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509933, 32.192440, 20.585451>,  <45.550980, 32.422245, 21.321007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509933, 32.192440, 20.585451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.360912, 32.563641, 20.586903>,  <45.271500, 32.786362, 20.587772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.360912, 32.563641, 20.586903>,  <45.509933, 32.192440, 20.585451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360912, 32.563641, 20.586903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424750, 0.173990, -0.888434,
		-0.825102, -0.329448, -0.458990,
		-0.372552, 0.928004, 0.003627,
		45.249146, 32.842041, 20.587990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424686, 32.289719, 19.902866>,  <45.509933, 32.192440, 20.585451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424686, 32.289719, 19.902866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.414516, 32.657486, 20.059853>,  <45.408413, 32.878147, 20.154045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.414516, 32.657486, 20.059853>,  <45.424686, 32.289719, 19.902866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414516, 32.657486, 20.059853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443053, 0.362295, -0.820028,
		-0.896135, 0.153032, -0.416561,
		-0.025427, 0.919415, 0.392467,
		45.406887, 32.933311, 20.177593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719505, 32.444157, 20.053320>,  <45.424686, 32.289719, 19.902866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719505, 32.444157, 20.053320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.669685, 32.226040, 19.721745>,  <44.639793, 32.095169, 19.522799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.669685, 32.226040, 19.721745>,  <44.719505, 32.444157, 20.053320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669685, 32.226040, 19.721745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902014, -0.285814, 0.323545,
		-0.413349, 0.788014, -0.456263,
		-0.124551, -0.545293, -0.828941,
		44.632320, 32.062450, 19.473063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045685, 32.588928, 19.803734>,  <44.719505, 32.444157, 20.053320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045685, 32.588928, 19.803734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.143433, 32.247387, 19.619902>,  <44.202084, 32.042461, 19.509602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.143433, 32.247387, 19.619902>,  <44.045685, 32.588928, 19.803734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143433, 32.247387, 19.619902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902677, -0.373434, 0.213825,
		-0.354199, 0.362602, -0.862011,
		0.244371, -0.853854, -0.459583,
		44.216743, 31.991230, 19.482027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430580, 32.387669, 19.796938>,  <44.045685, 32.588928, 19.803734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430580, 32.387669, 19.796938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.633453, 32.063503, 19.679638>,  <43.755177, 31.869003, 19.609259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.633453, 32.063503, 19.679638>,  <43.430580, 32.387669, 19.796938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633453, 32.063503, 19.679638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778537, -0.576763, 0.247438,
		-0.369662, 0.102809, -0.923461,
		0.507179, -0.810416, -0.293248,
		43.785606, 31.820377, 19.591663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014660, 32.008018, 19.358515>,  <43.430580, 32.387669, 19.796938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014660, 32.008018, 19.358515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.271458, 31.741705, 19.510611>,  <43.425537, 31.581917, 19.601868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.271458, 31.741705, 19.510611>,  <43.014660, 32.008018, 19.358515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271458, 31.741705, 19.510611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766704, -0.555165, 0.322425,
		-0.003569, -0.498525, -0.866868,
		0.641991, -0.665781, 0.380240,
		43.464054, 31.541971, 19.624681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829247, 31.378105, 19.148067>,  <43.014660, 32.008018, 19.358515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829247, 31.378105, 19.148067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.043819, 31.292332, 19.474566>,  <43.172565, 31.240868, 19.670464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.043819, 31.292332, 19.474566>,  <42.829247, 31.378105, 19.148067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043819, 31.292332, 19.474566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769613, -0.521181, 0.368871,
		0.346312, -0.826067, -0.444613,
		0.536436, -0.214436, 0.816244,
		43.204750, 31.228001, 19.719439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565266, 30.814791, 19.310434>,  <42.829247, 31.378105, 19.148067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565266, 30.814791, 19.310434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.745098, 30.903046, 19.656658>,  <42.852997, 30.955999, 19.864393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.745098, 30.903046, 19.656658>,  <42.565266, 30.814791, 19.310434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745098, 30.903046, 19.656658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688602, -0.531602, 0.493180,
		0.568947, -0.817752, -0.087068,
		0.449584, 0.220638, 0.865559,
		42.879974, 30.969236, 19.916327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627598, 30.146172, 19.755606>,  <42.565266, 30.814791, 19.310434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627598, 30.146172, 19.755606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.674347, 30.448711, 20.013063>,  <42.702396, 30.630236, 20.167538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.674347, 30.448711, 20.013063>,  <42.627598, 30.146172, 19.755606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674347, 30.448711, 20.013063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691003, -0.403572, 0.599704,
		0.713342, -0.514847, 0.475473,
		0.116869, 0.756348, 0.643645,
		42.709408, 30.675615, 20.206158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521706, 29.827419, 20.548729>,  <42.627598, 30.146172, 19.755606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521706, 29.827419, 20.548729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.450638, 30.220482, 20.569965>,  <42.407997, 30.456320, 20.582706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.450638, 30.220482, 20.569965>,  <42.521706, 29.827419, 20.548729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450638, 30.220482, 20.569965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795051, -0.175123, 0.580711,
		0.579937, 0.060966, 0.812377,
		-0.177670, 0.982657, 0.053089,
		42.397335, 30.515280, 20.585892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060177, 29.594172, 21.173925>,  <42.521706, 29.827419, 20.548729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060177, 29.594172, 21.173925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.103077, 29.197247, 21.198639>,  <43.128819, 28.959091, 21.213467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.103077, 29.197247, 21.198639>,  <43.060177, 29.594172, 21.173925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103077, 29.197247, 21.198639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822623, 0.053671, -0.566048,
		0.558380, 0.111535, 0.822054,
		0.107255, -0.992310, 0.061782,
		43.135254, 28.899553, 21.217173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777588, 29.389999, 21.402905>,  <43.060177, 29.594172, 21.173925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777588, 29.389999, 21.402905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.638565, 29.058376, 21.227697>,  <43.555149, 28.859402, 21.122572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.638565, 29.058376, 21.227697>,  <43.777588, 29.389999, 21.402905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638565, 29.058376, 21.227697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885087, -0.135859, -0.445156,
		0.309552, -0.542404, 0.781009,
		-0.347561, -0.829060, -0.438020,
		43.534298, 28.809658, 21.096292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345482, 28.978426, 21.422079>,  <43.777588, 29.389999, 21.402905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345482, 28.978426, 21.422079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.102123, 28.821463, 21.146147>,  <43.956108, 28.727285, 20.980587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.102123, 28.821463, 21.146147>,  <44.345482, 28.978426, 21.422079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102123, 28.821463, 21.146147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793143, -0.331132, -0.511151,
		-0.027845, -0.858118, 0.512696,
		-0.608398, -0.392408, -0.689831,
		43.919605, 28.703741, 20.939198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700924, 28.372246, 21.397943>,  <44.345482, 28.978426, 21.422079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700924, 28.372246, 21.397943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.485260, 28.430126, 21.066071>,  <44.355862, 28.464853, 20.866947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.485260, 28.430126, 21.066071>,  <44.700924, 28.372246, 21.397943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485260, 28.430126, 21.066071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770615, -0.312706, -0.555308,
		-0.339800, -0.938763, 0.057088,
		-0.539155, 0.144701, -0.829683,
		44.323513, 28.473536, 20.817165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804554, 27.691853, 21.033875>,  <44.700924, 28.372246, 21.397943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804554, 27.691853, 21.033875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.700813, 27.981768, 20.778557>,  <44.638569, 28.155718, 20.625366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.700813, 27.981768, 20.778557>,  <44.804554, 27.691853, 21.033875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700813, 27.981768, 20.778557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844611, -0.150302, -0.513851,
		-0.468370, -0.672377, -0.573184,
		-0.259351, 0.724789, -0.638293,
		44.623009, 28.199203, 20.587069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781612, 27.472816, 20.279453>,  <44.804554, 27.691853, 21.033875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781612, 27.472816, 20.279453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.839046, 27.868250, 20.261175>,  <44.873505, 28.105511, 20.250208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.839046, 27.868250, 20.261175>,  <44.781612, 27.472816, 20.279453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839046, 27.868250, 20.261175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903859, -0.149800, -0.400747,
		-0.403017, 0.016237, -0.915048,
		0.143582, 0.988583, -0.045696,
		44.882122, 28.164825, 20.247467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293831, 27.481203, 19.730312>,  <44.781612, 27.472816, 20.279453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293831, 27.481203, 19.730312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.307373, 27.859364, 19.859974>,  <45.315498, 28.086260, 19.937771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.307373, 27.859364, 19.859974>,  <45.293831, 27.481203, 19.730312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307373, 27.859364, 19.859974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969048, 0.048306, -0.242099,
		-0.244539, 0.322316, -0.914502,
		0.033857, 0.945399, 0.324152,
		45.317532, 28.142982, 19.957220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582542, 27.901356, 19.239704>,  <45.293831, 27.481203, 19.730312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582542, 27.901356, 19.239704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.639057, 28.140387, 19.555410>,  <45.672966, 28.283804, 19.744835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.639057, 28.140387, 19.555410>,  <45.582542, 27.901356, 19.239704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639057, 28.140387, 19.555410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975051, 0.053886, -0.215340,
		-0.171213, 0.800000, -0.575054,
		0.141285, 0.597576, 0.789266,
		45.681442, 28.319660, 19.792191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867809, 28.531872, 19.039892>,  <45.582542, 27.901356, 19.239704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867809, 28.531872, 19.039892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.990658, 28.448330, 19.411280>,  <46.064365, 28.398205, 19.634113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.990658, 28.448330, 19.411280>,  <45.867809, 28.531872, 19.039892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990658, 28.448330, 19.411280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936877, 0.237708, -0.256429,
		-0.167149, 0.948618, 0.268674,
		0.307119, -0.208853, 0.928471,
		46.082794, 28.385674, 19.689821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.639366, 31.944210, 31.101669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038090, 31.931316, 31.130871>,  <36.277325, 31.923580, 31.148392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038090, 31.931316, 31.130871>,  <35.639366, 31.944210, 31.101669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038090, 31.931316, 31.130871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039015, -0.601158, -0.798178,
		0.069615, 0.798480, -0.597983,
		0.996811, -0.032235, 0.073002,
		36.337132, 31.921646, 31.152771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036831, 32.089020, 30.374443>,  <35.639366, 31.944210, 31.101669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036831, 32.089020, 30.374443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195980, 31.841301, 30.645197>,  <36.291470, 31.692671, 30.807650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195980, 31.841301, 30.645197>,  <36.036831, 32.089020, 30.374443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195980, 31.841301, 30.645197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336134, -0.588091, -0.735638,
		0.853646, 0.520214, -0.025818,
		0.397872, -0.619296, 0.676883,
		36.315342, 31.655512, 30.848261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812218, 31.914616, 30.265762>,  <36.036831, 32.089020, 30.374443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812218, 31.914616, 30.265762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656532, 31.606922, 30.468458>,  <36.563122, 31.422306, 30.590076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656532, 31.606922, 30.468458>,  <36.812218, 31.914616, 30.265762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656532, 31.606922, 30.468458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337870, -0.630997, -0.698346,
		0.856945, -0.100596, 0.505496,
		-0.389217, -0.769236, 0.506741,
		36.539768, 31.376152, 30.620480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303501, 31.429897, 30.069273>,  <36.812218, 31.914616, 30.265762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303501, 31.429897, 30.069273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000381, 31.221865, 30.226885>,  <36.818512, 31.097046, 30.321453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000381, 31.221865, 30.226885>,  <37.303501, 31.429897, 30.069273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000381, 31.221865, 30.226885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146505, -0.724089, -0.673967,
		0.635831, -0.453002, 0.624907,
		-0.757797, -0.520081, 0.394031,
		36.773041, 31.065840, 30.345095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592018, 30.788490, 30.045643>,  <37.303501, 31.429897, 30.069273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592018, 30.788490, 30.045643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195892, 30.734205, 30.057381>,  <36.958218, 30.701633, 30.064423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195892, 30.734205, 30.057381>,  <37.592018, 30.788490, 30.045643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195892, 30.734205, 30.057381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066636, -0.649948, -0.757052,
		0.121814, -0.747764, 0.652695,
		-0.990313, -0.135713, 0.029345,
		36.898800, 30.693491, 30.066183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482361, 30.113420, 30.092621>,  <37.592018, 30.788490, 30.045643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482361, 30.113420, 30.092621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139530, 30.254852, 29.942743>,  <36.933830, 30.339712, 29.852818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139530, 30.254852, 29.942743>,  <37.482361, 30.113420, 30.092621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139530, 30.254852, 29.942743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045931, -0.671960, -0.739162,
		-0.513132, -0.650731, 0.559683,
		-0.857080, 0.353580, -0.374693,
		36.882408, 30.360926, 29.830336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229519, 29.561611, 29.873075>,  <37.482361, 30.113420, 30.092621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229519, 29.561611, 29.873075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009777, 29.839535, 29.687412>,  <36.877930, 30.006289, 29.576014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009777, 29.839535, 29.687412>,  <37.229519, 29.561611, 29.873075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009777, 29.839535, 29.687412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057561, -0.522702, -0.850570,
		-0.833602, -0.493986, 0.247157,
		-0.549359, 0.694810, -0.464159,
		36.844971, 30.047977, 29.548164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864788, 29.162901, 29.410517>,  <37.229519, 29.561611, 29.873075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864788, 29.162901, 29.410517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856087, 29.539696, 29.276539>,  <36.850864, 29.765772, 29.196152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856087, 29.539696, 29.276539>,  <36.864788, 29.162901, 29.410517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856087, 29.539696, 29.276539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101389, -0.335376, -0.936613,
		-0.994609, 0.013587, 0.102802,
		-0.021752, 0.941986, -0.334945,
		36.849560, 29.822292, 29.176056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458832, 29.054636, 28.799408>,  <36.864788, 29.162901, 29.410517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458832, 29.054636, 28.799408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629475, 29.409798, 28.730545>,  <36.731861, 29.622894, 28.689226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629475, 29.409798, 28.730545>,  <36.458832, 29.054636, 28.799408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629475, 29.409798, 28.730545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133835, -0.250226, -0.958893,
		-0.894482, 0.386026, -0.225580,
		0.426603, 0.887903, -0.172159,
		36.757454, 29.676168, 28.678898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081615, 29.390547, 28.247025>,  <36.458832, 29.054636, 28.799408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081615, 29.390547, 28.247025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438747, 29.567324, 28.212273>,  <36.653027, 29.673389, 28.191422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438747, 29.567324, 28.212273>,  <36.081615, 29.390547, 28.247025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438747, 29.567324, 28.212273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071978, -0.330413, -0.941088,
		-0.444615, 0.833974, -0.326811,
		0.892825, 0.441944, -0.086879,
		36.706596, 29.699907, 28.186209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986885, 29.820967, 27.631815>,  <36.081615, 29.390547, 28.247025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986885, 29.820967, 27.631815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372963, 29.759336, 27.716341>,  <36.604610, 29.722359, 27.767056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372963, 29.759336, 27.716341>,  <35.986885, 29.820967, 27.631815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372963, 29.759336, 27.716341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170311, -0.242857, -0.954994,
		0.198461, 0.957748, -0.208164,
		0.965198, -0.154077, 0.211313,
		36.662521, 29.713114, 27.779736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402866, 30.254885, 27.139729>,  <35.986885, 29.820967, 27.631815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402866, 30.254885, 27.139729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624802, 29.941923, 27.252865>,  <36.757965, 29.754147, 27.320745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624802, 29.941923, 27.252865>,  <36.402866, 30.254885, 27.139729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624802, 29.941923, 27.252865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238750, -0.175928, -0.955012,
		0.796963, 0.597408, 0.089186,
		0.554841, -0.782402, 0.282839,
		36.791252, 29.707203, 27.337717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396164, 30.933336, 26.849043>,  <36.402866, 30.254885, 27.139729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396164, 30.933336, 26.849043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272278, 31.228582, 26.609287>,  <36.197948, 31.405729, 26.465435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272278, 31.228582, 26.609287>,  <36.396164, 30.933336, 26.849043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272278, 31.228582, 26.609287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568982, 0.361189, 0.738784,
		0.761800, 0.569851, 0.308110,
		-0.309711, 0.738114, -0.599388,
		36.179363, 31.450016, 26.429470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364353, 31.559988, 27.356043>,  <36.396164, 30.933336, 26.849043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364353, 31.559988, 27.356043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134750, 31.643576, 27.039349>,  <35.996986, 31.693727, 26.849333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134750, 31.643576, 27.039349>,  <36.364353, 31.559988, 27.356043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134750, 31.643576, 27.039349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755316, 0.238294, 0.610502,
		0.316242, 0.948445, 0.021054,
		-0.574011, 0.208969, -0.791735,
		35.962547, 31.706266, 26.801828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047623, 32.228500, 27.466564>,  <36.364353, 31.559988, 27.356043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047623, 32.228500, 27.466564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820236, 32.046371, 27.192474>,  <35.683804, 31.937094, 27.028021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820236, 32.046371, 27.192474>,  <36.047623, 32.228500, 27.466564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820236, 32.046371, 27.192474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812470, 0.179716, 0.554612,
		-0.129382, 0.872001, -0.472097,
		-0.568465, -0.455321, -0.685222,
		35.649696, 31.909775, 26.986908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512245, 32.651337, 27.438484>,  <36.047623, 32.228500, 27.466564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512245, 32.651337, 27.438484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390152, 32.302654, 27.285141>,  <35.316895, 32.093445, 27.193134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390152, 32.302654, 27.285141>,  <35.512245, 32.651337, 27.438484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390152, 32.302654, 27.285141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910715, 0.149576, 0.385001,
		-0.278266, 0.466646, -0.839529,
		-0.305233, -0.871705, -0.383359,
		35.298584, 32.041142, 27.170134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870419, 32.847126, 27.076710>,  <35.512245, 32.651337, 27.438484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870419, 32.847126, 27.076710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883305, 32.456062, 27.159796>,  <34.891037, 32.221424, 27.209648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883305, 32.456062, 27.159796>,  <34.870419, 32.847126, 27.076710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883305, 32.456062, 27.159796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938277, 0.042021, 0.343322,
		-0.344380, -0.205957, -0.915961,
		0.032220, -0.977658, 0.207716,
		34.892971, 32.162766, 27.222111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180557, 32.773121, 26.880102>,  <34.870419, 32.847126, 27.076710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180557, 32.773121, 26.880102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290710, 32.452751, 27.092772>,  <34.356804, 32.260529, 27.220373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290710, 32.452751, 27.092772>,  <34.180557, 32.773121, 26.880102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290710, 32.452751, 27.092772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883988, 0.006373, 0.467466,
		-0.377795, -0.598727, -0.706256,
		0.275384, -0.800928, 0.531675,
		34.373325, 32.212471, 27.252274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569546, 32.371910, 27.010687>,  <34.180557, 32.773121, 26.880102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569546, 32.371910, 27.010687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826008, 32.273037, 27.301291>,  <33.979885, 32.213711, 27.475653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826008, 32.273037, 27.301291>,  <33.569546, 32.371910, 27.010687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826008, 32.273037, 27.301291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699637, 0.200709, 0.685729,
		-0.315320, -0.947953, -0.044256,
		0.641156, -0.247187, 0.726511,
		34.018356, 32.198879, 27.519243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216343, 32.024815, 27.544935>,  <33.569546, 32.371910, 27.010687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216343, 32.024815, 27.544935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540825, 32.149036, 27.743126>,  <33.735516, 32.223572, 27.862040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540825, 32.149036, 27.743126>,  <33.216343, 32.024815, 27.544935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540825, 32.149036, 27.743126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580964, 0.331669, 0.743288,
		0.066499, -0.890814, 0.449475,
		0.811208, 0.310557, 0.495475,
		33.784187, 32.242203, 27.891769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008167, 31.909760, 28.246536>,  <33.216343, 32.024815, 27.544935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008167, 31.909760, 28.246536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342396, 32.124470, 28.293352>,  <33.542931, 32.253296, 28.321442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342396, 32.124470, 28.293352>,  <33.008167, 31.909760, 28.246536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342396, 32.124470, 28.293352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367976, 0.388621, 0.844729,
		0.407951, -0.748894, 0.522240,
		0.835565, 0.536779, 0.117037,
		33.593067, 32.285503, 28.328465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232159, 31.792910, 28.924793>,  <33.008167, 31.909760, 28.246536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232159, 31.792910, 28.924793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412830, 32.133278, 28.817520>,  <33.521233, 32.337498, 28.753157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412830, 32.133278, 28.817520>,  <33.232159, 31.792910, 28.924793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412830, 32.133278, 28.817520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387212, 0.457772, 0.800320,
		0.803773, -0.257646, 0.536253,
		0.451680, 0.850919, -0.268181,
		33.548336, 32.388554, 28.737066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436478, 32.034561, 29.496311>,  <33.232159, 31.792910, 28.924793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436478, 32.034561, 29.496311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449497, 32.368591, 29.276640>,  <33.457310, 32.569008, 29.144836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449497, 32.368591, 29.276640>,  <33.436478, 32.034561, 29.496311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449497, 32.368591, 29.276640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432618, 0.507101, 0.745446,
		0.900989, 0.213320, 0.377773,
		0.032551, 0.835071, -0.549179,
		33.459263, 32.619114, 29.111887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809166, 32.438938, 29.869711>,  <33.436478, 32.034561, 29.496311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809166, 32.438938, 29.869711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607521, 32.685596, 29.627846>,  <33.486534, 32.833591, 29.482727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607521, 32.685596, 29.627846>,  <33.809166, 32.438938, 29.869711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607521, 32.685596, 29.627846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367653, 0.480297, 0.796333,
		0.781476, 0.623745, -0.015409,
		-0.504109, 0.616650, -0.604662,
		33.456287, 32.870590, 29.446447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929138, 33.146744, 30.089092>,  <33.809166, 32.438938, 29.869711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929138, 33.146744, 30.089092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590115, 33.180195, 29.879463>,  <33.386700, 33.200268, 29.753685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590115, 33.180195, 29.879463>,  <33.929138, 33.146744, 30.089092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590115, 33.180195, 29.879463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289717, 0.754463, 0.588939,
		0.444646, 0.650993, -0.615222,
		-0.847558, 0.083630, -0.524073,
		33.335846, 33.205284, 29.722240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876438, 33.850407, 29.876444>,  <33.929138, 33.146744, 30.089092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876438, 33.850407, 29.876444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507019, 33.697456, 29.888132>,  <33.285370, 33.605686, 29.895145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507019, 33.697456, 29.888132>,  <33.876438, 33.850407, 29.876444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507019, 33.697456, 29.888132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313514, 0.796711, 0.516683,
		-0.220846, 0.468020, -0.855678,
		-0.923546, -0.382374, 0.029219,
		33.229954, 33.582745, 29.896898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310402, 34.271927, 29.514162>,  <33.876438, 33.850407, 29.876444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310402, 34.271927, 29.514162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207687, 34.087158, 29.853735>,  <33.146057, 33.976299, 30.057480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207687, 34.087158, 29.853735>,  <33.310402, 34.271927, 29.514162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207687, 34.087158, 29.853735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172380, 0.886195, 0.430051,
		-0.950970, -0.035907, -0.307191,
		-0.256789, -0.461920, 0.848934,
		33.130650, 33.948582, 30.108416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845116, 34.816143, 29.401117>,  <33.310402, 34.271927, 29.514162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845116, 34.816143, 29.401117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989426, 34.872688, 29.769869>,  <34.076012, 34.906616, 29.991119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989426, 34.872688, 29.769869>,  <33.845116, 34.816143, 29.401117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989426, 34.872688, 29.769869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846834, 0.364518, -0.387297,
		-0.390790, 0.920404, 0.011800,
		0.360771, 0.141359, 0.921879,
		34.097656, 34.915096, 30.046432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174461, 35.552925, 29.441671>,  <33.845116, 34.816143, 29.401117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174461, 35.552925, 29.441671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341602, 35.329453, 29.728245>,  <34.441887, 35.195370, 29.900188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341602, 35.329453, 29.728245>,  <34.174461, 35.552925, 29.441671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341602, 35.329453, 29.728245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904332, 0.180177, -0.386936,
		0.087087, 0.809577, 0.580517,
		0.417850, -0.558678, 0.716436,
		34.466957, 35.161850, 29.943176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748627, 35.866272, 29.756571>,  <34.174461, 35.552925, 29.441671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748627, 35.866272, 29.756571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835918, 35.486141, 29.845348>,  <34.888294, 35.258064, 29.898615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835918, 35.486141, 29.845348>,  <34.748627, 35.866272, 29.756571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835918, 35.486141, 29.845348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915249, 0.120379, -0.384484,
		0.338668, 0.287038, 0.896054,
		0.218228, -0.950325, 0.221942,
		34.901386, 35.201042, 29.911930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422955, 35.872982, 29.910648>,  <34.748627, 35.866272, 29.756571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422955, 35.872982, 29.910648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377575, 35.481194, 29.843994>,  <35.350346, 35.246120, 29.804001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377575, 35.481194, 29.843994>,  <35.422955, 35.872982, 29.910648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377575, 35.481194, 29.843994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909498, -0.034868, -0.414244,
		0.399929, -0.198551, 0.894782,
		-0.113448, -0.979470, -0.166637,
		35.343540, 35.187351, 29.794003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983803, 35.559097, 30.121649>,  <35.422955, 35.872982, 29.910648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983803, 35.559097, 30.121649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.853497, 35.298374, 29.847708>,  <35.775314, 35.141941, 29.683344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.853497, 35.298374, 29.847708>,  <35.983803, 35.559097, 30.121649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853497, 35.298374, 29.847708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912677, -0.027736, -0.407739,
		0.246773, -0.757877, 0.603925,
		-0.325766, -0.651808, -0.684853,
		35.755768, 35.102833, 29.642252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477795, 34.875084, 30.142086>,  <35.983803, 35.559097, 30.121649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477795, 34.875084, 30.142086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302921, 34.893486, 29.782808>,  <36.197998, 34.904526, 29.567242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302921, 34.893486, 29.782808>,  <36.477795, 34.875084, 30.142086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302921, 34.893486, 29.782808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897526, -0.041651, -0.438990,
		-0.057607, -0.998073, -0.023082,
		-0.437182, 0.046006, -0.898196,
		36.171768, 34.907288, 29.513350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905018, 34.498890, 29.827898>,  <36.477795, 34.875084, 30.142086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905018, 34.498890, 29.827898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729111, 34.674461, 29.514479>,  <36.623566, 34.779804, 29.326427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729111, 34.674461, 29.514479>,  <36.905018, 34.498890, 29.827898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729111, 34.674461, 29.514479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837187, -0.115514, -0.534579,
		-0.325151, -0.891067, -0.316664,
		-0.439767, 0.438926, -0.783549,
		36.597179, 34.806141, 29.279413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853603, 34.013992, 29.278517>,  <36.905018, 34.498890, 29.827898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853603, 34.013992, 29.278517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855877, 34.388462, 29.137924>,  <36.857239, 34.613144, 29.053568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855877, 34.388462, 29.137924>,  <36.853603, 34.013992, 29.278517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855877, 34.388462, 29.137924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713533, -0.250052, -0.654480,
		-0.700598, -0.247076, -0.669414,
		0.005682, 0.936177, -0.351483,
		36.857582, 34.669315, 29.032478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812458, 33.911743, 28.595678>,  <36.853603, 34.013992, 29.278517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812458, 33.911743, 28.595678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951065, 34.285809, 28.625034>,  <37.034229, 34.510250, 28.642649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951065, 34.285809, 28.625034>,  <36.812458, 33.911743, 28.595678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951065, 34.285809, 28.625034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602749, -0.162029, -0.781307,
		-0.718761, 0.314977, -0.619817,
		0.346522, 0.935166, 0.073392,
		37.055023, 34.566357, 28.647051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914749, 34.121132, 27.810295>,  <36.812458, 33.911743, 28.595678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914749, 34.121132, 27.810295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102772, 34.422401, 27.994370>,  <37.215588, 34.603165, 28.104815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102772, 34.422401, 27.994370>,  <36.914749, 34.121132, 27.810295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102772, 34.422401, 27.994370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698102, 0.001783, -0.715996,
		-0.540090, 0.657820, -0.524954,
		0.470060, 0.753173, 0.460188,
		37.243790, 34.648354, 28.132425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191349, 34.435635, 27.274408>,  <36.914749, 34.121132, 27.810295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191349, 34.435635, 27.274408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397625, 34.581219, 27.584658>,  <37.521393, 34.668568, 27.770807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397625, 34.581219, 27.584658>,  <37.191349, 34.435635, 27.274408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397625, 34.581219, 27.584658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836446, -0.017837, -0.547759,
		-0.185528, 0.931243, -0.313633,
		0.515691, 0.363962, 0.775625,
		37.552334, 34.690407, 27.817345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469315, 35.028965, 27.055008>,  <37.191349, 34.435635, 27.274408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469315, 35.028965, 27.055008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684834, 34.901520, 27.366951>,  <37.814144, 34.825050, 27.554117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684834, 34.901520, 27.366951>,  <37.469315, 35.028965, 27.055008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684834, 34.901520, 27.366951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840818, 0.146071, -0.521238,
		0.052160, 0.936561, 0.346601,
		0.538800, -0.318616, 0.779858,
		37.846474, 34.805935, 27.600908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086418, 35.456856, 27.058384>,  <37.469315, 35.028965, 27.055008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086418, 35.456856, 27.058384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188866, 35.130524, 27.265776>,  <38.250336, 34.934723, 27.390211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188866, 35.130524, 27.265776>,  <38.086418, 35.456856, 27.058384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188866, 35.130524, 27.265776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892359, -0.006647, -0.451277,
		0.371613, 0.578251, 0.726313,
		0.256123, -0.815832, 0.518477,
		38.265701, 34.885773, 27.421318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714771, 35.598354, 27.360506>,  <38.086418, 35.456856, 27.058384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714771, 35.598354, 27.360506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.679214, 35.202114, 27.318907>,  <38.657883, 34.964371, 27.293947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.679214, 35.202114, 27.318907>,  <38.714771, 35.598354, 27.360506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679214, 35.202114, 27.318907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790414, -0.006617, -0.612537,
		0.606090, -0.136649, 0.783570,
		-0.088888, -0.990597, -0.103999,
		38.652550, 34.904934, 27.287706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381184, 35.457397, 27.453114>,  <38.714771, 35.598354, 27.360506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381184, 35.457397, 27.453114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.201431, 35.148548, 27.273386>,  <39.093578, 34.963238, 27.165550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.201431, 35.148548, 27.273386>,  <39.381184, 35.457397, 27.453114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201431, 35.148548, 27.273386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822048, -0.160521, -0.546325,
		0.349704, -0.614869, 0.706855,
		-0.449383, -0.772120, -0.449317,
		39.066616, 34.916912, 27.138592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905903, 35.092663, 27.414282>,  <39.381184, 35.457397, 27.453114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905903, 35.092663, 27.414282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632408, 34.915894, 27.182005>,  <39.468311, 34.809834, 27.042639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632408, 34.915894, 27.182005>,  <39.905903, 35.092663, 27.414282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632408, 34.915894, 27.182005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718815, -0.270797, -0.640292,
		0.125708, -0.855204, 0.502815,
		-0.683741, -0.441921, -0.580692,
		39.427284, 34.783318, 27.007797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147755, 34.494186, 27.253487>,  <39.905903, 35.092663, 27.414282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147755, 34.494186, 27.253487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.879063, 34.566887, 26.966225>,  <39.717846, 34.610508, 26.793867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.879063, 34.566887, 26.966225>,  <40.147755, 34.494186, 27.253487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879063, 34.566887, 26.966225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662129, -0.287436, -0.692073,
		-0.332211, -0.940397, 0.072734,
		-0.671730, 0.181755, -0.718153,
		39.677544, 34.621410, 26.750778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147743, 33.948105, 26.917084>,  <40.147755, 34.494186, 27.253487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147743, 33.948105, 26.917084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.969589, 34.201153, 26.663652>,  <39.862698, 34.352982, 26.511593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.969589, 34.201153, 26.663652>,  <40.147743, 33.948105, 26.917084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969589, 34.201153, 26.663652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402092, -0.490937, -0.772854,
		-0.799972, -0.598974, -0.035716,
		-0.445384, 0.632622, -0.633578,
		39.835976, 34.390938, 26.473579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898357, 33.588799, 26.352303>,  <40.147743, 33.948105, 26.917084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898357, 33.588799, 26.352303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.954288, 33.960171, 26.214628>,  <39.987846, 34.182995, 26.132025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.954288, 33.960171, 26.214628>,  <39.898357, 33.588799, 26.352303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954288, 33.960171, 26.214628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501230, -0.366142, -0.784033,
		-0.853942, -0.062886, -0.516555,
		0.139828, 0.928432, -0.344184,
		39.996235, 34.238701, 26.111372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650372, 33.602032, 25.656878>,  <39.898357, 33.588799, 26.352303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650372, 33.602032, 25.656878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.915234, 33.896931, 25.710566>,  <40.074150, 34.073872, 25.742779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.915234, 33.896931, 25.710566>,  <39.650372, 33.602032, 25.656878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915234, 33.896931, 25.710566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569181, -0.378305, -0.730013,
		-0.487424, 0.559777, -0.670124,
		0.662156, 0.737248, 0.134219,
		40.113880, 34.118107, 25.750832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926907, 33.807358, 25.013054>,  <39.650372, 33.602032, 25.656878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926907, 33.807358, 25.013054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196140, 33.955700, 25.268997>,  <40.357681, 34.044704, 25.422564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196140, 33.955700, 25.268997>,  <39.926907, 33.807358, 25.013054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196140, 33.955700, 25.268997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727047, -0.173320, -0.664352,
		-0.135477, 0.912375, -0.386288,
		0.673089, 0.370853, 0.639859,
		40.398067, 34.066956, 25.460955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394249, 34.147453, 24.581417>,  <39.926907, 33.807358, 25.013054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394249, 34.147453, 24.581417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.613419, 34.139931, 24.915945>,  <40.744919, 34.135418, 25.116661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.613419, 34.139931, 24.915945>,  <40.394249, 34.147453, 24.581417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613419, 34.139931, 24.915945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828509, -0.125915, -0.545635,
		0.115568, 0.991863, -0.053409,
		0.547920, -0.018808, 0.836319,
		40.777794, 34.134289, 25.166842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900284, 34.689339, 24.531687>,  <40.394249, 34.147453, 24.581417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900284, 34.689339, 24.531687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.054752, 34.434330, 24.798349>,  <41.147434, 34.281322, 24.958347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.054752, 34.434330, 24.798349>,  <40.900284, 34.689339, 24.531687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054752, 34.434330, 24.798349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845768, -0.043744, -0.531755,
		0.368169, 0.769187, 0.522305,
		0.386172, -0.637524, 0.666659,
		41.170605, 34.243073, 24.998346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681824, 34.922218, 24.616314>,  <40.900284, 34.689339, 24.531687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681824, 34.922218, 24.616314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.647747, 34.548046, 24.753551>,  <41.627300, 34.323544, 24.835894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.647747, 34.548046, 24.753551>,  <41.681824, 34.922218, 24.616314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647747, 34.548046, 24.753551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860107, -0.242861, -0.448592,
		0.502950, 0.256884, 0.825258,
		-0.085187, -0.935430, 0.343095,
		41.622192, 34.267418, 24.856480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330006, 34.735817, 24.917624>,  <41.681824, 34.922218, 24.616314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330006, 34.735817, 24.917624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.135742, 34.390167, 24.864828>,  <42.019184, 34.182777, 24.833151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.135742, 34.390167, 24.864828>,  <42.330006, 34.735817, 24.917624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135742, 34.390167, 24.864828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740165, -0.326168, -0.588022,
		0.465076, -0.383270, 0.798003,
		-0.485654, -0.864129, -0.131990,
		41.990047, 34.130928, 24.825232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832279, 34.194702, 24.986485>,  <42.330006, 34.735817, 24.917624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832279, 34.194702, 24.986485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.529163, 34.030556, 24.783562>,  <42.347294, 33.932068, 24.661808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.529163, 34.030556, 24.783562>,  <42.832279, 34.194702, 24.986485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529163, 34.030556, 24.783562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650164, -0.409120, -0.640240,
		0.055183, -0.814998, 0.576831,
		-0.757787, -0.410365, -0.507305,
		42.301826, 33.907448, 24.631371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941639, 33.438198, 24.954042>,  <42.832279, 34.194702, 24.986485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941639, 33.438198, 24.954042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.717113, 33.549892, 24.642414>,  <42.582397, 33.616909, 24.455437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.717113, 33.549892, 24.642414>,  <42.941639, 33.438198, 24.954042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717113, 33.549892, 24.642414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732061, -0.271549, -0.624778,
		-0.386018, -0.921025, -0.051994,
		-0.561317, 0.279238, -0.779070,
		42.548717, 33.633663, 24.408693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774689, 32.808746, 25.316139>,  <42.941639, 33.438198, 24.954042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774689, 32.808746, 25.316139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.005775, 32.635502, 25.592878>,  <43.144428, 32.531555, 25.758923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.005775, 32.635502, 25.592878>,  <42.774689, 32.808746, 25.316139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005775, 32.635502, 25.592878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768591, -0.003304, 0.639732,
		-0.274790, -0.901333, -0.334796,
		0.577718, -0.433114, 0.691849,
		43.179092, 32.505569, 25.800432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359425, 32.354801, 25.661854>,  <42.774689, 32.808746, 25.316139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359425, 32.354801, 25.661854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.658527, 32.416683, 25.920135>,  <42.837990, 32.453812, 26.075104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.658527, 32.416683, 25.920135>,  <42.359425, 32.354801, 25.661854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658527, 32.416683, 25.920135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649454, -0.031871, 0.759733,
		0.138116, -0.987446, 0.076644,
		0.747753, 0.154708, 0.645702,
		42.882854, 32.463097, 26.113846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328003, 31.846491, 26.255495>,  <42.359425, 32.354801, 25.661854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328003, 31.846491, 26.255495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.540092, 32.150440, 26.405937>,  <42.667347, 32.332809, 26.496202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.540092, 32.150440, 26.405937>,  <42.328003, 31.846491, 26.255495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540092, 32.150440, 26.405937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686247, 0.124110, 0.716702,
		0.497925, -0.638113, 0.587267,
		0.530223, 0.759874, 0.376106,
		42.699158, 32.378403, 26.518768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429760, 31.783842, 27.019171>,  <42.328003, 31.846491, 26.255495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429760, 31.783842, 27.019171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.494579, 32.176353, 26.977539>,  <42.533470, 32.411861, 26.952560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.494579, 32.176353, 26.977539>,  <42.429760, 31.783842, 27.019171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494579, 32.176353, 26.977539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500136, 0.172595, 0.848572,
		0.850650, -0.085455, 0.518742,
		0.162047, 0.981279, -0.104079,
		42.543194, 32.470737, 26.946316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717579, 32.059616, 27.686920>,  <42.429760, 31.783842, 27.019171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717579, 32.059616, 27.686920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.559963, 32.371090, 27.491619>,  <42.465393, 32.557972, 27.374439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.559963, 32.371090, 27.491619>,  <42.717579, 32.059616, 27.686920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559963, 32.371090, 27.491619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586441, 0.196028, 0.785913,
		0.707687, 0.596011, 0.379408,
		-0.394038, 0.778681, -0.488252,
		42.441753, 32.604694, 27.345144>
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
