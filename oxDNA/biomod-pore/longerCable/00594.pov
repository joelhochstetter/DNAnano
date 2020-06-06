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
	<23.931469, 34.931137, 34.810421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246586, 34.741180, 34.967319>,  <24.435656, 34.627205, 35.061459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246586, 34.741180, 34.967319>,  <23.931469, 34.931137, 34.810421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246586, 34.741180, 34.967319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003972, -0.640732, -0.767755,
		0.615931, 0.603272, -0.506648,
		0.787790, -0.474896, 0.392251,
		24.482924, 34.598713, 35.084995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451458, 34.820572, 34.358807>,  <23.931469, 34.931137, 34.810421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451458, 34.820572, 34.358807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534180, 34.528568, 34.619366>,  <24.583813, 34.353367, 34.775703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534180, 34.528568, 34.619366>,  <24.451458, 34.820572, 34.358807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534180, 34.528568, 34.619366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061132, -0.674136, -0.736073,
		0.976470, 0.112402, -0.184042,
		0.206805, -0.730005, 0.651402,
		24.596222, 34.309566, 34.814785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.032297, 34.357132, 34.159042>,  <24.451458, 34.820572, 34.358807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.032297, 34.357132, 34.159042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792675, 34.132843, 34.387684>,  <24.648903, 33.998272, 34.524868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792675, 34.132843, 34.387684>,  <25.032297, 34.357132, 34.159042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.792675, 34.132843, 34.387684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040210, -0.734036, -0.677919,
		0.799698, -0.383126, 0.462274,
		-0.599054, -0.560719, 0.571601,
		24.612959, 33.964626, 34.559166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354898, 34.710865, 34.598892>,  <25.032297, 34.357132, 34.159042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354898, 34.710865, 34.598892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339497, 35.100426, 34.509426>,  <25.330256, 35.334164, 34.455746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339497, 35.100426, 34.509426>,  <25.354898, 34.710865, 34.598892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339497, 35.100426, 34.509426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547170, 0.207838, 0.810807,
		0.836136, -0.091162, -0.540895,
		-0.038504, 0.973906, -0.223662,
		25.327946, 35.392597, 34.442329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105722, 34.855511, 34.516567>,  <25.354898, 34.710865, 34.598892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105722, 34.855511, 34.516567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855391, 35.148575, 34.623558>,  <25.705191, 35.324413, 34.687752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855391, 35.148575, 34.623558>,  <26.105722, 34.855511, 34.516567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855391, 35.148575, 34.623558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644731, 0.292967, 0.706039,
		0.438925, 0.614312, -0.655717,
		-0.625832, 0.732660, 0.267475,
		25.667641, 35.368374, 34.703800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660515, 35.267399, 34.801010>,  <26.105722, 34.855511, 34.516567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660515, 35.267399, 34.801010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292694, 35.371861, 34.918465>,  <26.072001, 35.434536, 34.988937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292694, 35.371861, 34.918465>,  <26.660515, 35.267399, 34.801010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292694, 35.371861, 34.918465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391877, 0.553808, 0.734663,
		0.029243, 0.790630, -0.611596,
		-0.919553, 0.261154, 0.293634,
		26.016829, 35.450207, 35.006554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537815, 35.990204, 34.855114>,  <26.660515, 35.267399, 34.801010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537815, 35.990204, 34.855114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291636, 35.821114, 35.121204>,  <26.143929, 35.719662, 35.280861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291636, 35.821114, 35.121204>,  <26.537815, 35.990204, 34.855114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291636, 35.821114, 35.121204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192719, 0.737682, 0.647058,
		-0.764254, 0.526433, -0.372538,
		-0.615447, -0.422722, 0.665230,
		26.107002, 35.694298, 35.320774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392862, 36.684940, 34.828823>,  <26.537815, 35.990204, 34.855114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392862, 36.684940, 34.828823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355482, 36.812340, 35.206146>,  <26.333054, 36.888779, 35.432541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355482, 36.812340, 35.206146>,  <26.392862, 36.684940, 34.828823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355482, 36.812340, 35.206146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995506, 0.015316, 0.093452,
		0.015316, 0.947799, -0.318500,
		-0.093452, 0.318500, 0.943305,
		26.327446, 36.907890, 35.489140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855955, 37.117290, 34.918274>,  <26.392862, 36.684940, 34.828823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855955, 37.117290, 34.918274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779274, 37.022110, 35.299141>,  <26.733265, 36.965000, 35.527660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779274, 37.022110, 35.299141>,  <26.855955, 37.117290, 34.918274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779274, 37.022110, 35.299141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934667, 0.251705, 0.251081,
		-0.299412, 0.938095, 0.174157,
		-0.191702, -0.237955, 0.952170,
		26.721764, 36.950722, 35.584793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016592, 37.676991, 35.384438>,  <26.855955, 37.117290, 34.918274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016592, 37.676991, 35.384438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066710, 37.311768, 35.539677>,  <27.096781, 37.092632, 35.632820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066710, 37.311768, 35.539677>,  <27.016592, 37.676991, 35.384438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066710, 37.311768, 35.539677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910576, 0.261140, 0.320401,
		-0.393894, 0.313251, 0.864130,
		0.125293, -0.913061, 0.388100,
		27.104298, 37.037849, 35.656105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866655, 38.164948, 34.849220>,  <27.016592, 37.676991, 35.384438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866655, 38.164948, 34.849220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660307, 38.504467, 34.802887>,  <26.536497, 38.708179, 34.775085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660307, 38.504467, 34.802887>,  <26.866655, 38.164948, 34.849220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660307, 38.504467, 34.802887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635472, 0.469838, 0.612722,
		0.574500, 0.242477, -0.781764,
		-0.515873, 0.848798, -0.115835,
		26.505545, 38.759106, 34.768135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220478, 38.554531, 35.264149>,  <26.866655, 38.164948, 34.849220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220478, 38.554531, 35.264149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981438, 38.828255, 35.097012>,  <26.838013, 38.992489, 34.996731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981438, 38.828255, 35.097012>,  <27.220478, 38.554531, 35.264149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981438, 38.828255, 35.097012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589726, 0.728215, 0.349179,
		0.543225, -0.037742, -0.838738,
		-0.597603, 0.684309, -0.417842,
		26.802156, 39.033546, 34.971661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546997, 38.956985, 34.650509>,  <27.220478, 38.554531, 35.264149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546997, 38.956985, 34.650509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293333, 39.170799, 34.873974>,  <27.141134, 39.299088, 35.008053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293333, 39.170799, 34.873974>,  <27.546997, 38.956985, 34.650509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293333, 39.170799, 34.873974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739138, 0.631197, 0.235088,
		-0.226965, 0.562015, -0.795378,
		-0.634162, 0.534537, 0.558667,
		27.103085, 39.331161, 35.041573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529875, 39.707508, 34.528027>,  <27.546997, 38.956985, 34.650509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529875, 39.707508, 34.528027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463892, 39.626965, 34.914238>,  <27.424301, 39.578636, 35.145966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463892, 39.626965, 34.914238>,  <27.529875, 39.707508, 34.528027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463892, 39.626965, 34.914238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809743, 0.531268, 0.249140,
		-0.563120, 0.822927, 0.075413,
		-0.164959, -0.201361, 0.965527,
		27.414404, 39.566555, 35.203896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406998, 40.242542, 34.830204>,  <27.529875, 39.707508, 34.528027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406998, 40.242542, 34.830204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577089, 39.978485, 35.077881>,  <27.679144, 39.820053, 35.226486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577089, 39.978485, 35.077881>,  <27.406998, 40.242542, 34.830204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577089, 39.978485, 35.077881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849141, 0.527769, -0.020475,
		-0.313272, 0.534485, 0.784976,
		0.425229, -0.660141, 0.619188,
		27.704659, 39.780441, 35.263638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775492, 40.545746, 35.528111>,  <27.406998, 40.242542, 34.830204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775492, 40.545746, 35.528111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919550, 40.216648, 35.352207>,  <28.005985, 40.019188, 35.246666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919550, 40.216648, 35.352207>,  <27.775492, 40.545746, 35.528111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919550, 40.216648, 35.352207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774089, 0.526637, -0.351340,
		0.520656, -0.213880, 0.826542,
		0.360143, -0.822745, -0.439759,
		28.027594, 39.969826, 35.220280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479706, 40.274067, 35.704037>,  <27.775492, 40.545746, 35.528111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479706, 40.274067, 35.704037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426281, 40.141472, 35.330452>,  <28.394226, 40.061916, 35.106300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426281, 40.141472, 35.330452>,  <28.479706, 40.274067, 35.704037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426281, 40.141472, 35.330452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717629, 0.617602, -0.321831,
		0.683498, -0.713220, 0.155396,
		-0.133564, -0.331488, -0.933957,
		28.386211, 40.042027, 35.050266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554430, 39.645893, 35.942310>,  <28.479706, 40.274067, 35.704037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554430, 39.645893, 35.942310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594139, 39.375397, 35.650326>,  <28.617966, 39.213100, 35.475136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594139, 39.375397, 35.650326>,  <28.554430, 39.645893, 35.942310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594139, 39.375397, 35.650326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166410, 0.711975, -0.682202,
		0.981047, 0.189198, -0.041851,
		0.099274, -0.676237, -0.729965,
		28.623922, 39.172527, 35.431335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050203, 39.855801, 35.405136>,  <28.554430, 39.645893, 35.942310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050203, 39.855801, 35.405136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769783, 39.620487, 35.243912>,  <28.601532, 39.479301, 35.147179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769783, 39.620487, 35.243912>,  <29.050203, 39.855801, 35.405136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769783, 39.620487, 35.243912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150268, 0.674387, -0.722926,
		0.697104, -0.446237, -0.561176,
		-0.701046, -0.588282, -0.403063,
		28.559469, 39.444004, 35.122993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080305, 39.913246, 34.644226>,  <29.050203, 39.855801, 35.405136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080305, 39.913246, 34.644226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708448, 39.775902, 34.697697>,  <28.485334, 39.693493, 34.729778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708448, 39.775902, 34.697697>,  <29.080305, 39.913246, 34.644226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708448, 39.775902, 34.697697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337569, 0.648229, -0.682529,
		0.147703, -0.679631, -0.718530,
		-0.929640, -0.343365, 0.133677,
		28.429556, 39.672894, 34.737801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285334, 40.389114, 34.011078>,  <29.080305, 39.913246, 34.644226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285334, 40.389114, 34.011078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434998, 40.018684, 33.991512>,  <29.524796, 39.796425, 33.979771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434998, 40.018684, 33.991512>,  <29.285334, 40.389114, 34.011078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434998, 40.018684, 33.991512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821876, 0.355569, -0.445073,
		0.429564, 0.126323, 0.894157,
		0.374158, -0.926074, -0.048918,
		29.547245, 39.740864, 33.976837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506647, 40.058338, 33.353519>,  <29.285334, 40.389114, 34.011078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506647, 40.058338, 33.353519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905180, 40.048481, 33.386292>,  <30.144300, 40.042568, 33.405952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905180, 40.048481, 33.386292>,  <29.506647, 40.058338, 33.353519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905180, 40.048481, 33.386292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020142, -0.998268, -0.055276,
		0.083147, 0.053424, -0.995104,
		0.996334, -0.024639, 0.081927,
		30.204081, 40.041088, 33.410870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810226, 39.628632, 32.902710>,  <29.506647, 40.058338, 33.353519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810226, 39.628632, 32.902710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118601, 39.665520, 33.154789>,  <30.303625, 39.687653, 33.306038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118601, 39.665520, 33.154789>,  <29.810226, 39.628632, 32.902710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118601, 39.665520, 33.154789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282508, -0.936313, -0.208583,
		0.570831, 0.338841, -0.747889,
		0.770935, 0.092219, 0.630202,
		30.349882, 39.693184, 33.343849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349197, 39.122787, 32.536903>,  <29.810226, 39.628632, 32.902710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349197, 39.122787, 32.536903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466976, 39.243542, 32.899597>,  <30.537643, 39.315994, 33.117214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466976, 39.243542, 32.899597>,  <30.349197, 39.122787, 32.536903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466976, 39.243542, 32.899597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561917, -0.822145, 0.091249,
		0.773013, 0.482641, -0.411714,
		0.294449, 0.301886, 0.906733,
		30.555311, 39.334106, 33.171616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063263, 39.227692, 32.554966>,  <30.349197, 39.122787, 32.536903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063263, 39.227692, 32.554966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940029, 39.134441, 32.923908>,  <30.866089, 39.078491, 33.145271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940029, 39.134441, 32.923908>,  <31.063263, 39.227692, 32.554966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940029, 39.134441, 32.923908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603749, -0.797174, 0.000179,
		0.735235, 0.556925, 0.386347,
		-0.308085, -0.233125, 0.922354,
		30.847603, 39.064503, 33.200615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684212, 39.208771, 32.994926>,  <31.063263, 39.227692, 32.554966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684212, 39.208771, 32.994926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382643, 38.960846, 33.082043>,  <31.201702, 38.812092, 33.134312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382643, 38.960846, 33.082043>,  <31.684212, 39.208771, 32.994926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382643, 38.960846, 33.082043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637823, -0.770004, 0.016578,
		0.157421, 0.151408, 0.975856,
		-0.753923, -0.619814, 0.217786,
		31.156466, 38.774902, 33.147377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788692, 38.800457, 33.569965>,  <31.684212, 39.208771, 32.994926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788692, 38.800457, 33.569965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513973, 38.592094, 33.367203>,  <31.349142, 38.467075, 33.245544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513973, 38.592094, 33.367203>,  <31.788692, 38.800457, 33.569965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513973, 38.592094, 33.367203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496886, -0.845482, 0.195613,
		-0.530481, -0.117529, 0.839510,
		-0.686800, -0.520910, -0.506910,
		31.307934, 38.435822, 33.215130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471331, 38.147987, 33.924965>,  <31.788692, 38.800457, 33.569965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471331, 38.147987, 33.924965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458872, 38.096630, 33.528473>,  <31.451397, 38.065815, 33.290577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458872, 38.096630, 33.528473>,  <31.471331, 38.147987, 33.924965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458872, 38.096630, 33.528473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485371, -0.868878, 0.097296,
		-0.873754, -0.478085, 0.089381,
		-0.031146, -0.128396, -0.991234,
		31.449528, 38.058113, 33.231102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162518, 37.514259, 33.724667>,  <31.471331, 38.147987, 33.924965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162518, 37.514259, 33.724667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426203, 37.630684, 33.447330>,  <31.584414, 37.700539, 33.280930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426203, 37.630684, 33.447330>,  <31.162518, 37.514259, 33.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426203, 37.630684, 33.447330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572181, -0.792424, 0.211361,
		-0.487899, -0.536048, -0.688917,
		0.659214, 0.291062, -0.693339,
		31.623966, 37.718002, 33.239330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359522, 36.991058, 33.258396>,  <31.162518, 37.514259, 33.724667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359522, 36.991058, 33.258396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660280, 37.244545, 33.331120>,  <31.840734, 37.396637, 33.374752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660280, 37.244545, 33.331120>,  <31.359522, 36.991058, 33.258396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660280, 37.244545, 33.331120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618515, -0.773515, 0.138252,
		0.228242, 0.008498, -0.973567,
		0.751895, 0.633721, 0.181805,
		31.885849, 37.434662, 33.385662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007133, 36.755871, 32.859749>,  <31.359522, 36.991058, 33.258396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007133, 36.755871, 32.859749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131248, 36.964008, 33.177986>,  <32.205719, 37.088890, 33.368927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131248, 36.964008, 33.177986>,  <32.007133, 36.755871, 32.859749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131248, 36.964008, 33.177986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677949, -0.707798, 0.198515,
		0.666412, 0.477772, -0.572389,
		0.310291, 0.520343, 0.795589,
		32.224335, 37.120110, 33.416664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722630, 36.818752, 32.818893>,  <32.007133, 36.755871, 32.859749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722630, 36.818752, 32.818893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561127, 36.807224, 33.184658>,  <32.464226, 36.800308, 33.404118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561127, 36.807224, 33.184658>,  <32.722630, 36.818752, 32.818893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561127, 36.807224, 33.184658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589466, -0.772572, 0.235927,
		0.699650, 0.634272, 0.328921,
		-0.403757, -0.028821, 0.914412,
		32.439999, 36.798576, 33.458981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157131, 36.638813, 33.347279>,  <32.722630, 36.818752, 32.818893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157131, 36.638813, 33.347279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807987, 36.538517, 33.514729>,  <32.598503, 36.478340, 33.615200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807987, 36.538517, 33.514729>,  <33.157131, 36.638813, 33.347279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807987, 36.538517, 33.514729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427722, -0.806078, 0.409014,
		0.234891, 0.536067, 0.810838,
		-0.872858, -0.250739, 0.418628,
		32.546131, 36.463295, 33.640316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183884, 36.427624, 34.009430>,  <33.157131, 36.638813, 33.347279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183884, 36.427624, 34.009430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861801, 36.229317, 33.879288>,  <32.668552, 36.110332, 33.801205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861801, 36.229317, 33.879288>,  <33.183884, 36.427624, 34.009430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861801, 36.229317, 33.879288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443816, -0.867715, 0.223826,
		-0.393280, 0.035829, 0.918720,
		-0.805207, -0.495769, -0.325353,
		32.620239, 36.080585, 33.781681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940121, 35.824638, 34.465080>,  <33.183884, 36.427624, 34.009430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940121, 35.824638, 34.465080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827206, 35.743229, 34.090084>,  <32.759457, 35.694386, 33.865086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827206, 35.743229, 34.090084>,  <32.940121, 35.824638, 34.465080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827206, 35.743229, 34.090084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434056, -0.898583, 0.064374,
		-0.855516, -0.388752, 0.342001,
		-0.282291, -0.203521, -0.937492,
		32.742519, 35.682171, 33.808838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481834, 35.260056, 34.358143>,  <32.940121, 35.824638, 34.465080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481834, 35.260056, 34.358143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739437, 35.285851, 34.053223>,  <32.893997, 35.301327, 33.870270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739437, 35.285851, 34.053223>,  <32.481834, 35.260056, 34.358143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739437, 35.285851, 34.053223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454014, -0.834214, 0.312984,
		-0.615734, -0.547658, -0.566518,
		0.644005, 0.064492, -0.762298,
		32.932640, 35.305199, 33.824532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462772, 34.600006, 34.025864>,  <32.481834, 35.260056, 34.358143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462772, 34.600006, 34.025864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808533, 34.787132, 33.952148>,  <33.015987, 34.899410, 33.907921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808533, 34.787132, 33.952148>,  <32.462772, 34.600006, 34.025864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808533, 34.787132, 33.952148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502748, -0.809835, 0.302343,
		-0.007800, -0.353995, -0.935215,
		0.864398, 0.467819, -0.184287,
		33.067852, 34.927479, 33.896862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016266, 34.171680, 33.746815>,  <32.462772, 34.600006, 34.025864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016266, 34.171680, 33.746815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144936, 34.462284, 33.989700>,  <33.222137, 34.636646, 34.135433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144936, 34.462284, 33.989700>,  <33.016266, 34.171680, 33.746815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144936, 34.462284, 33.989700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364852, -0.686881, 0.628552,
		0.873734, 0.019356, -0.486019,
		0.321670, 0.726512, 0.607213,
		33.241436, 34.680237, 34.171864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678165, 33.950584, 33.916077>,  <33.016266, 34.171680, 33.746815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678165, 33.950584, 33.916077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504848, 34.187225, 34.188038>,  <33.400860, 34.329208, 34.351215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504848, 34.187225, 34.188038>,  <33.678165, 33.950584, 33.916077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504848, 34.187225, 34.188038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251809, -0.644881, 0.721610,
		0.865361, 0.483874, 0.130451,
		-0.433293, 0.591604, 0.679899,
		33.374859, 34.364708, 34.392006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115089, 34.131630, 34.530693>,  <33.678165, 33.950584, 33.916077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115089, 34.131630, 34.530693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738274, 34.158337, 34.662205>,  <33.512184, 34.174362, 34.741112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738274, 34.158337, 34.662205>,  <34.115089, 34.131630, 34.530693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738274, 34.158337, 34.662205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200784, -0.672909, 0.711954,
		0.268777, 0.736706, 0.620503,
		-0.942043, 0.066770, 0.328781,
		33.455662, 34.178368, 34.760838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118778, 34.289352, 35.255077>,  <34.115089, 34.131630, 34.530693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118778, 34.289352, 35.255077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827995, 34.056622, 35.109192>,  <33.653526, 33.916981, 35.021660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827995, 34.056622, 35.109192>,  <34.118778, 34.289352, 35.255077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827995, 34.056622, 35.109192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257450, -0.723305, 0.640741,
		-0.636600, 0.371893, 0.675601,
		-0.726953, -0.581829, -0.364712,
		33.609909, 33.882072, 34.999779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283012, 33.810825, 35.775227>,  <34.118778, 34.289352, 35.255077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283012, 33.810825, 35.775227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030590, 33.653042, 35.508045>,  <33.879135, 33.558372, 35.347736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030590, 33.653042, 35.508045>,  <34.283012, 33.810825, 35.775227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030590, 33.653042, 35.508045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178752, -0.911833, 0.369605,
		-0.754861, 0.113843, 0.645930,
		-0.631057, -0.394461, -0.667958,
		33.841274, 33.534702, 35.307659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930565, 33.322735, 36.131756>,  <34.283012, 33.810825, 35.775227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930565, 33.322735, 36.131756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932209, 33.227245, 35.743324>,  <33.933197, 33.169952, 35.510265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932209, 33.227245, 35.743324>,  <33.930565, 33.322735, 36.131756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932209, 33.227245, 35.743324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138853, -0.961542, 0.236971,
		-0.990304, -0.135812, 0.029192,
		0.004114, -0.238727, -0.971078,
		33.933445, 33.155628, 35.452000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492184, 32.683571, 36.063496>,  <33.930565, 33.322735, 36.131756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492184, 32.683571, 36.063496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810444, 32.760929, 35.833870>,  <34.001400, 32.807343, 35.696095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810444, 32.760929, 35.833870>,  <33.492184, 32.683571, 36.063496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810444, 32.760929, 35.833870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291251, -0.953075, 0.082595,
		-0.531150, -0.232912, -0.814636,
		0.795646, 0.193393, -0.574061,
		34.049137, 32.818947, 35.661652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545052, 32.305119, 35.431152>,  <33.492184, 32.683571, 36.063496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545052, 32.305119, 35.431152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914394, 32.407463, 35.545666>,  <34.135998, 32.468868, 35.614372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914394, 32.407463, 35.545666>,  <33.545052, 32.305119, 35.431152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914394, 32.407463, 35.545666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211786, -0.961322, 0.176090,
		0.320261, -0.101963, -0.941826,
		0.923352, 0.255860, 0.286280,
		34.191399, 32.484222, 35.631550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176075, 31.956463, 35.103222>,  <33.545052, 32.305119, 35.431152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176075, 31.956463, 35.103222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263512, 32.081921, 35.472836>,  <34.315975, 32.157196, 35.694603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263512, 32.081921, 35.472836>,  <34.176075, 31.956463, 35.103222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263512, 32.081921, 35.472836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162560, -0.945410, 0.282442,
		0.962180, 0.088471, -0.257649,
		0.218596, 0.313644, 0.924036,
		34.329090, 32.176014, 35.750046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918598, 31.875250, 35.378010>,  <34.176075, 31.956463, 35.103222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918598, 31.875250, 35.378010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624733, 31.826406, 35.644951>,  <34.448414, 31.797100, 35.805115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624733, 31.826406, 35.644951>,  <34.918598, 31.875250, 35.378010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624733, 31.826406, 35.644951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402008, -0.870728, 0.283235,
		0.546499, 0.476364, 0.688778,
		-0.734662, -0.122107, 0.667355,
		34.404335, 31.789774, 35.845158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240948, 31.615980, 34.844933>,  <34.918598, 31.875250, 35.378010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240948, 31.615980, 34.844933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483883, 31.547461, 35.155235>,  <35.629642, 31.506348, 35.341415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483883, 31.547461, 35.155235>,  <35.240948, 31.615980, 34.844933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483883, 31.547461, 35.155235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331456, -0.942066, 0.051470,
		0.721998, -0.288389, -0.628928,
		0.607335, -0.171301, 0.775758,
		35.666084, 31.496071, 35.387962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644981, 32.235283, 34.417065>,  <35.240948, 31.615980, 34.844933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644981, 32.235283, 34.417065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030010, 32.340290, 34.443985>,  <36.261028, 32.403294, 34.460136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030010, 32.340290, 34.443985>,  <35.644981, 32.235283, 34.417065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030010, 32.340290, 34.443985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267880, -0.883998, -0.383129,
		-0.041084, 0.386820, -0.921240,
		0.962576, 0.262522, 0.067303,
		36.318783, 32.419048, 34.464176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935822, 32.076942, 33.799801>,  <35.644981, 32.235283, 34.417065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935822, 32.076942, 33.799801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265957, 32.111771, 34.022953>,  <36.464039, 32.132668, 34.156845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265957, 32.111771, 34.022953>,  <35.935822, 32.076942, 33.799801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265957, 32.111771, 34.022953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363057, -0.838551, -0.406229,
		0.432441, 0.537820, -0.723702,
		0.825339, 0.087075, 0.557883,
		36.513557, 32.137894, 34.190319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476681, 32.061054, 33.369007>,  <35.935822, 32.076942, 33.799801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476681, 32.061054, 33.369007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588978, 31.942160, 33.734047>,  <36.656357, 31.870823, 33.953072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588978, 31.942160, 33.734047>,  <36.476681, 32.061054, 33.369007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588978, 31.942160, 33.734047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185667, -0.916059, -0.355478,
		0.941655, 0.269236, -0.201987,
		0.280740, -0.297235, 0.912599,
		36.673199, 31.852989, 34.007828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189682, 31.731380, 33.327499>,  <36.476681, 32.061054, 33.369007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189682, 31.731380, 33.327499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011410, 31.582815, 33.653301>,  <36.904446, 31.493677, 33.848782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011410, 31.582815, 33.653301>,  <37.189682, 31.731380, 33.327499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011410, 31.582815, 33.653301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052056, -0.919082, -0.390614,
		0.893676, -0.131690, 0.428954,
		-0.445684, -0.371412, 0.814505,
		36.877705, 31.471392, 33.897652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526955, 31.105412, 33.465244>,  <37.189682, 31.731380, 33.327499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526955, 31.105412, 33.465244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197910, 31.081102, 33.691383>,  <37.000484, 31.066517, 33.827065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197910, 31.081102, 33.691383>,  <37.526955, 31.105412, 33.465244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197910, 31.081102, 33.691383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113357, -0.956785, -0.267792,
		0.557189, -0.284375, 0.780174,
		-0.822612, -0.060773, 0.565346,
		36.951126, 31.062870, 33.860989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574844, 30.617762, 33.982445>,  <37.526955, 31.105412, 33.465244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574844, 30.617762, 33.982445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196751, 30.665234, 33.860828>,  <36.969894, 30.693716, 33.787857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196751, 30.665234, 33.860828>,  <37.574844, 30.617762, 33.982445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196751, 30.665234, 33.860828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062846, -0.980296, -0.187268,
		-0.320278, -0.157905, 0.934071,
		-0.945237, 0.118680, -0.304043,
		36.913181, 30.700838, 33.769615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497150, 29.998444, 33.953205>,  <37.574844, 30.617762, 33.982445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497150, 29.998444, 33.953205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149002, 30.139688, 33.815933>,  <36.940113, 30.224436, 33.733570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149002, 30.139688, 33.815933>,  <37.497150, 29.998444, 33.953205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149002, 30.139688, 33.815933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268763, -0.924654, -0.269781,
		-0.412584, -0.142575, 0.899693,
		-0.870369, 0.353111, -0.343178,
		36.887890, 30.245623, 33.712978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121872, 29.417795, 34.137238>,  <37.497150, 29.998444, 33.953205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121872, 29.417795, 34.137238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907604, 29.663271, 33.905220>,  <36.779045, 29.810556, 33.766010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907604, 29.663271, 33.905220>,  <37.121872, 29.417795, 34.137238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907604, 29.663271, 33.905220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339247, -0.785430, -0.517697,
		-0.773277, -0.080547, 0.628931,
		-0.535681, 0.613687, -0.580030,
		36.746902, 29.847378, 33.731209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379776, 29.331612, 34.259655>,  <37.121872, 29.417795, 34.137238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379776, 29.331612, 34.259655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511642, 29.441103, 33.898235>,  <36.590763, 29.506798, 33.681385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511642, 29.441103, 33.898235>,  <36.379776, 29.331612, 34.259655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511642, 29.441103, 33.898235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189629, -0.918344, -0.347397,
		-0.924859, 0.285862, -0.250837,
		0.329662, 0.273728, -0.903546,
		36.610542, 29.523222, 33.627171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020660, 28.898300, 33.895256>,  <36.379776, 29.331612, 34.259655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020660, 28.898300, 33.895256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270367, 29.034340, 33.613937>,  <36.420193, 29.115965, 33.445148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270367, 29.034340, 33.613937>,  <36.020660, 28.898300, 33.895256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270367, 29.034340, 33.613937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035701, -0.886900, -0.460580,
		-0.780394, 0.312633, -0.541521,
		0.624268, 0.340101, -0.703293,
		36.457645, 29.136370, 33.402950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635876, 28.771103, 33.177990>,  <36.020660, 28.898300, 33.895256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635876, 28.771103, 33.177990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023769, 28.823656, 33.095676>,  <36.256508, 28.855188, 33.046288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023769, 28.823656, 33.095676>,  <35.635876, 28.771103, 33.177990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023769, 28.823656, 33.095676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009116, -0.861757, -0.507239,
		-0.243976, 0.490013, -0.836877,
		0.969738, 0.131383, -0.205782,
		36.314690, 28.863071, 33.033943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635174, 28.661930, 32.522842>,  <35.635876, 28.771103, 33.177990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635174, 28.661930, 32.522842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011608, 28.605059, 32.645580>,  <36.237469, 28.570936, 32.719223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011608, 28.605059, 32.645580>,  <35.635174, 28.661930, 32.522842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011608, 28.605059, 32.645580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083011, -0.782455, -0.617149,
		0.327835, 0.606259, -0.724551,
		0.941081, -0.142177, 0.306842,
		36.293934, 28.562407, 32.737633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092281, 28.706371, 31.884045>,  <35.635174, 28.661930, 32.522842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092281, 28.706371, 31.884045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229607, 28.477097, 32.181660>,  <36.312000, 28.339531, 32.360229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229607, 28.477097, 32.181660>,  <36.092281, 28.706371, 31.884045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229607, 28.477097, 32.181660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023612, -0.786670, -0.616922,
		0.938924, 0.229366, -0.256540,
		0.343313, -0.573186, 0.744039,
		36.332600, 28.305141, 32.404873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373066, 28.201565, 31.535612>,  <36.092281, 28.706371, 31.884045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373066, 28.201565, 31.535612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348064, 28.061718, 31.909534>,  <36.333065, 27.977810, 32.133888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348064, 28.061718, 31.909534>,  <36.373066, 28.201565, 31.535612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348064, 28.061718, 31.909534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035905, -0.936818, -0.347969,
		0.997399, 0.011817, 0.071104,
		-0.062500, -0.349617, 0.934806,
		36.329315, 27.956833, 32.189976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656738, 28.238409, 30.843388>,  <36.373066, 28.201565, 31.535612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656738, 28.238409, 30.843388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884747, 28.390518, 30.552053>,  <37.021549, 28.481785, 30.377253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884747, 28.390518, 30.552053>,  <36.656738, 28.238409, 30.843388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884747, 28.390518, 30.552053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527270, -0.510536, -0.679219,
		-0.630131, 0.771196, -0.090508,
		0.570019, 0.380275, -0.728333,
		37.055752, 28.504601, 30.333553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356213, 28.752041, 30.350502>,  <36.656738, 28.238409, 30.843388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356213, 28.752041, 30.350502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643356, 28.566097, 30.143202>,  <36.815643, 28.454531, 30.018822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643356, 28.566097, 30.143202>,  <36.356213, 28.752041, 30.350502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643356, 28.566097, 30.143202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683186, -0.327187, -0.652844,
		0.133914, 0.822713, -0.552458,
		0.717860, -0.464857, -0.518251,
		36.858715, 28.426640, 29.987726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345829, 28.921532, 29.628403>,  <36.356213, 28.752041, 30.350502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345829, 28.921532, 29.628403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532215, 28.567673, 29.635038>,  <36.644047, 28.355358, 29.639019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532215, 28.567673, 29.635038>,  <36.345829, 28.921532, 29.628403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532215, 28.567673, 29.635038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374331, -0.214089, -0.902243,
		0.801718, 0.414205, -0.430909,
		0.465966, -0.884647, 0.016589,
		36.672005, 28.302279, 29.640015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983986, 28.780134, 29.144896>,  <36.345829, 28.921532, 29.628403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983986, 28.780134, 29.144896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709328, 28.510508, 29.253820>,  <36.544533, 28.348732, 29.319176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709328, 28.510508, 29.253820>,  <36.983986, 28.780134, 29.144896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709328, 28.510508, 29.253820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330798, -0.043860, -0.942682,
		0.647374, -0.737368, -0.192864,
		-0.686644, -0.674067, 0.272314,
		36.503334, 28.308289, 29.335514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015297, 28.182789, 28.708136>,  <36.983986, 28.780134, 29.144896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015297, 28.182789, 28.708136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641663, 28.255566, 28.831022>,  <36.417480, 28.299232, 28.904755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641663, 28.255566, 28.831022>,  <37.015297, 28.182789, 28.708136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641663, 28.255566, 28.831022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307206, 0.028952, -0.951203,
		-0.181961, -0.982882, 0.028851,
		-0.934085, 0.181945, 0.307215,
		36.361439, 28.310148, 28.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540401, 27.773911, 28.364674>,  <37.015297, 28.182789, 28.708136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540401, 27.773911, 28.364674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275585, 28.053102, 28.473867>,  <36.116695, 28.220617, 28.539383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275585, 28.053102, 28.473867>,  <36.540401, 27.773911, 28.364674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275585, 28.053102, 28.473867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140738, 0.241976, -0.960021,
		-0.736131, -0.673996, -0.061967,
		-0.662045, 0.697980, 0.272983,
		36.076973, 28.262497, 28.555763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032070, 27.705904, 27.949394>,  <36.540401, 27.773911, 28.364674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032070, 27.705904, 27.949394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947868, 28.065439, 28.103165>,  <35.897346, 28.281160, 28.195427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947868, 28.065439, 28.103165>,  <36.032070, 27.705904, 27.949394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947868, 28.065439, 28.103165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211167, 0.342148, -0.915611,
		-0.954515, -0.273914, 0.117782,
		-0.210500, 0.898836, 0.384427,
		35.884720, 28.335091, 28.218493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358433, 27.755215, 27.671558>,  <36.032070, 27.705904, 27.949394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358433, 27.755215, 27.671558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538261, 28.103088, 27.753084>,  <35.646156, 28.311811, 27.802000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538261, 28.103088, 27.753084>,  <35.358433, 27.755215, 27.671558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538261, 28.103088, 27.753084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156063, 0.301137, -0.940723,
		-0.879506, 0.391112, 0.271108,
		0.449569, 0.869682, 0.203814,
		35.673134, 28.363993, 27.814228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935638, 28.315990, 27.420675>,  <35.358433, 27.755215, 27.671558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935638, 28.315990, 27.420675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275242, 28.521910, 27.468288>,  <35.479004, 28.645462, 27.496857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275242, 28.521910, 27.468288>,  <34.935638, 28.315990, 27.420675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275242, 28.521910, 27.468288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175924, 0.487834, -0.855025,
		-0.498235, 0.704982, 0.504741,
		0.849007, 0.514799, 0.119033,
		35.529945, 28.676350, 27.503998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795097, 29.091434, 27.370228>,  <34.935638, 28.315990, 27.420675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795097, 29.091434, 27.370228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177673, 29.036312, 27.267279>,  <35.407219, 29.003239, 27.205509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177673, 29.036312, 27.267279>,  <34.795097, 29.091434, 27.370228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177673, 29.036312, 27.267279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103848, 0.663337, -0.741080,
		0.272850, 0.735523, 0.620128,
		0.956435, -0.137805, -0.257374,
		35.464603, 28.994970, 27.190067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023235, 29.740614, 27.137938>,  <34.795097, 29.091434, 27.370228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023235, 29.740614, 27.137938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326000, 29.510212, 27.014456>,  <35.507660, 29.371971, 26.940367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326000, 29.510212, 27.014456>,  <35.023235, 29.740614, 27.137938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326000, 29.510212, 27.014456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152906, 0.615359, -0.773274,
		0.635372, 0.538101, 0.553850,
		0.756916, -0.576004, -0.308703,
		35.553074, 29.337410, 26.921844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520905, 30.218826, 27.042120>,  <35.023235, 29.740614, 27.137938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520905, 30.218826, 27.042120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618961, 29.908480, 26.809591>,  <35.677795, 29.722271, 26.670074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618961, 29.908480, 26.809591>,  <35.520905, 30.218826, 27.042120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618961, 29.908480, 26.809591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130703, 0.620592, -0.773164,
		0.960637, 0.113554, 0.253541,
		0.245141, -0.775868, -0.581321,
		35.692505, 29.675720, 26.635195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226482, 30.372807, 26.765818>,  <35.520905, 30.218826, 27.042120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226482, 30.372807, 26.765818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029942, 30.108643, 26.538685>,  <35.912018, 29.950144, 26.402405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029942, 30.108643, 26.538685>,  <36.226482, 30.372807, 26.765818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029942, 30.108643, 26.538685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312383, 0.474953, -0.822700,
		0.813014, -0.581614, -0.027067,
		-0.491350, -0.660412, -0.567831,
		35.882538, 29.910519, 26.368336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734116, 30.335888, 26.247435>,  <36.226482, 30.372807, 26.765818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734116, 30.335888, 26.247435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403297, 30.169680, 26.095995>,  <36.204807, 30.069954, 26.005131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403297, 30.169680, 26.095995>,  <36.734116, 30.335888, 26.247435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403297, 30.169680, 26.095995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119556, 0.528070, -0.840743,
		0.549278, -0.740595, -0.387058,
		-0.827043, -0.415526, -0.378600,
		36.155182, 30.045023, 25.982416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877689, 30.321144, 25.615522>,  <36.734116, 30.335888, 26.247435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877689, 30.321144, 25.615522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491669, 30.220665, 25.585657>,  <36.260056, 30.160378, 25.567738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491669, 30.220665, 25.585657>,  <36.877689, 30.321144, 25.615522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491669, 30.220665, 25.585657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045524, 0.441284, -0.896212,
		0.258074, -0.861492, -0.437297,
		-0.965052, -0.251197, -0.074665,
		36.202152, 30.145306, 25.563257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741196, 30.077505, 24.968050>,  <36.877689, 30.321144, 25.615522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741196, 30.077505, 24.968050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370697, 30.203711, 25.050524>,  <36.148396, 30.279434, 25.100008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370697, 30.203711, 25.050524>,  <36.741196, 30.077505, 24.968050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370697, 30.203711, 25.050524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033760, 0.475389, -0.879128,
		-0.375394, -0.821253, -0.429677,
		-0.926251, 0.315513, 0.206184,
		36.092823, 30.298365, 25.112379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311165, 29.940823, 24.384626>,  <36.741196, 30.077505, 24.968050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311165, 29.940823, 24.384626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113548, 30.227751, 24.581148>,  <35.994980, 30.399908, 24.699060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113548, 30.227751, 24.581148>,  <36.311165, 29.940823, 24.384626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113548, 30.227751, 24.581148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074952, 0.527838, -0.846031,
		-0.866204, -0.454796, -0.207007,
		-0.494038, 0.717320, 0.491303,
		35.965336, 30.442947, 24.728539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843952, 30.250565, 23.830645>,  <36.311165, 29.940823, 24.384626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843952, 30.250565, 23.830645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854004, 30.525717, 24.120800>,  <35.860035, 30.690807, 24.294893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854004, 30.525717, 24.120800>,  <35.843952, 30.250565, 23.830645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854004, 30.525717, 24.120800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322323, 0.692443, -0.645470,
		-0.946296, -0.217592, 0.239117,
		0.025126, 0.687879, 0.725391,
		35.861542, 30.732080, 24.338417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225521, 30.600178, 23.905287>,  <35.843952, 30.250565, 23.830645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225521, 30.600178, 23.905287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477806, 30.862427, 24.071348>,  <35.629177, 31.019777, 24.170984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477806, 30.862427, 24.071348>,  <35.225521, 30.600178, 23.905287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477806, 30.862427, 24.071348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337925, 0.713640, -0.613616,
		-0.698572, 0.246727, 0.671657,
		0.630717, 0.655625, 0.415153,
		35.667023, 31.059114, 24.195894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830128, 31.208588, 23.947588>,  <35.225521, 30.600178, 23.905287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830128, 31.208588, 23.947588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213955, 31.316414, 23.979984>,  <35.444252, 31.381109, 23.999422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213955, 31.316414, 23.979984>,  <34.830128, 31.208588, 23.947588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213955, 31.316414, 23.979984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188828, 0.829901, -0.524984,
		-0.208730, 0.488466, 0.847250,
		0.959571, 0.269564, 0.080989,
		35.501827, 31.397284, 24.004280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746693, 31.838346, 24.184469>,  <34.830128, 31.208588, 23.947588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746693, 31.838346, 24.184469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113644, 31.815979, 24.026838>,  <35.333813, 31.802559, 23.932259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113644, 31.815979, 24.026838>,  <34.746693, 31.838346, 24.184469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113644, 31.815979, 24.026838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230016, 0.733544, -0.639535,
		0.324835, 0.677337, 0.660073,
		0.917374, -0.055917, -0.394080,
		35.388855, 31.799204, 23.908615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965744, 32.479836, 24.081367>,  <34.746693, 31.838346, 24.184469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965744, 32.479836, 24.081367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194687, 32.277302, 23.823364>,  <35.332054, 32.155781, 23.668562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194687, 32.277302, 23.823364>,  <34.965744, 32.479836, 24.081367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194687, 32.277302, 23.823364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388593, 0.525180, -0.757088,
		0.722083, 0.683970, 0.103832,
		0.572356, -0.506332, -0.645009,
		35.366394, 32.125401, 23.629862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360229, 33.041656, 23.690985>,  <34.965744, 32.479836, 24.081367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360229, 33.041656, 23.690985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382858, 32.711823, 23.465824>,  <35.396435, 32.513920, 23.330729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382858, 32.711823, 23.465824>,  <35.360229, 33.041656, 23.690985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382858, 32.711823, 23.465824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331838, 0.516222, -0.789556,
		0.941639, 0.231456, -0.244427,
		0.056569, -0.824587, -0.562900,
		35.399830, 32.464447, 23.296955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662766, 33.289261, 23.098864>,  <35.360229, 33.041656, 23.690985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662766, 33.289261, 23.098864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484257, 32.945183, 23.000151>,  <35.377151, 32.738735, 22.940924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484257, 32.945183, 23.000151>,  <35.662766, 33.289261, 23.098864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484257, 32.945183, 23.000151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302687, 0.404606, -0.862945,
		0.842151, -0.310415, -0.440936,
		-0.446276, -0.860196, -0.246781,
		35.350372, 32.687122, 22.926117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802151, 33.276379, 22.382484>,  <35.662766, 33.289261, 23.098864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802151, 33.276379, 22.382484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484932, 33.048634, 22.469107>,  <35.294601, 32.911987, 22.521080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484932, 33.048634, 22.469107>,  <35.802151, 33.276379, 22.382484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484932, 33.048634, 22.469107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500373, 0.406123, -0.764651,
		0.347413, -0.714768, -0.606969,
		-0.793052, -0.569360, 0.216558,
		35.247017, 32.877827, 22.534075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693497, 33.052147, 21.776304>,  <35.802151, 33.276379, 22.382484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693497, 33.052147, 21.776304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363216, 32.986649, 21.992231>,  <35.165047, 32.947350, 22.121788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363216, 32.986649, 21.992231>,  <35.693497, 33.052147, 21.776304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363216, 32.986649, 21.992231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564090, 0.246688, -0.788002,
		-0.004138, -0.955162, -0.296056,
		-0.825703, -0.163741, 0.539818,
		35.115505, 32.937527, 22.154177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242142, 32.654507, 21.313213>,  <35.693497, 33.052147, 21.776304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242142, 32.654507, 21.313213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022961, 32.824795, 21.601244>,  <34.891453, 32.926968, 21.774063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022961, 32.824795, 21.601244>,  <35.242142, 32.654507, 21.313213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022961, 32.824795, 21.601244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678033, 0.278116, -0.680385,
		-0.489921, -0.861052, 0.136261,
		-0.547950, 0.425724, 0.720076,
		34.858574, 32.952511, 21.817266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607452, 32.499596, 21.054193>,  <35.242142, 32.654507, 21.313213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607452, 32.499596, 21.054193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546341, 32.803093, 21.307480>,  <34.509674, 32.985191, 21.459452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546341, 32.803093, 21.307480>,  <34.607452, 32.499596, 21.054193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546341, 32.803093, 21.307480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582335, 0.448566, -0.677994,
		-0.798464, -0.472325, 0.373314,
		-0.152777, 0.758748, 0.633215,
		34.500507, 33.030716, 21.497444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976189, 32.569759, 21.045511>,  <34.607452, 32.499596, 21.054193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976189, 32.569759, 21.045511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051105, 32.931877, 21.198015>,  <34.096054, 33.149147, 21.289518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051105, 32.931877, 21.198015>,  <33.976189, 32.569759, 21.045511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051105, 32.931877, 21.198015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503155, 0.421761, -0.754290,
		-0.843656, -0.050560, 0.534497,
		0.187294, 0.905296, 0.381261,
		34.107292, 33.203465, 21.312393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410522, 32.847164, 21.038973>,  <33.976189, 32.569759, 21.045511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410522, 32.847164, 21.038973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660507, 33.156811, 21.079302>,  <33.810497, 33.342598, 21.103498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660507, 33.156811, 21.079302>,  <33.410522, 32.847164, 21.038973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660507, 33.156811, 21.079302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620756, 0.571104, -0.537124,
		-0.473376, 0.273096, 0.837456,
		0.624961, 0.774117, 0.100821,
		33.847996, 33.389046, 21.109549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090130, 33.390831, 21.275747>,  <33.410522, 32.847164, 21.038973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090130, 33.390831, 21.275747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408798, 33.554348, 21.097666>,  <33.599998, 33.652458, 20.990816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408798, 33.554348, 21.097666>,  <33.090130, 33.390831, 21.275747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408798, 33.554348, 21.097666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578712, 0.728429, -0.366721,
		0.174388, 0.549801, 0.816889,
		0.796669, 0.408792, -0.445205,
		33.647800, 33.676987, 20.964104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949421, 34.078732, 21.272371>,  <33.090130, 33.390831, 21.275747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949421, 34.078732, 21.272371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239105, 34.053318, 20.997715>,  <33.412918, 34.038071, 20.832922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239105, 34.053318, 20.997715>,  <32.949421, 34.078732, 21.272371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239105, 34.053318, 20.997715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321922, 0.849429, -0.418135,
		0.609818, 0.523865, 0.594716,
		0.724215, -0.063534, -0.686641,
		33.456371, 34.034256, 20.791723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263287, 34.736591, 21.203421>,  <32.949421, 34.078732, 21.272371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263287, 34.736591, 21.203421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362816, 34.549603, 20.864113>,  <33.422531, 34.437408, 20.660528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362816, 34.549603, 20.864113>,  <33.263287, 34.736591, 21.203421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362816, 34.549603, 20.864113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251287, 0.814666, -0.522661,
		0.935384, 0.343207, 0.085235,
		0.248819, -0.467471, -0.848269,
		33.437462, 34.409363, 20.609632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612572, 35.293808, 20.804497>,  <33.263287, 34.736591, 21.203421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612572, 35.293808, 20.804497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477959, 35.023327, 20.542351>,  <33.397190, 34.861038, 20.385063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477959, 35.023327, 20.542351>,  <33.612572, 35.293808, 20.804497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477959, 35.023327, 20.542351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289578, 0.736547, -0.611264,
		0.896041, -0.015932, -0.443685,
		-0.336533, -0.676199, -0.655363,
		33.376999, 34.820469, 20.345741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909130, 35.430992, 20.086201>,  <33.612572, 35.293808, 20.804497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909130, 35.430992, 20.086201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585674, 35.209484, 20.006769>,  <33.391602, 35.076580, 19.959110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585674, 35.209484, 20.006769>,  <33.909130, 35.430992, 20.086201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585674, 35.209484, 20.006769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338092, 0.713685, -0.613472,
		0.481447, -0.428941, -0.764342,
		-0.808642, -0.553772, -0.198580,
		33.343082, 35.043354, 19.947195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884197, 35.356026, 19.351429>,  <33.909130, 35.430992, 20.086201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884197, 35.356026, 19.351429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514629, 35.302677, 19.494862>,  <33.292889, 35.270668, 19.580921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514629, 35.302677, 19.494862>,  <33.884197, 35.356026, 19.351429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514629, 35.302677, 19.494862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333958, 0.738428, -0.585829,
		-0.186658, -0.661012, -0.726789,
		-0.923922, -0.133367, 0.358584,
		33.237453, 35.262669, 19.602436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511410, 35.499222, 18.802452>,  <33.884197, 35.356026, 19.351429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511410, 35.499222, 18.802452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231670, 35.507721, 19.088240>,  <33.063828, 35.512821, 19.259712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231670, 35.507721, 19.088240>,  <33.511410, 35.499222, 18.802452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231670, 35.507721, 19.088240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446012, 0.768123, -0.459413,
		-0.558560, -0.639950, -0.527707,
		-0.699345, 0.021246, 0.714468,
		33.021866, 35.514095, 19.302580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883873, 35.317566, 18.556528>,  <33.511410, 35.499222, 18.802452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883873, 35.317566, 18.556528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771339, 35.522331, 18.881193>,  <32.703819, 35.645191, 19.075993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771339, 35.522331, 18.881193>,  <32.883873, 35.317566, 18.556528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771339, 35.522331, 18.881193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712929, 0.454664, -0.533866,
		-0.642326, -0.728853, 0.237044,
		-0.281335, 0.511912, 0.811663,
		32.686939, 35.675903, 19.124693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115585, 35.506874, 18.507759>,  <32.883873, 35.317566, 18.556528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115585, 35.506874, 18.507759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279510, 35.752903, 18.777203>,  <32.377865, 35.900520, 18.938868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279510, 35.752903, 18.777203>,  <32.115585, 35.506874, 18.507759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279510, 35.752903, 18.777203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551983, 0.755127, -0.353690,
		-0.726203, -0.226874, 0.648966,
		0.409809, 0.615069, 0.673607,
		32.402454, 35.937424, 18.979284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563568, 35.928715, 18.875210>,  <32.115585, 35.506874, 18.507759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563568, 35.928715, 18.875210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896040, 36.145779, 18.923645>,  <32.095524, 36.276016, 18.952705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896040, 36.145779, 18.923645>,  <31.563568, 35.928715, 18.875210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896040, 36.145779, 18.923645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504125, 0.827392, -0.247551,
		-0.234522, 0.144716, 0.961279,
		0.831178, 0.542660, 0.121087,
		32.145393, 36.308578, 18.959970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389965, 36.493820, 19.251085>,  <31.563568, 35.928715, 18.875210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389965, 36.493820, 19.251085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720181, 36.571770, 19.039232>,  <31.918310, 36.618542, 18.912121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720181, 36.571770, 19.039232>,  <31.389965, 36.493820, 19.251085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720181, 36.571770, 19.039232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428850, 0.826676, -0.364273,
		0.366846, 0.527854, 0.766025,
		0.825537, 0.194878, -0.529633,
		31.967842, 36.630234, 18.880342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263737, 37.139549, 19.139233>,  <31.389965, 36.493820, 19.251085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263737, 37.139549, 19.139233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597834, 37.090164, 18.924894>,  <31.798292, 37.060532, 18.796291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597834, 37.090164, 18.924894>,  <31.263737, 37.139549, 19.139233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597834, 37.090164, 18.924894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114974, 0.913718, -0.389745,
		0.537730, 0.387139, 0.748979,
		0.835241, -0.123464, -0.535845,
		31.848406, 37.053123, 18.764141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648291, 37.726768, 19.227316>,  <31.263737, 37.139549, 19.139233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648291, 37.726768, 19.227316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786259, 37.564472, 18.888752>,  <31.869040, 37.467094, 18.685614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786259, 37.564472, 18.888752>,  <31.648291, 37.726768, 19.227316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786259, 37.564472, 18.888752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041140, 0.907416, -0.418216,
		0.937730, 0.109430, 0.329678,
		0.344920, -0.405736, -0.846409,
		31.889734, 37.442753, 18.634829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096352, 38.114773, 18.929909>,  <31.648291, 37.726768, 19.227316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096352, 38.114773, 18.929909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032616, 37.903904, 18.596035>,  <31.994375, 37.777382, 18.395712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032616, 37.903904, 18.596035>,  <32.096352, 38.114773, 18.929909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032616, 37.903904, 18.596035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057810, 0.839052, -0.540972,
		0.985530, -0.134451, -0.103217,
		-0.159338, -0.527177, -0.834683,
		31.984814, 37.745750, 18.345631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653961, 38.235806, 18.524427>,  <32.096352, 38.114773, 18.929909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653961, 38.235806, 18.524427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372711, 38.095570, 18.276978>,  <32.203960, 38.011429, 18.128508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372711, 38.095570, 18.276978>,  <32.653961, 38.235806, 18.524427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372711, 38.095570, 18.276978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152361, 0.775509, -0.612676,
		0.694548, -0.525044, -0.491866,
		-0.703128, -0.350592, -0.618624,
		32.161774, 37.990391, 18.091391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943405, 38.261921, 17.777878>,  <32.653961, 38.235806, 18.524427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943405, 38.261921, 17.777878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543556, 38.252628, 17.772043>,  <32.303646, 38.247055, 17.768543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543556, 38.252628, 17.772043>,  <32.943405, 38.261921, 17.777878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543556, 38.252628, 17.772043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006310, 0.712303, -0.701843,
		0.026691, -0.701487, -0.712182,
		-0.999624, -0.023227, -0.014585,
		32.243668, 38.245659, 17.767668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799244, 38.314167, 17.072794>,  <32.943405, 38.261921, 17.777878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799244, 38.314167, 17.072794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462547, 38.434505, 17.252108>,  <32.260529, 38.506710, 17.359695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462547, 38.434505, 17.252108>,  <32.799244, 38.314167, 17.072794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462547, 38.434505, 17.252108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090839, 0.739580, -0.666911,
		-0.532182, -0.602089, -0.595207,
		-0.841743, 0.300850, 0.448284,
		32.210026, 38.524761, 17.386593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221790, 38.361355, 16.546236>,  <32.799244, 38.314167, 17.072794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221790, 38.361355, 16.546236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159767, 38.590721, 16.868019>,  <32.122555, 38.728340, 17.061089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159767, 38.590721, 16.868019>,  <32.221790, 38.361355, 16.546236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159767, 38.590721, 16.868019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050388, 0.808658, -0.586117,
		-0.986620, -0.131416, -0.096494,
		-0.155055, 0.573412, 0.804460,
		32.113251, 38.762745, 17.109358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589201, 38.778755, 16.530884>,  <32.221790, 38.361355, 16.546236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589201, 38.778755, 16.530884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928911, 38.901482, 16.702744>,  <32.132736, 38.975117, 16.805859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928911, 38.901482, 16.702744>,  <31.589201, 38.778755, 16.530884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928911, 38.901482, 16.702744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168456, 0.613783, -0.771293,
		-0.500356, 0.727416, 0.469585,
		0.849274, 0.306816, 0.429648,
		32.183693, 38.993526, 16.831638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630764, 39.517612, 16.472750>,  <31.589201, 38.778755, 16.530884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630764, 39.517612, 16.472750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856068, 39.844494, 16.423903>,  <31.991251, 40.040623, 16.394594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856068, 39.844494, 16.423903>,  <31.630764, 39.517612, 16.472750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856068, 39.844494, 16.423903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054810, -0.184418, -0.981318,
		-0.824459, 0.546045, -0.148667,
		0.563260, 0.817206, -0.122116,
		32.025047, 40.089657, 16.387268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650595, 40.130611, 16.016626>,  <31.630764, 39.517612, 16.472750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650595, 40.130611, 16.016626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338305, 40.192146, 15.774370>,  <31.150930, 40.229069, 15.629016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338305, 40.192146, 15.774370>,  <31.650595, 40.130611, 16.016626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338305, 40.192146, 15.774370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600228, -0.454145, 0.658391,
		-0.173763, 0.877546, 0.446901,
		-0.780726, 0.153839, -0.605641,
		31.104086, 40.238297, 15.592678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838964, 40.230545, 16.037380>,  <31.650595, 40.130611, 16.016626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838964, 40.230545, 16.037380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634171, 40.442867, 16.307526>,  <30.511293, 40.570259, 16.469612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634171, 40.442867, 16.307526>,  <30.838964, 40.230545, 16.037380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634171, 40.442867, 16.307526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322607, -0.609852, 0.723882,
		0.796113, 0.588494, 0.140993,
		-0.511985, 0.530807, 0.675363,
		30.480576, 40.602108, 16.510134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977381, 39.868687, 16.591312>,  <30.838964, 40.230545, 16.037380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977381, 39.868687, 16.591312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785702, 40.176311, 16.760502>,  <30.670694, 40.360886, 16.862015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785702, 40.176311, 16.760502>,  <30.977381, 39.868687, 16.591312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785702, 40.176311, 16.760502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033873, -0.497753, 0.866657,
		0.877052, 0.400974, 0.264573,
		-0.479199, 0.769065, 0.422973,
		30.641941, 40.407032, 16.887394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314865, 39.956081, 17.180725>,  <30.977381, 39.868687, 16.591312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314865, 39.956081, 17.180725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968365, 40.130104, 17.278976>,  <30.760464, 40.234516, 17.337927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968365, 40.130104, 17.278976>,  <31.314865, 39.956081, 17.180725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968365, 40.130104, 17.278976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005493, -0.499906, 0.866062,
		0.499576, 0.748879, 0.435435,
		-0.866252, 0.435056, 0.245627,
		30.708488, 40.260620, 17.352665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352545, 40.377724, 17.813721>,  <31.314865, 39.956081, 17.180725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352545, 40.377724, 17.813721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983242, 40.234249, 17.758671>,  <30.761662, 40.148163, 17.725641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983242, 40.234249, 17.758671>,  <31.352545, 40.377724, 17.813721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983242, 40.234249, 17.758671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043298, -0.453090, 0.890413,
		-0.381740, 0.816119, 0.433848,
		-0.923255, -0.358691, -0.137626,
		30.706266, 40.126640, 17.717382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088640, 40.395794, 18.413839>,  <31.352545, 40.377724, 17.813721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088640, 40.395794, 18.413839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841492, 40.149448, 18.218307>,  <30.693203, 40.001640, 18.100988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841492, 40.149448, 18.218307>,  <31.088640, 40.395794, 18.413839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841492, 40.149448, 18.218307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200025, -0.478130, 0.855209,
		-0.760413, 0.626185, 0.172234,
		-0.617869, -0.615861, -0.488828,
		30.656132, 39.964691, 18.071659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447273, 40.414032, 18.636597>,  <31.088640, 40.395794, 18.413839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447273, 40.414032, 18.636597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514851, 40.046673, 18.493483>,  <30.555397, 39.826260, 18.407614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514851, 40.046673, 18.493483>,  <30.447273, 40.414032, 18.636597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514851, 40.046673, 18.493483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013533, -0.365132, 0.930858,
		-0.985533, -0.152420, -0.074115,
		0.168943, -0.918394, -0.357786,
		30.565535, 39.771156, 18.386147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873159, 39.890202, 18.867231>,  <30.447273, 40.414032, 18.636597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873159, 39.890202, 18.867231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199696, 39.674801, 18.783710>,  <30.395618, 39.545559, 18.733599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199696, 39.674801, 18.783710>,  <29.873159, 39.890202, 18.867231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199696, 39.674801, 18.783710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007084, -0.352157, 0.935914,
		-0.577525, -0.765506, -0.283665,
		0.816342, -0.538505, -0.208802,
		30.444599, 39.513248, 18.721069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778755, 39.401371, 19.309719>,  <29.873159, 39.890202, 18.867231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778755, 39.401371, 19.309719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164356, 39.344223, 19.220018>,  <30.395718, 39.309937, 19.166199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164356, 39.344223, 19.220018>,  <29.778755, 39.401371, 19.309719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164356, 39.344223, 19.220018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159803, -0.362767, 0.918076,
		-0.212512, -0.920863, -0.326878,
		0.964003, -0.142866, -0.224249,
		30.453558, 39.301365, 19.152744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834841, 38.709457, 19.347519>,  <29.778755, 39.401371, 19.309719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834841, 38.709457, 19.347519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182158, 38.899624, 19.404160>,  <30.390547, 39.013725, 19.438145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182158, 38.899624, 19.404160>,  <29.834841, 38.709457, 19.347519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182158, 38.899624, 19.404160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163530, -0.543831, 0.823107,
		0.468327, -0.691540, -0.549948,
		0.868290, 0.475416, 0.141603,
		30.442644, 39.042248, 19.446640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333185, 38.173157, 19.531601>,  <29.834841, 38.709457, 19.347519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333185, 38.173157, 19.531601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509293, 38.503654, 19.672165>,  <30.614956, 38.701954, 19.756504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509293, 38.503654, 19.672165>,  <30.333185, 38.173157, 19.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509293, 38.503654, 19.672165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262097, -0.492604, 0.829848,
		0.858761, -0.273250, -0.433432,
		0.440266, 0.826242, 0.351411,
		30.641373, 38.751526, 19.777588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941648, 37.973232, 19.887070>,  <30.333185, 38.173157, 19.531601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941648, 37.973232, 19.887070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929283, 38.349022, 20.023560>,  <30.921864, 38.574497, 20.105453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929283, 38.349022, 20.023560>,  <30.941648, 37.973232, 19.887070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929283, 38.349022, 20.023560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346294, -0.310175, 0.885365,
		0.937616, 0.145534, -0.315746,
		-0.030914, 0.939474, 0.341223,
		30.920010, 38.630863, 20.125927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536886, 37.950371, 20.181204>,  <30.941648, 37.973232, 19.887070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536886, 37.950371, 20.181204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296255, 38.224911, 20.344681>,  <31.151876, 38.389633, 20.442766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296255, 38.224911, 20.344681>,  <31.536886, 37.950371, 20.181204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296255, 38.224911, 20.344681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166103, -0.392960, 0.904429,
		0.781355, 0.611969, 0.122390,
		-0.601577, 0.686351, 0.408691,
		31.115782, 38.430817, 20.467289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926386, 38.221649, 20.847797>,  <31.536886, 37.950371, 20.181204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926386, 38.221649, 20.847797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541723, 38.325069, 20.884382>,  <31.310925, 38.387123, 20.906334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541723, 38.325069, 20.884382>,  <31.926386, 38.221649, 20.847797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541723, 38.325069, 20.884382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009091, -0.303266, 0.952863,
		0.274102, 0.917159, 0.289287,
		-0.961658, 0.258552, 0.091464,
		31.253225, 38.402634, 20.911821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929737, 38.569447, 21.554703>,  <31.926386, 38.221649, 20.847797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929737, 38.569447, 21.554703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556349, 38.451950, 21.472387>,  <31.332315, 38.381451, 21.422998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556349, 38.451950, 21.472387>,  <31.929737, 38.569447, 21.554703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556349, 38.451950, 21.472387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052136, -0.456547, 0.888170,
		-0.354843, 0.839810, 0.410859,
		-0.933471, -0.293740, -0.205787,
		31.276308, 38.363827, 21.410652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565823, 38.747597, 22.145771>,  <31.929737, 38.569447, 21.554703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565823, 38.747597, 22.145771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361870, 38.446526, 21.979162>,  <31.239498, 38.265881, 21.879196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361870, 38.446526, 21.979162>,  <31.565823, 38.747597, 22.145771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361870, 38.446526, 21.979162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086165, -0.437071, 0.895290,
		-0.855917, 0.492383, 0.158000,
		-0.509883, -0.752680, -0.416523,
		31.208904, 38.220722, 21.854206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252159, 38.491146, 22.678219>,  <31.565823, 38.747597, 22.145771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252159, 38.491146, 22.678219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243464, 38.199192, 22.404928>,  <31.238245, 38.024021, 22.240953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243464, 38.199192, 22.404928>,  <31.252159, 38.491146, 22.678219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243464, 38.199192, 22.404928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115591, -0.676971, 0.726876,
		-0.993059, 0.094778, -0.069650,
		-0.021741, -0.729882, -0.683228,
		31.236942, 37.980228, 22.199961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607450, 38.078571, 22.816624>,  <31.252159, 38.491146, 22.678219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607450, 38.078571, 22.816624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865271, 37.836994, 22.629089>,  <31.019962, 37.692047, 22.516569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865271, 37.836994, 22.629089>,  <30.607450, 38.078571, 22.816624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865271, 37.836994, 22.629089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119680, -0.685348, 0.718313,
		-0.755137, -0.406878, -0.514021,
		0.644549, -0.603943, -0.468837,
		31.058636, 37.655811, 22.488440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292097, 37.393970, 23.080738>,  <30.607450, 38.078571, 22.816624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292097, 37.393970, 23.080738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645113, 37.343838, 22.899446>,  <30.856922, 37.313759, 22.790670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645113, 37.343838, 22.899446>,  <30.292097, 37.393970, 23.080738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645113, 37.343838, 22.899446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115725, -0.876298, 0.467665,
		-0.455777, -0.465182, -0.758862,
		0.882539, -0.125332, -0.453230,
		30.909874, 37.306236, 22.763477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325031, 36.631531, 22.904093>,  <30.292097, 37.393970, 23.080738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325031, 36.631531, 22.904093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698025, 36.775890, 22.898003>,  <30.921820, 36.862507, 22.894348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698025, 36.775890, 22.898003>,  <30.325031, 36.631531, 22.904093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698025, 36.775890, 22.898003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317596, -0.799069, 0.510512,
		0.172077, -0.480878, -0.859736,
		0.932482, 0.360896, -0.015223,
		30.977770, 36.884159, 22.893436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814692, 36.081734, 22.681765>,  <30.325031, 36.631531, 22.904093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814692, 36.081734, 22.681765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017508, 36.346336, 22.902790>,  <31.139196, 36.505096, 23.035404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017508, 36.346336, 22.902790>,  <30.814692, 36.081734, 22.681765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017508, 36.346336, 22.902790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295233, -0.735590, 0.609709,
		0.809784, -0.146011, -0.568270,
		0.507038, 0.661505, 0.552562,
		31.169619, 36.544788, 23.068558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309254, 35.717262, 22.804064>,  <30.814692, 36.081734, 22.681765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309254, 35.717262, 22.804064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324022, 35.999821, 23.086803>,  <31.332884, 36.169357, 23.256447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324022, 35.999821, 23.086803>,  <31.309254, 35.717262, 22.804064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324022, 35.999821, 23.086803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208280, -0.697237, 0.685915,
		0.977372, 0.121896, -0.172873,
		0.036923, 0.706400, 0.706849,
		31.335100, 36.211742, 23.298859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905016, 35.641220, 23.129892>,  <31.309254, 35.717262, 22.804064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905016, 35.641220, 23.129892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702074, 35.823376, 23.422525>,  <31.580309, 35.932667, 23.598104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702074, 35.823376, 23.422525>,  <31.905016, 35.641220, 23.129892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702074, 35.823376, 23.422525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344440, -0.671030, 0.656567,
		0.789905, 0.585100, 0.183598,
		-0.507357, 0.455387, 0.731582,
		31.549868, 35.959991, 23.642000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338303, 35.847706, 23.722282>,  <31.905016, 35.641220, 23.129892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338303, 35.847706, 23.722282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966440, 35.770405, 23.847755>,  <31.743324, 35.724022, 23.923040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966440, 35.770405, 23.847755>,  <32.338303, 35.847706, 23.722282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966440, 35.770405, 23.847755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359874, -0.658788, 0.660673,
		0.078972, 0.727083, 0.681992,
		-0.929653, -0.193257, 0.313684,
		31.687544, 35.712429, 23.941860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371765, 35.656017, 24.404818>,  <32.338303, 35.847706, 23.722282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371765, 35.656017, 24.404818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990866, 35.551720, 24.341270>,  <31.762327, 35.489140, 24.303143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990866, 35.551720, 24.341270>,  <32.371765, 35.656017, 24.404818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990866, 35.551720, 24.341270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087324, -0.731154, 0.676600,
		-0.292576, 0.630417, 0.719009,
		-0.952247, -0.260744, -0.158867,
		31.705193, 35.473495, 24.293610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161301, 35.691616, 25.072763>,  <32.371765, 35.656017, 24.404818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161301, 35.691616, 25.072763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896925, 35.474213, 24.865784>,  <31.738298, 35.343769, 24.741596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896925, 35.474213, 24.865784>,  <32.161301, 35.691616, 25.072763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896925, 35.474213, 24.865784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064609, -0.728182, 0.682332,
		-0.747652, 0.417549, 0.516401,
		-0.660941, -0.543510, -0.517449,
		31.698643, 35.311161, 24.710548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744020, 35.516750, 25.569719>,  <32.161301, 35.691616, 25.072763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744020, 35.516750, 25.569719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676821, 35.261494, 25.269171>,  <31.636501, 35.108341, 25.088842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676821, 35.261494, 25.269171>,  <31.744020, 35.516750, 25.569719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676821, 35.261494, 25.269171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020921, -0.764339, 0.644474,
		-0.985565, 0.092553, 0.141760,
		-0.168001, -0.638137, -0.751370,
		31.626421, 35.070053, 25.043760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089314, 35.172085, 25.582487>,  <31.744020, 35.516750, 25.569719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089314, 35.172085, 25.582487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306114, 34.911278, 25.370409>,  <31.436195, 34.754795, 25.243162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306114, 34.911278, 25.370409>,  <31.089314, 35.172085, 25.582487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306114, 34.911278, 25.370409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006210, -0.633991, 0.773315,
		-0.840355, -0.415845, -0.347674,
		0.542002, -0.652018, -0.530195,
		31.468716, 34.715672, 25.211351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825304, 34.564407, 25.842916>,  <31.089314, 35.172085, 25.582487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825304, 34.564407, 25.842916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149740, 34.444828, 25.641815>,  <31.344402, 34.373081, 25.521154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149740, 34.444828, 25.641815>,  <30.825304, 34.564407, 25.842916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149740, 34.444828, 25.641815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109245, -0.766976, 0.632308,
		-0.574625, -0.567784, -0.589430,
		0.811093, -0.298947, -0.502751,
		31.393068, 34.355145, 25.490990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652544, 33.922199, 25.705843>,  <30.825304, 34.564407, 25.842916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652544, 33.922199, 25.705843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048985, 33.930241, 25.653204>,  <31.286848, 33.935066, 25.621620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048985, 33.930241, 25.653204>,  <30.652544, 33.922199, 25.705843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048985, 33.930241, 25.653204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118027, -0.589958, 0.798761,
		-0.061580, -0.807184, -0.587079,
		0.991099, 0.020104, -0.131599,
		31.346313, 33.936272, 25.613724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888964, 33.236179, 25.656834>,  <30.652544, 33.922199, 25.705843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888964, 33.236179, 25.656834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233957, 33.421131, 25.739126>,  <31.440954, 33.532101, 25.788502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233957, 33.421131, 25.739126>,  <30.888964, 33.236179, 25.656834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233957, 33.421131, 25.739126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266435, -0.760475, 0.592191,
		0.430268, -0.455942, -0.779093,
		0.862486, 0.462379, 0.205729,
		31.492702, 33.559845, 25.800844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315439, 32.720528, 25.713461>,  <30.888964, 33.236179, 25.656834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315439, 32.720528, 25.713461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491848, 33.028381, 25.898136>,  <31.597694, 33.213093, 26.008942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491848, 33.028381, 25.898136>,  <31.315439, 32.720528, 25.713461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491848, 33.028381, 25.898136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284985, -0.607884, 0.741121,
		0.851048, -0.195277, -0.487427,
		0.441023, 0.769638, 0.461687,
		31.624155, 33.259274, 26.036642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054596, 32.440563, 25.904327>,  <31.315439, 32.720528, 25.713461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054596, 32.440563, 25.904327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950369, 32.740517, 26.147564>,  <31.887833, 32.920490, 26.293507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950369, 32.740517, 26.147564>,  <32.054596, 32.440563, 25.904327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950369, 32.740517, 26.147564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348295, -0.514423, 0.783620,
		0.900442, 0.415979, -0.127142,
		-0.260565, 0.749887, 0.608091,
		31.872200, 32.965485, 26.329992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671955, 32.618210, 26.376057>,  <32.054596, 32.440563, 25.904327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671955, 32.618210, 26.376057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329941, 32.732380, 26.549240>,  <32.124733, 32.800880, 26.653151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329941, 32.732380, 26.549240>,  <32.671955, 32.618210, 26.376057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329941, 32.732380, 26.549240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270825, -0.466222, 0.842194,
		0.442240, 0.837358, 0.321333,
		-0.855031, 0.285426, 0.432959,
		32.073433, 32.818008, 26.679129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848763, 33.046379, 26.905718>,  <32.671955, 32.618210, 26.376057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848763, 33.046379, 26.905718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478580, 32.915489, 26.982094>,  <32.256470, 32.836956, 27.027920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478580, 32.915489, 26.982094>,  <32.848763, 33.046379, 26.905718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478580, 32.915489, 26.982094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341445, -0.502005, 0.794611,
		-0.164160, 0.800573, 0.576311,
		-0.925455, -0.327222, 0.190942,
		32.200943, 32.817322, 27.039377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730965, 33.129219, 27.686611>,  <32.848763, 33.046379, 26.905718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730965, 33.129219, 27.686611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479801, 32.851654, 27.545637>,  <32.329102, 32.685116, 27.461052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479801, 32.851654, 27.545637>,  <32.730965, 33.129219, 27.686611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479801, 32.851654, 27.545637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157139, -0.556545, 0.815821,
		-0.762255, 0.456883, 0.458503,
		-0.627913, -0.693913, -0.352435,
		32.291428, 32.643478, 27.439907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482151, 32.874443, 28.277908>,  <32.730965, 33.129219, 27.686611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482151, 32.874443, 28.277908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363945, 32.579933, 28.034410>,  <32.293022, 32.403229, 27.888311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363945, 32.579933, 28.034410>,  <32.482151, 32.874443, 28.277908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363945, 32.579933, 28.034410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125627, -0.661619, 0.739241,
		-0.947042, 0.141984, 0.288015,
		-0.295517, -0.736274, -0.608744,
		32.275291, 32.359051, 27.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029209, 32.435051, 28.734961>,  <32.482151, 32.874443, 28.277908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029209, 32.435051, 28.734961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134769, 32.229275, 28.408598>,  <32.198105, 32.105808, 28.212780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134769, 32.229275, 28.408598>,  <32.029209, 32.435051, 28.734961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134769, 32.229275, 28.408598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261194, -0.776173, 0.573876,
		-0.928511, -0.364558, -0.070466,
		0.263905, -0.514445, -0.815905,
		32.213940, 32.074940, 28.163826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722273, 31.759842, 28.824295>,  <32.029209, 32.435051, 28.734961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722273, 31.759842, 28.824295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998632, 31.692116, 28.543158>,  <32.164448, 31.651480, 28.374475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998632, 31.692116, 28.543158>,  <31.722273, 31.759842, 28.824295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998632, 31.692116, 28.543158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189337, -0.895879, 0.401936,
		-0.697716, -0.410773, -0.586906,
		0.690901, -0.169314, -0.702844,
		32.205902, 31.641321, 28.332304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619755, 31.018909, 28.517902>,  <31.722273, 31.759842, 28.824295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619755, 31.018909, 28.517902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995903, 31.134241, 28.445715>,  <32.221592, 31.203440, 28.402403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995903, 31.134241, 28.445715>,  <31.619755, 31.018909, 28.517902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995903, 31.134241, 28.445715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334225, -0.881819, 0.332700,
		-0.063211, -0.373178, -0.925604,
		0.940371, 0.288329, -0.180466,
		32.278015, 31.220739, 28.391575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002632, 30.488991, 28.263256>,  <31.619755, 31.018909, 28.517902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002632, 30.488991, 28.263256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313602, 30.700388, 28.399672>,  <32.500183, 30.827227, 28.481522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313602, 30.700388, 28.399672>,  <32.002632, 30.488991, 28.263256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313602, 30.700388, 28.399672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367947, -0.821888, 0.434874,
		0.510123, -0.212598, -0.833413,
		0.777425, 0.528491, 0.341040,
		32.546829, 30.858934, 28.501984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421219, 30.013266, 28.321198>,  <32.002632, 30.488991, 28.263256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421219, 30.013266, 28.321198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619785, 30.286057, 28.536037>,  <32.738926, 30.449732, 28.664942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619785, 30.286057, 28.536037>,  <32.421219, 30.013266, 28.321198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619785, 30.286057, 28.536037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560257, -0.724305, 0.401863,
		0.663087, 0.101423, -0.741639,
		0.496415, 0.681979, 0.537101,
		32.768711, 30.490650, 28.697168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191002, 29.936596, 28.147932>,  <32.421219, 30.013266, 28.321198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191002, 29.936596, 28.147932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150299, 30.118059, 28.502071>,  <33.125877, 30.226936, 28.714554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150299, 30.118059, 28.502071>,  <33.191002, 29.936596, 28.147932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150299, 30.118059, 28.502071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765343, -0.532849, 0.361003,
		0.635528, 0.714329, -0.292981,
		-0.101760, 0.453658, 0.885347,
		33.119770, 30.254156, 28.767675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792137, 30.145090, 28.260393>,  <33.191002, 29.936596, 28.147932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792137, 30.145090, 28.260393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622795, 30.091219, 28.618752>,  <33.521191, 30.058897, 28.833767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622795, 30.091219, 28.618752>,  <33.792137, 30.145090, 28.260393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622795, 30.091219, 28.618752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763915, -0.584683, 0.273093,
		0.487037, 0.800005, 0.350410,
		-0.423354, -0.134677, 0.895898,
		33.495789, 30.050816, 28.887522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291515, 30.225599, 28.741659>,  <33.792137, 30.145090, 28.260393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291515, 30.225599, 28.741659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011368, 30.045326, 28.963062>,  <33.843281, 29.937162, 29.095903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011368, 30.045326, 28.963062>,  <34.291515, 30.225599, 28.741659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011368, 30.045326, 28.963062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705747, -0.553272, 0.442506,
		0.106810, 0.700553, 0.705562,
		-0.700366, -0.450684, 0.553508,
		33.801258, 29.910122, 29.129114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597157, 30.008257, 29.269636>,  <34.291515, 30.225599, 28.741659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597157, 30.008257, 29.269636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262760, 29.793434, 29.314686>,  <34.062122, 29.664539, 29.341717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262760, 29.793434, 29.314686>,  <34.597157, 30.008257, 29.269636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262760, 29.793434, 29.314686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449084, -0.551660, 0.702848,
		-0.315339, 0.638154, 0.702368,
		-0.835993, -0.537058, 0.112625,
		34.011963, 29.632317, 29.348473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301502, 30.050358, 29.912977>,  <34.597157, 30.008257, 29.269636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301502, 30.050358, 29.912977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211021, 29.691271, 29.761747>,  <34.156734, 29.475819, 29.671009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211021, 29.691271, 29.761747>,  <34.301502, 30.050358, 29.912977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211021, 29.691271, 29.761747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457007, -0.440571, 0.772685,
		-0.860220, 0.001996, 0.509918,
		-0.226198, -0.897716, -0.378076,
		34.143162, 29.421957, 29.648325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421200, 30.580845, 30.235369>,  <34.301502, 30.050358, 29.912977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421200, 30.580845, 30.235369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774704, 30.741144, 30.332003>,  <34.986809, 30.837324, 30.389984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774704, 30.741144, 30.332003>,  <34.421200, 30.580845, 30.235369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774704, 30.741144, 30.332003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345013, 0.906824, -0.242150,
		-0.316117, 0.130653, 0.939681,
		0.883763, 0.400750, 0.241586,
		35.039833, 30.861368, 30.404478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363480, 31.148613, 30.721233>,  <34.421200, 30.580845, 30.235369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363480, 31.148613, 30.721233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723671, 31.215342, 30.560577>,  <34.939785, 31.255379, 30.464184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723671, 31.215342, 30.560577>,  <34.363480, 31.148613, 30.721233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723671, 31.215342, 30.560577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285763, 0.923122, -0.257266,
		0.327845, 0.346436, 0.878920,
		0.900476, 0.166819, -0.401639,
		34.993813, 31.265387, 30.440086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709572, 31.772900, 31.001898>,  <34.363480, 31.148613, 30.721233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709572, 31.772900, 31.001898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867393, 31.725960, 30.637358>,  <34.962086, 31.697796, 30.418634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867393, 31.725960, 30.637358>,  <34.709572, 31.772900, 31.001898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867393, 31.725960, 30.637358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177965, 0.963273, -0.201084,
		0.901475, 0.241526, 0.359178,
		0.394553, -0.117351, -0.911349,
		34.985760, 31.690754, 30.363953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028015, 32.382793, 30.893661>,  <34.709572, 31.772900, 31.001898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028015, 32.382793, 30.893661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056038, 32.249744, 30.517481>,  <35.072853, 32.169914, 30.291773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056038, 32.249744, 30.517481>,  <35.028015, 32.382793, 30.893661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056038, 32.249744, 30.517481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193376, 0.920358, -0.339921,
		0.978620, 0.205675, 0.000156,
		0.070057, -0.332624, -0.940454,
		35.077053, 32.149956, 30.235344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652538, 32.723843, 30.431610>,  <35.028015, 32.382793, 30.893661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652538, 32.723843, 30.431610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345169, 32.614380, 30.200218>,  <35.160748, 32.548702, 30.061384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345169, 32.614380, 30.200218>,  <35.652538, 32.723843, 30.431610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345169, 32.614380, 30.200218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158159, 0.957123, -0.242696,
		0.620090, -0.095001, -0.778757,
		-0.768423, -0.273661, -0.578478,
		35.114643, 32.532280, 30.026674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792168, 33.061012, 29.776083>,  <35.652538, 32.723843, 30.431610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792168, 33.061012, 29.776083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406876, 32.953701, 29.781857>,  <35.175701, 32.889317, 29.785320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406876, 32.953701, 29.781857>,  <35.792168, 33.061012, 29.776083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406876, 32.953701, 29.781857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262469, 0.928206, -0.263711,
		0.057351, -0.257804, -0.964494,
		-0.963235, -0.268274, 0.014432,
		35.117905, 32.873219, 29.786186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562206, 33.164303, 29.193386>,  <35.792168, 33.061012, 29.776083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562206, 33.164303, 29.193386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229206, 33.189922, 29.413507>,  <35.029404, 33.205292, 29.545582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229206, 33.189922, 29.413507>,  <35.562206, 33.164303, 29.193386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229206, 33.189922, 29.413507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205917, 0.886368, -0.414669,
		-0.514331, -0.458530, -0.724716,
		-0.832503, 0.064046, 0.550306,
		34.979454, 33.209137, 29.578600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082020, 33.394455, 28.728743>,  <35.562206, 33.164303, 29.193386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082020, 33.394455, 28.728743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878078, 33.476032, 29.063038>,  <34.755714, 33.524979, 29.263615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878078, 33.476032, 29.063038>,  <35.082020, 33.394455, 28.728743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878078, 33.476032, 29.063038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377080, 0.820208, -0.430197,
		-0.773216, -0.534477, -0.341280,
		-0.509851, 0.203946, 0.835738,
		34.725124, 33.537216, 29.313759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520748, 33.610661, 28.517929>,  <35.082020, 33.394455, 28.728743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520748, 33.610661, 28.517929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486538, 33.728249, 28.898722>,  <34.466011, 33.798801, 29.127197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486538, 33.728249, 28.898722>,  <34.520748, 33.610661, 28.517929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486538, 33.728249, 28.898722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382394, 0.872623, -0.303816,
		-0.920033, -0.390015, 0.037783,
		-0.085523, 0.293968, 0.951981,
		34.460880, 33.816441, 29.184317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871033, 33.894508, 28.614536>,  <34.520748, 33.610661, 28.517929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871033, 33.894508, 28.614536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081673, 34.061962, 28.910492>,  <34.208057, 34.162434, 29.088066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081673, 34.061962, 28.910492>,  <33.871033, 33.894508, 28.614536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081673, 34.061962, 28.910492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264317, 0.907836, -0.325531,
		-0.807976, -0.024140, 0.588721,
		0.526604, 0.418630, 0.739890,
		34.239655, 34.187550, 29.132460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512672, 34.432243, 28.813015>,  <33.871033, 33.894508, 28.614536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512672, 34.432243, 28.813015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868210, 34.529900, 28.968113>,  <34.081532, 34.588493, 29.061171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868210, 34.529900, 28.968113>,  <33.512672, 34.432243, 28.813015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868210, 34.529900, 28.968113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209978, 0.969173, -0.128893,
		-0.407258, 0.033148, 0.912711,
		0.888848, 0.244142, 0.387743,
		34.134865, 34.603142, 29.084436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360538, 34.961987, 29.240524>,  <33.512672, 34.432243, 28.813015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360538, 34.961987, 29.240524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751347, 34.986385, 29.158825>,  <33.985832, 35.001026, 29.109804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751347, 34.986385, 29.158825>,  <33.360538, 34.961987, 29.240524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751347, 34.986385, 29.158825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095521, 0.981879, -0.163673,
		0.190565, 0.179421, 0.965139,
		0.977016, 0.061001, -0.204250,
		34.044453, 35.004684, 29.097549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540478, 35.526859, 29.659586>,  <33.360538, 34.961987, 29.240524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540478, 35.526859, 29.659586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809856, 35.466431, 29.370132>,  <33.971485, 35.430172, 29.196461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809856, 35.466431, 29.370132>,  <33.540478, 35.526859, 29.659586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809856, 35.466431, 29.370132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045053, 0.968688, -0.244161,
		0.737861, 0.197031, 0.645554,
		0.673448, -0.151073, -0.723633,
		34.011890, 35.421108, 29.153042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963196, 36.106571, 29.655407>,  <33.540478, 35.526859, 29.659586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963196, 36.106571, 29.655407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030212, 35.939468, 29.298216>,  <34.070423, 35.839207, 29.083900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030212, 35.939468, 29.298216>,  <33.963196, 36.106571, 29.655407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030212, 35.939468, 29.298216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159801, 0.882296, -0.442739,
		0.972828, 0.216875, 0.081062,
		0.167540, -0.417755, -0.892979,
		34.080475, 35.814140, 29.030323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241287, 36.662857, 29.260008>,  <33.963196, 36.106571, 29.655407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241287, 36.662857, 29.260008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114613, 36.399593, 28.986794>,  <34.038609, 36.241634, 28.822865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114613, 36.399593, 28.986794>,  <34.241287, 36.662857, 29.260008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114613, 36.399593, 28.986794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348991, 0.750436, -0.561294,
		0.881993, 0.060616, -0.467347,
		-0.316691, -0.658157, -0.683034,
		34.019604, 36.202145, 28.781883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524933, 36.885593, 28.628777>,  <34.241287, 36.662857, 29.260008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524933, 36.885593, 28.628777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229034, 36.637802, 28.523687>,  <34.051495, 36.489128, 28.460634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229034, 36.637802, 28.523687>,  <34.524933, 36.885593, 28.628777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229034, 36.637802, 28.523687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308544, 0.659250, -0.685704,
		0.597978, -0.426186, -0.678814,
		-0.739745, -0.619479, -0.262720,
		34.007111, 36.451958, 28.444872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553600, 36.672764, 27.861334>,  <34.524933, 36.885593, 28.628777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553600, 36.672764, 27.861334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177189, 36.597202, 27.973610>,  <33.951344, 36.551865, 28.040976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177189, 36.597202, 27.973610>,  <34.553600, 36.672764, 27.861334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177189, 36.597202, 27.973610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336030, 0.425049, -0.840486,
		0.039467, -0.885239, -0.463460,
		-0.941024, -0.188908, 0.280691,
		33.894882, 36.540531, 28.057817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283730, 36.400158, 27.328867>,  <34.553600, 36.672764, 27.861334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283730, 36.400158, 27.328867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941273, 36.494877, 27.512583>,  <33.735798, 36.551708, 27.622812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941273, 36.494877, 27.512583>,  <34.283730, 36.400158, 27.328867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941273, 36.494877, 27.512583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399213, 0.261250, -0.878850,
		-0.328097, -0.935776, -0.129136,
		-0.856143, 0.236796, 0.459289,
		33.684429, 36.565914, 27.650370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776146, 36.114391, 26.874538>,  <34.283730, 36.400158, 27.328867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776146, 36.114391, 26.874538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593948, 36.395630, 27.092964>,  <33.484631, 36.564373, 27.224020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593948, 36.395630, 27.092964>,  <33.776146, 36.114391, 26.874538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593948, 36.395630, 27.092964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441120, 0.354538, -0.824449,
		-0.773266, -0.616409, 0.148660,
		-0.455492, 0.703095, 0.546063,
		33.457302, 36.606560, 27.256783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073269, 36.009689, 26.744490>,  <33.776146, 36.114391, 26.874538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073269, 36.009689, 26.744490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112179, 36.384289, 26.879257>,  <33.135525, 36.609047, 26.960117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112179, 36.384289, 26.879257>,  <33.073269, 36.009689, 26.744490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112179, 36.384289, 26.879257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487553, 0.339963, -0.804187,
		-0.867658, -0.086039, 0.489661,
		0.097275, 0.936495, 0.336920,
		33.141361, 36.665237, 26.980333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374569, 36.277256, 26.790295>,  <33.073269, 36.009689, 26.744490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374569, 36.277256, 26.790295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615784, 36.595772, 26.771276>,  <32.760513, 36.786880, 26.759867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615784, 36.595772, 26.771276>,  <32.374569, 36.277256, 26.790295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615784, 36.595772, 26.771276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563751, 0.383250, -0.731645,
		-0.564382, 0.468015, 0.680026,
		0.603040, 0.796292, -0.047544,
		32.796696, 36.834660, 26.757013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955648, 36.727997, 26.596846>,  <32.374569, 36.277256, 26.790295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955648, 36.727997, 26.596846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311268, 36.888988, 26.509571>,  <32.524639, 36.985584, 26.457207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311268, 36.888988, 26.509571>,  <31.955648, 36.727997, 26.596846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311268, 36.888988, 26.509571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322408, 0.212058, -0.922542,
		-0.325036, 0.890529, 0.318292,
		0.889047, 0.402480, -0.218187,
		32.577980, 37.009731, 26.444115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854389, 37.427734, 26.395517>,  <31.955648, 36.727997, 26.596846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854389, 37.427734, 26.395517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202080, 37.324692, 26.226715>,  <32.410694, 37.262867, 26.125433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202080, 37.324692, 26.226715>,  <31.854389, 37.427734, 26.395517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202080, 37.324692, 26.226715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267259, 0.473286, -0.839389,
		0.415958, 0.842403, 0.342545,
		0.869225, -0.257602, -0.422007,
		32.462849, 37.247410, 26.100113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945984, 38.040791, 26.070253>,  <31.854389, 37.427734, 26.395517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945984, 38.040791, 26.070253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208237, 37.784103, 25.911079>,  <32.365589, 37.630093, 25.815575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208237, 37.784103, 25.911079>,  <31.945984, 38.040791, 26.070253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208237, 37.784103, 25.911079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033821, 0.551438, -0.833530,
		0.754324, 0.533030, 0.383243,
		0.655631, -0.641713, -0.397935,
		32.404926, 37.591591, 25.791698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547756, 38.376953, 25.895350>,  <31.945984, 38.040791, 26.070253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547756, 38.376953, 25.895350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522240, 38.056511, 25.657303>,  <32.506931, 37.864246, 25.514475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522240, 38.056511, 25.657303>,  <32.547756, 38.376953, 25.895350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522240, 38.056511, 25.657303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238620, 0.566790, -0.788549,
		0.969016, -0.192308, 0.155004,
		-0.063789, -0.801103, -0.595117,
		32.503101, 37.816181, 25.478767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210316, 38.296711, 25.434324>,  <32.547756, 38.376953, 25.895350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210316, 38.296711, 25.434324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922192, 38.111717, 25.227533>,  <32.749317, 38.000721, 25.103458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922192, 38.111717, 25.227533>,  <33.210316, 38.296711, 25.434324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922192, 38.111717, 25.227533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459899, 0.239525, -0.855056,
		0.519282, -0.853659, 0.040167,
		-0.720305, -0.462488, -0.516978,
		32.706100, 37.972973, 25.072439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627735, 37.953220, 24.813034>,  <33.210316, 38.296711, 25.434324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627735, 37.953220, 24.813034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242264, 37.934631, 24.707832>,  <33.010983, 37.923477, 24.644711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242264, 37.934631, 24.707832>,  <33.627735, 37.953220, 24.813034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242264, 37.934631, 24.707832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248386, 0.205982, -0.946507,
		0.098159, -0.977452, -0.186957,
		-0.963675, -0.046471, -0.263005,
		32.953163, 37.920689, 24.628931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457256, 37.494408, 24.244049>,  <33.627735, 37.953220, 24.813034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457256, 37.494408, 24.244049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163017, 37.764984, 24.229506>,  <32.986473, 37.927330, 24.220779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163017, 37.764984, 24.229506>,  <33.457256, 37.494408, 24.244049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163017, 37.764984, 24.229506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285583, 0.260999, -0.922129,
		-0.614275, -0.688702, -0.385170,
		-0.735601, 0.676439, -0.036357,
		32.942337, 37.967915, 24.218599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240463, 37.526283, 23.575726>,  <33.457256, 37.494408, 24.244049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240463, 37.526283, 23.575726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065304, 37.871906, 23.675049>,  <32.960209, 38.079281, 23.734644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065304, 37.871906, 23.675049>,  <33.240463, 37.526283, 23.575726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065304, 37.871906, 23.675049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217786, 0.369924, -0.903175,
		-0.872248, -0.341419, -0.350167,
		-0.437897, 0.864054, 0.248309,
		32.933933, 38.131123, 23.749542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938396, 37.713455, 23.023880>,  <33.240463, 37.526283, 23.575726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938396, 37.713455, 23.023880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927856, 38.064457, 23.215420>,  <32.921532, 38.275059, 23.330343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927856, 38.064457, 23.215420>,  <32.938396, 37.713455, 23.023880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927856, 38.064457, 23.215420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137878, 0.477626, -0.867677,
		-0.990099, 0.043158, -0.133575,
		-0.026352, 0.877503, 0.478847,
		32.919952, 38.327709, 23.359074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483395, 38.114716, 22.730808>,  <32.938396, 37.713455, 23.023880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483395, 38.114716, 22.730808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678291, 38.402313, 22.929060>,  <32.795231, 38.574871, 23.048010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678291, 38.402313, 22.929060>,  <32.483395, 38.114716, 22.730808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678291, 38.402313, 22.929060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069828, 0.533660, -0.842811,
		-0.870471, 0.445261, 0.209816,
		0.487242, 0.718992, 0.495628,
		32.824463, 38.618011, 23.077747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202946, 38.725296, 22.516428>,  <32.483395, 38.114716, 22.730808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202946, 38.725296, 22.516428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533760, 38.859463, 22.696875>,  <32.732250, 38.939964, 22.805141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533760, 38.859463, 22.696875>,  <32.202946, 38.725296, 22.516428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533760, 38.859463, 22.696875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071630, 0.733065, -0.676376,
		-0.557564, 0.591701, 0.582247,
		0.827038, 0.335417, 0.451115,
		32.781872, 38.960087, 22.832209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093193, 39.425941, 22.586975>,  <32.202946, 38.725296, 22.516428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093193, 39.425941, 22.586975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489918, 39.391739, 22.624910>,  <32.727955, 39.371220, 22.647673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489918, 39.391739, 22.624910>,  <32.093193, 39.425941, 22.586975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489918, 39.391739, 22.624910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125779, 0.782285, -0.610091,
		-0.022027, 0.617025, 0.786635,
		0.991814, -0.085503, 0.094840,
		32.787460, 39.366089, 22.653362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353138, 40.116444, 22.357443>,  <32.093193, 39.425941, 22.586975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353138, 40.116444, 22.357443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691746, 39.903862, 22.369869>,  <32.894909, 39.776314, 22.377325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691746, 39.903862, 22.369869>,  <32.353138, 40.116444, 22.357443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691746, 39.903862, 22.369869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382945, 0.567354, -0.729014,
		0.369810, 0.629021, 0.683793,
		0.846518, -0.531452, 0.031067,
		32.945702, 39.744427, 22.379189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858994, 40.618328, 22.497803>,  <32.353138, 40.116444, 22.357443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858994, 40.618328, 22.497803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965981, 40.294315, 22.289070>,  <33.030174, 40.099907, 22.163830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965981, 40.294315, 22.289070>,  <32.858994, 40.618328, 22.497803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965981, 40.294315, 22.289070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261732, 0.582279, -0.769706,
		0.927339, 0.069292, 0.367752,
		0.267468, -0.810031, -0.521834,
		33.046223, 40.051308, 22.132521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485485, 40.813507, 22.130390>,  <32.858994, 40.618328, 22.497803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485485, 40.813507, 22.130390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374641, 40.490730, 21.921757>,  <33.308136, 40.297062, 21.796576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374641, 40.490730, 21.921757>,  <33.485485, 40.813507, 22.130390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374641, 40.490730, 21.921757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246058, 0.465144, -0.850351,
		0.928799, -0.363977, 0.069662,
		-0.277105, -0.806946, -0.521585,
		33.291512, 40.248646, 21.765282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004833, 40.685623, 21.755070>,  <33.485485, 40.813507, 22.130390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004833, 40.685623, 21.755070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701088, 40.505493, 21.567207>,  <33.518841, 40.397415, 21.454491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701088, 40.505493, 21.567207>,  <34.004833, 40.685623, 21.755070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701088, 40.505493, 21.567207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161154, 0.569147, -0.806289,
		0.630399, -0.687950, -0.359614,
		-0.759359, -0.450330, -0.469655,
		33.473278, 40.370396, 21.426311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259563, 40.606091, 21.104774>,  <34.004833, 40.685623, 21.755070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259563, 40.606091, 21.104774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861713, 40.607086, 21.063358>,  <33.623005, 40.607685, 21.038509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861713, 40.607086, 21.063358>,  <34.259563, 40.606091, 21.104774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861713, 40.607086, 21.063358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085788, 0.579906, -0.810154,
		0.058026, -0.814679, -0.577001,
		-0.994622, 0.002490, -0.103539,
		33.563328, 40.607834, 21.032297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616287, 41.021416, 20.797060>,  <34.259563, 40.606091, 21.104774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616287, 41.021416, 20.797060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977272, 41.098816, 20.643112>,  <35.193863, 41.145256, 20.550743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977272, 41.098816, 20.643112>,  <34.616287, 41.021416, 20.797060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977272, 41.098816, 20.643112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408015, -0.670508, 0.619631,
		-0.138162, -0.716225, -0.684056,
		0.902461, 0.193496, -0.384869,
		35.248009, 41.156864, 20.527651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003967, 40.343266, 20.734592>,  <34.616287, 41.021416, 20.797060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003967, 40.343266, 20.734592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244415, 40.661812, 20.761297>,  <35.388683, 40.852940, 20.777321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244415, 40.661812, 20.761297>,  <35.003967, 40.343266, 20.734592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244415, 40.661812, 20.761297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514770, -0.449752, 0.729887,
		0.611284, -0.404381, -0.680300,
		0.601118, 0.796366, 0.066763,
		35.424751, 40.900723, 20.781326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701363, 40.078236, 20.614813>,  <35.003967, 40.343266, 20.734592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701363, 40.078236, 20.614813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737312, 40.431458, 20.799049>,  <35.758881, 40.643391, 20.909592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737312, 40.431458, 20.799049>,  <35.701363, 40.078236, 20.614813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737312, 40.431458, 20.799049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526853, -0.434610, 0.730438,
		0.845192, 0.177019, -0.504297,
		0.089871, 0.883051, 0.460592,
		35.764275, 40.696373, 20.937227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367569, 40.085503, 20.829416>,  <35.701363, 40.078236, 20.614813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367569, 40.085503, 20.829416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173817, 40.352272, 21.055899>,  <36.057568, 40.512333, 21.191788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173817, 40.352272, 21.055899>,  <36.367569, 40.085503, 20.829416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173817, 40.352272, 21.055899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310166, -0.474245, 0.823947,
		0.818032, 0.574718, 0.022855,
		-0.484376, 0.666926, 0.566206,
		36.028503, 40.552349, 21.225760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830864, 40.051811, 21.354923>,  <36.367569, 40.085503, 20.829416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830864, 40.051811, 21.354923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507874, 40.243008, 21.493198>,  <36.314079, 40.357727, 21.576164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507874, 40.243008, 21.493198>,  <36.830864, 40.051811, 21.354923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507874, 40.243008, 21.493198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213204, -0.309919, 0.926550,
		0.550017, 0.821873, 0.148344,
		-0.807481, 0.477991, 0.345688,
		36.265629, 40.386406, 21.596905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078026, 40.573063, 21.844187>,  <36.830864, 40.051811, 21.354923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078026, 40.573063, 21.844187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702156, 40.462780, 21.925175>,  <36.476635, 40.396610, 21.973768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702156, 40.462780, 21.925175>,  <37.078026, 40.573063, 21.844187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702156, 40.462780, 21.925175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292276, -0.339610, 0.894002,
		-0.177724, 0.899249, 0.399706,
		-0.939675, -0.275710, 0.202472,
		36.420254, 40.380066, 21.985916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025143, 40.690163, 22.554234>,  <37.078026, 40.573063, 21.844187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025143, 40.690163, 22.554234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698055, 40.469208, 22.489494>,  <36.501801, 40.336636, 22.450651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698055, 40.469208, 22.489494>,  <37.025143, 40.690163, 22.554234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698055, 40.469208, 22.489494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119199, -0.437586, 0.891241,
		-0.563135, 0.709495, 0.423669,
		-0.817723, -0.552390, -0.161849,
		36.452740, 40.303490, 22.440939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608391, 40.753639, 23.102654>,  <37.025143, 40.690163, 22.554234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608391, 40.753639, 23.102654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515106, 40.405376, 22.929417>,  <36.459133, 40.196419, 22.825474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515106, 40.405376, 22.929417>,  <36.608391, 40.753639, 23.102654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515106, 40.405376, 22.929417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063102, -0.457986, 0.886717,
		-0.970376, 0.179466, 0.161750,
		-0.233215, -0.870655, -0.433094,
		36.445141, 40.144180, 22.799488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013748, 40.520012, 23.417629>,  <36.608391, 40.753639, 23.102654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013748, 40.520012, 23.417629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174973, 40.195107, 23.248981>,  <36.271709, 40.000164, 23.147793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174973, 40.195107, 23.248981>,  <36.013748, 40.520012, 23.417629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174973, 40.195107, 23.248981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052926, -0.480618, 0.875332,
		-0.913641, -0.330499, -0.236709,
		0.403063, -0.812266, -0.421620,
		36.295891, 39.951427, 23.122496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700539, 40.017399, 23.842197>,  <36.013748, 40.520012, 23.417629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700539, 40.017399, 23.842197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956089, 39.791687, 23.633039>,  <36.109421, 39.656261, 23.507544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956089, 39.791687, 23.633039>,  <35.700539, 40.017399, 23.842197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956089, 39.791687, 23.633039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030732, -0.660435, 0.750254,
		-0.768693, -0.495392, -0.404597,
		0.638880, -0.564281, -0.522896,
		36.147755, 39.622402, 23.476171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407024, 39.347691, 23.665903>,  <35.700539, 40.017399, 23.842197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407024, 39.347691, 23.665903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806179, 39.347748, 23.691896>,  <36.045673, 39.347782, 23.707493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806179, 39.347748, 23.691896>,  <35.407024, 39.347691, 23.665903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806179, 39.347748, 23.691896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049509, -0.645986, 0.761742,
		0.042089, -0.763349, -0.644614,
		0.997886, 0.000146, 0.064982,
		36.105545, 39.347794, 23.711391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553387, 38.684059, 23.674685>,  <35.407024, 39.347691, 23.665903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553387, 38.684059, 23.674685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885159, 38.844532, 23.830173>,  <36.084221, 38.940815, 23.923468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885159, 38.844532, 23.830173>,  <35.553387, 38.684059, 23.674685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885159, 38.844532, 23.830173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007122, -0.688219, 0.725468,
		0.558568, -0.604492, -0.567971,
		0.829428, 0.401179, 0.388723,
		36.133987, 38.964886, 23.946791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062862, 38.167416, 23.729136>,  <35.553387, 38.684059, 23.674685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062862, 38.167416, 23.729136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142601, 38.443501, 24.007380>,  <36.190445, 38.609150, 24.174326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142601, 38.443501, 24.007380>,  <36.062862, 38.167416, 23.729136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142601, 38.443501, 24.007380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056557, -0.716777, 0.695005,
		0.978296, -0.099203, -0.181921,
		0.199344, 0.690210, 0.695610,
		36.202404, 38.650562, 24.216063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691219, 37.987869, 24.086695>,  <36.062862, 38.167416, 23.729136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691219, 37.987869, 24.086695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531918, 38.240704, 24.352585>,  <36.436337, 38.392403, 24.512119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531918, 38.240704, 24.352585>,  <36.691219, 37.987869, 24.086695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531918, 38.240704, 24.352585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203279, -0.645838, 0.735915,
		0.894465, 0.428209, 0.128721,
		-0.398258, 0.632084, 0.664726,
		36.412441, 38.430328, 24.552002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174473, 37.974529, 24.628910>,  <36.691219, 37.987869, 24.086695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174473, 37.974529, 24.628910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832817, 38.133514, 24.763054>,  <36.627823, 38.228905, 24.843540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832817, 38.133514, 24.763054>,  <37.174473, 37.974529, 24.628910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832817, 38.133514, 24.763054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003263, -0.648950, 0.760825,
		0.520033, 0.648756, 0.555591,
		-0.854140, 0.397467, 0.335358,
		36.576576, 38.252754, 24.863661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298668, 37.989147, 25.248789>,  <37.174473, 37.974529, 24.628910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298668, 37.989147, 25.248789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898808, 37.993404, 25.239166>,  <36.658890, 37.995960, 25.233393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898808, 37.993404, 25.239166>,  <37.298668, 37.989147, 25.248789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898808, 37.993404, 25.239166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025784, -0.577536, 0.815958,
		-0.005208, 0.816296, 0.577610,
		-0.999654, 0.010644, -0.024055,
		36.598911, 37.996597, 25.231949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062004, 38.120197, 25.861830>,  <37.298668, 37.989147, 25.248789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062004, 38.120197, 25.861830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748569, 37.930412, 25.701393>,  <36.560509, 37.816544, 25.605131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748569, 37.930412, 25.701393>,  <37.062004, 38.120197, 25.861830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748569, 37.930412, 25.701393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048112, -0.689995, 0.722214,
		-0.619411, 0.546623, 0.563501,
		-0.783591, -0.474458, -0.401091,
		36.513493, 37.788074, 25.581066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615955, 38.038189, 26.469881>,  <37.062004, 38.120197, 25.861830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615955, 38.038189, 26.469881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479404, 37.765522, 26.211025>,  <36.397476, 37.601921, 26.055712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479404, 37.765522, 26.211025>,  <36.615955, 38.038189, 26.469881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479404, 37.765522, 26.211025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072711, -0.667284, 0.741246,
		-0.937111, 0.300096, 0.178229,
		-0.341374, -0.681670, -0.647139,
		36.376991, 37.561020, 26.016884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067047, 37.600456, 26.919144>,  <36.615955, 38.038189, 26.469881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067047, 37.600456, 26.919144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178265, 37.432823, 26.573412>,  <36.244995, 37.332241, 26.365973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178265, 37.432823, 26.573412>,  <36.067047, 37.600456, 26.919144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178265, 37.432823, 26.573412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006903, -0.900655, 0.434479,
		-0.960545, -0.114836, -0.253311,
		0.278039, -0.419086, -0.864327,
		36.261677, 37.307098, 26.314114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544899, 37.067051, 26.693342>,  <36.067047, 37.600456, 26.919144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544899, 37.067051, 26.693342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870548, 36.899738, 26.532219>,  <36.065937, 36.799351, 26.435545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870548, 36.899738, 26.532219>,  <35.544899, 37.067051, 26.693342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870548, 36.899738, 26.532219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199104, -0.852676, 0.483014,
		-0.545497, -0.313031, -0.777461,
		0.814120, -0.418278, -0.402806,
		36.114784, 36.774254, 26.411377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418194, 36.261803, 26.638485>,  <35.544899, 37.067051, 26.693342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418194, 36.261803, 26.638485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802776, 36.367764, 26.667963>,  <36.033524, 36.431339, 26.685650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802776, 36.367764, 26.667963>,  <35.418194, 36.261803, 26.638485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802776, 36.367764, 26.667963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146054, -0.719095, 0.679390,
		0.232969, -0.642439, -0.730067,
		0.961454, 0.264906, 0.073696,
		36.091213, 36.447235, 26.690071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691105, 35.683422, 27.010363>,  <35.418194, 36.261803, 26.638485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691105, 35.683422, 27.010363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992767, 35.944736, 27.037069>,  <36.173767, 36.101524, 27.053093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992767, 35.944736, 27.037069>,  <35.691105, 35.683422, 27.010363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992767, 35.944736, 27.037069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310946, -0.444794, 0.839923,
		0.578410, -0.612674, -0.538583,
		0.754158, 0.653290, 0.066765,
		36.219013, 36.140724, 27.057098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180836, 35.209908, 27.135571>,  <35.691105, 35.683422, 27.010363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180836, 35.209908, 27.135571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333126, 35.566593, 27.233465>,  <36.424500, 35.780605, 27.292202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333126, 35.566593, 27.233465>,  <36.180836, 35.209908, 27.135571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333126, 35.566593, 27.233465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243298, -0.351944, 0.903848,
		0.892108, -0.284572, -0.350946,
		0.380723, 0.891714, 0.244736,
		36.447342, 35.834106, 27.306887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979065, 35.034927, 27.393881>,  <36.180836, 35.209908, 27.135571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979065, 35.034927, 27.393881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836498, 35.381065, 27.534819>,  <36.750957, 35.588749, 27.619381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836498, 35.381065, 27.534819>,  <36.979065, 35.034927, 27.393881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836498, 35.381065, 27.534819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229298, -0.284567, 0.930830,
		0.905752, 0.412560, -0.096995,
		-0.356421, 0.865341, 0.352346,
		36.729572, 35.640667, 27.640522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465160, 35.338753, 27.783634>,  <36.979065, 35.034927, 27.393881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465160, 35.338753, 27.783634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134235, 35.505524, 27.934221>,  <36.935680, 35.605587, 28.024574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134235, 35.505524, 27.934221>,  <37.465160, 35.338753, 27.783634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134235, 35.505524, 27.934221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231855, -0.356992, 0.904875,
		0.511663, 0.835900, 0.198677,
		-0.827311, 0.416927, 0.376468,
		36.886044, 35.630600, 28.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685875, 35.700424, 28.250826>,  <37.465160, 35.338753, 27.783634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685875, 35.700424, 28.250826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300957, 35.648914, 28.346657>,  <37.070004, 35.618008, 28.404156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300957, 35.648914, 28.346657>,  <37.685875, 35.700424, 28.250826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300957, 35.648914, 28.346657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269179, -0.324542, 0.906761,
		-0.039014, 0.937064, 0.346970,
		-0.962299, -0.128773, 0.239577,
		37.012268, 35.610283, 28.418530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624817, 35.970543, 28.865120>,  <37.685875, 35.700424, 28.250826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624817, 35.970543, 28.865120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321743, 35.713985, 28.816912>,  <37.139900, 35.560051, 28.787987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321743, 35.713985, 28.816912>,  <37.624817, 35.970543, 28.865120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321743, 35.713985, 28.816912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165245, -0.367201, 0.915345,
		-0.631355, 0.673627, 0.384210,
		-0.757684, -0.641396, -0.120521,
		37.094437, 35.521568, 28.780756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384415, 36.001965, 29.506353>,  <37.624817, 35.970543, 28.865120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384415, 36.001965, 29.506353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248093, 35.662716, 29.344099>,  <37.166302, 35.459167, 29.246746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248093, 35.662716, 29.344099>,  <37.384415, 36.001965, 29.506353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248093, 35.662716, 29.344099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192232, -0.485212, 0.853004,
		-0.920272, 0.212729, 0.328398,
		-0.340802, -0.848125, -0.405634,
		37.145851, 35.408279, 29.222408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853741, 35.756943, 30.010715>,  <37.384415, 36.001965, 29.506353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853741, 35.756943, 30.010715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926575, 35.436359, 29.782854>,  <36.970276, 35.244007, 29.646137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926575, 35.436359, 29.782854>,  <36.853741, 35.756943, 30.010715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926575, 35.436359, 29.782854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171863, -0.544480, 0.820978,
		-0.968147, -0.247387, 0.038602,
		0.182081, -0.801462, -0.569653,
		36.981197, 35.195919, 29.611958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456249, 35.193275, 30.312668>,  <36.853741, 35.756943, 30.010715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456249, 35.193275, 30.312668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760559, 35.037762, 30.104797>,  <36.943146, 34.944454, 29.980076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760559, 35.037762, 30.104797>,  <36.456249, 35.193275, 30.312668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760559, 35.037762, 30.104797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304717, -0.492999, 0.814923,
		-0.573031, -0.778328, -0.256592,
		0.760777, -0.388788, -0.519674,
		36.988792, 34.921127, 29.948895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470165, 34.521996, 30.568544>,  <36.456249, 35.193275, 30.312668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470165, 34.521996, 30.568544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828285, 34.574368, 30.398228>,  <37.043156, 34.605789, 30.296038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828285, 34.574368, 30.398228>,  <36.470165, 34.521996, 30.568544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828285, 34.574368, 30.398228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435065, -0.462348, 0.772627,
		-0.095704, -0.876979, -0.470903,
		0.895299, 0.130930, -0.425791,
		37.096874, 34.613647, 30.270491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880024, 33.956242, 30.746063>,  <36.470165, 34.521996, 30.568544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880024, 33.956242, 30.746063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164314, 34.218906, 30.645138>,  <37.334888, 34.376503, 30.584583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164314, 34.218906, 30.645138>,  <36.880024, 33.956242, 30.746063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164314, 34.218906, 30.645138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670152, -0.522958, 0.526698,
		0.213912, -0.543428, -0.811744,
		0.710730, 0.656659, -0.252312,
		37.377533, 34.415905, 30.569445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416103, 33.605949, 30.580788>,  <36.880024, 33.956242, 30.746063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416103, 33.605949, 30.580788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586254, 33.959095, 30.660393>,  <37.688343, 34.170982, 30.708157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586254, 33.959095, 30.660393>,  <37.416103, 33.605949, 30.580788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586254, 33.959095, 30.660393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780137, -0.469169, 0.413844,
		0.458739, -0.020782, -0.888328,
		0.425377, 0.882864, 0.199014,
		37.713867, 34.223953, 30.720097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094147, 33.571640, 30.314020>,  <37.416103, 33.605949, 30.580788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094147, 33.571640, 30.314020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120934, 33.868988, 30.580227>,  <38.137005, 34.047398, 30.739950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120934, 33.868988, 30.580227>,  <38.094147, 33.571640, 30.314020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120934, 33.868988, 30.580227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761627, -0.468975, 0.447199,
		0.644546, 0.476926, -0.597581,
		0.066969, 0.743374, 0.665515,
		38.141026, 34.091999, 30.779881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716072, 33.537846, 30.376505>,  <38.094147, 33.571640, 30.314020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716072, 33.537846, 30.376505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631390, 33.782944, 30.681063>,  <38.580582, 33.930004, 30.863796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631390, 33.782944, 30.681063>,  <38.716072, 33.537846, 30.376505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631390, 33.782944, 30.681063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808536, -0.327847, 0.488657,
		0.549045, 0.719065, -0.426023,
		-0.211706, 0.612750, 0.761393,
		38.567879, 33.966770, 30.909481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343185, 34.036617, 30.610464>,  <38.716072, 33.537846, 30.376505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343185, 34.036617, 30.610464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090168, 33.949970, 30.907909>,  <38.938358, 33.897980, 31.086376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090168, 33.949970, 30.907909>,  <39.343185, 34.036617, 30.610464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090168, 33.949970, 30.907909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762477, -0.342825, 0.548726,
		0.136062, 0.914082, 0.382022,
		-0.632547, -0.216622, 0.743612,
		38.900402, 33.884983, 31.130993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707722, 34.237667, 31.250332>,  <39.343185, 34.036617, 30.610464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707722, 34.237667, 31.250332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427807, 33.991936, 31.396152>,  <39.259857, 33.844498, 31.483644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427807, 33.991936, 31.396152>,  <39.707722, 34.237667, 31.250332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427807, 33.991936, 31.396152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672742, -0.395131, 0.625532,
		-0.240235, 0.682990, 0.689791,
		-0.699790, -0.614326, 0.364552,
		39.217869, 33.807636, 31.505518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705547, 34.301712, 32.032677>,  <39.707722, 34.237667, 31.250332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705547, 34.301712, 32.032677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513092, 33.964710, 31.935766>,  <39.397617, 33.762508, 31.877621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513092, 33.964710, 31.935766>,  <39.705547, 34.301712, 32.032677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513092, 33.964710, 31.935766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584877, -0.514369, 0.627171,
		-0.653011, 0.160054, 0.740243,
		-0.481139, -0.842500, -0.242277,
		39.368752, 33.711960, 31.863083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676044, 33.921444, 32.654175>,  <39.705547, 34.301712, 32.032677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676044, 33.921444, 32.654175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623737, 33.624405, 32.391434>,  <39.592354, 33.446182, 32.233791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623737, 33.624405, 32.391434>,  <39.676044, 33.921444, 32.654175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623737, 33.624405, 32.391434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618898, -0.578733, 0.531068,
		-0.774509, -0.337077, 0.535271,
		-0.130768, -0.742595, -0.656850,
		39.584507, 33.401627, 32.194378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633007, 33.365501, 33.060593>,  <39.676044, 33.921444, 32.654175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633007, 33.365501, 33.060593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726479, 33.240566, 32.692280>,  <39.782562, 33.165607, 32.471291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726479, 33.240566, 32.692280>,  <39.633007, 33.365501, 33.060593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726479, 33.240566, 32.692280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624748, -0.677411, 0.388334,
		-0.745038, -0.666004, 0.036830,
		0.233683, -0.312333, -0.920782,
		39.796585, 33.146866, 32.416046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599861, 32.594028, 33.027977>,  <39.633007, 33.365501, 33.060593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599861, 32.594028, 33.027977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839306, 32.752571, 32.749535>,  <39.982971, 32.847694, 32.582470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839306, 32.752571, 32.749535>,  <39.599861, 32.594028, 33.027977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839306, 32.752571, 32.749535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742481, -0.600694, 0.296462,
		-0.300645, -0.694314, -0.653867,
		0.598611, 0.396354, -0.696110,
		40.018890, 32.871479, 32.540703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232666, 31.968098, 33.366402>,  <39.599861, 32.594028, 33.027977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232666, 31.968098, 33.366402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315765, 31.748766, 33.690422>,  <39.365627, 31.617167, 33.884834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315765, 31.748766, 33.690422>,  <39.232666, 31.968098, 33.366402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315765, 31.748766, 33.690422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781495, -0.405011, -0.474585,
		0.588306, 0.731643, 0.344374,
		0.207751, -0.548328, 0.810047,
		39.378090, 31.584267, 33.933437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971081, 32.119614, 33.479565>,  <39.232666, 31.968098, 33.366402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971081, 32.119614, 33.479565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819874, 31.779303, 33.625599>,  <39.729149, 31.575117, 33.713219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819874, 31.779303, 33.625599>,  <39.971081, 32.119614, 33.479565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819874, 31.779303, 33.625599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813904, -0.493329, -0.306900,
		0.441209, 0.181130, 0.878935,
		-0.378015, -0.850775, 0.365083,
		39.706470, 31.524071, 33.735123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421398, 31.881907, 33.993980>,  <39.971081, 32.119614, 33.479565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421398, 31.881907, 33.993980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220451, 31.600561, 33.792820>,  <40.099884, 31.431753, 33.672123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220451, 31.600561, 33.792820>,  <40.421398, 31.881907, 33.993980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220451, 31.600561, 33.792820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863622, -0.436578, -0.252105,
		-0.042233, -0.560964, 0.826762,
		-0.502368, -0.703363, -0.502899,
		40.069740, 31.389553, 33.641949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925884, 31.329428, 33.957451>,  <40.421398, 31.881907, 33.993980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925884, 31.329428, 33.957451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611031, 31.207304, 33.743084>,  <40.422119, 31.134029, 33.614464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611031, 31.207304, 33.743084>,  <40.925884, 31.329428, 33.957451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611031, 31.207304, 33.743084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542901, -0.755316, -0.367092,
		-0.292711, -0.579900, 0.760287,
		-0.787133, -0.305309, -0.535918,
		40.374889, 31.115711, 33.582310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789234, 30.663578, 34.136303>,  <40.925884, 31.329428, 33.957451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789234, 30.663578, 34.136303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679337, 30.702471, 33.753666>,  <40.613400, 30.725807, 33.524086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679337, 30.702471, 33.753666>,  <40.789234, 30.663578, 34.136303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679337, 30.702471, 33.753666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459750, -0.860491, -0.219510,
		-0.844479, -0.500101, 0.191714,
		-0.274745, 0.097231, -0.956588,
		40.596912, 30.731640, 33.466690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315121, 30.241512, 33.862274>,  <40.789234, 30.663578, 34.136303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315121, 30.241512, 33.862274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527218, 30.323223, 33.533127>,  <40.654476, 30.372250, 33.335640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527218, 30.323223, 33.533127>,  <40.315121, 30.241512, 33.862274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527218, 30.323223, 33.533127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059074, -0.977084, -0.204493,
		-0.845785, 0.059821, -0.530159,
		0.530243, 0.204276, -0.822869,
		40.686291, 30.384506, 33.286266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794857, 30.052103, 34.372864>,  <40.315121, 30.241512, 33.862274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794857, 30.052103, 34.372864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526016, 30.232254, 34.607960>,  <39.364712, 30.340345, 34.749016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526016, 30.232254, 34.607960>,  <39.794857, 30.052103, 34.372864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526016, 30.232254, 34.607960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732215, -0.286131, -0.618054,
		-0.110186, -0.845748, 0.522082,
		-0.672102, 0.450377, 0.587741,
		39.324387, 30.367367, 34.784283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271576, 29.633080, 34.564659>,  <39.794857, 30.052103, 34.372864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271576, 29.633080, 34.564659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131706, 30.006960, 34.539169>,  <39.047783, 30.231289, 34.523876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131706, 30.006960, 34.539169>,  <39.271576, 29.633080, 34.564659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131706, 30.006960, 34.539169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560444, -0.263201, -0.785256,
		-0.750752, -0.238872, 0.615883,
		-0.349677, 0.934701, -0.063724,
		39.026802, 30.287371, 34.520054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980209, 29.015057, 34.874199>,  <39.271576, 29.633080, 34.564659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980209, 29.015057, 34.874199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170673, 28.666086, 34.830116>,  <39.284950, 28.456703, 34.803669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170673, 28.666086, 34.830116>,  <38.980209, 29.015057, 34.874199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170673, 28.666086, 34.830116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661865, -0.273053, -0.698124,
		0.578971, 0.405357, -0.707445,
		0.476159, -0.872427, -0.110202,
		39.313522, 28.404358, 34.797054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281418, 28.910482, 34.145336>,  <38.980209, 29.015057, 34.874199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281418, 28.910482, 34.145336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169685, 28.599203, 34.370327>,  <39.102646, 28.412436, 34.505322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169685, 28.599203, 34.370327>,  <39.281418, 28.910482, 34.145336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169685, 28.599203, 34.370327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765685, -0.172950, -0.619527,
		0.579396, -0.603732, -0.547546,
		-0.279331, -0.778200, 0.562476,
		39.085888, 28.365744, 34.539070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215424, 28.308609, 33.797768>,  <39.281418, 28.910482, 34.145336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215424, 28.308609, 33.797768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950249, 28.335340, 34.096043>,  <38.791142, 28.351379, 34.275005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950249, 28.335340, 34.096043>,  <39.215424, 28.308609, 33.797768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950249, 28.335340, 34.096043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732181, 0.150029, -0.664381,
		-0.156275, -0.986420, -0.050528,
		-0.662940, 0.066831, 0.745684,
		38.751366, 28.355389, 34.319748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006748, 27.598364, 33.495365>,  <39.215424, 28.308609, 33.797768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006748, 27.598364, 33.495365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053181, 27.440121, 33.130943>,  <39.081039, 27.345175, 32.912289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053181, 27.440121, 33.130943>,  <39.006748, 27.598364, 33.495365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053181, 27.440121, 33.130943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990848, 0.017504, -0.133846,
		0.068898, 0.918253, -0.389955,
		0.116079, -0.395607, -0.911055,
		39.088005, 27.321438, 32.857628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551640, 28.013290, 33.024090>,  <39.006748, 27.598364, 33.495365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551640, 28.013290, 33.024090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614182, 27.651409, 32.865566>,  <38.651707, 27.434280, 32.770451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614182, 27.651409, 32.865566>,  <38.551640, 28.013290, 33.024090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614182, 27.651409, 32.865566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987691, -0.141469, -0.066727,
		0.004302, 0.401869, -0.915687,
		0.156357, -0.904703, -0.396314,
		38.661087, 27.379997, 32.746674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366787, 28.047873, 32.274166>,  <38.551640, 28.013290, 33.024090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366787, 28.047873, 32.274166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315197, 27.717989, 32.494431>,  <38.284241, 27.520060, 32.626587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315197, 27.717989, 32.494431>,  <38.366787, 28.047873, 32.274166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315197, 27.717989, 32.494431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960248, -0.034762, -0.276975,
		0.247565, -0.564491, -0.787440,
		-0.128977, -0.824707, 0.550657,
		38.276505, 27.470577, 32.659626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093681, 27.430708, 31.894684>,  <38.366787, 28.047873, 32.274166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093681, 27.430708, 31.894684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987045, 27.405172, 32.279362>,  <37.923061, 27.389851, 32.510166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987045, 27.405172, 32.279362>,  <38.093681, 27.430708, 31.894684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987045, 27.405172, 32.279362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946810, -0.169230, -0.273700,
		0.180222, -0.983506, -0.015334,
		-0.266591, -0.063845, 0.961693,
		37.907066, 27.386021, 32.567871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805965, 26.751869, 32.025120>,  <38.093681, 27.430708, 31.894684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805965, 26.751869, 32.025120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666111, 27.036276, 32.269154>,  <37.582199, 27.206921, 32.415573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666111, 27.036276, 32.269154>,  <37.805965, 26.751869, 32.025120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666111, 27.036276, 32.269154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917694, -0.128789, -0.375834,
		-0.188651, -0.691280, 0.697526,
		-0.349640, 0.711017, 0.610087,
		37.561218, 27.249582, 32.452179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257732, 26.486885, 32.594589>,  <37.805965, 26.751869, 32.025120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257732, 26.486885, 32.594589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229061, 26.876429, 32.508373>,  <37.211857, 27.110155, 32.456642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229061, 26.876429, 32.508373>,  <37.257732, 26.486885, 32.594589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229061, 26.876429, 32.508373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876008, -0.164799, -0.453267,
		-0.476939, 0.156323, 0.864923,
		-0.071682, 0.973860, -0.215539,
		37.207558, 27.168587, 32.443710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699093, 26.858437, 32.911282>,  <37.257732, 26.486885, 32.594589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699093, 26.858437, 32.911282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777451, 27.030966, 32.559013>,  <36.824467, 27.134483, 32.347652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777451, 27.030966, 32.559013>,  <36.699093, 26.858437, 32.911282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777451, 27.030966, 32.559013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902278, -0.272469, -0.334150,
		-0.384082, 0.860071, 0.335796,
		0.195898, 0.431323, -0.880673,
		36.836220, 27.160362, 32.294811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299316, 27.407623, 33.311279>,  <36.699093, 26.858437, 32.911282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299316, 27.407623, 33.311279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457733, 27.552443, 32.973740>,  <36.552784, 27.639334, 32.771217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457733, 27.552443, 32.973740>,  <36.299316, 27.407623, 33.311279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457733, 27.552443, 32.973740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252766, 0.840499, 0.479240,
		0.882759, -0.403093, 0.241356,
		0.396037, 0.362047, -0.843846,
		36.576546, 27.661057, 32.720585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007587, 27.678370, 33.402000>,  <36.299316, 27.407623, 33.311279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007587, 27.678370, 33.402000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823284, 27.861170, 33.097672>,  <36.712704, 27.970850, 32.915073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823284, 27.861170, 33.097672>,  <37.007587, 27.678370, 33.402000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823284, 27.861170, 33.097672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207152, 0.888939, 0.408504,
		0.863012, 0.030615, -0.504255,
		-0.460759, 0.457001, -0.760823,
		36.685055, 27.998270, 32.869423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478828, 28.221790, 33.223145>,  <37.007587, 27.678370, 33.402000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478828, 28.221790, 33.223145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134335, 28.341335, 33.058727>,  <36.927639, 28.413061, 32.960079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134335, 28.341335, 33.058727>,  <37.478828, 28.221790, 33.223145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134335, 28.341335, 33.058727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322809, 0.946392, 0.011738,
		0.392513, -0.122578, -0.911542,
		-0.861237, 0.298861, -0.411040,
		36.875965, 28.430994, 32.935413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638321, 28.896402, 32.950138>,  <37.478828, 28.221790, 33.223145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638321, 28.896402, 32.950138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238400, 28.893341, 32.957531>,  <36.998447, 28.891504, 32.961967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238400, 28.893341, 32.957531>,  <37.638321, 28.896402, 32.950138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238400, 28.893341, 32.957531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007796, 0.999941, -0.007583,
		-0.018422, -0.007726, -0.999800,
		-0.999800, -0.007655, 0.018481,
		36.938461, 28.891045, 32.963074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414326, 29.415892, 32.622349>,  <37.638321, 28.896402, 32.950138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414326, 29.415892, 32.622349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103050, 29.354219, 32.865871>,  <36.916286, 29.317217, 33.011986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103050, 29.354219, 32.865871>,  <37.414326, 29.415892, 32.622349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103050, 29.354219, 32.865871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087247, 0.986537, 0.138320,
		-0.621939, 0.054522, -0.781165,
		-0.778190, -0.154181, 0.608809,
		36.869595, 29.307964, 33.048515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901924, 29.806915, 32.409027>,  <37.414326, 29.415892, 32.622349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901924, 29.806915, 32.409027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809025, 29.731054, 32.790623>,  <36.753284, 29.685537, 33.019581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809025, 29.731054, 32.790623>,  <36.901924, 29.806915, 32.409027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809025, 29.731054, 32.790623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155834, 0.975392, 0.155969,
		-0.960092, -0.112441, -0.256088,
		-0.232248, -0.189652, 0.953988,
		36.739349, 29.674158, 33.076820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222965, 30.093946, 32.542698>,  <36.901924, 29.806915, 32.409027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222965, 30.093946, 32.542698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470562, 30.080786, 32.856583>,  <36.619122, 30.072889, 33.044914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470562, 30.080786, 32.856583>,  <36.222965, 30.093946, 32.542698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470562, 30.080786, 32.856583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148835, 0.976104, 0.158331,
		-0.771166, -0.214798, 0.599304,
		0.618993, -0.032902, 0.784707,
		36.656261, 30.070915, 33.091995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087708, 30.752464, 32.741192>,  <36.222965, 30.093946, 32.542698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087708, 30.752464, 32.741192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304440, 30.593863, 33.037624>,  <36.434479, 30.498701, 33.215485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304440, 30.593863, 33.037624>,  <36.087708, 30.752464, 32.741192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304440, 30.593863, 33.037624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041606, 0.893303, 0.447526,
		-0.839458, -0.211649, 0.500514,
		0.541829, -0.396503, 0.741084,
		36.466988, 30.474911, 33.259949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798691, 31.019556, 33.298656>,  <36.087708, 30.752464, 32.741192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798691, 31.019556, 33.298656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145470, 30.896042, 33.455147>,  <36.353535, 30.821934, 33.549042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145470, 30.896042, 33.455147>,  <35.798691, 31.019556, 33.298656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145470, 30.896042, 33.455147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018907, 0.804770, 0.593286,
		-0.498048, -0.506948, 0.703528,
		0.866943, -0.308787, 0.391228,
		36.405552, 30.803406, 33.572514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718422, 31.192488, 34.057739>,  <35.798691, 31.019556, 33.298656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718422, 31.192488, 34.057739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102551, 31.150368, 33.954437>,  <36.333027, 31.125095, 33.892456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102551, 31.150368, 33.954437>,  <35.718422, 31.192488, 34.057739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102551, 31.150368, 33.954437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227004, 0.833067, 0.504449,
		0.162024, -0.543058, 0.823916,
		0.960322, -0.105299, -0.258253,
		36.390648, 31.118778, 33.876961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082314, 30.756884, 34.536091>,  <35.718422, 31.192488, 34.057739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082314, 30.756884, 34.536091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446613, 30.807673, 34.378906>,  <36.665192, 30.838146, 34.284595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446613, 30.807673, 34.378906>,  <36.082314, 30.756884, 34.536091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446613, 30.807673, 34.378906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010465, 0.944158, 0.329327,
		0.412828, -0.304047, 0.858562,
		0.910749, 0.126970, -0.392957,
		36.719837, 30.845764, 34.261021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441360, 31.092976, 35.092552>,  <36.082314, 30.756884, 34.536091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441360, 31.092976, 35.092552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611988, 31.201593, 34.747459>,  <36.714363, 31.266764, 34.540405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611988, 31.201593, 34.747459>,  <36.441360, 31.092976, 35.092552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611988, 31.201593, 34.747459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032309, 0.957834, 0.285501,
		0.903879, -0.093911, 0.417353,
		0.426567, 0.271543, -0.862731,
		36.739956, 31.283056, 34.488640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029400, 31.442272, 35.224823>,  <36.441360, 31.092976, 35.092552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029400, 31.442272, 35.224823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944237, 31.579731, 34.858963>,  <36.893139, 31.662207, 34.639446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944237, 31.579731, 34.858963>,  <37.029400, 31.442272, 35.224823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944237, 31.579731, 34.858963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059250, 0.938927, 0.338978,
		0.975274, 0.017979, -0.220268,
		-0.212910, 0.343647, -0.914645,
		36.880363, 31.682825, 34.584568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441490, 32.059212, 35.105724>,  <37.029400, 31.442272, 35.224823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441490, 32.059212, 35.105724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158119, 32.091518, 34.825268>,  <36.988094, 32.110901, 34.656994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158119, 32.091518, 34.825268>,  <37.441490, 32.059212, 35.105724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158119, 32.091518, 34.825268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017801, 0.991070, 0.132151,
		0.705554, 0.106102, -0.700668,
		-0.708432, 0.080767, -0.701142,
		36.945591, 32.115749, 34.614925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640274, 32.697708, 34.719242>,  <37.441490, 32.059212, 35.105724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640274, 32.697708, 34.719242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257515, 32.604515, 34.649879>,  <37.027859, 32.548599, 34.608261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257515, 32.604515, 34.649879>,  <37.640274, 32.697708, 34.719242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257515, 32.604515, 34.649879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255435, 0.959257, 0.120741,
		0.138207, 0.159830, -0.977422,
		-0.956897, -0.232980, -0.173402,
		36.970448, 32.534622, 34.597858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368694, 33.065712, 34.145691>,  <37.640274, 32.697708, 34.719242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368694, 33.065712, 34.145691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060623, 32.981518, 34.386532>,  <36.875782, 32.931000, 34.531036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060623, 32.981518, 34.386532>,  <37.368694, 33.065712, 34.145691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060623, 32.981518, 34.386532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296470, 0.953946, -0.045742,
		-0.564741, -0.213733, -0.797111,
		-0.770178, -0.210487, 0.602098,
		36.829571, 32.918373, 34.567162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302052, 32.799904, 33.420940>,  <37.368694, 33.065712, 34.145691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302052, 32.799904, 33.420940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548061, 33.047668, 33.616116>,  <37.695667, 33.196327, 33.733219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548061, 33.047668, 33.616116>,  <37.302052, 32.799904, 33.420940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548061, 33.047668, 33.616116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593287, -0.771111, 0.231081,
		0.519385, 0.147365, -0.841738,
		0.615020, 0.619412, 0.487934,
		37.732567, 33.233494, 33.762497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122719, 32.870857, 33.171391>,  <37.302052, 32.799904, 33.420940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122719, 32.870857, 33.171391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097031, 32.975060, 33.556725>,  <38.081615, 33.037582, 33.787926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097031, 32.975060, 33.556725>,  <38.122719, 32.870857, 33.171391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097031, 32.975060, 33.556725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581797, -0.774527, 0.248235,
		0.810794, 0.576408, -0.101817,
		-0.064225, 0.260505, 0.963334,
		38.077763, 33.053211, 33.845726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827530, 32.910072, 33.458298>,  <38.122719, 32.870857, 33.171391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827530, 32.910072, 33.458298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570942, 32.820885, 33.751907>,  <38.416988, 32.767372, 33.928074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570942, 32.820885, 33.751907>,  <38.827530, 32.910072, 33.458298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570942, 32.820885, 33.751907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393636, -0.916932, 0.065468,
		0.658456, 0.330935, 0.675956,
		-0.641472, -0.222973, 0.734028,
		38.378502, 32.753994, 33.972115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153091, 32.560509, 33.959953>,  <38.827530, 32.910072, 33.458298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153091, 32.560509, 33.959953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768093, 32.460964, 34.003147>,  <38.537094, 32.401237, 34.029064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768093, 32.460964, 34.003147>,  <39.153091, 32.560509, 33.959953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768093, 32.460964, 34.003147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267027, -0.939327, 0.215318,
		0.047850, 0.236079, 0.970555,
		-0.962500, -0.248862, 0.107987,
		38.479343, 32.386307, 34.035542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145596, 32.220863, 34.678703>,  <39.153091, 32.560509, 33.959953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145596, 32.220863, 34.678703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876320, 32.087215, 34.414829>,  <38.714756, 32.007027, 34.256504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876320, 32.087215, 34.414829>,  <39.145596, 32.220863, 34.678703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876320, 32.087215, 34.414829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294554, -0.939433, 0.175224,
		-0.678276, -0.076355, 0.730829,
		-0.673186, -0.334119, -0.659685,
		38.674362, 31.986980, 34.216923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653194, 32.736652, 34.520248>,  <39.145596, 32.220863, 34.678703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653194, 32.736652, 34.520248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493210, 33.077091, 34.384212>,  <38.397217, 33.281357, 34.302593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493210, 33.077091, 34.384212>,  <38.653194, 32.736652, 34.520248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493210, 33.077091, 34.384212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489357, 0.115436, 0.864410,
		0.774957, 0.512156, 0.370322,
		-0.399964, 0.851099, -0.340085,
		38.373222, 33.332420, 34.282188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651009, 33.258137, 35.043732>,  <38.653194, 32.736652, 34.520248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651009, 33.258137, 35.043732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345970, 33.332344, 34.795849>,  <38.162949, 33.376869, 34.647118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345970, 33.332344, 34.795849>,  <38.651009, 33.258137, 35.043732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345970, 33.332344, 34.795849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610096, 0.112172, 0.784347,
		0.215022, 0.976218, 0.027641,
		-0.762593, 0.185516, -0.619706,
		38.117191, 33.388000, 34.609936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645367, 33.614193, 35.701576>,  <38.651009, 33.258137, 35.043732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645367, 33.614193, 35.701576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905411, 33.663174, 35.401611>,  <39.061436, 33.692562, 35.221634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905411, 33.663174, 35.401611>,  <38.645367, 33.614193, 35.701576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905411, 33.663174, 35.401611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735182, 0.148029, 0.661509,
		0.192012, -0.981373, 0.006209,
		0.650107, 0.122453, -0.749911,
		39.100445, 33.699909, 35.176640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303234, 33.783112, 36.115303>,  <38.645367, 33.614193, 35.701576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303234, 33.783112, 36.115303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457878, 33.414234, 36.111603>,  <39.550667, 33.192905, 36.109383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457878, 33.414234, 36.111603>,  <39.303234, 33.783112, 36.115303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457878, 33.414234, 36.111603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885551, 0.374011, -0.275528,
		0.257549, 0.098334, 0.961249,
		0.386612, -0.922196, -0.009247,
		39.573860, 33.137577, 36.108829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666008, 34.006424, 36.403072>,  <39.303234, 33.783112, 36.115303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666008, 34.006424, 36.403072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010971, 33.921505, 36.586891>,  <39.217949, 33.870552, 36.697182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010971, 33.921505, 36.586891>,  <38.666008, 34.006424, 36.403072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010971, 33.921505, 36.586891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371659, 0.881891, -0.290066,
		-0.343691, 0.420950, 0.839451,
		0.862407, -0.212297, 0.459548,
		39.269691, 33.857815, 36.724754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994846, 34.649586, 36.411884>,  <38.666008, 34.006424, 36.403072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994846, 34.649586, 36.411884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270142, 34.376225, 36.509274>,  <39.435318, 34.212208, 36.567707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270142, 34.376225, 36.509274>,  <38.994846, 34.649586, 36.411884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270142, 34.376225, 36.509274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722420, 0.614792, -0.316450,
		0.066576, 0.393686, 0.916831,
		0.688242, -0.683405, 0.243477,
		39.476616, 34.171204, 36.582317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516300, 34.902889, 36.942673>,  <38.994846, 34.649586, 36.411884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516300, 34.902889, 36.942673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709747, 34.622765, 36.732651>,  <39.825817, 34.454689, 36.606640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709747, 34.622765, 36.732651>,  <39.516300, 34.902889, 36.942673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709747, 34.622765, 36.732651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648364, 0.689606, -0.322597,
		0.587996, -0.184411, 0.787562,
		0.483617, -0.700312, -0.525051,
		39.854832, 34.412670, 36.575134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263123, 35.017044, 36.951057>,  <39.516300, 34.902889, 36.942673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263123, 35.017044, 36.951057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213417, 34.815926, 36.608887>,  <40.183594, 34.695255, 36.403584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213417, 34.815926, 36.608887>,  <40.263123, 35.017044, 36.951057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213417, 34.815926, 36.608887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769701, 0.495223, -0.402884,
		0.626195, -0.708486, 0.325465,
		-0.124260, -0.502795, -0.855428,
		40.176140, 34.665089, 36.352257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869881, 34.673035, 36.633240>,  <40.263123, 35.017044, 36.951057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869881, 34.673035, 36.633240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624767, 34.760361, 36.329441>,  <40.477699, 34.812756, 36.147163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624767, 34.760361, 36.329441>,  <40.869881, 34.673035, 36.633240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624767, 34.760361, 36.329441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732178, 0.518464, -0.441714,
		0.297334, -0.826760, -0.477556,
		-0.612787, 0.218320, -0.759493,
		40.440933, 34.825855, 36.101593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045139, 34.215260, 36.053658>,  <40.869881, 34.673035, 36.633240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045139, 34.215260, 36.053658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899063, 34.581966, 35.988953>,  <40.811417, 34.801991, 35.950130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899063, 34.581966, 35.988953>,  <41.045139, 34.215260, 36.053658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899063, 34.581966, 35.988953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922044, 0.332246, -0.198614,
		-0.128337, -0.221688, -0.966635,
		-0.365192, 0.916770, -0.161767,
		40.789505, 34.856998, 35.940422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747494, 34.375240, 35.804958>,  <41.045139, 34.215260, 36.053658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747494, 34.375240, 35.804958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846081, 34.610275, 35.496674>,  <41.905231, 34.751297, 35.311703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846081, 34.610275, 35.496674>,  <41.747494, 34.375240, 35.804958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846081, 34.610275, 35.496674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892954, -0.446768, -0.055057,
		-0.376679, -0.674636, -0.634806,
		0.246468, 0.587592, -0.770707,
		41.920021, 34.786552, 35.265461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006035, 33.858871, 35.307777>,  <41.747494, 34.375240, 35.804958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006035, 33.858871, 35.307777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134338, 34.232948, 35.247746>,  <42.211323, 34.457394, 35.211727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134338, 34.232948, 35.247746>,  <42.006035, 33.858871, 35.307777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134338, 34.232948, 35.247746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929521, -0.341248, -0.139786,
		-0.181941, -0.094663, -0.978742,
		0.320761, 0.935194, -0.150078,
		42.230568, 34.513508, 35.202721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830345, 33.069427, 35.359669>,  <42.006035, 33.858871, 35.307777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830345, 33.069427, 35.359669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168781, 33.156101, 35.554470>,  <42.371845, 33.208107, 35.671349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168781, 33.156101, 35.554470>,  <41.830345, 33.069427, 35.359669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168781, 33.156101, 35.554470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088354, -0.843991, 0.529031,
		0.525659, -0.490639, -0.694950,
		0.846094, 0.216688, 0.487001,
		42.422611, 33.221107, 35.700569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076527, 32.430748, 35.364536>,  <41.830345, 33.069427, 35.359669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076527, 32.430748, 35.364536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208008, 32.625187, 35.688431>,  <42.286896, 32.741852, 35.882767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208008, 32.625187, 35.688431>,  <42.076527, 32.430748, 35.364536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208008, 32.625187, 35.688431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048528, -0.847547, 0.528497,
		0.943186, -0.213013, -0.255001,
		0.328702, 0.486096, 0.809732,
		42.306618, 32.771015, 35.931351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238468, 32.075623, 36.033188>,  <42.076527, 32.430748, 35.364536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238468, 32.075623, 36.033188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458466, 32.179958, 35.715832>,  <42.590466, 32.242561, 35.525417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458466, 32.179958, 35.715832>,  <42.238468, 32.075623, 36.033188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458466, 32.179958, 35.715832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652078, 0.459441, 0.603083,
		0.521826, -0.849044, 0.082599,
		0.549993, 0.260843, -0.793391,
		42.623463, 32.258213, 35.477814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953541, 31.896709, 36.152866>,  <42.238468, 32.075623, 36.033188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953541, 31.896709, 36.152866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943737, 32.190365, 35.881443>,  <42.937855, 32.366558, 35.718590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943737, 32.190365, 35.881443>,  <42.953541, 31.896709, 36.152866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943737, 32.190365, 35.881443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641399, 0.532189, 0.552613,
		0.766815, -0.421678, -0.483924,
		-0.024514, 0.734140, -0.678555,
		42.936382, 32.410606, 35.677876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639481, 32.110348, 35.943314>,  <42.953541, 31.896709, 36.152866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639481, 32.110348, 35.943314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365498, 32.399788, 35.977352>,  <43.201107, 32.573452, 35.997776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365498, 32.399788, 35.977352>,  <43.639481, 32.110348, 35.943314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365498, 32.399788, 35.977352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561009, 0.449282, 0.695280,
		0.464874, 0.523973, -0.713684,
		-0.684953, 0.723601, 0.085094,
		43.160011, 32.616867, 36.002880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290947, 32.346661, 35.685707>,  <43.639481, 32.110348, 35.943314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290947, 32.346661, 35.685707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376423, 32.720234, 35.571095>,  <44.427708, 32.944378, 35.502327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376423, 32.720234, 35.571095>,  <44.290947, 32.346661, 35.685707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376423, 32.720234, 35.571095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237658, -0.234791, -0.942545,
		-0.947553, 0.269506, 0.171786,
		0.213688, 0.933938, -0.286528,
		44.440529, 33.000416, 35.485138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985950, 32.965343, 36.089844>,  <44.290947, 32.346661, 35.685707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985950, 32.965343, 36.089844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750893, 32.879616, 35.777756>,  <43.609856, 32.828178, 35.590504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750893, 32.879616, 35.777756>,  <43.985950, 32.965343, 36.089844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750893, 32.879616, 35.777756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003861, 0.965012, -0.262177,
		0.809109, -0.151055, -0.567913,
		-0.587646, -0.214323, -0.780216,
		43.574600, 32.815319, 35.543690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513927, 33.595695, 36.177547>,  <43.985950, 32.965343, 36.089844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513927, 33.595695, 36.177547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464615, 33.797478, 35.835712>,  <44.435028, 33.918549, 35.630611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464615, 33.797478, 35.835712>,  <44.513927, 33.595695, 36.177547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464615, 33.797478, 35.835712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781147, 0.580458, 0.229952,
		0.612055, -0.639209, -0.465619,
		-0.123285, 0.504460, -0.854588,
		44.427631, 33.948814, 35.579334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136646, 33.519737, 35.831745>,  <44.513927, 33.595695, 36.177547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136646, 33.519737, 35.831745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967209, 33.870045, 35.739143>,  <44.865547, 34.080231, 35.683582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967209, 33.870045, 35.739143>,  <45.136646, 33.519737, 35.831745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967209, 33.870045, 35.739143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733838, 0.481592, 0.479114,
		0.531084, 0.033064, -0.846674,
		-0.423593, 0.875772, -0.231502,
		44.840130, 34.132774, 35.669693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641827, 33.960526, 35.535587>,  <45.136646, 33.519737, 35.831745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641827, 33.960526, 35.535587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363770, 34.182415, 35.718479>,  <45.196934, 34.315548, 35.828213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363770, 34.182415, 35.718479>,  <45.641827, 33.960526, 35.535587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363770, 34.182415, 35.718479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696811, 0.363584, 0.618273,
		0.176730, 0.748390, -0.639280,
		-0.695141, 0.554725, 0.457230,
		45.155228, 34.348831, 35.855648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009483, 34.527554, 35.732971>,  <45.641827, 33.960526, 35.535587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009483, 34.527554, 35.732971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665276, 34.538673, 35.936436>,  <45.458752, 34.545345, 36.058514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665276, 34.538673, 35.936436>,  <46.009483, 34.527554, 35.732971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665276, 34.538673, 35.936436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498952, 0.247365, 0.830577,
		-0.102731, 0.968523, -0.226735,
		-0.860519, 0.027803, 0.508659,
		45.407120, 34.547016, 36.089035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668621, 34.162102, 35.852390>,  <46.009483, 34.527554, 35.732971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668621, 34.162102, 35.852390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623837, 34.467491, 35.597965>,  <46.596966, 34.650723, 35.445309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623837, 34.467491, 35.597965>,  <46.668621, 34.162102, 35.852390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623837, 34.467491, 35.597965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990091, 0.031110, -0.136936,
		-0.084759, -0.645092, -0.759389,
		-0.111961, 0.763471, -0.636063,
		46.590248, 34.696533, 35.407146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184586, 34.172543, 35.425766>,  <46.668621, 34.162102, 35.852390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184586, 34.172543, 35.425766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084438, 34.559654, 35.415012>,  <47.024349, 34.791920, 35.408558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084438, 34.559654, 35.415012>,  <47.184586, 34.172543, 35.425766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.084438, 34.559654, 35.415012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958696, 0.251702, 0.132472,
		0.134971, 0.007389, -0.990822,
		-0.250371, 0.967777, -0.026888,
		47.009327, 34.849987, 35.406944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.438797, 34.567081, 34.783855>,  <47.184586, 34.172543, 35.425766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.438797, 34.567081, 34.783855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401134, 34.743797, 35.140720>,  <47.378536, 34.849827, 35.354839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401134, 34.743797, 35.140720>,  <47.438797, 34.567081, 34.783855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401134, 34.743797, 35.140720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987587, 0.154616, 0.027659,
		-0.125722, 0.883693, -0.450867,
		-0.094154, 0.441793, 0.892162,
		47.372887, 34.876335, 35.408371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.876884, 35.043091, 34.633739>,  <47.438797, 34.567081, 34.783855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.876884, 35.043091, 34.633739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.817471, 34.976845, 35.023716>,  <47.781822, 34.937096, 35.257702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.817471, 34.976845, 35.023716>,  <47.876884, 35.043091, 34.633739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.817471, 34.976845, 35.023716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927290, 0.319236, 0.195506,
		-0.343615, 0.933091, 0.106157,
		-0.148535, -0.165617, 0.974940,
		47.772911, 34.927158, 35.316196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.362629, 35.850521, 22.142199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221302, 35.498058, 22.016518>,  <37.136505, 35.286579, 21.941109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221302, 35.498058, 22.016518>,  <37.362629, 35.850521, 22.142199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221302, 35.498058, 22.016518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250156, -0.412624, 0.875879,
		-0.901438, 0.230861, 0.366214,
		-0.353315, -0.881161, -0.314204,
		37.115307, 35.233711, 21.922256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993587, 35.537323, 22.737530>,  <37.362629, 35.850521, 22.142199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993587, 35.537323, 22.737530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073742, 35.210358, 22.521500>,  <37.121834, 35.014179, 22.391882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073742, 35.210358, 22.521500>,  <36.993587, 35.537323, 22.737530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073742, 35.210358, 22.521500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111790, -0.528581, 0.841490,
		-0.973318, -0.229000, -0.014543,
		0.200388, -0.817411, -0.540077,
		37.133858, 34.965134, 22.359476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726620, 35.021229, 23.134277>,  <36.993587, 35.537323, 22.737530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726620, 35.021229, 23.134277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929276, 34.788147, 22.880106>,  <37.050869, 34.648296, 22.727602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929276, 34.788147, 22.880106>,  <36.726620, 35.021229, 23.134277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929276, 34.788147, 22.880106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089563, -0.697463, 0.711002,
		-0.857494, -0.417131, -0.301172,
		0.506638, -0.582706, -0.635430,
		37.081268, 34.613335, 22.689476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325871, 34.391430, 22.904467>,  <36.726620, 35.021229, 23.134277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325871, 34.391430, 22.904467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713989, 34.309647, 22.852747>,  <36.946861, 34.260578, 22.821716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713989, 34.309647, 22.852747>,  <36.325871, 34.391430, 22.904467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713989, 34.309647, 22.852747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075540, -0.763833, 0.640978,
		-0.229815, -0.612173, -0.756591,
		0.970299, -0.204459, -0.129297,
		37.005077, 34.248310, 22.813957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425819, 33.660995, 22.975071>,  <36.325871, 34.391430, 22.904467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425819, 33.660995, 22.975071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801983, 33.791561, 23.013197>,  <37.027679, 33.869900, 23.036072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801983, 33.791561, 23.013197>,  <36.425819, 33.660995, 22.975071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801983, 33.791561, 23.013197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196342, -0.750071, 0.631540,
		0.277637, -0.575191, -0.769463,
		0.940408, 0.326417, 0.095313,
		37.084106, 33.889484, 23.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742989, 32.980663, 23.016632>,  <36.425819, 33.660995, 22.975071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742989, 32.980663, 23.016632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010994, 33.244175, 23.153503>,  <37.171799, 33.402283, 23.235626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010994, 33.244175, 23.153503>,  <36.742989, 32.980663, 23.016632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010994, 33.244175, 23.153503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414292, -0.714313, 0.564020,
		0.615990, -0.236139, -0.751528,
		0.670014, 0.658783, 0.342180,
		37.211998, 33.441811, 23.256157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354164, 32.687023, 22.972208>,  <36.742989, 32.980663, 23.016632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354164, 32.687023, 22.972208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431149, 32.974846, 23.239101>,  <37.477337, 33.147537, 23.399239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431149, 32.974846, 23.239101>,  <37.354164, 32.687023, 22.972208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431149, 32.974846, 23.239101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488589, -0.659938, 0.570756,
		0.851023, 0.216157, -0.478577,
		0.192458, 0.719554, 0.667234,
		37.488888, 33.190712, 23.439272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985569, 32.513363, 23.251303>,  <37.354164, 32.687023, 22.972208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985569, 32.513363, 23.251303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830662, 32.765148, 23.520760>,  <37.737717, 32.916222, 23.682434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830662, 32.765148, 23.520760>,  <37.985569, 32.513363, 23.251303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830662, 32.765148, 23.520760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560711, -0.419200, 0.714055,
		0.731865, 0.654249, -0.190607,
		-0.387267, 0.629468, 0.673643,
		37.714481, 32.953987, 23.722853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568424, 32.642197, 23.673285>,  <37.985569, 32.513363, 23.251303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568424, 32.642197, 23.673285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242577, 32.738827, 23.884205>,  <38.047070, 32.796806, 24.010757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242577, 32.738827, 23.884205>,  <38.568424, 32.642197, 23.673285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242577, 32.738827, 23.884205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427112, -0.365220, 0.827158,
		0.392400, 0.899031, 0.194335,
		-0.814615, 0.241574, 0.527299,
		37.998192, 32.811298, 24.042395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797478, 33.019939, 24.303181>,  <38.568424, 32.642197, 23.673285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797478, 33.019939, 24.303181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.437313, 32.882622, 24.410069>,  <38.221214, 32.800232, 24.474201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.437313, 32.882622, 24.410069>,  <38.797478, 33.019939, 24.303181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437313, 32.882622, 24.410069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394160, -0.383809, 0.835062,
		-0.184114, 0.857226, 0.480900,
		-0.900411, -0.343298, 0.267220,
		38.167191, 32.779633, 24.490234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719559, 33.152061, 25.088753>,  <38.797478, 33.019939, 24.303181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719559, 33.152061, 25.088753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431561, 32.885925, 25.009830>,  <38.258762, 32.726246, 24.962477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431561, 32.885925, 25.009830>,  <38.719559, 33.152061, 25.088753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431561, 32.885925, 25.009830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195423, -0.467190, 0.862290,
		-0.665893, 0.582288, 0.466397,
		-0.719997, -0.665338, -0.197306,
		38.215561, 32.686325, 24.950638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292877, 33.207458, 25.618093>,  <38.719559, 33.152061, 25.088753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292877, 33.207458, 25.618093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206371, 32.843945, 25.475359>,  <38.154469, 32.625835, 25.389717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206371, 32.843945, 25.475359>,  <38.292877, 33.207458, 25.618093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206371, 32.843945, 25.475359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102177, -0.384547, 0.917433,
		-0.970973, 0.161951, 0.176023,
		-0.216268, -0.908788, -0.356837,
		38.141491, 32.571308, 25.368307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903534, 32.911636, 26.127836>,  <38.292877, 33.207458, 25.618093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903534, 32.911636, 26.127836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969917, 32.574924, 25.922365>,  <38.009747, 32.372898, 25.799082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969917, 32.574924, 25.922365>,  <37.903534, 32.911636, 26.127836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969917, 32.574924, 25.922365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098907, -0.504067, 0.857982,
		-0.981160, -0.193196, -0.000396,
		0.165958, -0.841779, -0.513679,
		38.019703, 32.322392, 25.768261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506252, 32.357300, 26.352131>,  <37.903534, 32.911636, 26.127836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506252, 32.357300, 26.352131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.838955, 32.187180, 26.209410>,  <38.038574, 32.085110, 26.123777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.838955, 32.187180, 26.209410>,  <37.506252, 32.357300, 26.352131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838955, 32.187180, 26.209410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111934, -0.501043, 0.858153,
		-0.543749, -0.753708, -0.369137,
		0.831750, -0.425301, -0.356807,
		38.088482, 32.059589, 26.102367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522511, 31.732042, 26.660179>,  <37.506252, 32.357300, 26.352131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522511, 31.732042, 26.660179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892643, 31.723875, 26.508736>,  <38.114723, 31.718975, 26.417870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892643, 31.723875, 26.508736>,  <37.522511, 31.732042, 26.660179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892643, 31.723875, 26.508736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320460, -0.491577, 0.809726,
		-0.202650, -0.870594, -0.448328,
		0.925331, -0.020419, -0.378609,
		38.170242, 31.717749, 26.395153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792118, 31.098354, 26.799999>,  <37.522511, 31.732042, 26.660179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792118, 31.098354, 26.799999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135811, 31.293798, 26.739370>,  <38.342026, 31.411066, 26.702993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135811, 31.293798, 26.739370>,  <37.792118, 31.098354, 26.799999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135811, 31.293798, 26.739370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372621, -0.394732, 0.839845,
		0.350528, -0.778103, -0.521235,
		0.859234, 0.488613, -0.151573,
		38.393581, 31.440382, 26.693899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260330, 30.679062, 26.967705>,  <37.792118, 31.098354, 26.799999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260330, 30.679062, 26.967705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462345, 31.022909, 26.998686>,  <38.583553, 31.229218, 27.017275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462345, 31.022909, 26.998686>,  <38.260330, 30.679062, 26.967705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462345, 31.022909, 26.998686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427392, -0.327036, 0.842843,
		0.749852, -0.392561, -0.532558,
		0.505033, 0.859618, 0.077451,
		38.613853, 31.280794, 27.021921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951939, 30.484411, 27.060326>,  <38.260330, 30.679062, 26.967705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951939, 30.484411, 27.060326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914684, 30.849548, 27.219345>,  <38.892330, 31.068630, 27.314756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914684, 30.849548, 27.219345>,  <38.951939, 30.484411, 27.060326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914684, 30.849548, 27.219345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485140, -0.307072, 0.818747,
		0.869463, 0.269121, -0.414257,
		-0.093135, 0.912842, 0.397549,
		38.886745, 31.123402, 27.338610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639980, 30.720100, 27.209753>,  <38.951939, 30.484411, 27.060326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639980, 30.720100, 27.209753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382465, 30.905136, 27.453575>,  <39.227959, 31.016157, 27.599869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382465, 30.905136, 27.453575>,  <39.639980, 30.720100, 27.209753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382465, 30.905136, 27.453575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594601, -0.198993, 0.779007,
		0.481655, 0.863953, -0.146946,
		-0.643784, 0.462587, 0.609553,
		39.189331, 31.043913, 27.636440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164867, 31.071497, 27.676847>,  <39.639980, 30.720100, 27.209753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164867, 31.071497, 27.676847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.804516, 31.067406, 27.850428>,  <39.588306, 31.064951, 27.954575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.804516, 31.067406, 27.850428>,  <40.164867, 31.071497, 27.676847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804516, 31.067406, 27.850428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432366, -0.109617, 0.895010,
		0.038412, 0.993921, 0.103175,
		-0.900880, -0.010231, 0.433949,
		39.534252, 31.064337, 27.980612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311844, 31.404181, 28.325996>,  <40.164867, 31.071497, 27.676847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311844, 31.404181, 28.325996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966122, 31.206757, 28.364727>,  <39.758690, 31.088303, 28.387966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966122, 31.206757, 28.364727>,  <40.311844, 31.404181, 28.325996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966122, 31.206757, 28.364727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226620, -0.210277, 0.951014,
		-0.449019, 0.843910, 0.293593,
		-0.864306, -0.493558, 0.096828,
		39.706829, 31.058689, 28.393776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829144, 31.517498, 28.879549>,  <40.311844, 31.404181, 28.325996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829144, 31.517498, 28.879549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837303, 31.785015, 29.176815>,  <40.842197, 31.945526, 29.355175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837303, 31.785015, 29.176815>,  <40.829144, 31.517498, 28.879549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837303, 31.785015, 29.176815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372890, 0.694777, -0.615011,
		-0.927651, -0.264573, 0.263560,
		0.020400, 0.668795, 0.743167,
		40.843422, 31.985653, 29.399765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192787, 31.860327, 29.015907>,  <40.829144, 31.517498, 28.879549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192787, 31.860327, 29.015907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.452797, 32.125904, 29.163773>,  <40.608803, 32.285252, 29.252491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.452797, 32.125904, 29.163773>,  <40.192787, 31.860327, 29.015907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452797, 32.125904, 29.163773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295175, 0.668859, -0.682275,
		-0.700244, 0.334379, 0.630753,
		0.650024, 0.663941, 0.369664,
		40.647804, 32.325085, 29.274672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835308, 32.477596, 28.933256>,  <40.192787, 31.860327, 29.015907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835308, 32.477596, 28.933256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.212925, 32.590038, 29.002274>,  <40.439495, 32.657505, 29.043684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.212925, 32.590038, 29.002274>,  <39.835308, 32.477596, 28.933256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212925, 32.590038, 29.002274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091005, 0.724795, -0.682928,
		-0.317035, 0.629008, 0.709816,
		0.944038, 0.281109, 0.172543,
		40.496136, 32.674370, 29.054037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798264, 33.197510, 29.044321>,  <39.835308, 32.477596, 28.933256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798264, 33.197510, 29.044321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.184647, 33.132889, 28.963505>,  <40.416477, 33.094116, 28.915014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.184647, 33.132889, 28.963505>,  <39.798264, 33.197510, 29.044321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184647, 33.132889, 28.963505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009310, 0.758807, -0.651249,
		0.258521, 0.630962, 0.731474,
		0.965961, -0.161551, -0.202042,
		40.474434, 33.084423, 28.902893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237450, 33.911423, 29.155958>,  <39.798264, 33.197510, 29.044321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237450, 33.911423, 29.155958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.431213, 33.668877, 28.903715>,  <40.547470, 33.523350, 28.752369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.431213, 33.668877, 28.903715>,  <40.237450, 33.911423, 29.155958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431213, 33.668877, 28.903715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141908, 0.765741, -0.627298,
		0.863257, 0.214379, 0.456978,
		0.484407, -0.606368, -0.630609,
		40.576534, 33.486965, 28.714533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632153, 34.401733, 28.829830>,  <40.237450, 33.911423, 29.155958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632153, 34.401733, 28.829830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.620575, 34.084774, 28.586103>,  <40.613628, 33.894600, 28.439867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.620575, 34.084774, 28.586103>,  <40.632153, 34.401733, 28.829830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620575, 34.084774, 28.586103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087981, 0.605186, -0.791207,
		0.995701, -0.076512, 0.052197,
		-0.028948, -0.792399, -0.609317,
		40.611889, 33.847054, 28.403309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167210, 34.477612, 28.239223>,  <40.632153, 34.401733, 28.829830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167210, 34.477612, 28.239223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.908695, 34.212509, 28.087923>,  <40.753586, 34.053448, 27.997143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.908695, 34.212509, 28.087923>,  <41.167210, 34.477612, 28.239223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908695, 34.212509, 28.087923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003898, 0.492807, -0.870130,
		0.763089, -0.563824, -0.315908,
		-0.646282, -0.662755, -0.378253,
		40.714809, 34.013683, 27.974447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428913, 34.394909, 27.586281>,  <41.167210, 34.477612, 28.239223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428913, 34.394909, 27.586281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.051582, 34.265038, 27.558792>,  <40.825184, 34.187115, 27.542299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.051582, 34.265038, 27.558792>,  <41.428913, 34.394909, 27.586281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051582, 34.265038, 27.558792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074033, 0.407731, -0.910096,
		0.323504, -0.853430, -0.408660,
		-0.943326, -0.324674, -0.068721,
		40.768585, 34.167633, 27.538176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304642, 34.215538, 26.825056>,  <41.428913, 34.394909, 27.586281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304642, 34.215538, 26.825056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.925926, 34.242687, 26.950897>,  <40.698696, 34.258976, 27.026402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.925926, 34.242687, 26.950897>,  <41.304642, 34.215538, 26.825056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925926, 34.242687, 26.950897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251590, 0.453517, -0.855000,
		-0.200712, -0.888660, -0.412310,
		-0.946793, 0.067876, 0.314603,
		40.641888, 34.263050, 27.045279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831886, 33.947449, 26.228674>,  <41.304642, 34.215538, 26.825056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831886, 33.947449, 26.228674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.635166, 34.193489, 26.475182>,  <40.517136, 34.341114, 26.623087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.635166, 34.193489, 26.475182>,  <40.831886, 33.947449, 26.228674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635166, 34.193489, 26.475182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409149, 0.461514, -0.787148,
		-0.768590, -0.639265, 0.024694,
		-0.491799, 0.615098, 0.616270,
		40.487625, 34.378017, 26.660063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126495, 33.919594, 26.015394>,  <40.831886, 33.947449, 26.228674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126495, 33.919594, 26.015394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147812, 34.253178, 26.235092>,  <40.160603, 34.453327, 26.366911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147812, 34.253178, 26.235092>,  <40.126495, 33.919594, 26.015394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147812, 34.253178, 26.235092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452002, 0.510600, -0.731425,
		-0.890424, -0.209285, 0.404160,
		0.053288, 0.833959, 0.549247,
		40.163799, 34.503365, 26.399866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484306, 34.217121, 25.794361>,  <40.126495, 33.919594, 26.015394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484306, 34.217121, 25.794361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692131, 34.517708, 25.957012>,  <39.816826, 34.698059, 26.054602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692131, 34.517708, 25.957012>,  <39.484306, 34.217121, 25.794361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692131, 34.517708, 25.957012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383552, 0.630386, -0.674909,
		-0.763505, 0.194697, 0.615754,
		0.519565, 0.751470, 0.406627,
		39.848000, 34.743149, 26.079000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038174, 34.731628, 26.034853>,  <39.484306, 34.217121, 25.794361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038174, 34.731628, 26.034853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.380581, 34.919868, 25.949280>,  <39.586025, 35.032810, 25.897936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.380581, 34.919868, 25.949280>,  <39.038174, 34.731628, 26.034853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380581, 34.919868, 25.949280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461703, 0.509872, -0.725852,
		-0.232506, 0.720117, 0.653737,
		0.856021, 0.470598, -0.213932,
		39.637386, 35.061047, 25.885099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820301, 35.508053, 25.888912>,  <39.038174, 34.731628, 26.034853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820301, 35.508053, 25.888912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171471, 35.399265, 25.731287>,  <39.382172, 35.333992, 25.636711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171471, 35.399265, 25.731287>,  <38.820301, 35.508053, 25.888912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171471, 35.399265, 25.731287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183066, 0.569820, -0.801119,
		0.442425, 0.775459, 0.450469,
		0.877922, -0.271969, -0.394063,
		39.434849, 35.317673, 25.613068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083279, 36.241005, 25.740276>,  <38.820301, 35.508053, 25.888912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083279, 36.241005, 25.740276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230358, 35.922386, 25.548311>,  <39.318604, 35.731216, 25.433132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230358, 35.922386, 25.548311>,  <39.083279, 36.241005, 25.740276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230358, 35.922386, 25.548311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089510, 0.483352, -0.870838,
		0.925628, 0.363160, 0.106427,
		0.367695, -0.796546, -0.479911,
		39.340668, 35.683422, 25.404339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607418, 36.444248, 25.359787>,  <39.083279, 36.241005, 25.740276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607418, 36.444248, 25.359787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507889, 36.102612, 25.177092>,  <39.448170, 35.897629, 25.067474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507889, 36.102612, 25.177092>,  <39.607418, 36.444248, 25.359787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507889, 36.102612, 25.177092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096569, 0.491099, -0.865734,
		0.963723, -0.171308, -0.204676,
		-0.248823, -0.854093, -0.456740,
		39.433243, 35.846382, 25.040070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875908, 36.500282, 24.632683>,  <39.607418, 36.444248, 25.359787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875908, 36.500282, 24.632683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612858, 36.202225, 24.588345>,  <39.455029, 36.023388, 24.561741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612858, 36.202225, 24.588345>,  <39.875908, 36.500282, 24.632683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612858, 36.202225, 24.588345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327867, 0.415562, -0.848417,
		0.678260, -0.521595, -0.517593,
		-0.657622, -0.745149, -0.110845,
		39.415569, 35.978680, 24.555092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934834, 36.295258, 23.970079>,  <39.875908, 36.500282, 24.632683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934834, 36.295258, 23.970079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.595390, 36.116943, 24.084024>,  <39.391724, 36.009956, 24.152391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.595390, 36.116943, 24.084024>,  <39.934834, 36.295258, 23.970079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595390, 36.116943, 24.084024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417278, 0.233036, -0.878392,
		0.325192, -0.864273, -0.383773,
		-0.848604, -0.445786, 0.284861,
		39.340809, 35.983208, 24.169483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745438, 35.723175, 23.450275>,  <39.934834, 36.295258, 23.970079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745438, 35.723175, 23.450275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.412849, 35.851551, 23.631674>,  <39.213299, 35.928577, 23.740513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.412849, 35.851551, 23.631674>,  <39.745438, 35.723175, 23.450275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412849, 35.851551, 23.631674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400726, 0.218938, -0.889654,
		-0.384810, -0.921448, -0.053432,
		-0.831468, 0.320936, 0.453498,
		39.163410, 35.947830, 23.767723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.208908, 35.679764, 22.918577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025639, 35.895035, 23.201546>,  <38.915676, 36.024197, 23.371326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025639, 35.895035, 23.201546>,  <39.208908, 35.679764, 22.918577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025639, 35.895035, 23.201546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569931, 0.432865, -0.698432,
		-0.682098, -0.723182, 0.108398,
		-0.458171, 0.538179, 0.707419,
		38.888187, 36.056488, 23.413771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483212, 35.617802, 22.785501>,  <39.208908, 35.679764, 22.918577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483212, 35.617802, 22.785501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538242, 35.958008, 22.988556>,  <38.571262, 36.162132, 23.110388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538242, 35.958008, 22.988556>,  <38.483212, 35.617802, 22.785501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538242, 35.958008, 22.988556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487419, 0.504295, -0.712818,
		-0.862261, -0.149361, 0.483939,
		0.137581, 0.850517, 0.507635,
		38.579517, 36.213161, 23.140846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802097, 35.883778, 22.902477>,  <38.483212, 35.617802, 22.785501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802097, 35.883778, 22.902477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.991257, 36.224426, 22.992899>,  <38.104752, 36.428818, 23.047152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.991257, 36.224426, 22.992899>,  <37.802097, 35.883778, 22.902477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991257, 36.224426, 22.992899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693500, 0.518007, -0.500725,
		-0.543528, 0.080023, 0.835568,
		0.472900, 0.851625, 0.226055,
		38.133125, 36.479912, 23.060715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351170, 36.363358, 23.152220>,  <37.802097, 35.883778, 22.902477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351170, 36.363358, 23.152220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644630, 36.590481, 23.002897>,  <37.820705, 36.726753, 22.913303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644630, 36.590481, 23.002897>,  <37.351170, 36.363358, 23.152220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644630, 36.590481, 23.002897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658799, 0.459669, -0.595557,
		-0.166563, 0.682863, 0.711305,
		0.733649, 0.567805, -0.373305,
		37.864723, 36.760822, 22.890905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036716, 37.043633, 23.049334>,  <37.351170, 36.363358, 23.152220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036716, 37.043633, 23.049334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359268, 37.020573, 22.813902>,  <37.552799, 37.006737, 22.672644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359268, 37.020573, 22.813902>,  <37.036716, 37.043633, 23.049334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359268, 37.020573, 22.813902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465182, 0.552712, -0.691459,
		0.365175, 0.831376, 0.418881,
		0.806383, -0.057647, -0.588578,
		37.601185, 37.003277, 22.637329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089779, 37.703609, 22.764250>,  <37.036716, 37.043633, 23.049334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089779, 37.703609, 22.764250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327492, 37.491234, 22.522610>,  <37.470119, 37.363808, 22.377626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327492, 37.491234, 22.522610>,  <37.089779, 37.703609, 22.764250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327492, 37.491234, 22.522610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340591, 0.514304, -0.787076,
		0.728582, 0.673492, 0.124805,
		0.594277, -0.530943, -0.604098,
		37.505775, 37.331951, 22.341381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455723, 38.113667, 22.317780>,  <37.089779, 37.703609, 22.764250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455723, 38.113667, 22.317780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510639, 37.773735, 22.114235>,  <37.543591, 37.569775, 21.992109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510639, 37.773735, 22.114235>,  <37.455723, 38.113667, 22.317780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510639, 37.773735, 22.114235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146768, 0.490602, -0.858935,
		0.979597, 0.192608, -0.057373,
		0.137291, -0.849831, -0.508861,
		37.551826, 37.518787, 21.961576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974983, 38.229897, 21.813511>,  <37.455723, 38.113667, 22.317780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974983, 38.229897, 21.813511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.756618, 37.928658, 21.666641>,  <37.625599, 37.747913, 21.578520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.756618, 37.928658, 21.666641>,  <37.974983, 38.229897, 21.813511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756618, 37.928658, 21.666641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034668, 0.458170, -0.888188,
		0.837123, -0.472145, -0.276230,
		-0.545914, -0.753100, -0.367176,
		37.592846, 37.702728, 21.556488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249260, 38.052170, 21.104774>,  <37.974983, 38.229897, 21.813511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249260, 38.052170, 21.104774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879944, 37.899620, 21.123022>,  <37.658352, 37.808090, 21.133970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879944, 37.899620, 21.123022>,  <38.249260, 38.052170, 21.104774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879944, 37.899620, 21.123022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217688, 0.421727, -0.880203,
		0.316444, -0.822619, -0.472399,
		-0.923296, -0.381371, 0.045622,
		37.602955, 37.785210, 21.136707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181053, 37.777565, 20.501268>,  <38.249260, 38.052170, 21.104774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181053, 37.777565, 20.501268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.813232, 37.845276, 20.643129>,  <37.592541, 37.885902, 20.728247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.813232, 37.845276, 20.643129>,  <38.181053, 37.777565, 20.501268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813232, 37.845276, 20.643129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216189, 0.535737, -0.816240,
		-0.328169, -0.827244, -0.456040,
		-0.919547, 0.169274, 0.354653,
		37.537369, 37.896057, 20.749525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753742, 37.698257, 19.886713>,  <38.181053, 37.777565, 20.501268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753742, 37.698257, 19.886713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541367, 37.916473, 20.146095>,  <37.413940, 38.047405, 20.301723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541367, 37.916473, 20.146095>,  <37.753742, 37.698257, 19.886713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541367, 37.916473, 20.146095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169208, 0.681556, -0.711934,
		-0.830347, -0.487714, -0.269552,
		-0.530935, 0.545542, 0.648454,
		37.382088, 38.080135, 20.340631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213486, 37.878971, 19.501625>,  <37.753742, 37.698257, 19.886713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213486, 37.878971, 19.501625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214146, 38.120857, 19.820202>,  <37.214542, 38.265987, 20.011349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214146, 38.120857, 19.820202>,  <37.213486, 37.878971, 19.501625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214146, 38.120857, 19.820202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166841, 0.785447, -0.596018,
		-0.985982, -0.131895, 0.102188,
		0.001651, 0.604712, 0.796442,
		37.214642, 38.302273, 20.059135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603333, 38.178524, 19.474594>,  <37.213486, 37.878971, 19.501625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603333, 38.178524, 19.474594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829666, 38.443020, 19.671608>,  <36.965466, 38.601719, 19.789816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829666, 38.443020, 19.671608>,  <36.603333, 38.178524, 19.474594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829666, 38.443020, 19.671608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152598, 0.671027, -0.725559,
		-0.810275, 0.335386, 0.480595,
		0.565835, 0.661240, 0.492537,
		36.999416, 38.641392, 19.819368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287060, 38.704735, 19.402546>,  <36.603333, 38.178524, 19.474594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287060, 38.704735, 19.402546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621235, 38.889828, 19.521152>,  <36.821739, 39.000885, 19.592316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621235, 38.889828, 19.521152>,  <36.287060, 38.704735, 19.402546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621235, 38.889828, 19.521152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101580, 0.660243, -0.744151,
		-0.540114, 0.591573, 0.598597,
		0.835439, 0.462732, 0.296514,
		36.871868, 39.028648, 19.610107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155277, 39.500256, 19.461443>,  <36.287060, 38.704735, 19.402546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155277, 39.500256, 19.461443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553158, 39.471897, 19.431677>,  <36.791885, 39.454884, 19.413816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553158, 39.471897, 19.431677>,  <36.155277, 39.500256, 19.461443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553158, 39.471897, 19.431677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012207, 0.800403, -0.599338,
		0.102053, 0.595256, 0.797029,
		0.994704, -0.070894, -0.074417,
		36.851570, 39.450630, 19.409351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376621, 40.143925, 19.512354>,  <36.155277, 39.500256, 19.461443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376621, 40.143925, 19.512354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663170, 39.947327, 19.314268>,  <36.835098, 39.829369, 19.195417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663170, 39.947327, 19.314268>,  <36.376621, 40.143925, 19.512354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663170, 39.947327, 19.314268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031980, 0.732151, -0.680391,
		0.696981, 0.471578, 0.540213,
		0.716376, -0.491496, -0.495215,
		36.878082, 39.799877, 19.165703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892933, 40.710781, 19.347435>,  <36.376621, 40.143925, 19.512354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892933, 40.710781, 19.347435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950493, 40.402317, 19.099369>,  <36.985027, 40.217239, 18.950529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950493, 40.402317, 19.099369>,  <36.892933, 40.710781, 19.347435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950493, 40.402317, 19.099369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117744, 0.635576, -0.763007,
		0.982563, 0.036775, 0.182258,
		0.143898, -0.771162, -0.620163,
		36.993664, 40.170967, 18.913321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333351, 40.951309, 18.842936>,  <36.892933, 40.710781, 19.347435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333351, 40.951309, 18.842936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220367, 40.618587, 18.651808>,  <37.152576, 40.418953, 18.537130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220367, 40.618587, 18.651808>,  <37.333351, 40.951309, 18.842936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220367, 40.618587, 18.651808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333372, 0.552175, -0.764177,
		0.899488, -0.056559, -0.433269,
		-0.282462, -0.831808, -0.477820,
		37.135628, 40.369045, 18.508461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629856, 40.941658, 18.195805>,  <37.333351, 40.951309, 18.842936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629856, 40.941658, 18.195805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293999, 40.725121, 18.178167>,  <37.092484, 40.595200, 18.167585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293999, 40.725121, 18.178167>,  <37.629856, 40.941658, 18.195805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293999, 40.725121, 18.178167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316111, 0.553088, -0.770823,
		0.441665, -0.633280, -0.635522,
		-0.839646, -0.541341, -0.044093,
		37.042107, 40.562717, 18.164940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359058, 40.932053, 17.451361>,  <37.629856, 40.941658, 18.195805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359058, 40.932053, 17.451361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043995, 40.829845, 17.675613>,  <36.854958, 40.768520, 17.810165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043995, 40.829845, 17.675613>,  <37.359058, 40.932053, 17.451361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043995, 40.829845, 17.675613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593744, 0.557778, -0.579958,
		-0.164517, -0.789679, -0.591051,
		-0.787656, -0.255520, 0.560631,
		36.807697, 40.753189, 17.843803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818001, 40.861683, 17.001923>,  <37.359058, 40.932053, 17.451361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818001, 40.861683, 17.001923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636532, 40.908630, 17.355286>,  <36.527649, 40.936798, 17.567303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636532, 40.908630, 17.355286>,  <36.818001, 40.861683, 17.001923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636532, 40.908630, 17.355286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609930, 0.681847, -0.403819,
		-0.649745, -0.722017, -0.237747,
		-0.453671, 0.117370, 0.883406,
		36.500431, 40.943840, 17.620308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164104, 41.047077, 16.803822>,  <36.818001, 40.861683, 17.001923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164104, 41.047077, 16.803822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178844, 41.169891, 17.184216>,  <36.187691, 41.243580, 17.412453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178844, 41.169891, 17.184216>,  <36.164104, 41.047077, 16.803822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178844, 41.169891, 17.184216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581996, 0.780183, -0.229336,
		-0.812356, -0.545018, 0.207443,
		0.036852, 0.307033, 0.950985,
		36.189899, 41.262001, 17.469511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494576, 41.304325, 17.055691>,  <36.164104, 41.047077, 16.803822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494576, 41.304325, 17.055691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763172, 41.503159, 17.275513>,  <35.924328, 41.622459, 17.407406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763172, 41.503159, 17.275513>,  <35.494576, 41.304325, 17.055691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763172, 41.503159, 17.275513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430177, 0.865357, -0.257109,
		-0.603368, -0.063761, 0.794910,
		0.671488, 0.497083, 0.549557,
		35.964619, 41.652283, 17.440380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868530, 40.996349, 17.441814>,  <35.494576, 41.304325, 17.055691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868530, 40.996349, 17.441814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490902, 40.879421, 17.380787>,  <34.264324, 40.809265, 17.344170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490902, 40.879421, 17.380787>,  <34.868530, 40.996349, 17.441814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490902, 40.879421, 17.380787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228862, -0.913997, 0.335011,
		-0.237378, 0.281357, 0.929780,
		-0.944073, -0.292316, -0.152570,
		34.207680, 40.791725, 17.335016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756725, 40.423435, 17.899660>,  <34.868530, 40.996349, 17.441814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756725, 40.423435, 17.899660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475861, 40.377571, 17.618572>,  <34.307343, 40.350052, 17.449919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475861, 40.377571, 17.618572>,  <34.756725, 40.423435, 17.899660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475861, 40.377571, 17.618572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097318, -0.962232, 0.254242,
		-0.705333, 0.246907, 0.664486,
		-0.702164, -0.114659, -0.702722,
		34.265213, 40.343174, 17.407755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159443, 40.304916, 18.308851>,  <34.756725, 40.423435, 17.899660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159443, 40.304916, 18.308851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199451, 40.165836, 17.935949>,  <34.223457, 40.082390, 17.712208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199451, 40.165836, 17.935949>,  <34.159443, 40.304916, 18.308851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199451, 40.165836, 17.935949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119882, -0.934340, 0.335614,
		-0.987737, 0.078192, -0.135138,
		0.100023, -0.347699, -0.932256,
		34.229458, 40.061527, 17.656273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609337, 39.749020, 18.159079>,  <34.159443, 40.304916, 18.308851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609337, 39.749020, 18.159079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.911301, 39.696281, 17.902103>,  <34.092480, 39.664639, 17.747919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.911301, 39.696281, 17.902103>,  <33.609337, 39.749020, 18.159079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911301, 39.696281, 17.902103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099857, -0.945052, 0.311296,
		-0.648179, -0.299153, -0.700266,
		0.754912, -0.131849, -0.642435,
		34.137775, 39.656727, 17.709373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407494, 39.256672, 17.630276>,  <33.609337, 39.749020, 18.159079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407494, 39.256672, 17.630276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806694, 39.274879, 17.647825>,  <34.046215, 39.285805, 17.658356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806694, 39.274879, 17.647825>,  <33.407494, 39.256672, 17.630276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806694, 39.274879, 17.647825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034804, -0.974913, 0.219848,
		0.052782, -0.217882, -0.974547,
		0.998000, 0.045522, 0.043874,
		34.106094, 39.288536, 17.660988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608196, 38.624630, 17.362989>,  <33.407494, 39.256672, 17.630276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608196, 38.624630, 17.362989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961658, 38.740791, 17.509855>,  <34.173737, 38.810490, 17.597975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961658, 38.740791, 17.509855>,  <33.608196, 38.624630, 17.362989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961658, 38.740791, 17.509855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165715, -0.927587, 0.334844,
		0.437818, -0.235044, -0.867796,
		0.883659, 0.290407, 0.367164,
		34.226757, 38.827915, 17.620005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076950, 38.041306, 17.224148>,  <33.608196, 38.624630, 17.362989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076950, 38.041306, 17.224148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275784, 38.238506, 17.509764>,  <34.395084, 38.356827, 17.681133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275784, 38.238506, 17.509764>,  <34.076950, 38.041306, 17.224148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275784, 38.238506, 17.509764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083539, -0.846278, 0.526151,
		0.863672, -0.201890, -0.461855,
		0.497083, 0.493005, 0.714041,
		34.424908, 38.386406, 17.723976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685097, 37.682705, 17.293461>,  <34.076950, 38.041306, 17.224148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685097, 37.682705, 17.293461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632828, 37.893089, 17.629623>,  <34.601467, 38.019321, 17.831322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632828, 37.893089, 17.629623>,  <34.685097, 37.682705, 17.293461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632828, 37.893089, 17.629623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240871, -0.805436, 0.541529,
		0.961721, 0.273192, -0.021443,
		-0.130671, 0.525965, 0.840409,
		34.593628, 38.050880, 17.881746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275608, 37.482338, 17.735064>,  <34.685097, 37.682705, 17.293461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275608, 37.482338, 17.735064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020409, 37.652756, 17.991638>,  <34.867290, 37.755009, 18.145582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020409, 37.652756, 17.991638>,  <35.275608, 37.482338, 17.735064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020409, 37.652756, 17.991638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145048, -0.751590, 0.643485,
		0.756253, 0.503582, 0.417716,
		-0.637999, 0.426048, 0.641436,
		34.829010, 37.780571, 18.184069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730446, 37.568626, 18.411028>,  <35.275608, 37.482338, 17.735064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730446, 37.568626, 18.411028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344711, 37.580997, 18.516169>,  <35.113270, 37.588421, 18.579252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344711, 37.580997, 18.516169>,  <35.730446, 37.568626, 18.411028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344711, 37.580997, 18.516169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187658, -0.620446, 0.761466,
		0.186632, 0.783639, 0.592519,
		-0.964341, 0.030923, 0.262851,
		35.055408, 37.590275, 18.595024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552006, 37.882935, 19.039692>,  <35.730446, 37.568626, 18.411028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552006, 37.882935, 19.039692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229271, 37.646992, 19.026520>,  <35.035629, 37.505428, 19.018616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229271, 37.646992, 19.026520>,  <35.552006, 37.882935, 19.039692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229271, 37.646992, 19.026520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270582, -0.418518, 0.866965,
		-0.525166, 0.690589, 0.497280,
		-0.806837, -0.589855, -0.032930,
		34.987221, 37.470036, 19.016642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542969, 37.711250, 19.636211>,  <35.552006, 37.882935, 19.039692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542969, 37.711250, 19.636211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288185, 37.433933, 19.501377>,  <35.135315, 37.267544, 19.420477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288185, 37.433933, 19.501377>,  <35.542969, 37.711250, 19.636211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288185, 37.433933, 19.501377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309958, -0.630689, 0.711447,
		-0.705838, 0.348681, 0.616616,
		-0.636961, -0.693291, -0.337088,
		35.097095, 37.225945, 19.400251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993217, 37.518661, 20.175520>,  <35.542969, 37.711250, 19.636211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993217, 37.518661, 20.175520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042702, 37.220730, 19.913246>,  <35.072392, 37.041969, 19.755882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042702, 37.220730, 19.913246>,  <34.993217, 37.518661, 20.175520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042702, 37.220730, 19.913246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278364, -0.608182, 0.743390,
		-0.952475, -0.274484, 0.132096,
		0.123710, -0.744831, -0.655685,
		35.079815, 36.997280, 19.716541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800316, 36.998684, 20.570171>,  <34.993217, 37.518661, 20.175520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800316, 36.998684, 20.570171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967682, 36.829697, 20.248564>,  <35.068100, 36.728302, 20.055599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967682, 36.829697, 20.248564>,  <34.800316, 36.998684, 20.570171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967682, 36.829697, 20.248564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563192, -0.573818, 0.594598,
		-0.712563, -0.701605, -0.002159,
		0.418412, -0.422473, -0.804020,
		35.093204, 36.702953, 20.007359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686325, 36.209427, 20.534527>,  <34.800316, 36.998684, 20.570171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686325, 36.209427, 20.534527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998844, 36.265316, 20.291197>,  <35.186356, 36.298851, 20.145199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998844, 36.265316, 20.291197>,  <34.686325, 36.209427, 20.534527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998844, 36.265316, 20.291197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567355, -0.565233, 0.598849,
		-0.260172, -0.813012, -0.520885,
		0.781294, 0.139723, -0.608324,
		35.233231, 36.307232, 20.108700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948982, 35.501583, 20.426601>,  <34.686325, 36.209427, 20.534527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948982, 35.501583, 20.426601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247383, 35.754387, 20.342646>,  <35.426422, 35.906067, 20.292273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247383, 35.754387, 20.342646>,  <34.948982, 35.501583, 20.426601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247383, 35.754387, 20.342646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615047, -0.533012, 0.581047,
		0.255350, -0.562554, -0.786340,
		0.745999, 0.632006, -0.209892,
		35.471184, 35.943989, 20.279678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489109, 35.021633, 20.231182>,  <34.948982, 35.501583, 20.426601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489109, 35.021633, 20.231182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682899, 35.363701, 20.304907>,  <35.799171, 35.568943, 20.349142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682899, 35.363701, 20.304907>,  <35.489109, 35.021633, 20.231182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682899, 35.363701, 20.304907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692320, -0.503599, 0.516800,
		0.534770, -0.122775, -0.836031,
		0.484474, 0.855169, 0.184310,
		35.828243, 35.620251, 20.360199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246361, 34.899723, 20.078083>,  <35.489109, 35.021633, 20.231182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246361, 34.899723, 20.078083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191902, 35.204643, 20.331182>,  <36.159229, 35.387596, 20.483042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191902, 35.204643, 20.331182>,  <36.246361, 34.899723, 20.078083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191902, 35.204643, 20.331182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718744, -0.363564, 0.592645,
		0.681816, 0.535468, -0.498399,
		-0.136143, 0.762296, 0.632748,
		36.151058, 35.433331, 20.521008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879288, 35.063221, 20.262676>,  <36.246361, 34.899723, 20.078083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879288, 35.063221, 20.262676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671047, 35.256763, 20.544062>,  <36.546101, 35.372887, 20.712893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671047, 35.256763, 20.544062>,  <36.879288, 35.063221, 20.262676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671047, 35.256763, 20.544062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625501, -0.344659, 0.699971,
		0.581138, 0.804423, -0.123220,
		-0.520603, 0.483853, 0.703461,
		36.514866, 35.401920, 20.755100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337341, 35.443382, 20.673042>,  <36.879288, 35.063221, 20.262676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337341, 35.443382, 20.673042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032925, 35.393948, 20.927771>,  <36.850273, 35.364285, 21.080608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032925, 35.393948, 20.927771>,  <37.337341, 35.443382, 20.673042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032925, 35.393948, 20.927771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634170, -0.348383, 0.690259,
		0.136550, 0.929169, 0.343510,
		-0.761040, -0.123589, 0.636823,
		36.804611, 35.356873, 21.118818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639194, 35.612392, 21.367420>,  <37.337341, 35.443382, 20.673042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639194, 35.612392, 21.367420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296993, 35.419220, 21.442135>,  <37.091671, 35.303318, 21.486963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296993, 35.419220, 21.442135>,  <37.639194, 35.612392, 21.367420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296993, 35.419220, 21.442135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437762, -0.481915, 0.759027,
		-0.276543, 0.731119, 0.623690,
		-0.855505, -0.482931, 0.186786,
		37.040340, 35.274342, 21.498171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.839882, 35.483173, 25.726284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461475, 35.362751, 25.774315>,  <40.234432, 35.290497, 25.803133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461475, 35.362751, 25.774315>,  <40.839882, 35.483173, 25.726284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461475, 35.362751, 25.774315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239731, -0.400588, 0.884340,
		-0.218138, 0.865386, 0.451136,
		-0.946015, -0.301059, 0.120076,
		40.177670, 35.272434, 25.810337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635635, 35.710861, 26.456758>,  <40.839882, 35.483173, 25.726284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635635, 35.710861, 26.456758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.405087, 35.411499, 26.325500>,  <40.266758, 35.231880, 26.246746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.405087, 35.411499, 26.325500>,  <40.635635, 35.710861, 26.456758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405087, 35.411499, 26.325500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141206, -0.486730, 0.862064,
		-0.804893, 0.450536, 0.386218,
		-0.576375, -0.748406, -0.328147,
		40.232174, 35.186977, 26.227057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229424, 35.593052, 27.091303>,  <40.635635, 35.710861, 26.456758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229424, 35.593052, 27.091303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.224052, 35.262032, 26.866808>,  <40.220829, 35.063419, 26.732111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.224052, 35.262032, 26.866808>,  <40.229424, 35.593052, 27.091303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224052, 35.262032, 26.866808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068174, -0.559223, 0.826210,
		-0.997583, 0.049354, -0.048910,
		-0.013425, -0.827547, -0.561236,
		40.220024, 35.013767, 26.698437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819534, 35.192219, 27.456139>,  <40.229424, 35.593052, 27.091303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819534, 35.192219, 27.456139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000309, 34.939980, 27.203760>,  <40.108772, 34.788635, 27.052334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000309, 34.939980, 27.203760>,  <39.819534, 35.192219, 27.456139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000309, 34.939980, 27.203760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066277, -0.681608, 0.728710,
		-0.889584, -0.371149, -0.266250,
		0.451938, -0.630602, -0.630946,
		40.135891, 34.750797, 27.014477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486435, 34.488987, 27.657900>,  <39.819534, 35.192219, 27.456139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486435, 34.488987, 27.657900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841278, 34.433590, 27.481785>,  <40.054184, 34.400352, 27.376116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841278, 34.433590, 27.481785>,  <39.486435, 34.488987, 27.657900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841278, 34.433590, 27.481785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160951, -0.801223, 0.576313,
		-0.432581, -0.582119, -0.688484,
		0.887112, -0.138490, -0.440286,
		40.107410, 34.392044, 27.349699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515575, 33.805679, 27.453909>,  <39.486435, 34.488987, 27.657900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515575, 33.805679, 27.453909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904423, 33.897106, 27.474844>,  <40.137733, 33.951962, 27.487404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904423, 33.897106, 27.474844>,  <39.515575, 33.805679, 27.453909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904423, 33.897106, 27.474844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129353, -0.708916, 0.693330,
		0.195572, -0.667230, -0.718717,
		0.972121, 0.228564, 0.052336,
		40.196060, 33.965675, 27.490545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879292, 33.168179, 27.517500>,  <39.515575, 33.805679, 27.453909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879292, 33.168179, 27.517500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159248, 33.422871, 27.646948>,  <40.327221, 33.575687, 27.724617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159248, 33.422871, 27.646948>,  <39.879292, 33.168179, 27.517500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159248, 33.422871, 27.646948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274574, -0.658125, 0.701056,
		0.659366, -0.401805, -0.635445,
		0.699890, 0.636729, 0.323620,
		40.369217, 33.613888, 27.744034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572800, 32.830189, 27.608759>,  <39.879292, 33.168179, 27.517500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572800, 32.830189, 27.608759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619465, 33.153133, 27.840124>,  <40.647465, 33.346901, 27.978943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619465, 33.153133, 27.840124>,  <40.572800, 32.830189, 27.608759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619465, 33.153133, 27.840124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190927, -0.589757, 0.784687,
		0.974647, 0.018893, -0.222948,
		0.116660, 0.807360, 0.578412,
		40.654465, 33.395340, 28.013647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250877, 32.678326, 27.956991>,  <40.572800, 32.830189, 27.608759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250877, 32.678326, 27.956991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.047237, 32.935223, 28.186193>,  <40.925053, 33.089363, 28.323715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.047237, 32.935223, 28.186193>,  <41.250877, 32.678326, 27.956991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047237, 32.935223, 28.186193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230352, -0.539784, 0.809674,
		0.829307, 0.544201, 0.126863,
		-0.509104, 0.642245, 0.573005,
		40.894505, 33.127895, 28.358095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659931, 32.824097, 28.430622>,  <41.250877, 32.678326, 27.956991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659931, 32.824097, 28.430622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299076, 32.894634, 28.588125>,  <41.082561, 32.936954, 28.682627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299076, 32.894634, 28.588125>,  <41.659931, 32.824097, 28.430622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299076, 32.894634, 28.588125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205722, -0.626405, 0.751861,
		0.379236, 0.759290, 0.528829,
		-0.902141, 0.176341, 0.393757,
		41.028435, 32.947536, 28.706253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767204, 32.978855, 29.098427>,  <41.659931, 32.824097, 28.430622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767204, 32.978855, 29.098427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376888, 32.891602, 29.092009>,  <41.142700, 32.839249, 29.088158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376888, 32.891602, 29.092009>,  <41.767204, 32.978855, 29.098427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376888, 32.891602, 29.092009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110189, -0.553619, 0.825448,
		-0.188945, 0.803693, 0.564250,
		-0.975786, -0.218138, -0.016046,
		41.084152, 32.826160, 29.087194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554890, 33.129715, 29.786497>,  <41.767204, 32.978855, 29.098427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554890, 33.129715, 29.786497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.286407, 32.881989, 29.623560>,  <41.125317, 32.733353, 29.525797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.286407, 32.881989, 29.623560>,  <41.554890, 33.129715, 29.786497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286407, 32.881989, 29.623560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038373, -0.577818, 0.815263,
		-0.740274, 0.531581, 0.411602,
		-0.671209, -0.619313, -0.407345,
		41.085045, 32.696194, 29.501356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037167, 32.879871, 30.311514>,  <41.554890, 33.129715, 29.786497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037167, 32.879871, 30.311514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.976505, 32.603951, 30.028339>,  <40.940109, 32.438396, 29.858435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.976505, 32.603951, 30.028339>,  <41.037167, 32.879871, 30.311514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976505, 32.603951, 30.028339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120362, -0.698001, 0.705910,
		-0.981078, 0.192261, 0.022827,
		-0.151652, -0.689805, -0.707934,
		40.931011, 32.397011, 29.815960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571114, 32.487762, 30.612501>,  <41.037167, 32.879871, 30.311514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571114, 32.487762, 30.612501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720024, 32.272079, 30.310329>,  <40.809368, 32.142670, 30.129026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720024, 32.272079, 30.310329>,  <40.571114, 32.487762, 30.612501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720024, 32.272079, 30.310329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041863, -0.803348, 0.594037,
		-0.927178, -0.252769, -0.276493,
		0.372274, -0.539203, -0.755429,
		40.831707, 32.110317, 30.083700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154778, 32.637520, 31.253490>,  <40.571114, 32.487762, 30.612501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154778, 32.637520, 31.253490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997025, 32.743805, 31.605368>,  <39.902370, 32.807575, 31.816494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997025, 32.743805, 31.605368>,  <40.154778, 32.637520, 31.253490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997025, 32.743805, 31.605368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714132, 0.513849, -0.475368,
		-0.578340, -0.815694, -0.012902,
		-0.394384, 0.265710, 0.879692,
		39.878708, 32.823517, 31.869276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396130, 32.569645, 31.256010>,  <40.154778, 32.637520, 31.253490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396130, 32.569645, 31.256010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463474, 32.825401, 31.556099>,  <39.503880, 32.978855, 31.736153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463474, 32.825401, 31.556099>,  <39.396130, 32.569645, 31.256010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463474, 32.825401, 31.556099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681393, 0.625456, -0.380144,
		-0.712291, -0.447194, 0.540979,
		0.168361, 0.639392, 0.750222,
		39.513981, 33.017220, 31.781166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749676, 32.648354, 31.549192>,  <39.396130, 32.569645, 31.256010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749676, 32.648354, 31.549192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945683, 32.976257, 31.667763>,  <39.063286, 33.173000, 31.738905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945683, 32.976257, 31.667763>,  <38.749676, 32.648354, 31.549192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945683, 32.976257, 31.667763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625900, 0.567559, -0.534908,
		-0.606737, 0.076584, 0.791205,
		0.490021, 0.819763, 0.296425,
		39.092690, 33.222187, 31.756691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285275, 33.035366, 32.000023>,  <38.749676, 32.648354, 31.549192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285275, 33.035366, 32.000023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569832, 33.270973, 31.846672>,  <38.740566, 33.412338, 31.754662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569832, 33.270973, 31.846672>,  <38.285275, 33.035366, 32.000023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569832, 33.270973, 31.846672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693692, 0.500971, -0.517514,
		-0.112766, 0.634100, 0.764984,
		0.711390, 0.589021, -0.383378,
		38.783249, 33.447678, 31.731659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125942, 33.754711, 32.124310>,  <38.285275, 33.035366, 32.000023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125942, 33.754711, 32.124310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.370712, 33.785660, 31.809460>,  <38.517574, 33.804230, 31.620550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.370712, 33.785660, 31.809460>,  <38.125942, 33.754711, 32.124310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370712, 33.785660, 31.809460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593138, 0.703225, -0.391997,
		0.523193, 0.706745, 0.476214,
		0.611928, 0.077371, -0.787120,
		38.554291, 33.808872, 31.573324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264923, 34.493717, 32.043415>,  <38.125942, 33.754711, 32.124310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264923, 34.493717, 32.043415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333805, 34.323181, 31.688208>,  <38.375134, 34.220860, 31.475082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333805, 34.323181, 31.688208>,  <38.264923, 34.493717, 32.043415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333805, 34.323181, 31.688208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685765, 0.595276, -0.418776,
		0.707158, 0.681088, -0.189860,
		0.172204, -0.426340, -0.888020,
		38.385468, 34.195278, 31.421801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203144, 35.102489, 31.645346>,  <38.264923, 34.493717, 32.043415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203144, 35.102489, 31.645346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.175922, 34.804371, 31.380045>,  <38.159588, 34.625500, 31.220863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.175922, 34.804371, 31.380045>,  <38.203144, 35.102489, 31.645346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175922, 34.804371, 31.380045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669064, 0.527240, -0.523805,
		0.740083, 0.408110, -0.534532,
		-0.068057, -0.745294, -0.663253,
		38.155506, 34.580784, 31.181068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269890, 35.384670, 30.977043>,  <38.203144, 35.102489, 31.645346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269890, 35.384670, 30.977043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.095802, 35.030247, 30.913193>,  <37.991352, 34.817593, 30.874882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.095802, 35.030247, 30.913193>,  <38.269890, 35.384670, 30.977043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095802, 35.030247, 30.913193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460332, 0.371368, -0.806338,
		0.773746, -0.277448, -0.569508,
		-0.435214, -0.886063, -0.159626,
		37.965237, 34.764427, 30.865305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217049, 35.323750, 30.245979>,  <38.269890, 35.384670, 30.977043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217049, 35.323750, 30.245979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.970581, 35.026817, 30.351265>,  <37.822701, 34.848660, 30.414436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.970581, 35.026817, 30.351265>,  <38.217049, 35.323750, 30.245979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970581, 35.026817, 30.351265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517843, 0.130026, -0.845536,
		0.593440, -0.657300, -0.464528,
		-0.616172, -0.742327, 0.263216,
		37.785728, 34.804119, 30.430229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282768, 34.859570, 29.729446>,  <38.217049, 35.323750, 30.245979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282768, 34.859570, 29.729446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927410, 34.780479, 29.895174>,  <37.714195, 34.733025, 29.994610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927410, 34.780479, 29.895174>,  <38.282768, 34.859570, 29.729446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927410, 34.780479, 29.895174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458128, 0.323673, -0.827862,
		0.029587, -0.925278, -0.378133,
		-0.888394, -0.197727, 0.414319,
		37.660892, 34.721161, 30.019470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936279, 34.404301, 29.279230>,  <38.282768, 34.859570, 29.729446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936279, 34.404301, 29.279230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.632862, 34.552853, 29.493402>,  <37.450809, 34.641983, 29.621906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.632862, 34.552853, 29.493402>,  <37.936279, 34.404301, 29.279230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632862, 34.552853, 29.493402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437905, 0.317961, -0.840916,
		-0.482543, -0.872342, -0.078561,
		-0.758546, 0.371376, 0.535433,
		37.405300, 34.664265, 29.654032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352039, 34.194611, 28.884579>,  <37.936279, 34.404301, 29.279230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352039, 34.194611, 28.884579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.239044, 34.495598, 29.122566>,  <37.171246, 34.676189, 29.265358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.239044, 34.495598, 29.122566>,  <37.352039, 34.194611, 28.884579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239044, 34.495598, 29.122566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438355, 0.450423, -0.777794,
		-0.853254, -0.480528, 0.202608,
		-0.282492, 0.752470, 0.594967,
		37.154297, 34.721340, 29.301056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665504, 34.306122, 28.706369>,  <37.352039, 34.194611, 28.884579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665504, 34.306122, 28.706369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807426, 34.641254, 28.872335>,  <36.892578, 34.842335, 28.971916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807426, 34.641254, 28.872335>,  <36.665504, 34.306122, 28.706369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807426, 34.641254, 28.872335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388039, 0.535723, -0.749951,
		-0.850611, 0.105081, 0.515188,
		0.354804, 0.837830, 0.414916,
		36.913868, 34.892605, 28.996811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037167, 34.715012, 28.690470>,  <36.665504, 34.306122, 28.706369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037167, 34.715012, 28.690470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354744, 34.954247, 28.734177>,  <36.545292, 35.097790, 28.760401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354744, 34.954247, 28.734177>,  <36.037167, 34.715012, 28.690470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354744, 34.954247, 28.734177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407622, 0.656971, -0.634219,
		-0.451104, 0.458996, 0.765394,
		0.793946, 0.598090, 0.109266,
		36.592926, 35.133675, 28.766956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302635, 35.045288, 28.823080>,  <36.037167, 34.715012, 28.690470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302635, 35.045288, 28.823080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912819, 35.053802, 28.912357>,  <34.678928, 35.058910, 28.965923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912819, 35.053802, 28.912357>,  <35.302635, 35.045288, 28.823080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912819, 35.053802, 28.912357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093527, -0.866139, 0.490974,
		0.203768, 0.499349, 0.842098,
		-0.974542, 0.021286, 0.223194,
		34.620457, 35.060188, 28.979315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255848, 34.984016, 29.634180>,  <35.302635, 35.045288, 28.823080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255848, 34.984016, 29.634180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.915028, 34.858223, 29.466797>,  <34.710533, 34.782749, 29.366367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.915028, 34.858223, 29.466797>,  <35.255848, 34.984016, 29.634180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915028, 34.858223, 29.466797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008042, -0.791457, 0.611172,
		-0.523392, 0.524117, 0.671835,
		-0.852054, -0.314480, -0.418457,
		34.659412, 34.763878, 29.341259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961102, 34.633686, 30.113029>,  <35.255848, 34.984016, 29.634180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961102, 34.633686, 30.113029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.724232, 34.505642, 29.817228>,  <34.582111, 34.428818, 29.639748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.724232, 34.505642, 29.817228>,  <34.961102, 34.633686, 30.113029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724232, 34.505642, 29.817228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032782, -0.907382, 0.419027,
		-0.805145, 0.272378, 0.526831,
		-0.592171, -0.320107, -0.739503,
		34.546581, 34.409611, 29.595377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358322, 34.283112, 30.388779>,  <34.961102, 34.633686, 30.113029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358322, 34.283112, 30.388779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.423691, 34.135845, 30.022665>,  <34.462914, 34.047485, 29.802998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.423691, 34.135845, 30.022665>,  <34.358322, 34.283112, 30.388779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423691, 34.135845, 30.022665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085696, -0.918952, 0.384946,
		-0.982827, -0.141345, -0.118627,
		0.163422, -0.368169, -0.915284,
		34.472717, 34.025394, 29.748079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993160, 33.746788, 30.410103>,  <34.358322, 34.283112, 30.388779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993160, 33.746788, 30.410103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207031, 33.682392, 30.078272>,  <34.335354, 33.643757, 29.879173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207031, 33.682392, 30.078272>,  <33.993160, 33.746788, 30.410103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207031, 33.682392, 30.078272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135357, -0.952696, 0.272117,
		-0.834144, -0.257785, -0.487597,
		0.534680, -0.160986, -0.829579,
		34.367435, 33.634098, 29.829397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827763, 33.019855, 30.127832>,  <33.993160, 33.746788, 30.410103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827763, 33.019855, 30.127832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.191837, 33.098083, 29.981783>,  <34.410282, 33.145020, 29.894154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.191837, 33.098083, 29.981783>,  <33.827763, 33.019855, 30.127832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191837, 33.098083, 29.981783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224449, -0.973746, 0.037957,
		-0.348117, -0.116500, -0.930184,
		0.910186, 0.195565, -0.365125,
		34.464893, 33.156754, 29.872246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910648, 32.382057, 29.855192>,  <33.827763, 33.019855, 30.127832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910648, 32.382057, 29.855192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.269241, 32.555374, 29.818130>,  <34.484398, 32.659363, 29.795895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.269241, 32.555374, 29.818130>,  <33.910648, 32.382057, 29.855192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269241, 32.555374, 29.818130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414056, -0.893669, -0.172955,
		-0.157740, 0.116687, -0.980562,
		0.896480, 0.433289, -0.092653,
		34.538185, 32.685360, 29.790335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205261, 32.029182, 29.280846>,  <33.910648, 32.382057, 29.855192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205261, 32.029182, 29.280846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.484818, 32.190556, 29.517082>,  <34.652550, 32.287380, 29.658825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.484818, 32.190556, 29.517082>,  <34.205261, 32.029182, 29.280846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484818, 32.190556, 29.517082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437794, -0.894272, 0.092807,
		0.565592, 0.193696, -0.801615,
		0.698886, 0.403434, 0.590593,
		34.694485, 32.311584, 29.694260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798557, 31.651188, 29.111925>,  <34.205261, 32.029182, 29.280846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798557, 31.651188, 29.111925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.887932, 31.815596, 29.465454>,  <34.941555, 31.914240, 29.677570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.887932, 31.815596, 29.465454>,  <34.798557, 31.651188, 29.111925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887932, 31.815596, 29.465454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454173, -0.846197, 0.278707,
		0.862441, 0.339134, -0.375743,
		0.223434, 0.411021, 0.883821,
		34.954964, 31.938902, 29.730600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513695, 31.553036, 29.204273>,  <34.798557, 31.651188, 29.111925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513695, 31.553036, 29.204273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.339127, 31.589029, 29.562365>,  <35.234386, 31.610626, 29.777220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.339127, 31.589029, 29.562365>,  <35.513695, 31.553036, 29.204273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339127, 31.589029, 29.562365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324731, -0.912169, 0.249995,
		0.839097, 0.399812, 0.368871,
		-0.436424, 0.089986, 0.895230,
		35.208199, 31.616026, 29.830935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027771, 31.511736, 29.755098>,  <35.513695, 31.553036, 29.204273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027771, 31.511736, 29.755098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.694775, 31.417353, 29.955608>,  <35.494976, 31.360722, 30.075914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.694775, 31.417353, 29.955608>,  <36.027771, 31.511736, 29.755098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694775, 31.417353, 29.955608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436843, -0.836053, 0.331940,
		0.340769, 0.495317, 0.799085,
		-0.832493, -0.235960, 0.501277,
		35.445026, 31.346565, 30.105991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251213, 31.321321, 30.434788>,  <36.027771, 31.511736, 29.755098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251213, 31.321321, 30.434788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.886467, 31.159231, 30.408567>,  <35.667622, 31.061977, 30.392836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.886467, 31.159231, 30.408567>,  <36.251213, 31.321321, 30.434788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886467, 31.159231, 30.408567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366276, -0.875293, 0.315759,
		-0.185332, 0.263919, 0.946572,
		-0.911863, -0.405227, -0.065552,
		35.612907, 31.037663, 30.388903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.506672, 37.969406, 26.689913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307915, 37.623203, 26.715183>,  <33.188660, 37.415482, 26.730345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307915, 37.623203, 26.715183>,  <33.506672, 37.969406, 26.689913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307915, 37.623203, 26.715183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307474, -0.107508, 0.945464,
		-0.811518, 0.489216, 0.319542,
		-0.496889, -0.865511, 0.063176,
		33.158848, 37.363548, 26.734137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339455, 37.870132, 27.407394>,  <33.506672, 37.969406, 26.689913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339455, 37.870132, 27.407394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277473, 37.500912, 27.266556>,  <33.240284, 37.279381, 27.182053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277473, 37.500912, 27.266556>,  <33.339455, 37.870132, 27.407394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277473, 37.500912, 27.266556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138577, -0.373183, 0.917350,
		-0.978155, 0.093350, 0.185738,
		-0.154949, -0.923049, -0.352095,
		33.230988, 37.223995, 27.160927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867645, 37.624249, 27.882046>,  <33.339455, 37.870132, 27.407394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867645, 37.624249, 27.882046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051571, 37.314137, 27.708836>,  <33.161926, 37.128071, 27.604910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051571, 37.314137, 27.708836>,  <32.867645, 37.624249, 27.882046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051571, 37.314137, 27.708836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220589, -0.372627, 0.901382,
		-0.860180, -0.509991, -0.000322,
		0.459817, -0.775279, -0.433025,
		33.189514, 37.081554, 27.578928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652573, 36.976028, 28.232105>,  <32.867645, 37.624249, 27.882046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652573, 36.976028, 28.232105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984425, 36.847862, 28.049215>,  <33.183537, 36.770962, 27.939482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984425, 36.847862, 28.049215>,  <32.652573, 36.976028, 28.232105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984425, 36.847862, 28.049215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216731, -0.569894, 0.792621,
		-0.514532, -0.756676, -0.403358,
		0.829629, -0.320409, -0.457224,
		33.233311, 36.751740, 27.912048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680965, 36.143822, 28.372246>,  <32.652573, 36.976028, 28.232105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680965, 36.143822, 28.372246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048252, 36.265305, 28.270554>,  <33.268623, 36.338192, 28.209538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048252, 36.265305, 28.270554>,  <32.680965, 36.143822, 28.372246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048252, 36.265305, 28.270554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395872, -0.724004, 0.564892,
		-0.012504, -0.619339, -0.785024,
		0.918221, 0.303705, -0.254232,
		33.323719, 36.356415, 28.194284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038536, 35.603512, 28.059927>,  <32.680965, 36.143822, 28.372246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038536, 35.603512, 28.059927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338428, 35.850037, 28.156321>,  <33.518364, 35.997952, 28.214157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338428, 35.850037, 28.156321>,  <33.038536, 35.603512, 28.059927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338428, 35.850037, 28.156321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482831, -0.758493, 0.437679,
		0.452528, -0.211786, -0.866236,
		0.749728, 0.616308, 0.240983,
		33.563347, 36.034927, 28.228615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732464, 35.280376, 27.962921>,  <33.038536, 35.603512, 28.059927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732464, 35.280376, 27.962921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839577, 35.576138, 28.210011>,  <33.903847, 35.753593, 28.358263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839577, 35.576138, 28.210011>,  <33.732464, 35.280376, 27.962921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839577, 35.576138, 28.210011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579732, -0.635741, 0.509651,
		0.769546, 0.221636, -0.598895,
		0.267785, 0.739399, 0.617721,
		33.919910, 35.797958, 28.395327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380917, 35.244896, 27.904482>,  <33.732464, 35.280376, 27.962921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380917, 35.244896, 27.904482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291191, 35.423225, 28.251104>,  <34.237354, 35.530224, 28.459078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291191, 35.423225, 28.251104>,  <34.380917, 35.244896, 27.904482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291191, 35.423225, 28.251104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604185, -0.634068, 0.482616,
		0.764619, 0.631820, -0.127129,
		-0.224318, 0.445827, 0.866556,
		34.223896, 35.556973, 28.511072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009193, 35.442272, 28.274355>,  <34.380917, 35.244896, 27.904482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009193, 35.442272, 28.274355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711922, 35.414585, 28.540556>,  <34.533558, 35.397972, 28.700275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711922, 35.414585, 28.540556>,  <35.009193, 35.442272, 28.274355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711922, 35.414585, 28.540556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510100, -0.702272, 0.496601,
		0.432989, 0.708536, 0.557223,
		-0.743181, -0.069217, 0.665500,
		34.488968, 35.393822, 28.740206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699390, 35.570339, 28.535275>,  <35.009193, 35.442272, 28.274355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699390, 35.570339, 28.535275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098862, 35.574005, 28.515026>,  <36.338543, 35.576202, 28.502878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098862, 35.574005, 28.515026>,  <35.699390, 35.570339, 28.535275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098862, 35.574005, 28.515026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046656, 0.575808, -0.816253,
		0.021668, 0.817534, 0.575473,
		0.998676, 0.009162, -0.050619,
		36.398464, 35.576756, 28.499840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763462, 36.237244, 28.370411>,  <35.699390, 35.570339, 28.535275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763462, 36.237244, 28.370411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101742, 36.036007, 28.299200>,  <36.304710, 35.915264, 28.256474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101742, 36.036007, 28.299200>,  <35.763462, 36.237244, 28.370411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101742, 36.036007, 28.299200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088904, 0.461755, -0.882541,
		0.526202, 0.730537, 0.435233,
		0.845700, -0.503089, -0.178029,
		36.355453, 35.885078, 28.245792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292171, 36.706383, 28.237656>,  <35.763462, 36.237244, 28.370411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292171, 36.706383, 28.237656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412361, 36.369164, 28.059223>,  <36.484474, 36.166832, 27.952164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412361, 36.369164, 28.059223>,  <36.292171, 36.706383, 28.237656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412361, 36.369164, 28.059223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028940, 0.475535, -0.879221,
		0.953352, 0.251270, 0.167282,
		0.300471, -0.843048, -0.446080,
		36.502502, 36.116249, 27.925400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798458, 36.957603, 27.777359>,  <36.292171, 36.706383, 28.237656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798458, 36.957603, 27.777359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685612, 36.604698, 27.626614>,  <36.617905, 36.392956, 27.536165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685612, 36.604698, 27.626614>,  <36.798458, 36.957603, 27.777359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685612, 36.604698, 27.626614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048419, 0.379228, -0.924036,
		0.958157, -0.278933, -0.064269,
		-0.282117, -0.882260, -0.376866,
		36.600975, 36.340019, 27.513554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274086, 36.829967, 27.253786>,  <36.798458, 36.957603, 27.777359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274086, 36.829967, 27.253786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935631, 36.628429, 27.184284>,  <36.732559, 36.507507, 27.142584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935631, 36.628429, 27.184284>,  <37.274086, 36.829967, 27.253786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935631, 36.628429, 27.184284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014150, 0.347134, -0.937709,
		0.532778, -0.790971, -0.300852,
		-0.846137, -0.503848, -0.173753,
		36.681789, 36.477276, 27.132158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384521, 36.630337, 26.606558>,  <37.274086, 36.829967, 27.253786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384521, 36.630337, 26.606558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991928, 36.563808, 26.644543>,  <36.756371, 36.523891, 26.667334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991928, 36.563808, 26.644543>,  <37.384521, 36.630337, 26.606558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991928, 36.563808, 26.644543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125211, 0.182035, -0.975287,
		0.144925, -0.969124, -0.199490,
		-0.981488, -0.166322, 0.094964,
		36.697483, 36.513912, 26.673031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203747, 36.261845, 25.964428>,  <37.384521, 36.630337, 26.606558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203747, 36.261845, 25.964428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871418, 36.418873, 26.122227>,  <36.672020, 36.513088, 26.216906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871418, 36.418873, 26.122227>,  <37.203747, 36.261845, 25.964428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871418, 36.418873, 26.122227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327439, 0.228375, -0.916858,
		-0.450022, -0.890918, -0.061197,
		-0.830821, 0.392568, 0.394495,
		36.622173, 36.536644, 26.240576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681713, 36.363922, 25.426432>,  <37.203747, 36.261845, 25.964428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681713, 36.363922, 25.426432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492767, 36.623337, 25.665186>,  <36.379398, 36.778984, 25.808437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492767, 36.623337, 25.665186>,  <36.681713, 36.363922, 25.426432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492767, 36.623337, 25.665186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234094, 0.560565, -0.794334,
		-0.849748, -0.514942, -0.112973,
		-0.472365, 0.648538, 0.596884,
		36.351059, 36.817898, 25.844252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947029, 36.657784, 25.194063>,  <36.681713, 36.363922, 25.426432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947029, 36.657784, 25.194063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086796, 36.944080, 25.435930>,  <36.170654, 37.115860, 25.581051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086796, 36.944080, 25.435930>,  <35.947029, 36.657784, 25.194063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086796, 36.944080, 25.435930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247321, 0.692912, -0.677278,
		-0.903738, 0.087103, 0.419131,
		0.349413, 0.715742, 0.604668,
		36.191620, 37.158802, 25.617331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447281, 37.175911, 25.161503>,  <35.947029, 36.657784, 25.194063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447281, 37.175911, 25.161503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779587, 37.367924, 25.274212>,  <35.978970, 37.483131, 25.341837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779587, 37.367924, 25.274212>,  <35.447281, 37.175911, 25.161503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779587, 37.367924, 25.274212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276660, 0.795371, -0.539299,
		-0.482994, 0.370077, 0.793574,
		0.830768, 0.480029, 0.281774,
		36.028816, 37.511932, 25.358744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315128, 37.961834, 25.206772>,  <35.447281, 37.175911, 25.161503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315128, 37.961834, 25.206772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714691, 37.976215, 25.218769>,  <35.954430, 37.984844, 25.225967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714691, 37.976215, 25.218769>,  <35.315128, 37.961834, 25.206772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714691, 37.976215, 25.218769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016862, 0.873838, -0.485925,
		-0.043680, 0.484886, 0.873486,
		0.998903, 0.035954, 0.029993,
		36.014362, 37.987003, 25.227766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407867, 38.523144, 25.376030>,  <35.315128, 37.961834, 25.206772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407867, 38.523144, 25.376030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765984, 38.463821, 25.208002>,  <35.980854, 38.428230, 25.107185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765984, 38.463821, 25.208002>,  <35.407867, 38.523144, 25.376030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765984, 38.463821, 25.208002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099148, 0.852973, -0.512451,
		0.434306, 0.500442, 0.748956,
		0.895292, -0.148303, -0.420070,
		36.034573, 38.419331, 25.081982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699684, 39.198753, 25.365402>,  <35.407867, 38.523144, 25.376030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699684, 39.198753, 25.365402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906677, 38.962353, 25.117874>,  <36.030872, 38.820515, 24.969358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906677, 38.962353, 25.117874>,  <35.699684, 39.198753, 25.365402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906677, 38.962353, 25.117874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002938, 0.721944, -0.691945,
		0.855690, 0.359886, 0.371855,
		0.517480, -0.590998, -0.618818,
		36.061920, 38.785053, 24.932228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374664, 39.470535, 25.198505>,  <35.699684, 39.198753, 25.365402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374664, 39.470535, 25.198505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292866, 39.225395, 24.893196>,  <36.243786, 39.078312, 24.710011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292866, 39.225395, 24.893196>,  <36.374664, 39.470535, 25.198505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292866, 39.225395, 24.893196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233083, 0.726839, -0.646048,
		0.950711, -0.310023, -0.005792,
		-0.204500, -0.612855, -0.763275,
		36.231514, 39.041538, 24.664213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.734589, 33.796116, 19.536701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.647980, 33.992085, 19.874481>,  <33.596016, 34.109665, 20.077150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.647980, 33.992085, 19.874481>,  <33.734589, 33.796116, 19.536701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647980, 33.992085, 19.874481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601501, -0.614355, 0.510651,
		0.768970, 0.618505, -0.161667,
		-0.216519, 0.489919, 0.844452,
		33.583023, 34.139061, 20.127817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380634, 33.777935, 19.875288>,  <33.734589, 33.796116, 19.536701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380634, 33.777935, 19.875288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.111679, 33.888618, 20.149899>,  <33.950306, 33.955029, 20.314665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.111679, 33.888618, 20.149899>,  <34.380634, 33.777935, 19.875288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111679, 33.888618, 20.149899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561459, -0.413729, 0.716653,
		0.482342, 0.867329, 0.122827,
		-0.672391, 0.276710, 0.686529,
		33.909962, 33.971630, 20.355858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708549, 34.161247, 20.398935>,  <34.380634, 33.777935, 19.875288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708549, 34.161247, 20.398935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.370720, 34.021786, 20.561481>,  <34.168022, 33.938110, 20.659010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.370720, 34.021786, 20.561481>,  <34.708549, 34.161247, 20.398935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370720, 34.021786, 20.561481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522101, -0.367940, 0.769435,
		-0.118745, 0.862011, 0.492784,
		-0.844577, -0.348650, 0.406366,
		34.117348, 33.917191, 20.683392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753574, 34.354370, 21.084726>,  <34.708549, 34.161247, 20.398935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753574, 34.354370, 21.084726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.477642, 34.064789, 21.082314>,  <34.312084, 33.891041, 21.080866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.477642, 34.064789, 21.082314>,  <34.753574, 34.354370, 21.084726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477642, 34.064789, 21.082314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386032, -0.374858, 0.842889,
		-0.612469, 0.579119, 0.538054,
		-0.689827, -0.723949, -0.006030,
		34.270695, 33.847603, 21.080505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536137, 34.396282, 21.733746>,  <34.753574, 34.354370, 21.084726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536137, 34.396282, 21.733746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.421864, 34.036400, 21.601734>,  <34.353298, 33.820473, 21.522528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.421864, 34.036400, 21.601734>,  <34.536137, 34.396282, 21.733746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421864, 34.036400, 21.601734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419542, -0.427043, 0.801011,
		-0.861609, 0.090375, 0.499463,
		-0.285683, -0.899704, -0.330028,
		34.336159, 33.766487, 21.502726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303333, 34.051350, 22.301275>,  <34.536137, 34.396282, 21.733746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303333, 34.051350, 22.301275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384251, 33.743240, 22.059364>,  <34.432800, 33.558376, 21.914217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384251, 33.743240, 22.059364>,  <34.303333, 34.051350, 22.301275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384251, 33.743240, 22.059364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192209, -0.574308, 0.795755,
		-0.960278, -0.277219, 0.031875,
		0.202292, -0.770273, -0.604779,
		34.444939, 33.512157, 21.877930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102562, 33.581421, 22.671335>,  <34.303333, 34.051350, 22.301275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102562, 33.581421, 22.671335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.333538, 33.401871, 22.398550>,  <34.472122, 33.294140, 22.234879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.333538, 33.401871, 22.398550>,  <34.102562, 33.581421, 22.671335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333538, 33.401871, 22.398550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300354, -0.659921, 0.688688,
		-0.759179, -0.602505, -0.246241,
		0.577438, -0.448878, -0.681963,
		34.506771, 33.267208, 22.193962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977673, 32.744007, 22.720581>,  <34.102562, 33.581421, 22.671335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977673, 32.744007, 22.720581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332283, 32.819366, 22.551550>,  <34.545052, 32.864582, 22.450130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332283, 32.819366, 22.551550>,  <33.977673, 32.744007, 22.720581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332283, 32.819366, 22.551550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435217, -0.649518, 0.623468,
		-0.157013, -0.736636, -0.657810,
		0.886529, 0.188398, -0.422579,
		34.598240, 32.875885, 22.424776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250259, 32.073948, 22.719044>,  <33.977673, 32.744007, 22.720581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250259, 32.073948, 22.719044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556107, 32.325943, 22.664680>,  <34.739616, 32.477142, 22.632063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556107, 32.325943, 22.664680>,  <34.250259, 32.073948, 22.719044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556107, 32.325943, 22.664680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577229, -0.575636, 0.579180,
		0.286646, -0.521300, -0.803791,
		0.764618, 0.629991, -0.135906,
		34.785492, 32.514942, 22.623909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798306, 31.597801, 22.483871>,  <34.250259, 32.073948, 22.719044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798306, 31.597801, 22.483871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.951942, 31.933731, 22.637320>,  <35.044125, 32.135288, 22.729389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.951942, 31.933731, 22.637320>,  <34.798306, 31.597801, 22.483871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951942, 31.933731, 22.637320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686817, -0.537569, 0.489185,
		0.617053, 0.075585, -0.783283,
		0.384094, 0.839825, 0.383622,
		35.067169, 32.185680, 22.752405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491268, 31.365587, 22.506012>,  <34.798306, 31.597801, 22.483871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491268, 31.365587, 22.506012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437843, 31.684042, 22.742088>,  <35.405788, 31.875114, 22.883734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437843, 31.684042, 22.742088>,  <35.491268, 31.365587, 22.506012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437843, 31.684042, 22.742088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584133, -0.417843, 0.695841,
		0.800593, 0.437692, -0.409240,
		-0.133566, 0.796136, 0.590193,
		35.397774, 31.922882, 22.919146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164452, 31.438931, 22.897940>,  <35.491268, 31.365587, 22.506012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164452, 31.438931, 22.897940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923477, 31.675049, 23.112835>,  <35.778893, 31.816719, 23.241772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923477, 31.675049, 23.112835>,  <36.164452, 31.438931, 22.897940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923477, 31.675049, 23.112835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530604, -0.206640, 0.822046,
		0.596264, 0.780289, -0.188726,
		-0.602435, 0.590296, 0.537237,
		35.742748, 31.852137, 23.274006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592445, 31.882353, 23.367739>,  <36.164452, 31.438931, 22.897940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592445, 31.882353, 23.367739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232971, 31.853157, 23.540731>,  <36.017288, 31.835640, 23.644527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232971, 31.853157, 23.540731>,  <36.592445, 31.882353, 23.367739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232971, 31.853157, 23.540731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425567, -0.383681, 0.819562,
		0.106116, 0.920577, 0.375870,
		-0.898683, -0.072990, 0.432482,
		35.963367, 31.831261, 23.670477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704227, 31.909481, 24.066343>,  <36.592445, 31.882353, 23.367739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704227, 31.909481, 24.066343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.334023, 31.758018, 24.069265>,  <36.111900, 31.667141, 24.071018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.334023, 31.758018, 24.069265>,  <36.704227, 31.909481, 24.066343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334023, 31.758018, 24.069265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231235, -0.549701, 0.802719,
		-0.299939, 0.744613, 0.596312,
		-0.925509, -0.378655, 0.007304,
		36.056370, 31.644423, 24.071457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973934, 32.349701, 24.606129>,  <36.704227, 31.909481, 24.066343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973934, 32.349701, 24.606129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349590, 32.486202, 24.590334>,  <37.574986, 32.568104, 24.580858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349590, 32.486202, 24.590334>,  <36.973934, 32.349701, 24.606129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349590, 32.486202, 24.590334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278157, 0.687926, -0.670363,
		-0.201603, 0.640548, 0.740982,
		0.939141, 0.341256, -0.039485,
		37.631332, 32.588581, 24.578489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009815, 33.092064, 24.846989>,  <36.973934, 32.349701, 24.606129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009815, 33.092064, 24.846989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307186, 33.011105, 24.592005>,  <37.485607, 32.962528, 24.439014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307186, 33.011105, 24.592005>,  <37.009815, 33.092064, 24.846989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307186, 33.011105, 24.592005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233569, 0.814535, -0.531016,
		0.626708, 0.543662, 0.558274,
		0.743427, -0.202396, -0.637458,
		37.530212, 32.950386, 24.400768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292255, 33.716660, 24.683844>,  <37.009815, 33.092064, 24.846989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292255, 33.716660, 24.683844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437298, 33.503426, 24.378077>,  <37.524323, 33.375484, 24.194616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437298, 33.503426, 24.378077>,  <37.292255, 33.716660, 24.683844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437298, 33.503426, 24.378077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156413, 0.773795, -0.613821,
		0.918723, 0.342140, 0.197200,
		0.362605, -0.533087, -0.764419,
		37.546078, 33.343498, 24.148750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729652, 34.162769, 24.237591>,  <37.292255, 33.716660, 24.683844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729652, 34.162769, 24.237591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643101, 33.853996, 23.998491>,  <37.591167, 33.668732, 23.855032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643101, 33.853996, 23.998491>,  <37.729652, 34.162769, 24.237591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643101, 33.853996, 23.998491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174763, 0.632991, -0.754175,
		0.960539, -0.058726, -0.271874,
		-0.216383, -0.771928, -0.597749,
		37.578186, 33.622417, 23.819166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057003, 34.352036, 23.620953>,  <37.729652, 34.162769, 24.237591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057003, 34.352036, 23.620953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808487, 34.058880, 23.510050>,  <37.659378, 33.882988, 23.443508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808487, 34.058880, 23.510050>,  <38.057003, 34.352036, 23.620953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808487, 34.058880, 23.510050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100875, 0.425700, -0.899224,
		0.777059, -0.530712, -0.338414,
		-0.621292, -0.732887, -0.277259,
		37.622101, 33.839012, 23.426872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368923, 34.012726, 23.060881>,  <38.057003, 34.352036, 23.620953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368923, 34.012726, 23.060881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970024, 33.985256, 23.049644>,  <37.730686, 33.968773, 23.042904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970024, 33.985256, 23.049644>,  <38.368923, 34.012726, 23.060881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970024, 33.985256, 23.049644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013608, 0.541457, -0.840618,
		0.072937, -0.837919, -0.540899,
		-0.997244, -0.068673, -0.028089,
		37.670853, 33.964653, 23.041218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151821, 33.845398, 22.412601>,  <38.368923, 34.012726, 23.060881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151821, 33.845398, 22.412601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798450, 33.960148, 22.560791>,  <37.586426, 34.028999, 22.649706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798450, 33.960148, 22.560791>,  <38.151821, 33.845398, 22.412601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798450, 33.960148, 22.560791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166195, 0.547414, -0.820193,
		-0.438097, -0.786155, -0.435925,
		-0.883431, 0.286875, 0.370476,
		37.533421, 34.046211, 22.671934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699139, 33.892006, 21.828445>,  <38.151821, 33.845398, 22.412601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699139, 33.892006, 21.828445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499756, 34.103668, 22.103117>,  <37.380127, 34.230667, 22.267920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499756, 34.103668, 22.103117>,  <37.699139, 33.892006, 21.828445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499756, 34.103668, 22.103117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368544, 0.587610, -0.720340,
		-0.784673, -0.612133, -0.097883,
		-0.498461, 0.529157, 0.686680,
		37.350216, 34.262417, 22.309120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078030, 33.843109, 21.540188>,  <37.699139, 33.892006, 21.828445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078030, 33.843109, 21.540188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.094173, 34.159870, 21.783915>,  <37.103859, 34.349926, 21.930151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.094173, 34.159870, 21.783915>,  <37.078030, 33.843109, 21.540188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094173, 34.159870, 21.783915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545825, 0.528259, -0.650398,
		-0.836927, -0.306329, 0.453560,
		0.040361, 0.791899, 0.609316,
		37.106281, 34.397438, 21.966709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371933, 34.149460, 21.666643>,  <37.078030, 33.843109, 21.540188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371933, 34.149460, 21.666643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.619587, 34.457314, 21.729048>,  <36.768181, 34.642025, 21.766491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.619587, 34.457314, 21.729048>,  <36.371933, 34.149460, 21.666643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619587, 34.457314, 21.729048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538366, 0.560633, -0.629168,
		-0.571692, 0.305550, 0.761451,
		0.619137, 0.769630, 0.156012,
		36.805328, 34.688202, 21.775852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914005, 34.624111, 21.740408>,  <36.371933, 34.149460, 21.666643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914005, 34.624111, 21.740408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252453, 34.830391, 21.686541>,  <36.455521, 34.954159, 21.654221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252453, 34.830391, 21.686541>,  <35.914005, 34.624111, 21.740408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252453, 34.830391, 21.686541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487245, 0.645987, -0.587617,
		-0.216037, 0.562812, 0.797854,
		0.846121, 0.515697, -0.134670,
		36.506290, 34.985100, 21.646139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831242, 35.338902, 21.995855>,  <35.914005, 34.624111, 21.740408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831242, 35.338902, 21.995855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103588, 35.334297, 21.702929>,  <36.266994, 35.331535, 21.527172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103588, 35.334297, 21.702929>,  <35.831242, 35.338902, 21.995855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103588, 35.334297, 21.702929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481443, 0.746467, -0.459348,
		0.551936, 0.665323, 0.502705,
		0.680867, -0.011507, -0.732317,
		36.307850, 35.330845, 21.483234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765148, 35.986732, 21.652206>,  <35.831242, 35.338902, 21.995855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765148, 35.986732, 21.652206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018894, 35.814754, 21.395229>,  <36.171143, 35.711567, 21.241043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018894, 35.814754, 21.395229>,  <35.765148, 35.986732, 21.652206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018894, 35.814754, 21.395229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330419, 0.600516, -0.728151,
		0.698863, 0.674186, 0.238882,
		0.634361, -0.429947, -0.642442,
		36.209202, 35.685772, 21.202497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179478, 36.464573, 21.311781>,  <35.765148, 35.986732, 21.652206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179478, 36.464573, 21.311781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.168091, 36.160904, 21.051676>,  <36.161259, 35.978703, 20.895613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.168091, 36.160904, 21.051676>,  <36.179478, 36.464573, 21.311781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168091, 36.160904, 21.051676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326403, 0.621926, -0.711807,
		0.944802, 0.191986, -0.265501,
		-0.028465, -0.759177, -0.650262,
		36.159550, 35.933151, 20.856598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899448, 36.695538, 21.175108>,  <36.179478, 36.464573, 21.311781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899448, 36.695538, 21.175108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117348, 37.015923, 21.274479>,  <37.248085, 37.208153, 21.334101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117348, 37.015923, 21.274479>,  <36.899448, 36.695538, 21.175108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117348, 37.015923, 21.274479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448042, -0.528394, 0.721151,
		0.708881, -0.281537, -0.646703,
		0.544745, 0.800960, 0.248428,
		37.280769, 37.256210, 21.349007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632221, 36.415218, 21.300846>,  <36.899448, 36.695538, 21.175108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632221, 36.415218, 21.300846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609894, 36.764652, 21.494228>,  <37.596497, 36.974312, 21.610258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609894, 36.764652, 21.494228>,  <37.632221, 36.415218, 21.300846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609894, 36.764652, 21.494228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417589, -0.419399, 0.806055,
		0.906920, 0.246876, -0.341391,
		-0.055817, 0.873588, 0.483454,
		37.593147, 37.026730, 21.639265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279118, 36.591110, 21.560358>,  <37.632221, 36.415218, 21.300846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279118, 36.591110, 21.560358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037945, 36.802525, 21.799397>,  <37.893242, 36.929375, 21.942820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037945, 36.802525, 21.799397>,  <38.279118, 36.591110, 21.560358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037945, 36.802525, 21.799397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480914, -0.356885, 0.800846,
		0.636551, 0.770248, -0.039005,
		-0.602930, 0.528537, 0.597598,
		37.857067, 36.961086, 21.978676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745213, 36.903465, 21.988888>,  <38.279118, 36.591110, 21.560358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745213, 36.903465, 21.988888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.390259, 36.949238, 22.167530>,  <38.177288, 36.976704, 22.274715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.390259, 36.949238, 22.167530>,  <38.745213, 36.903465, 21.988888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390259, 36.949238, 22.167530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437425, -0.097024, 0.894005,
		0.145635, 0.988682, 0.036041,
		-0.887384, 0.114433, 0.446604,
		38.124043, 36.983566, 22.301512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976921, 37.325005, 22.469835>,  <38.745213, 36.903465, 21.988888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976921, 37.325005, 22.469835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624706, 37.189766, 22.602709>,  <38.413376, 37.108624, 22.682432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624706, 37.189766, 22.602709>,  <38.976921, 37.325005, 22.469835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624706, 37.189766, 22.602709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448050, -0.365109, 0.816056,
		-0.154624, 0.867401, 0.472977,
		-0.880536, -0.338099, 0.332184,
		38.360546, 37.088337, 22.702364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894062, 37.533855, 23.152794>,  <38.976921, 37.325005, 22.469835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894062, 37.533855, 23.152794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674873, 37.203754, 23.098129>,  <38.543358, 37.005692, 23.065331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674873, 37.203754, 23.098129>,  <38.894062, 37.533855, 23.152794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674873, 37.203754, 23.098129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451405, -0.429281, 0.782273,
		-0.704242, 0.366976, 0.607760,
		-0.547975, -0.825255, -0.136663,
		38.510479, 36.956177, 23.057131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681927, 37.408169, 23.799734>,  <38.894062, 37.533855, 23.152794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681927, 37.408169, 23.799734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633694, 37.057274, 23.613867>,  <38.604755, 36.846737, 23.502346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633694, 37.057274, 23.613867>,  <38.681927, 37.408169, 23.799734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633694, 37.057274, 23.613867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267201, -0.479491, 0.835878,
		-0.956067, -0.023369, 0.292216,
		-0.120581, -0.877236, -0.464669,
		38.597519, 36.794102, 23.474466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407440, 36.890846, 24.296556>,  <38.681927, 37.408169, 23.799734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407440, 36.890846, 24.296556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543938, 36.636852, 24.019327>,  <38.625835, 36.484455, 23.852989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543938, 36.636852, 24.019327>,  <38.407440, 36.890846, 24.296556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543938, 36.636852, 24.019327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283813, -0.633315, 0.719973,
		-0.896106, -0.442387, -0.035895,
		0.341240, -0.634984, -0.693073,
		38.646309, 36.446358, 23.811405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078381, 36.290188, 24.367014>,  <38.407440, 36.890846, 24.296556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078381, 36.290188, 24.367014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.421513, 36.196274, 24.184143>,  <38.627392, 36.139927, 24.074421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.421513, 36.196274, 24.184143>,  <38.078381, 36.290188, 24.367014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421513, 36.196274, 24.184143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293442, -0.506555, 0.810737,
		-0.421930, -0.829627, -0.365642,
		0.857827, -0.234780, -0.457178,
		38.678860, 36.125839, 24.046989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168335, 35.619587, 24.489443>,  <38.078381, 36.290188, 24.367014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168335, 35.619587, 24.489443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530281, 35.719685, 24.351690>,  <38.747448, 35.779743, 24.269039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530281, 35.719685, 24.351690>,  <38.168335, 35.619587, 24.489443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530281, 35.719685, 24.351690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425358, -0.498938, 0.755070,
		0.017130, -0.829720, -0.557916,
		0.904863, 0.250249, -0.344382,
		38.801739, 35.794758, 24.248375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518818, 35.092548, 24.416275>,  <38.168335, 35.619587, 24.489443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518818, 35.092548, 24.416275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805584, 35.369350, 24.450113>,  <38.977642, 35.535431, 24.470415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805584, 35.369350, 24.450113>,  <38.518818, 35.092548, 24.416275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805584, 35.369350, 24.450113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462206, -0.562633, 0.685427,
		0.521916, -0.452294, -0.723211,
		0.716916, 0.692008, 0.084594,
		39.020660, 35.576954, 24.475491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160980, 34.740551, 24.409233>,  <38.518818, 35.092548, 24.416275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160980, 34.740551, 24.409233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232056, 35.078274, 24.611446>,  <39.274700, 35.280907, 24.732775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232056, 35.078274, 24.611446>,  <39.160980, 34.740551, 24.409233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232056, 35.078274, 24.611446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561376, -0.508893, 0.652598,
		0.808259, 0.167834, -0.564402,
		0.177692, 0.844310, 0.505535,
		39.285362, 35.331566, 24.763107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892738, 34.668053, 24.713644>,  <39.160980, 34.740551, 24.409233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892738, 34.668053, 24.713644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.743149, 34.976227, 24.920168>,  <39.653397, 35.161133, 25.044083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.743149, 34.976227, 24.920168>,  <39.892738, 34.668053, 24.713644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743149, 34.976227, 24.920168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455741, -0.332194, 0.825801,
		0.807742, 0.544127, -0.226889,
		-0.373969, 0.770437, 0.516308,
		39.630959, 35.207359, 25.075060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547421, 35.097717, 25.004444>,  <39.892738, 34.668053, 24.713644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547421, 35.097717, 25.004444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.199150, 35.145378, 25.195324>,  <39.990189, 35.173977, 25.309851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.199150, 35.145378, 25.195324>,  <40.547421, 35.097717, 25.004444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199150, 35.145378, 25.195324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395690, -0.406576, 0.823484,
		0.292140, 0.905813, 0.306849,
		-0.870680, 0.119155, 0.477198,
		39.937946, 35.181126, 25.338484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.225410, 39.339161, 24.431925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.876984, 39.233154, 24.266516>,  <36.667927, 39.169552, 24.167271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.876984, 39.233154, 24.266516>,  <37.225410, 39.339161, 24.431925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876984, 39.233154, 24.266516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301016, 0.377232, -0.875834,
		0.388120, -0.887386, -0.248814,
		-0.871063, -0.265032, -0.413529,
		36.615662, 39.153648, 24.142458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418133, 39.208401, 23.666100>,  <37.225410, 39.339161, 24.431925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418133, 39.208401, 23.666100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020901, 39.247913, 23.691494>,  <36.782562, 39.271622, 23.706730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020901, 39.247913, 23.691494>,  <37.418133, 39.208401, 23.666100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020901, 39.247913, 23.691494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017212, 0.412371, -0.910853,
		-0.116154, -0.905645, -0.407818,
		-0.993082, 0.098780, 0.063486,
		36.722977, 39.277546, 23.710541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249779, 39.246033, 22.943884>,  <37.418133, 39.208401, 23.666100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249779, 39.246033, 22.943884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.904137, 39.335636, 23.124172>,  <36.696751, 39.389400, 23.232346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.904137, 39.335636, 23.124172>,  <37.249779, 39.246033, 22.943884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904137, 39.335636, 23.124172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332932, 0.417202, -0.845635,
		-0.377472, -0.880774, -0.285924,
		-0.864101, 0.224010, 0.450720,
		36.644905, 39.402840, 23.259388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742550, 38.936188, 22.516623>,  <37.249779, 39.246033, 22.943884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742550, 38.936188, 22.516623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582676, 39.249489, 22.707106>,  <36.486752, 39.437469, 22.821396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582676, 39.249489, 22.707106>,  <36.742550, 38.936188, 22.516623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582676, 39.249489, 22.707106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333267, 0.359789, -0.871484,
		-0.853925, -0.507019, 0.117231,
		-0.399681, 0.783252, 0.476206,
		36.462772, 39.484463, 22.849968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121487, 39.089832, 22.136730>,  <36.742550, 38.936188, 22.516623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121487, 39.089832, 22.136730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.217876, 39.421284, 22.338844>,  <36.275711, 39.620155, 22.460114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.217876, 39.421284, 22.338844>,  <36.121487, 39.089832, 22.136730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217876, 39.421284, 22.338844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349384, 0.559786, -0.751379,
		-0.905463, 0.004521, 0.424400,
		0.240970, 0.828625, 0.505286,
		36.290169, 39.669872, 22.490431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463306, 39.499664, 22.231173>,  <36.121487, 39.089832, 22.136730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463306, 39.499664, 22.231173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775150, 39.744820, 22.282671>,  <35.962257, 39.891914, 22.313570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775150, 39.744820, 22.282671>,  <35.463306, 39.499664, 22.231173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775150, 39.744820, 22.282671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421790, 0.665811, -0.615458,
		-0.462929, 0.425513, 0.777583,
		0.779609, 0.612890, 0.128746,
		36.009033, 39.928688, 22.321295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193172, 40.190002, 22.458368>,  <35.463306, 39.499664, 22.231173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193172, 40.190002, 22.458368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547886, 40.253986, 22.284922>,  <35.760715, 40.292377, 22.180853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547886, 40.253986, 22.284922>,  <35.193172, 40.190002, 22.458368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547886, 40.253986, 22.284922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388672, 0.765766, -0.512383,
		0.250089, 0.622909, 0.741242,
		0.886786, 0.159958, -0.433617,
		35.813923, 40.301975, 22.154837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238556, 40.908562, 22.293734>,  <35.193172, 40.190002, 22.458368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238556, 40.908562, 22.293734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533165, 40.759022, 22.068247>,  <35.709930, 40.669296, 21.932955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533165, 40.759022, 22.068247>,  <35.238556, 40.908562, 22.293734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533165, 40.759022, 22.068247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286122, 0.582968, -0.760449,
		0.612922, 0.721377, 0.322401,
		0.736520, -0.373850, -0.563716,
		35.754120, 40.646866, 21.899132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485256, 41.495331, 21.940502>,  <35.238556, 40.908562, 22.293734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485256, 41.495331, 21.940502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665379, 41.204609, 21.733047>,  <35.773453, 41.030174, 21.608576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665379, 41.204609, 21.733047>,  <35.485256, 41.495331, 21.940502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665379, 41.204609, 21.733047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085497, 0.543090, -0.835310,
		0.888774, 0.420483, 0.182415,
		0.450302, -0.726806, -0.518634,
		35.800468, 40.986568, 21.577457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822815, 41.842770, 21.599569>,  <35.485256, 41.495331, 21.940502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822815, 41.842770, 21.599569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787529, 41.496429, 21.402586>,  <35.766357, 41.288624, 21.284395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787529, 41.496429, 21.402586>,  <35.822815, 41.842770, 21.599569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787529, 41.496429, 21.402586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200878, 0.499692, -0.842589,
		0.975637, 0.024599, -0.218009,
		-0.088211, -0.865854, -0.492459,
		35.761066, 41.236671, 21.254848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062111, 42.027279, 20.951180>,  <35.822815, 41.842770, 21.599569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062111, 42.027279, 20.951180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.878178, 41.674397, 20.910656>,  <35.767818, 41.462666, 20.886341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.878178, 41.674397, 20.910656>,  <36.062111, 42.027279, 20.951180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878178, 41.674397, 20.910656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293482, 0.258658, -0.920307,
		0.838104, -0.393458, -0.377852,
		-0.459836, -0.882206, -0.101310,
		35.740227, 41.409737, 20.880262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342514, 41.853813, 20.397306>,  <36.062111, 42.027279, 20.951180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342514, 41.853813, 20.397306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007656, 41.640873, 20.447567>,  <35.806740, 41.513107, 20.477722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007656, 41.640873, 20.447567>,  <36.342514, 41.853813, 20.397306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007656, 41.640873, 20.447567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304617, 0.262949, -0.915460,
		0.454309, -0.804648, -0.382290,
		-0.837146, -0.532353, 0.125650,
		35.756512, 41.481167, 20.485262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915932, 42.084412, 19.872147>,  <36.342514, 41.853813, 20.397306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915932, 42.084412, 19.872147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685669, 41.801720, 20.036661>,  <35.547512, 41.632107, 20.135370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685669, 41.801720, 20.036661>,  <35.915932, 42.084412, 19.872147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685669, 41.801720, 20.036661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784741, 0.336134, -0.520764,
		0.229789, -0.622537, -0.748094,
		-0.575655, -0.706726, 0.411290,
		35.512974, 41.589703, 20.160048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732037, 41.624203, 19.299002>,  <35.915932, 42.084412, 19.872147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732037, 41.624203, 19.299002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473801, 41.671337, 19.600819>,  <35.318859, 41.699615, 19.781908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473801, 41.671337, 19.600819>,  <35.732037, 41.624203, 19.299002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473801, 41.671337, 19.600819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699927, 0.303928, -0.646320,
		-0.305485, -0.945380, -0.113738,
		-0.645586, 0.117833, 0.754542,
		35.280125, 41.706688, 19.827181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200737, 41.676449, 18.713377>,  <35.732037, 41.624203, 19.299002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200737, 41.676449, 18.713377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203167, 41.532726, 18.340097>,  <36.204624, 41.446495, 18.116129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203167, 41.532726, 18.340097>,  <36.200737, 41.676449, 18.713377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203167, 41.532726, 18.340097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253252, -0.902241, 0.349032,
		-0.967381, -0.238455, 0.085512,
		0.006076, -0.359303, -0.933201,
		36.204990, 41.424934, 18.060137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921707, 40.984505, 18.737616>,  <36.200737, 41.676449, 18.713377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921707, 40.984505, 18.737616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.123280, 40.999043, 18.392426>,  <36.244225, 41.007763, 18.185310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.123280, 40.999043, 18.392426>,  <35.921707, 40.984505, 18.737616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123280, 40.999043, 18.392426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413248, -0.887487, 0.203944,
		-0.758469, -0.459398, -0.462254,
		0.503935, 0.036340, -0.862977,
		36.274460, 41.009945, 18.133532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639923, 40.404335, 18.360603>,  <35.921707, 40.984505, 18.737616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639923, 40.404335, 18.360603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005035, 40.511330, 18.237127>,  <36.224102, 40.575527, 18.163042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005035, 40.511330, 18.237127>,  <35.639923, 40.404335, 18.360603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005035, 40.511330, 18.237127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381668, -0.827740, 0.411309,
		-0.145496, -0.493250, -0.857633,
		0.912776, 0.267487, -0.308690,
		36.278870, 40.591576, 18.144520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967381, 39.797592, 18.245350>,  <35.639923, 40.404335, 18.360603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967381, 39.797592, 18.245350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293907, 40.027805, 18.225828>,  <36.489822, 40.165932, 18.214115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293907, 40.027805, 18.225828>,  <35.967381, 39.797592, 18.245350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293907, 40.027805, 18.225828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543927, -0.737557, 0.400192,
		0.194327, -0.353231, -0.915131,
		0.816321, 0.575532, -0.048804,
		36.538803, 40.200466, 18.211187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615963, 39.345879, 17.962395>,  <35.967381, 39.797592, 18.245350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615963, 39.345879, 17.962395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769505, 39.666454, 18.145853>,  <36.861629, 39.858799, 18.255928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769505, 39.666454, 18.145853>,  <36.615963, 39.345879, 17.962395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769505, 39.666454, 18.145853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480561, -0.597513, 0.641903,
		0.788491, -0.025989, -0.614496,
		0.383852, 0.801437, 0.458645,
		36.884659, 39.906887, 18.283447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301743, 39.117023, 18.179863>,  <36.615963, 39.345879, 17.962395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301743, 39.117023, 18.179863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203186, 39.425701, 18.414394>,  <37.144051, 39.610909, 18.555113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203186, 39.425701, 18.414394>,  <37.301743, 39.117023, 18.179863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203186, 39.425701, 18.414394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386189, -0.476701, 0.789692,
		0.888903, 0.421009, -0.180563,
		-0.246393, 0.771691, 0.586331,
		37.129269, 39.657207, 18.590294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910202, 39.319950, 18.580153>,  <37.301743, 39.117023, 18.179863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910202, 39.319950, 18.580153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.588299, 39.459820, 18.772024>,  <37.395157, 39.543743, 18.887146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.588299, 39.459820, 18.772024>,  <37.910202, 39.319950, 18.580153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588299, 39.459820, 18.772024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212274, -0.585116, 0.782674,
		0.554351, 0.731686, 0.396649,
		-0.804757, 0.349678, 0.479678,
		37.346870, 39.564724, 18.915928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120640, 39.348366, 19.288883>,  <37.910202, 39.319950, 18.580153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120640, 39.348366, 19.288883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.722683, 39.358013, 19.328094>,  <37.483910, 39.363800, 19.351622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.722683, 39.358013, 19.328094>,  <38.120640, 39.348366, 19.288883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722683, 39.358013, 19.328094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061022, -0.629889, 0.774285,
		0.080423, 0.776311, 0.625199,
		-0.994891, 0.024119, 0.098029,
		37.424217, 39.365250, 19.357504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967381, 39.548630, 19.977211>,  <38.120640, 39.348366, 19.288883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967381, 39.548630, 19.977211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633984, 39.368084, 19.849737>,  <37.433945, 39.259758, 19.773252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633984, 39.368084, 19.849737>,  <37.967381, 39.548630, 19.977211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633984, 39.368084, 19.849737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025741, -0.544431, 0.838411,
		-0.551929, 0.707014, 0.442161,
		-0.833494, -0.451361, -0.318686,
		37.383934, 39.232674, 19.754131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691883, 39.358009, 20.708065>,  <37.967381, 39.548630, 19.977211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691883, 39.358009, 20.708065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463753, 39.160126, 20.445772>,  <37.326874, 39.041393, 20.288397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463753, 39.160126, 20.445772>,  <37.691883, 39.358009, 20.708065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463753, 39.160126, 20.445772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291363, -0.624548, 0.724601,
		-0.768006, 0.604317, 0.212056,
		-0.570328, -0.494713, -0.655732,
		37.292656, 39.011711, 20.249052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960705, 39.129158, 21.015884>,  <37.691883, 39.358009, 20.708065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960705, 39.129158, 21.015884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047951, 38.873386, 20.720980>,  <37.100300, 38.719921, 20.544037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047951, 38.873386, 20.720980>,  <36.960705, 39.129158, 21.015884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047951, 38.873386, 20.720980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063185, -0.763117, 0.643165,
		-0.973876, -0.093699, -0.206848,
		0.218114, -0.639432, -0.737261,
		37.113384, 38.681557, 20.499802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473804, 38.680992, 21.125036>,  <36.960705, 39.129158, 21.015884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473804, 38.680992, 21.125036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.772495, 38.516609, 20.915840>,  <36.951710, 38.417980, 20.790321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.772495, 38.516609, 20.915840>,  <36.473804, 38.680992, 21.125036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772495, 38.516609, 20.915840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077096, -0.727519, 0.681742,
		-0.660648, -0.549395, -0.511575,
		0.746726, -0.410951, -0.522991,
		36.996513, 38.393322, 20.758944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284645, 37.943649, 20.929832>,  <36.473804, 38.680992, 21.125036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284645, 37.943649, 20.929832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684464, 37.951469, 20.920666>,  <36.924355, 37.956161, 20.915167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684464, 37.951469, 20.920666>,  <36.284645, 37.943649, 20.929832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684464, 37.951469, 20.920666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030036, -0.704202, 0.709364,
		-0.002268, -0.709731, -0.704470,
		0.999547, 0.019551, -0.022915,
		36.984329, 37.957336, 20.913792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446430, 37.255112, 21.217159>,  <36.284645, 37.943649, 20.929832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446430, 37.255112, 21.217159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.808357, 37.422615, 21.186308>,  <37.025513, 37.523117, 21.167797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.808357, 37.422615, 21.186308>,  <36.446430, 37.255112, 21.217159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808357, 37.422615, 21.186308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358117, -0.650407, 0.669868,
		0.230349, -0.633728, -0.738463,
		0.904816, 0.418759, -0.077129,
		37.079803, 37.548244, 21.163170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329697, 36.763702, 20.690498>,  <36.446430, 37.255112, 21.217159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329697, 36.763702, 20.690498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.176170, 36.405586, 20.600042>,  <36.084053, 36.190716, 20.545769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.176170, 36.405586, 20.600042>,  <36.329697, 36.763702, 20.690498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176170, 36.405586, 20.600042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422906, 0.388133, -0.818843,
		0.820875, -0.218649, -0.527595,
		-0.383816, -0.895291, -0.226141,
		36.061024, 36.136997, 20.532200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461525, 36.723183, 20.022160>,  <36.329697, 36.763702, 20.690498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461525, 36.723183, 20.022160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141834, 36.493771, 20.094046>,  <35.950020, 36.356125, 20.137177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141834, 36.493771, 20.094046>,  <36.461525, 36.723183, 20.022160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141834, 36.493771, 20.094046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483803, 0.436503, -0.758551,
		0.356602, -0.693205, -0.626340,
		-0.799231, -0.573526, 0.179717,
		35.902065, 36.321712, 20.147961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318752, 36.557514, 19.391064>,  <36.461525, 36.723183, 20.022160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318752, 36.557514, 19.391064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.997940, 36.489090, 19.619970>,  <35.805454, 36.448036, 19.757315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.997940, 36.489090, 19.619970>,  <36.318752, 36.557514, 19.391064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997940, 36.489090, 19.619970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587438, 0.399156, -0.703982,
		-0.108002, -0.900785, -0.420620,
		-0.802030, -0.171057, 0.572265,
		35.757332, 36.437775, 19.791651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844952, 36.246670, 18.957216>,  <36.318752, 36.557514, 19.391064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844952, 36.246670, 18.957216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637516, 36.371578, 19.275599>,  <35.513054, 36.446526, 19.466629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637516, 36.371578, 19.275599>,  <35.844952, 36.246670, 18.957216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637516, 36.371578, 19.275599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657756, 0.449067, -0.604728,
		-0.546280, -0.837151, -0.027480,
		-0.518590, 0.312276, 0.795958,
		35.481937, 36.465260, 19.514385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108864, 36.129837, 18.804411>,  <35.844952, 36.246670, 18.957216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108864, 36.129837, 18.804411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.068588, 36.394333, 19.101765>,  <35.044422, 36.553032, 19.280176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.068588, 36.394333, 19.101765>,  <35.108864, 36.129837, 18.804411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068588, 36.394333, 19.101765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509336, 0.607587, -0.609438,
		-0.854657, -0.439995, 0.275618,
		-0.100688, 0.661243, 0.743384,
		35.038383, 36.592705, 19.324780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355183, 36.302769, 18.834200>,  <35.108864, 36.129837, 18.804411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355183, 36.302769, 18.834200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581322, 36.587433, 19.001015>,  <34.717007, 36.758232, 19.101105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581322, 36.587433, 19.001015>,  <34.355183, 36.302769, 18.834200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581322, 36.587433, 19.001015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467967, 0.693078, -0.548315,
		-0.679253, 0.114831, 0.724865,
		0.565352, 0.711657, 0.417038,
		34.750927, 36.800930, 19.126125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934406, 36.751385, 18.806688>,  <34.355183, 36.302769, 18.834200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934406, 36.751385, 18.806688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257275, 36.973915, 18.885660>,  <34.450996, 37.107433, 18.933044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257275, 36.973915, 18.885660>,  <33.934406, 36.751385, 18.806688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257275, 36.973915, 18.885660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407192, 0.766856, -0.496110,
		-0.427399, 0.320053, 0.845515,
		0.807170, 0.556324, 0.197431,
		34.499424, 37.140812, 18.944889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257332, 36.886868, 19.194063>,  <33.934406, 36.751385, 18.806688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257332, 36.886868, 19.194063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.898479, 36.718895, 19.139183>,  <32.683170, 36.618111, 19.106255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.898479, 36.718895, 19.139183>,  <33.257332, 36.886868, 19.194063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898479, 36.718895, 19.139183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224382, -0.700660, 0.677295,
		-0.380547, 0.576834, 0.722805,
		-0.897127, -0.419927, -0.137203,
		32.629341, 36.592918, 19.098022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854523, 36.830193, 19.821352>,  <33.257332, 36.886868, 19.194063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854523, 36.830193, 19.821352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730438, 36.538525, 19.577358>,  <32.655987, 36.363525, 19.430962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730438, 36.538525, 19.577358>,  <32.854523, 36.830193, 19.821352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730438, 36.538525, 19.577358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237294, -0.680721, 0.693044,
		-0.920575, 0.070246, 0.384197,
		-0.310215, -0.729167, -0.609986,
		32.637375, 36.319775, 19.394361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519680, 36.288326, 20.219622>,  <32.854523, 36.830193, 19.821352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519680, 36.288326, 20.219622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550564, 36.095253, 19.870668>,  <32.569092, 35.979408, 19.661297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550564, 36.095253, 19.870668>,  <32.519680, 36.288326, 20.219622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550564, 36.095253, 19.870668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366637, -0.799941, 0.475050,
		-0.927155, -0.356524, 0.115211,
		0.077205, -0.482685, -0.872384,
		32.573727, 35.950447, 19.608953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138481, 35.696758, 20.293631>,  <32.519680, 36.288326, 20.219622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138481, 35.696758, 20.293631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.396297, 35.626637, 19.995949>,  <32.550987, 35.584564, 19.817339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.396297, 35.626637, 19.995949>,  <32.138481, 35.696758, 20.293631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396297, 35.626637, 19.995949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252269, -0.870089, 0.423445,
		-0.721757, -0.460665, -0.516579,
		0.644536, -0.175307, -0.744205,
		32.589657, 35.574043, 19.772688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984905, 34.982010, 19.992680>,  <32.138481, 35.696758, 20.293631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984905, 34.982010, 19.992680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362854, 35.085777, 19.912760>,  <32.589622, 35.148037, 19.864807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362854, 35.085777, 19.912760>,  <31.984905, 34.982010, 19.992680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362854, 35.085777, 19.912760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307811, -0.911813, 0.271753,
		-0.111682, -0.318272, -0.941398,
		0.944870, 0.259423, -0.199801,
		32.646317, 35.163605, 19.852819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259048, 34.370457, 19.738869>,  <31.984905, 34.982010, 19.992680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259048, 34.370457, 19.738869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.586071, 34.586037, 19.820000>,  <32.782284, 34.715385, 19.868677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.586071, 34.586037, 19.820000>,  <32.259048, 34.370457, 19.738869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586071, 34.586037, 19.820000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507407, -0.840766, 0.188813,
		0.272289, -0.051450, -0.960839,
		0.817555, 0.538949, 0.202826,
		32.831337, 34.747723, 19.880848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877247, 34.048153, 19.428751>,  <32.259048, 34.370457, 19.738869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877247, 34.048153, 19.428751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044601, 34.261757, 19.722633>,  <33.145012, 34.389919, 19.898962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044601, 34.261757, 19.722633>,  <32.877247, 34.048153, 19.428751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044601, 34.261757, 19.722633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537559, -0.797603, 0.273607,
		0.732111, 0.280475, -0.620764,
		0.418383, 0.534007, 0.734705,
		33.170116, 34.421959, 19.943045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.286663, 40.510117, 20.926861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.684891, 40.520744, 20.962957>,  <32.923828, 40.527122, 20.984615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.684891, 40.520744, 20.962957>,  <32.286663, 40.510117, 20.926861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684891, 40.520744, 20.962957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044015, -0.716216, 0.696489,
		0.083140, -0.697372, -0.711871,
		0.995565, 0.026573, 0.090241,
		32.983559, 40.528717, 20.990030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464520, 39.794476, 20.906048>,  <32.286663, 40.510117, 20.926861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464520, 39.794476, 20.906048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.792240, 39.961521, 21.063194>,  <32.988873, 40.061749, 21.157482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.792240, 39.961521, 21.063194>,  <32.464520, 39.794476, 20.906048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792240, 39.961521, 21.063194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031933, -0.650900, 0.758491,
		0.572472, -0.633979, -0.519948,
		0.819302, 0.417612, 0.392867,
		33.038033, 40.086803, 21.181055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897461, 39.171715, 21.199890>,  <32.464520, 39.794476, 20.906048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897461, 39.171715, 21.199890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033916, 39.507751, 21.368587>,  <33.115791, 39.709373, 21.469807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033916, 39.507751, 21.368587>,  <32.897461, 39.171715, 21.199890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033916, 39.507751, 21.368587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069205, -0.469887, 0.880010,
		0.937461, -0.271022, -0.218437,
		0.341142, 0.840091, 0.421744,
		33.136261, 39.759777, 21.495111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390453, 38.900921, 21.526930>,  <32.897461, 39.171715, 21.199890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390453, 38.900921, 21.526930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.303070, 39.252857, 21.695761>,  <33.250641, 39.464020, 21.797058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.303070, 39.252857, 21.695761>,  <33.390453, 38.900921, 21.526930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303070, 39.252857, 21.695761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080677, -0.414758, 0.906348,
		0.972506, 0.232051, 0.019624,
		-0.218459, 0.879845, 0.422076,
		33.237534, 39.516811, 21.822384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860168, 38.966377, 22.067440>,  <33.390453, 38.900921, 21.526930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860168, 38.966377, 22.067440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.535267, 39.183769, 22.152172>,  <33.340324, 39.314205, 22.203011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.535267, 39.183769, 22.152172>,  <33.860168, 38.966377, 22.067440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535267, 39.183769, 22.152172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044021, -0.305007, 0.951332,
		0.581636, 0.782051, 0.223820,
		-0.812257, 0.543476, 0.211830,
		33.291588, 39.346813, 22.215721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127502, 39.278301, 22.659014>,  <33.860168, 38.966377, 22.067440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127502, 39.278301, 22.659014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.727768, 39.278061, 22.644497>,  <33.487926, 39.277916, 22.635786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.727768, 39.278061, 22.644497>,  <34.127502, 39.278301, 22.659014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727768, 39.278061, 22.644497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033249, -0.385962, 0.921915,
		-0.014565, 0.922514, 0.385688,
		-0.999341, -0.000605, -0.036294,
		33.427967, 39.277878, 22.633608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944969, 39.314922, 23.315922>,  <34.127502, 39.278301, 22.659014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944969, 39.314922, 23.315922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.587555, 39.219696, 23.163647>,  <33.373108, 39.162560, 23.072283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.587555, 39.219696, 23.163647>,  <33.944969, 39.314922, 23.315922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587555, 39.219696, 23.163647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310690, -0.284267, 0.907008,
		-0.324143, 0.928718, 0.180038,
		-0.893534, -0.238064, -0.380686,
		33.319496, 39.148277, 23.049440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286308, 39.628754, 23.649118>,  <33.944969, 39.314922, 23.315922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286308, 39.628754, 23.649118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151936, 39.297249, 23.470097>,  <33.071312, 39.098347, 23.362682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151936, 39.297249, 23.470097>,  <33.286308, 39.628754, 23.649118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151936, 39.297249, 23.470097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102272, -0.440265, 0.892024,
		-0.936318, 0.345431, 0.063139,
		-0.335930, -0.828761, -0.447557,
		33.051155, 39.048622, 23.335829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740715, 39.479965, 24.046522>,  <33.286308, 39.628754, 23.649118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740715, 39.479965, 24.046522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.815746, 39.135899, 23.856813>,  <32.860767, 38.929459, 23.742989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.815746, 39.135899, 23.856813>,  <32.740715, 39.479965, 24.046522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815746, 39.135899, 23.856813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285225, -0.509736, 0.811675,
		-0.939925, -0.016982, -0.340957,
		0.187582, -0.860163, -0.474270,
		32.872021, 38.877850, 23.714533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154934, 39.086903, 24.150249>,  <32.740715, 39.479965, 24.046522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154934, 39.086903, 24.150249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.394749, 38.791004, 24.028048>,  <32.538635, 38.613464, 23.954725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.394749, 38.791004, 24.028048>,  <32.154934, 39.086903, 24.150249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394749, 38.791004, 24.028048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231395, -0.525625, 0.818642,
		-0.766170, -0.420111, -0.486303,
		0.599533, -0.739747, -0.305506,
		32.574608, 38.569080, 23.936396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791840, 38.512589, 24.204031>,  <32.154934, 39.086903, 24.150249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791840, 38.512589, 24.204031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152214, 38.339134, 24.210636>,  <32.368439, 38.235062, 24.214600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152214, 38.339134, 24.210636>,  <31.791840, 38.512589, 24.204031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152214, 38.339134, 24.210636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253945, -0.495977, 0.830373,
		-0.351890, -0.752306, -0.556964,
		0.900936, -0.433638, 0.016515,
		32.422493, 38.209042, 24.215590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746504, 37.767696, 24.224607>,  <31.791840, 38.512589, 24.204031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746504, 37.767696, 24.224607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.120068, 37.821682, 24.357029>,  <32.344208, 37.854073, 24.436481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.120068, 37.821682, 24.357029>,  <31.746504, 37.767696, 24.224607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120068, 37.821682, 24.357029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226985, -0.491574, 0.840733,
		0.276205, -0.860314, -0.428452,
		0.933910, 0.134963, 0.331054,
		32.400242, 37.862171, 24.456345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950607, 37.408203, 23.646246>,  <31.746504, 37.767696, 24.224607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950607, 37.408203, 23.646246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.712193, 37.130474, 23.484922>,  <31.569143, 36.963837, 23.388128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.712193, 37.130474, 23.484922>,  <31.950607, 37.408203, 23.646246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712193, 37.130474, 23.484922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104603, 0.565143, -0.818335,
		0.796114, -0.445570, -0.409474,
		-0.596037, -0.694321, -0.403310,
		31.533381, 36.922176, 23.363930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223812, 37.273823, 22.996508>,  <31.950607, 37.408203, 23.646246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223812, 37.273823, 22.996508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.836155, 37.177147, 22.977146>,  <31.603559, 37.119141, 22.965528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.836155, 37.177147, 22.977146>,  <32.223812, 37.273823, 22.996508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836155, 37.177147, 22.977146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020705, 0.275505, -0.961077,
		0.245614, -0.930422, -0.272009,
		-0.969146, -0.241686, -0.048404,
		31.545412, 37.104641, 22.962624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074158, 36.914989, 22.393854>,  <32.223812, 37.273823, 22.996508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074158, 36.914989, 22.393854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.718344, 37.058495, 22.507006>,  <31.504856, 37.144596, 22.574896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.718344, 37.058495, 22.507006>,  <32.074158, 36.914989, 22.393854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718344, 37.058495, 22.507006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141310, 0.372754, -0.917107,
		-0.434466, -0.855772, -0.280881,
		-0.889534, 0.358761, 0.282878,
		31.451483, 37.166122, 22.591869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759266, 36.860123, 21.788723>,  <32.074158, 36.914989, 22.393854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759266, 36.860123, 21.788723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.539125, 37.115807, 22.003584>,  <31.407042, 37.269215, 22.132500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.539125, 37.115807, 22.003584>,  <31.759266, 36.860123, 21.788723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539125, 37.115807, 22.003584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216285, 0.512241, -0.831162,
		-0.806434, -0.573607, -0.143661,
		-0.550350, 0.639206, 0.537151,
		31.374020, 37.307568, 22.164730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203869, 36.979893, 21.398277>,  <31.759266, 36.860123, 21.788723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203869, 36.979893, 21.398277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.207769, 37.303513, 21.633343>,  <31.210110, 37.497684, 21.774382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.207769, 37.303513, 21.633343>,  <31.203869, 36.979893, 21.398277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207769, 37.303513, 21.633343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216096, 0.575511, -0.788727,
		-0.976323, -0.119301, 0.180444,
		0.009751, 0.809046, 0.587665,
		31.210695, 37.546227, 21.809643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492508, 37.328991, 21.276865>,  <31.203869, 36.979893, 21.398277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492508, 37.328991, 21.276865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.748947, 37.586876, 21.443398>,  <30.902811, 37.741608, 21.543318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.748947, 37.586876, 21.443398>,  <30.492508, 37.328991, 21.276865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748947, 37.586876, 21.443398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024205, 0.559199, -0.828680,
		-0.767077, 0.521188, 0.374107,
		0.641099, 0.644716, 0.416333,
		30.941277, 37.780293, 21.568298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096680, 37.980080, 21.144119>,  <30.492508, 37.328991, 21.276865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096680, 37.980080, 21.144119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468334, 38.097797, 21.233644>,  <30.691328, 38.168430, 21.287359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468334, 38.097797, 21.233644>,  <30.096680, 37.980080, 21.144119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468334, 38.097797, 21.233644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008871, 0.587411, -0.809240,
		-0.369627, 0.753881, 0.543175,
		0.929138, 0.294298, 0.223811,
		30.747076, 38.186089, 21.300787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041981, 38.693115, 21.186256>,  <30.096680, 37.980080, 21.144119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041981, 38.693115, 21.186256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423643, 38.594097, 21.118959>,  <30.652641, 38.534687, 21.078581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423643, 38.594097, 21.118959>,  <30.041981, 38.693115, 21.186256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423643, 38.594097, 21.118959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002029, 0.556748, -0.830679,
		0.299301, 0.792939, 0.530723,
		0.954157, -0.247546, -0.168244,
		30.709890, 38.519833, 21.068487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244556, 39.332737, 20.940523>,  <30.041981, 38.693115, 21.186256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244556, 39.332737, 20.940523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505777, 39.048397, 20.836048>,  <30.662510, 38.877792, 20.773363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505777, 39.048397, 20.836048>,  <30.244556, 39.332737, 20.940523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505777, 39.048397, 20.836048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212786, 0.503228, -0.837546,
		0.726804, 0.491385, 0.479893,
		0.653053, -0.710846, -0.261188,
		30.701693, 38.835144, 20.757692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764349, 39.793972, 20.625282>,  <30.244556, 39.332737, 20.940523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764349, 39.793972, 20.625282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837803, 39.427975, 20.481577>,  <30.881876, 39.208378, 20.395353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837803, 39.427975, 20.481577>,  <30.764349, 39.793972, 20.625282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837803, 39.427975, 20.481577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064876, 0.375965, -0.924360,
		0.980851, 0.146437, 0.128402,
		0.183635, -0.914990, -0.359265,
		30.892893, 39.153477, 20.373796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310810, 39.812172, 20.127960>,  <30.764349, 39.793972, 20.625282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310810, 39.812172, 20.127960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085115, 39.495296, 20.034946>,  <30.949699, 39.305172, 19.979137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085115, 39.495296, 20.034946>,  <31.310810, 39.812172, 20.127960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085115, 39.495296, 20.034946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118328, 0.356338, -0.926834,
		0.817090, -0.495439, -0.294797,
		-0.564237, -0.792189, -0.232536,
		30.915844, 39.257641, 19.965185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683731, 39.535019, 19.566410>,  <31.310810, 39.812172, 20.127960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683731, 39.535019, 19.566410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.316067, 39.385822, 19.515783>,  <31.095469, 39.296307, 19.485407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.316067, 39.385822, 19.515783>,  <31.683731, 39.535019, 19.566410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316067, 39.385822, 19.515783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028123, 0.258365, -0.965638,
		0.392873, -0.891138, -0.226990,
		-0.919162, -0.372989, -0.126566,
		31.040318, 39.273926, 19.477814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719639, 39.318657, 18.935808>,  <31.683731, 39.535019, 19.566410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719639, 39.318657, 18.935808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325943, 39.294117, 19.002151>,  <31.089725, 39.279392, 19.041958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325943, 39.294117, 19.002151>,  <31.719639, 39.318657, 18.935808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325943, 39.294117, 19.002151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176066, 0.252062, -0.951560,
		0.016572, -0.965764, -0.258891,
		-0.984239, -0.061351, 0.165861,
		31.030672, 39.275711, 19.051910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441645, 38.797310, 18.523342>,  <31.719639, 39.318657, 18.935808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441645, 38.797310, 18.523342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.151836, 39.062321, 18.599367>,  <30.977951, 39.221329, 18.644983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.151836, 39.062321, 18.599367>,  <31.441645, 38.797310, 18.523342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151836, 39.062321, 18.599367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161037, 0.105408, -0.981303,
		-0.670175, -0.741583, 0.030321,
		-0.724522, 0.662528, 0.190064,
		30.934479, 39.261078, 18.656385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087587, 38.811222, 17.955463>,  <31.441645, 38.797310, 18.523342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087587, 38.811222, 17.955463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.420664, 38.703487, 17.761936>,  <31.620510, 38.638847, 17.645821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.420664, 38.703487, 17.761936>,  <31.087587, 38.811222, 17.955463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420664, 38.703487, 17.761936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143102, -0.739384, 0.657900,
		-0.534926, -0.617064, -0.577137,
		0.832692, -0.269338, -0.483819,
		31.670471, 38.622684, 17.616791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005749, 38.077709, 17.631508>,  <31.087587, 38.811222, 17.955463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005749, 38.077709, 17.631508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.397919, 38.135284, 17.685251>,  <31.633221, 38.169830, 17.717497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.397919, 38.135284, 17.685251>,  <31.005749, 38.077709, 17.631508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397919, 38.135284, 17.685251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029815, -0.783028, 0.621272,
		0.194630, -0.605103, -0.771990,
		0.980423, 0.143936, 0.134360,
		31.692045, 38.178467, 17.725559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136772, 37.391277, 17.510033>,  <31.005749, 38.077709, 17.631508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136772, 37.391277, 17.510033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.451591, 37.575214, 17.674519>,  <31.640482, 37.685577, 17.773211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.451591, 37.575214, 17.674519>,  <31.136772, 37.391277, 17.510033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451591, 37.575214, 17.674519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214370, -0.828922, 0.516657,
		0.578449, -0.318480, -0.750977,
		0.787046, 0.459847, 0.411216,
		31.687706, 37.713169, 17.797884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672806, 36.970737, 17.362759>,  <31.136772, 37.391277, 17.510033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672806, 36.970737, 17.362759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.775513, 37.193615, 17.678633>,  <31.837137, 37.327343, 17.868156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.775513, 37.193615, 17.678633>,  <31.672806, 36.970737, 17.362759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775513, 37.193615, 17.678633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280442, -0.824880, 0.490841,
		0.924890, 0.095428, -0.368064,
		0.256769, 0.557195, 0.789685,
		31.852543, 37.360775, 17.915539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267784, 36.646881, 17.586681>,  <31.672806, 36.970737, 17.362759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267784, 36.646881, 17.586681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.175823, 36.906204, 17.877020>,  <32.120647, 37.061798, 18.051222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.175823, 36.906204, 17.877020>,  <32.267784, 36.646881, 17.586681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175823, 36.906204, 17.877020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379277, -0.627170, 0.680299,
		0.896268, 0.431695, -0.101702,
		-0.229898, 0.648304, 0.725844,
		32.106853, 37.100697, 18.094772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843483, 36.823524, 17.962297>,  <32.267784, 36.646881, 17.586681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843483, 36.823524, 17.962297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.544430, 36.914291, 18.211954>,  <32.364998, 36.968750, 18.361748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.544430, 36.914291, 18.211954>,  <32.843483, 36.823524, 17.962297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544430, 36.914291, 18.211954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344824, -0.670562, 0.656843,
		0.567573, 0.706298, 0.423090,
		-0.747635, 0.226914, 0.624141,
		32.320141, 36.982365, 18.399197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108189, 37.103786, 18.523687>,  <32.843483, 36.823524, 17.962297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108189, 37.103786, 18.523687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.756985, 36.951683, 18.639957>,  <32.546261, 36.860420, 18.709721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.756985, 36.951683, 18.639957>,  <33.108189, 37.103786, 18.523687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756985, 36.951683, 18.639957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476022, -0.630385, 0.613202,
		-0.049937, 0.676769, 0.734499,
		-0.878014, -0.380260, 0.290677,
		32.493580, 36.837605, 18.727161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750576, 37.504147, 18.800175>,  <33.108189, 37.103786, 18.523687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750576, 37.504147, 18.800175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.147713, 37.542961, 18.772337>,  <34.385994, 37.566250, 18.755634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.147713, 37.542961, 18.772337>,  <33.750576, 37.504147, 18.800175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147713, 37.542961, 18.772337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119287, 0.779106, -0.615438,
		-0.005499, 0.619336, 0.785107,
		0.992845, 0.097037, -0.069594,
		34.445564, 37.572071, 18.751459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821224, 38.245399, 18.882137>,  <33.750576, 37.504147, 18.800175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821224, 38.245399, 18.882137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.135426, 38.088642, 18.690554>,  <34.323948, 37.994587, 18.575603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.135426, 38.088642, 18.690554>,  <33.821224, 38.245399, 18.882137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135426, 38.088642, 18.690554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009208, 0.781258, -0.624140,
		0.618788, 0.485854, 0.617290,
		0.785504, -0.391894, -0.478960,
		34.371078, 37.971073, 18.546865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260464, 38.793514, 18.905844>,  <33.821224, 38.245399, 18.882137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260464, 38.793514, 18.905844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.377983, 38.562134, 18.601456>,  <34.448494, 38.423306, 18.418823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.377983, 38.562134, 18.601456>,  <34.260464, 38.793514, 18.905844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377983, 38.562134, 18.601456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055566, 0.805093, -0.590541,
		0.954251, 0.131215, 0.268677,
		0.293797, -0.578453, -0.760970,
		34.466122, 38.388599, 18.373165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905167, 39.008453, 18.719303>,  <34.260464, 38.793514, 18.905844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905167, 39.008453, 18.719303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.751511, 38.808159, 18.409027>,  <34.659317, 38.687981, 18.222860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.751511, 38.808159, 18.409027>,  <34.905167, 39.008453, 18.719303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751511, 38.808159, 18.409027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206515, 0.772266, -0.600797,
		0.899881, -0.390983, -0.193251,
		-0.384142, -0.500737, -0.775691,
		34.636269, 38.657936, 18.176319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382423, 39.050564, 18.161888>,  <34.905167, 39.008453, 18.719303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382423, 39.050564, 18.161888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.018997, 39.017990, 17.997993>,  <34.800941, 38.998444, 17.899656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.018997, 39.017990, 17.997993>,  <35.382423, 39.050564, 18.161888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018997, 39.017990, 17.997993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092891, 0.916875, -0.388215,
		0.407292, -0.390778, -0.825473,
		-0.908562, -0.081438, -0.409735,
		34.746429, 38.993557, 17.875072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448921, 39.495567, 17.557503>,  <35.382423, 39.050564, 18.161888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448921, 39.495567, 17.557503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.059231, 39.408844, 17.582376>,  <34.825417, 39.356808, 17.597301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.059231, 39.408844, 17.582376>,  <35.448921, 39.495567, 17.557503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059231, 39.408844, 17.582376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216681, 0.823056, -0.525003,
		0.062644, -0.524948, -0.848826,
		-0.974231, -0.216813, 0.062186,
		34.766960, 39.343800, 17.601032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097733, 39.542229, 16.880371>,  <35.448921, 39.495567, 17.557503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097733, 39.542229, 16.880371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.809711, 39.569958, 17.156549>,  <34.636898, 39.586594, 17.322256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.809711, 39.569958, 17.156549>,  <35.097733, 39.542229, 16.880371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809711, 39.569958, 17.156549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223057, 0.919067, -0.324901,
		-0.657088, -0.387955, -0.646317,
		-0.720056, 0.069323, 0.690444,
		34.593693, 39.590755, 17.363682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448479, 39.588573, 16.462332>,  <35.097733, 39.542229, 16.880371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448479, 39.588573, 16.462332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.388760, 39.737331, 16.828808>,  <34.352928, 39.826588, 17.048693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.388760, 39.737331, 16.828808>,  <34.448479, 39.588573, 16.462332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388760, 39.737331, 16.828808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439246, 0.805187, -0.398418,
		-0.885874, -0.461915, 0.043143,
		-0.149297, 0.371899, 0.916189,
		34.343971, 39.848900, 17.103664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724728, 39.908051, 16.496605>,  <34.448479, 39.588573, 16.462332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724728, 39.908051, 16.496605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.992947, 40.066929, 16.747238>,  <34.153877, 40.162254, 16.897617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.992947, 40.066929, 16.747238>,  <33.724728, 39.908051, 16.496605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992947, 40.066929, 16.747238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263226, 0.917030, -0.299612,
		-0.693600, 0.035970, 0.719462,
		0.670545, 0.397193, 0.626584,
		34.194111, 40.186085, 16.935213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.084938, 29.981716, 28.367859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.233669, 30.301432, 28.556700>,  <39.322910, 30.493261, 28.670004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.233669, 30.301432, 28.556700>,  <39.084938, 29.981716, 28.367859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233669, 30.301432, 28.556700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423960, 0.598646, -0.679618,
		-0.825833, 0.052551, 0.561462,
		0.371831, 0.799288, 0.472102,
		39.345219, 30.541218, 28.698330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552174, 30.523432, 28.512775>,  <39.084938, 29.981716, 28.367859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552174, 30.523432, 28.512775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908180, 30.704157, 28.488306>,  <39.121784, 30.812592, 28.473623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908180, 30.704157, 28.488306>,  <38.552174, 30.523432, 28.512775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908180, 30.704157, 28.488306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389040, 0.682600, -0.618631,
		-0.237746, 0.574390, 0.783296,
		0.890014, 0.451810, -0.061176,
		39.175186, 30.839701, 28.469954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359146, 31.167044, 28.513763>,  <38.552174, 30.523432, 28.512775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359146, 31.167044, 28.513763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.724873, 31.144724, 28.353310>,  <38.944309, 31.131332, 28.257038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.724873, 31.144724, 28.353310>,  <38.359146, 31.167044, 28.513763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724873, 31.144724, 28.353310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291365, 0.597314, -0.747210,
		0.281298, 0.800064, 0.529876,
		0.914319, -0.055801, -0.401133,
		38.999168, 31.127983, 28.232969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538261, 31.892216, 28.354620>,  <38.359146, 31.167044, 28.513763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538261, 31.892216, 28.354620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.749428, 31.641205, 28.125708>,  <38.876129, 31.490597, 27.988359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.749428, 31.641205, 28.125708>,  <38.538261, 31.892216, 28.354620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749428, 31.641205, 28.125708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164515, 0.585510, -0.793796,
		0.833208, 0.513210, 0.205864,
		0.527920, -0.627530, -0.572282,
		38.907803, 31.452946, 27.954023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766682, 32.356880, 27.847754>,  <38.538261, 31.892216, 28.354620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766682, 32.356880, 27.847754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.836666, 31.999760, 27.681717>,  <38.878658, 31.785488, 27.582094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.836666, 31.999760, 27.681717>,  <38.766682, 32.356880, 27.847754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836666, 31.999760, 27.681717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059585, 0.411222, -0.909586,
		0.982771, 0.183875, 0.018751,
		0.174961, -0.892797, -0.415093,
		38.889153, 31.731920, 27.557188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143776, 32.475159, 27.208172>,  <38.766682, 32.356880, 27.847754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143776, 32.475159, 27.208172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995880, 32.112450, 27.127121>,  <38.907143, 31.894825, 27.078491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995880, 32.112450, 27.127121>,  <39.143776, 32.475159, 27.208172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995880, 32.112450, 27.127121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174175, 0.281856, -0.943515,
		0.912663, -0.313564, -0.262150,
		-0.369741, -0.906771, -0.202625,
		38.884956, 31.840418, 27.066334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473248, 32.113171, 26.545881>,  <39.143776, 32.475159, 27.208172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473248, 32.113171, 26.545881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.137039, 31.901079, 26.590385>,  <38.935314, 31.773825, 26.617088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.137039, 31.901079, 26.590385>,  <39.473248, 32.113171, 26.545881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137039, 31.901079, 26.590385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274985, 0.240586, -0.930861,
		0.466800, -0.813005, -0.348023,
		-0.840524, -0.530227, 0.111258,
		38.884880, 31.742012, 26.623762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435249, 31.670193, 25.985226>,  <39.473248, 32.113171, 26.545881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435249, 31.670193, 25.985226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056557, 31.694199, 26.111784>,  <38.829342, 31.708603, 26.187719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056557, 31.694199, 26.111784>,  <39.435249, 31.670193, 25.985226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056557, 31.694199, 26.111784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281423, 0.323431, -0.903435,
		-0.156553, -0.944347, -0.289310,
		-0.946727, 0.060017, 0.316395,
		38.772537, 31.712204, 26.206703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039261, 31.280804, 25.579695>,  <39.435249, 31.670193, 25.985226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039261, 31.280804, 25.579695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791225, 31.558493, 25.725868>,  <38.642403, 31.725105, 25.813572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791225, 31.558493, 25.725868>,  <39.039261, 31.280804, 25.579695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791225, 31.558493, 25.725868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380641, 0.141073, -0.913899,
		-0.686002, -0.705799, 0.176772,
		-0.620091, 0.694223, 0.365432,
		38.605198, 31.766760, 25.835497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439400, 31.260603, 25.155115>,  <39.039261, 31.280804, 25.579695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439400, 31.260603, 25.155115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278801, 31.575930, 25.341602>,  <38.182442, 31.765125, 25.453495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278801, 31.575930, 25.341602>,  <38.439400, 31.260603, 25.155115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278801, 31.575930, 25.341602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331567, 0.349410, -0.876342,
		-0.853736, -0.506431, 0.121093,
		-0.401496, 0.788315, 0.466220,
		38.158352, 31.812424, 25.481468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807617, 31.363894, 24.920439>,  <38.439400, 31.260603, 25.155115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807617, 31.363894, 24.920439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914482, 31.724195, 25.057417>,  <37.978600, 31.940376, 25.139603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914482, 31.724195, 25.057417>,  <37.807617, 31.363894, 24.920439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914482, 31.724195, 25.057417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265192, 0.410361, -0.872512,
		-0.926444, 0.142286, 0.348505,
		0.267159, 0.900754, 0.342444,
		37.994629, 31.994421, 25.160151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290176, 31.702610, 24.763407>,  <37.807617, 31.363894, 24.920439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290176, 31.702610, 24.763407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534496, 32.016022, 24.809015>,  <37.681087, 32.204067, 24.836380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534496, 32.016022, 24.809015>,  <37.290176, 31.702610, 24.763407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534496, 32.016022, 24.809015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382706, 0.418220, -0.823789,
		-0.693150, 0.459534, 0.555312,
		0.610802, 0.783531, 0.114023,
		37.717735, 32.251080, 24.843222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583580, 31.727215, 24.819267>,  <37.290176, 31.702610, 24.763407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583580, 31.727215, 24.819267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309189, 31.530613, 24.604658>,  <36.144554, 31.412651, 24.475893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309189, 31.530613, 24.604658>,  <36.583580, 31.727215, 24.819267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309189, 31.530613, 24.604658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081139, -0.681092, 0.727688,
		-0.723082, 0.542713, 0.427336,
		-0.685980, -0.491504, -0.536521,
		36.103394, 31.383162, 24.443703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108330, 31.637430, 25.279520>,  <36.583580, 31.727215, 24.819267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108330, 31.637430, 25.279520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005268, 31.358288, 25.012205>,  <35.943432, 31.190802, 24.851816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005268, 31.358288, 25.012205>,  <36.108330, 31.637430, 25.279520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005268, 31.358288, 25.012205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046088, -0.681976, 0.729921,
		-0.965137, 0.218867, 0.143551,
		-0.257653, -0.697858, -0.668288,
		35.927971, 31.148930, 24.811718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506779, 31.338657, 25.514278>,  <36.108330, 31.637430, 25.279520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506779, 31.338657, 25.514278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658398, 31.071737, 25.257830>,  <35.749367, 30.911585, 25.103960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658398, 31.071737, 25.257830>,  <35.506779, 31.338657, 25.514278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658398, 31.071737, 25.257830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082346, -0.714395, 0.694881,
		-0.921708, -0.210596, -0.325736,
		0.379043, -0.667300, -0.641122,
		35.772110, 30.871548, 25.065493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999081, 30.784212, 25.623707>,  <35.506779, 31.338657, 25.514278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999081, 30.784212, 25.623707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349758, 30.662689, 25.474522>,  <35.560165, 30.589775, 25.385010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349758, 30.662689, 25.474522>,  <34.999081, 30.784212, 25.623707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349758, 30.662689, 25.474522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003184, -0.771642, 0.636049,
		-0.481032, -0.558810, -0.675529,
		0.876697, -0.303809, -0.372964,
		35.612766, 30.571547, 25.362633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886703, 30.116121, 25.418991>,  <34.999081, 30.784212, 25.623707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886703, 30.116121, 25.418991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279140, 30.153469, 25.486809>,  <35.514603, 30.175879, 25.527500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279140, 30.153469, 25.486809>,  <34.886703, 30.116121, 25.418991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279140, 30.153469, 25.486809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015170, -0.836168, 0.548264,
		0.192960, -0.540468, -0.818939,
		0.981089, 0.093370, 0.169546,
		35.573467, 30.181480, 25.537672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045872, 29.460524, 25.448404>,  <34.886703, 30.116121, 25.418991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045872, 29.460524, 25.448404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364353, 29.639864, 25.610909>,  <35.555443, 29.747469, 25.708410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364353, 29.639864, 25.610909>,  <35.045872, 29.460524, 25.448404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364353, 29.639864, 25.610909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008507, -0.663104, 0.748479,
		0.604974, -0.599395, -0.524149,
		0.796200, 0.448352, 0.406260,
		35.603214, 29.774370, 25.732786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472645, 28.895031, 25.629349>,  <35.045872, 29.460524, 25.448404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472645, 28.895031, 25.629349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585384, 29.215225, 25.840929>,  <35.653027, 29.407341, 25.967876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585384, 29.215225, 25.840929>,  <35.472645, 28.895031, 25.629349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585384, 29.215225, 25.840929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070146, -0.567014, 0.820716,
		0.956892, -0.194212, -0.215961,
		0.281846, 0.800485, 0.528948,
		35.669937, 29.455370, 25.999613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007324, 28.593914, 25.950893>,  <35.472645, 28.895031, 25.629349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007324, 28.593914, 25.950893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889603, 28.906645, 26.170759>,  <35.818970, 29.094284, 26.302679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889603, 28.906645, 26.170759>,  <36.007324, 28.593914, 25.950893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889603, 28.906645, 26.170759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274488, -0.481757, 0.832206,
		0.915447, 0.395796, -0.072821,
		-0.294302, 0.781829, 0.549664,
		35.801311, 29.141193, 26.335659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496445, 28.604733, 26.467522>,  <36.007324, 28.593914, 25.950893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496445, 28.604733, 26.467522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208336, 28.845453, 26.605536>,  <36.035473, 28.989885, 26.688345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208336, 28.845453, 26.605536>,  <36.496445, 28.604733, 26.467522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208336, 28.845453, 26.605536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174957, -0.323715, 0.929838,
		0.671270, 0.730099, 0.127873,
		-0.720268, 0.601800, 0.345036,
		35.992256, 29.025993, 26.709047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728916, 28.965742, 27.034822>,  <36.496445, 28.604733, 26.467522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728916, 28.965742, 27.034822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.331963, 28.967863, 27.084053>,  <36.093792, 28.969135, 27.113590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.331963, 28.967863, 27.084053>,  <36.728916, 28.965742, 27.034822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331963, 28.967863, 27.084053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115532, -0.306684, 0.944774,
		0.042753, 0.951796, 0.303736,
		-0.992383, 0.005301, 0.123075,
		36.034248, 28.969454, 27.120975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708511, 29.209000, 27.689640>,  <36.728916, 28.965742, 27.034822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708511, 29.209000, 27.689640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348476, 29.049223, 27.620024>,  <36.132454, 28.953358, 27.578255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348476, 29.049223, 27.620024>,  <36.708511, 29.209000, 27.689640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348476, 29.049223, 27.620024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040556, -0.320900, 0.946244,
		-0.433818, 0.858761, 0.272638,
		-0.900087, -0.399440, -0.174040,
		36.078449, 28.929390, 27.567812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337952, 29.475338, 28.192749>,  <36.708511, 29.209000, 27.689640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337952, 29.475338, 28.192749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128998, 29.160679, 28.061113>,  <36.003628, 28.971884, 27.982132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128998, 29.160679, 28.061113>,  <36.337952, 29.475338, 28.192749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128998, 29.160679, 28.061113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285105, -0.202597, 0.936840,
		-0.803637, 0.583214, -0.118445,
		-0.522382, -0.786649, -0.329091,
		35.972282, 28.924685, 27.962385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747559, 29.618671, 28.513334>,  <36.337952, 29.475338, 28.192749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747559, 29.618671, 28.513334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798454, 29.227943, 28.444471>,  <35.828991, 28.993507, 28.403154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798454, 29.227943, 28.444471>,  <35.747559, 29.618671, 28.513334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798454, 29.227943, 28.444471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312972, -0.204237, 0.927543,
		-0.941201, -0.064136, -0.331702,
		0.127235, -0.976818, -0.172155,
		35.836624, 28.934898, 28.392824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341156, 29.330990, 28.952169>,  <35.747559, 29.618671, 28.513334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341156, 29.330990, 28.952169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541332, 29.001774, 28.844717>,  <35.661438, 28.804243, 28.780245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541332, 29.001774, 28.844717>,  <35.341156, 29.330990, 28.952169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541332, 29.001774, 28.844717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236201, -0.428303, 0.872219,
		-0.832928, -0.373041, -0.408743,
		0.500439, -0.823041, -0.268634,
		35.691463, 28.754862, 28.764128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998909, 28.715916, 29.223574>,  <35.341156, 29.330990, 28.952169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998909, 28.715916, 29.223574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378460, 28.617840, 29.144068>,  <35.606190, 28.558994, 29.096363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378460, 28.617840, 29.144068>,  <34.998909, 28.715916, 29.223574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378460, 28.617840, 29.144068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063126, -0.469595, 0.880622,
		-0.309256, -0.848153, -0.430112,
		0.948881, -0.245187, -0.198766,
		35.663124, 28.544283, 29.084438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314758, 28.628345, 28.708250>,  <34.998909, 28.715916, 29.223574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314758, 28.628345, 28.708250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201168, 28.650064, 29.091167>,  <34.133015, 28.663095, 29.320919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201168, 28.650064, 29.091167>,  <34.314758, 28.628345, 28.708250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201168, 28.650064, 29.091167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584634, 0.781529, -0.217752,
		-0.759976, -0.621502, -0.190189,
		-0.283971, 0.054295, 0.957294,
		34.115978, 28.666353, 29.378355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643864, 28.568533, 28.834988>,  <34.314758, 28.628345, 28.708250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643864, 28.568533, 28.834988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776455, 28.810759, 29.124378>,  <33.856010, 28.956093, 29.298012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776455, 28.810759, 29.124378>,  <33.643864, 28.568533, 28.834988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776455, 28.810759, 29.124378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655907, 0.699114, -0.284652,
		-0.678166, -0.380176, 0.628934,
		0.331478, 0.605563, 0.723475,
		33.875900, 28.992428, 29.341421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093372, 28.849628, 29.163891>,  <33.643864, 28.568533, 28.834988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093372, 28.849628, 29.163891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390118, 29.088934, 29.285028>,  <33.568165, 29.232517, 29.357712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390118, 29.088934, 29.285028>,  <33.093372, 28.849628, 29.163891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390118, 29.088934, 29.285028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617254, 0.785739, -0.040151,
		-0.261979, -0.157146, 0.952193,
		0.741865, 0.598264, 0.302846,
		33.612679, 29.268414, 29.375883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965977, 29.258820, 29.809883>,  <33.093372, 28.849628, 29.163891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965977, 29.258820, 29.809883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211304, 29.469898, 29.574808>,  <33.358501, 29.596544, 29.433764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211304, 29.469898, 29.574808>,  <32.965977, 29.258820, 29.809883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211304, 29.469898, 29.574808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579122, 0.806404, 0.119705,
		0.537081, 0.266926, 0.800184,
		0.613319, 0.527696, -0.587688,
		33.395298, 29.628206, 29.398502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968891, 30.015894, 30.063845>,  <32.965977, 29.258820, 29.809883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968891, 30.015894, 30.063845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110569, 30.023649, 29.689857>,  <33.195576, 30.028303, 29.465466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110569, 30.023649, 29.689857>,  <32.968891, 30.015894, 30.063845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110569, 30.023649, 29.689857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534973, 0.824236, -0.185575,
		0.767037, 0.565914, 0.302316,
		0.354199, 0.019388, -0.934969,
		33.216827, 30.029465, 29.409367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117905, 30.774214, 29.944984>,  <32.968891, 30.015894, 30.063845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117905, 30.774214, 29.944984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096947, 30.612276, 29.579832>,  <33.084373, 30.515114, 29.360741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096947, 30.612276, 29.579832>,  <33.117905, 30.774214, 29.944984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096947, 30.612276, 29.579832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397657, 0.846994, -0.352803,
		0.916037, 0.344531, -0.205364,
		-0.052391, -0.404845, -0.912883,
		33.081230, 30.490822, 29.305967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349987, 31.311499, 29.515265>,  <33.117905, 30.774214, 29.944984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349987, 31.311499, 29.515265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184231, 31.044193, 29.268135>,  <33.084778, 30.883810, 29.119858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184231, 31.044193, 29.268135>,  <33.349987, 31.311499, 29.515265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184231, 31.044193, 29.268135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397978, 0.743562, -0.537335,
		0.818472, 0.023215, -0.574078,
		-0.414388, -0.668264, -0.617823,
		33.059914, 30.843714, 29.082788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508686, 31.597269, 28.849092>,  <33.349987, 31.311499, 29.515265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508686, 31.597269, 28.849092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219543, 31.344494, 28.737284>,  <33.046059, 31.192829, 28.670198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219543, 31.344494, 28.737284>,  <33.508686, 31.597269, 28.849092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219543, 31.344494, 28.737284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402342, 0.713794, -0.573253,
		0.561780, -0.301918, -0.770227,
		-0.722858, -0.631937, -0.279521,
		33.002686, 31.154913, 28.653427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445892, 31.728031, 28.157019>,  <33.508686, 31.597269, 28.849092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445892, 31.728031, 28.157019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089470, 31.567890, 28.242558>,  <32.875614, 31.471806, 28.293880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089470, 31.567890, 28.242558>,  <33.445892, 31.728031, 28.157019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089470, 31.567890, 28.242558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436461, 0.626498, -0.645757,
		0.124554, -0.668745, -0.732985,
		-0.891060, -0.400351, 0.213848,
		32.822151, 31.447784, 28.306711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204384, 31.584791, 27.468910>,  <33.445892, 31.728031, 28.157019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204384, 31.584791, 27.468910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894535, 31.597736, 27.721550>,  <32.708626, 31.605503, 27.873133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894535, 31.597736, 27.721550>,  <33.204384, 31.584791, 27.468910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894535, 31.597736, 27.721550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542479, 0.479356, -0.689880,
		-0.325086, -0.877024, -0.353764,
		-0.774620, 0.032361, 0.631598,
		32.662148, 31.607445, 27.911030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560978, 31.280203, 27.165567>,  <33.204384, 31.584791, 27.468910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560978, 31.280203, 27.165567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454475, 31.533510, 27.456242>,  <32.390572, 31.685495, 27.630646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454475, 31.533510, 27.456242>,  <32.560978, 31.280203, 27.165567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454475, 31.533510, 27.456242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556789, 0.514357, -0.652244,
		-0.786824, -0.578279, 0.215644,
		-0.266261, 0.633269, 0.726687,
		32.374596, 31.723492, 27.674248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924706, 31.465488, 26.936886>,  <32.560978, 31.280203, 27.165567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924706, 31.465488, 26.936886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033554, 31.734751, 27.211931>,  <32.098862, 31.896309, 27.376959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033554, 31.734751, 27.211931>,  <31.924706, 31.465488, 26.936886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033554, 31.734751, 27.211931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454693, 0.719723, -0.524646,
		-0.848059, -0.169885, 0.501932,
		0.272122, 0.673156, 0.687612,
		32.115192, 31.936697, 27.418215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318050, 31.811102, 27.161755>,  <31.924706, 31.465488, 26.936886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318050, 31.811102, 27.161755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.609661, 32.077824, 27.223587>,  <31.784628, 32.237858, 27.260687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.609661, 32.077824, 27.223587>,  <31.318050, 31.811102, 27.161755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609661, 32.077824, 27.223587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498488, 0.671972, -0.547690,
		-0.469075, 0.322223, 0.822278,
		0.729026, 0.666803, 0.154581,
		31.828369, 32.277863, 27.269960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008398, 32.540287, 27.441742>,  <31.318050, 31.811102, 27.161755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008398, 32.540287, 27.441742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370943, 32.622425, 27.294044>,  <31.588470, 32.671707, 27.205425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370943, 32.622425, 27.294044>,  <31.008398, 32.540287, 27.441742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370943, 32.622425, 27.294044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382890, 0.768680, -0.512373,
		0.178616, 0.605775, 0.775327,
		0.906361, 0.205347, -0.369244,
		31.642851, 32.684029, 27.183271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085571, 33.300220, 27.313435>,  <31.008398, 32.540287, 27.441742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085571, 33.300220, 27.313435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389128, 33.150127, 27.100536>,  <31.571260, 33.060070, 26.972797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389128, 33.150127, 27.100536>,  <31.085571, 33.300220, 27.313435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389128, 33.150127, 27.100536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043716, 0.786112, -0.616536,
		0.649751, 0.491150, 0.580168,
		0.758889, -0.375233, -0.532248,
		31.616795, 33.037560, 26.940863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430298, 33.945774, 27.083580>,  <31.085571, 33.300220, 27.313435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430298, 33.945774, 27.083580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.563824, 33.644913, 26.856306>,  <31.643938, 33.464397, 26.719942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.563824, 33.644913, 26.856306>,  <31.430298, 33.945774, 27.083580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563824, 33.644913, 26.856306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205474, 0.646326, -0.734876,
		0.919973, 0.128563, 0.370300,
		0.333812, -0.752153, -0.568186,
		31.663967, 33.419266, 26.685850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138615, 34.154606, 26.800476>,  <31.430298, 33.945774, 27.083580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138615, 34.154606, 26.800476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989553, 33.873741, 26.557791>,  <31.900118, 33.705223, 26.412180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989553, 33.873741, 26.557791>,  <32.138615, 34.154606, 26.800476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989553, 33.873741, 26.557791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010075, 0.656829, -0.753973,
		0.927918, -0.274854, -0.251841,
		-0.372649, -0.702162, -0.606714,
		31.877758, 33.663094, 26.375776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542645, 34.184700, 26.189764>,  <32.138615, 34.154606, 26.800476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542645, 34.184700, 26.189764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208839, 33.995029, 26.077518>,  <32.008556, 33.881226, 26.010170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208839, 33.995029, 26.077518>,  <32.542645, 34.184700, 26.189764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208839, 33.995029, 26.077518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053579, 0.576714, -0.815187,
		0.548379, -0.665248, -0.506681,
		-0.834512, -0.474179, -0.280614,
		31.958487, 33.852776, 25.993334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647457, 33.953320, 25.586588>,  <32.542645, 34.184700, 26.189764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647457, 33.953320, 25.586588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248463, 33.966873, 25.611485>,  <32.009068, 33.975006, 25.626423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248463, 33.966873, 25.611485>,  <32.647457, 33.953320, 25.586588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248463, 33.966873, 25.611485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040070, 0.454720, -0.889733,
		-0.058453, -0.889990, -0.452219,
		-0.997486, 0.033888, 0.062242,
		31.949217, 33.977039, 25.630157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519531, 33.925495, 24.948069>,  <32.647457, 33.953320, 25.586588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519531, 33.925495, 24.948069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181698, 34.062244, 25.112896>,  <31.978998, 34.144295, 25.211792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181698, 34.062244, 25.112896>,  <32.519531, 33.925495, 24.948069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181698, 34.062244, 25.112896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200676, 0.511390, -0.835589,
		-0.496397, -0.788416, -0.363304,
		-0.844582, 0.341878, 0.412069,
		31.928324, 34.164806, 25.236517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932575, 33.889084, 24.358011>,  <32.519531, 33.925495, 24.948069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932575, 33.889084, 24.358011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793594, 34.139332, 24.637403>,  <31.710205, 34.289482, 24.805038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793594, 34.139332, 24.637403>,  <31.932575, 33.889084, 24.358011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793594, 34.139332, 24.637403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223763, 0.668049, -0.709676,
		-0.910607, -0.402874, -0.092125,
		-0.347454, 0.625622, 0.698479,
		31.689358, 34.327019, 24.846947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450684, 34.276413, 24.019810>,  <31.932575, 33.889084, 24.358011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450684, 34.276413, 24.019810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448833, 34.499382, 24.351896>,  <31.447723, 34.633163, 24.551147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448833, 34.499382, 24.351896>,  <31.450684, 34.276413, 24.019810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448833, 34.499382, 24.351896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253128, 0.802533, -0.540248,
		-0.967422, -0.212649, 0.137388,
		-0.004625, 0.557424, 0.830215,
		31.447447, 34.666611, 24.600962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772852, 34.592094, 24.063707>,  <31.450684, 34.276413, 24.019810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772852, 34.592094, 24.063707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.051149, 34.809750, 24.251259>,  <31.218128, 34.940342, 24.363791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.051149, 34.809750, 24.251259>,  <30.772852, 34.592094, 24.063707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051149, 34.809750, 24.251259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238976, 0.790941, -0.563296,
		-0.677370, 0.279859, 0.680330,
		0.695744, 0.544143, 0.468880,
		31.259872, 34.972992, 24.391922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485142, 35.212753, 24.057636>,  <30.772852, 34.592094, 24.063707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485142, 35.212753, 24.057636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.860441, 35.303745, 24.161901>,  <31.085621, 35.358341, 24.224461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.860441, 35.303745, 24.161901>,  <30.485142, 35.212753, 24.057636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860441, 35.303745, 24.161901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100658, 0.900328, -0.423412,
		-0.331000, 0.371027, 0.867628,
		0.938247, 0.227483, 0.260662,
		31.141914, 35.371990, 24.240101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689693, 35.826283, 24.630341>,  <30.485142, 35.212753, 24.057636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689693, 35.826283, 24.630341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.974735, 35.774246, 24.354580>,  <31.145760, 35.743023, 24.189123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.974735, 35.774246, 24.354580>,  <30.689693, 35.826283, 24.630341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974735, 35.774246, 24.354580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135401, 0.938679, -0.317093,
		0.688378, 0.319307, 0.651290,
		0.712603, -0.130094, -0.689400,
		31.188517, 35.735218, 24.147760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909857, 36.530094, 24.605915>,  <30.689693, 35.826283, 24.630341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909857, 36.530094, 24.605915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.106874, 36.346840, 24.309938>,  <31.225084, 36.236889, 24.132353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.106874, 36.346840, 24.309938>,  <30.909857, 36.530094, 24.605915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106874, 36.346840, 24.309938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102889, 0.813611, -0.572233,
		0.864184, 0.357982, 0.353603,
		0.492545, -0.458132, -0.739942,
		31.254639, 36.209400, 24.087955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369459, 37.090359, 24.240082>,  <30.909857, 36.530094, 24.605915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369459, 37.090359, 24.240082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.367682, 36.819984, 23.945301>,  <31.366615, 36.657761, 23.768433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.367682, 36.819984, 23.945301>,  <31.369459, 37.090359, 24.240082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367682, 36.819984, 23.945301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004313, 0.736938, -0.675947,
		0.999981, -0.006182, -0.000359,
		-0.004443, -0.675932, -0.736951,
		31.366348, 36.617207, 23.724216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868267, 37.043804, 24.832451>,  <31.369459, 37.090359, 24.240082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868267, 37.043804, 24.832451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144932, 37.330681, 24.866503>,  <32.310932, 37.502808, 24.886934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144932, 37.330681, 24.866503>,  <31.868267, 37.043804, 24.832451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144932, 37.330681, 24.866503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163351, -0.270163, 0.948856,
		0.703507, -0.642381, -0.304014,
		0.691661, 0.717188, 0.085128,
		32.352428, 37.545837, 24.892042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467979, 36.648651, 24.896807>,  <31.868267, 37.043804, 24.832451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467979, 36.648651, 24.896807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503361, 37.010540, 25.063496>,  <32.524590, 37.227673, 25.163509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503361, 37.010540, 25.063496>,  <32.467979, 36.648651, 24.896807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503361, 37.010540, 25.063496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251346, -0.425097, 0.869551,
		0.963847, 0.027823, -0.265001,
		0.088457, 0.904720, 0.416721,
		32.529900, 37.281956, 25.188513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117184, 36.772434, 25.107489>,  <32.467979, 36.648651, 24.896807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117184, 36.772434, 25.107489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891949, 37.012810, 25.334398>,  <32.756809, 37.157036, 25.470545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891949, 37.012810, 25.334398>,  <33.117184, 36.772434, 25.107489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891949, 37.012810, 25.334398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474656, -0.326736, 0.817279,
		0.676488, 0.729459, -0.101261,
		-0.563086, 0.600943, 0.567275,
		32.723022, 37.193092, 25.504581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594009, 37.038506, 25.572851>,  <33.117184, 36.772434, 25.107489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594009, 37.038506, 25.572851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232784, 37.096260, 25.734655>,  <33.016048, 37.130913, 25.831738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232784, 37.096260, 25.734655>,  <33.594009, 37.038506, 25.572851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232784, 37.096260, 25.734655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342840, -0.324996, 0.881384,
		0.258725, 0.934628, 0.243991,
		-0.903063, 0.144387, 0.404512,
		32.961864, 37.139576, 25.856009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802650, 37.431740, 26.172270>,  <33.594009, 37.038506, 25.572851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802650, 37.431740, 26.172270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439896, 37.282551, 26.250702>,  <33.222244, 37.193039, 26.297762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439896, 37.282551, 26.250702>,  <33.802650, 37.431740, 26.172270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439896, 37.282551, 26.250702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318734, -0.302822, 0.898169,
		-0.275612, 0.877037, 0.393504,
		-0.906888, -0.372969, 0.196080,
		33.167828, 37.170662, 26.309526>
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
