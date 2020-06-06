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
	<24.335060, 35.259102, 35.360691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292318, 34.927551, 35.141041>,  <24.266674, 34.728619, 35.009251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292318, 34.927551, 35.141041>,  <24.335060, 35.259102, 35.360691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292318, 34.927551, 35.141041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613365, 0.379724, -0.692527,
		0.782538, -0.410814, 0.467831,
		-0.106853, -0.828880, -0.549127,
		24.260262, 34.678886, 34.976303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994490, 34.968796, 35.093666>,  <24.335060, 35.259102, 35.360691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994490, 34.968796, 35.093666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706520, 34.853077, 34.841312>,  <24.533739, 34.783646, 34.689899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706520, 34.853077, 34.841312>,  <24.994490, 34.968796, 35.093666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706520, 34.853077, 34.841312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582046, 0.243493, -0.775844,
		0.378064, -0.925754, -0.006913,
		-0.719924, -0.289295, -0.630887,
		24.490543, 34.766289, 34.652046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283070, 34.678360, 34.558887>,  <24.994490, 34.968796, 35.093666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283070, 34.678360, 34.558887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923119, 34.808186, 34.442356>,  <24.707148, 34.886082, 34.372437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923119, 34.808186, 34.442356>,  <25.283070, 34.678360, 34.558887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923119, 34.808186, 34.442356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424104, 0.495362, -0.758124,
		-0.101744, -0.805776, -0.583414,
		-0.899880, 0.324563, -0.291333,
		24.653154, 34.905556, 34.354958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107996, 34.357700, 33.910126>,  <25.283070, 34.678360, 34.558887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107996, 34.357700, 33.910126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991369, 34.734585, 33.976128>,  <24.921392, 34.960716, 34.015728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991369, 34.734585, 33.976128>,  <25.107996, 34.357700, 33.910126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991369, 34.734585, 33.976128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719490, 0.329694, -0.611257,
		-0.630335, -0.059502, -0.774040,
		-0.291567, 0.942211, 0.165006,
		24.903898, 35.017246, 34.025631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906858, 34.636608, 33.151451>,  <25.107996, 34.357700, 33.910126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906858, 34.636608, 33.151451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983269, 34.924896, 33.418003>,  <25.029116, 35.097870, 33.577934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983269, 34.924896, 33.418003>,  <24.906858, 34.636608, 33.151451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983269, 34.924896, 33.418003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588067, 0.459536, -0.665586,
		-0.785930, 0.519023, -0.336049,
		0.191027, 0.720723, 0.666383,
		25.040577, 35.141113, 33.617920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733244, 35.394470, 32.963715>,  <24.906858, 34.636608, 33.151451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733244, 35.394470, 32.963715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045294, 35.357708, 33.211250>,  <25.232523, 35.335651, 33.359772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045294, 35.357708, 33.211250>,  <24.733244, 35.394470, 32.963715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045294, 35.357708, 33.211250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620008, 0.245818, -0.745093,
		-0.083642, 0.964949, 0.248753,
		0.780124, -0.091908, 0.618837,
		25.279331, 35.330135, 33.396900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203781, 36.049000, 32.912304>,  <24.733244, 35.394470, 32.963715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203781, 36.049000, 32.912304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390862, 35.706627, 33.000515>,  <25.503109, 35.501202, 33.053440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390862, 35.706627, 33.000515>,  <25.203781, 36.049000, 32.912304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.390862, 35.706627, 33.000515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797618, 0.301196, -0.522577,
		0.380870, 0.420307, 0.823578,
		0.467701, -0.855934, 0.220527,
		25.531172, 35.449848, 33.066673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858440, 36.147755, 33.233654>,  <25.203781, 36.049000, 32.912304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858440, 36.147755, 33.233654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860754, 35.795864, 33.043476>,  <25.862143, 35.584732, 32.929367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860754, 35.795864, 33.043476>,  <25.858440, 36.147755, 33.233654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860754, 35.795864, 33.043476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839631, 0.262510, -0.475508,
		0.543126, -0.396450, 0.740163,
		0.005785, -0.879725, -0.475448,
		25.862490, 35.531948, 32.900841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586050, 35.755867, 33.337795>,  <25.858440, 36.147755, 33.233654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586050, 35.755867, 33.337795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399578, 35.639111, 33.003735>,  <26.287695, 35.569057, 32.803299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399578, 35.639111, 33.003735>,  <26.586050, 35.755867, 33.337795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399578, 35.639111, 33.003735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804811, 0.252072, -0.537344,
		0.367364, -0.922637, 0.117406,
		-0.466179, -0.291890, -0.835151,
		26.259724, 35.551544, 32.753189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999010, 35.262894, 33.039951>,  <26.586050, 35.755867, 33.337795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999010, 35.262894, 33.039951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779087, 35.351372, 32.717762>,  <26.647133, 35.404461, 32.524448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779087, 35.351372, 32.717762>,  <26.999010, 35.262894, 33.039951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779087, 35.351372, 32.717762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824806, -0.008530, -0.565352,
		-0.131927, -0.975191, -0.177757,
		-0.549810, 0.221200, -0.805469,
		26.614143, 35.417732, 32.476120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213903, 34.729778, 32.569931>,  <26.999010, 35.262894, 33.039951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213903, 34.729778, 32.569931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047565, 35.040920, 32.381458>,  <26.947763, 35.227604, 32.268375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047565, 35.040920, 32.381458>,  <27.213903, 34.729778, 32.569931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047565, 35.040920, 32.381458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835565, 0.122247, -0.535618,
		-0.359032, -0.616439, -0.700785,
		-0.415845, 0.777856, -0.471184,
		26.922812, 35.274277, 32.240105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434847, 34.728916, 31.881350>,  <27.213903, 34.729778, 32.569931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434847, 34.728916, 31.881350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352755, 35.105492, 31.988359>,  <27.303499, 35.331436, 32.052567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352755, 35.105492, 31.988359>,  <27.434847, 34.728916, 31.881350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352755, 35.105492, 31.988359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880948, 0.296779, -0.368583,
		-0.426395, 0.160030, -0.890269,
		-0.205228, 0.941442, 0.267523,
		27.291185, 35.387924, 32.068615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452538, 35.148174, 31.327971>,  <27.434847, 34.728916, 31.881350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452538, 35.148174, 31.327971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545515, 35.390907, 31.632004>,  <27.601301, 35.536545, 31.814425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545515, 35.390907, 31.632004>,  <27.452538, 35.148174, 31.327971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545515, 35.390907, 31.632004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760936, 0.373264, -0.530708,
		-0.605761, 0.701735, -0.374995,
		0.232444, 0.606829, 0.760085,
		27.615248, 35.572956, 31.860029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498756, 35.674377, 31.037146>,  <27.452538, 35.148174, 31.327971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498756, 35.674377, 31.037146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679750, 35.788578, 31.375080>,  <27.788347, 35.857098, 31.577841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679750, 35.788578, 31.375080>,  <27.498756, 35.674377, 31.037146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679750, 35.788578, 31.375080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595325, 0.608647, -0.524535,
		-0.663962, 0.740296, 0.105438,
		0.452485, 0.285501, 0.844835,
		27.815496, 35.874229, 31.628531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417301, 36.400471, 31.033024>,  <27.498756, 35.674377, 31.037146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417301, 36.400471, 31.033024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742844, 36.289097, 31.237030>,  <27.938169, 36.222275, 31.359434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742844, 36.289097, 31.237030>,  <27.417301, 36.400471, 31.033024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742844, 36.289097, 31.237030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535011, 0.701539, -0.470751,
		-0.226725, 0.655987, 0.719914,
		0.813854, -0.278431, 0.510017,
		27.987000, 36.205566, 31.390036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131540, 36.411221, 31.709694>,  <27.417301, 36.400471, 31.033024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131540, 36.411221, 31.709694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125101, 36.012886, 31.745581>,  <27.121239, 35.773884, 31.767113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125101, 36.012886, 31.745581>,  <27.131540, 36.411221, 31.709694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125101, 36.012886, 31.745581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973675, 0.036015, 0.225075,
		-0.227370, -0.083732, -0.970202,
		-0.016096, -0.995837, 0.089717,
		27.120272, 35.714134, 31.772495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485594, 36.301334, 31.507681>,  <27.131540, 36.411221, 31.709694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485594, 36.301334, 31.507681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598385, 35.974922, 31.709507>,  <26.666059, 35.779076, 31.830603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598385, 35.974922, 31.709507>,  <26.485594, 36.301334, 31.507681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598385, 35.974922, 31.709507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889775, -0.025707, 0.455676,
		-0.358874, -0.577437, -0.733332,
		0.281976, -0.816030, 0.504563,
		26.682978, 35.730114, 31.860876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926294, 35.826309, 31.480053>,  <26.485594, 36.301334, 31.507681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926294, 35.826309, 31.480053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136589, 35.716812, 31.802212>,  <26.262766, 35.651115, 31.995508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136589, 35.716812, 31.802212>,  <25.926294, 35.826309, 31.480053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136589, 35.716812, 31.802212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818579, -0.420328, 0.391475,
		0.231369, -0.865095, -0.445061,
		0.525735, -0.273742, 0.805399,
		26.294310, 35.634689, 32.043831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676226, 35.152077, 31.621708>,  <25.926294, 35.826309, 31.480053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676226, 35.152077, 31.621708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868055, 35.233459, 31.963142>,  <25.983154, 35.282291, 32.168003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868055, 35.233459, 31.963142>,  <25.676226, 35.152077, 31.621708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868055, 35.233459, 31.963142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688129, -0.516409, 0.509706,
		0.544504, -0.831821, -0.107652,
		0.479576, 0.203459, 0.853587,
		26.011929, 35.294498, 32.219219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700840, 34.559647, 32.015305>,  <25.676226, 35.152077, 31.621708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700840, 34.559647, 32.015305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748043, 34.851501, 32.284733>,  <25.776365, 35.026615, 32.446392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748043, 34.851501, 32.284733>,  <25.700840, 34.559647, 32.015305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748043, 34.851501, 32.284733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690393, -0.427266, 0.583782,
		0.713744, -0.533923, 0.453316,
		0.118008, 0.729638, 0.673575,
		25.783445, 35.070393, 32.486805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771477, 34.287750, 32.684750>,  <25.700840, 34.559647, 32.015305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771477, 34.287750, 32.684750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619341, 34.655384, 32.725975>,  <25.528059, 34.875965, 32.750710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619341, 34.655384, 32.725975>,  <25.771477, 34.287750, 32.684750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619341, 34.655384, 32.725975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697805, -0.358317, 0.620223,
		0.606968, 0.163978, 0.777626,
		-0.380340, 0.919086, 0.103062,
		25.505239, 34.931110, 32.756893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273495, 34.243172, 33.167858>,  <25.771477, 34.287750, 32.684750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273495, 34.243172, 33.167858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083229, 33.893738, 33.126675>,  <25.969070, 33.684078, 33.101967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083229, 33.893738, 33.126675>,  <26.273495, 34.243172, 33.167858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083229, 33.893738, 33.126675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114338, 0.054647, -0.991938,
		0.872165, -0.483599, 0.073890,
		-0.475662, -0.873582, -0.102955,
		25.940531, 33.631664, 33.095787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731825, 33.693302, 33.031460>,  <26.273495, 34.243172, 33.167858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731825, 33.693302, 33.031460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996656, 33.441544, 32.868725>,  <27.155556, 33.290489, 32.771084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996656, 33.441544, 32.868725>,  <26.731825, 33.693302, 33.031460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996656, 33.441544, 32.868725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667573, 0.741999, -0.061514,
		0.340587, -0.230865, 0.911429,
		0.662077, -0.629396, -0.406834,
		27.195280, 33.252724, 32.746674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368563, 33.769192, 33.370468>,  <26.731825, 33.693302, 33.031460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368563, 33.769192, 33.370468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408533, 33.638142, 32.994663>,  <27.432514, 33.559513, 32.769180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408533, 33.638142, 32.994663>,  <27.368563, 33.769192, 33.370468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408533, 33.638142, 32.994663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545240, 0.807872, -0.223731,
		0.832303, -0.489901, 0.259361,
		0.099925, -0.327627, -0.939508,
		27.438511, 33.539852, 32.712811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452700, 33.827290, 34.080231>,  <27.368563, 33.769192, 33.370468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452700, 33.827290, 34.080231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731794, 34.113594, 34.068600>,  <27.899252, 34.285378, 34.061619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731794, 34.113594, 34.068600>,  <27.452700, 33.827290, 34.080231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731794, 34.113594, 34.068600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238462, -0.193793, 0.951620,
		0.675499, -0.670915, -0.305899,
		0.697737, 0.715763, -0.029081,
		27.941116, 34.328323, 34.059875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137041, 33.409252, 34.069256>,  <27.452700, 33.827290, 34.080231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137041, 33.409252, 34.069256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166916, 33.790947, 34.185085>,  <28.184841, 34.019966, 34.254581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166916, 33.790947, 34.185085>,  <28.137041, 33.409252, 34.069256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166916, 33.790947, 34.185085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322006, -0.297902, 0.898647,
		0.943787, 0.026128, -0.329520,
		0.074685, 0.954239, 0.289570,
		28.189322, 34.077217, 34.271957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833170, 33.627701, 34.233490>,  <28.137041, 33.409252, 34.069256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833170, 33.627701, 34.233490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558273, 33.813511, 34.456886>,  <28.393335, 33.924995, 34.590923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558273, 33.813511, 34.456886>,  <28.833170, 33.627701, 34.233490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558273, 33.813511, 34.456886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457920, -0.319799, 0.829481,
		0.563921, 0.825799, 0.007064,
		-0.687243, 0.464527, 0.558491,
		28.352100, 33.952869, 34.624432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159969, 34.029537, 34.738220>,  <28.833170, 33.627701, 34.233490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159969, 34.029537, 34.738220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791416, 33.942936, 34.867325>,  <28.570284, 33.890976, 34.944790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791416, 33.942936, 34.867325>,  <29.159969, 34.029537, 34.738220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791416, 33.942936, 34.867325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373907, -0.267208, 0.888140,
		-0.106039, 0.939003, 0.327153,
		-0.921384, -0.216502, 0.322765,
		28.515001, 33.877987, 34.964153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733030, 34.397820, 35.328060>,  <29.159969, 34.029537, 34.738220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733030, 34.397820, 35.328060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623177, 34.013706, 35.347801>,  <28.557264, 33.783237, 35.359646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623177, 34.013706, 35.347801>,  <28.733030, 34.397820, 35.328060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623177, 34.013706, 35.347801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414982, -0.072074, 0.906970,
		-0.867389, 0.269566, 0.418294,
		-0.274636, -0.960281, 0.049348,
		28.540785, 33.725620, 35.362606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316763, 34.197823, 35.950027>,  <28.733030, 34.397820, 35.328060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316763, 34.197823, 35.950027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561625, 33.902046, 35.837959>,  <28.708542, 33.724579, 35.770718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561625, 33.902046, 35.837959>,  <28.316763, 34.197823, 35.950027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561625, 33.902046, 35.837959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424573, 0.008450, 0.905354,
		-0.667087, -0.673170, 0.319119,
		0.612154, -0.739440, -0.280172,
		28.745270, 33.680214, 35.753906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413349, 33.639347, 36.458332>,  <28.316763, 34.197823, 35.950027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413349, 33.639347, 36.458332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749413, 33.611786, 36.243153>,  <28.951050, 33.595249, 36.114044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749413, 33.611786, 36.243153>,  <28.413349, 33.639347, 36.458332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749413, 33.611786, 36.243153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542181, 0.082361, 0.836216,
		-0.013319, -0.994217, 0.106558,
		0.840156, -0.068911, -0.537949,
		29.001459, 33.591114, 36.081768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743942, 33.304390, 36.870728>,  <28.413349, 33.639347, 36.458332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743942, 33.304390, 36.870728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040258, 33.442600, 36.640305>,  <29.218048, 33.525528, 36.502052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040258, 33.442600, 36.640305>,  <28.743942, 33.304390, 36.870728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040258, 33.442600, 36.640305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607290, 0.022046, 0.794174,
		0.287108, -0.938150, -0.193503,
		0.740789, 0.345526, -0.576059,
		29.262495, 33.546257, 36.467487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365236, 32.881218, 37.046413>,  <28.743942, 33.304390, 36.870728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365236, 32.881218, 37.046413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481102, 33.225731, 36.879421>,  <29.550621, 33.432438, 36.779228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481102, 33.225731, 36.879421>,  <29.365236, 32.881218, 37.046413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481102, 33.225731, 36.879421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724364, 0.087834, 0.683800,
		0.625613, -0.500478, -0.598439,
		0.289664, 0.861282, -0.417479,
		29.568001, 33.484116, 36.754177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127491, 32.692841, 36.915642>,  <29.365236, 32.881218, 37.046413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127491, 32.692841, 36.915642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077829, 33.089062, 36.938908>,  <30.048033, 33.326794, 36.952866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077829, 33.089062, 36.938908>,  <30.127491, 32.692841, 36.915642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077829, 33.089062, 36.938908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646651, 0.036313, 0.761922,
		0.752614, 0.132207, -0.645053,
		-0.124155, 0.990557, 0.058162,
		30.040583, 33.386230, 36.956356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750944, 33.093910, 37.157417>,  <30.127491, 32.692841, 36.915642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750944, 33.093910, 37.157417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426573, 33.294445, 37.278122>,  <30.231951, 33.414764, 37.350544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426573, 33.294445, 37.278122>,  <30.750944, 33.093910, 37.157417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426573, 33.294445, 37.278122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483677, 0.284053, 0.827871,
		0.329323, 0.817300, -0.472830,
		-0.810927, 0.501334, 0.301764,
		30.183294, 33.444843, 37.368652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029057, 32.661423, 37.690018>,  <30.750944, 33.093910, 37.157417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029057, 32.661423, 37.690018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207773, 33.019218, 37.696445>,  <31.315002, 33.233898, 37.700302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207773, 33.019218, 37.696445>,  <31.029057, 32.661423, 37.690018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207773, 33.019218, 37.696445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863032, 0.435671, -0.255667,
		-0.235695, 0.100359, 0.966631,
		0.446792, 0.894494, 0.016073,
		31.341810, 33.287567, 37.701267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478619, 33.086296, 38.022392>,  <31.029057, 32.661423, 37.690018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478619, 33.086296, 38.022392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725748, 33.337715, 37.833408>,  <30.874025, 33.488567, 37.720020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725748, 33.337715, 37.833408>,  <30.478619, 33.086296, 38.022392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725748, 33.337715, 37.833408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782143, 0.429428, -0.451490,
		-0.080898, 0.648471, 0.756929,
		0.617825, 0.628552, -0.472457,
		30.911095, 33.526279, 37.691669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190685, 33.811203, 38.103622>,  <30.478619, 33.086296, 38.022392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190685, 33.811203, 38.103622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422255, 33.786327, 37.778419>,  <30.561195, 33.771400, 37.583298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422255, 33.786327, 37.778419>,  <30.190685, 33.811203, 38.103622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422255, 33.786327, 37.778419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788058, 0.213290, -0.577471,
		0.209319, 0.975008, 0.074470,
		0.578922, -0.062189, -0.813008,
		30.595932, 33.767670, 37.534515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775042, 34.322578, 37.787220>,  <30.190685, 33.811203, 38.103622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775042, 34.322578, 37.787220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008507, 34.121403, 37.532227>,  <30.148586, 34.000698, 37.379230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008507, 34.121403, 37.532227>,  <29.775042, 34.322578, 37.787220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008507, 34.121403, 37.532227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653886, 0.174350, -0.736231,
		0.481426, 0.846554, -0.227103,
		0.583663, -0.502940, -0.637486,
		30.183605, 33.970520, 37.340981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818266, 34.652531, 37.119949>,  <29.775042, 34.322578, 37.787220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818266, 34.652531, 37.119949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865240, 34.258251, 37.071609>,  <29.893425, 34.021683, 37.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865240, 34.258251, 37.071609>,  <29.818266, 34.652531, 37.119949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865240, 34.258251, 37.071609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688532, 0.006874, -0.725173,
		0.715634, 0.168369, -0.677879,
		0.117437, -0.985700, -0.120847,
		29.900471, 33.962540, 37.035355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039516, 34.606251, 36.416946>,  <29.818266, 34.652531, 37.119949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039516, 34.606251, 36.416946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906773, 34.238010, 36.499275>,  <29.827126, 34.017067, 36.548672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906773, 34.238010, 36.499275>,  <30.039516, 34.606251, 36.416946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906773, 34.238010, 36.499275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479315, -0.023366, -0.877332,
		0.812482, -0.389805, -0.433504,
		-0.331859, -0.920601, 0.205824,
		29.807215, 33.961830, 36.561024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181372, 34.098766, 35.815388>,  <30.039516, 34.606251, 36.416946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181372, 34.098766, 35.815388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880280, 33.943375, 36.027985>,  <29.699625, 33.850140, 36.155544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880280, 33.943375, 36.027985>,  <30.181372, 34.098766, 35.815388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880280, 33.943375, 36.027985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587034, 0.030660, -0.808981,
		0.297974, -0.920949, -0.251127,
		-0.752730, -0.388475, 0.531493,
		29.654461, 33.826832, 36.187431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178293, 33.345741, 36.093491>,  <30.181372, 34.098766, 35.815388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178293, 33.345741, 36.093491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236429, 33.654316, 36.341286>,  <30.271311, 33.839462, 36.489964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236429, 33.654316, 36.341286>,  <30.178293, 33.345741, 36.093491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236429, 33.654316, 36.341286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567676, -0.577835, 0.586388,
		0.810321, 0.266441, -0.521909,
		0.145340, 0.771438, 0.619484,
		30.280031, 33.885746, 36.527130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865448, 33.281410, 36.263050>,  <30.178293, 33.345741, 36.093491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865448, 33.281410, 36.263050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710678, 33.482082, 36.572529>,  <30.617817, 33.602486, 36.758217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710678, 33.482082, 36.572529>,  <30.865448, 33.281410, 36.263050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710678, 33.482082, 36.572529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789094, -0.253977, 0.559309,
		0.477096, 0.826928, -0.297605,
		-0.386923, 0.501683, 0.773696,
		30.594601, 33.632587, 36.804638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354773, 33.683117, 36.475281>,  <30.865448, 33.281410, 36.263050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354773, 33.683117, 36.475281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120857, 33.687496, 36.799725>,  <30.980509, 33.690125, 36.994392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120857, 33.687496, 36.799725>,  <31.354773, 33.683117, 36.475281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120857, 33.687496, 36.799725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787736, -0.231025, 0.571051,
		0.193639, 0.972886, 0.126478,
		-0.584787, 0.010947, 0.811113,
		30.945421, 33.690781, 37.043060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750116, 34.201786, 36.907879>,  <31.354773, 33.683117, 36.475281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750116, 34.201786, 36.907879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497515, 33.998070, 37.141743>,  <31.345955, 33.875839, 37.282063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497515, 33.998070, 37.141743>,  <31.750116, 34.201786, 36.907879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497515, 33.998070, 37.141743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755055, -0.232437, 0.613078,
		-0.176339, 0.828610, 0.531329,
		-0.631503, -0.509293, 0.584658,
		31.308064, 33.845284, 37.317139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683645, 34.563633, 37.673664>,  <31.750116, 34.201786, 36.907879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683645, 34.563633, 37.673664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623764, 34.173012, 37.611782>,  <31.587835, 33.938641, 37.574654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623764, 34.173012, 37.611782>,  <31.683645, 34.563633, 37.673664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623764, 34.173012, 37.611782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667985, -0.215254, 0.712363,
		-0.728961, 0.003302, 0.684547,
		-0.149704, -0.976552, -0.154707,
		31.578854, 33.880047, 37.565369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544149, 34.133999, 38.318775>,  <31.683645, 34.563633, 37.673664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544149, 34.133999, 38.318775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729280, 33.913967, 38.040722>,  <31.840359, 33.781948, 37.873890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729280, 33.913967, 38.040722>,  <31.544149, 34.133999, 38.318775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729280, 33.913967, 38.040722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799263, -0.080179, 0.595609,
		-0.383365, -0.831257, 0.402545,
		0.462829, -0.550075, -0.695131,
		31.868130, 33.748943, 37.832184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812090, 33.527775, 38.638969>,  <31.544149, 34.133999, 38.318775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812090, 33.527775, 38.638969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051678, 33.557899, 38.320080>,  <32.195431, 33.575974, 38.128746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051678, 33.557899, 38.320080>,  <31.812090, 33.527775, 38.638969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051678, 33.557899, 38.320080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787197, -0.237915, 0.568962,
		-0.146822, -0.968362, -0.201788,
		0.598969, 0.075311, -0.797223,
		32.231369, 33.580494, 38.080914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168930, 32.940529, 38.598930>,  <31.812090, 33.527775, 38.638969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168930, 32.940529, 38.598930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380775, 33.221134, 38.408188>,  <32.507881, 33.389496, 38.293743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380775, 33.221134, 38.408188>,  <32.168930, 32.940529, 38.598930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380775, 33.221134, 38.408188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809267, -0.249421, 0.531861,
		0.254167, -0.667585, -0.699806,
		0.529609, 0.701512, -0.476860,
		32.539658, 33.431587, 38.265129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778385, 32.666138, 38.513409>,  <32.168930, 32.940529, 38.598930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778385, 32.666138, 38.513409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852768, 33.057953, 38.482628>,  <32.897396, 33.293041, 38.464157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852768, 33.057953, 38.482628>,  <32.778385, 32.666138, 38.513409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852768, 33.057953, 38.482628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930603, -0.150448, 0.333681,
		0.315276, -0.133665, -0.939540,
		0.185953, 0.979540, -0.076956,
		32.908554, 33.351814, 38.459541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330120, 32.686172, 38.146118>,  <32.778385, 32.666138, 38.513409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330120, 32.686172, 38.146118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312637, 33.014366, 38.374119>,  <33.302147, 33.211281, 38.510918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312637, 33.014366, 38.374119>,  <33.330120, 32.686172, 38.146118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312637, 33.014366, 38.374119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953768, -0.135541, 0.268244,
		0.297347, 0.555374, -0.776624,
		-0.043711, 0.820481, 0.570000,
		33.299522, 33.260509, 38.545120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528999, 33.046501, 37.667889>,  <33.330120, 32.686172, 38.146118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528999, 33.046501, 37.667889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484138, 33.316055, 37.959999>,  <33.457222, 33.477787, 38.135265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484138, 33.316055, 37.959999>,  <33.528999, 33.046501, 37.667889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484138, 33.316055, 37.959999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906456, -0.231724, 0.353046,
		0.407134, 0.701557, -0.584858,
		-0.112156, 0.673885, 0.730274,
		33.450493, 33.518223, 38.179081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052357, 33.567436, 37.719425>,  <33.528999, 33.046501, 37.667889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052357, 33.567436, 37.719425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916580, 33.561924, 38.095634>,  <33.835114, 33.558617, 38.321362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916580, 33.561924, 38.095634>,  <34.052357, 33.567436, 37.719425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916580, 33.561924, 38.095634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938666, 0.059595, 0.339639,
		-0.060731, 0.998128, -0.007292,
		-0.339438, -0.013782, 0.940528,
		33.814751, 33.557789, 38.377792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360523, 34.111576, 38.052109>,  <34.052357, 33.567436, 37.719425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360523, 34.111576, 38.052109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265240, 33.879871, 38.363934>,  <34.208069, 33.740849, 38.551029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265240, 33.879871, 38.363934>,  <34.360523, 34.111576, 38.052109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265240, 33.879871, 38.363934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954857, 0.007011, 0.296985,
		-0.177497, 0.815112, 0.551441,
		-0.238210, -0.579261, 0.779559,
		34.193775, 33.706093, 38.597801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904339, 34.306915, 38.553688>,  <34.360523, 34.111576, 38.052109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904339, 34.306915, 38.553688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727398, 33.972424, 38.683331>,  <34.621235, 33.771729, 38.761116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727398, 33.972424, 38.683331>,  <34.904339, 34.306915, 38.553688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727398, 33.972424, 38.683331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839363, -0.258723, 0.478050,
		-0.315905, 0.483510, 0.816347,
		-0.442350, -0.836230, 0.324108,
		34.594692, 33.721554, 38.780563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904663, 34.212322, 39.387856>,  <34.904339, 34.306915, 38.553688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904663, 34.212322, 39.387856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946728, 34.544514, 39.169044>,  <34.971966, 34.743828, 39.037758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946728, 34.544514, 39.169044>,  <34.904663, 34.212322, 39.387856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946728, 34.544514, 39.169044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462406, 0.527831, 0.712443,
		0.880410, 0.178024, 0.439530,
		0.105166, 0.830483, -0.547027,
		34.978279, 34.793659, 39.004936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247337, 33.592121, 39.264042>,  <34.904663, 34.212322, 39.387856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247337, 33.592121, 39.264042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099297, 33.309410, 39.505203>,  <35.010471, 33.139786, 39.649902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099297, 33.309410, 39.505203>,  <35.247337, 33.592121, 39.264042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099297, 33.309410, 39.505203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928897, 0.272273, -0.251032,
		0.013268, -0.652943, -0.757290,
		-0.370100, -0.706776, 0.602905,
		34.988266, 33.097378, 39.686073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800121, 33.106731, 38.892132>,  <35.247337, 33.592121, 39.264042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800121, 33.106731, 38.892132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704662, 33.160950, 39.276772>,  <34.647388, 33.193481, 39.507557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704662, 33.160950, 39.276772>,  <34.800121, 33.106731, 38.892132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704662, 33.160950, 39.276772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956677, 0.137256, -0.256769,
		-0.166788, -0.981218, 0.096915,
		-0.238644, 0.135543, 0.961601,
		34.633068, 33.201611, 39.565250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275417, 32.620186, 39.189884>,  <34.800121, 33.106731, 38.892132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275417, 32.620186, 39.189884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330242, 33.009781, 39.262058>,  <34.363136, 33.243538, 39.305363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330242, 33.009781, 39.262058>,  <34.275417, 32.620186, 39.189884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330242, 33.009781, 39.262058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829295, 0.212451, -0.516851,
		-0.541741, -0.078790, 0.836845,
		0.137066, 0.973990, 0.180434,
		34.371361, 33.301979, 39.316189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673714, 33.102509, 39.597298>,  <34.275417, 32.620186, 39.189884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673714, 33.102509, 39.597298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867924, 33.290123, 39.302197>,  <33.984451, 33.402691, 39.125137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867924, 33.290123, 39.302197>,  <33.673714, 33.102509, 39.597298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867924, 33.290123, 39.302197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874215, 0.257076, -0.411899,
		-0.003536, 0.844939, 0.534852,
		0.485527, 0.469032, -0.737749,
		34.013580, 33.430832, 39.080872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298138, 33.748596, 39.543354>,  <33.673714, 33.102509, 39.597298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298138, 33.748596, 39.543354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461407, 33.696106, 39.181984>,  <33.559368, 33.664612, 38.965160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461407, 33.696106, 39.181984>,  <33.298138, 33.748596, 39.543354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461407, 33.696106, 39.181984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850935, 0.303708, -0.428568,
		0.330617, 0.943685, 0.012299,
		0.408168, -0.131226, -0.903426,
		33.583858, 33.656738, 38.910957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171230, 34.383984, 39.138050>,  <33.298138, 33.748596, 39.543354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171230, 34.383984, 39.138050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224068, 34.068840, 38.897438>,  <33.255768, 33.879753, 38.753071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224068, 34.068840, 38.897438>,  <33.171230, 34.383984, 39.138050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224068, 34.068840, 38.897438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814967, 0.259121, -0.518348,
		0.564252, 0.558694, -0.607849,
		0.132092, -0.787856, -0.601527,
		33.263695, 33.832481, 38.716980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083458, 34.626293, 38.407925>,  <33.171230, 34.383984, 39.138050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083458, 34.626293, 38.407925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028488, 34.230206, 38.417606>,  <32.995506, 33.992554, 38.423416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028488, 34.230206, 38.417606>,  <33.083458, 34.626293, 38.407925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028488, 34.230206, 38.417606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793212, 0.095379, -0.601429,
		0.593236, -0.101851, -0.798559,
		-0.137422, -0.990217, 0.024207,
		32.987263, 33.933140, 38.424870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098583, 34.443558, 37.775658>,  <33.083458, 34.626293, 38.407925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098583, 34.443558, 37.775658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910969, 34.142368, 37.960281>,  <32.798401, 33.961655, 38.071056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910969, 34.142368, 37.960281>,  <33.098583, 34.443558, 37.775658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910969, 34.142368, 37.960281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761599, 0.080219, -0.643065,
		0.447183, -0.653146, -0.611087,
		-0.469036, -0.752971, 0.461562,
		32.770256, 33.916477, 38.098751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608894, 34.830315, 37.443295>,  <33.098583, 34.443558, 37.775658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608894, 34.830315, 37.443295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298771, 35.019623, 37.276005>,  <33.112698, 35.133205, 37.175629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298771, 35.019623, 37.276005>,  <33.608894, 34.830315, 37.443295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298771, 35.019623, 37.276005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436117, -0.077808, -0.896520,
		-0.456834, -0.877476, -0.146075,
		-0.775309, 0.473267, -0.418228,
		33.066177, 35.161602, 37.150536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370979, 34.414963, 36.816486>,  <33.608894, 34.830315, 37.443295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370979, 34.414963, 36.816486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299152, 34.806377, 36.776039>,  <33.256054, 35.041225, 36.751770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299152, 34.806377, 36.776039>,  <33.370979, 34.414963, 36.816486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299152, 34.806377, 36.776039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468061, -0.005419, -0.883679,
		-0.865259, -0.206009, -0.457041,
		-0.179569, 0.978535, -0.101113,
		33.245281, 35.099937, 36.745705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269783, 33.961174, 36.181763>,  <33.370979, 34.414963, 36.816486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269783, 33.961174, 36.181763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523098, 34.227264, 36.023560>,  <33.675087, 34.386917, 35.928638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523098, 34.227264, 36.023560>,  <33.269783, 33.961174, 36.181763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523098, 34.227264, 36.023560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244204, -0.313168, -0.917764,
		-0.734377, 0.677793, -0.035876,
		0.633289, 0.665223, -0.395503,
		33.713085, 34.426830, 35.904907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944973, 34.302963, 35.710644>,  <33.269783, 33.961174, 36.181763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944973, 34.302963, 35.710644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332352, 34.316734, 35.611916>,  <33.564781, 34.324997, 35.552677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332352, 34.316734, 35.611916>,  <32.944973, 34.302963, 35.710644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332352, 34.316734, 35.611916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223896, -0.314746, -0.922391,
		-0.109440, 0.948551, -0.297108,
		0.968449, 0.034425, -0.246822,
		33.622887, 34.327061, 35.537868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967628, 34.513802, 35.084625>,  <32.944973, 34.302963, 35.710644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967628, 34.513802, 35.084625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334709, 34.356606, 35.107903>,  <33.554958, 34.262287, 35.121868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334709, 34.356606, 35.107903>,  <32.967628, 34.513802, 35.084625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334709, 34.356606, 35.107903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073106, -0.311027, -0.947585,
		0.390493, 0.865343, -0.314160,
		0.917699, -0.392992, 0.058192,
		33.610020, 34.238708, 35.125359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342224, 34.841030, 34.580776>,  <32.967628, 34.513802, 35.084625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342224, 34.841030, 34.580776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484020, 34.473480, 34.650070>,  <33.569099, 34.252953, 34.691647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484020, 34.473480, 34.650070>,  <33.342224, 34.841030, 34.580776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484020, 34.473480, 34.650070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039143, -0.170522, -0.984576,
		0.934239, 0.355807, -0.024482,
		0.354494, -0.918871, 0.173235,
		33.590370, 34.197819, 34.702042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752823, 34.733753, 33.994934>,  <33.342224, 34.841030, 34.580776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752823, 34.733753, 33.994934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754776, 34.350395, 34.109097>,  <33.755947, 34.120380, 34.177593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754776, 34.350395, 34.109097>,  <33.752823, 34.733753, 33.994934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754776, 34.350395, 34.109097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170378, -0.280442, -0.944629,
		0.985367, 0.053239, 0.161921,
		0.004882, -0.958393, 0.285409,
		33.756241, 34.062878, 34.194717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278465, 34.368736, 33.579906>,  <33.752823, 34.733753, 33.994934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278465, 34.368736, 33.579906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046421, 34.069946, 33.709827>,  <33.907196, 33.890671, 33.787781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046421, 34.069946, 33.709827>,  <34.278465, 34.368736, 33.579906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046421, 34.069946, 33.709827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175495, -0.504008, -0.845681,
		0.795409, -0.433586, 0.423471,
		-0.580108, -0.746980, 0.324800,
		33.872387, 33.845852, 33.807266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589493, 33.806625, 33.339825>,  <34.278465, 34.368736, 33.579906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589493, 33.806625, 33.339825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210602, 33.699482, 33.410255>,  <33.983265, 33.635197, 33.452515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210602, 33.699482, 33.410255>,  <34.589493, 33.806625, 33.339825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210602, 33.699482, 33.410255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017645, -0.504896, -0.863000,
		0.320063, -0.820568, 0.473527,
		-0.947232, -0.267858, 0.176077,
		33.926434, 33.619125, 33.463078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665653, 33.165028, 33.312370>,  <34.589493, 33.806625, 33.339825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665653, 33.165028, 33.312370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279575, 33.240871, 33.240311>,  <34.047928, 33.286377, 33.197075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279575, 33.240871, 33.240311>,  <34.665653, 33.165028, 33.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279575, 33.240871, 33.240311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089157, -0.409017, -0.908161,
		-0.245878, -0.892611, 0.377875,
		-0.965192, 0.189607, -0.180151,
		33.990017, 33.297752, 33.186264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388462, 32.566376, 33.145870>,  <34.665653, 33.165028, 33.312370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388462, 32.566376, 33.145870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130367, 32.841225, 33.012283>,  <33.975510, 33.006134, 32.932129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130367, 32.841225, 33.012283>,  <34.388462, 32.566376, 33.145870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130367, 32.841225, 33.012283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030058, -0.413973, -0.909793,
		-0.763390, -0.597072, 0.246458,
		-0.645239, 0.687118, -0.333969,
		33.936794, 33.047359, 32.912094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942745, 32.231724, 32.784546>,  <34.388462, 32.566376, 33.145870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942745, 32.231724, 32.784546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902542, 32.598961, 32.631180>,  <33.878422, 32.819302, 32.539162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902542, 32.598961, 32.631180>,  <33.942745, 32.231724, 32.784546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902542, 32.598961, 32.631180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086820, -0.375803, -0.922623,
		-0.991141, -0.126016, -0.041938,
		-0.100505, 0.918091, -0.383415,
		33.872391, 32.874390, 32.516155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471073, 32.227871, 32.331299>,  <33.942745, 32.231724, 32.784546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471073, 32.227871, 32.331299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673962, 32.552902, 32.216446>,  <33.795696, 32.747921, 32.147533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673962, 32.552902, 32.216446>,  <33.471073, 32.227871, 32.331299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673962, 32.552902, 32.216446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135206, -0.254020, -0.957702,
		-0.851143, 0.524591, -0.018979,
		0.507223, 0.812575, -0.287135,
		33.826130, 32.796677, 32.130306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351391, 32.280315, 31.680946>,  <33.471073, 32.227871, 32.331299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351391, 32.280315, 31.680946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618382, 32.578167, 31.680620>,  <33.778576, 32.756878, 31.680424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618382, 32.578167, 31.680620>,  <33.351391, 32.280315, 31.680946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618382, 32.578167, 31.680620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107062, -0.097056, -0.989504,
		-0.736890, 0.660388, -0.144504,
		0.667481, 0.744626, -0.000818,
		33.818626, 32.801556, 31.680374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155674, 32.644646, 31.058760>,  <33.351391, 32.280315, 31.680946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155674, 32.644646, 31.058760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532135, 32.745754, 31.148512>,  <33.758011, 32.806419, 31.202364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532135, 32.745754, 31.148512>,  <33.155674, 32.644646, 31.058760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532135, 32.745754, 31.148512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280246, -0.212470, -0.936119,
		-0.188949, 0.943909, -0.270803,
		0.941149, 0.252770, 0.224381,
		33.814480, 32.821587, 31.215826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288708, 33.162922, 30.585966>,  <33.155674, 32.644646, 31.058760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288708, 33.162922, 30.585966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631805, 33.003422, 30.715755>,  <33.837662, 32.907722, 30.793629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631805, 33.003422, 30.715755>,  <33.288708, 33.162922, 30.585966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631805, 33.003422, 30.715755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283039, -0.160598, -0.945567,
		0.429152, 0.902889, -0.024890,
		0.857740, -0.398747, 0.324474,
		33.889126, 32.883797, 30.813097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870594, 33.384548, 30.173086>,  <33.288708, 33.162922, 30.585966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870594, 33.384548, 30.173086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020168, 33.043121, 30.318192>,  <34.109913, 32.838264, 30.405254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020168, 33.043121, 30.318192>,  <33.870594, 33.384548, 30.173086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020168, 33.043121, 30.318192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134526, -0.337085, -0.931814,
		0.917645, 0.397241, -0.011222,
		0.373938, -0.853565, 0.362763,
		34.132351, 32.787052, 30.427021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485966, 33.261051, 29.761147>,  <33.870594, 33.384548, 30.173086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485966, 33.261051, 29.761147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407791, 32.910496, 29.937218>,  <34.360886, 32.700165, 30.042860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407791, 32.910496, 29.937218>,  <34.485966, 33.261051, 29.761147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407791, 32.910496, 29.937218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126885, -0.467655, -0.874757,
		0.972474, -0.115105, 0.202595,
		-0.195433, -0.876385, 0.440177,
		34.349159, 32.647579, 30.069271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015068, 32.819450, 29.540329>,  <34.485966, 33.261051, 29.761147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015068, 32.819450, 29.540329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697487, 32.596096, 29.636538>,  <34.506939, 32.462082, 29.694263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697487, 32.596096, 29.636538>,  <35.015068, 32.819450, 29.540329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697487, 32.596096, 29.636538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094493, -0.504124, -0.858446,
		0.600597, -0.658835, 0.453012,
		-0.793948, -0.558387, 0.240521,
		34.459301, 32.428581, 29.708694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003643, 32.274540, 29.047031>,  <35.015068, 32.819450, 29.540329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003643, 32.274540, 29.047031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637829, 32.184116, 29.181206>,  <34.418339, 32.129864, 29.261709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637829, 32.184116, 29.181206>,  <35.003643, 32.274540, 29.047031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637829, 32.184116, 29.181206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273608, -0.265053, -0.924600,
		0.297922, -0.937360, 0.180550,
		-0.914539, -0.226059, 0.335435,
		34.363468, 32.116299, 29.281836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848652, 31.591303, 28.864952>,  <35.003643, 32.274540, 29.047031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848652, 31.591303, 28.864952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517727, 31.810364, 28.914963>,  <34.319172, 31.941801, 28.944969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517727, 31.810364, 28.914963>,  <34.848652, 31.591303, 28.864952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517727, 31.810364, 28.914963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239369, -0.142341, -0.960438,
		-0.508190, -0.824509, 0.248852,
		-0.827312, 0.547653, 0.125026,
		34.269531, 31.974659, 28.952471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372047, 31.238264, 28.486019>,  <34.848652, 31.591303, 28.864952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372047, 31.238264, 28.486019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218155, 31.606485, 28.513058>,  <34.125820, 31.827417, 28.529282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218155, 31.606485, 28.513058>,  <34.372047, 31.238264, 28.486019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218155, 31.606485, 28.513058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253093, -0.034779, -0.966817,
		-0.887654, -0.389069, 0.246366,
		-0.384727, 0.920552, 0.067599,
		34.102737, 31.882650, 28.533337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762371, 31.127323, 28.067499>,  <34.372047, 31.238264, 28.486019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762371, 31.127323, 28.067499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824604, 31.521917, 28.088055>,  <33.861942, 31.758675, 28.100388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824604, 31.521917, 28.088055>,  <33.762371, 31.127323, 28.067499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824604, 31.521917, 28.088055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362561, 0.105417, -0.925979,
		-0.918881, 0.125436, 0.374063,
		0.155584, 0.986485, 0.051387,
		33.871281, 31.817863, 28.103470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174362, 31.410854, 27.811993>,  <33.762371, 31.127323, 28.067499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174362, 31.410854, 27.811993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423092, 31.723162, 27.787563>,  <33.572330, 31.910545, 27.772905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423092, 31.723162, 27.787563>,  <33.174362, 31.410854, 27.811993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423092, 31.723162, 27.787563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400193, 0.249753, -0.881742,
		-0.673183, 0.572733, 0.467762,
		0.621828, 0.780769, -0.061074,
		33.609642, 31.957392, 27.769241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806664, 31.863873, 27.416521>,  <33.174362, 31.410854, 27.811993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806664, 31.863873, 27.416521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172783, 32.022465, 27.388157>,  <33.392456, 32.117619, 27.371138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172783, 32.022465, 27.388157>,  <32.806664, 31.863873, 27.416521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172783, 32.022465, 27.388157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136921, 0.140725, -0.980535,
		-0.378783, 0.907194, 0.183093,
		0.915301, 0.396479, -0.070910,
		33.447372, 32.141407, 27.366884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725983, 32.476406, 27.056234>,  <32.806664, 31.863873, 27.416521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725983, 32.476406, 27.056234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120358, 32.415840, 27.027966>,  <33.356983, 32.379501, 27.011003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120358, 32.415840, 27.027966>,  <32.725983, 32.476406, 27.056234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120358, 32.415840, 27.027966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023187, 0.294881, -0.955253,
		0.165482, 0.943461, 0.287224,
		0.985940, -0.151417, -0.070674,
		33.416138, 32.370415, 27.006763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980938, 33.122063, 26.816311>,  <32.725983, 32.476406, 27.056234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980938, 33.122063, 26.816311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252388, 32.844322, 26.720531>,  <33.415260, 32.677677, 26.663063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252388, 32.844322, 26.720531>,  <32.980938, 33.122063, 26.816311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252388, 32.844322, 26.720531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094815, 0.240464, -0.966016,
		0.728337, 0.678269, 0.097350,
		0.678628, -0.694355, -0.239449,
		33.455975, 32.636017, 26.648697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407406, 33.516613, 26.408083>,  <32.980938, 33.122063, 26.816311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407406, 33.516613, 26.408083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524166, 33.142265, 26.329142>,  <33.594223, 32.917656, 26.281776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524166, 33.142265, 26.329142>,  <33.407406, 33.516613, 26.408083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524166, 33.142265, 26.329142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032002, 0.215780, -0.975917,
		0.955914, 0.278552, 0.092935,
		0.291897, -0.935867, -0.197353,
		33.611736, 32.861504, 26.269936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011143, 33.564560, 25.995117>,  <33.407406, 33.516613, 26.408083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011143, 33.564560, 25.995117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870594, 33.199234, 25.912756>,  <33.786266, 32.980038, 25.863338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870594, 33.199234, 25.912756>,  <34.011143, 33.564560, 25.995117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870594, 33.199234, 25.912756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232189, 0.128050, -0.964205,
		0.906988, -0.386601, 0.167068,
		-0.351370, -0.913314, -0.205904,
		33.765182, 32.925240, 25.850985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464855, 33.279682, 25.400175>,  <34.011143, 33.564560, 25.995117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464855, 33.279682, 25.400175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126766, 33.066090, 25.408716>,  <33.923912, 32.937935, 25.413841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126766, 33.066090, 25.408716>,  <34.464855, 33.279682, 25.400175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126766, 33.066090, 25.408716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015447, -0.015524, -0.999760,
		0.534187, -0.845352, 0.004872,
		-0.845225, -0.533984, 0.021351,
		33.873199, 32.905895, 25.415121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715420, 32.744850, 25.135239>,  <34.464855, 33.279682, 25.400175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715420, 32.744850, 25.135239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327183, 32.807281, 25.061937>,  <34.094238, 32.844742, 25.017958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327183, 32.807281, 25.061937>,  <34.715420, 32.744850, 25.135239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327183, 32.807281, 25.061937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174949, -0.065489, -0.982397,
		-0.165333, -0.985571, 0.036258,
		-0.970597, 0.156080, -0.183252,
		34.036003, 32.854103, 25.006962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583347, 32.408531, 24.629189>,  <34.715420, 32.744850, 25.135239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583347, 32.408531, 24.629189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256966, 32.639484, 24.617517>,  <34.061138, 32.778057, 24.610516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256966, 32.639484, 24.617517>,  <34.583347, 32.408531, 24.629189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256966, 32.639484, 24.617517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082089, 0.065757, -0.994453,
		-0.572264, -0.813820, -0.101052,
		-0.815951, 0.577385, -0.029175,
		34.012180, 32.812698, 24.608765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150944, 32.377975, 23.934494>,  <34.583347, 32.408531, 24.629189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150944, 32.377975, 23.934494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052036, 32.741966, 24.067644>,  <33.992691, 32.960361, 24.147533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052036, 32.741966, 24.067644>,  <34.150944, 32.377975, 23.934494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052036, 32.741966, 24.067644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216810, 0.386792, -0.896318,
		-0.944380, -0.149459, -0.292932,
		-0.247267, 0.909975, 0.332874,
		33.977856, 33.014957, 24.167507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748051, 32.600754, 23.489449>,  <34.150944, 32.377975, 23.934494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748051, 32.600754, 23.489449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875725, 32.926853, 23.682734>,  <33.952328, 33.122513, 23.798704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875725, 32.926853, 23.682734>,  <33.748051, 32.600754, 23.489449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875725, 32.926853, 23.682734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413723, 0.338859, -0.844990,
		-0.852616, 0.469623, -0.229129,
		0.319184, 0.815248, 0.483211,
		33.971481, 33.171429, 23.827696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582169, 33.075718, 23.060919>,  <33.748051, 32.600754, 23.489449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582169, 33.075718, 23.060919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865868, 33.247620, 23.284447>,  <34.036087, 33.350761, 23.418564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865868, 33.247620, 23.284447>,  <33.582169, 33.075718, 23.060919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865868, 33.247620, 23.284447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348389, 0.475456, -0.807816,
		-0.612853, 0.767630, 0.187497,
		0.709251, 0.429751, 0.558818,
		34.078644, 33.376545, 23.452093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619370, 33.714989, 22.745270>,  <33.582169, 33.075718, 23.060919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619370, 33.714989, 22.745270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950951, 33.663021, 22.962875>,  <34.149899, 33.631840, 23.093439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950951, 33.663021, 22.962875>,  <33.619370, 33.714989, 22.745270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950951, 33.663021, 22.962875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546207, 0.397367, -0.737399,
		-0.120370, 0.908416, 0.400364,
		0.828956, -0.129921, 0.544014,
		34.199638, 33.624046, 23.126080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060505, 34.370800, 22.608900>,  <33.619370, 33.714989, 22.745270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060505, 34.370800, 22.608900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312584, 34.091774, 22.745285>,  <34.463833, 33.924358, 22.827116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312584, 34.091774, 22.745285>,  <34.060505, 34.370800, 22.608900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312584, 34.091774, 22.745285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665128, 0.258464, -0.700572,
		0.400567, 0.668284, 0.626852,
		0.630199, -0.697563, 0.340962,
		34.501644, 33.882504, 22.847574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676113, 34.751331, 22.733557>,  <34.060505, 34.370800, 22.608900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676113, 34.751331, 22.733557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780514, 34.365871, 22.710741>,  <34.843155, 34.134594, 22.697052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780514, 34.365871, 22.710741>,  <34.676113, 34.751331, 22.733557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780514, 34.365871, 22.710741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692782, 0.228134, -0.684112,
		0.672258, 0.139040, 0.727143,
		0.261006, -0.963651, -0.057040,
		34.858814, 34.076775, 22.693628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287716, 34.801033, 22.745867>,  <34.676113, 34.751331, 22.733557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287716, 34.801033, 22.745867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252758, 34.444756, 22.567413>,  <35.231785, 34.230991, 22.460340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252758, 34.444756, 22.567413>,  <35.287716, 34.801033, 22.745867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252758, 34.444756, 22.567413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650885, 0.287979, -0.702436,
		0.754129, -0.351768, 0.554570,
		-0.087390, -0.890689, -0.446134,
		35.226540, 34.177547, 22.433573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951588, 34.672127, 22.464729>,  <35.287716, 34.801033, 22.745867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951588, 34.672127, 22.464729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705029, 34.426426, 22.267653>,  <35.557095, 34.279003, 22.149406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705029, 34.426426, 22.267653>,  <35.951588, 34.672127, 22.464729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705029, 34.426426, 22.267653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500436, 0.177504, -0.847382,
		0.607964, -0.768884, 0.197983,
		-0.616395, -0.614256, -0.492693,
		35.520111, 34.242149, 22.119844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437729, 34.164474, 22.066410>,  <35.951588, 34.672127, 22.464729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437729, 34.164474, 22.066410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078606, 34.155525, 21.890480>,  <35.863132, 34.150158, 21.784922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078606, 34.155525, 21.890480>,  <36.437729, 34.164474, 22.066410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078606, 34.155525, 21.890480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433711, 0.128411, -0.891855,
		0.076432, -0.991468, -0.105585,
		-0.897805, -0.022373, -0.439825,
		35.809265, 34.148815, 21.758533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631996, 33.829285, 21.376980>,  <36.437729, 34.164474, 22.066410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631996, 33.829285, 21.376980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269756, 33.992725, 21.331486>,  <36.052414, 34.090790, 21.304190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269756, 33.992725, 21.331486>,  <36.631996, 33.829285, 21.376980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269756, 33.992725, 21.331486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174026, 0.113426, -0.978187,
		-0.386786, -0.905638, -0.173825,
		-0.905600, 0.408599, -0.113733,
		35.998077, 34.115307, 21.297365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339958, 33.511631, 20.754417>,  <36.631996, 33.829285, 21.376980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339958, 33.511631, 20.754417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153477, 33.863651, 20.790567>,  <36.041588, 34.074863, 20.812258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153477, 33.863651, 20.790567>,  <36.339958, 33.511631, 20.754417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153477, 33.863651, 20.790567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111292, 0.159683, -0.980875,
		-0.877652, -0.447226, -0.172387,
		-0.466200, 0.880052, 0.090373,
		36.013618, 34.127666, 20.817680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872906, 33.605770, 20.138552>,  <36.339958, 33.511631, 20.754417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872906, 33.605770, 20.138552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931614, 33.970181, 20.292692>,  <35.966839, 34.188828, 20.385176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931614, 33.970181, 20.292692>,  <35.872906, 33.605770, 20.138552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931614, 33.970181, 20.292692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156275, 0.363322, -0.918464,
		-0.976747, 0.195027, -0.089044,
		0.146774, 0.911022, 0.385351,
		35.975647, 34.243488, 20.408298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430031, 33.988136, 19.756496>,  <35.872906, 33.605770, 20.138552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430031, 33.988136, 19.756496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708931, 34.235504, 19.901495>,  <35.876270, 34.383926, 19.988495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708931, 34.235504, 19.901495>,  <35.430031, 33.988136, 19.756496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708931, 34.235504, 19.901495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260704, 0.252296, -0.931869,
		-0.667742, 0.744248, 0.014689,
		0.697247, 0.618419, 0.362497,
		35.918106, 34.421028, 20.010244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235825, 34.664371, 19.597822>,  <35.430031, 33.988136, 19.756496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235825, 34.664371, 19.597822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631832, 34.609760, 19.611847>,  <35.869434, 34.576992, 19.620262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631832, 34.609760, 19.611847>,  <35.235825, 34.664371, 19.597822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631832, 34.609760, 19.611847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061721, 0.196234, -0.978613,
		0.126732, 0.971005, 0.202701,
		0.990015, -0.136533, 0.035062,
		35.928837, 34.568802, 19.622366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561337, 35.249477, 19.240700>,  <35.235825, 34.664371, 19.597822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561337, 35.249477, 19.240700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825119, 34.948780, 19.241385>,  <35.983387, 34.768360, 19.241795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825119, 34.948780, 19.241385>,  <35.561337, 35.249477, 19.240700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825119, 34.948780, 19.241385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104876, 0.089745, -0.990428,
		0.744395, 0.653319, 0.138023,
		0.659452, -0.751745, 0.001712,
		36.022953, 34.723255, 19.241898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123199, 35.489632, 18.739174>,  <35.561337, 35.249477, 19.240700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123199, 35.489632, 18.739174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126942, 35.095989, 18.810112>,  <36.129189, 34.859806, 18.852674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126942, 35.095989, 18.810112>,  <36.123199, 35.489632, 18.739174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126942, 35.095989, 18.810112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066573, -0.176346, -0.982074,
		0.997738, 0.020998, 0.063865,
		0.009360, -0.984104, 0.177345,
		36.129749, 34.800758, 18.863316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701355, 35.168083, 18.378593>,  <36.123199, 35.489632, 18.739174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701355, 35.168083, 18.378593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375553, 34.945847, 18.445406>,  <36.180073, 34.812504, 18.485493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375553, 34.945847, 18.445406>,  <36.701355, 35.168083, 18.378593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375553, 34.945847, 18.445406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034222, -0.241391, -0.969824,
		0.579149, -0.795641, 0.177600,
		-0.814503, -0.555595, 0.167030,
		36.131203, 34.779167, 18.495516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068394, 34.577431, 18.616728>,  <36.701355, 35.168083, 18.378593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068394, 34.577431, 18.616728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366619, 34.416225, 18.829035>,  <37.545555, 34.319504, 18.956419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366619, 34.416225, 18.829035>,  <37.068394, 34.577431, 18.616728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366619, 34.416225, 18.829035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445312, 0.893798, 0.053132,
		-0.495812, 0.196744, 0.845850,
		0.745565, -0.403011, 0.530769,
		37.590290, 34.295322, 18.988266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088909, 34.924961, 19.158789>,  <37.068394, 34.577431, 18.616728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088909, 34.924961, 19.158789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450104, 34.779785, 19.066803>,  <37.666821, 34.692680, 19.011612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450104, 34.779785, 19.066803>,  <37.088909, 34.924961, 19.158789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450104, 34.779785, 19.066803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378538, 0.925216, 0.026172,
		0.203266, -0.110683, 0.972848,
		0.902990, -0.362940, -0.229963,
		37.721001, 34.670902, 18.997814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470970, 35.188160, 18.560698>,  <37.088909, 34.924961, 19.158789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470970, 35.188160, 18.560698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770550, 35.331390, 18.337683>,  <37.950298, 35.417328, 18.203873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770550, 35.331390, 18.337683>,  <37.470970, 35.188160, 18.560698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770550, 35.331390, 18.337683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172931, -0.706625, -0.686132,
		-0.639661, 0.610296, -0.467304,
		0.748952, 0.358080, -0.557539,
		37.995235, 35.438816, 18.170422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553501, 35.887569, 18.657885>,  <37.470970, 35.188160, 18.560698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553501, 35.887569, 18.657885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569359, 36.283348, 18.602140>,  <37.578873, 36.520817, 18.568693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569359, 36.283348, 18.602140>,  <37.553501, 35.887569, 18.657885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569359, 36.283348, 18.602140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561592, 0.137420, 0.815923,
		0.826464, 0.045918, 0.561114,
		0.039643, 0.989448, -0.139360,
		37.581253, 36.580181, 18.560333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972202, 36.277527, 19.161467>,  <37.553501, 35.887569, 18.657885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972202, 36.277527, 19.161467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666153, 36.490585, 19.016760>,  <37.482525, 36.618420, 18.929935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666153, 36.490585, 19.016760>,  <37.972202, 36.277527, 19.161467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666153, 36.490585, 19.016760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369616, 0.096723, 0.924137,
		0.527232, 0.840791, 0.122871,
		-0.765121, 0.532650, -0.361765,
		37.436615, 36.650379, 18.908230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883797, 36.969078, 19.474655>,  <37.972202, 36.277527, 19.161467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883797, 36.969078, 19.474655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538845, 36.811401, 19.347586>,  <37.331875, 36.716793, 19.271343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538845, 36.811401, 19.347586>,  <37.883797, 36.969078, 19.474655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538845, 36.811401, 19.347586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413849, 0.187469, 0.890834,
		-0.291608, 0.899703, -0.324806,
		-0.862377, -0.394195, -0.317674,
		37.280132, 36.693142, 19.252283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468102, 37.621426, 19.620094>,  <37.883797, 36.969078, 19.474655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468102, 37.621426, 19.620094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329342, 37.246311, 19.626070>,  <37.246086, 37.021244, 19.629656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329342, 37.246311, 19.626070>,  <37.468102, 37.621426, 19.620094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329342, 37.246311, 19.626070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195249, 0.087783, 0.976817,
		-0.917355, 0.335939, -0.213553,
		-0.346897, -0.937784, 0.014937,
		37.225273, 36.964977, 19.630550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850632, 37.663212, 19.970606>,  <37.468102, 37.621426, 19.620094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850632, 37.663212, 19.970606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981678, 37.289433, 20.026426>,  <37.060307, 37.065166, 20.059919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981678, 37.289433, 20.026426>,  <36.850632, 37.663212, 19.970606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981678, 37.289433, 20.026426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015893, 0.142233, 0.989706,
		-0.944678, -0.326459, 0.031747,
		0.327614, -0.934449, 0.139553,
		37.079964, 37.009098, 20.068293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372253, 37.251705, 20.510822>,  <36.850632, 37.663212, 19.970606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372253, 37.251705, 20.510822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725758, 37.064545, 20.513390>,  <36.937859, 36.952248, 20.514931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725758, 37.064545, 20.513390>,  <36.372253, 37.251705, 20.510822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725758, 37.064545, 20.513390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001658, 0.016846, 0.999857,
		-0.467942, -0.883621, 0.015664,
		0.883758, -0.467901, 0.006418,
		36.990887, 36.924175, 20.515314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291935, 36.707104, 20.930630>,  <36.372253, 37.251705, 20.510822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291935, 36.707104, 20.930630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691212, 36.722179, 20.911924>,  <36.930779, 36.731224, 20.900702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691212, 36.722179, 20.911924>,  <36.291935, 36.707104, 20.930630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691212, 36.722179, 20.911924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055933, -0.299680, 0.952399,
		0.021879, -0.953295, -0.301247,
		0.998195, 0.037687, -0.046764,
		36.990669, 36.733486, 20.897896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588306, 35.987381, 21.125105>,  <36.291935, 36.707104, 20.930630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588306, 35.987381, 21.125105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910042, 36.221046, 21.168550>,  <37.103085, 36.361244, 21.194618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910042, 36.221046, 21.168550>,  <36.588306, 35.987381, 21.125105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910042, 36.221046, 21.168550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226008, -0.469855, 0.853321,
		0.549510, -0.661811, -0.509947,
		0.804338, 0.584160, 0.108615,
		37.151344, 36.396294, 21.201136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971989, 35.497498, 21.455715>,  <36.588306, 35.987381, 21.125105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971989, 35.497498, 21.455715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140789, 35.853268, 21.525967>,  <37.242069, 36.066730, 21.568117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140789, 35.853268, 21.525967>,  <36.971989, 35.497498, 21.455715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140789, 35.853268, 21.525967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163639, -0.265269, 0.950187,
		0.891705, -0.372239, -0.257488,
		0.422000, 0.889421, 0.175629,
		37.267387, 36.120094, 21.578655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496208, 35.368717, 21.883173>,  <36.971989, 35.497498, 21.455715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496208, 35.368717, 21.883173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436462, 35.760017, 21.940754>,  <37.400616, 35.994797, 21.975302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436462, 35.760017, 21.940754>,  <37.496208, 35.368717, 21.883173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436462, 35.760017, 21.940754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125757, -0.125607, 0.984077,
		0.980752, 0.165091, -0.104260,
		-0.149367, 0.978247, 0.143951,
		37.391651, 36.053490, 21.983938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031807, 35.620571, 22.231110>,  <37.496208, 35.368717, 21.883173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031807, 35.620571, 22.231110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741486, 35.883648, 22.311764>,  <37.567295, 36.041492, 22.360157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741486, 35.883648, 22.311764>,  <38.031807, 35.620571, 22.231110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741486, 35.883648, 22.311764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164869, -0.118265, 0.979199,
		0.667858, 0.743946, -0.022596,
		-0.725799, 0.657691, 0.201638,
		37.523746, 36.080956, 22.372255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240017, 35.818306, 22.815147>,  <38.031807, 35.620571, 22.231110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240017, 35.818306, 22.815147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885506, 35.994938, 22.871025>,  <37.672798, 36.100918, 22.904552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885506, 35.994938, 22.871025>,  <38.240017, 35.818306, 22.815147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885506, 35.994938, 22.871025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076540, -0.157826, 0.984496,
		0.456779, 0.883233, 0.106079,
		-0.886282, 0.441577, 0.139694,
		37.619621, 36.127411, 22.912933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301876, 36.401100, 23.302425>,  <38.240017, 35.818306, 22.815147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301876, 36.401100, 23.302425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913067, 36.307594, 23.293289>,  <37.679779, 36.251492, 23.287807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913067, 36.307594, 23.293289>,  <38.301876, 36.401100, 23.302425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913067, 36.307594, 23.293289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038880, 0.064239, 0.997177,
		-0.231635, 0.970169, -0.071530,
		-0.972025, -0.233762, -0.022841,
		37.621460, 36.237465, 23.286436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823647, 36.934681, 23.682343>,  <38.301876, 36.401100, 23.302425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823647, 36.934681, 23.682343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615376, 36.593281, 23.674118>,  <37.490414, 36.388439, 23.669184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615376, 36.593281, 23.674118>,  <37.823647, 36.934681, 23.682343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615376, 36.593281, 23.674118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019632, -0.036045, 0.999157,
		-0.853527, 0.519836, 0.035524,
		-0.520679, -0.853505, -0.020560,
		37.459171, 36.337231, 23.667950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435551, 36.962833, 24.304028>,  <37.823647, 36.934681, 23.682343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435551, 36.962833, 24.304028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389786, 36.583672, 24.185102>,  <37.362328, 36.356174, 24.113749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389786, 36.583672, 24.185102>,  <37.435551, 36.962833, 24.304028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389786, 36.583672, 24.185102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124607, -0.283220, 0.950926,
		-0.985588, 0.145845, -0.085711,
		-0.114412, -0.947901, -0.297311,
		37.355461, 36.299301, 24.095909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803905, 36.619072, 24.569714>,  <37.435551, 36.962833, 24.304028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803905, 36.619072, 24.569714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047451, 36.308369, 24.505287>,  <37.193577, 36.121948, 24.466631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047451, 36.308369, 24.505287>,  <36.803905, 36.619072, 24.569714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047451, 36.308369, 24.505287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118052, -0.289498, 0.949871,
		-0.784444, -0.559325, -0.267961,
		0.608861, -0.776754, -0.161065,
		37.230110, 36.075344, 24.456968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438770, 36.119431, 24.883875>,  <36.803905, 36.619072, 24.569714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438770, 36.119431, 24.883875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826458, 36.022671, 24.902225>,  <37.059071, 35.964615, 24.913237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826458, 36.022671, 24.902225>,  <36.438770, 36.119431, 24.883875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826458, 36.022671, 24.902225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099194, -0.213099, 0.971982,
		-0.225348, -0.946611, -0.230534,
		0.969216, -0.241902, 0.045877,
		37.117222, 35.950100, 24.915989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495483, 35.425182, 25.366676>,  <36.438770, 36.119431, 24.883875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495483, 35.425182, 25.366676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859035, 35.591778, 25.375336>,  <37.077168, 35.691734, 25.380531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859035, 35.591778, 25.375336>,  <36.495483, 35.425182, 25.366676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859035, 35.591778, 25.375336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099147, 0.165363, 0.981236,
		0.405091, -0.893977, 0.191589,
		0.908885, 0.416485, 0.021648,
		37.131702, 35.716724, 25.381830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891289, 35.028976, 25.882460>,  <36.495483, 35.425182, 25.366676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891289, 35.028976, 25.882460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091206, 35.374344, 25.855003>,  <37.211155, 35.581566, 25.838530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091206, 35.374344, 25.855003>,  <36.891289, 35.028976, 25.882460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091206, 35.374344, 25.855003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043886, 0.104393, 0.993567,
		0.865035, -0.493561, 0.090067,
		0.499788, 0.863423, -0.068643,
		37.241142, 35.633369, 25.834410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410542, 34.993183, 26.438347>,  <36.891289, 35.028976, 25.882460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410542, 34.993183, 26.438347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350842, 35.375896, 26.338511>,  <37.315022, 35.605522, 26.278608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350842, 35.375896, 26.338511>,  <37.410542, 34.993183, 26.438347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350842, 35.375896, 26.338511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032073, 0.247601, 0.968331,
		0.988279, 0.152527, -0.006267,
		-0.149248, 0.956781, -0.249591,
		37.306068, 35.662930, 26.263634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908581, 35.358673, 26.749615>,  <37.410542, 34.993183, 26.438347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908581, 35.358673, 26.749615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606033, 35.612667, 26.686749>,  <37.424503, 35.765064, 26.649029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606033, 35.612667, 26.686749>,  <37.908581, 35.358673, 26.749615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606033, 35.612667, 26.686749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015741, 0.222528, 0.974799,
		0.653954, 0.739784, -0.158319,
		-0.756371, 0.634982, -0.157167,
		37.379124, 35.803162, 26.639599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076374, 35.851227, 27.151640>,  <37.908581, 35.358673, 26.749615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076374, 35.851227, 27.151640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693836, 35.928535, 27.063953>,  <37.464314, 35.974922, 27.011341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693836, 35.928535, 27.063953>,  <38.076374, 35.851227, 27.151640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693836, 35.928535, 27.063953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153076, 0.307705, 0.939088,
		0.248951, 0.931646, -0.264686,
		-0.956342, 0.193270, -0.219216,
		37.406933, 35.986515, 26.998188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895309, 36.512794, 27.470947>,  <38.076374, 35.851227, 27.151640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895309, 36.512794, 27.470947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526787, 36.363911, 27.425959>,  <37.305672, 36.274582, 27.398966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526787, 36.363911, 27.425959>,  <37.895309, 36.512794, 27.470947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526787, 36.363911, 27.425959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235704, 0.304569, 0.922866,
		-0.309241, 0.876756, -0.368333,
		-0.921311, -0.372205, -0.112470,
		37.250393, 36.252251, 27.392218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412151, 36.983047, 27.833796>,  <37.895309, 36.512794, 27.470947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412151, 36.983047, 27.833796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204643, 36.643330, 27.794649>,  <37.080139, 36.439499, 27.771162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204643, 36.643330, 27.794649>,  <37.412151, 36.983047, 27.833796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204643, 36.643330, 27.794649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353529, 0.108889, 0.929064,
		-0.778392, 0.516570, -0.356738,
		-0.518772, -0.849293, -0.097864,
		37.049011, 36.388542, 27.765289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706951, 37.170464, 28.037895>,  <37.412151, 36.983047, 27.833796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706951, 37.170464, 28.037895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736874, 36.774773, 28.088228>,  <36.754826, 36.537357, 28.118427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736874, 36.774773, 28.088228>,  <36.706951, 37.170464, 28.037895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736874, 36.774773, 28.088228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352784, 0.091771, 0.931194,
		-0.932710, -0.114050, -0.342118,
		0.074806, -0.989227, 0.125830,
		36.759315, 36.478004, 28.125977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086491, 37.063366, 28.447397>,  <36.706951, 37.170464, 28.037895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086491, 37.063366, 28.447397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277088, 36.715801, 28.500990>,  <36.391445, 36.507263, 28.533146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277088, 36.715801, 28.500990>,  <36.086491, 37.063366, 28.447397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277088, 36.715801, 28.500990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358709, -0.053007, 0.931943,
		-0.802673, -0.492123, -0.336943,
		0.476491, -0.868910, 0.133982,
		36.420036, 36.455128, 28.541183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578617, 36.511440, 28.640886>,  <36.086491, 37.063366, 28.447397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578617, 36.511440, 28.640886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947788, 36.436375, 28.775345>,  <36.169289, 36.391335, 28.856020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947788, 36.436375, 28.775345>,  <35.578617, 36.511440, 28.640886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947788, 36.436375, 28.775345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304579, 0.178116, 0.935685,
		-0.235466, -0.965949, 0.107230,
		0.922923, -0.187662, 0.336148,
		36.224667, 36.380077, 28.876188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459183, 36.166183, 29.264915>,  <35.578617, 36.511440, 28.640886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459183, 36.166183, 29.264915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848499, 36.252068, 29.297430>,  <36.082088, 36.303596, 29.316938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848499, 36.252068, 29.297430>,  <35.459183, 36.166183, 29.264915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848499, 36.252068, 29.297430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122987, 0.188644, 0.974314,
		0.193892, -0.958280, 0.210015,
		0.973283, 0.214740, 0.081280,
		36.140488, 36.316479, 29.321815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827759, 35.662464, 29.750824>,  <35.459183, 36.166183, 29.264915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827759, 35.662464, 29.750824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074032, 35.977360, 29.764593>,  <36.221798, 36.166298, 29.772856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074032, 35.977360, 29.764593>,  <35.827759, 35.662464, 29.750824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074032, 35.977360, 29.764593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041686, -0.011086, 0.999069,
		0.786888, -0.616549, 0.025991,
		0.615686, 0.787239, 0.034425,
		36.258739, 36.213531, 29.774921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354145, 35.575771, 30.266802>,  <35.827759, 35.662464, 29.750824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354145, 35.575771, 30.266802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354877, 35.974316, 30.232714>,  <36.355316, 36.213444, 30.212261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354877, 35.974316, 30.232714>,  <36.354145, 35.575771, 30.266802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354877, 35.974316, 30.232714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037399, 0.085092, 0.995671,
		0.999299, -0.005010, -0.037107,
		0.001831, 0.996360, -0.085220,
		36.355427, 36.273224, 30.207148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871990, 35.807560, 30.804087>,  <36.354145, 35.575771, 30.266802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871990, 35.807560, 30.804087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646828, 36.120739, 30.698153>,  <36.511730, 36.308647, 30.634592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646828, 36.120739, 30.698153>,  <36.871990, 35.807560, 30.804087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646828, 36.120739, 30.698153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050558, 0.352438, 0.934468,
		0.824974, 0.512627, -0.237973,
		-0.562905, 0.782944, -0.264835,
		36.477955, 36.355621, 30.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109917, 36.466637, 31.142014>,  <36.871990, 35.807560, 30.804087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109917, 36.466637, 31.142014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736946, 36.566158, 31.037193>,  <36.513165, 36.625874, 30.974300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736946, 36.566158, 31.037193>,  <37.109917, 36.466637, 31.142014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736946, 36.566158, 31.037193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104448, 0.508664, 0.854606,
		0.345929, 0.824230, -0.448305,
		-0.932429, 0.248808, -0.262050,
		36.457218, 36.640800, 30.958578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027050, 37.163029, 31.266537>,  <37.109917, 36.466637, 31.142014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027050, 37.163029, 31.266537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669746, 36.983479, 31.276419>,  <36.455364, 36.875748, 31.282347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669746, 36.983479, 31.276419>,  <37.027050, 37.163029, 31.266537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669746, 36.983479, 31.276419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106791, 0.265252, 0.958247,
		-0.436683, 0.853320, -0.284873,
		-0.893255, -0.448872, 0.024704,
		36.401772, 36.848816, 31.283831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796974, 37.437347, 31.834442>,  <37.027050, 37.163029, 31.266537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796974, 37.437347, 31.834442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503471, 37.172745, 31.772472>,  <36.327370, 37.013981, 31.735291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503471, 37.172745, 31.772472>,  <36.796974, 37.437347, 31.834442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503471, 37.172745, 31.772472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413523, 0.253913, 0.874372,
		-0.539068, 0.705644, -0.459861,
		-0.733760, -0.661509, -0.154924,
		36.283344, 36.974293, 31.725996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137623, 37.783737, 31.877819>,  <36.796974, 37.437347, 31.834442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137623, 37.783737, 31.877819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086514, 37.395302, 31.958477>,  <36.055847, 37.162239, 32.006870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086514, 37.395302, 31.958477>,  <36.137623, 37.783737, 31.877819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086514, 37.395302, 31.958477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355297, 0.234633, 0.904827,
		-0.925980, 0.043968, -0.375005,
		-0.127772, -0.971089, 0.201644,
		36.048183, 37.103973, 32.018970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424301, 37.704746, 32.091759>,  <36.137623, 37.783737, 31.877819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424301, 37.704746, 32.091759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611565, 37.383747, 32.239719>,  <35.723923, 37.191147, 32.328495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611565, 37.383747, 32.239719>,  <35.424301, 37.704746, 32.091759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611565, 37.383747, 32.239719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362316, 0.207475, 0.908670,
		-0.805951, -0.559420, -0.193628,
		0.468155, -0.802498, 0.369902,
		35.752010, 37.142998, 32.350689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063469, 37.461761, 32.749638>,  <35.424301, 37.704746, 32.091759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063469, 37.461761, 32.749638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392178, 37.242027, 32.810192>,  <35.589401, 37.110188, 32.846527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392178, 37.242027, 32.810192>,  <35.063469, 37.461761, 32.749638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392178, 37.242027, 32.810192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121685, 0.090371, 0.988446,
		-0.556673, -0.830699, 0.007418,
		0.821771, -0.549339, 0.151391,
		35.638710, 37.077225, 32.855610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789684, 36.892792, 33.113911>,  <35.063469, 37.461761, 32.749638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789684, 36.892792, 33.113911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183453, 36.887825, 33.184071>,  <35.419712, 36.884846, 33.226166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183453, 36.887825, 33.184071>,  <34.789684, 36.892792, 33.113911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183453, 36.887825, 33.184071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175531, -0.128817, 0.976010,
		0.010476, -0.991590, -0.128990,
		0.984418, -0.012417, 0.175404,
		35.478779, 36.884098, 33.236691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906731, 36.227341, 33.480965>,  <34.789684, 36.892792, 33.113911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906731, 36.227341, 33.480965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174099, 36.515842, 33.553642>,  <35.334518, 36.688942, 33.597248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174099, 36.515842, 33.553642>,  <34.906731, 36.227341, 33.480965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174099, 36.515842, 33.553642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008852, -0.251980, 0.967692,
		0.743731, -0.645217, -0.174813,
		0.668420, 0.721250, 0.181694,
		35.374626, 36.732216, 33.608150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306625, 35.857639, 34.053986>,  <34.906731, 36.227341, 33.480965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306625, 35.857639, 34.053986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427818, 36.238018, 34.078995>,  <35.500534, 36.466244, 34.093998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427818, 36.238018, 34.078995>,  <35.306625, 35.857639, 34.053986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427818, 36.238018, 34.078995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246774, -0.141654, 0.958664,
		0.920491, -0.275030, -0.277586,
		0.302983, 0.950943, 0.062521,
		35.518715, 36.523300, 34.097752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924763, 35.784275, 34.318584>,  <35.306625, 35.857639, 34.053986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924763, 35.784275, 34.318584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805069, 36.159050, 34.390823>,  <35.733253, 36.383915, 34.434166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805069, 36.159050, 34.390823>,  <35.924763, 35.784275, 34.318584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805069, 36.159050, 34.390823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178644, -0.130915, 0.975165,
		0.937308, 0.324063, -0.128204,
		-0.299231, 0.936933, 0.180600,
		35.715298, 36.440128, 34.445004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398037, 36.005775, 34.856026>,  <35.924763, 35.784275, 34.318584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398037, 36.005775, 34.856026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083904, 36.252754, 34.874001>,  <35.895424, 36.400940, 34.884785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083904, 36.252754, 34.874001>,  <36.398037, 36.005775, 34.856026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083904, 36.252754, 34.874001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064672, 0.009639, 0.997860,
		0.615688, 0.786557, -0.047500,
		-0.785332, 0.617442, 0.044934,
		35.848305, 36.437988, 34.887482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684750, 35.727081, 34.169075>,  <36.398037, 36.005775, 34.856026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684750, 35.727081, 34.169075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051697, 35.758995, 34.325062>,  <37.271866, 35.778145, 34.418655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051697, 35.758995, 34.325062>,  <36.684750, 35.727081, 34.169075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051697, 35.758995, 34.325062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396996, -0.112167, -0.910941,
		-0.028940, 0.990481, -0.134573,
		0.917364, 0.079788, 0.389971,
		37.326904, 35.782932, 34.442055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944229, 36.310120, 33.742954>,  <36.684750, 35.727081, 34.169075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944229, 36.310120, 33.742954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233589, 36.080303, 33.896107>,  <37.407204, 35.942413, 33.987999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233589, 36.080303, 33.896107>,  <36.944229, 36.310120, 33.742954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233589, 36.080303, 33.896107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485963, 0.029778, -0.873472,
		0.490444, 0.817934, 0.300747,
		0.723398, -0.574541, 0.382881,
		37.450607, 35.907940, 34.010971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517136, 36.640823, 33.514908>,  <36.944229, 36.310120, 33.742954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517136, 36.640823, 33.514908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644058, 36.279961, 33.631821>,  <37.720211, 36.063442, 33.701969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644058, 36.279961, 33.631821>,  <37.517136, 36.640823, 33.514908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644058, 36.279961, 33.631821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627471, -0.031368, -0.778008,
		0.711056, 0.430261, 0.556125,
		0.317302, -0.902159, 0.292281,
		37.739250, 36.009312, 33.719505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255657, 36.620178, 33.485970>,  <37.517136, 36.640823, 33.514908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255657, 36.620178, 33.485970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115639, 36.245506, 33.482151>,  <38.031628, 36.020702, 33.479862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115639, 36.245506, 33.482151>,  <38.255657, 36.620178, 33.485970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115639, 36.245506, 33.482151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584652, -0.210507, -0.783498,
		0.731881, -0.279840, 0.621321,
		-0.350047, -0.936684, -0.009544,
		38.010624, 35.964500, 33.479286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827503, 36.212101, 33.438068>,  <38.255657, 36.620178, 33.485970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827503, 36.212101, 33.438068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529537, 35.989780, 33.290455>,  <38.350758, 35.856388, 33.201885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529537, 35.989780, 33.290455>,  <38.827503, 36.212101, 33.438068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529537, 35.989780, 33.290455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500818, -0.100395, -0.859710,
		0.440781, -0.825229, 0.353142,
		-0.744911, -0.555804, -0.369038,
		38.306065, 35.823040, 33.179745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172783, 35.766010, 33.055420>,  <38.827503, 36.212101, 33.438068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172783, 35.766010, 33.055420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805096, 35.711327, 32.907722>,  <38.584484, 35.678516, 32.819103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805096, 35.711327, 32.907722>,  <39.172783, 35.766010, 33.055420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805096, 35.711327, 32.907722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391203, -0.210853, -0.895824,
		0.044608, -0.967911, 0.247301,
		-0.919222, -0.136706, -0.369244,
		38.529327, 35.670315, 32.796947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240227, 35.176960, 32.659904>,  <39.172783, 35.766010, 33.055420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240227, 35.176960, 32.659904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904690, 35.343594, 32.519730>,  <38.703369, 35.443573, 32.435623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904690, 35.343594, 32.519730>,  <39.240227, 35.176960, 32.659904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904690, 35.343594, 32.519730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296522, -0.190213, -0.935892,
		-0.456537, -0.888974, 0.036031,
		-0.838837, 0.416585, -0.350440,
		38.653038, 35.468571, 32.414597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996758, 34.640381, 32.132435>,  <39.240227, 35.176960, 32.659904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996758, 34.640381, 32.132435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871140, 35.013065, 32.059456>,  <38.795769, 35.236675, 32.015667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871140, 35.013065, 32.059456>,  <38.996758, 34.640381, 32.132435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871140, 35.013065, 32.059456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279370, -0.092978, -0.955671,
		-0.907376, -0.351090, -0.231094,
		-0.314040, 0.931714, -0.182450,
		38.776928, 35.292580, 32.004723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803085, 34.578243, 31.466656>,  <38.996758, 34.640381, 32.132435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803085, 34.578243, 31.466656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785015, 34.971550, 31.537258>,  <38.774174, 35.207535, 31.579620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785015, 34.971550, 31.537258>,  <38.803085, 34.578243, 31.466656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785015, 34.971550, 31.537258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145686, 0.181282, -0.972580,
		-0.988299, -0.018224, -0.151437,
		-0.045177, 0.983262, 0.176506,
		38.771461, 35.266529, 31.590210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455173, 34.858467, 30.829723>,  <38.803085, 34.578243, 31.466656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455173, 34.858467, 30.829723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629704, 35.182087, 30.987234>,  <38.734421, 35.376259, 31.081739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629704, 35.182087, 30.987234>,  <38.455173, 34.858467, 30.829723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629704, 35.182087, 30.987234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173705, 0.353660, -0.919103,
		-0.882863, 0.469429, 0.013775,
		0.436325, 0.809049, 0.393776,
		38.760601, 35.424801, 31.105368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180634, 35.549988, 30.483683>,  <38.455173, 34.858467, 30.829723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180634, 35.549988, 30.483683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545227, 35.617756, 30.633610>,  <38.763985, 35.658417, 30.723566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545227, 35.617756, 30.633610>,  <38.180634, 35.549988, 30.483683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545227, 35.617756, 30.633610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325756, 0.259056, -0.909270,
		-0.251150, 0.950887, 0.180936,
		0.911486, 0.169422, 0.374819,
		38.818672, 35.668583, 30.746056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402626, 36.176682, 30.105808>,  <38.180634, 35.549988, 30.483683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402626, 36.176682, 30.105808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708126, 35.981869, 30.275274>,  <38.891426, 35.864983, 30.376953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708126, 35.981869, 30.275274>,  <38.402626, 36.176682, 30.105808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708126, 35.981869, 30.275274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569612, 0.199695, -0.797286,
		0.303698, 0.850249, 0.429935,
		0.763747, -0.487030, 0.423665,
		38.937252, 35.835758, 30.402374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947582, 36.603004, 30.022120>,  <38.402626, 36.176682, 30.105808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947582, 36.603004, 30.022120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079971, 36.225945, 30.039436>,  <39.159405, 35.999710, 30.049826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079971, 36.225945, 30.039436>,  <38.947582, 36.603004, 30.022120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079971, 36.225945, 30.039436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488298, 0.131829, -0.862662,
		0.807478, 0.306659, 0.503925,
		0.330975, -0.942646, 0.043292,
		39.179264, 35.943150, 30.052423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558434, 36.710732, 29.910097>,  <38.947582, 36.603004, 30.022120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558434, 36.710732, 29.910097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512165, 36.322086, 29.827551>,  <39.484402, 36.088898, 29.778023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512165, 36.322086, 29.827551>,  <39.558434, 36.710732, 29.910097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512165, 36.322086, 29.827551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446196, 0.134790, -0.884726,
		0.887428, -0.194420, 0.417938,
		-0.115675, -0.971613, -0.206366,
		39.477463, 36.030602, 29.765640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012535, 36.545662, 29.297783>,  <39.558434, 36.710732, 29.910097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012535, 36.545662, 29.297783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804913, 36.203781, 29.301073>,  <39.680340, 35.998653, 29.303047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804913, 36.203781, 29.301073>,  <40.012535, 36.545662, 29.297783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804913, 36.203781, 29.301073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144563, -0.097271, -0.984703,
		0.842427, -0.509925, 0.174047,
		-0.519055, -0.854701, 0.008227,
		39.649197, 35.947372, 29.303541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381104, 36.028183, 29.076874>,  <40.012535, 36.545662, 29.297783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381104, 36.028183, 29.076874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012180, 35.892975, 29.001940>,  <39.790829, 35.811848, 28.956980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012180, 35.892975, 29.001940>,  <40.381104, 36.028183, 29.076874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012180, 35.892975, 29.001940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268782, -0.212744, -0.939413,
		0.277689, -0.916777, 0.287069,
		-0.922304, -0.338023, -0.187336,
		39.735489, 35.791569, 28.945740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646889, 35.477695, 28.658228>,  <40.381104, 36.028183, 29.076874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646889, 35.477695, 28.658228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278934, 35.619083, 28.590258>,  <40.058163, 35.703918, 28.549475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278934, 35.619083, 28.590258>,  <40.646889, 35.477695, 28.658228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278934, 35.619083, 28.590258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112767, -0.176600, -0.977802,
		-0.375635, -0.918624, 0.122591,
		-0.919882, 0.353472, -0.169928,
		40.002972, 35.725124, 28.539280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355350, 34.879589, 28.331982>,  <40.646889, 35.477695, 28.658228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355350, 34.879589, 28.331982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114841, 35.183132, 28.231892>,  <39.970535, 35.365257, 28.171839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114841, 35.183132, 28.231892>,  <40.355350, 34.879589, 28.331982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114841, 35.183132, 28.231892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093453, -0.244220, -0.965206,
		-0.793560, -0.603737, 0.075926,
		-0.601273, 0.758853, -0.250224,
		39.934460, 35.410789, 28.156824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905422, 34.667557, 27.724318>,  <40.355350, 34.879589, 28.331982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905422, 34.667557, 27.724318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846378, 35.062813, 27.707436>,  <39.810951, 35.299969, 27.697306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846378, 35.062813, 27.707436>,  <39.905422, 34.667557, 27.724318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846378, 35.062813, 27.707436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000697, -0.042778, -0.999084,
		-0.989045, -0.147448, 0.007003,
		-0.147613, 0.988144, -0.042207,
		39.802094, 35.359257, 27.694773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228733, 34.843132, 27.461969>,  <39.905422, 34.667557, 27.724318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228733, 34.843132, 27.461969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462936, 35.160011, 27.393162>,  <39.603458, 35.350140, 27.351877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462936, 35.160011, 27.393162>,  <39.228733, 34.843132, 27.461969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462936, 35.160011, 27.393162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199241, -0.065062, -0.977788,
		-0.785798, 0.606781, 0.119744,
		0.585512, 0.792202, -0.172021,
		39.638592, 35.397671, 27.341555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823620, 35.372028, 27.031868>,  <39.228733, 34.843132, 27.461969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823620, 35.372028, 27.031868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219131, 35.415436, 26.990808>,  <39.456440, 35.441483, 26.966173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219131, 35.415436, 26.990808>,  <38.823620, 35.372028, 27.031868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219131, 35.415436, 26.990808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101512, -0.015965, -0.994706,
		-0.109587, 0.993966, -0.004770,
		0.988780, 0.108523, -0.102649,
		39.515766, 35.447994, 26.960014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895592, 35.896912, 26.482128>,  <38.823620, 35.372028, 27.031868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895592, 35.896912, 26.482128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264561, 35.742439, 26.481550>,  <39.485943, 35.649757, 26.481203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264561, 35.742439, 26.481550>,  <38.895592, 35.896912, 26.482128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264561, 35.742439, 26.481550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072968, -0.170608, -0.982633,
		0.379228, 0.906508, -0.185551,
		0.922422, -0.386181, -0.001446,
		39.541286, 35.626583, 26.481115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194328, 36.237568, 25.959995>,  <38.895592, 35.896912, 26.482128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194328, 36.237568, 25.959995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423031, 35.913189, 26.009741>,  <39.560253, 35.718563, 26.039589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423031, 35.913189, 26.009741>,  <39.194328, 36.237568, 25.959995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423031, 35.913189, 26.009741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050322, -0.116637, -0.991899,
		0.818881, 0.573379, -0.025879,
		0.571753, -0.810945, 0.124366,
		39.594555, 35.669907, 26.047050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693848, 36.288807, 25.440697>,  <39.194328, 36.237568, 25.959995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693848, 36.288807, 25.440697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690243, 35.900883, 25.538176>,  <39.688080, 35.668129, 25.596663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690243, 35.900883, 25.538176>,  <39.693848, 36.288807, 25.440697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690243, 35.900883, 25.538176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050529, -0.243835, -0.968500,
		0.998682, 0.003589, 0.051200,
		-0.009009, -0.969810, 0.243695,
		39.687542, 35.609940, 25.611284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092075, 36.039867, 24.932608>,  <39.693848, 36.288807, 25.440697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092075, 36.039867, 24.932608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907028, 35.719055, 25.083727>,  <39.796001, 35.526569, 25.174398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907028, 35.719055, 25.083727>,  <40.092075, 36.039867, 24.932608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907028, 35.719055, 25.083727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022484, -0.436619, -0.899365,
		0.886274, -0.407566, 0.220020,
		-0.462616, -0.802031, 0.377800,
		39.768242, 35.478447, 25.197067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401810, 35.432510, 24.583570>,  <40.092075, 36.039867, 24.932608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401810, 35.432510, 24.583570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067223, 35.292820, 24.752502>,  <39.866470, 35.209003, 24.853863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067223, 35.292820, 24.752502>,  <40.401810, 35.432510, 24.583570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067223, 35.292820, 24.752502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201295, -0.520986, -0.829490,
		0.509711, -0.778853, 0.365489,
		-0.836466, -0.349229, 0.422332,
		39.816284, 35.188053, 24.879202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423641, 34.706158, 24.559893>,  <40.401810, 35.432510, 24.583570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423641, 34.706158, 24.559893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044285, 34.832550, 24.570566>,  <39.816673, 34.908386, 24.576971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044285, 34.832550, 24.570566>,  <40.423641, 34.706158, 24.559893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044285, 34.832550, 24.570566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200816, -0.533329, -0.821726,
		-0.245420, -0.784675, 0.569258,
		-0.948389, 0.315984, 0.026685,
		39.759769, 34.927345, 24.578571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065121, 34.048908, 24.579130>,  <40.423641, 34.706158, 24.559893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065121, 34.048908, 24.579130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808300, 34.329269, 24.454866>,  <39.654209, 34.497486, 24.380308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808300, 34.329269, 24.454866>,  <40.065121, 34.048908, 24.579130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808300, 34.329269, 24.454866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219662, -0.556398, -0.801355,
		-0.734521, -0.446269, 0.511197,
		-0.642049, 0.700902, -0.310658,
		39.615685, 34.539539, 24.361670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466133, 33.663956, 24.347874>,  <40.065121, 34.048908, 24.579130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466133, 33.663956, 24.347874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417999, 34.031273, 24.197010>,  <39.389118, 34.251663, 24.106493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417999, 34.031273, 24.197010>,  <39.466133, 33.663956, 24.347874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417999, 34.031273, 24.197010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307888, -0.395709, -0.865228,
		-0.943782, 0.012002, 0.330352,
		-0.120339, 0.918298, -0.377158,
		39.381897, 34.306763, 24.083862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761551, 33.734814, 23.920311>,  <39.466133, 33.663956, 24.347874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761551, 33.734814, 23.920311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038036, 33.986153, 23.777540>,  <39.203930, 34.136955, 23.691877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038036, 33.986153, 23.777540>,  <38.761551, 33.734814, 23.920311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038036, 33.986153, 23.777540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173077, -0.335591, -0.925972,
		-0.701616, 0.701822, -0.123213,
		0.691216, 0.628351, -0.356925,
		39.245399, 34.174660, 23.670464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435337, 33.949257, 23.269722>,  <38.761551, 33.734814, 23.920311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435337, 33.949257, 23.269722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809044, 34.089985, 23.246489>,  <39.033268, 34.174423, 23.232550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809044, 34.089985, 23.246489>,  <38.435337, 33.949257, 23.269722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809044, 34.089985, 23.246489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002846, -0.170236, -0.985399,
		-0.356572, 0.920457, -0.160047,
		0.934264, 0.351821, -0.058082,
		39.089321, 34.195530, 23.229065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410683, 34.398312, 22.676600>,  <38.435337, 33.949257, 23.269722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410683, 34.398312, 22.676600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795841, 34.306236, 22.732944>,  <39.026936, 34.250992, 22.766752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795841, 34.306236, 22.732944>,  <38.410683, 34.398312, 22.676600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795841, 34.306236, 22.732944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111062, -0.137710, -0.984226,
		0.245953, 0.963354, -0.107036,
		0.962898, -0.230186, 0.140862,
		39.084709, 34.237179, 22.775204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798180, 34.858509, 22.085627>,  <38.410683, 34.398312, 22.676600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798180, 34.858509, 22.085627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008179, 34.536385, 22.195786>,  <39.134178, 34.343109, 22.261881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008179, 34.536385, 22.195786>,  <38.798180, 34.858509, 22.085627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008179, 34.536385, 22.195786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226965, -0.179386, -0.957240,
		0.820281, 0.565057, 0.088600,
		0.525001, -0.805315, 0.275395,
		39.165680, 34.294788, 22.278404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339958, 34.815792, 21.647005>,  <38.798180, 34.858509, 22.085627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339958, 34.815792, 21.647005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361160, 34.446804, 21.799973>,  <39.373882, 34.225410, 21.891752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361160, 34.446804, 21.799973>,  <39.339958, 34.815792, 21.647005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361160, 34.446804, 21.799973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228708, -0.361563, -0.903861,
		0.972051, 0.135369, 0.191812,
		0.053003, -0.922468, 0.382418,
		39.377060, 34.170063, 21.914698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913872, 34.492153, 21.228647>,  <39.339958, 34.815792, 21.647005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913872, 34.492153, 21.228647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698437, 34.197231, 21.391771>,  <39.569176, 34.020279, 21.489645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698437, 34.197231, 21.391771>,  <39.913872, 34.492153, 21.228647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698437, 34.197231, 21.391771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229292, -0.593998, -0.771098,
		0.810769, -0.321797, 0.488978,
		-0.538589, -0.737301, 0.407810,
		39.536861, 33.976040, 21.514114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318325, 33.930054, 21.105026>,  <39.913872, 34.492153, 21.228647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318325, 33.930054, 21.105026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956692, 33.766365, 21.154285>,  <39.739712, 33.668152, 21.183840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956692, 33.766365, 21.154285>,  <40.318325, 33.930054, 21.105026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956692, 33.766365, 21.154285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133122, -0.543511, -0.828779,
		0.406084, -0.732895, 0.545857,
		-0.904087, -0.409219, 0.123147,
		39.685467, 33.643600, 21.191229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443123, 33.272320, 20.961845>,  <40.318325, 33.930054, 21.105026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443123, 33.272320, 20.961845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047180, 33.300144, 20.912308>,  <39.809612, 33.316841, 20.882586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047180, 33.300144, 20.912308>,  <40.443123, 33.272320, 20.961845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047180, 33.300144, 20.912308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074784, -0.486029, -0.870737,
		-0.120764, -0.871169, 0.475899,
		-0.989860, 0.069564, -0.123844,
		39.750221, 33.321014, 20.875154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148235, 32.740261, 21.368130>,  <40.443123, 33.272320, 20.961845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148235, 32.740261, 21.368130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068386, 32.355465, 21.293600>,  <40.020477, 32.124588, 21.248882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068386, 32.355465, 21.293600>,  <40.148235, 32.740261, 21.368130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068386, 32.355465, 21.293600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017727, -0.193667, 0.980907,
		-0.979712, 0.192512, 0.055714,
		-0.199627, -0.961994, -0.186325,
		40.008499, 32.066868, 21.237703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886776, 32.516632, 21.953020>,  <40.148235, 32.740261, 21.368130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886776, 32.516632, 21.953020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918423, 32.155598, 21.783751>,  <39.937408, 31.938976, 21.682188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918423, 32.155598, 21.783751>,  <39.886776, 32.516632, 21.953020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918423, 32.155598, 21.783751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151583, -0.430461, 0.889790,
		-0.985273, -0.006247, -0.170872,
		0.079113, -0.902587, -0.423175,
		39.942158, 31.884821, 21.656797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325138, 32.119152, 22.117229>,  <39.886776, 32.516632, 21.953020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325138, 32.119152, 22.117229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636868, 31.879282, 22.044521>,  <39.823906, 31.735359, 22.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636868, 31.879282, 22.044521>,  <39.325138, 32.119152, 22.117229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636868, 31.879282, 22.044521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107785, -0.414044, 0.903853,
		-0.617279, -0.684804, -0.387311,
		0.779326, -0.599676, -0.181770,
		39.870667, 31.699379, 21.989990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233269, 31.496773, 22.486582>,  <39.325138, 32.119152, 22.117229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233269, 31.496773, 22.486582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623333, 31.475027, 22.400700>,  <39.857372, 31.461981, 22.349171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623333, 31.475027, 22.400700>,  <39.233269, 31.496773, 22.486582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623333, 31.475027, 22.400700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188370, -0.306294, 0.933113,
		-0.116488, -0.950383, -0.288447,
		0.975165, -0.054362, -0.214704,
		39.915882, 31.458717, 22.336288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463985, 30.837824, 22.850433>,  <39.233269, 31.496773, 22.486582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463985, 30.837824, 22.850433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791153, 31.046541, 22.753492>,  <39.987453, 31.171772, 22.695328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791153, 31.046541, 22.753492>,  <39.463985, 30.837824, 22.850433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791153, 31.046541, 22.753492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379577, -0.172858, 0.908868,
		0.432349, -0.835375, -0.339446,
		0.817922, 0.521794, -0.242354,
		40.036530, 31.203079, 22.680786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043053, 30.422520, 22.983313>,  <39.463985, 30.837824, 22.850433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043053, 30.422520, 22.983313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178574, 30.798849, 22.986567>,  <40.259888, 31.024647, 22.988518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178574, 30.798849, 22.986567>,  <40.043053, 30.422520, 22.983313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178574, 30.798849, 22.986567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413437, -0.156639, 0.896958,
		0.845152, -0.300530, -0.442041,
		0.338803, 0.940822, 0.008133,
		40.280216, 31.081097, 22.989006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687820, 30.404968, 23.306961>,  <40.043053, 30.422520, 22.983313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687820, 30.404968, 23.306961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573013, 30.785921, 23.348114>,  <40.504128, 31.014494, 23.372807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573013, 30.785921, 23.348114>,  <40.687820, 30.404968, 23.306961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573013, 30.785921, 23.348114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391493, 0.018600, 0.919993,
		0.874273, 0.304332, -0.378191,
		-0.287018, 0.952384, 0.102883,
		40.486908, 31.071636, 23.378979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234962, 30.687862, 23.718786>,  <40.687820, 30.404968, 23.306961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234962, 30.687862, 23.718786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947254, 30.965656, 23.726152>,  <40.774628, 31.132332, 23.730572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947254, 30.965656, 23.726152>,  <41.234962, 30.687862, 23.718786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947254, 30.965656, 23.726152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279695, 0.265212, 0.922731,
		0.635938, 0.668847, -0.385003,
		-0.719273, 0.694483, 0.018414,
		40.731472, 31.174002, 23.731676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525013, 31.298203, 23.889351>,  <41.234962, 30.687862, 23.718786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525013, 31.298203, 23.889351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137249, 31.335857, 23.980013>,  <40.904591, 31.358450, 24.034410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137249, 31.335857, 23.980013>,  <41.525013, 31.298203, 23.889351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137249, 31.335857, 23.980013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244663, 0.443572, 0.862197,
		-0.019373, 0.891281, -0.453038,
		-0.969415, 0.094138, 0.226657,
		40.846424, 31.364100, 24.048010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354187, 32.013195, 24.088081>,  <41.525013, 31.298203, 23.889351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354187, 32.013195, 24.088081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062153, 31.796249, 24.254362>,  <40.886932, 31.666080, 24.354130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062153, 31.796249, 24.254362>,  <41.354187, 32.013195, 24.088081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062153, 31.796249, 24.254362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190820, 0.422318, 0.886135,
		-0.656169, 0.726282, -0.204835,
		-0.730089, -0.542367, 0.415701,
		40.843124, 31.633539, 24.379072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040600, 32.447453, 24.532330>,  <41.354187, 32.013195, 24.088081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040600, 32.447453, 24.532330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903942, 32.091312, 24.652700>,  <40.821949, 31.877628, 24.724922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903942, 32.091312, 24.652700>,  <41.040600, 32.447453, 24.532330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903942, 32.091312, 24.652700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026324, 0.329131, 0.943917,
		-0.939462, 0.314559, -0.135882,
		-0.341640, -0.890352, 0.300926,
		40.801449, 31.824207, 24.742979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553982, 32.669590, 25.048788>,  <41.040600, 32.447453, 24.532330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553982, 32.669590, 25.048788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618114, 32.281281, 25.120214>,  <40.656593, 32.048294, 25.163071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618114, 32.281281, 25.120214>,  <40.553982, 32.669590, 25.048788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618114, 32.281281, 25.120214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100196, 0.163963, 0.981365,
		-0.981965, -0.175235, -0.070980,
		0.160331, -0.970777, 0.178564,
		40.666214, 31.990047, 25.173784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052933, 32.483788, 25.415478>,  <40.553982, 32.669590, 25.048788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052933, 32.483788, 25.415478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313053, 32.189003, 25.489233>,  <40.469124, 32.012131, 25.533485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313053, 32.189003, 25.489233>,  <40.052933, 32.483788, 25.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313053, 32.189003, 25.489233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000929, 0.243490, 0.969903,
		-0.759676, -0.630557, 0.159027,
		0.650301, -0.736960, 0.184387,
		40.508144, 31.967915, 25.544550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842236, 32.078781, 25.966011>,  <40.052933, 32.483788, 25.415478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842236, 32.078781, 25.966011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238373, 32.023396, 25.963074>,  <40.476055, 31.990164, 25.961311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238373, 32.023396, 25.963074>,  <39.842236, 32.078781, 25.966011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238373, 32.023396, 25.963074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030686, 0.167198, 0.985446,
		-0.135225, -0.976151, 0.169832,
		0.990340, -0.138469, -0.007345,
		40.535473, 31.981855, 25.960871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885830, 31.778507, 26.575743>,  <39.842236, 32.078781, 25.966011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885830, 31.778507, 26.575743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260754, 31.894804, 26.498894>,  <40.485710, 31.964582, 26.452785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260754, 31.894804, 26.498894>,  <39.885830, 31.778507, 26.575743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260754, 31.894804, 26.498894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131627, 0.215093, 0.967683,
		0.322674, -0.932310, 0.163339,
		0.937313, 0.290746, -0.192122,
		40.541946, 31.982027, 26.441257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338638, 31.467047, 27.152058>,  <39.885830, 31.778507, 26.575743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338638, 31.467047, 27.152058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524780, 31.777676, 26.982172>,  <40.636467, 31.964052, 26.880239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524780, 31.777676, 26.982172>,  <40.338638, 31.467047, 27.152058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524780, 31.777676, 26.982172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193992, 0.378689, 0.904965,
		0.863605, -0.503520, 0.025575,
		0.465353, 0.776571, -0.424716,
		40.664387, 32.010647, 26.854757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966042, 31.569445, 27.520769>,  <40.338638, 31.467047, 27.152058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966042, 31.569445, 27.520769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902660, 31.911640, 27.323578>,  <40.864632, 32.116959, 27.205263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902660, 31.911640, 27.323578>,  <40.966042, 31.569445, 27.520769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902660, 31.911640, 27.323578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040233, 0.493277, 0.868941,
		0.986547, 0.157520, -0.043742,
		-0.158452, 0.855491, -0.492979,
		40.855125, 32.168289, 27.175684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429989, 32.124283, 27.800404>,  <40.966042, 31.569445, 27.520769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429989, 32.124283, 27.800404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133636, 32.329227, 27.626698>,  <40.955826, 32.452194, 27.522474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133636, 32.329227, 27.626698>,  <41.429989, 32.124283, 27.800404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133636, 32.329227, 27.626698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071813, 0.582435, 0.809699,
		0.667789, 0.631074, -0.394719,
		-0.740878, 0.512362, -0.434263,
		40.911373, 32.482937, 27.496418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489834, 32.738003, 28.034166>,  <41.429989, 32.124283, 27.800404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489834, 32.738003, 28.034166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121307, 32.785709, 27.886139>,  <40.900192, 32.814335, 27.797323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121307, 32.785709, 27.886139>,  <41.489834, 32.738003, 28.034166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121307, 32.785709, 27.886139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230761, 0.598300, 0.767325,
		0.312928, 0.792346, -0.523701,
		-0.921317, 0.119268, -0.370068,
		40.844913, 32.821491, 27.775118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319286, 33.483280, 28.074099>,  <41.489834, 32.738003, 28.034166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319286, 33.483280, 28.074099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979038, 33.273670, 28.056936>,  <40.774891, 33.147903, 28.046638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979038, 33.273670, 28.056936>,  <41.319286, 33.483280, 28.074099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979038, 33.273670, 28.056936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396079, 0.584983, 0.707754,
		-0.345783, 0.619025, -0.705154,
		-0.850620, -0.524027, -0.042906,
		40.723850, 33.116463, 28.044065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709366, 33.926743, 28.161125>,  <41.319286, 33.483280, 28.074099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709366, 33.926743, 28.161125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552620, 33.577518, 28.277199>,  <40.458572, 33.367985, 28.346844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552620, 33.577518, 28.277199>,  <40.709366, 33.926743, 28.161125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552620, 33.577518, 28.277199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486070, 0.464263, 0.740403,
		-0.781138, 0.149088, -0.606297,
		-0.391866, -0.873060, 0.290186,
		40.435059, 33.315601, 28.364254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025398, 34.072491, 28.291712>,  <40.709366, 33.926743, 28.161125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025398, 34.072491, 28.291712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092545, 33.713169, 28.454130>,  <40.132832, 33.497578, 28.551580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092545, 33.713169, 28.454130>,  <40.025398, 34.072491, 28.291712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092545, 33.713169, 28.454130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356176, 0.328799, 0.874660,
		-0.919216, -0.291452, -0.264758,
		0.167870, -0.898302, 0.406046,
		40.142906, 33.443680, 28.575943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449577, 33.904049, 28.848024>,  <40.025398, 34.072491, 28.291712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449577, 33.904049, 28.848024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762272, 33.673836, 28.944069>,  <39.949890, 33.535709, 29.001696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762272, 33.673836, 28.944069>,  <39.449577, 33.904049, 28.848024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762272, 33.673836, 28.944069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026031, 0.354585, 0.934662,
		-0.623066, -0.736908, 0.262210,
		0.781735, -0.575531, 0.240112,
		39.996792, 33.501175, 29.016102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325695, 33.768757, 29.468962>,  <39.449577, 33.904049, 28.848024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325695, 33.768757, 29.468962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713867, 33.674984, 29.445988>,  <39.946770, 33.618721, 29.432203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713867, 33.674984, 29.445988>,  <39.325695, 33.768757, 29.468962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713867, 33.674984, 29.445988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100878, 0.177764, 0.978889,
		-0.219278, -0.955740, 0.196158,
		0.970433, -0.234436, -0.057433,
		40.004997, 33.604652, 29.428759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332073, 33.215862, 29.927145>,  <39.325695, 33.768757, 29.468962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332073, 33.215862, 29.927145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696815, 33.374523, 29.884855>,  <39.915661, 33.469719, 29.859482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696815, 33.374523, 29.884855>,  <39.332073, 33.215862, 29.927145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696815, 33.374523, 29.884855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121981, -0.015903, 0.992405,
		0.391959, -0.917831, -0.062886,
		0.911860, 0.396653, -0.105724,
		39.970375, 33.493519, 29.853138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815426, 32.814011, 30.381886>,  <39.332073, 33.215862, 29.927145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815426, 32.814011, 30.381886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969440, 33.174652, 30.303028>,  <40.061848, 33.391037, 30.255714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969440, 33.174652, 30.303028>,  <39.815426, 32.814011, 30.381886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969440, 33.174652, 30.303028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253010, 0.102310, 0.962039,
		0.887543, -0.420299, -0.188721,
		0.385036, 0.901599, -0.197144,
		40.084953, 33.445133, 30.243885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446362, 32.735680, 30.655327>,  <39.815426, 32.814011, 30.381886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446362, 32.735680, 30.655327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398632, 33.130836, 30.615677>,  <40.369995, 33.367931, 30.591887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398632, 33.130836, 30.615677>,  <40.446362, 32.735680, 30.655327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398632, 33.130836, 30.615677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356350, 0.135798, 0.924432,
		0.926702, 0.074983, -0.368240,
		-0.119323, 0.987895, -0.099124,
		40.362835, 33.427204, 30.585939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011143, 32.926247, 31.094654>,  <40.446362, 32.735680, 30.655327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011143, 32.926247, 31.094654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796471, 33.258362, 31.034533>,  <40.667667, 33.457630, 30.998459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796471, 33.258362, 31.034533>,  <41.011143, 32.926247, 31.094654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796471, 33.258362, 31.034533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192303, 0.293802, 0.936322,
		0.821577, 0.473606, -0.317346,
		-0.536685, 0.830288, -0.150305,
		40.635464, 33.507446, 30.989441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475273, 33.537693, 31.389528>,  <41.011143, 32.926247, 31.094654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475273, 33.537693, 31.389528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089275, 33.641930, 31.377701>,  <40.857677, 33.704472, 31.370604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089275, 33.641930, 31.377701>,  <41.475273, 33.537693, 31.389528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089275, 33.641930, 31.377701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008010, 0.141976, 0.989838,
		0.262144, 0.954952, -0.139094,
		-0.964996, 0.260594, -0.029569,
		40.799778, 33.720108, 31.368830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409443, 34.057713, 31.847172>,  <41.475273, 33.537693, 31.389528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409443, 34.057713, 31.847172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034576, 33.921028, 31.819021>,  <40.809658, 33.839016, 31.802132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034576, 33.921028, 31.819021>,  <41.409443, 34.057713, 31.847172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034576, 33.921028, 31.819021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133131, 0.163810, 0.977467,
		-0.322482, 0.925419, -0.199010,
		-0.937167, -0.341710, -0.070376,
		40.753426, 33.818516, 31.797909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010239, 34.414295, 32.430046>,  <41.409443, 34.057713, 31.847172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010239, 34.414295, 32.430046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780693, 34.113091, 32.301270>,  <40.642963, 33.932365, 32.224003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780693, 34.113091, 32.301270>,  <41.010239, 34.414295, 32.430046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780693, 34.113091, 32.301270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347454, -0.132110, 0.928344,
		-0.741587, 0.644607, -0.185824,
		-0.573868, -0.753013, -0.321942,
		40.608532, 33.887188, 32.204685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368168, 34.484486, 32.726437>,  <41.010239, 34.414295, 32.430046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368168, 34.484486, 32.726437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404472, 34.090485, 32.667736>,  <40.426254, 33.854084, 32.632515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404472, 34.090485, 32.667736>,  <40.368168, 34.484486, 32.726437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404472, 34.090485, 32.667736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267326, -0.166052, 0.949191,
		-0.959322, -0.046918, -0.278388,
		0.090761, -0.985000, -0.146755,
		40.431702, 33.794983, 32.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788464, 34.210243, 33.134804>,  <40.368168, 34.484486, 32.726437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788464, 34.210243, 33.134804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038845, 33.912827, 33.040718>,  <40.189072, 33.734375, 32.984264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038845, 33.912827, 33.040718>,  <39.788464, 34.210243, 33.134804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038845, 33.912827, 33.040718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115955, -0.386997, 0.914761,
		-0.771194, -0.545321, -0.328459,
		0.625951, -0.743545, -0.235217,
		40.226631, 33.689762, 32.970154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412754, 33.568893, 33.179008>,  <39.788464, 34.210243, 33.134804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412754, 33.568893, 33.179008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797085, 33.492813, 33.259640>,  <40.027683, 33.447166, 33.308018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797085, 33.492813, 33.259640>,  <39.412754, 33.568893, 33.179008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797085, 33.492813, 33.259640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269322, -0.469194, 0.841025,
		-0.065381, -0.862370, -0.502039,
		0.960828, -0.190197, 0.201579,
		40.085335, 33.435753, 33.320114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318584, 33.049160, 33.547970>,  <39.412754, 33.568893, 33.179008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318584, 33.049160, 33.547970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691929, 33.166138, 33.631214>,  <39.915936, 33.236324, 33.681160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691929, 33.166138, 33.631214>,  <39.318584, 33.049160, 33.547970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691929, 33.166138, 33.631214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084441, -0.384623, 0.919203,
		0.348859, -0.875524, -0.334299,
		0.933363, 0.292443, 0.208109,
		39.971939, 33.253872, 33.693645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702106, 32.427757, 33.816368>,  <39.318584, 33.049160, 33.547970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702106, 32.427757, 33.816368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921005, 32.736740, 33.945263>,  <40.052345, 32.922131, 34.022598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921005, 32.736740, 33.945263>,  <39.702106, 32.427757, 33.816368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921005, 32.736740, 33.945263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001806, -0.386087, 0.922460,
		0.836969, -0.504233, -0.212681,
		0.547248, 0.772455, 0.322232,
		40.085178, 32.968475, 34.041931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378078, 32.186523, 34.046783>,  <39.702106, 32.427757, 33.816368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378078, 32.186523, 34.046783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300968, 32.538387, 34.220692>,  <40.254700, 32.749508, 34.325035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300968, 32.538387, 34.220692>,  <40.378078, 32.186523, 34.046783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300968, 32.538387, 34.220692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133366, -0.462461, 0.876552,
		0.972136, 0.110998, 0.206471,
		-0.192780, 0.879664, 0.434771,
		40.243134, 32.802288, 34.351124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764740, 32.167816, 34.662544>,  <40.378078, 32.186523, 34.046783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764740, 32.167816, 34.662544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540165, 32.492405, 34.727409>,  <40.405418, 32.687160, 34.766327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540165, 32.492405, 34.727409>,  <40.764740, 32.167816, 34.662544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540165, 32.492405, 34.727409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159824, -0.085936, 0.983398,
		0.811937, 0.578035, -0.081445,
		-0.561440, 0.811474, 0.162158,
		40.371735, 32.735847, 34.776058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230717, 32.677795, 35.019032>,  <40.764740, 32.167816, 34.662544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230717, 32.677795, 35.019032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840088, 32.751221, 35.063965>,  <40.605713, 32.795277, 35.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840088, 32.751221, 35.063965>,  <41.230717, 32.677795, 35.019032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840088, 32.751221, 35.063965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088570, -0.132902, 0.987164,
		0.196138, 0.973982, 0.113529,
		-0.976568, 0.183565, 0.112333,
		40.547119, 32.806290, 35.097664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210205, 33.155815, 35.641315>,  <41.230717, 32.677795, 35.019032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210205, 33.155815, 35.641315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847271, 33.000793, 35.576141>,  <40.629509, 32.907780, 35.537037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847271, 33.000793, 35.576141>,  <41.210205, 33.155815, 35.641315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847271, 33.000793, 35.576141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118053, -0.137099, 0.983498,
		-0.403495, 0.911596, 0.078643,
		-0.907334, -0.387552, -0.162935,
		40.575069, 32.884529, 35.527260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683788, 33.461491, 36.113461>,  <41.210205, 33.155815, 35.641315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683788, 33.461491, 36.113461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555958, 33.095253, 36.015842>,  <40.479259, 32.875511, 35.957272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555958, 33.095253, 36.015842>,  <40.683788, 33.461491, 36.113461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555958, 33.095253, 36.015842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227945, -0.175703, 0.957690,
		-0.919734, 0.361685, -0.152554,
		-0.319578, -0.915594, -0.244044,
		40.460083, 32.820576, 35.942631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180588, 33.348209, 36.529518>,  <40.683788, 33.461491, 36.113461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180588, 33.348209, 36.529518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264698, 32.972645, 36.420532>,  <40.315163, 32.747307, 36.355141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264698, 32.972645, 36.420532>,  <40.180588, 33.348209, 36.529518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264698, 32.972645, 36.420532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079881, -0.294259, 0.952381,
		-0.974374, -0.178495, -0.136875,
		0.210272, -0.938910, -0.272460,
		40.327778, 32.690971, 36.338795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860699, 32.955273, 37.013256>,  <40.180588, 33.348209, 36.529518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860699, 32.955273, 37.013256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099941, 32.691360, 36.831284>,  <40.243484, 32.533012, 36.722099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099941, 32.691360, 36.831284>,  <39.860699, 32.955273, 37.013256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099941, 32.691360, 36.831284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184372, -0.439151, 0.879291,
		-0.779922, -0.609784, -0.141014,
		0.598105, -0.659779, -0.454931,
		40.279373, 32.493427, 36.694805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697365, 32.242432, 37.299194>,  <39.860699, 32.955273, 37.013256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697365, 32.242432, 37.299194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061882, 32.208374, 37.138050>,  <40.280594, 32.187939, 37.041363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061882, 32.208374, 37.138050>,  <39.697365, 32.242432, 37.299194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061882, 32.208374, 37.138050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316097, -0.482335, 0.816967,
		-0.263870, -0.871839, -0.412637,
		0.911293, -0.085140, -0.402860,
		40.335270, 32.182831, 37.017193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825817, 31.558943, 37.286747>,  <39.697365, 32.242432, 37.299194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825817, 31.558943, 37.286747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175240, 31.752697, 37.305813>,  <40.384892, 31.868950, 37.317253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175240, 31.752697, 37.305813>,  <39.825817, 31.558943, 37.286747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175240, 31.752697, 37.305813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265639, -0.556524, 0.787221,
		0.407843, -0.675020, -0.614827,
		0.873556, 0.484384, 0.047663,
		40.437305, 31.898012, 37.320110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193863, 31.106222, 37.690048>,  <39.825817, 31.558943, 37.286747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193863, 31.106222, 37.690048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452732, 31.411142, 37.686626>,  <40.608051, 31.594093, 37.684574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452732, 31.411142, 37.686626>,  <40.193863, 31.106222, 37.690048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452732, 31.411142, 37.686626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526912, -0.439161, 0.727668,
		0.550942, -0.475434, -0.685876,
		0.647168, 0.762299, -0.008559,
		40.646881, 31.639832, 37.684059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886875, 30.732702, 37.754646>,  <40.193863, 31.106222, 37.690048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886875, 30.732702, 37.754646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939213, 31.120630, 37.836945>,  <40.970615, 31.353386, 37.886326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939213, 31.120630, 37.836945>,  <40.886875, 30.732702, 37.754646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939213, 31.120630, 37.836945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749961, -0.232557, 0.619254,
		0.648412, 0.073277, -0.757755,
		0.130844, 0.969819, 0.205747,
		40.978466, 31.411575, 37.898670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665344, 30.910414, 37.724476>,  <40.886875, 30.732702, 37.754646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665344, 30.910414, 37.724476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466934, 31.157047, 37.969028>,  <41.347889, 31.305027, 38.115761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466934, 31.157047, 37.969028>,  <41.665344, 30.910414, 37.724476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466934, 31.157047, 37.969028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675568, -0.168295, 0.717833,
		0.545497, 0.769090, -0.333067,
		-0.496025, 0.616585, 0.611377,
		41.318127, 31.342024, 38.152443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133034, 31.346401, 37.905117>,  <41.665344, 30.910414, 37.724476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133034, 31.346401, 37.905117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869381, 31.360811, 38.205582>,  <41.711189, 31.369457, 38.385860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869381, 31.360811, 38.205582>,  <42.133034, 31.346401, 37.905117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869381, 31.360811, 38.205582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745820, -0.096724, 0.659088,
		0.096398, 0.994659, 0.036888,
		-0.659136, 0.036023, 0.751161,
		41.671638, 31.371618, 38.430931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423317, 31.810036, 38.389549>,  <42.133034, 31.346401, 37.905117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423317, 31.810036, 38.389549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165695, 31.588625, 38.600754>,  <42.011120, 31.455778, 38.727478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165695, 31.588625, 38.600754>,  <42.423317, 31.810036, 38.389549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165695, 31.588625, 38.600754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662483, -0.058467, 0.746792,
		-0.382498, 0.830777, 0.404358,
		-0.644059, -0.553527, 0.528012,
		41.972477, 31.422567, 38.759159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555325, 32.072010, 38.983345>,  <42.423317, 31.810036, 38.389549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555325, 32.072010, 38.983345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350376, 31.738586, 39.065960>,  <42.227406, 31.538532, 39.115528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350376, 31.738586, 39.065960>,  <42.555325, 32.072010, 38.983345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350376, 31.738586, 39.065960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486478, -0.083543, 0.869689,
		-0.707681, 0.546080, 0.448312,
		-0.512373, -0.833557, 0.206534,
		42.196663, 31.488520, 39.127922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590511, 32.064434, 39.650513>,  <42.555325, 32.072010, 38.983345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590511, 32.064434, 39.650513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515682, 31.684885, 39.548805>,  <42.470787, 31.457157, 39.487782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515682, 31.684885, 39.548805>,  <42.590511, 32.064434, 39.650513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515682, 31.684885, 39.548805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465653, -0.313560, 0.827555,
		-0.864969, 0.036410, 0.500502,
		-0.187068, -0.948870, -0.254266,
		42.459560, 31.400225, 39.472527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228596, 31.773039, 40.205826>,  <42.590511, 32.064434, 39.650513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228596, 31.773039, 40.205826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416210, 31.472645, 40.019913>,  <42.528778, 31.292408, 39.908363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416210, 31.472645, 40.019913>,  <42.228596, 31.773039, 40.205826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416210, 31.472645, 40.019913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490367, -0.216249, 0.844261,
		-0.734536, -0.623906, 0.266828,
		0.469038, -0.750984, -0.464786,
		42.556923, 31.247349, 39.880478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438690, 31.291494, 40.657318>,  <42.228596, 31.773039, 40.205826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438690, 31.291494, 40.657318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683910, 31.136187, 40.382099>,  <42.831043, 31.043001, 40.216969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683910, 31.136187, 40.382099>,  <42.438690, 31.291494, 40.657318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683910, 31.136187, 40.382099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643769, -0.259322, 0.719940,
		-0.457958, -0.884306, 0.090979,
		0.613055, -0.388272, -0.688047,
		42.867828, 31.019705, 40.175686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667255, 30.490633, 40.543785>,  <42.438690, 31.291494, 40.657318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667255, 30.490633, 40.543785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967678, 30.717552, 40.408676>,  <43.147930, 30.853704, 40.327610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967678, 30.717552, 40.408676>,  <42.667255, 30.490633, 40.543785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967678, 30.717552, 40.408676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634680, -0.479388, 0.606109,
		0.181922, -0.669597, -0.720100,
		0.751056, 0.567298, -0.337768,
		43.192993, 30.887741, 40.307346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299187, 30.093702, 40.501030>,  <42.667255, 30.490633, 40.543785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299187, 30.093702, 40.501030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499996, 30.429028, 40.415993>,  <43.620483, 30.630222, 40.364971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499996, 30.429028, 40.415993>,  <43.299187, 30.093702, 40.501030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499996, 30.429028, 40.415993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738754, -0.287857, 0.609410,
		0.449680, -0.462997, -0.763820,
		0.502026, 0.838315, -0.212598,
		43.650604, 30.680523, 40.352215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993824, 29.921915, 40.344265>,  <43.299187, 30.093702, 40.501030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993824, 29.921915, 40.344265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005329, 30.290390, 40.499489>,  <44.012234, 30.511475, 40.592621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005329, 30.290390, 40.499489>,  <43.993824, 29.921915, 40.344265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005329, 30.290390, 40.499489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744498, -0.278793, 0.606627,
		0.667004, 0.271458, -0.693841,
		0.028765, 0.921187, 0.388056,
		44.013958, 30.566746, 40.615906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605350, 30.054729, 40.325344>,  <43.993824, 29.921915, 40.344265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605350, 30.054729, 40.325344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459194, 30.316658, 40.589981>,  <44.371502, 30.473814, 40.748764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459194, 30.316658, 40.589981>,  <44.605350, 30.054729, 40.325344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459194, 30.316658, 40.589981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769636, -0.187257, 0.610406,
		0.523593, 0.732220, -0.435551,
		-0.365391, 0.654820, 0.661589,
		44.349575, 30.513103, 40.788460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188038, 30.380239, 40.535858>,  <44.605350, 30.054729, 40.325344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188038, 30.380239, 40.535858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929604, 30.460608, 40.830395>,  <44.774544, 30.508829, 41.007118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929604, 30.460608, 40.830395>,  <45.188038, 30.380239, 40.535858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929604, 30.460608, 40.830395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649077, -0.362949, 0.668556,
		0.401581, 0.909890, 0.104085,
		-0.646090, 0.200920, 0.736342,
		44.735775, 30.520884, 41.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626312, 30.674391, 41.094444>,  <45.188038, 30.380239, 40.535858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626312, 30.674391, 41.094444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300797, 30.515228, 41.263874>,  <45.105488, 30.419731, 41.365532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300797, 30.515228, 41.263874>,  <45.626312, 30.674391, 41.094444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300797, 30.515228, 41.263874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580088, -0.511843, 0.633652,
		-0.035330, 0.761371, 0.647353,
		-0.813788, -0.397908, 0.423578,
		45.056660, 30.395855, 41.390949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835854, 30.627579, 41.778954>,  <45.626312, 30.674391, 41.094444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835854, 30.627579, 41.778954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535091, 30.372892, 41.710567>,  <45.354633, 30.220081, 41.669537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535091, 30.372892, 41.710567>,  <45.835854, 30.627579, 41.778954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535091, 30.372892, 41.710567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461388, -0.693450, 0.553397,
		-0.470910, 0.337224, 0.815183,
		-0.751907, -0.636716, -0.170961,
		45.309521, 30.181877, 41.659279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671963, 30.304153, 42.418186>,  <45.835854, 30.627579, 41.778954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671963, 30.304153, 42.418186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537247, 30.074524, 42.119656>,  <45.456417, 29.936747, 41.940536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537247, 30.074524, 42.119656>,  <45.671963, 30.304153, 42.418186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537247, 30.074524, 42.119656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250182, -0.818705, 0.516847,
		-0.907733, -0.012648, 0.419358,
		-0.336793, -0.574075, -0.746329,
		45.436211, 29.902302, 41.895756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339558, 29.811739, 42.837852>,  <45.671963, 30.304153, 42.418186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339558, 29.811739, 42.837852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476250, 29.716824, 42.474113>,  <45.558266, 29.659874, 42.255871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476250, 29.716824, 42.474113>,  <45.339558, 29.811739, 42.837852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476250, 29.716824, 42.474113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505400, -0.769372, 0.390688,
		-0.792335, -0.593093, -0.142989,
		0.341726, -0.237290, -0.909350,
		45.578770, 29.645638, 42.201309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047279, 29.277597, 42.475582>,  <45.339558, 29.811739, 42.837852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047279, 29.277597, 42.475582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429558, 29.269535, 42.358116>,  <45.658924, 29.264698, 42.287636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429558, 29.269535, 42.358116>,  <45.047279, 29.277597, 42.475582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429558, 29.269535, 42.358116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100553, -0.915287, 0.390049,
		-0.276653, -0.402297, -0.872708,
		0.955695, -0.020155, -0.293669,
		45.716267, 29.263489, 42.270016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093998, 28.599682, 42.370056>,  <45.047279, 29.277597, 42.475582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093998, 28.599682, 42.370056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452393, 28.776909, 42.382023>,  <45.667431, 28.883245, 42.389202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452393, 28.776909, 42.382023>,  <45.093998, 28.599682, 42.370056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452393, 28.776909, 42.382023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395696, -0.827141, 0.399077,
		0.201562, -0.345731, -0.916429,
		0.895989, 0.443066, 0.029915,
		45.721188, 28.909828, 42.390999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956787, 29.002008, 41.776783>,  <45.093998, 28.599682, 42.370056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956787, 29.002008, 41.776783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044682, 29.362526, 41.926121>,  <45.097420, 29.578836, 42.015724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044682, 29.362526, 41.926121>,  <44.956787, 29.002008, 41.776783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044682, 29.362526, 41.926121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443357, 0.433153, -0.784738,
		-0.868994, 0.006913, 0.494775,
		0.219738, 0.901294, 0.373342,
		45.110603, 29.632914, 42.038124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350269, 29.419765, 41.699238>,  <44.956787, 29.002008, 41.776783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350269, 29.419765, 41.699238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638111, 29.692678, 41.750858>,  <44.810818, 29.856426, 41.781830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638111, 29.692678, 41.750858>,  <44.350269, 29.419765, 41.699238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638111, 29.692678, 41.750858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402266, 0.561108, -0.723423,
		-0.565990, 0.468668, 0.678237,
		0.719609, 0.682282, 0.129052,
		44.853992, 29.897364, 41.789574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014874, 29.932476, 41.952099>,  <44.350269, 29.419765, 41.699238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014874, 29.932476, 41.952099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338089, 30.071287, 41.761673>,  <44.532021, 30.154573, 41.647415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338089, 30.071287, 41.761673>,  <44.014874, 29.932476, 41.952099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338089, 30.071287, 41.761673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571040, 0.660050, -0.488105,
		0.144843, 0.666263, 0.731515,
		0.808043, 0.347025, -0.476067,
		44.580502, 30.175394, 41.618855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886921, 30.629959, 42.026833>,  <44.014874, 29.932476, 41.952099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886921, 30.629959, 42.026833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151627, 30.603424, 41.728127>,  <44.310452, 30.587503, 41.548901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151627, 30.603424, 41.728127>,  <43.886921, 30.629959, 42.026833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151627, 30.603424, 41.728127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561725, 0.615807, -0.552491,
		0.496516, 0.785099, 0.370257,
		0.661768, -0.066338, -0.746768,
		44.350159, 30.583523, 41.504097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916039, 31.289413, 41.689491>,  <43.886921, 30.629959, 42.026833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916039, 31.289413, 41.689491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037884, 31.046453, 41.396023>,  <44.110992, 30.900677, 41.219940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037884, 31.046453, 41.396023>,  <43.916039, 31.289413, 41.689491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037884, 31.046453, 41.396023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679278, 0.401423, -0.614362,
		0.667677, 0.685511, -0.290314,
		0.304613, -0.607400, -0.733674,
		44.129269, 30.864233, 41.175922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869450, 31.795664, 41.147938>,  <43.916039, 31.289413, 41.689491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869450, 31.795664, 41.147938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898277, 31.420847, 41.011257>,  <43.915573, 31.195957, 40.929249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898277, 31.420847, 41.011257>,  <43.869450, 31.795664, 41.147938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898277, 31.420847, 41.011257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521914, 0.256515, -0.813514,
		0.849948, 0.236969, -0.470568,
		0.072070, -0.937041, -0.341702,
		43.919899, 31.139734, 40.908745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249443, 31.773079, 40.475281>,  <43.869450, 31.795664, 41.147938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249443, 31.773079, 40.475281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003696, 31.457994, 40.493458>,  <43.856247, 31.268944, 40.504364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003696, 31.457994, 40.493458>,  <44.249443, 31.773079, 40.475281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003696, 31.457994, 40.493458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342420, 0.214289, -0.914783,
		0.710848, -0.577572, -0.401380,
		-0.614365, -0.787712, 0.045445,
		43.819386, 31.221682, 40.507092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236385, 31.494320, 39.810215>,  <44.249443, 31.773079, 40.475281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236385, 31.494320, 39.810215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903820, 31.354578, 39.983051>,  <43.704281, 31.270733, 40.086754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903820, 31.354578, 39.983051>,  <44.236385, 31.494320, 39.810215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903820, 31.354578, 39.983051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499030, 0.127451, -0.857161,
		0.244389, -0.928280, -0.280306,
		-0.831410, -0.349361, 0.432092,
		43.654396, 31.249771, 40.112679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872101, 31.248625, 39.233124>,  <44.236385, 31.494320, 39.810215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872101, 31.248625, 39.233124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591843, 31.220106, 39.517101>,  <43.423687, 31.202995, 39.687489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591843, 31.220106, 39.517101>,  <43.872101, 31.248625, 39.233124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591843, 31.220106, 39.517101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713135, 0.037674, -0.700014,
		0.023165, -0.996743, -0.077243,
		-0.700644, -0.071300, 0.709939,
		43.381649, 31.198717, 39.730083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582340, 30.520521, 39.227055>,  <43.872101, 31.248625, 39.233124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582340, 30.520521, 39.227055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360138, 30.676287, 39.520931>,  <43.226818, 30.769745, 39.697258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360138, 30.676287, 39.520931>,  <43.582340, 30.520521, 39.227055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360138, 30.676287, 39.520931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733192, 0.187387, -0.653694,
		-0.392228, -0.901801, 0.181419,
		-0.555506, 0.389412, 0.734691,
		43.193485, 30.793110, 39.741337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016979, 30.133995, 39.137695>,  <43.582340, 30.520521, 39.227055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016979, 30.133995, 39.137695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903030, 30.464909, 39.331375>,  <42.834660, 30.663458, 39.447582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903030, 30.464909, 39.331375>,  <43.016979, 30.133995, 39.137695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903030, 30.464909, 39.331375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767767, 0.105507, -0.631983,
		-0.573916, -0.551786, 0.605106,
		-0.284877, 0.827285, 0.484195,
		42.817566, 30.713095, 39.476635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252449, 30.195148, 39.060108>,  <43.016979, 30.133995, 39.137695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252449, 30.195148, 39.060108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306320, 30.560715, 39.213272>,  <42.338642, 30.780054, 39.305172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306320, 30.560715, 39.213272>,  <42.252449, 30.195148, 39.060108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306320, 30.560715, 39.213272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724733, 0.354382, -0.590911,
		-0.675739, -0.197923, 0.710073,
		0.134682, 0.913915, 0.382911,
		42.346725, 30.834888, 39.328144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526592, 30.432730, 39.423008>,  <42.252449, 30.195148, 39.060108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526592, 30.432730, 39.423008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763977, 30.724812, 39.287594>,  <41.906406, 30.900061, 39.206345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763977, 30.724812, 39.287594>,  <41.526592, 30.432730, 39.423008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763977, 30.724812, 39.287594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767598, 0.386989, -0.510914,
		-0.242063, 0.563066, 0.790166,
		0.593463, 0.730203, -0.338532,
		41.942017, 30.943872, 39.186035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219460, 31.074684, 39.678753>,  <41.526592, 30.432730, 39.423008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219460, 31.074684, 39.678753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440094, 31.130857, 39.349869>,  <41.572475, 31.164562, 39.152538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440094, 31.130857, 39.349869>,  <41.219460, 31.074684, 39.678753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440094, 31.130857, 39.349869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799122, 0.371492, -0.472649,
		0.239067, 0.917754, 0.317136,
		0.551589, 0.140436, -0.822209,
		41.605572, 31.172989, 39.103207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877888, 31.621538, 39.419464>,  <41.219460, 31.074684, 39.678753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877888, 31.621538, 39.419464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105747, 31.526781, 39.104660>,  <41.242462, 31.469927, 38.915779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105747, 31.526781, 39.104660>,  <40.877888, 31.621538, 39.419464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105747, 31.526781, 39.104660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730941, 0.291821, -0.616900,
		0.375806, 0.926673, -0.006921,
		0.569645, -0.236893, -0.787011,
		41.276642, 31.455713, 38.868557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705536, 32.144417, 38.929821>,  <40.877888, 31.621538, 39.419464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705536, 32.144417, 38.929821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900982, 31.899433, 38.681259>,  <41.018250, 31.752443, 38.532120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900982, 31.899433, 38.681259>,  <40.705536, 32.144417, 38.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900982, 31.899433, 38.681259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570618, 0.314471, -0.758619,
		0.660040, 0.725258, -0.195827,
		0.488612, -0.612461, -0.621409,
		41.047565, 31.715694, 38.494835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870399, 32.564125, 38.456776>,  <40.705536, 32.144417, 38.929821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870399, 32.564125, 38.456776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935680, 32.210335, 38.281929>,  <40.974850, 31.998060, 38.177021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935680, 32.210335, 38.281929>,  <40.870399, 32.564125, 38.456776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935680, 32.210335, 38.281929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294438, 0.379198, -0.877220,
		0.941633, 0.271865, -0.198538,
		0.163200, -0.884476, -0.437113,
		40.984642, 31.944992, 38.150795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389473, 32.631458, 37.889523>,  <40.870399, 32.564125, 38.456776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389473, 32.631458, 37.889523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162457, 32.312004, 37.809444>,  <41.026249, 32.120331, 37.761398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162457, 32.312004, 37.809444>,  <41.389473, 32.631458, 37.889523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162457, 32.312004, 37.809444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167067, 0.349792, -0.921810,
		0.806219, -0.489716, -0.331946,
		-0.567537, -0.798639, -0.200193,
		40.992195, 32.072411, 37.749386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467854, 32.674038, 37.147068>,  <41.389473, 32.631458, 37.889523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467854, 32.674038, 37.147068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188583, 32.391640, 37.194603>,  <41.021023, 32.222202, 37.223122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188583, 32.391640, 37.194603>,  <41.467854, 32.674038, 37.147068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188583, 32.391640, 37.194603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327196, 0.167021, -0.930079,
		0.636784, -0.688240, -0.347609,
		-0.698175, -0.705995, 0.118833,
		40.979130, 32.179840, 37.230251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600086, 32.066719, 36.668236>,  <41.467854, 32.674038, 37.147068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600086, 32.066719, 36.668236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219055, 32.120781, 36.777287>,  <40.990437, 32.153217, 36.842716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219055, 32.120781, 36.777287>,  <41.600086, 32.066719, 36.668236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219055, 32.120781, 36.777287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286290, -0.094466, -0.953475,
		-0.103136, -0.986308, 0.128686,
		-0.952576, 0.135179, 0.272627,
		40.933281, 32.161327, 36.859077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227947, 31.762981, 36.144718>,  <41.600086, 32.066719, 36.668236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227947, 31.762981, 36.144718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946480, 31.980766, 36.327324>,  <40.777599, 32.111435, 36.436890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946480, 31.980766, 36.327324>,  <41.227947, 31.762981, 36.144718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946480, 31.980766, 36.327324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409106, 0.214849, -0.886833,
		-0.580927, -0.810804, 0.071559,
		-0.703673, 0.544460, 0.456517,
		40.735378, 32.144104, 36.464279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649796, 31.533991, 35.729446>,  <41.227947, 31.762981, 36.144718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649796, 31.533991, 35.729446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551407, 31.865997, 35.929672>,  <40.492374, 32.065201, 36.049809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551407, 31.865997, 35.929672>,  <40.649796, 31.533991, 35.729446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551407, 31.865997, 35.929672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471906, 0.348543, -0.809828,
		-0.846641, -0.435420, 0.305956,
		-0.245976, 0.830016, 0.500568,
		40.477615, 32.115002, 36.079842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392365, 31.298500, 35.378654>,  <40.649796, 31.533991, 35.729446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392365, 31.298500, 35.378654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036514, 31.271313, 35.198013>,  <40.823006, 31.255001, 35.089630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036514, 31.271313, 35.198013>,  <41.392365, 31.298500, 35.378654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036514, 31.271313, 35.198013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404430, 0.342090, -0.848181,
		0.212138, -0.937206, -0.276844,
		-0.889626, -0.067968, -0.451605,
		40.769627, 31.250923, 35.062531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010506, 31.611794, 35.696873>,  <41.392365, 31.298500, 35.378654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010506, 31.611794, 35.696873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132175, 31.300200, 35.477543>,  <42.205177, 31.113243, 35.345947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132175, 31.300200, 35.477543>,  <42.010506, 31.611794, 35.696873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132175, 31.300200, 35.477543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372638, 0.627030, -0.684086,
		0.876708, 0.003758, 0.481008,
		0.304177, -0.778986, -0.548322,
		42.223427, 31.066504, 35.313046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807613, 31.358761, 35.653206>,  <42.010506, 31.611794, 35.696873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807613, 31.358761, 35.653206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609013, 31.309233, 35.309540>,  <42.489853, 31.279516, 35.103340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609013, 31.309233, 35.309540>,  <42.807613, 31.358761, 35.653206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609013, 31.309233, 35.309540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644136, 0.610924, -0.460283,
		0.581874, -0.781947, -0.223568,
		-0.496500, -0.123818, -0.859161,
		42.460064, 31.272087, 35.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934658, 30.645325, 35.844208>,  <42.807613, 31.358761, 35.653206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934658, 30.645325, 35.844208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242718, 30.470022, 35.658817>,  <43.427551, 30.364840, 35.547585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242718, 30.470022, 35.658817>,  <42.934658, 30.645325, 35.844208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242718, 30.470022, 35.658817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320239, 0.894042, -0.313267,
		0.551655, 0.092839, 0.828889,
		0.770145, -0.438258, -0.463472,
		43.473763, 30.338545, 35.519775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399460, 31.111589, 36.008904>,  <42.934658, 30.645325, 35.844208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399460, 31.111589, 36.008904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574375, 30.926291, 35.700573>,  <43.679325, 30.815111, 35.515575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574375, 30.926291, 35.700573>,  <43.399460, 31.111589, 36.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574375, 30.926291, 35.700573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251267, 0.885925, -0.389874,
		0.863504, -0.023194, 0.503808,
		0.437293, -0.463248, -0.770828,
		43.705563, 30.787315, 35.469326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160622, 31.058308, 36.166691>,  <43.399460, 31.111589, 36.008904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160622, 31.058308, 36.166691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053509, 31.074446, 35.781639>,  <43.989239, 31.084129, 35.550606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053509, 31.074446, 35.781639>,  <44.160622, 31.058308, 36.166691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053509, 31.074446, 35.781639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266934, 0.963119, -0.033888,
		0.925763, -0.266034, -0.268680,
		-0.267786, 0.040347, -0.962633,
		43.973171, 31.086550, 35.492847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711964, 31.408939, 35.750557>,  <44.160622, 31.058308, 36.166691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711964, 31.408939, 35.750557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397015, 31.421444, 35.504284>,  <44.208046, 31.428946, 35.356522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397015, 31.421444, 35.504284>,  <44.711964, 31.408939, 35.750557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397015, 31.421444, 35.504284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139508, 0.981840, -0.128562,
		0.600481, -0.187119, -0.777438,
		-0.787376, 0.031259, -0.615680,
		44.160801, 31.430822, 35.319580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819424, 32.045448, 35.635269>,  <44.711964, 31.408939, 35.750557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819424, 32.045448, 35.635269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466881, 31.961329, 35.466042>,  <44.255356, 31.910856, 35.364506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466881, 31.961329, 35.466042>,  <44.819424, 32.045448, 35.635269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466881, 31.961329, 35.466042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192652, 0.977612, -0.084621,
		0.431392, 0.006924, -0.902138,
		-0.881355, -0.210303, -0.423068,
		44.202473, 31.898237, 35.339123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826565, 32.367249, 34.932247>,  <44.819424, 32.045448, 35.635269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826565, 32.367249, 34.932247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477840, 32.370895, 35.128151>,  <44.268604, 32.373081, 35.245693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477840, 32.370895, 35.128151>,  <44.826565, 32.367249, 34.932247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477840, 32.370895, 35.128151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032828, 0.996492, -0.076983,
		-0.488741, -0.083193, -0.868454,
		-0.871811, 0.009115, 0.489757,
		44.216297, 32.373631, 35.275078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211735, 32.721195, 34.623772>,  <44.826565, 32.367249, 34.932247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211735, 32.721195, 34.623772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259003, 32.760010, 35.019070>,  <44.287365, 32.783298, 35.256248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259003, 32.760010, 35.019070>,  <44.211735, 32.721195, 34.623772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259003, 32.760010, 35.019070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069110, 0.993604, -0.089301,
		-0.990585, -0.057744, 0.124121,
		0.118171, 0.097039, 0.988241,
		44.294453, 32.789120, 35.315540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780827, 33.179256, 34.866203>,  <44.211735, 32.721195, 34.623772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780827, 33.179256, 34.866203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723949, 33.230045, 35.258869>,  <44.689823, 33.260517, 35.494469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723949, 33.230045, 35.258869>,  <44.780827, 33.179256, 34.866203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723949, 33.230045, 35.258869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961945, 0.251506, 0.106804,
		-0.233333, 0.959491, -0.157900,
		-0.142190, 0.126970, 0.981662,
		44.681293, 33.268135, 35.553368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974056, 33.874779, 34.996857>,  <44.780827, 33.179256, 34.866203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974056, 33.874779, 34.996857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020988, 33.681728, 35.344028>,  <45.049149, 33.565899, 35.552334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020988, 33.681728, 35.344028>,  <44.974056, 33.874779, 34.996857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020988, 33.681728, 35.344028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880322, 0.455049, 0.134030,
		-0.459638, 0.748334, 0.478256,
		0.117331, -0.482624, 0.867933,
		45.056187, 33.536942, 35.604408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954819, 34.489857, 34.498016>,  <44.974056, 33.874779, 34.996857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954819, 34.489857, 34.498016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643730, 34.726673, 34.413509>,  <44.457077, 34.868763, 34.362804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643730, 34.726673, 34.413509>,  <44.954819, 34.489857, 34.498016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643730, 34.726673, 34.413509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372161, 0.162794, -0.913780,
		-0.506603, -0.789293, -0.346943,
		-0.777721, 0.592042, -0.211272,
		44.410416, 34.904285, 34.350128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984123, 33.905029, 33.908535>,  <44.954819, 34.489857, 34.498016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984123, 33.905029, 33.908535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991959, 33.569130, 33.691486>,  <44.996662, 33.367592, 33.561256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991959, 33.569130, 33.691486>,  <44.984123, 33.905029, 33.908535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991959, 33.569130, 33.691486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890034, 0.261894, -0.373165,
		0.455474, -0.475638, 0.752537,
		0.019593, -0.839750, -0.542620,
		44.997837, 33.317204, 33.528702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814274, 34.454334, 33.329182>,  <44.984123, 33.905029, 33.908535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814274, 34.454334, 33.329182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143661, 34.379890, 33.543568>,  <45.341293, 34.335224, 33.672199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143661, 34.379890, 33.543568>,  <44.814274, 34.454334, 33.329182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143661, 34.379890, 33.543568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446415, 0.795566, -0.409621,
		-0.350162, 0.576574, 0.738207,
		0.823468, -0.186113, 0.535969,
		45.390701, 34.324055, 33.704357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967091, 35.154293, 33.657654>,  <44.814274, 34.454334, 33.329182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967091, 35.154293, 33.657654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289459, 34.917515, 33.653721>,  <45.482880, 34.775448, 33.651363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289459, 34.917515, 33.653721>,  <44.967091, 35.154293, 33.657654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289459, 34.917515, 33.653721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572719, 0.783736, -0.240313,
		0.149954, 0.188045, 0.970646,
		0.805920, -0.591943, -0.009828,
		45.531235, 34.739933, 33.650772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487572, 35.473541, 34.037880>,  <44.967091, 35.154293, 33.657654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487572, 35.473541, 34.037880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.687675, 35.206387, 33.817455>,  <45.807739, 35.046093, 33.685200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.687675, 35.206387, 33.817455>,  <45.487572, 35.473541, 34.037880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.687675, 35.206387, 33.817455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697151, 0.688130, -0.201140,
		0.513538, -0.283548, 0.809864,
		0.500258, -0.667891, -0.551057,
		45.837753, 35.006020, 33.652138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226887, 35.265312, 34.298367>,  <45.487572, 35.473541, 34.037880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226887, 35.265312, 34.298367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146732, 35.292519, 33.907425>,  <46.098640, 35.308842, 33.672859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146732, 35.292519, 33.907425>,  <46.226887, 35.265312, 34.298367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146732, 35.292519, 33.907425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696799, 0.711163, -0.093373,
		0.688707, -0.699730, -0.189898,
		-0.200384, 0.068014, -0.977354,
		46.086617, 35.312923, 33.614220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777184, 34.989609, 34.640190>,  <46.226887, 35.265312, 34.298367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777184, 34.989609, 34.640190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139221, 35.081020, 34.496758>,  <47.356441, 35.135868, 34.410698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139221, 35.081020, 34.496758>,  <46.777184, 34.989609, 34.640190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.139221, 35.081020, 34.496758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277162, 0.322474, 0.905092,
		0.322473, -0.918578, 0.228529,
		-0.905092, -0.228529, 0.358584,
		47.410748, 35.149578, 34.389183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.257458, 34.737469, 35.103821>,  <46.777184, 34.989609, 34.640190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.257458, 34.737469, 35.103821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431099, 35.034279, 34.899490>,  <47.535286, 35.212364, 34.776894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431099, 35.034279, 34.899490>,  <47.257458, 34.737469, 35.103821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431099, 35.034279, 34.899490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447495, 0.314515, 0.837155,
		0.781856, -0.592007, -0.195522,
		0.434107, 0.742030, -0.510826,
		47.561333, 35.256889, 34.746243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.039494, 34.766190, 35.109745>,  <47.257458, 34.737469, 35.103821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.039494, 34.766190, 35.109745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865139, 35.126163, 35.105450>,  <47.760525, 35.342148, 35.102871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865139, 35.126163, 35.105450>,  <48.039494, 34.766190, 35.109745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.865139, 35.126163, 35.105450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381603, 0.195612, 0.903391,
		0.815096, 0.389678, -0.428683,
		-0.435887, 0.899937, -0.010740,
		47.734371, 35.396145, 35.102226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.995102, 30.322954, 27.638706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643276, 30.513258, 27.636812>,  <36.432182, 30.627441, 27.635675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643276, 30.513258, 27.636812>,  <36.995102, 30.322954, 27.638706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643276, 30.513258, 27.636812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013903, 0.035645, 0.999268,
		0.475581, 0.878852, -0.037966,
		-0.879562, 0.475760, -0.004733,
		36.379406, 30.655987, 27.635391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975830, 30.878860, 28.134048>,  <36.995102, 30.322954, 27.638706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975830, 30.878860, 28.134048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581528, 30.830294, 28.087498>,  <36.344948, 30.801153, 28.059566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581528, 30.830294, 28.087498>,  <36.975830, 30.878860, 28.134048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581528, 30.830294, 28.087498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129421, 0.105739, 0.985936,
		-0.107403, 0.986953, -0.119947,
		-0.985756, -0.121416, -0.116376,
		36.285801, 30.793869, 28.052586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586544, 31.411987, 28.477875>,  <36.975830, 30.878860, 28.134048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586544, 31.411987, 28.477875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335510, 31.100859, 28.464411>,  <36.184891, 30.914181, 28.456331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335510, 31.100859, 28.464411>,  <36.586544, 31.411987, 28.477875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335510, 31.100859, 28.464411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128395, 0.060756, 0.989860,
		-0.767891, 0.625540, -0.137998,
		-0.627581, -0.777823, -0.033662,
		36.147236, 30.867512, 28.454311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059402, 31.696320, 28.904800>,  <36.586544, 31.411987, 28.477875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059402, 31.696320, 28.904800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954330, 31.312197, 28.867262>,  <35.891289, 31.081722, 28.844738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954330, 31.312197, 28.867262>,  <36.059402, 31.696320, 28.904800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954330, 31.312197, 28.867262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186106, -0.045010, 0.981498,
		-0.946765, 0.275286, -0.166896,
		-0.262680, -0.960308, -0.093846,
		35.875526, 31.024105, 28.839108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418404, 31.622980, 29.309437>,  <36.059402, 31.696320, 28.904800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418404, 31.622980, 29.309437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586216, 31.260803, 29.283594>,  <35.686901, 31.043497, 29.268089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586216, 31.260803, 29.283594>,  <35.418404, 31.622980, 29.309437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586216, 31.260803, 29.283594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046933, -0.092712, 0.994586,
		-0.906528, -0.414225, -0.081391,
		0.419528, -0.905440, -0.064605,
		35.712074, 30.989172, 29.264214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974262, 31.131321, 29.744854>,  <35.418404, 31.622980, 29.309437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974262, 31.131321, 29.744854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354618, 31.011848, 29.712379>,  <35.582832, 30.940165, 29.692894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354618, 31.011848, 29.712379>,  <34.974262, 31.131321, 29.744854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354618, 31.011848, 29.712379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066835, -0.057969, 0.996079,
		-0.302217, -0.952590, -0.035160,
		0.950893, -0.298682, -0.081186,
		35.639885, 30.922245, 29.688025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044540, 30.549860, 30.170475>,  <34.974262, 31.131321, 29.744854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044540, 30.549860, 30.170475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.429790, 30.650764, 30.133036>,  <35.660938, 30.711308, 30.110573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.429790, 30.650764, 30.133036>,  <35.044540, 30.549860, 30.170475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429790, 30.650764, 30.133036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100699, -0.015352, 0.994799,
		0.249512, -0.967538, -0.040188,
		0.963122, 0.252261, -0.093599,
		35.718727, 30.726442, 30.104956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345428, 30.175694, 30.610569>,  <35.044540, 30.549860, 30.170475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345428, 30.175694, 30.610569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587292, 30.483368, 30.527878>,  <35.732410, 30.667973, 30.478264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587292, 30.483368, 30.527878>,  <35.345428, 30.175694, 30.610569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587292, 30.483368, 30.527878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152809, 0.142696, 0.977899,
		0.781686, -0.622889, -0.031256,
		0.604662, 0.769187, -0.206726,
		35.768692, 30.714125, 30.465860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787945, 30.050110, 31.198725>,  <35.345428, 30.175694, 30.610569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787945, 30.050110, 31.198725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898384, 30.411165, 31.066654>,  <35.964645, 30.627798, 30.987411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898384, 30.411165, 31.066654>,  <35.787945, 30.050110, 31.198725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898384, 30.411165, 31.066654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164632, 0.294038, 0.941508,
		0.946925, -0.314305, -0.067420,
		0.276096, 0.902637, -0.330177,
		35.981213, 30.681957, 30.967602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273830, 30.273304, 31.651371>,  <35.787945, 30.050110, 31.198725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273830, 30.273304, 31.651371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156132, 30.620420, 31.491192>,  <36.085514, 30.828690, 31.395084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156132, 30.620420, 31.491192>,  <36.273830, 30.273304, 31.651371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156132, 30.620420, 31.491192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107867, 0.446474, 0.888271,
		0.949623, 0.218176, -0.224980,
		-0.294247, 0.867791, -0.400447,
		36.067856, 30.880758, 31.371058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801228, 30.709936, 31.852167>,  <36.273830, 30.273304, 31.651371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801228, 30.709936, 31.852167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461765, 30.905361, 31.771078>,  <36.258087, 31.022615, 31.722424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461765, 30.905361, 31.771078>,  <36.801228, 30.709936, 31.852167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461765, 30.905361, 31.771078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086349, 0.506077, 0.858155,
		0.521856, 0.710770, -0.471670,
		-0.848652, 0.488561, -0.202725,
		36.207169, 31.051929, 31.710260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984779, 31.388851, 31.857422>,  <36.801228, 30.709936, 31.852167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984779, 31.388851, 31.857422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593044, 31.367041, 31.935324>,  <36.358006, 31.353954, 31.982065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593044, 31.367041, 31.935324>,  <36.984779, 31.388851, 31.857422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593044, 31.367041, 31.935324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144233, 0.486732, 0.861562,
		-0.141769, 0.871848, -0.468810,
		-0.979336, -0.054525, 0.194753,
		36.299244, 31.350683, 31.993750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893261, 32.011810, 32.230656>,  <36.984779, 31.388851, 31.857422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893261, 32.011810, 32.230656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576233, 31.790634, 32.333485>,  <36.386017, 31.657928, 32.395184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576233, 31.790634, 32.333485>,  <36.893261, 32.011810, 32.230656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576233, 31.790634, 32.333485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127928, 0.562977, 0.816512,
		-0.596211, 0.614256, -0.516935,
		-0.792570, -0.552944, 0.257073,
		36.338463, 31.624750, 32.410606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449066, 32.468342, 32.508266>,  <36.893261, 32.011810, 32.230656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449066, 32.468342, 32.508266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356731, 32.103817, 32.644630>,  <36.301331, 31.885101, 32.726448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356731, 32.103817, 32.644630>,  <36.449066, 32.468342, 32.508266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356731, 32.103817, 32.644630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207547, 0.388427, 0.897802,
		-0.950600, 0.136488, -0.278803,
		-0.230833, -0.911315, 0.340911,
		36.287483, 31.830421, 32.746902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938343, 32.566673, 32.929768>,  <36.449066, 32.468342, 32.508266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938343, 32.566673, 32.929768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104923, 32.215088, 33.022709>,  <36.204872, 32.004135, 33.078472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104923, 32.215088, 33.022709>,  <35.938343, 32.566673, 32.929768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104923, 32.215088, 33.022709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099137, 0.210141, 0.972632,
		-0.903737, -0.428087, 0.000375,
		0.416450, -0.878967, 0.232351,
		36.229858, 31.951399, 33.092415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629025, 32.454624, 33.572281>,  <35.938343, 32.566673, 32.929768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629025, 32.454624, 33.572281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928440, 32.189934, 33.555218>,  <36.108089, 32.031120, 33.544979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928440, 32.189934, 33.555218>,  <35.629025, 32.454624, 33.572281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928440, 32.189934, 33.555218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031725, -0.028520, 0.999090,
		-0.662337, -0.749206, -0.000356,
		0.748534, -0.661723, -0.042658,
		36.153000, 31.991417, 33.542419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583122, 32.081966, 34.281368>,  <35.629025, 32.454624, 33.572281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583122, 32.081966, 34.281368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955276, 32.037613, 34.141598>,  <36.178570, 32.011002, 34.057735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955276, 32.037613, 34.141598>,  <35.583122, 32.081966, 34.281368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955276, 32.037613, 34.141598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355177, 0.036633, 0.934081,
		-0.090773, -0.993158, 0.073465,
		0.930381, -0.110882, -0.349421,
		36.234390, 32.004349, 34.036770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903614, 31.703918, 34.768291>,  <35.583122, 32.081966, 34.281368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903614, 31.703918, 34.768291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224041, 31.860167, 34.586868>,  <36.416298, 31.953917, 34.478016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224041, 31.860167, 34.586868>,  <35.903614, 31.703918, 34.768291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224041, 31.860167, 34.586868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498613, -0.016219, 0.866673,
		0.331186, -0.920408, -0.207762,
		0.801063, 0.390623, -0.453556,
		36.464359, 31.977354, 34.450802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392807, 31.334064, 35.052029>,  <35.903614, 31.703918, 34.768291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392807, 31.334064, 35.052029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597572, 31.645538, 34.906921>,  <36.720432, 31.832422, 34.819859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597572, 31.645538, 34.906921>,  <36.392807, 31.334064, 35.052029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597572, 31.645538, 34.906921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590669, -0.012435, 0.806818,
		0.623746, -0.627292, -0.466311,
		0.511909, 0.778685, -0.362765,
		36.751144, 31.879145, 34.798092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095673, 31.133272, 35.198627>,  <36.392807, 31.334064, 35.052029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095673, 31.133272, 35.198627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082863, 31.528822, 35.140526>,  <37.075176, 31.766151, 35.105663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082863, 31.528822, 35.140526>,  <37.095673, 31.133272, 35.198627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082863, 31.528822, 35.140526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458675, 0.143665, 0.876914,
		0.888027, -0.038544, -0.458173,
		-0.032024, 0.988875, -0.145258,
		37.073257, 31.825485, 35.096947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729633, 31.371044, 35.398499>,  <37.095673, 31.133272, 35.198627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729633, 31.371044, 35.398499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496788, 31.696211, 35.405579>,  <37.357082, 31.891310, 35.409828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496788, 31.696211, 35.405579>,  <37.729633, 31.371044, 35.398499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496788, 31.696211, 35.405579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450890, 0.304604, 0.838996,
		0.676640, 0.496373, -0.543850,
		-0.582114, 0.812915, 0.017703,
		37.322155, 31.940084, 35.410889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191628, 31.962646, 35.566010>,  <37.729633, 31.371044, 35.398499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191628, 31.962646, 35.566010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821381, 32.066975, 35.675705>,  <37.599232, 32.129570, 35.741520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821381, 32.066975, 35.675705>,  <38.191628, 31.962646, 35.566010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821381, 32.066975, 35.675705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338306, 0.245394, 0.908477,
		0.169654, 0.933678, -0.315378,
		-0.925617, 0.260821, 0.274236,
		37.543697, 32.145222, 35.757977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481903, 31.478056, 34.978230>,  <38.191628, 31.962646, 35.566010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481903, 31.478056, 34.978230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.748444, 31.220676, 35.128929>,  <38.908367, 31.066248, 35.219349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.748444, 31.220676, 35.128929>,  <38.481903, 31.478056, 34.978230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748444, 31.220676, 35.128929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000646, -0.505775, -0.862665,
		0.745634, 0.574598, -0.337441,
		0.666355, -0.643451, 0.376752,
		38.948349, 31.027641, 35.241955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154919, 31.422813, 34.660690>,  <38.481903, 31.478056, 34.978230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154919, 31.422813, 34.660690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.055893, 31.062246, 34.802765>,  <38.996479, 30.845905, 34.888008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.055893, 31.062246, 34.802765>,  <39.154919, 31.422813, 34.660690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055893, 31.062246, 34.802765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130843, -0.332136, -0.934112,
		0.959997, -0.277723, -0.035720,
		-0.247561, -0.901419, 0.355187,
		38.981625, 30.791821, 34.909321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550179, 30.886902, 34.366947>,  <39.154919, 31.422813, 34.660690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550179, 30.886902, 34.366947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213539, 30.697510, 34.470894>,  <39.011555, 30.583874, 34.533260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213539, 30.697510, 34.470894>,  <39.550179, 30.886902, 34.366947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213539, 30.697510, 34.470894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059724, -0.396608, -0.916043,
		0.536794, -0.786460, 0.305506,
		-0.841597, -0.473480, 0.259867,
		38.961060, 30.555466, 34.548855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602276, 30.397560, 33.899723>,  <39.550179, 30.886902, 34.366947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602276, 30.397560, 33.899723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244987, 30.313633, 34.058792>,  <39.030617, 30.263277, 34.154232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244987, 30.313633, 34.058792>,  <39.602276, 30.397560, 33.899723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244987, 30.313633, 34.058792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277300, -0.439148, -0.854549,
		0.353935, -0.873571, 0.334072,
		-0.893216, -0.209817, 0.397671,
		38.977024, 30.250689, 34.178093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519333, 29.670471, 33.812561>,  <39.602276, 30.397560, 33.899723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519333, 29.670471, 33.812561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.157970, 29.838438, 33.847260>,  <38.941151, 29.939219, 33.868076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.157970, 29.838438, 33.847260>,  <39.519333, 29.670471, 33.812561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157970, 29.838438, 33.847260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294856, -0.461517, -0.836697,
		-0.311306, -0.781457, 0.540752,
		-0.903409, 0.419913, 0.086744,
		38.886948, 29.964413, 33.873283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101822, 29.065189, 33.694901>,  <39.519333, 29.670471, 33.812561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101822, 29.065189, 33.694901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923359, 29.416611, 33.626678>,  <38.816280, 29.627462, 33.585743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923359, 29.416611, 33.626678>,  <39.101822, 29.065189, 33.694901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923359, 29.416611, 33.626678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336824, -0.341404, -0.877493,
		-0.829152, -0.334053, 0.448237,
		-0.446158, 0.878551, -0.170558,
		38.789513, 29.680176, 33.575512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433437, 28.890764, 33.478767>,  <39.101822, 29.065189, 33.694901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433437, 28.890764, 33.478767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477188, 29.265181, 33.344982>,  <38.503437, 29.489830, 33.264709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477188, 29.265181, 33.344982>,  <38.433437, 28.890764, 33.478767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477188, 29.265181, 33.344982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404106, -0.265550, -0.875318,
		-0.908149, 0.230900, 0.349213,
		0.109377, 0.936039, -0.334467,
		38.510002, 29.545992, 33.244640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870583, 28.857504, 33.020721>,  <38.433437, 28.890764, 33.478767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870583, 28.857504, 33.020721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.114872, 29.159454, 32.925076>,  <38.261448, 29.340626, 32.867687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.114872, 29.159454, 32.925076>,  <37.870583, 28.857504, 33.020721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114872, 29.159454, 32.925076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215883, -0.131798, -0.967483,
		-0.761846, 0.642487, 0.082473,
		0.610725, 0.754878, -0.239112,
		38.298088, 29.385918, 32.853340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469917, 29.211821, 32.517986>,  <37.870583, 28.857504, 33.020721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469917, 29.211821, 32.517986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837051, 29.361982, 32.466370>,  <38.057331, 29.452080, 32.435398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837051, 29.361982, 32.466370>,  <37.469917, 29.211821, 32.517986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837051, 29.361982, 32.466370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138262, -0.002408, -0.990393,
		-0.372109, 0.926858, 0.049693,
		0.917834, 0.375404, -0.129045,
		38.112400, 29.474604, 32.427654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397747, 29.716963, 32.046787>,  <37.469917, 29.211821, 32.517986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397747, 29.716963, 32.046787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789635, 29.642006, 32.018425>,  <38.024769, 29.597033, 32.001408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789635, 29.642006, 32.018425>,  <37.397747, 29.716963, 32.046787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789635, 29.642006, 32.018425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062863, 0.048506, -0.996843,
		0.190240, 0.981087, 0.035742,
		0.979723, -0.187393, -0.070902,
		38.083553, 29.585789, 31.997154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615101, 30.229813, 31.555956>,  <37.397747, 29.716963, 32.046787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615101, 30.229813, 31.555956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907841, 29.957294, 31.549818>,  <38.083485, 29.793783, 31.546135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907841, 29.957294, 31.549818>,  <37.615101, 30.229813, 31.555956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907841, 29.957294, 31.549818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030912, 0.055684, -0.997970,
		0.680767, 0.729887, 0.061813,
		0.731847, -0.681296, -0.015345,
		38.127396, 29.752905, 31.545214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198853, 30.589029, 31.102383>,  <37.615101, 30.229813, 31.555956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198853, 30.589029, 31.102383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271591, 30.196236, 31.122921>,  <38.315235, 29.960560, 31.135244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271591, 30.196236, 31.122921>,  <38.198853, 30.589029, 31.102383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271591, 30.196236, 31.122921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217746, -0.010708, -0.975947,
		0.958915, 0.188657, 0.211876,
		0.181850, -0.981985, 0.051347,
		38.326145, 29.901640, 31.138325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966251, 30.513725, 30.994600>,  <38.198853, 30.589029, 31.102383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966251, 30.513725, 30.994600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750679, 30.191635, 30.895674>,  <38.621334, 29.998381, 30.836317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750679, 30.191635, 30.895674>,  <38.966251, 30.513725, 30.994600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750679, 30.191635, 30.895674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235072, 0.138171, -0.962107,
		0.808886, -0.576645, 0.114822,
		-0.538930, -0.805226, -0.247318,
		38.589001, 29.950068, 30.821478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383545, 30.082678, 30.581062>,  <38.966251, 30.513725, 30.994600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383545, 30.082678, 30.581062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999504, 30.002972, 30.502573>,  <38.769081, 29.955147, 30.455479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999504, 30.002972, 30.502573>,  <39.383545, 30.082678, 30.581062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999504, 30.002972, 30.502573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184053, 0.078057, -0.979812,
		0.210562, -0.976831, -0.038267,
		-0.960098, -0.199268, -0.196224,
		38.711475, 29.943192, 30.443707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585423, 29.710094, 30.037291>,  <39.383545, 30.082678, 30.581062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585423, 29.710094, 30.037291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186398, 29.727509, 30.015484>,  <38.946983, 29.737957, 30.002399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186398, 29.727509, 30.015484>,  <39.585423, 29.710094, 30.037291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186398, 29.727509, 30.015484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044749, -0.200251, -0.978722,
		-0.053524, -0.978777, 0.197815,
		-0.997563, 0.043533, -0.054517,
		38.887127, 29.740568, 29.999128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361149, 29.086493, 29.668779>,  <39.585423, 29.710094, 30.037291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361149, 29.086493, 29.668779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088203, 29.375912, 29.627102>,  <38.924435, 29.549562, 29.602097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088203, 29.375912, 29.627102>,  <39.361149, 29.086493, 29.668779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088203, 29.375912, 29.627102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092032, -0.056365, -0.994159,
		-0.725195, -0.687968, -0.028128,
		-0.682365, 0.723549, -0.104191,
		38.883495, 29.592976, 29.595844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040211, 28.795563, 29.197506>,  <39.361149, 29.086493, 29.668779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040211, 28.795563, 29.197506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926651, 29.179001, 29.188570>,  <38.858517, 29.409063, 29.183208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926651, 29.179001, 29.188570>,  <39.040211, 28.795563, 29.197506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926651, 29.179001, 29.188570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100937, 0.006706, -0.994870,
		-0.953528, -0.284695, -0.098662,
		-0.283896, 0.958595, -0.022342,
		38.841480, 29.466579, 29.181868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617298, 28.743942, 28.714111>,  <39.040211, 28.795563, 29.197506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617298, 28.743942, 28.714111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715172, 29.131348, 28.732494>,  <38.773895, 29.363791, 28.743525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715172, 29.131348, 28.732494>,  <38.617298, 28.743942, 28.714111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715172, 29.131348, 28.732494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106344, 0.020308, -0.994122,
		-0.963753, 0.248134, -0.098026,
		0.244685, 0.968513, 0.045959,
		38.788578, 29.421902, 28.746283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.021339, 29.154058, 28.302000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.314812, 29.421574, 28.350056>,  <38.490894, 29.582083, 28.378889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.314812, 29.421574, 28.350056>,  <38.021339, 29.154058, 28.302000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314812, 29.421574, 28.350056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086679, 0.267479, -0.959657,
		-0.673939, 0.693672, 0.254215,
		0.733684, 0.668786, 0.120138,
		38.534916, 29.622210, 28.386097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800751, 29.814604, 27.956427>,  <38.021339, 29.154058, 28.302000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800751, 29.814604, 27.956427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.199600, 29.815111, 27.986715>,  <38.438911, 29.815414, 28.004889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.199600, 29.815111, 27.986715>,  <37.800751, 29.814604, 27.956427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199600, 29.815111, 27.986715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070452, 0.351241, -0.933631,
		-0.027780, 0.936284, 0.350143,
		0.997128, 0.001267, 0.075721,
		38.498737, 29.815491, 28.009432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048553, 30.496977, 27.882595>,  <37.800751, 29.814604, 27.956427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048553, 30.496977, 27.882595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322140, 30.237051, 27.749969>,  <38.486290, 30.081095, 27.670395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322140, 30.237051, 27.749969>,  <38.048553, 30.496977, 27.882595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322140, 30.237051, 27.749969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042118, 0.418566, -0.907209,
		0.728300, 0.634462, 0.258915,
		0.683962, -0.649816, -0.331564,
		38.527328, 30.042107, 27.650499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221024, 30.793032, 27.288450>,  <38.048553, 30.496977, 27.882595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221024, 30.793032, 27.288450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407436, 30.441999, 27.243427>,  <38.519283, 30.231380, 27.216413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407436, 30.441999, 27.243427>,  <38.221024, 30.793032, 27.288450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407436, 30.441999, 27.243427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057226, 0.156845, -0.985964,
		0.882917, 0.453047, 0.123315,
		0.466029, -0.877581, -0.112555,
		38.547245, 30.178724, 27.209661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727989, 31.071363, 26.921749>,  <38.221024, 30.793032, 27.288450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727989, 31.071363, 26.921749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701466, 30.675934, 26.867599>,  <38.685551, 30.438677, 26.835110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701466, 30.675934, 26.867599>,  <38.727989, 31.071363, 26.921749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701466, 30.675934, 26.867599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163156, 0.144590, -0.975947,
		0.984369, -0.042631, -0.170880,
		-0.066313, -0.988573, -0.135375,
		38.681572, 30.379362, 26.826986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123768, 30.895393, 26.356903>,  <38.727989, 31.071363, 26.921749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123768, 30.895393, 26.356903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881554, 30.578295, 26.384869>,  <38.736225, 30.388037, 26.401648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881554, 30.578295, 26.384869>,  <39.123768, 30.895393, 26.356903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881554, 30.578295, 26.384869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131071, 0.012695, -0.991292,
		0.784953, -0.609422, -0.111593,
		-0.605531, -0.792744, 0.069912,
		38.699894, 30.340471, 26.405842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384548, 30.311110, 25.838226>,  <39.123768, 30.895393, 26.356903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384548, 30.311110, 25.838226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998764, 30.231304, 25.907524>,  <38.767296, 30.183420, 25.949102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998764, 30.231304, 25.907524>,  <39.384548, 30.311110, 25.838226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998764, 30.231304, 25.907524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158147, -0.089391, -0.983361,
		0.211683, -0.975809, 0.054661,
		-0.964458, -0.199516, 0.173244,
		38.709427, 30.171450, 25.959497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243015, 29.763088, 25.420874>,  <39.384548, 30.311110, 25.838226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243015, 29.763088, 25.420874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870914, 29.884800, 25.502901>,  <38.647655, 29.957827, 25.552116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870914, 29.884800, 25.502901>,  <39.243015, 29.763088, 25.420874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870914, 29.884800, 25.502901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282971, -0.239102, -0.928847,
		-0.233565, -0.922097, 0.308519,
		-0.930255, 0.304248, 0.205081,
		38.591839, 29.976084, 25.564421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892700, 29.279041, 25.184137>,  <39.243015, 29.763088, 25.420874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892700, 29.279041, 25.184137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648960, 29.595892, 25.198181>,  <38.502716, 29.786001, 25.206608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648960, 29.595892, 25.198181>,  <38.892700, 29.279041, 25.184137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648960, 29.595892, 25.198181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238178, -0.140624, -0.960987,
		-0.756284, -0.593939, 0.274356,
		-0.609349, 0.792125, 0.035111,
		38.466156, 29.833529, 25.208715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293667, 28.988197, 24.938334>,  <38.892700, 29.279041, 25.184137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293667, 28.988197, 24.938334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220535, 29.379951, 24.903965>,  <38.176659, 29.615004, 24.883345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220535, 29.379951, 24.903965>,  <38.293667, 28.988197, 24.938334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220535, 29.379951, 24.903965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299961, -0.138793, -0.943801,
		-0.936269, -0.146777, 0.319152,
		-0.182825, 0.979384, -0.085920,
		38.165688, 29.673767, 24.878189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697723, 29.048149, 24.538441>,  <38.293667, 28.988197, 24.938334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697723, 29.048149, 24.538441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837460, 29.421835, 24.509596>,  <37.921303, 29.646048, 24.492289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837460, 29.421835, 24.509596>,  <37.697723, 29.048149, 24.538441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837460, 29.421835, 24.509596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232629, 0.011924, -0.972492,
		-0.907658, 0.356509, 0.221491,
		0.349343, 0.934216, -0.072112,
		37.942261, 29.702099, 24.487963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175381, 29.400749, 24.161760>,  <37.697723, 29.048149, 24.538441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175381, 29.400749, 24.161760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505524, 29.623383, 24.123816>,  <37.703609, 29.756964, 24.101048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505524, 29.623383, 24.123816>,  <37.175381, 29.400749, 24.161760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505524, 29.623383, 24.123816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187950, 0.112409, -0.975725,
		-0.532410, 0.823151, 0.197388,
		0.825357, 0.556585, -0.094864,
		37.753132, 29.790358, 24.095356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964569, 29.981752, 23.744884>,  <37.175381, 29.400749, 24.161760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964569, 29.981752, 23.744884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361877, 29.940928, 23.723019>,  <37.600262, 29.916433, 23.709898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361877, 29.940928, 23.723019>,  <36.964569, 29.981752, 23.744884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361877, 29.940928, 23.723019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043112, 0.112172, -0.992753,
		0.107453, 0.988434, 0.107018,
		0.993275, -0.102061, -0.054667,
		37.659859, 29.910309, 23.706619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237236, 30.599062, 23.466908>,  <36.964569, 29.981752, 23.744884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237236, 30.599062, 23.466908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525948, 30.328463, 23.408419>,  <37.699177, 30.166103, 23.373325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525948, 30.328463, 23.408419>,  <37.237236, 30.599062, 23.466908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525948, 30.328463, 23.408419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072183, 0.283692, -0.956195,
		0.688346, 0.679610, 0.253595,
		0.721782, -0.676498, -0.146222,
		37.742481, 30.125513, 23.364552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745724, 30.902042, 23.066570>,  <37.237236, 30.599062, 23.466908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745724, 30.902042, 23.066570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.835320, 30.518341, 22.997684>,  <37.889076, 30.288120, 22.956352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.835320, 30.518341, 22.997684>,  <37.745724, 30.902042, 23.066570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835320, 30.518341, 22.997684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266628, 0.230279, -0.935886,
		0.937411, 0.163709, 0.307344,
		0.223988, -0.959256, -0.172217,
		37.902515, 30.230564, 22.946020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315548, 30.990259, 22.653988>,  <37.745724, 30.902042, 23.066570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315548, 30.990259, 22.653988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215103, 30.609121, 22.585835>,  <38.154839, 30.380438, 22.544943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215103, 30.609121, 22.585835>,  <38.315548, 30.990259, 22.653988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215103, 30.609121, 22.585835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196900, 0.122059, -0.972796,
		0.947721, -0.277825, 0.156965,
		-0.251108, -0.952846, -0.170382,
		38.139771, 30.323267, 22.534719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808895, 30.631699, 22.260689>,  <38.315548, 30.990259, 22.653988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808895, 30.631699, 22.260689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469788, 30.431829, 22.189562>,  <38.266323, 30.311907, 22.146885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469788, 30.431829, 22.189562>,  <38.808895, 30.631699, 22.260689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469788, 30.431829, 22.189562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128169, 0.132320, -0.982886,
		0.514652, -0.856047, -0.048134,
		-0.847765, -0.499675, -0.177817,
		38.215458, 30.281927, 22.136217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017708, 30.168871, 21.777321>,  <38.808895, 30.631699, 22.260689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017708, 30.168871, 21.777321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618103, 30.158367, 21.762989>,  <38.378342, 30.152065, 21.754391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618103, 30.158367, 21.762989>,  <39.017708, 30.168871, 21.777321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618103, 30.158367, 21.762989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036802, -0.037578, -0.998616,
		0.024880, -0.998948, 0.038507,
		-0.999013, -0.026263, -0.035828,
		38.318398, 30.150490, 21.752241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983376, 29.801378, 21.185846>,  <39.017708, 30.168871, 21.777321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983376, 29.801378, 21.185846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.629223, 29.978172, 21.243475>,  <38.416733, 30.084248, 21.278051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.629223, 29.978172, 21.243475>,  <38.983376, 29.801378, 21.185846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629223, 29.978172, 21.243475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111285, 0.099392, -0.988806,
		-0.451355, -0.891500, -0.038814,
		-0.885378, 0.441983, 0.144071,
		38.363609, 30.110767, 21.286695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560356, 29.472967, 20.729862>,  <38.983376, 29.801378, 21.185846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560356, 29.472967, 20.729862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385117, 29.824198, 20.806860>,  <38.279972, 30.034935, 20.853058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385117, 29.824198, 20.806860>,  <38.560356, 29.472967, 20.729862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385117, 29.824198, 20.806860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207727, 0.109453, -0.972044,
		-0.874597, -0.465836, 0.134448,
		-0.438097, 0.878075, 0.192494,
		38.253689, 30.087620, 20.864609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844891, 29.326952, 20.542494>,  <38.560356, 29.472967, 20.729862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844891, 29.326952, 20.542494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924255, 29.718796, 20.529882>,  <37.971874, 29.953903, 20.522316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924255, 29.718796, 20.529882>,  <37.844891, 29.326952, 20.542494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924255, 29.718796, 20.529882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325621, 0.035542, -0.944832,
		-0.924447, 0.197736, 0.326034,
		0.198415, 0.979611, -0.031530,
		37.983780, 30.012678, 20.520424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489136, 29.486359, 19.987003>,  <37.844891, 29.326952, 20.542494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489136, 29.486359, 19.987003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706326, 29.817966, 20.040533>,  <37.836639, 30.016932, 20.072651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706326, 29.817966, 20.040533>,  <37.489136, 29.486359, 19.987003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706326, 29.817966, 20.040533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207110, 0.286644, -0.935383,
		-0.813810, 0.480170, 0.327337,
		0.542971, 0.829019, 0.133826,
		37.869217, 30.066671, 20.080681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170738, 29.969803, 19.627230>,  <37.489136, 29.486359, 19.987003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170738, 29.969803, 19.627230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542728, 30.113743, 19.657307>,  <37.765923, 30.200106, 19.675352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542728, 30.113743, 19.657307>,  <37.170738, 29.969803, 19.627230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542728, 30.113743, 19.657307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062699, 0.046282, -0.996959,
		-0.362234, 0.931862, 0.020479,
		0.929976, 0.359848, 0.075191,
		37.821720, 30.221697, 19.679865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461296, 29.982262, 19.360554>,  <37.170738, 29.969803, 19.627230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461296, 29.982262, 19.360554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221500, 30.289841, 19.271709>,  <36.077625, 30.474388, 19.218403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221500, 30.289841, 19.271709>,  <36.461296, 29.982262, 19.360554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221500, 30.289841, 19.271709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122094, 0.362113, 0.924103,
		0.791017, 0.526869, -0.310966,
		-0.599487, 0.768949, -0.222110,
		36.041653, 30.520525, 19.205076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813923, 30.715515, 19.555660>,  <36.461296, 29.982262, 19.360554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813923, 30.715515, 19.555660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417763, 30.697382, 19.607904>,  <36.180069, 30.686502, 19.639252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417763, 30.697382, 19.607904>,  <36.813923, 30.715515, 19.555660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417763, 30.697382, 19.607904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103047, 0.387773, 0.915977,
		-0.092170, 0.920640, -0.379378,
		-0.990397, -0.045332, 0.130610,
		36.120644, 30.683783, 19.647087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701180, 31.251667, 19.962721>,  <36.813923, 30.715515, 19.555660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701180, 31.251667, 19.962721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353596, 31.055912, 19.992155>,  <36.145046, 30.938459, 20.009815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353596, 31.055912, 19.992155>,  <36.701180, 31.251667, 19.962721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353596, 31.055912, 19.992155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089043, 0.300871, 0.949499,
		-0.486812, 0.818521, -0.305020,
		-0.868956, -0.489388, 0.073584,
		36.092907, 30.909096, 20.014231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351151, 31.571035, 20.441269>,  <36.701180, 31.251667, 19.962721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351151, 31.571035, 20.441269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078693, 31.278173, 20.441500>,  <35.915218, 31.102457, 20.441639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078693, 31.278173, 20.441500>,  <36.351151, 31.571035, 20.441269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078693, 31.278173, 20.441500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376536, 0.350974, 0.857344,
		-0.627910, 0.583753, -0.514744,
		-0.681139, -0.732154, 0.000576,
		35.874352, 31.058527, 20.441673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675762, 31.836826, 20.628405>,  <36.351151, 31.571035, 20.441269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675762, 31.836826, 20.628405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.619476, 31.457041, 20.740633>,  <35.585705, 31.229170, 20.807970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.619476, 31.457041, 20.740633>,  <35.675762, 31.836826, 20.628405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619476, 31.457041, 20.740633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273808, 0.309659, 0.910572,
		-0.951435, 0.051307, -0.303543,
		-0.140714, -0.949463, 0.280572,
		35.577263, 31.172201, 20.824804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076759, 31.817198, 21.055405>,  <35.675762, 31.836826, 20.628405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076759, 31.817198, 21.055405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261971, 31.474794, 21.147366>,  <35.373096, 31.269352, 21.202543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261971, 31.474794, 21.147366>,  <35.076759, 31.817198, 21.055405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261971, 31.474794, 21.147366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178237, 0.164161, 0.970197,
		-0.868237, -0.490207, -0.076561,
		0.463029, -0.856008, 0.229903,
		35.400879, 31.217993, 21.216337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682442, 31.538399, 21.660759>,  <35.076759, 31.817198, 21.055405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682442, 31.538399, 21.660759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036015, 31.354359, 21.694172>,  <35.248158, 31.243935, 21.714220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036015, 31.354359, 21.694172>,  <34.682442, 31.538399, 21.660759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036015, 31.354359, 21.694172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070804, 0.044888, 0.996480,
		-0.462231, -0.886731, 0.007101,
		0.883928, -0.460101, 0.083533,
		35.301193, 31.216328, 21.719233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623070, 31.043972, 22.124123>,  <34.682442, 31.538399, 21.660759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623070, 31.043972, 22.124123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017857, 31.106466, 22.108736>,  <35.254730, 31.143963, 22.099504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017857, 31.106466, 22.108736>,  <34.623070, 31.043972, 22.124123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017857, 31.106466, 22.108736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018145, 0.129478, 0.991416,
		0.159887, -0.979195, 0.124955,
		0.986969, 0.156248, -0.038469,
		35.313946, 31.153337, 22.097197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003681, 30.610905, 22.634495>,  <34.623070, 31.043972, 22.124123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003681, 30.610905, 22.634495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266788, 30.903833, 22.564016>,  <35.424652, 31.079592, 22.521729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266788, 30.903833, 22.564016>,  <35.003681, 30.610905, 22.634495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266788, 30.903833, 22.564016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158919, 0.093731, 0.982832,
		0.736266, -0.674476, -0.054726,
		0.657767, 0.732323, -0.176198,
		35.464119, 31.123529, 22.511156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411022, 30.477850, 23.184523>,  <35.003681, 30.610905, 22.634495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411022, 30.477850, 23.184523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538536, 30.829155, 23.041958>,  <35.615044, 31.039938, 22.956419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538536, 30.829155, 23.041958>,  <35.411022, 30.477850, 23.184523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538536, 30.829155, 23.041958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371894, 0.229974, 0.899337,
		0.871820, -0.419244, -0.253308,
		0.318787, 0.878263, -0.356411,
		35.634171, 31.092634, 22.935034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107182, 30.533083, 23.371618>,  <35.411022, 30.477850, 23.184523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107182, 30.533083, 23.371618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967651, 30.906281, 23.336203>,  <35.883934, 31.130199, 23.314953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967651, 30.906281, 23.336203>,  <36.107182, 30.533083, 23.371618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967651, 30.906281, 23.336203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194481, 0.164478, 0.967018,
		0.916785, 0.320105, -0.238824,
		-0.348829, 0.932995, -0.088537,
		35.863003, 31.186178, 23.309641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614922, 31.016119, 23.644617>,  <36.107182, 30.533083, 23.371618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614922, 31.016119, 23.644617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265316, 31.210146, 23.656054>,  <36.055553, 31.326563, 23.662916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265316, 31.210146, 23.656054>,  <36.614922, 31.016119, 23.644617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265316, 31.210146, 23.656054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149351, 0.212177, 0.965751,
		0.462387, 0.848346, -0.257890,
		-0.874009, 0.485067, 0.028593,
		36.003113, 31.355665, 23.664631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686329, 31.759298, 23.976723>,  <36.614922, 31.016119, 23.644617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686329, 31.759298, 23.976723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314995, 31.619894, 24.028454>,  <36.092194, 31.536251, 24.059492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314995, 31.619894, 24.028454>,  <36.686329, 31.759298, 23.976723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314995, 31.619894, 24.028454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121046, 0.045535, 0.991602,
		-0.351475, 0.936197, -0.000086,
		-0.928339, -0.348513, 0.129328,
		36.036491, 31.515341, 24.067251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489563, 32.115810, 24.564524>,  <36.686329, 31.759298, 23.976723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489563, 32.115810, 24.564524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178295, 31.865217, 24.546780>,  <35.991535, 31.714861, 24.536133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178295, 31.865217, 24.546780>,  <36.489563, 32.115810, 24.564524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178295, 31.865217, 24.546780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034956, -0.113728, 0.992897,
		-0.627083, 0.771090, 0.110399,
		-0.778168, -0.626487, -0.044362,
		35.944843, 31.677271, 24.533470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234718, 32.256073, 25.144867>,  <36.489563, 32.115810, 24.564524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234718, 32.256073, 25.144867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043365, 31.919727, 25.043598>,  <35.928555, 31.717920, 24.982838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043365, 31.919727, 25.043598>,  <36.234718, 32.256073, 25.144867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043365, 31.919727, 25.043598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014985, -0.280442, 0.959754,
		-0.878022, 0.462927, 0.121560,
		-0.478386, -0.840863, -0.253171,
		35.899849, 31.667469, 24.967648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499531, 32.122581, 25.514465>,  <36.234718, 32.256073, 25.144867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499531, 32.122581, 25.514465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679298, 31.778278, 25.418865>,  <35.787159, 31.571697, 25.361506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679298, 31.778278, 25.418865>,  <35.499531, 32.122581, 25.514465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679298, 31.778278, 25.418865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025080, -0.255280, 0.966542,
		-0.892968, -0.440378, -0.093141,
		0.449421, -0.860755, -0.239002,
		35.814125, 31.520052, 25.347164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123455, 31.642088, 25.720930>,  <35.499531, 32.122581, 25.514465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123455, 31.642088, 25.720930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465805, 31.443148, 25.664188>,  <35.671215, 31.323784, 25.630144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465805, 31.443148, 25.664188>,  <35.123455, 31.642088, 25.720930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465805, 31.443148, 25.664188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105902, -0.437001, 0.893205,
		-0.506230, -0.749446, -0.426688,
		0.855872, -0.497354, -0.141855,
		35.722569, 31.293941, 25.621632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956894, 31.099339, 26.044277>,  <35.123455, 31.642088, 25.720930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956894, 31.099339, 26.044277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355042, 31.132322, 26.024515>,  <35.593929, 31.152113, 26.012659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355042, 31.132322, 26.024515>,  <34.956894, 31.099339, 26.044277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355042, 31.132322, 26.024515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078897, -0.407209, 0.909921,
		0.054914, -0.909605, -0.411830,
		0.995369, 0.082459, -0.049403,
		35.653652, 31.157061, 26.009695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083504, 30.450565, 26.342134>,  <34.956894, 31.099339, 26.044277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083504, 30.450565, 26.342134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427647, 30.654392, 26.346647>,  <35.634132, 30.776688, 26.349356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427647, 30.654392, 26.346647>,  <35.083504, 30.450565, 26.342134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427647, 30.654392, 26.346647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227276, -0.403360, 0.886367,
		0.456213, -0.760028, -0.462846,
		0.860358, 0.509566, 0.011282,
		35.685753, 30.807262, 26.350031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708096, 29.874823, 26.487108>,  <35.083504, 30.450565, 26.342134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708096, 29.874823, 26.487108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794003, 30.256321, 26.571249>,  <35.845547, 30.485220, 26.621733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794003, 30.256321, 26.571249>,  <35.708096, 29.874823, 26.487108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794003, 30.256321, 26.571249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261545, -0.263674, 0.928477,
		0.940995, -0.144386, -0.306075,
		0.214763, 0.953744, 0.210353,
		35.858433, 30.542444, 26.634356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123234, 29.773655, 27.002441>,  <35.708096, 29.874823, 26.487108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123234, 29.773655, 27.002441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063396, 30.166105, 27.051451>,  <36.027496, 30.401575, 27.080856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063396, 30.166105, 27.051451>,  <36.123234, 29.773655, 27.002441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063396, 30.166105, 27.051451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091601, -0.109634, 0.989742,
		0.984496, 0.159279, -0.073472,
		-0.149590, 0.981127, 0.122524,
		36.018520, 30.460443, 27.088207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.528469, 28.610966, 31.056536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462765, 29.005264, 31.071068>,  <38.423344, 29.241844, 31.079786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462765, 29.005264, 31.071068>,  <38.528469, 28.610966, 31.056536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462765, 29.005264, 31.071068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218738, 0.000488, 0.975784,
		0.961860, 0.168225, -0.215701,
		-0.164256, 0.985749, 0.036328,
		38.413486, 29.300989, 31.081966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053642, 28.808605, 31.486879>,  <38.528469, 28.610966, 31.056536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053642, 28.808605, 31.486879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776417, 29.096123, 31.508770>,  <38.610081, 29.268633, 31.521904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776417, 29.096123, 31.508770>,  <39.053642, 28.808605, 31.486879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776417, 29.096123, 31.508770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189294, 0.108212, 0.975940,
		0.695576, 0.686752, -0.211061,
		-0.693068, 0.718792, 0.054728,
		38.568497, 29.311760, 31.525188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326065, 29.347969, 31.912632>,  <39.053642, 28.808605, 31.486879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326065, 29.347969, 31.912632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936390, 29.437658, 31.923071>,  <38.702583, 29.491472, 31.929335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936390, 29.437658, 31.923071>,  <39.326065, 29.347969, 31.912632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936390, 29.437658, 31.923071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070947, 0.194385, 0.978356,
		0.214296, 0.954955, -0.205276,
		-0.974189, 0.224222, 0.026095,
		38.644135, 29.504925, 31.930899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381664, 29.900036, 32.239059>,  <39.326065, 29.347969, 31.912632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381664, 29.900036, 32.239059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008789, 29.763990, 32.288624>,  <38.785065, 29.682364, 32.318363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008789, 29.763990, 32.288624>,  <39.381664, 29.900036, 32.239059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008789, 29.763990, 32.288624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032632, 0.419875, 0.906995,
		-0.360506, 0.841445, -0.402500,
		-0.932186, -0.340112, 0.123909,
		38.729134, 29.661957, 32.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943481, 30.434509, 32.343636>,  <39.381664, 29.900036, 32.239059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943481, 30.434509, 32.343636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766094, 30.122887, 32.520905>,  <38.659660, 29.935913, 32.627266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766094, 30.122887, 32.520905>,  <38.943481, 30.434509, 32.343636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766094, 30.122887, 32.520905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076982, 0.525738, 0.847156,
		-0.892978, 0.341571, -0.293121,
		-0.443469, -0.779057, 0.443177,
		38.633053, 29.889170, 32.653858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492226, 30.789734, 32.787827>,  <38.943481, 30.434509, 32.343636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492226, 30.789734, 32.787827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.500587, 30.410992, 32.916218>,  <38.505604, 30.183746, 32.993252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.500587, 30.410992, 32.916218>,  <38.492226, 30.789734, 32.787827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500587, 30.410992, 32.916218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061305, 0.319234, 0.945691,
		-0.997900, -0.039448, -0.051373,
		0.020906, -0.946855, 0.320982,
		38.506859, 30.126936, 33.012512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110928, 30.812176, 33.358017>,  <38.492226, 30.789734, 32.787827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110928, 30.812176, 33.358017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305038, 30.471790, 33.438377>,  <38.421505, 30.267559, 33.486591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305038, 30.471790, 33.438377>,  <38.110928, 30.812176, 33.358017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305038, 30.471790, 33.438377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035519, 0.248763, 0.967913,
		-0.873636, -0.462574, 0.150946,
		0.485281, -0.850966, 0.200898,
		38.450623, 30.216501, 33.498646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781296, 30.663506, 33.948563>,  <38.110928, 30.812176, 33.358017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781296, 30.663506, 33.948563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119804, 30.450584, 33.939785>,  <38.322910, 30.322832, 33.934517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119804, 30.450584, 33.939785>,  <37.781296, 30.663506, 33.948563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119804, 30.450584, 33.939785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082261, 0.089857, 0.992552,
		-0.526364, -0.841773, 0.119831,
		0.846271, -0.532301, -0.021947,
		38.373684, 30.290894, 33.933201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725693, 30.119289, 34.463856>,  <37.781296, 30.663506, 33.948563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725693, 30.119289, 34.463856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.116001, 30.179897, 34.400711>,  <38.350185, 30.216263, 34.362823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.116001, 30.179897, 34.400711>,  <37.725693, 30.119289, 34.463856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116001, 30.179897, 34.400711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157812, 0.012438, 0.987391,
		0.151576, -0.988376, -0.011776,
		0.975766, 0.151523, -0.157863,
		38.408730, 30.225353, 34.353352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132076, 29.674486, 34.918476>,  <37.725693, 30.119289, 34.463856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132076, 29.674486, 34.918476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395344, 29.959379, 34.820881>,  <38.553307, 30.130316, 34.762321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395344, 29.959379, 34.820881>,  <38.132076, 29.674486, 34.918476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395344, 29.959379, 34.820881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167975, 0.176991, 0.969772,
		0.733890, -0.679261, -0.003147,
		0.658172, 0.712235, -0.243990,
		38.592796, 30.173050, 34.747684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746681, 29.612705, 35.372234>,  <38.132076, 29.674486, 34.918476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746681, 29.612705, 35.372234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.799068, 29.982536, 35.229126>,  <38.830502, 30.204435, 35.143261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.799068, 29.982536, 35.229126>,  <38.746681, 29.612705, 35.372234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799068, 29.982536, 35.229126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335358, 0.298290, 0.893621,
		0.932942, -0.237020, -0.270998,
		0.130970, 0.924578, -0.357774,
		38.838360, 30.259911, 35.121796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332684, 29.815699, 35.565266>,  <38.746681, 29.612705, 35.372234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332684, 29.815699, 35.565266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107193, 30.144247, 35.530479>,  <38.971897, 30.341375, 35.509609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107193, 30.144247, 35.530479>,  <39.332684, 29.815699, 35.565266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107193, 30.144247, 35.530479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314661, 0.310917, 0.896838,
		0.763674, 0.478209, -0.433726,
		-0.563729, 0.821369, -0.086966,
		38.938076, 30.390657, 35.504391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696621, 30.489065, 35.586788>,  <39.332684, 29.815699, 35.565266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696621, 30.489065, 35.586788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331528, 30.508020, 35.749107>,  <39.112473, 30.519394, 35.846500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331528, 30.508020, 35.749107>,  <39.696621, 30.489065, 35.586788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331528, 30.508020, 35.749107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405124, 0.233418, 0.883963,
		-0.052831, 0.971221, -0.232247,
		-0.912734, 0.047388, 0.405797,
		39.057709, 30.522236, 35.870846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516293, 31.196804, 35.974400>,  <39.696621, 30.489065, 35.586788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516293, 31.196804, 35.974400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334972, 30.871021, 36.119274>,  <39.226181, 30.675552, 36.206200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334972, 30.871021, 36.119274>,  <39.516293, 31.196804, 35.974400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334972, 30.871021, 36.119274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279208, 0.256145, 0.925436,
		-0.846499, 0.520628, 0.111292,
		-0.453301, -0.814455, 0.362190,
		39.198982, 30.626684, 36.227932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897198, 31.733091, 35.487762>,  <39.516293, 31.196804, 35.974400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897198, 31.733091, 35.487762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.092453, 32.050571, 35.632957>,  <40.209606, 32.241058, 35.720074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.092453, 32.050571, 35.632957>,  <39.897198, 31.733091, 35.487762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092453, 32.050571, 35.632957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147160, 0.484801, -0.862155,
		-0.860272, 0.367431, 0.353449,
		0.488135, 0.793702, 0.362990,
		40.238892, 32.288681, 35.741856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360935, 32.367836, 35.311836>,  <39.897198, 31.733091, 35.487762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360935, 32.367836, 35.311836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732357, 32.501923, 35.375603>,  <39.955212, 32.582375, 35.413860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732357, 32.501923, 35.375603>,  <39.360935, 32.367836, 35.311836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732357, 32.501923, 35.375603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048043, 0.534379, -0.843878,
		-0.368071, 0.775929, 0.512306,
		0.928556, 0.335220, 0.159412,
		40.010925, 32.602489, 35.423428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308414, 33.083061, 35.230614>,  <39.360935, 32.367836, 35.311836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308414, 33.083061, 35.230614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699886, 33.009697, 35.193623>,  <39.934769, 32.965679, 35.171429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699886, 33.009697, 35.193623>,  <39.308414, 33.083061, 35.230614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699886, 33.009697, 35.193623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017138, 0.375739, -0.926567,
		0.204685, 0.908395, 0.364584,
		0.978678, -0.183406, -0.092476,
		39.993488, 32.954674, 35.165878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612961, 33.741882, 35.087948>,  <39.308414, 33.083061, 35.230614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612961, 33.741882, 35.087948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833218, 33.435207, 34.955894>,  <39.965370, 33.251202, 34.876663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833218, 33.435207, 34.955894>,  <39.612961, 33.741882, 35.087948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833218, 33.435207, 34.955894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159913, 0.485051, -0.859740,
		0.819280, 0.420618, 0.389693,
		0.550643, -0.766685, -0.330130,
		39.998409, 33.205200, 34.856857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232380, 33.987206, 34.851177>,  <39.612961, 33.741882, 35.087948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232380, 33.987206, 34.851177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.222450, 33.622112, 34.688053>,  <40.216492, 33.403057, 34.590179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.222450, 33.622112, 34.688053>,  <40.232380, 33.987206, 34.851177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222450, 33.622112, 34.688053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330780, 0.377457, -0.864934,
		0.943381, -0.156362, 0.292545,
		-0.024820, -0.912730, -0.407808,
		40.215004, 33.348293, 34.565712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804317, 33.983353, 34.457340>,  <40.232380, 33.987206, 34.851177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804317, 33.983353, 34.457340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.606789, 33.659378, 34.330757>,  <40.488270, 33.464993, 34.254807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.606789, 33.659378, 34.330757>,  <40.804317, 33.983353, 34.457340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606789, 33.659378, 34.330757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270933, 0.202502, -0.941057,
		0.826279, -0.550453, 0.119438,
		-0.493821, -0.809935, -0.316458,
		40.458641, 33.416397, 34.235821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226200, 33.560703, 33.968216>,  <40.804317, 33.983353, 34.457340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226200, 33.560703, 33.968216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.853157, 33.443001, 33.884640>,  <40.629333, 33.372379, 33.834492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.853157, 33.443001, 33.884640>,  <41.226200, 33.560703, 33.968216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853157, 33.443001, 33.884640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216943, 0.005576, -0.976168,
		0.288413, -0.955709, 0.058637,
		-0.932606, -0.294260, -0.208943,
		40.573376, 33.354721, 33.821957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348354, 33.069950, 33.406387>,  <41.226200, 33.560703, 33.968216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348354, 33.069950, 33.406387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965786, 33.186588, 33.400269>,  <40.736244, 33.256569, 33.396595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965786, 33.186588, 33.400269>,  <41.348354, 33.069950, 33.406387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965786, 33.186588, 33.400269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021574, 0.018309, -0.999599,
		-0.291197, -0.956367, -0.023802,
		-0.956420, 0.291594, -0.015301,
		40.678860, 33.274067, 33.395679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036980, 32.672657, 32.831890>,  <41.348354, 33.069950, 33.406387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036980, 32.672657, 32.831890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.799755, 32.993523, 32.859623>,  <40.657421, 33.186043, 32.876263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.799755, 32.993523, 32.859623>,  <41.036980, 32.672657, 32.831890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799755, 32.993523, 32.859623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156397, -0.030295, -0.987230,
		-0.789822, -0.596332, 0.143423,
		-0.593062, 0.802166, 0.069337,
		40.621838, 33.234173, 32.880424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493305, 32.549858, 32.369442>,  <41.036980, 32.672657, 32.831890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493305, 32.549858, 32.369442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.490456, 32.941467, 32.450897>,  <40.488747, 33.176434, 32.499771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.490456, 32.941467, 32.450897>,  <40.493305, 32.549858, 32.369442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490456, 32.941467, 32.450897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137832, 0.200741, -0.969900,
		-0.990430, -0.034974, 0.133511,
		-0.007121, 0.979020, 0.203641,
		40.488319, 33.235172, 32.511990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916866, 32.873695, 31.954159>,  <40.493305, 32.549858, 32.369442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916866, 32.873695, 31.954159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.139526, 33.197456, 32.028999>,  <40.273121, 33.391712, 32.073902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.139526, 33.197456, 32.028999>,  <39.916866, 32.873695, 31.954159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139526, 33.197456, 32.028999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142123, 0.314681, -0.938497,
		-0.818503, 0.495819, 0.290201,
		0.556646, 0.809407, 0.187100,
		40.306519, 33.440277, 32.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525246, 33.373108, 31.692429>,  <39.916866, 32.873695, 31.954159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525246, 33.373108, 31.692429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.897625, 33.516842, 31.718391>,  <40.121052, 33.603081, 31.733969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.897625, 33.516842, 31.718391>,  <39.525246, 33.373108, 31.692429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897625, 33.516842, 31.718391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066403, 0.341393, -0.937572,
		-0.359057, 0.868523, 0.341680,
		0.930951, 0.359330, 0.064906,
		40.176910, 33.624641, 31.737864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535843, 33.937756, 31.319504>,  <39.525246, 33.373108, 31.692429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535843, 33.937756, 31.319504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931602, 33.889244, 31.351458>,  <40.169060, 33.860138, 31.370630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931602, 33.889244, 31.351458>,  <39.535843, 33.937756, 31.319504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931602, 33.889244, 31.351458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120997, 0.384252, -0.915265,
		0.080305, 0.915228, 0.394853,
		0.989399, -0.121276, 0.079883,
		40.228424, 33.852859, 31.375422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900784, 34.529640, 30.996897>,  <39.535843, 33.937756, 31.319504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900784, 34.529640, 30.996897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.126648, 34.199535, 30.992752>,  <40.262165, 34.001472, 30.990265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.126648, 34.199535, 30.992752>,  <39.900784, 34.529640, 30.996897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126648, 34.199535, 30.992752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247953, 0.181604, -0.951598,
		0.787199, 0.534756, 0.307169,
		0.564656, -0.825261, -0.010364,
		40.296043, 33.951958, 30.989643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997318, 35.252449, 30.894777>,  <39.900784, 34.529640, 30.996897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997318, 35.252449, 30.894777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690578, 35.452465, 30.733831>,  <39.506535, 35.572475, 30.637264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690578, 35.452465, 30.733831>,  <39.997318, 35.252449, 30.894777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690578, 35.452465, 30.733831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299168, 0.276159, 0.913365,
		0.567833, 0.820792, -0.062178,
		-0.766854, 0.500037, -0.402367,
		39.460522, 35.602474, 30.613121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985733, 35.775162, 31.295872>,  <39.997318, 35.252449, 30.894777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985733, 35.775162, 31.295872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620213, 35.751549, 31.135136>,  <39.400898, 35.737381, 31.038694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620213, 35.751549, 31.135136>,  <39.985733, 35.775162, 31.295872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620213, 35.751549, 31.135136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403663, 0.022610, 0.914628,
		-0.044910, 0.998000, -0.044491,
		-0.913805, -0.059035, -0.401840,
		39.346069, 35.733837, 31.014584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675797, 36.123913, 31.696239>,  <39.985733, 35.775162, 31.295872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675797, 36.123913, 31.696239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379364, 35.931873, 31.508495>,  <39.201504, 35.816650, 31.395849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379364, 35.931873, 31.508495>,  <39.675797, 36.123913, 31.696239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379364, 35.931873, 31.508495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556318, 0.047699, 0.829599,
		-0.375901, 0.875917, -0.302437,
		-0.741086, -0.480098, -0.469359,
		39.157040, 35.787846, 31.367687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094139, 36.512527, 31.688864>,  <39.675797, 36.123913, 31.696239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094139, 36.512527, 31.688864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973087, 36.133141, 31.651279>,  <38.900455, 35.905510, 31.628729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973087, 36.133141, 31.651279>,  <39.094139, 36.512527, 31.688864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973087, 36.133141, 31.651279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547663, 0.092364, 0.831585,
		-0.780052, 0.303120, -0.547391,
		-0.302630, -0.948465, -0.093959,
		38.882298, 35.848602, 31.623093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380970, 36.568638, 31.896351>,  <39.094139, 36.512527, 31.688864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380970, 36.568638, 31.896351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501541, 36.187767, 31.916328>,  <38.573883, 35.959244, 31.928316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501541, 36.187767, 31.916328>,  <38.380970, 36.568638, 31.896351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501541, 36.187767, 31.916328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435754, -0.090975, 0.895457,
		-0.848092, -0.291679, -0.442338,
		0.301427, -0.952180, 0.049945,
		38.591969, 35.902115, 31.931313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736156, 36.162891, 31.873562>,  <38.380970, 36.568638, 31.896351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736156, 36.162891, 31.873562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.040440, 35.961025, 32.036846>,  <38.223011, 35.839905, 32.134815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.040440, 35.961025, 32.036846>,  <37.736156, 36.162891, 31.873562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040440, 35.961025, 32.036846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600695, -0.309063, 0.737323,
		-0.245935, -0.806100, -0.538255,
		0.760710, -0.504661, 0.408211,
		38.268654, 35.809628, 32.159309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364712, 35.695038, 32.397709>,  <37.736156, 36.162891, 31.873562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364712, 35.695038, 32.397709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.740074, 35.649685, 32.528267>,  <37.965294, 35.622471, 32.606602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.740074, 35.649685, 32.528267>,  <37.364712, 35.695038, 32.397709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740074, 35.649685, 32.528267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345416, -0.283537, 0.894592,
		-0.008888, -0.952235, -0.305239,
		0.938408, -0.113385, 0.326397,
		38.021595, 35.615669, 32.626186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403748, 34.972412, 32.804745>,  <37.364712, 35.695038, 32.397709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403748, 34.972412, 32.804745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679367, 35.228992, 32.939655>,  <37.844738, 35.382938, 33.020603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679367, 35.228992, 32.939655>,  <37.403748, 34.972412, 32.804745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679367, 35.228992, 32.939655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400994, -0.050204, 0.914704,
		0.603668, -0.765522, 0.222624,
		0.689049, 0.641448, 0.337276,
		37.886082, 35.421429, 33.040836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652943, 34.701118, 33.389450>,  <37.403748, 34.972412, 32.804745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652943, 34.701118, 33.389450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.756794, 35.087299, 33.398388>,  <37.819107, 35.319008, 33.403751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.756794, 35.087299, 33.398388>,  <37.652943, 34.701118, 33.389450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756794, 35.087299, 33.398388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153144, 0.018315, 0.988034,
		0.953487, -0.259948, 0.152608,
		0.259633, 0.965449, 0.022346,
		37.834682, 35.376934, 33.405090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078152, 34.766113, 34.076965>,  <37.652943, 34.701118, 33.389450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078152, 34.766113, 34.076965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.939674, 35.116928, 33.943722>,  <37.856586, 35.327415, 33.863773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.939674, 35.116928, 33.943722>,  <38.078152, 34.766113, 34.076965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939674, 35.116928, 33.943722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304600, 0.230754, 0.924106,
		0.887338, 0.421384, 0.187259,
		-0.346193, 0.877034, -0.333111,
		37.835815, 35.380039, 33.843788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338291, 35.146969, 34.544094>,  <38.078152, 34.766113, 34.076965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338291, 35.146969, 34.544094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056568, 35.379128, 34.380585>,  <37.887535, 35.518421, 34.282478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056568, 35.379128, 34.380585>,  <38.338291, 35.146969, 34.544094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056568, 35.379128, 34.380585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367832, 0.194137, 0.909401,
		0.607169, 0.790857, 0.076755,
		-0.704305, 0.580393, -0.408776,
		37.845276, 35.553246, 34.257954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540783, 35.812809, 34.832188>,  <38.338291, 35.146969, 34.544094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540783, 35.812809, 34.832188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158005, 35.802429, 34.716549>,  <37.928337, 35.796204, 34.647163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158005, 35.802429, 34.716549>,  <38.540783, 35.812809, 34.832188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158005, 35.802429, 34.716549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285069, 0.271551, 0.919236,
		0.054654, 0.962074, -0.267257,
		-0.956947, -0.025946, -0.289099,
		37.870922, 35.794643, 34.629818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.769096, 35.831764, 26.856974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387005, 35.714642, 26.873947>,  <40.157749, 35.644367, 26.884132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387005, 35.714642, 26.873947>,  <40.769096, 35.831764, 26.856974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387005, 35.714642, 26.873947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065066, 0.347822, 0.935300,
		-0.288619, 0.890666, -0.351301,
		-0.955230, -0.292803, 0.042436,
		40.100437, 35.626801, 26.886679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442238, 36.353573, 27.340696>,  <40.769096, 35.831764, 26.856974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442238, 36.353573, 27.340696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189594, 36.046112, 27.300220>,  <40.038010, 35.861633, 27.275934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189594, 36.046112, 27.300220>,  <40.442238, 36.353573, 27.340696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189594, 36.046112, 27.300220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377487, 0.190896, 0.906125,
		-0.677180, 0.610515, -0.410729,
		-0.631609, -0.768655, -0.101190,
		40.000111, 35.815517, 27.269863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916954, 36.618401, 27.717752>,  <40.442238, 36.353573, 27.340696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916954, 36.618401, 27.717752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870552, 36.221653, 27.696783>,  <39.842712, 35.983604, 27.684200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870552, 36.221653, 27.696783>,  <39.916954, 36.618401, 27.717752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870552, 36.221653, 27.696783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473651, 0.008848, 0.880668,
		-0.873040, 0.126992, -0.470824,
		-0.116003, -0.991865, -0.052425,
		39.835751, 35.924095, 27.681055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178162, 36.353569, 27.802111>,  <39.916954, 36.618401, 27.717752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178162, 36.353569, 27.802111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430103, 36.066578, 27.921106>,  <39.581268, 35.894382, 27.992504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430103, 36.066578, 27.921106>,  <39.178162, 36.353569, 27.802111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430103, 36.066578, 27.921106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362806, 0.066883, 0.929461,
		-0.686769, -0.693358, -0.218180,
		0.629857, -0.717483, 0.297487,
		39.619061, 35.851334, 28.010353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819218, 35.960052, 28.172207>,  <39.178162, 36.353569, 27.802111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819218, 35.960052, 28.172207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182442, 35.848919, 28.297577>,  <39.400375, 35.782238, 28.372799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182442, 35.848919, 28.297577>,  <38.819218, 35.960052, 28.172207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182442, 35.848919, 28.297577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344989, -0.071808, 0.935856,
		-0.237508, -0.957941, -0.161056,
		0.908060, -0.277836, 0.313424,
		39.454861, 35.765568, 28.391603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550220, 35.428745, 28.655659>,  <38.819218, 35.960052, 28.172207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550220, 35.428745, 28.655659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926689, 35.535568, 28.738489>,  <39.152569, 35.599663, 28.788187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926689, 35.535568, 28.738489>,  <38.550220, 35.428745, 28.655659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926689, 35.535568, 28.738489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166360, -0.167231, 0.971781,
		0.294150, -0.949060, -0.112965,
		0.941169, 0.267056, 0.207076,
		39.209042, 35.615685, 28.800611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868671, 34.937721, 29.144318>,  <38.550220, 35.428745, 28.655659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868671, 34.937721, 29.144318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094910, 35.262142, 29.204058>,  <39.230652, 35.456795, 29.239901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094910, 35.262142, 29.204058>,  <38.868671, 34.937721, 29.144318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094910, 35.262142, 29.204058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070045, -0.133199, 0.988611,
		0.821705, -0.569611, -0.018527,
		0.565592, 0.811049, 0.149349,
		39.264587, 35.505459, 29.248863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406658, 34.739227, 29.538136>,  <38.868671, 34.937721, 29.144318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406658, 34.739227, 29.538136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422878, 35.132694, 29.608278>,  <39.432610, 35.368774, 29.650364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422878, 35.132694, 29.608278>,  <39.406658, 34.739227, 29.538136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422878, 35.132694, 29.608278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086015, -0.171413, 0.981437,
		0.995468, -0.054881, 0.077659,
		0.040551, 0.983670, 0.175357,
		39.435043, 35.427795, 29.660885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834126, 34.869122, 30.153332>,  <39.406658, 34.739227, 29.538136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834126, 34.869122, 30.153332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610607, 35.199261, 30.120979>,  <39.476498, 35.397346, 30.101568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610607, 35.199261, 30.120979>,  <39.834126, 34.869122, 30.153332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610607, 35.199261, 30.120979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070057, 0.050200, 0.996279,
		0.826340, 0.562383, 0.029770,
		-0.558796, 0.825351, -0.080881,
		39.442966, 35.446865, 30.096716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420303, 34.752663, 30.496391>,  <39.834126, 34.869122, 30.153332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420303, 34.752663, 30.496391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409306, 34.353867, 30.525406>,  <40.402706, 34.114590, 30.542814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409306, 34.353867, 30.525406>,  <40.420303, 34.752663, 30.496391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409306, 34.353867, 30.525406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033249, -0.073437, -0.996746,
		0.999069, -0.024996, 0.035168,
		-0.027497, -0.996987, 0.072538,
		40.401058, 34.054771, 30.547167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852646, 34.530430, 29.952425>,  <40.420303, 34.752663, 30.496391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852646, 34.530430, 29.952425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658859, 34.191509, 30.039476>,  <40.542587, 33.988155, 30.091707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658859, 34.191509, 30.039476>,  <40.852646, 34.530430, 29.952425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658859, 34.191509, 30.039476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005025, -0.246073, -0.969238,
		0.874793, -0.470660, 0.114957,
		-0.484470, -0.847305, 0.217628,
		40.513519, 33.937317, 30.104765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182800, 33.978756, 29.710077>,  <40.852646, 34.530430, 29.952425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182800, 33.978756, 29.710077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819492, 33.815613, 29.747387>,  <40.601509, 33.717728, 29.769773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819492, 33.815613, 29.747387>,  <41.182800, 33.978756, 29.710077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819492, 33.815613, 29.747387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049194, -0.325498, -0.944262,
		0.415488, -0.853054, 0.315704,
		-0.908267, -0.407860, 0.093275,
		40.547012, 33.693256, 29.775370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265888, 33.349800, 29.454309>,  <41.182800, 33.978756, 29.710077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265888, 33.349800, 29.454309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868908, 33.398800, 29.456961>,  <40.630722, 33.428200, 29.458551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868908, 33.398800, 29.456961>,  <41.265888, 33.349800, 29.454309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868908, 33.398800, 29.456961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053592, -0.384308, -0.921648,
		-0.110355, -0.915042, 0.387970,
		-0.992446, 0.122501, 0.006629,
		40.571175, 33.435551, 29.458950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997379, 32.744770, 29.412178>,  <41.265888, 33.349800, 29.454309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997379, 32.744770, 29.412178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693958, 32.969021, 29.279333>,  <40.511906, 33.103569, 29.199627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693958, 32.969021, 29.279333>,  <40.997379, 32.744770, 29.412178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693958, 32.969021, 29.279333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063922, -0.443196, -0.894143,
		-0.648467, -0.699485, 0.300352,
		-0.758554, 0.560623, -0.332110,
		40.466393, 33.137207, 29.179701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482254, 32.316349, 29.143398>,  <40.997379, 32.744770, 29.412178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482254, 32.316349, 29.143398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406277, 32.671654, 28.976107>,  <40.360691, 32.884834, 28.875732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406277, 32.671654, 28.976107>,  <40.482254, 32.316349, 29.143398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406277, 32.671654, 28.976107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049025, -0.416872, -0.907642,
		-0.980570, -0.192906, 0.035635,
		-0.189945, 0.888260, -0.418229,
		40.349293, 32.938133, 28.850637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964466, 32.148407, 28.652462>,  <40.482254, 32.316349, 29.143398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964466, 32.148407, 28.652462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127041, 32.502289, 28.561153>,  <40.224586, 32.714619, 28.506369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127041, 32.502289, 28.561153>,  <39.964466, 32.148407, 28.652462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127041, 32.502289, 28.561153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142212, -0.308044, -0.940683,
		-0.902545, 0.349863, -0.251016,
		0.406434, 0.884706, -0.228269,
		40.248970, 32.767700, 28.492672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597511, 32.443066, 28.087763>,  <39.964466, 32.148407, 28.652462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597511, 32.443066, 28.087763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950062, 32.631977, 28.083315>,  <40.161594, 32.745323, 28.080647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950062, 32.631977, 28.083315>,  <39.597511, 32.443066, 28.087763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950062, 32.631977, 28.083315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162825, -0.325793, -0.931314,
		-0.443463, 0.819031, -0.364047,
		0.881379, 0.472279, -0.011118,
		40.214474, 32.773663, 28.079979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637245, 32.741131, 27.384003>,  <39.597511, 32.443066, 28.087763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637245, 32.741131, 27.384003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012074, 32.785728, 27.516342>,  <40.236973, 32.812489, 27.595747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012074, 32.785728, 27.516342>,  <39.637245, 32.741131, 27.384003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012074, 32.785728, 27.516342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346781, -0.187451, -0.919024,
		-0.040452, 0.975925, -0.214321,
		0.937073, 0.111498, 0.330850,
		40.293194, 32.819180, 27.615597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992348, 33.145519, 26.857496>,  <39.637245, 32.741131, 27.384003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992348, 33.145519, 26.857496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256325, 32.940018, 27.076780>,  <40.414711, 32.816715, 27.208351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256325, 32.940018, 27.076780>,  <39.992348, 33.145519, 26.857496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256325, 32.940018, 27.076780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397428, -0.380510, -0.835023,
		0.637598, 0.768938, -0.046932,
		0.659939, -0.513757, 0.548210,
		40.454308, 32.785892, 27.241243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676746, 33.312359, 26.622442>,  <39.992348, 33.145519, 26.857496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676746, 33.312359, 26.622442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697845, 32.947376, 26.784748>,  <40.710506, 32.728386, 26.882132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697845, 32.947376, 26.784748>,  <40.676746, 33.312359, 26.622442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697845, 32.947376, 26.784748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399086, -0.353207, -0.846153,
		0.915395, 0.206570, 0.345517,
		0.052751, -0.912455, 0.405763,
		40.713669, 32.673641, 26.906477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389854, 32.968536, 26.376553>,  <40.676746, 33.312359, 26.622442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389854, 32.968536, 26.376553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119671, 32.689816, 26.473074>,  <40.957561, 32.522583, 26.530987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119671, 32.689816, 26.473074>,  <41.389854, 32.968536, 26.376553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119671, 32.689816, 26.473074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294050, -0.554614, -0.778420,
		0.676234, -0.454833, 0.579512,
		-0.675456, -0.696800, 0.241306,
		40.917034, 32.480774, 26.545465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749771, 32.372597, 26.210781>,  <41.389854, 32.968536, 26.376553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749771, 32.372597, 26.210781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370277, 32.259888, 26.268063>,  <41.142582, 32.192265, 26.302431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370277, 32.259888, 26.268063>,  <41.749771, 32.372597, 26.210781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370277, 32.259888, 26.268063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055592, -0.594765, -0.801975,
		0.311143, -0.752901, 0.579939,
		-0.948736, -0.281769, 0.143202,
		41.085655, 32.175358, 26.311024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874096, 31.717289, 26.045412>,  <41.749771, 32.372597, 26.210781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874096, 31.717289, 26.045412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480862, 31.775339, 26.000736>,  <41.244919, 31.810169, 25.973930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480862, 31.775339, 26.000736>,  <41.874096, 31.717289, 26.045412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480862, 31.775339, 26.000736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002747, -0.598148, -0.801381,
		-0.183107, -0.788136, 0.587634,
		-0.983089, 0.145124, -0.111690,
		41.185936, 31.818876, 25.967230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.694599, 32.325611, 25.333405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.062687, 32.480316, 25.357443>,  <33.283539, 32.573139, 25.371866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.062687, 32.480316, 25.357443>,  <32.694599, 32.325611, 25.333405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062687, 32.480316, 25.357443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138864, -0.466156, 0.873737,
		0.365943, -0.795684, -0.482673,
		0.920219, 0.386764, 0.060094,
		33.338753, 32.596344, 25.375471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147877, 31.837015, 25.604416>,  <32.694599, 32.325611, 25.333405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147877, 31.837015, 25.604416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.338310, 32.177013, 25.694616>,  <33.452572, 32.381012, 25.748737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.338310, 32.177013, 25.694616>,  <33.147877, 31.837015, 25.604416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338310, 32.177013, 25.694616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216375, -0.361768, 0.906811,
		0.852364, -0.382927, -0.356150,
		0.476086, 0.849994, 0.225502,
		33.481136, 32.432011, 25.762266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746616, 31.631382, 25.906050>,  <33.147877, 31.837015, 25.604416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746616, 31.631382, 25.906050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699932, 32.009712, 26.027241>,  <33.671921, 32.236710, 26.099955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699932, 32.009712, 26.027241>,  <33.746616, 31.631382, 25.906050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699932, 32.009712, 26.027241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189510, -0.278248, 0.941629,
		0.974918, 0.167316, -0.146768,
		-0.116711, 0.945824, 0.302977,
		33.664917, 32.293461, 26.118134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286659, 31.658384, 26.329540>,  <33.746616, 31.631382, 25.906050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286659, 31.658384, 26.329540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.039623, 31.960354, 26.417791>,  <33.891403, 32.141537, 26.470741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.039623, 31.960354, 26.417791>,  <34.286659, 31.658384, 26.329540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039623, 31.960354, 26.417791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105501, -0.198464, 0.974413,
		0.779395, 0.625060, 0.042923,
		-0.617586, 0.754925, 0.220626,
		33.854347, 32.186832, 26.483980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612465, 31.936115, 26.827875>,  <34.286659, 31.658384, 26.329540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612465, 31.936115, 26.827875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.248493, 32.096039, 26.872019>,  <34.030109, 32.191994, 26.898506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.248493, 32.096039, 26.872019>,  <34.612465, 31.936115, 26.827875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248493, 32.096039, 26.872019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147050, 0.062182, 0.987173,
		0.387818, 0.914487, -0.115373,
		-0.909930, 0.399809, 0.110360,
		33.975513, 32.215981, 26.905127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622025, 32.590092, 27.211855>,  <34.612465, 31.936115, 26.827875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622025, 32.590092, 27.211855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.249962, 32.459827, 27.279676>,  <34.026722, 32.381668, 27.320370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.249962, 32.459827, 27.279676>,  <34.622025, 32.590092, 27.211855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249962, 32.459827, 27.279676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161614, 0.051491, 0.985510,
		-0.329674, 0.944083, 0.004737,
		-0.930159, -0.325662, 0.169553,
		33.970913, 32.362129, 27.330542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386753, 32.935722, 27.751431>,  <34.622025, 32.590092, 27.211855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386753, 32.935722, 27.751431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.112610, 32.645439, 27.775528>,  <33.948124, 32.471268, 27.789986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.112610, 32.645439, 27.775528>,  <34.386753, 32.935722, 27.751431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112610, 32.645439, 27.775528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173815, -0.082693, 0.981300,
		-0.707156, 0.683015, 0.182814,
		-0.685361, -0.725708, 0.060242,
		33.907001, 32.427727, 27.793600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069366, 33.036087, 28.287718>,  <34.386753, 32.935722, 27.751431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069366, 33.036087, 28.287718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.982239, 32.650051, 28.229546>,  <33.929962, 32.418430, 28.194643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.982239, 32.650051, 28.229546>,  <34.069366, 33.036087, 28.287718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982239, 32.650051, 28.229546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093609, -0.168979, 0.981165,
		-0.971489, 0.200105, 0.127148,
		-0.217822, -0.965093, -0.145430,
		33.916893, 32.360523, 28.185917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498722, 32.974205, 28.732086>,  <34.069366, 33.036087, 28.287718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498722, 32.974205, 28.732086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694897, 32.631496, 28.668320>,  <33.812603, 32.425873, 28.630060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694897, 32.631496, 28.668320>,  <33.498722, 32.974205, 28.732086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694897, 32.631496, 28.668320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078228, -0.138905, 0.987211,
		-0.867959, -0.496634, -0.001100,
		0.490436, -0.856773, -0.159415,
		33.842026, 32.374466, 28.620495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062088, 32.391636, 29.041079>,  <33.498722, 32.974205, 28.732086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062088, 32.391636, 29.041079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.449352, 32.292431, 29.027431>,  <33.681709, 32.232906, 29.019243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.449352, 32.292431, 29.027431>,  <33.062088, 32.391636, 29.041079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449352, 32.292431, 29.027431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005635, -0.114664, 0.993388,
		-0.250285, -0.961947, -0.109615,
		0.968155, -0.248013, -0.034119,
		33.739799, 32.218029, 29.017197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129242, 32.050465, 29.668898>,  <33.062088, 32.391636, 29.041079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129242, 32.050465, 29.668898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519722, 32.071144, 29.584642>,  <33.754009, 32.083553, 29.534090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519722, 32.071144, 29.584642>,  <33.129242, 32.050465, 29.668898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519722, 32.071144, 29.584642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215014, -0.103232, 0.971140,
		0.028461, -0.993313, -0.111890,
		0.976196, 0.051697, -0.210638,
		33.812580, 32.086655, 29.521450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592560, 31.548273, 30.137819>,  <33.129242, 32.050465, 29.668898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592560, 31.548273, 30.137819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.833878, 31.832996, 29.993950>,  <33.978668, 32.003830, 29.907629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.833878, 31.832996, 29.993950>,  <33.592560, 31.548273, 30.137819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833878, 31.832996, 29.993950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219381, 0.285471, 0.932941,
		0.766749, -0.641746, 0.016067,
		0.603297, 0.711806, -0.359672,
		34.014866, 32.046539, 29.886049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064358, 31.503551, 30.682014>,  <33.592560, 31.548273, 30.137819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064358, 31.503551, 30.682014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.162373, 31.847441, 30.502758>,  <34.221180, 32.053776, 30.395205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.162373, 31.847441, 30.502758>,  <34.064358, 31.503551, 30.682014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162373, 31.847441, 30.502758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115721, 0.432994, 0.893938,
		0.962583, -0.270908, 0.006612,
		0.245038, 0.859724, -0.448142,
		34.235886, 32.105358, 30.368315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766323, 31.757141, 30.871202>,  <34.064358, 31.503551, 30.682014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766323, 31.757141, 30.871202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.580029, 32.087345, 30.743692>,  <34.468250, 32.285469, 30.667187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.580029, 32.087345, 30.743692>,  <34.766323, 31.757141, 30.871202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580029, 32.087345, 30.743692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030253, 0.374871, 0.926583,
		0.884404, 0.421903, -0.199567,
		-0.465740, 0.825511, -0.318774,
		34.440308, 32.334999, 30.648060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505798, 31.884312, 30.882578>,  <34.766323, 31.757141, 30.871202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505798, 31.884312, 30.882578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704048, 31.571812, 31.034370>,  <35.822998, 31.384312, 31.125446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704048, 31.571812, 31.034370>,  <35.505798, 31.884312, 30.882578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704048, 31.571812, 31.034370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311354, -0.248065, -0.917345,
		0.810810, 0.572813, 0.120297,
		0.495626, -0.781248, 0.379482,
		35.852737, 31.337437, 31.148214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155796, 31.869917, 30.544165>,  <35.505798, 31.884312, 30.882578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155796, 31.869917, 30.544165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076302, 31.499954, 30.673811>,  <36.028606, 31.277977, 30.751598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076302, 31.499954, 30.673811>,  <36.155796, 31.869917, 30.544165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076302, 31.499954, 30.673811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003052, -0.330126, -0.943932,
		0.980048, -0.188583, 0.062785,
		-0.198737, -0.924907, 0.324115,
		36.016682, 31.222483, 30.771046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620033, 31.589951, 30.186476>,  <36.155796, 31.869917, 30.544165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620033, 31.589951, 30.186476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375683, 31.291281, 30.291779>,  <36.229073, 31.112080, 30.354961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375683, 31.291281, 30.291779>,  <36.620033, 31.589951, 30.186476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375683, 31.291281, 30.291779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000125, -0.332423, -0.943130,
		0.791723, -0.576173, 0.202977,
		-0.610880, -0.746673, 0.263259,
		36.192417, 31.067280, 30.370756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966869, 30.970591, 29.902397>,  <36.620033, 31.589951, 30.186476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966869, 30.970591, 29.902397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571651, 30.927900, 29.946913>,  <36.334522, 30.902287, 29.973623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571651, 30.927900, 29.946913>,  <36.966869, 30.970591, 29.902397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571651, 30.927900, 29.946913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067718, -0.348087, -0.935013,
		0.138530, -0.931367, 0.336696,
		-0.988041, -0.106727, 0.111290,
		36.275238, 30.895882, 29.980299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783279, 30.309366, 29.592524>,  <36.966869, 30.970591, 29.902397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783279, 30.309366, 29.592524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434750, 30.504192, 29.616405>,  <36.225632, 30.621088, 29.630735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434750, 30.504192, 29.616405>,  <36.783279, 30.309366, 29.592524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434750, 30.504192, 29.616405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187344, -0.217724, -0.957862,
		-0.453542, -0.845792, 0.280956,
		-0.871322, 0.487066, 0.059707,
		36.173351, 30.650312, 29.634317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369488, 29.892948, 29.163641>,  <36.783279, 30.309366, 29.592524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369488, 29.892948, 29.163641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150131, 30.225960, 29.195023>,  <36.018517, 30.425768, 29.213852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150131, 30.225960, 29.195023>,  <36.369488, 29.892948, 29.163641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150131, 30.225960, 29.195023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167476, -0.017430, -0.985722,
		-0.819277, -0.553704, 0.148987,
		-0.548395, 0.832531, 0.078452,
		35.985611, 30.475719, 29.218557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830830, 29.732082, 28.754892>,  <36.369488, 29.892948, 29.163641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830830, 29.732082, 28.754892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.855106, 30.130426, 28.781960>,  <35.869671, 30.369432, 28.798201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.855106, 30.130426, 28.781960>,  <35.830830, 29.732082, 28.754892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855106, 30.130426, 28.781960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180669, 0.077634, -0.980475,
		-0.981670, 0.047282, 0.184633,
		0.060693, 0.995860, 0.067668,
		35.873314, 30.429184, 28.802259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304432, 29.932268, 28.334227>,  <35.830830, 29.732082, 28.754892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304432, 29.932268, 28.334227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559299, 30.238422, 28.370445>,  <35.712219, 30.422115, 28.392176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559299, 30.238422, 28.370445>,  <35.304432, 29.932268, 28.334227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559299, 30.238422, 28.370445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041325, 0.151241, -0.987633,
		-0.769612, 0.625552, 0.127996,
		0.637173, 0.765383, 0.090546,
		35.750450, 30.468037, 28.397610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041737, 30.522009, 27.836990>,  <35.304432, 29.932268, 28.334227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041737, 30.522009, 27.836990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.419247, 30.628397, 27.915522>,  <35.645752, 30.692230, 27.962641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.419247, 30.628397, 27.915522>,  <35.041737, 30.522009, 27.836990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419247, 30.628397, 27.915522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149588, 0.186021, -0.971092,
		-0.294803, 0.945863, 0.135777,
		0.943777, 0.265970, 0.196329,
		35.702381, 30.708187, 27.974421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191864, 31.121199, 27.486277>,  <35.041737, 30.522009, 27.836990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191864, 31.121199, 27.486277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.556183, 30.965881, 27.542383>,  <35.774773, 30.872690, 27.576048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.556183, 30.965881, 27.542383>,  <35.191864, 31.121199, 27.486277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556183, 30.965881, 27.542383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200317, 0.118551, -0.972532,
		0.360999, 0.913879, 0.185758,
		0.910798, -0.388293, 0.140268,
		35.829422, 30.849394, 27.584463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638916, 31.675962, 27.171371>,  <35.191864, 31.121199, 27.486277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638916, 31.675962, 27.171371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.782871, 31.302887, 27.161808>,  <35.869244, 31.079042, 27.156071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.782871, 31.302887, 27.161808>,  <35.638916, 31.675962, 27.171371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782871, 31.302887, 27.161808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178955, 0.094157, -0.979342,
		0.915671, 0.348179, 0.200795,
		0.359892, -0.932688, -0.023908,
		35.890839, 31.023081, 27.154636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360687, 31.728867, 26.904663>,  <35.638916, 31.675962, 27.171371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360687, 31.728867, 26.904663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218834, 31.362499, 26.829475>,  <36.133724, 31.142679, 26.784363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218834, 31.362499, 26.829475>,  <36.360687, 31.728867, 26.904663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218834, 31.362499, 26.829475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154393, 0.140915, -0.977909,
		0.922172, -0.375816, 0.091439,
		-0.354628, -0.915918, -0.187971,
		36.112446, 31.087725, 26.773085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811684, 31.527843, 26.448154>,  <36.360687, 31.728867, 26.904663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811684, 31.527843, 26.448154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488243, 31.298134, 26.396957>,  <36.294178, 31.160309, 26.366240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488243, 31.298134, 26.396957>,  <36.811684, 31.527843, 26.448154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488243, 31.298134, 26.396957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019122, 0.191774, -0.981253,
		0.588053, -0.795885, -0.144086,
		-0.808596, -0.574274, -0.127992,
		36.245663, 31.125853, 26.358561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952469, 30.923067, 26.013269>,  <36.811684, 31.527843, 26.448154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952469, 30.923067, 26.013269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.563961, 31.015665, 25.991228>,  <36.330856, 31.071224, 25.978003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.563961, 31.015665, 25.991228>,  <36.952469, 30.923067, 26.013269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563961, 31.015665, 25.991228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102825, 0.199452, -0.974498,
		-0.214602, -0.952170, -0.217526,
		-0.971274, 0.231496, -0.055104,
		36.272579, 31.085114, 25.974697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428566, 30.436756, 25.937847>,  <36.952469, 30.923067, 26.013269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428566, 30.436756, 25.937847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764526, 30.264956, 25.805128>,  <37.966103, 30.161875, 25.725496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764526, 30.264956, 25.805128>,  <37.428566, 30.436756, 25.937847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764526, 30.264956, 25.805128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315308, -0.111440, 0.942424,
		-0.441749, -0.896163, 0.041827,
		0.839904, -0.429502, -0.331796,
		38.016499, 30.136105, 25.705589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491917, 29.864994, 26.297934>,  <37.428566, 30.436756, 25.937847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491917, 29.864994, 26.297934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865185, 29.959908, 26.189939>,  <38.089146, 30.016855, 26.125143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865185, 29.959908, 26.189939>,  <37.491917, 29.864994, 26.297934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865185, 29.959908, 26.189939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297572, -0.088678, 0.950572,
		0.201616, -0.967384, -0.153361,
		0.933168, 0.237286, -0.269987,
		38.145134, 30.031094, 26.108944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840973, 29.328163, 26.583845>,  <37.491917, 29.864994, 26.297934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840973, 29.328163, 26.583845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110626, 29.617846, 26.525784>,  <38.272419, 29.791655, 26.490948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110626, 29.617846, 26.525784>,  <37.840973, 29.328163, 26.583845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110626, 29.617846, 26.525784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252644, -0.041426, 0.966672,
		0.694057, -0.688338, -0.210893,
		0.674133, 0.724207, -0.145152,
		38.312866, 29.835108, 26.482239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452259, 29.058889, 26.761837>,  <37.840973, 29.328163, 26.583845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452259, 29.058889, 26.761837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.523109, 29.452448, 26.771423>,  <38.565620, 29.688583, 26.777176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.523109, 29.452448, 26.771423>,  <38.452259, 29.058889, 26.761837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523109, 29.452448, 26.771423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459945, -0.104279, 0.881803,
		0.870103, -0.145164, -0.471008,
		0.177122, 0.983897, 0.023966,
		38.576244, 29.747618, 26.778614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114922, 29.052885, 26.983009>,  <38.452259, 29.058889, 26.761837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114922, 29.052885, 26.983009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.940632, 29.404135, 27.062046>,  <38.836060, 29.614885, 27.109468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.940632, 29.404135, 27.062046>,  <39.114922, 29.052885, 26.983009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940632, 29.404135, 27.062046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369767, -0.025510, 0.928774,
		0.820621, 0.477749, -0.313587,
		-0.435721, 0.878126, 0.197590,
		38.809914, 29.667572, 27.121323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614254, 29.414967, 27.279610>,  <39.114922, 29.052885, 26.983009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614254, 29.414967, 27.279610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285778, 29.607359, 27.402447>,  <39.088692, 29.722794, 27.476149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285778, 29.607359, 27.402447>,  <39.614254, 29.414967, 27.279610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285778, 29.607359, 27.402447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310996, -0.074001, 0.947526,
		0.478468, 0.873602, -0.088815,
		-0.821188, 0.480982, 0.307094,
		39.039421, 29.751654, 27.494576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806347, 29.893137, 27.873037>,  <39.614254, 29.414967, 27.279610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806347, 29.893137, 27.873037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.411755, 29.854870, 27.926258>,  <39.174999, 29.831909, 27.958191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.411755, 29.854870, 27.926258>,  <39.806347, 29.893137, 27.873037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411755, 29.854870, 27.926258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137798, -0.044831, 0.989445,
		-0.088694, 0.994403, 0.057408,
		-0.986481, -0.095669, 0.133050,
		39.115810, 29.826170, 27.966173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463879, 30.475082, 28.311588>,  <39.806347, 29.893137, 27.873037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463879, 30.475082, 28.311588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172321, 30.207573, 28.370174>,  <38.997387, 30.047068, 28.405327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172321, 30.207573, 28.370174>,  <39.463879, 30.475082, 28.311588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172321, 30.207573, 28.370174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032879, 0.179495, 0.983209,
		-0.683834, 0.721474, -0.108844,
		-0.728896, -0.668773, 0.146466,
		38.953651, 30.006941, 28.414114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113018, 30.737297, 28.848969>,  <39.463879, 30.475082, 28.311588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113018, 30.737297, 28.848969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997070, 30.355841, 28.816610>,  <38.927502, 30.126966, 28.797195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997070, 30.355841, 28.816610>,  <39.113018, 30.737297, 28.848969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997070, 30.355841, 28.816610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105689, -0.052110, 0.993033,
		-0.951212, 0.296400, -0.085684,
		-0.289870, -0.953641, -0.080894,
		38.910110, 30.069748, 28.792341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516125, 30.770035, 29.121441>,  <39.113018, 30.737297, 28.848969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516125, 30.770035, 29.121441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604740, 30.380386, 29.139368>,  <38.657909, 30.146597, 29.150126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604740, 30.380386, 29.139368>,  <38.516125, 30.770035, 29.121441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604740, 30.380386, 29.139368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190979, 0.001731, 0.981592,
		-0.956268, -0.226018, -0.185653,
		0.221536, -0.974121, 0.044820,
		38.671200, 30.088150, 29.152815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924397, 30.509443, 29.480183>,  <38.516125, 30.770035, 29.121441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924397, 30.509443, 29.480183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235859, 30.261335, 29.518049>,  <38.422737, 30.112471, 29.540770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235859, 30.261335, 29.518049>,  <37.924397, 30.509443, 29.480183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235859, 30.261335, 29.518049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129042, -0.010656, 0.991582,
		-0.614040, -0.784316, -0.088338,
		0.778655, -0.620270, 0.094667,
		38.469456, 30.075254, 29.546450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652664, 30.075218, 29.988779>,  <37.924397, 30.509443, 29.480183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652664, 30.075218, 29.988779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038677, 29.970369, 29.987482>,  <38.270283, 29.907459, 29.986704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038677, 29.970369, 29.987482>,  <37.652664, 30.075218, 29.988779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038677, 29.970369, 29.987482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105065, -0.398081, 0.911314,
		-0.240168, -0.879103, -0.411700,
		0.965029, -0.262124, -0.003243,
		38.328186, 29.891731, 29.986509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627270, 29.369526, 30.170744>,  <37.652664, 30.075218, 29.988779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627270, 29.369526, 30.170744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969765, 29.556232, 30.259277>,  <38.175262, 29.668257, 30.312397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969765, 29.556232, 30.259277>,  <37.627270, 29.369526, 30.170744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969765, 29.556232, 30.259277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054527, -0.507723, 0.859793,
		0.513699, -0.724117, -0.460182,
		0.856236, 0.466767, 0.221333,
		38.226635, 29.696262, 30.325678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066734, 28.845314, 30.456144>,  <37.627270, 29.369526, 30.170744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066734, 28.845314, 30.456144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258221, 29.173323, 30.581617>,  <38.373112, 29.370129, 30.656902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258221, 29.173323, 30.581617>,  <38.066734, 28.845314, 30.456144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258221, 29.173323, 30.581617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077441, -0.395329, 0.915269,
		0.874549, -0.413860, -0.252753,
		0.478714, 0.820021, 0.313684,
		38.401836, 29.419329, 30.675722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.471214, 31.095821, 25.825520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.168137, 31.342560, 25.740294>,  <40.986290, 31.490602, 25.689157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.168137, 31.342560, 25.740294>,  <41.471214, 31.095821, 25.825520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168137, 31.342560, 25.740294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224742, -0.553146, -0.802197,
		-0.612691, -0.559935, 0.557748,
		-0.757694, 0.616848, -0.213067,
		40.940826, 31.527615, 25.676374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858654, 30.705502, 25.616405>,  <41.471214, 31.095821, 25.825520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858654, 30.705502, 25.616405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.788345, 31.068050, 25.462736>,  <40.746159, 31.285580, 25.370535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.788345, 31.068050, 25.462736>,  <40.858654, 30.705502, 25.616405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788345, 31.068050, 25.462736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376525, -0.422477, -0.824464,
		-0.909578, -0.000268, 0.415533,
		-0.175774, 0.906374, -0.384175,
		40.735615, 31.339962, 25.347483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302895, 30.601042, 25.135193>,  <40.858654, 30.705502, 25.616405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302895, 30.601042, 25.135193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.460739, 30.955339, 25.037424>,  <40.555447, 31.167917, 24.978764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.460739, 30.955339, 25.037424>,  <40.302895, 30.601042, 25.135193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460739, 30.955339, 25.037424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287931, -0.133409, -0.948313,
		-0.872569, 0.444593, 0.202388,
		0.394613, 0.885742, -0.244421,
		40.579124, 31.221062, 24.964098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805569, 30.931160, 24.767218>,  <40.302895, 30.601042, 25.135193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805569, 30.931160, 24.767218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.122337, 31.146048, 24.651112>,  <40.312401, 31.274981, 24.581448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.122337, 31.146048, 24.651112>,  <39.805569, 30.931160, 24.767218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122337, 31.146048, 24.651112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348656, 0.007566, -0.937221,
		-0.501295, 0.843410, 0.193296,
		0.791923, 0.537218, -0.290266,
		40.359913, 31.307213, 24.564032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566750, 31.350929, 24.144459>,  <39.805569, 30.931160, 24.767218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566750, 31.350929, 24.144459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.964638, 31.388491, 24.127893>,  <40.203369, 31.411028, 24.117954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.964638, 31.388491, 24.127893>,  <39.566750, 31.350929, 24.144459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964638, 31.388491, 24.127893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055816, 0.156365, -0.986121,
		-0.086124, 0.983226, 0.160781,
		0.994720, 0.093903, -0.041413,
		40.263054, 31.416662, 24.115469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755955, 32.058048, 23.923725>,  <39.566750, 31.350929, 24.144459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755955, 32.058048, 23.923725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060719, 31.814690, 23.834869>,  <40.243576, 31.668674, 23.781557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060719, 31.814690, 23.834869>,  <39.755955, 32.058048, 23.923725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060719, 31.814690, 23.834869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178145, 0.132894, -0.974989,
		0.622701, 0.782428, -0.007129,
		0.761911, -0.608396, -0.222138,
		40.289291, 31.632172, 23.768229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120224, 32.344051, 23.399412>,  <39.755955, 32.058048, 23.923725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120224, 32.344051, 23.399412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.226055, 31.958925, 23.377567>,  <40.289555, 31.727850, 23.364460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.226055, 31.958925, 23.377567>,  <40.120224, 32.344051, 23.399412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226055, 31.958925, 23.377567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158265, 0.099211, -0.982400,
		0.951289, 0.251277, 0.178629,
		0.264577, -0.962817, -0.054611,
		40.305428, 31.670080, 23.361185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623531, 32.384190, 22.977776>,  <40.120224, 32.344051, 23.399412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623531, 32.384190, 22.977776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.512730, 32.000000, 22.966722>,  <40.446251, 31.769487, 22.960091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.512730, 32.000000, 22.966722>,  <40.623531, 32.384190, 22.977776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512730, 32.000000, 22.966722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009275, 0.026084, -0.999617,
		0.960825, -0.277152, 0.001683,
		-0.277001, -0.960472, -0.027632,
		40.429630, 31.711859, 22.958433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000324, 32.048828, 22.416674>,  <40.623531, 32.384190, 22.977776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000324, 32.048828, 22.416674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.711895, 31.787027, 22.507614>,  <40.538837, 31.629948, 22.562178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.711895, 31.787027, 22.507614>,  <41.000324, 32.048828, 22.416674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711895, 31.787027, 22.507614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079772, -0.247526, -0.965592,
		0.688253, -0.714397, 0.126274,
		-0.721072, -0.654498, 0.227349,
		40.495575, 31.590677, 22.575819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168941, 31.413332, 22.076849>,  <41.000324, 32.048828, 22.416674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168941, 31.413332, 22.076849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.774212, 31.440641, 22.135530>,  <40.537376, 31.457027, 22.170740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.774212, 31.440641, 22.135530>,  <41.168941, 31.413332, 22.076849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774212, 31.440641, 22.135530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150181, -0.048880, -0.987449,
		-0.060261, -0.996467, 0.058491,
		-0.986820, 0.068289, 0.146705,
		40.478165, 31.461123, 22.179543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866634, 30.887585, 21.741087>,  <41.168941, 31.413332, 22.076849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866634, 30.887585, 21.741087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.577999, 31.157084, 21.804811>,  <40.404819, 31.318783, 21.843046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.577999, 31.157084, 21.804811>,  <40.866634, 30.887585, 21.741087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577999, 31.157084, 21.804811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209144, 0.007224, -0.977858,
		-0.659982, -0.738925, 0.135698,
		-0.721583, 0.673749, 0.159309,
		40.361523, 31.359209, 21.852604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438992, 30.762129, 21.130186>,  <40.866634, 30.887585, 21.741087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438992, 30.762129, 21.130186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276222, 31.084883, 21.301462>,  <40.178558, 31.278536, 21.404228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276222, 31.084883, 21.301462>,  <40.438992, 30.762129, 21.130186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276222, 31.084883, 21.301462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262508, 0.345687, -0.900883,
		-0.874929, -0.478996, 0.071145,
		-0.406925, 0.806886, 0.428191,
		40.154144, 31.326948, 21.429920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747837, 30.814363, 20.891607>,  <40.438992, 30.762129, 21.130186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747837, 30.814363, 20.891607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825218, 31.192078, 20.998117>,  <39.871647, 31.418705, 21.062023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825218, 31.192078, 20.998117>,  <39.747837, 30.814363, 20.891607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825218, 31.192078, 20.998117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156696, 0.297659, -0.941725,
		-0.968515, 0.140458, 0.205549,
		0.193456, 0.944283, 0.266278,
		39.883255, 31.475363, 21.078001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322006, 31.272741, 20.546906>,  <39.747837, 30.814363, 20.891607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322006, 31.272741, 20.546906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666180, 31.453100, 20.641857>,  <39.872684, 31.561316, 20.698828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666180, 31.453100, 20.641857>,  <39.322006, 31.272741, 20.546906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666180, 31.453100, 20.641857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109775, 0.290886, -0.950439,
		-0.497599, 0.843847, 0.200791,
		0.860433, 0.450896, 0.237379,
		39.924309, 31.588369, 20.713070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780788, 30.966864, 20.265284>,  <39.322006, 31.272741, 20.546906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780788, 30.966864, 20.265284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473263, 30.720766, 20.195541>,  <38.288746, 30.573109, 20.153696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473263, 30.720766, 20.195541>,  <38.780788, 30.966864, 20.265284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473263, 30.720766, 20.195541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323536, 0.139058, 0.935942,
		-0.551586, 0.775976, -0.305963,
		-0.768816, -0.615242, -0.174354,
		38.242619, 30.536194, 20.143234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218067, 31.276991, 20.443382>,  <38.780788, 30.966864, 20.265284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218067, 31.276991, 20.443382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163074, 30.885059, 20.501389>,  <38.130077, 30.649900, 20.536192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163074, 30.885059, 20.501389>,  <38.218067, 31.276991, 20.443382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163074, 30.885059, 20.501389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200657, 0.170922, 0.964636,
		-0.969967, 0.103523, -0.220109,
		-0.137483, -0.979831, 0.145016,
		38.121830, 30.591110, 20.544893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677139, 31.193548, 20.981415>,  <38.218067, 31.276991, 20.443382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677139, 31.193548, 20.981415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826889, 30.823130, 20.962299>,  <37.916737, 30.600878, 20.950830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826889, 30.823130, 20.962299>,  <37.677139, 31.193548, 20.981415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826889, 30.823130, 20.962299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250222, -0.150513, 0.956418,
		-0.892880, -0.346097, -0.288065,
		0.374371, -0.926046, -0.047789,
		37.939201, 30.545315, 20.947964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178566, 30.761925, 21.292427>,  <37.677139, 31.193548, 20.981415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178566, 30.761925, 21.292427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524242, 30.560743, 21.298235>,  <37.731647, 30.440035, 21.301720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524242, 30.560743, 21.298235>,  <37.178566, 30.761925, 21.292427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524242, 30.560743, 21.298235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228631, -0.366809, 0.901764,
		-0.448221, -0.782616, -0.431984,
		0.864191, -0.502955, 0.014519,
		37.783501, 30.409857, 21.302591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069130, 30.095469, 21.617445>,  <37.178566, 30.761925, 21.292427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069130, 30.095469, 21.617445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467224, 30.116241, 21.650442>,  <37.706081, 30.128704, 21.670240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467224, 30.116241, 21.650442>,  <37.069130, 30.095469, 21.617445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467224, 30.116241, 21.650442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064612, -0.282211, 0.957174,
		0.072988, -0.957946, -0.277511,
		0.995237, 0.051931, 0.082493,
		37.765797, 30.131821, 21.675190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164192, 29.558092, 22.002560>,  <37.069130, 30.095469, 21.617445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164192, 29.558092, 22.002560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485489, 29.792315, 22.046246>,  <37.678268, 29.932848, 22.072456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485489, 29.792315, 22.046246>,  <37.164192, 29.558092, 22.002560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485489, 29.792315, 22.046246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157201, -0.385244, 0.909326,
		0.574536, -0.713240, -0.401494,
		0.803241, 0.585556, 0.109215,
		37.726460, 29.967981, 22.079010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690533, 29.125805, 22.259056>,  <37.164192, 29.558092, 22.002560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690533, 29.125805, 22.259056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.818920, 29.488100, 22.369774>,  <37.895954, 29.705477, 22.436205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.818920, 29.488100, 22.369774>,  <37.690533, 29.125805, 22.259056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818920, 29.488100, 22.369774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103286, -0.323992, 0.940405,
		0.941441, -0.273250, -0.197542,
		0.320967, 0.905739, 0.276797,
		37.915211, 29.759821, 22.452812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249641, 28.994556, 22.739906>,  <37.690533, 29.125805, 22.259056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249641, 28.994556, 22.739906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158253, 29.379004, 22.801950>,  <38.103420, 29.609671, 22.839176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158253, 29.379004, 22.801950>,  <38.249641, 28.994556, 22.739906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158253, 29.379004, 22.801950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183601, -0.113928, 0.976377,
		0.956082, 0.251550, -0.150433,
		-0.228469, 0.961115, 0.155110,
		38.089710, 29.667337, 22.848484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698215, 29.198364, 23.192110>,  <38.249641, 28.994556, 22.739906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698215, 29.198364, 23.192110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416496, 29.479410, 23.232697>,  <38.247463, 29.648037, 23.257050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416496, 29.479410, 23.232697>,  <38.698215, 29.198364, 23.192110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416496, 29.479410, 23.232697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031152, -0.112206, 0.993196,
		0.709218, 0.702670, 0.057139,
		-0.704301, 0.702612, 0.101468,
		38.205208, 29.690193, 23.263138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945873, 29.630024, 23.717796>,  <38.698215, 29.198364, 23.192110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945873, 29.630024, 23.717796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.564743, 29.745409, 23.680031>,  <38.336063, 29.814640, 23.657372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.564743, 29.745409, 23.680031>,  <38.945873, 29.630024, 23.717796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564743, 29.745409, 23.680031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036437, 0.200106, 0.979097,
		0.301325, 0.936348, -0.180155,
		-0.952825, 0.288462, -0.094414,
		38.278896, 29.831947, 23.651707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917316, 30.319178, 23.978285>,  <38.945873, 29.630024, 23.717796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917316, 30.319178, 23.978285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547981, 30.166534, 23.995380>,  <38.326382, 30.074949, 24.005638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547981, 30.166534, 23.995380>,  <38.917316, 30.319178, 23.978285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547981, 30.166534, 23.995380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061860, 0.257665, 0.964252,
		-0.378977, 0.887685, -0.261518,
		-0.923336, -0.381607, 0.042737,
		38.270981, 30.052052, 24.008202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507305, 30.808851, 24.298342>,  <38.917316, 30.319178, 23.978285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507305, 30.808851, 24.298342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317036, 30.463192, 24.364048>,  <38.202873, 30.255796, 24.403471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317036, 30.463192, 24.364048>,  <38.507305, 30.808851, 24.298342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317036, 30.463192, 24.364048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112591, 0.245024, 0.962957,
		-0.872389, 0.439554, -0.213846,
		-0.475669, -0.864150, 0.164266,
		38.174335, 30.203947, 24.413328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059097, 30.995245, 24.838663>,  <38.507305, 30.808851, 24.298342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059097, 30.995245, 24.838663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090240, 30.596516, 24.831917>,  <38.108925, 30.357279, 24.827869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090240, 30.596516, 24.831917>,  <38.059097, 30.995245, 24.838663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090240, 30.596516, 24.831917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041130, -0.013689, 0.999060,
		-0.996116, -0.078479, 0.039934,
		0.077858, -0.996822, -0.016864,
		38.113598, 30.297468, 24.826859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593430, 30.816553, 25.259665>,  <38.059097, 30.995245, 24.838663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593430, 30.816553, 25.259665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.843750, 30.505186, 25.239931>,  <37.993942, 30.318365, 25.228092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.843750, 30.505186, 25.239931>,  <37.593430, 30.816553, 25.259665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843750, 30.505186, 25.239931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024866, -0.043305, 0.998752,
		-0.779585, -0.626249, -0.007744,
		0.625803, -0.778420, -0.049332,
		38.031490, 30.271660, 25.225132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824848, 30.730892, 25.344484>,  <37.593430, 30.816553, 25.259665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824848, 30.730892, 25.344484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465588, 30.876791, 25.442694>,  <36.250031, 30.964331, 25.501619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465588, 30.876791, 25.442694>,  <36.824848, 30.730892, 25.344484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465588, 30.876791, 25.442694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121664, 0.330431, -0.935956,
		-0.422516, -0.870502, -0.252401,
		-0.898152, 0.364748, 0.245522,
		36.196140, 30.986216, 25.516350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341232, 30.497984, 24.754499>,  <36.824848, 30.730892, 25.344484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341232, 30.497984, 24.754499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.164173, 30.800163, 24.947725>,  <36.057938, 30.981472, 25.063662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.164173, 30.800163, 24.947725>,  <36.341232, 30.497984, 24.754499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164173, 30.800163, 24.947725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306986, 0.378493, -0.873214,
		-0.842508, -0.534824, 0.064372,
		-0.442652, 0.755451, 0.483066,
		36.031376, 31.026798, 25.092646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659016, 30.405006, 24.639347>,  <36.341232, 30.497984, 24.754499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659016, 30.405006, 24.639347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.677399, 30.792345, 24.737480>,  <35.688427, 31.024748, 24.796360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.677399, 30.792345, 24.737480>,  <35.659016, 30.405006, 24.639347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677399, 30.792345, 24.737480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390136, 0.243487, -0.887980,
		-0.919610, -0.054908, 0.388977,
		0.045954, 0.968349, 0.245335,
		35.691185, 31.082850, 24.811081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005241, 30.803844, 24.383121>,  <35.659016, 30.405006, 24.639347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005241, 30.803844, 24.383121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.296738, 31.072994, 24.434004>,  <35.471634, 31.234484, 24.464533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.296738, 31.072994, 24.434004>,  <35.005241, 30.803844, 24.383121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296738, 31.072994, 24.434004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210782, 0.397144, -0.893223,
		-0.651547, 0.624112, 0.431244,
		0.728737, 0.672875, 0.127206,
		35.515358, 31.274857, 24.472166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774933, 31.406393, 24.239782>,  <35.005241, 30.803844, 24.383121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774933, 31.406393, 24.239782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169285, 31.431473, 24.177675>,  <35.405895, 31.446520, 24.140411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169285, 31.431473, 24.177675>,  <34.774933, 31.406393, 24.239782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169285, 31.431473, 24.177675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166376, 0.262005, -0.950617,
		-0.018923, 0.963027, 0.268738,
		0.985881, 0.062700, -0.155267,
		35.465050, 31.450283, 24.131096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851646, 31.890324, 23.592588>,  <34.774933, 31.406393, 24.239782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851646, 31.890324, 23.592588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.220909, 31.740206, 23.625904>,  <35.442467, 31.650135, 23.645893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.220909, 31.740206, 23.625904>,  <34.851646, 31.890324, 23.592588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220909, 31.740206, 23.625904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085559, -0.010646, -0.996276,
		0.374782, 0.926845, 0.022282,
		0.923157, -0.375293, 0.083290,
		35.497856, 31.627619, 23.650890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206333, 32.290813, 23.200550>,  <34.851646, 31.890324, 23.592588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206333, 32.290813, 23.200550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408352, 31.947353, 23.235523>,  <35.529564, 31.741276, 23.256506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408352, 31.947353, 23.235523>,  <35.206333, 32.290813, 23.200550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408352, 31.947353, 23.235523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106299, -0.162410, -0.980981,
		0.856522, 0.486147, -0.173298,
		0.505046, -0.858653, 0.087431,
		35.559864, 31.689758, 23.261753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308399, 33.024746, 23.376352>,  <35.206333, 32.290813, 23.200550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308399, 33.024746, 23.376352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.066494, 33.289665, 23.199434>,  <34.921352, 33.448616, 23.093283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.066494, 33.289665, 23.199434>,  <35.308399, 33.024746, 23.376352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066494, 33.289665, 23.199434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628016, -0.055060, 0.776250,
		0.489756, 0.747214, 0.449232,
		-0.604760, 0.662298, -0.442296,
		34.885067, 33.488354, 23.066746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304893, 33.465084, 23.820400>,  <35.308399, 33.024746, 23.376352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304893, 33.465084, 23.820400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972000, 33.509563, 23.603136>,  <34.772263, 33.536251, 23.472778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972000, 33.509563, 23.603136>,  <35.304893, 33.465084, 23.820400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972000, 33.509563, 23.603136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539531, 0.063131, 0.839596,
		0.127651, 0.991791, 0.007454,
		-0.832233, 0.111196, -0.543161,
		34.722332, 33.542923, 23.440187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002224, 33.951721, 24.171902>,  <35.304893, 33.465084, 23.820400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002224, 33.951721, 24.171902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715107, 33.781303, 23.951628>,  <34.542835, 33.679050, 23.819464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715107, 33.781303, 23.951628>,  <35.002224, 33.951721, 24.171902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715107, 33.781303, 23.951628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589391, -0.049243, 0.806346,
		-0.370658, 0.903360, -0.215762,
		-0.717796, -0.426046, -0.550685,
		34.499767, 33.653488, 23.786423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402134, 34.186234, 24.460352>,  <35.002224, 33.951721, 24.171902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402134, 34.186234, 24.460352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251083, 33.876968, 24.256540>,  <34.160454, 33.691410, 24.134254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251083, 33.876968, 24.256540>,  <34.402134, 34.186234, 24.460352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251083, 33.876968, 24.256540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591276, -0.222128, 0.775275,
		-0.712593, 0.594038, -0.373270,
		-0.377629, -0.773161, -0.509527,
		34.137794, 33.645020, 24.103682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707588, 34.080898, 24.754992>,  <34.402134, 34.186234, 24.460352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707588, 34.080898, 24.754992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.777012, 33.730957, 24.574099>,  <33.818668, 33.520992, 24.465563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.777012, 33.730957, 24.574099>,  <33.707588, 34.080898, 24.754992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777012, 33.730957, 24.574099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523879, -0.470855, 0.709821,
		-0.833923, 0.113716, -0.540038,
		0.173562, -0.874851, -0.452230,
		33.829079, 33.468502, 24.438429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054287, 33.750469, 24.673943>,  <33.707588, 34.080898, 24.754992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054287, 33.750469, 24.673943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.329388, 33.461224, 24.648319>,  <33.494450, 33.287678, 24.632946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.329388, 33.461224, 24.648319>,  <33.054287, 33.750469, 24.673943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329388, 33.461224, 24.648319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356675, -0.413447, 0.837762,
		-0.632282, -0.553324, -0.542265,
		0.687752, -0.723115, -0.064058,
		33.535713, 33.244289, 24.629103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698723, 33.187225, 25.067831>,  <33.054287, 33.750469, 24.673943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698723, 33.187225, 25.067831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084793, 33.084007, 25.050610>,  <33.316437, 33.022076, 25.040277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084793, 33.084007, 25.050610>,  <32.698723, 33.187225, 25.067831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084793, 33.084007, 25.050610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064176, -0.393081, 0.917262,
		-0.253613, -0.882555, -0.395952,
		0.965175, -0.258040, -0.043052,
		33.374344, 33.006596, 25.037693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.728199, 33.571442, 19.983801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.013599, 33.363022, 20.171169>,  <39.184841, 33.237968, 20.283590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.013599, 33.363022, 20.171169>,  <38.728199, 33.571442, 19.983801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013599, 33.363022, 20.171169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375649, 0.279859, 0.883497,
		-0.591440, -0.806340, 0.003947,
		0.713503, -0.521053, 0.468420,
		39.227650, 33.206707, 20.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443642, 33.395763, 20.613983>,  <38.728199, 33.571442, 19.983801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443642, 33.395763, 20.613983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.835499, 33.379906, 20.692694>,  <39.070614, 33.370392, 20.739920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.835499, 33.379906, 20.692694>,  <38.443642, 33.395763, 20.613983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835499, 33.379906, 20.692694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174338, 0.317864, 0.931970,
		-0.099496, -0.947307, 0.304482,
		0.979646, -0.039644, 0.196778,
		39.129395, 33.368011, 20.751728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543648, 33.102337, 21.284719>,  <38.443642, 33.395763, 20.613983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543648, 33.102337, 21.284719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.888893, 33.301117, 21.248760>,  <39.096039, 33.420383, 21.227184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.888893, 33.301117, 21.248760>,  <38.543648, 33.102337, 21.284719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888893, 33.301117, 21.248760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069686, 0.293509, 0.953413,
		0.500184, -0.816636, 0.287961,
		0.863111, 0.496949, -0.089901,
		39.147827, 33.450203, 21.221790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882526, 32.897697, 21.860197>,  <38.543648, 33.102337, 21.284719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882526, 32.897697, 21.860197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.083271, 33.230381, 21.765207>,  <39.203716, 33.429993, 21.708214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.083271, 33.230381, 21.765207>,  <38.882526, 32.897697, 21.860197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083271, 33.230381, 21.765207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025795, 0.260041, 0.965253,
		0.864566, -0.490545, 0.109050,
		0.501858, 0.831712, -0.237476,
		39.233829, 33.479893, 21.693964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311733, 32.999550, 22.353401>,  <38.882526, 32.897697, 21.860197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311733, 32.999550, 22.353401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378799, 33.358185, 22.189438>,  <39.419041, 33.573364, 22.091059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378799, 33.358185, 22.189438>,  <39.311733, 32.999550, 22.353401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378799, 33.358185, 22.189438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084004, 0.401291, 0.912091,
		0.982258, -0.187362, -0.008033,
		0.167667, 0.896583, -0.409910,
		39.429100, 33.627159, 22.066465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896259, 33.310966, 22.723703>,  <39.311733, 32.999550, 22.353401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896259, 33.310966, 22.723703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.684532, 33.617020, 22.577070>,  <39.557495, 33.800652, 22.489090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.684532, 33.617020, 22.577070>,  <39.896259, 33.310966, 22.723703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684532, 33.617020, 22.577070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025678, 0.446328, 0.894501,
		0.848033, 0.464064, -0.255898,
		-0.529321, 0.765137, -0.366585,
		39.525738, 33.846561, 22.467094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281330, 33.870365, 22.990616>,  <39.896259, 33.310966, 22.723703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281330, 33.870365, 22.990616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911957, 33.999889, 22.908226>,  <39.690334, 34.077602, 22.858793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911957, 33.999889, 22.908226>,  <40.281330, 33.870365, 22.990616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911957, 33.999889, 22.908226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056435, 0.645455, 0.761710,
		0.379596, 0.691761, -0.614307,
		-0.923429, 0.323811, -0.205972,
		39.634930, 34.097034, 22.846434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235073, 34.657215, 22.848082>,  <40.281330, 33.870365, 22.990616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235073, 34.657215, 22.848082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.886154, 34.516201, 22.983622>,  <39.676804, 34.431591, 23.064945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.886154, 34.516201, 22.983622>,  <40.235073, 34.657215, 22.848082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886154, 34.516201, 22.983622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064236, 0.769586, 0.635304,
		-0.484740, 0.532407, -0.693952,
		-0.872296, -0.352534, 0.338849,
		39.624466, 34.410442, 23.085276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938805, 35.130207, 23.166796>,  <40.235073, 34.657215, 22.848082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938805, 35.130207, 23.166796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.702034, 34.847473, 23.321720>,  <39.559971, 34.677834, 23.414675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.702034, 34.847473, 23.321720>,  <39.938805, 35.130207, 23.166796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702034, 34.847473, 23.321720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080816, 0.530170, 0.844031,
		-0.801930, 0.468303, -0.370945,
		-0.591926, -0.706832, 0.387313,
		39.524456, 34.635422, 23.437914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410892, 35.427822, 23.518145>,  <39.938805, 35.130207, 23.166796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410892, 35.427822, 23.518145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.417145, 35.068386, 23.693550>,  <39.420895, 34.852726, 23.798794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.417145, 35.068386, 23.693550>,  <39.410892, 35.427822, 23.518145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417145, 35.068386, 23.693550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254115, 0.420599, 0.870931,
		-0.967048, -0.125046, -0.221771,
		0.015630, -0.898588, 0.438516,
		39.421833, 34.798809, 23.825106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784931, 35.419323, 23.930647>,  <39.410892, 35.427822, 23.518145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784931, 35.419323, 23.930647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046383, 35.156612, 24.081068>,  <39.203255, 34.998985, 24.171322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046383, 35.156612, 24.081068>,  <38.784931, 35.419323, 23.930647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046383, 35.156612, 24.081068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094666, 0.422037, 0.901623,
		-0.750873, -0.624924, 0.213680,
		0.653627, -0.656776, 0.376055,
		39.242470, 34.959579, 24.193884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530926, 35.348007, 24.534178>,  <38.784931, 35.419323, 23.930647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530926, 35.348007, 24.534178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900299, 35.197395, 24.563818>,  <39.121922, 35.107029, 24.581602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900299, 35.197395, 24.563818>,  <38.530926, 35.348007, 24.534178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900299, 35.197395, 24.563818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073370, 0.362762, 0.928989,
		-0.376677, -0.852423, 0.362614,
		0.923434, -0.376534, 0.074102,
		39.177330, 35.084435, 24.586048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933750, 35.062336, 24.258196>,  <38.530926, 35.348007, 24.534178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933750, 35.062336, 24.258196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.683331, 35.367680, 24.321875>,  <37.533077, 35.550884, 24.360083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.683331, 35.367680, 24.321875>,  <37.933750, 35.062336, 24.258196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683331, 35.367680, 24.321875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133586, 0.306129, -0.942571,
		-0.768254, -0.568832, -0.293627,
		-0.626052, 0.763358, 0.159197,
		37.495514, 35.596687, 24.369635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544353, 35.085011, 23.736616>,  <37.933750, 35.062336, 24.258196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544353, 35.085011, 23.736616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470879, 35.460400, 23.853600>,  <37.426792, 35.685631, 23.923790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470879, 35.460400, 23.853600>,  <37.544353, 35.085011, 23.736616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470879, 35.460400, 23.853600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194614, 0.256911, -0.946637,
		-0.963527, -0.230800, 0.135449,
		-0.183686, 0.938471, 0.292458,
		37.415771, 35.741940, 23.941338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887192, 35.241470, 23.467611>,  <37.544353, 35.085011, 23.736616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887192, 35.241470, 23.467611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048206, 35.600208, 23.540972>,  <37.144817, 35.815449, 23.584988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048206, 35.600208, 23.540972>,  <36.887192, 35.241470, 23.467611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048206, 35.600208, 23.540972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271862, 0.308434, -0.911570,
		-0.874102, 0.317083, 0.367974,
		0.402539, 0.896843, 0.183399,
		37.168968, 35.869263, 23.595991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434956, 35.709496, 23.104992>,  <36.887192, 35.241470, 23.467611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434956, 35.709496, 23.104992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.770203, 35.905251, 23.201372>,  <36.971352, 36.022705, 23.259201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.770203, 35.905251, 23.201372>,  <36.434956, 35.709496, 23.104992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770203, 35.905251, 23.201372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092844, 0.563251, -0.821053,
		-0.537532, 0.665767, 0.517506,
		0.838116, 0.489390, 0.240953,
		37.021637, 36.052067, 23.273659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321766, 36.317623, 22.851284>,  <36.434956, 35.709496, 23.104992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321766, 36.317623, 22.851284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.718491, 36.268917, 22.866692>,  <36.956524, 36.239693, 22.875937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.718491, 36.268917, 22.866692>,  <36.321766, 36.317623, 22.851284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718491, 36.268917, 22.866692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095667, 0.508567, -0.855691,
		0.084602, 0.852369, 0.516052,
		0.991812, -0.121762, 0.038518,
		37.016033, 36.232388, 22.878246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689690, 37.016453, 22.700003>,  <36.321766, 36.317623, 22.851284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689690, 37.016453, 22.700003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.945961, 36.722252, 22.611860>,  <37.099724, 36.545731, 22.558975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.945961, 36.722252, 22.611860>,  <36.689690, 37.016453, 22.700003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945961, 36.722252, 22.611860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048927, 0.325521, -0.944268,
		0.766246, 0.594195, 0.244541,
		0.640682, -0.735506, -0.220357,
		37.138165, 36.501598, 22.545753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257912, 37.336712, 22.303129>,  <36.689690, 37.016453, 22.700003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257912, 37.336712, 22.303129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.275661, 36.949524, 22.204279>,  <37.286312, 36.717213, 22.144968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.275661, 36.949524, 22.204279>,  <37.257912, 37.336712, 22.303129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275661, 36.949524, 22.204279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342313, 0.247126, -0.906505,
		0.938538, -0.044370, 0.342313,
		0.044373, -0.967967, -0.247126,
		37.288975, 36.659134, 22.130142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729954, 37.397087, 21.809254>,  <37.257912, 37.336712, 22.303129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729954, 37.397087, 21.809254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.638107, 37.010857, 21.760355>,  <37.583000, 36.779118, 21.731016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.638107, 37.010857, 21.760355>,  <37.729954, 37.397087, 21.809254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638107, 37.010857, 21.760355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147459, 0.089639, -0.984998,
		0.962045, -0.244201, 0.121800,
		-0.229619, -0.965573, -0.122246,
		37.569221, 36.721184, 21.723680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186207, 37.241650, 21.298588>,  <37.729954, 37.397087, 21.809254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186207, 37.241650, 21.298588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882904, 36.982193, 21.272352>,  <37.700920, 36.826519, 21.256611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882904, 36.982193, 21.272352>,  <38.186207, 37.241650, 21.298588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882904, 36.982193, 21.272352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015662, 0.082454, -0.996472,
		0.651764, -0.756612, -0.052363,
		-0.758260, -0.648645, -0.065590,
		37.655426, 36.787601, 21.252676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250851, 36.779793, 20.726456>,  <38.186207, 37.241650, 21.298588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250851, 36.779793, 20.726456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.859936, 36.721165, 20.787678>,  <37.625385, 36.685989, 20.824411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.859936, 36.721165, 20.787678>,  <38.250851, 36.779793, 20.726456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859936, 36.721165, 20.787678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136026, -0.119963, -0.983415,
		0.162499, -0.981899, 0.097301,
		-0.977288, -0.146569, 0.153057,
		37.566750, 36.677193, 20.833595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046848, 36.202473, 20.417126>,  <38.250851, 36.779793, 20.726456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046848, 36.202473, 20.417126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.706959, 36.410480, 20.451866>,  <37.503025, 36.535286, 20.472710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.706959, 36.410480, 20.451866>,  <38.046848, 36.202473, 20.417126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706959, 36.410480, 20.451866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200646, -0.166627, -0.965389,
		-0.487554, -0.837741, 0.245928,
		-0.849725, 0.520024, 0.086849,
		37.452042, 36.566486, 20.477921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497528, 35.779106, 20.117716>,  <38.046848, 36.202473, 20.417126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497528, 35.779106, 20.117716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.368294, 36.157650, 20.115543>,  <37.290752, 36.384777, 20.114241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.368294, 36.157650, 20.115543>,  <37.497528, 35.779106, 20.117716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368294, 36.157650, 20.115543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270795, -0.097944, -0.957641,
		-0.906801, -0.307926, 0.287912,
		-0.323082, 0.946355, -0.005431,
		37.271370, 36.441555, 20.113914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762672, 35.789921, 19.887365>,  <37.497528, 35.779106, 20.117716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762672, 35.789921, 19.887365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916550, 36.142735, 19.778540>,  <37.008877, 36.354424, 19.713243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916550, 36.142735, 19.778540>,  <36.762672, 35.789921, 19.887365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916550, 36.142735, 19.778540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204155, -0.206143, -0.956988,
		-0.900185, 0.423689, 0.100771,
		0.384692, 0.882039, -0.272065,
		37.031956, 36.407345, 19.696920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664333, 35.388062, 20.403797>,  <36.762672, 35.789921, 19.887365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664333, 35.388062, 20.403797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.449017, 35.072899, 20.284174>,  <36.319824, 34.883801, 20.212400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.449017, 35.072899, 20.284174>,  <36.664333, 35.388062, 20.403797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449017, 35.072899, 20.284174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233157, -0.201776, 0.951275,
		-0.809861, 0.581796, -0.075091,
		-0.538297, -0.787908, -0.299060,
		36.287529, 34.836525, 20.194456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215000, 35.395481, 20.903913>,  <36.664333, 35.388062, 20.403797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215000, 35.395481, 20.903913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.159992, 35.033855, 20.742044>,  <36.126987, 34.816879, 20.644922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.159992, 35.033855, 20.742044>,  <36.215000, 35.395481, 20.903913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159992, 35.033855, 20.742044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425486, -0.315019, 0.848366,
		-0.894454, 0.288854, -0.341342,
		-0.137524, -0.904061, -0.404674,
		36.118736, 34.762638, 20.620642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531330, 35.266693, 21.008554>,  <36.215000, 35.395481, 20.903913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531330, 35.266693, 21.008554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.672981, 34.896645, 20.953796>,  <35.757973, 34.674614, 20.920942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.672981, 34.896645, 20.953796>,  <35.531330, 35.266693, 21.008554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672981, 34.896645, 20.953796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475042, -0.304037, 0.825770,
		-0.805560, -0.227400, -0.547141,
		0.354131, -0.925122, -0.136895,
		35.779221, 34.619106, 20.912727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942013, 34.852970, 20.973879>,  <35.531330, 35.266693, 21.008554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942013, 34.852970, 20.973879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.275547, 34.657246, 21.076084>,  <35.475666, 34.539810, 21.137407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.275547, 34.657246, 21.076084>,  <34.942013, 34.852970, 20.973879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275547, 34.657246, 21.076084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437069, -0.302489, 0.847036,
		-0.337183, -0.817964, -0.466093,
		0.833833, -0.489322, 0.255512,
		35.525700, 34.510452, 21.152739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684654, 34.182934, 21.133654>,  <34.942013, 34.852970, 20.973879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684654, 34.182934, 21.133654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.033253, 34.179558, 21.329786>,  <35.242413, 34.177532, 21.447466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.033253, 34.179558, 21.329786>,  <34.684654, 34.182934, 21.133654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033253, 34.179558, 21.329786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453238, -0.395679, 0.798758,
		0.187275, -0.918350, -0.348656,
		0.871495, -0.008437, 0.490332,
		35.294701, 34.177029, 21.476887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700508, 33.557423, 21.416426>,  <34.684654, 34.182934, 21.133654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700508, 33.557423, 21.416426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.942425, 33.776989, 21.647219>,  <35.087574, 33.908730, 21.785694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.942425, 33.776989, 21.647219>,  <34.700508, 33.557423, 21.416426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942425, 33.776989, 21.647219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358489, -0.459302, 0.812729,
		0.711133, -0.698376, -0.081002,
		0.604794, 0.548920, 0.576984,
		35.123863, 33.941666, 21.820314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941479, 33.066441, 21.818798>,  <34.700508, 33.557423, 21.416426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941479, 33.066441, 21.818798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.018566, 33.406792, 22.014294>,  <35.064819, 33.611004, 22.131590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.018566, 33.406792, 22.014294>,  <34.941479, 33.066441, 21.818798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018566, 33.406792, 22.014294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196191, -0.454605, 0.868817,
		0.961442, -0.263319, 0.079326,
		0.192714, 0.850880, 0.488737,
		35.076382, 33.662056, 22.160915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130981, 32.800728, 22.514872>,  <34.941479, 33.066441, 21.818798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130981, 32.800728, 22.514872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034618, 33.186378, 22.559460>,  <34.976799, 33.417767, 22.586212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034618, 33.186378, 22.559460>,  <35.130981, 32.800728, 22.514872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034618, 33.186378, 22.559460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411338, -0.205455, 0.888026,
		0.879069, 0.168084, 0.446077,
		-0.240912, 0.964125, 0.111469,
		34.962345, 33.475616, 22.592901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716454, 32.350441, 22.642849>,  <35.130981, 32.800728, 22.514872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716454, 32.350441, 22.642849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.725246, 31.957706, 22.718235>,  <35.730522, 31.722067, 22.763466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.725246, 31.957706, 22.718235>,  <35.716454, 32.350441, 22.642849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725246, 31.957706, 22.718235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046801, -0.187293, -0.981188,
		0.998662, 0.030385, 0.041834,
		0.021978, -0.981834, 0.188464,
		35.731838, 31.663157, 22.774775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342987, 32.059650, 22.393673>,  <35.716454, 32.350441, 22.642849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342987, 32.059650, 22.393673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.070244, 31.768463, 22.422319>,  <35.906597, 31.593752, 22.439507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.070244, 31.768463, 22.422319>,  <36.342987, 32.059650, 22.393673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070244, 31.768463, 22.422319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203788, -0.283081, -0.937195,
		0.702521, -0.624443, 0.341373,
		-0.681861, -0.727967, 0.071616,
		35.865685, 31.550074, 22.443804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575981, 31.508595, 21.923162>,  <36.342987, 32.059650, 22.393673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575981, 31.508595, 21.923162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.201843, 31.381681, 21.985731>,  <35.977360, 31.305534, 22.023272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.201843, 31.381681, 21.985731>,  <36.575981, 31.508595, 21.923162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201843, 31.381681, 21.985731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008333, -0.461821, -0.886934,
		0.353647, -0.828283, 0.434605,
		-0.935342, -0.317284, 0.156420,
		35.921242, 31.286497, 22.032658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523136, 30.730679, 21.757906>,  <36.575981, 31.508595, 21.923162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523136, 30.730679, 21.757906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150448, 30.873957, 21.733938>,  <35.926834, 30.959923, 21.719559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150448, 30.873957, 21.733938>,  <36.523136, 30.730679, 21.757906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150448, 30.873957, 21.733938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134993, -0.494747, -0.858488,
		-0.337149, -0.791785, 0.509321,
		-0.931723, 0.358193, -0.059917,
		35.870930, 30.981415, 21.715963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995724, 30.168991, 21.656446>,  <36.523136, 30.730679, 21.757906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995724, 30.168991, 21.656446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.804810, 30.488640, 21.510239>,  <35.690262, 30.680429, 21.422514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.804810, 30.488640, 21.510239>,  <35.995724, 30.168991, 21.656446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804810, 30.488640, 21.510239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132389, -0.476596, -0.869097,
		-0.868721, -0.366414, 0.333265,
		-0.477281, 0.799123, -0.365519,
		35.661625, 30.728376, 21.400583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493031, 29.980457, 21.247761>,  <35.995724, 30.168991, 21.656446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493031, 29.980457, 21.247761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.538403, 30.350473, 21.102745>,  <35.565624, 30.572483, 21.015736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.538403, 30.350473, 21.102745>,  <35.493031, 29.980457, 21.247761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538403, 30.350473, 21.102745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033243, -0.361154, -0.931913,
		-0.992990, 0.117760, -0.010215,
		0.113431, 0.925041, -0.362537,
		35.572433, 30.627985, 20.993984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299599, 29.945730, 20.544695>,  <35.493031, 29.980457, 21.247761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299599, 29.945730, 20.544695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.431381, 30.322006, 20.512300>,  <35.510448, 30.547771, 20.492865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.431381, 30.322006, 20.512300>,  <35.299599, 29.945730, 20.544695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431381, 30.322006, 20.512300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018249, -0.079415, -0.996675,
		-0.943996, 0.329836, -0.008997,
		0.329453, 0.940692, -0.080986,
		35.530216, 30.604214, 20.488005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923687, 30.327766, 20.075424>,  <35.299599, 29.945730, 20.544695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923687, 30.327766, 20.075424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.275238, 30.518341, 20.065750>,  <35.486168, 30.632687, 20.059946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.275238, 30.518341, 20.065750>,  <34.923687, 30.327766, 20.075424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275238, 30.518341, 20.065750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013932, -0.076307, -0.996987,
		-0.476848, 0.875890, -0.073702,
		0.878875, 0.476438, -0.024184,
		35.538902, 30.661272, 20.058495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867893, 30.939455, 19.578466>,  <34.923687, 30.327766, 20.075424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867893, 30.939455, 19.578466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.245667, 30.811539, 19.608862>,  <35.472332, 30.734789, 19.627100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.245667, 30.811539, 19.608862>,  <34.867893, 30.939455, 19.578466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245667, 30.811539, 19.608862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060042, -0.059456, -0.996424,
		0.323167, 0.945620, -0.036951,
		0.944435, -0.319792, 0.075991,
		35.528996, 30.715601, 19.631659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.437931, 32.647831, 36.189434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775322, 32.504665, 36.029217>,  <36.977757, 32.418766, 35.933086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775322, 32.504665, 36.029217>,  <36.437931, 32.647831, 36.189434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775322, 32.504665, 36.029217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443960, -0.044737, -0.894929,
		0.302393, 0.932680, -0.196636,
		0.843480, -0.357919, -0.400545,
		37.028366, 32.397289, 35.909054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558010, 33.018314, 35.562656>,  <36.437931, 32.647831, 36.189434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558010, 33.018314, 35.562656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791027, 32.693897, 35.541309>,  <36.930840, 32.499249, 35.528500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791027, 32.693897, 35.541309>,  <36.558010, 33.018314, 35.562656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791027, 32.693897, 35.541309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256579, -0.121190, -0.958896,
		0.771238, 0.572294, -0.278695,
		0.582545, -0.811044, -0.053372,
		36.965790, 32.450584, 35.525299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952019, 33.104248, 34.950733>,  <36.558010, 33.018314, 35.562656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952019, 33.104248, 34.950733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006222, 32.710602, 34.996613>,  <37.038742, 32.474415, 35.024139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006222, 32.710602, 34.996613>,  <36.952019, 33.104248, 34.950733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006222, 32.710602, 34.996613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173636, -0.137561, -0.975155,
		0.975443, 0.112225, -0.189518,
		0.135507, -0.984115, 0.114696,
		37.046875, 32.415367, 35.031021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455254, 32.921471, 34.460445>,  <36.952019, 33.104248, 34.950733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455254, 32.921471, 34.460445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230984, 32.600906, 34.543758>,  <37.096424, 32.408566, 34.593746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230984, 32.600906, 34.543758>,  <37.455254, 32.921471, 34.460445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230984, 32.600906, 34.543758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236067, -0.086398, -0.967888,
		0.793676, -0.591835, -0.140747,
		-0.560670, -0.801415, 0.208285,
		37.062782, 32.360481, 34.606243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524208, 32.474518, 33.859207>,  <37.455254, 32.921471, 34.460445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524208, 32.474518, 33.859207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202053, 32.323643, 34.042103>,  <37.008759, 32.233116, 34.151840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202053, 32.323643, 34.042103>,  <37.524208, 32.474518, 33.859207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202053, 32.323643, 34.042103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402056, -0.219183, -0.888994,
		0.435541, -0.899825, 0.024876,
		-0.805391, -0.377192, 0.457243,
		36.960434, 32.210484, 34.179276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472141, 31.859833, 33.522167>,  <37.524208, 32.474518, 33.859207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472141, 31.859833, 33.522167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107903, 31.879654, 33.686295>,  <36.889359, 31.891546, 33.784771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107903, 31.879654, 33.686295>,  <37.472141, 31.859833, 33.522167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107903, 31.879654, 33.686295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399527, -0.359711, -0.843200,
		0.105814, -0.931747, 0.347348,
		-0.910594, 0.049552, 0.410321,
		36.834724, 31.894520, 33.809391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157383, 31.199326, 33.454594>,  <37.472141, 31.859833, 33.522167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157383, 31.199326, 33.454594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839943, 31.440605, 33.486462>,  <36.649479, 31.585373, 33.505585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839943, 31.440605, 33.486462>,  <37.157383, 31.199326, 33.454594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839943, 31.440605, 33.486462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357132, -0.355787, -0.863639,
		-0.492602, -0.713837, 0.497775,
		-0.793600, 0.603202, 0.079673,
		36.601864, 31.621565, 33.510365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627956, 30.724695, 33.382614>,  <37.157383, 31.199326, 33.454594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627956, 30.724695, 33.382614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511391, 31.097759, 33.297550>,  <36.441452, 31.321598, 33.246513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511391, 31.097759, 33.297550>,  <36.627956, 30.724695, 33.382614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511391, 31.097759, 33.297550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408225, -0.322295, -0.854095,
		-0.865118, -0.162084, 0.474657,
		-0.291414, 0.932660, -0.212656,
		36.423965, 31.377558, 33.233753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935001, 30.647758, 33.118767>,  <36.627956, 30.724695, 33.382614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935001, 30.647758, 33.118767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077431, 31.000404, 32.994858>,  <36.162888, 31.211992, 32.920513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077431, 31.000404, 32.994858>,  <35.935001, 30.647758, 33.118767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077431, 31.000404, 32.994858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376545, -0.168029, -0.911033,
		-0.855233, 0.441042, 0.272137,
		0.356077, 0.881617, -0.309776,
		36.184254, 31.264889, 32.901924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335545, 30.952950, 32.864826>,  <35.935001, 30.647758, 33.118767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335545, 30.952950, 32.864826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655796, 31.140476, 32.715584>,  <35.847946, 31.252993, 32.626038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655796, 31.140476, 32.715584>,  <35.335545, 30.952950, 32.864826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655796, 31.140476, 32.715584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239575, -0.320286, -0.916526,
		-0.549184, 0.823182, -0.144112,
		0.800625, 0.468816, -0.373110,
		35.895985, 31.281120, 32.603649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060764, 31.337801, 32.189224>,  <35.335545, 30.952950, 32.864826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060764, 31.337801, 32.189224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458027, 31.332502, 32.142807>,  <35.696384, 31.329323, 32.114956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458027, 31.332502, 32.142807>,  <35.060764, 31.337801, 32.189224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458027, 31.332502, 32.142807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116793, -0.114769, -0.986503,
		-0.000248, 0.993304, -0.115531,
		0.993156, -0.013248, -0.116039,
		35.755974, 31.328527, 32.107994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137119, 31.698616, 31.591146>,  <35.060764, 31.337801, 32.189224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137119, 31.698616, 31.591146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457092, 31.459801, 31.615295>,  <35.649078, 31.316511, 31.629786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457092, 31.459801, 31.615295>,  <35.137119, 31.698616, 31.591146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457092, 31.459801, 31.615295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039949, -0.047403, -0.998077,
		0.598753, 0.800810, -0.014068,
		0.799937, -0.597040, 0.060374,
		35.697075, 31.280689, 31.633408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078934, 32.340260, 31.214407>,  <35.137119, 31.698616, 31.591146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078934, 32.340260, 31.214407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.724129, 32.490372, 31.106800>,  <34.511246, 32.580437, 31.042236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.724129, 32.490372, 31.106800>,  <35.078934, 32.340260, 31.214407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724129, 32.490372, 31.106800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006430, 0.592598, 0.805472,
		0.461695, 0.712736, -0.528057,
		-0.887015, 0.375279, -0.269017,
		34.458023, 32.602955, 31.026094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056313, 33.051121, 31.475723>,  <35.078934, 32.340260, 31.214407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056313, 33.051121, 31.475723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665310, 33.007729, 31.403376>,  <34.430710, 32.981693, 31.359966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665310, 33.007729, 31.403376>,  <35.056313, 33.051121, 31.475723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665310, 33.007729, 31.403376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210812, 0.476416, 0.853572,
		-0.006429, 0.872501, -0.488569,
		-0.977505, -0.108484, -0.180871,
		34.372059, 32.975182, 31.349113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770535, 33.694347, 31.657394>,  <35.056313, 33.051121, 31.475723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770535, 33.694347, 31.657394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475002, 33.424805, 31.654640>,  <34.297684, 33.263081, 31.652988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475002, 33.424805, 31.654640>,  <34.770535, 33.694347, 31.657394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475002, 33.424805, 31.654640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329343, 0.352148, 0.876085,
		-0.587931, 0.649546, -0.482108,
		-0.738830, -0.673856, -0.006885,
		34.253353, 33.222649, 31.652575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300102, 33.982841, 32.053982>,  <34.770535, 33.694347, 31.657394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300102, 33.982841, 32.053982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.148884, 33.613258, 32.030735>,  <34.058151, 33.391506, 32.016785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.148884, 33.613258, 32.030735>,  <34.300102, 33.982841, 32.053982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148884, 33.613258, 32.030735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399008, 0.105967, 0.910804,
		-0.835388, 0.367517, -0.408728,
		-0.378047, -0.923960, -0.058119,
		34.035469, 33.336071, 32.013298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601551, 34.156765, 32.152348>,  <34.300102, 33.982841, 32.053982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601551, 34.156765, 32.152348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693466, 33.784103, 32.264931>,  <33.748615, 33.560505, 32.332481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693466, 33.784103, 32.264931>,  <33.601551, 34.156765, 32.152348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693466, 33.784103, 32.264931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397317, 0.174197, 0.900996,
		-0.888447, -0.318861, -0.330135,
		0.229784, -0.931656, 0.281454,
		33.762402, 33.504608, 32.349365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011337, 33.931087, 32.463676>,  <33.601551, 34.156765, 32.152348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011337, 33.931087, 32.463676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287971, 33.675476, 32.598343>,  <33.453953, 33.522110, 32.679142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287971, 33.675476, 32.598343>,  <33.011337, 33.931087, 32.463676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287971, 33.675476, 32.598343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388656, 0.063639, 0.919183,
		-0.608810, -0.766545, -0.204351,
		0.691590, -0.639030, 0.336666,
		33.495449, 33.483768, 32.699345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673187, 33.512123, 32.977814>,  <33.011337, 33.931087, 32.463676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673187, 33.512123, 32.977814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062981, 33.468243, 33.056152>,  <33.296856, 33.441914, 33.103153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062981, 33.468243, 33.056152>,  <32.673187, 33.512123, 32.977814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062981, 33.468243, 33.056152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184754, 0.103555, 0.977314,
		-0.127491, -0.988556, 0.080645,
		0.974481, -0.109699, 0.195842,
		33.355324, 33.435333, 33.114906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696083, 33.290684, 33.746735>,  <32.673187, 33.512123, 32.977814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696083, 33.290684, 33.746735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076786, 33.376820, 33.659294>,  <33.305206, 33.428501, 33.606831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076786, 33.376820, 33.659294>,  <32.696083, 33.290684, 33.746735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076786, 33.376820, 33.659294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165812, 0.238517, 0.956878,
		0.258197, -0.946962, 0.191304,
		0.951757, 0.215342, -0.218602,
		33.362312, 33.441422, 33.593712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164875, 32.866329, 34.158039>,  <32.696083, 33.290684, 33.746735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164875, 32.866329, 34.158039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.375843, 33.187756, 34.047695>,  <33.502426, 33.380611, 33.981487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.375843, 33.187756, 34.047695>,  <33.164875, 32.866329, 34.158039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375843, 33.187756, 34.047695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291824, 0.133593, 0.947096,
		0.797911, -0.580025, -0.164040,
		0.527424, 0.803570, -0.275861,
		33.534069, 33.428825, 33.964935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567825, 32.879761, 34.688610>,  <33.164875, 32.866329, 34.158039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567825, 32.879761, 34.688610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652851, 33.233082, 34.521473>,  <33.703865, 33.445076, 34.421192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652851, 33.233082, 34.521473>,  <33.567825, 32.879761, 34.688610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652851, 33.233082, 34.521473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248914, 0.364561, 0.897294,
		0.944912, -0.294740, -0.142373,
		0.212565, 0.883303, -0.417843,
		33.716621, 33.498074, 34.396122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238518, 33.130444, 34.980072>,  <33.567825, 32.879761, 34.688610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238518, 33.130444, 34.980072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047680, 33.467617, 34.880596>,  <33.933178, 33.669922, 34.820911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047680, 33.467617, 34.880596>,  <34.238518, 33.130444, 34.980072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047680, 33.467617, 34.880596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220360, 0.388672, 0.894637,
		0.850776, 0.372028, -0.371183,
		-0.477098, 0.842929, -0.248693,
		33.904549, 33.720497, 34.805988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726162, 33.664299, 35.288280>,  <34.238518, 33.130444, 34.980072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726162, 33.664299, 35.288280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393211, 33.871929, 35.210594>,  <34.193443, 33.996506, 35.163982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393211, 33.871929, 35.210594>,  <34.726162, 33.664299, 35.288280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393211, 33.871929, 35.210594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267147, 0.682816, 0.679996,
		0.485579, 0.514127, -0.707026,
		-0.832373, 0.519072, -0.194214,
		34.143501, 34.027649, 35.152328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892998, 34.437443, 35.110130>,  <34.726162, 33.664299, 35.288280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892998, 34.437443, 35.110130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520702, 34.402660, 35.252209>,  <34.297325, 34.381790, 35.337456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520702, 34.402660, 35.252209>,  <34.892998, 34.437443, 35.110130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520702, 34.402660, 35.252209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226233, 0.626211, 0.746109,
		-0.287312, 0.774789, -0.563164,
		-0.930736, -0.086960, 0.355201,
		34.241482, 34.376572, 35.358768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706688, 35.074123, 35.439335>,  <34.892998, 34.437443, 35.110130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706688, 35.074123, 35.439335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422035, 34.853683, 35.613628>,  <34.251244, 34.721420, 35.718204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422035, 34.853683, 35.613628>,  <34.706688, 35.074123, 35.439335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422035, 34.853683, 35.613628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141229, 0.495340, 0.857142,
		-0.688212, 0.671508, -0.274667,
		-0.711631, -0.551104, 0.435735,
		34.208546, 34.688351, 35.744350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383110, 35.783993, 35.260738>,  <34.706688, 35.074123, 35.439335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383110, 35.783993, 35.260738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206440, 35.697083, 35.608925>,  <34.100437, 35.644936, 35.817837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206440, 35.697083, 35.608925>,  <34.383110, 35.783993, 35.260738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206440, 35.697083, 35.608925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669496, 0.725695, -0.158565,
		-0.597244, -0.652810, -0.465982,
		-0.441673, -0.217271, 0.870470,
		34.073936, 35.631901, 35.870068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697880, 36.415962, 35.071625>,  <34.383110, 35.783993, 35.260738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697880, 36.415962, 35.071625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051414, 36.563271, 35.187008>,  <35.263535, 36.651657, 35.256237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051414, 36.563271, 35.187008>,  <34.697880, 36.415962, 35.071625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051414, 36.563271, 35.187008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107822, 0.439652, -0.891673,
		-0.455199, 0.819195, 0.348873,
		0.883837, 0.368273, 0.288456,
		35.316566, 36.673752, 35.273544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720619, 37.097992, 34.788971>,  <34.697880, 36.415962, 35.071625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720619, 37.097992, 34.788971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090809, 36.954678, 34.838169>,  <35.312923, 36.868687, 34.867687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090809, 36.954678, 34.838169>,  <34.720619, 37.097992, 34.788971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090809, 36.954678, 34.838169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238920, 0.300108, -0.923500,
		0.293966, 0.884062, 0.363345,
		0.925474, -0.358288, 0.122998,
		35.368450, 36.847191, 34.875069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264774, 37.623981, 34.651192>,  <34.720619, 37.097992, 34.788971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264774, 37.623981, 34.651192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417576, 37.258499, 34.595741>,  <35.509258, 37.039211, 34.562469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417576, 37.258499, 34.595741>,  <35.264774, 37.623981, 34.651192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417576, 37.258499, 34.595741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225690, 0.237695, -0.944757,
		0.896180, 0.329613, 0.297014,
		0.382003, -0.913705, -0.138627,
		35.532177, 36.984386, 34.554153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800354, 37.772514, 34.237427>,  <35.264774, 37.623981, 34.651192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800354, 37.772514, 34.237427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762745, 37.376423, 34.196217>,  <35.740181, 37.138767, 34.171490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762745, 37.376423, 34.196217>,  <35.800354, 37.772514, 34.237427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762745, 37.376423, 34.196217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046131, 0.099043, -0.994013,
		0.994501, -0.098212, 0.036368,
		-0.094022, -0.990225, -0.103029,
		35.734539, 37.079357, 34.165306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432877, 37.480812, 33.831669>,  <35.800354, 37.772514, 34.237427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432877, 37.480812, 33.831669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103100, 37.259300, 33.784973>,  <35.905235, 37.126392, 33.756954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103100, 37.259300, 33.784973>,  <36.432877, 37.480812, 33.831669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103100, 37.259300, 33.784973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132004, 0.012428, -0.991171,
		0.550341, -0.832571, 0.062854,
		-0.824439, -0.553779, -0.116742,
		35.855766, 37.093166, 33.749950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781254, 37.012672, 33.509037>,  <36.432877, 37.480812, 33.831669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781254, 37.012672, 33.509037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389664, 36.971256, 33.438736>,  <36.154709, 36.946407, 33.396553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389664, 36.971256, 33.438736>,  <36.781254, 37.012672, 33.509037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389664, 36.971256, 33.438736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193933, -0.205285, -0.959296,
		0.063244, -0.973210, 0.221048,
		-0.978974, -0.103538, -0.175754,
		36.095970, 36.940193, 33.386009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729790, 36.511402, 32.969368>,  <36.781254, 37.012672, 33.509037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729790, 36.511402, 32.969368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354393, 36.646282, 32.939598>,  <36.129154, 36.727211, 32.921738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354393, 36.646282, 32.939598>,  <36.729790, 36.511402, 32.969368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354393, 36.646282, 32.939598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049437, -0.082107, -0.995397,
		-0.341756, -0.937847, 0.060386,
		-0.938488, 0.337197, -0.074425,
		36.072845, 36.747440, 32.917271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313080, 35.954853, 32.659157>,  <36.729790, 36.511402, 32.969368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313080, 35.954853, 32.659157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133965, 36.304337, 32.583141>,  <36.026493, 36.514027, 32.537533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133965, 36.304337, 32.583141>,  <36.313080, 35.954853, 32.659157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133965, 36.304337, 32.583141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137183, -0.142889, -0.980186,
		-0.883551, -0.464989, -0.055874,
		-0.447792, 0.873709, -0.190039,
		35.999626, 36.566448, 32.526131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786499, 35.807301, 32.154282>,  <36.313080, 35.954853, 32.659157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786499, 35.807301, 32.154282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873402, 36.197277, 32.135109>,  <35.925541, 36.431263, 32.123604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873402, 36.197277, 32.135109>,  <35.786499, 35.807301, 32.154282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873402, 36.197277, 32.135109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014541, -0.052334, -0.998524,
		-0.976007, 0.216234, -0.025547,
		0.217252, 0.974938, -0.047934,
		35.938576, 36.489758, 32.120728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516712, 35.936913, 31.559221>,  <35.786499, 35.807301, 32.154282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516712, 35.936913, 31.559221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708138, 36.284233, 31.611408>,  <35.822994, 36.492626, 31.642719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708138, 36.284233, 31.611408>,  <35.516712, 35.936913, 31.559221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708138, 36.284233, 31.611408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078168, 0.105865, -0.991303,
		-0.874566, 0.484600, -0.017210,
		0.478564, 0.868306, 0.130466,
		35.851707, 36.544724, 31.650549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129227, 36.497822, 31.173666>,  <35.516712, 35.936913, 31.559221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129227, 36.497822, 31.173666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511303, 36.609455, 31.213121>,  <35.740547, 36.676437, 31.236794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511303, 36.609455, 31.213121>,  <35.129227, 36.497822, 31.173666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511303, 36.609455, 31.213121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078147, 0.083643, -0.993427,
		-0.285503, 0.956616, 0.058085,
		0.955186, 0.279087, 0.098637,
		35.797859, 36.693180, 31.242712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260529, 36.999298, 30.602791>,  <35.129227, 36.497822, 31.173666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260529, 36.999298, 30.602791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628407, 36.878742, 30.703453>,  <35.849133, 36.806408, 30.763851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628407, 36.878742, 30.703453>,  <35.260529, 36.999298, 30.602791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628407, 36.878742, 30.703453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292768, 0.099300, -0.951013,
		0.261632, 0.948318, 0.179561,
		0.919693, -0.301386, 0.251657,
		35.904316, 36.788326, 30.778950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728409, 37.369068, 30.219273>,  <35.260529, 36.999298, 30.602791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728409, 37.369068, 30.219273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948654, 37.063435, 30.353735>,  <36.080803, 36.880054, 30.434412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948654, 37.063435, 30.353735>,  <35.728409, 37.369068, 30.219273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948654, 37.063435, 30.353735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408578, -0.104480, -0.906724,
		0.727931, 0.636605, 0.254658,
		0.550618, -0.764080, 0.336157,
		36.113838, 36.834209, 30.454582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372368, 37.502941, 30.018475>,  <35.728409, 37.369068, 30.219273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372368, 37.502941, 30.018475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371334, 37.106705, 30.073212>,  <36.370712, 36.868965, 30.106054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371334, 37.106705, 30.073212>,  <36.372368, 37.502941, 30.018475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371334, 37.106705, 30.073212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238604, -0.133504, -0.961897,
		0.971114, 0.030164, 0.236704,
		-0.002586, -0.990589, 0.136844,
		36.370560, 36.809528, 30.114265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997696, 37.251278, 29.758410>,  <36.372368, 37.502941, 30.018475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997696, 37.251278, 29.758410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736485, 36.948864, 29.740644>,  <36.579758, 36.767418, 29.729986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736485, 36.948864, 29.740644>,  <36.997696, 37.251278, 29.758410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736485, 36.948864, 29.740644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288100, -0.193756, -0.937794,
		0.700398, -0.625198, 0.344341,
		-0.653025, -0.756033, -0.044413,
		36.540577, 36.722054, 29.727320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387890, 36.700733, 29.374424>,  <36.997696, 37.251278, 29.758410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387890, 36.700733, 29.374424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998756, 36.610039, 29.355688>,  <36.765278, 36.555622, 29.344446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998756, 36.610039, 29.355688>,  <37.387890, 36.700733, 29.374424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998756, 36.610039, 29.355688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133492, -0.384019, -0.913624,
		0.189163, -0.895054, 0.403852,
		-0.972830, -0.226735, -0.046841,
		36.706909, 36.542019, 29.341637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430122, 35.988224, 29.110346>,  <37.387890, 36.700733, 29.374424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430122, 35.988224, 29.110346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063831, 36.132549, 29.039619>,  <36.844059, 36.219143, 28.997185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063831, 36.132549, 29.039619>,  <37.430122, 35.988224, 29.110346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063831, 36.132549, 29.039619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003573, -0.447344, -0.894355,
		-0.401790, -0.818352, 0.410933,
		-0.915725, 0.360811, -0.176814,
		36.789116, 36.240791, 28.986574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272930, 35.442459, 28.730721>,  <37.430122, 35.988224, 29.110346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272930, 35.442459, 28.730721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015816, 35.740898, 28.661249>,  <36.861546, 35.919960, 28.619566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015816, 35.740898, 28.661249>,  <37.272930, 35.442459, 28.730721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015816, 35.740898, 28.661249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052545, -0.269130, -0.961670,
		-0.764240, -0.609024, 0.212197,
		-0.642788, 0.746096, -0.173679,
		36.822979, 35.964725, 28.609146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746872, 35.180031, 28.337158>,  <37.272930, 35.442459, 28.730721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746872, 35.180031, 28.337158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768730, 35.574524, 28.274727>,  <36.781845, 35.811218, 28.237268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768730, 35.574524, 28.274727>,  <36.746872, 35.180031, 28.337158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768730, 35.574524, 28.274727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110913, -0.161339, -0.980646,
		-0.992327, 0.036275, -0.118203,
		0.054644, 0.986232, -0.156078,
		36.785122, 35.870392, 28.227903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356209, 35.273354, 27.677868>,  <36.746872, 35.180031, 28.337158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356209, 35.273354, 27.677868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563065, 35.614803, 27.702824>,  <36.687180, 35.819672, 27.717798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563065, 35.614803, 27.702824>,  <36.356209, 35.273354, 27.677868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563065, 35.614803, 27.702824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123250, -0.002136, -0.992373,
		-0.846980, 0.520886, -0.106313,
		0.517140, 0.853624, 0.062390,
		36.718208, 35.870892, 27.721540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089695, 35.765549, 27.198257>,  <36.356209, 35.273354, 27.677868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089695, 35.765549, 27.198257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461842, 35.900944, 27.254614>,  <36.685127, 35.982182, 27.288427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461842, 35.900944, 27.254614>,  <36.089695, 35.765549, 27.198257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461842, 35.900944, 27.254614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134465, 0.042488, -0.990007,
		-0.341087, 0.940013, -0.005984,
		0.930365, 0.338483, 0.140891,
		36.740952, 36.002487, 27.296881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134743, 36.333485, 26.758736>,  <36.089695, 35.765549, 27.198257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134743, 36.333485, 26.758736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513634, 36.227688, 26.831175>,  <36.740971, 36.164207, 26.874638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513634, 36.227688, 26.831175>,  <36.134743, 36.333485, 26.758736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513634, 36.227688, 26.831175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191778, 0.014909, -0.981325,
		0.256856, 0.964272, 0.064847,
		0.947231, -0.264495, 0.181097,
		36.797802, 36.148338, 26.885504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483959, 36.587536, 26.226419>,  <36.134743, 36.333485, 26.758736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483959, 36.587536, 26.226419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782101, 36.369804, 26.380383>,  <36.960987, 36.239166, 26.472759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782101, 36.369804, 26.380383>,  <36.483959, 36.587536, 26.226419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782101, 36.369804, 26.380383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505767, 0.085546, -0.858418,
		0.434337, 0.834497, 0.339066,
		0.745353, -0.544331, 0.384906,
		37.005707, 36.206505, 26.495853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127506, 36.903973, 26.065138>,  <36.483959, 36.587536, 26.226419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127506, 36.903973, 26.065138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.191566, 36.516918, 26.143141>,  <37.230003, 36.284683, 26.189943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.191566, 36.516918, 26.143141>,  <37.127506, 36.903973, 26.065138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191566, 36.516918, 26.143141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454325, -0.103129, -0.884846,
		0.876322, 0.230304, 0.423107,
		0.160149, -0.967639, 0.195007,
		37.239613, 36.226627, 26.201643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821121, 36.768890, 25.734753>,  <37.127506, 36.903973, 26.065138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821121, 36.768890, 25.734753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656898, 36.404800, 25.756393>,  <37.558365, 36.186344, 25.769377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656898, 36.404800, 25.756393>,  <37.821121, 36.768890, 25.734753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656898, 36.404800, 25.756393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304129, -0.192629, -0.932952,
		0.859620, -0.366578, 0.355912,
		-0.410559, -0.910228, 0.054101,
		37.533730, 36.131733, 25.772623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313835, 36.296528, 25.490051>,  <37.821121, 36.768890, 25.734753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313835, 36.296528, 25.490051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.944763, 36.144913, 25.461803>,  <37.723320, 36.053944, 25.444855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.944763, 36.144913, 25.461803>,  <38.313835, 36.296528, 25.490051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944763, 36.144913, 25.461803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126175, -0.123760, -0.984258,
		0.364329, -0.917069, 0.162016,
		-0.922683, -0.379036, -0.070622,
		37.667957, 36.031200, 25.440617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334595, 35.645653, 25.205296>,  <38.313835, 36.296528, 25.490051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334595, 35.645653, 25.205296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.983604, 35.798321, 25.089117>,  <37.773010, 35.889923, 25.019409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.983604, 35.798321, 25.089117>,  <38.334595, 35.645653, 25.205296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983604, 35.798321, 25.089117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213464, -0.231508, -0.949125,
		-0.429497, -0.894835, 0.121669,
		-0.877477, 0.381674, -0.290447,
		37.720360, 35.912823, 25.001984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589203, 34.951145, 25.191538>,  <38.334595, 35.645653, 25.205296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589203, 34.951145, 25.191538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.975883, 35.009499, 25.107445>,  <39.207893, 35.044510, 25.056990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.975883, 35.009499, 25.107445>,  <38.589203, 34.951145, 25.191538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975883, 35.009499, 25.107445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166867, 0.263475, 0.950125,
		0.193995, -0.953572, 0.230361,
		0.966706, 0.145880, -0.210232,
		39.265896, 35.053265, 25.044374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993870, 34.519859, 25.652809>,  <38.589203, 34.951145, 25.191538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993870, 34.519859, 25.652809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.233547, 34.814419, 25.527153>,  <39.377354, 34.991154, 25.451759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.233547, 34.814419, 25.527153>,  <38.993870, 34.519859, 25.652809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233547, 34.814419, 25.527153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254204, 0.197080, 0.946858,
		0.759174, -0.647209, -0.069106,
		0.599196, 0.736396, -0.314140,
		39.413307, 35.035339, 25.432911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686413, 34.373306, 25.952971>,  <38.993870, 34.519859, 25.652809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686413, 34.373306, 25.952971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690945, 34.759754, 25.849827>,  <39.693665, 34.991623, 25.787941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690945, 34.759754, 25.849827>,  <39.686413, 34.373306, 25.952971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690945, 34.759754, 25.849827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312863, 0.241501, 0.918583,
		0.949731, -0.091084, -0.299525,
		0.011332, 0.966117, -0.257857,
		39.694344, 35.049591, 25.772470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394852, 34.666866, 26.116859>,  <39.686413, 34.373306, 25.952971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394852, 34.666866, 26.116859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.165058, 34.994255, 26.113537>,  <40.027184, 35.190689, 26.111544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.165058, 34.994255, 26.113537>,  <40.394852, 34.666866, 26.116859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165058, 34.994255, 26.113537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360797, 0.262322, 0.894993,
		0.734709, 0.511160, -0.446002,
		-0.574481, 0.818476, -0.008305,
		39.992714, 35.239799, 26.111046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756042, 35.189320, 26.419037>,  <40.394852, 34.666866, 26.116859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756042, 35.189320, 26.419037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.383476, 35.334473, 26.430252>,  <40.159939, 35.421562, 26.436981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.383476, 35.334473, 26.430252>,  <40.756042, 35.189320, 26.419037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383476, 35.334473, 26.430252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208190, 0.468007, 0.858852,
		0.298539, 0.805784, -0.511456,
		-0.931414, 0.362881, 0.028038,
		40.104053, 35.443336, 26.438663>
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
