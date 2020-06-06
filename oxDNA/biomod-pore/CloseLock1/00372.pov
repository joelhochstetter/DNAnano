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
	<24.462097, 34.655323, 34.939091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378073, 35.000664, 35.122612>,  <24.327658, 35.207867, 35.232723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378073, 35.000664, 35.122612>,  <24.462097, 34.655323, 34.939091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378073, 35.000664, 35.122612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501567, 0.497976, -0.707425,
		-0.839229, 0.081519, -0.537633,
		-0.210060, 0.863351, 0.458803,
		24.315054, 35.259670, 35.260254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.959970, 35.176445, 34.594036>,  <24.462097, 34.655323, 34.939091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.959970, 35.176445, 34.594036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260754, 35.310699, 34.820984>,  <24.441223, 35.391254, 34.957153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260754, 35.310699, 34.820984>,  <23.959970, 35.176445, 34.594036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.260754, 35.310699, 34.820984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527206, 0.210488, -0.823255,
		-0.395741, 0.918172, -0.018673,
		0.751959, 0.335641, 0.567365,
		24.486341, 35.411392, 34.991192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.143019, 35.779034, 34.316467>,  <23.959970, 35.176445, 34.594036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.143019, 35.779034, 34.316467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459463, 35.641678, 34.518944>,  <24.649330, 35.559265, 34.640430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459463, 35.641678, 34.518944>,  <24.143019, 35.779034, 34.316467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459463, 35.641678, 34.518944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541156, 0.007170, -0.840892,
		0.285125, 0.939166, 0.191500,
		0.791110, -0.343390, 0.506190,
		24.696796, 35.538662, 34.670799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692102, 35.972916, 34.001678>,  <24.143019, 35.779034, 34.316467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692102, 35.972916, 34.001678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889242, 35.730530, 34.251450>,  <25.007526, 35.585098, 34.401314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889242, 35.730530, 34.251450>,  <24.692102, 35.972916, 34.001678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889242, 35.730530, 34.251450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747116, -0.073136, -0.660658,
		0.446002, 0.792124, 0.416679,
		0.492848, -0.605962, 0.624428,
		25.037096, 35.548740, 34.438778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367113, 36.208332, 33.863625>,  <24.692102, 35.972916, 34.001678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367113, 36.208332, 33.863625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368635, 35.823025, 33.971031>,  <25.369549, 35.591839, 34.035477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368635, 35.823025, 33.971031>,  <25.367113, 36.208332, 33.863625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368635, 35.823025, 33.971031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698628, -0.189561, -0.689917,
		0.715474, 0.190217, 0.672245,
		0.003803, -0.963267, 0.268517,
		25.369776, 35.534046, 34.051586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079638, 36.078594, 33.907047>,  <25.367113, 36.208332, 33.863625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079638, 36.078594, 33.907047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909357, 35.719414, 33.862400>,  <25.807188, 35.503906, 33.835609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909357, 35.719414, 33.862400>,  <26.079638, 36.078594, 33.907047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909357, 35.719414, 33.862400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718119, -0.260216, -0.645440,
		0.550529, -0.354922, 0.755611,
		-0.425703, -0.897952, -0.111620,
		25.781647, 35.450027, 33.828915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607689, 35.583683, 34.037979>,  <26.079638, 36.078594, 33.907047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607689, 35.583683, 34.037979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326462, 35.406208, 33.815685>,  <26.157724, 35.299725, 33.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326462, 35.406208, 33.815685>,  <26.607689, 35.583683, 34.037979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326462, 35.406208, 33.815685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711047, -0.449942, -0.540337,
		-0.010306, -0.775044, 0.631823,
		-0.703069, -0.443687, -0.555730,
		26.115541, 35.273102, 33.648968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855541, 34.930027, 33.992455>,  <26.607689, 35.583683, 34.037979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855541, 34.930027, 33.992455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626461, 34.983440, 33.668926>,  <26.489014, 35.015488, 33.474812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626461, 34.983440, 33.668926>,  <26.855541, 34.930027, 33.992455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626461, 34.983440, 33.668926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686970, -0.460193, -0.562400,
		-0.447310, -0.877719, 0.171820,
		-0.572701, 0.133532, -0.808817,
		26.454651, 35.023502, 33.426281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951498, 34.355507, 33.578339>,  <26.855541, 34.930027, 33.992455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951498, 34.355507, 33.578339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757023, 34.561745, 33.296124>,  <26.640337, 34.685486, 33.126793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757023, 34.561745, 33.296124>,  <26.951498, 34.355507, 33.578339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757023, 34.561745, 33.296124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552784, -0.443851, -0.705285,
		-0.676795, -0.732910, -0.069218,
		-0.486188, 0.515596, -0.705537,
		26.611166, 34.716423, 33.084461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820414, 33.861286, 33.126392>,  <26.951498, 34.355507, 33.578339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820414, 33.861286, 33.126392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796072, 34.210548, 32.932941>,  <26.781467, 34.420105, 32.816872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796072, 34.210548, 32.932941>,  <26.820414, 33.861286, 33.126392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796072, 34.210548, 32.932941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455383, -0.406871, -0.791885,
		-0.888214, -0.268424, -0.372861,
		-0.060855, 0.873158, -0.483624,
		26.777815, 34.472496, 32.787853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394855, 33.724411, 32.649315>,  <26.820414, 33.861286, 33.126392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394855, 33.724411, 32.649315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654078, 34.014595, 32.556591>,  <26.809610, 34.188705, 32.500957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654078, 34.014595, 32.556591>,  <26.394855, 33.724411, 32.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654078, 34.014595, 32.556591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341666, -0.548964, -0.762826,
		-0.680654, 0.415151, -0.603623,
		0.648055, 0.725458, -0.231811,
		26.848494, 34.232231, 32.487049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437876, 33.695522, 31.927647>,  <26.394855, 33.724411, 32.649315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437876, 33.695522, 31.927647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745995, 33.940998, 31.996960>,  <26.930866, 34.088284, 32.038548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745995, 33.940998, 31.996960>,  <26.437876, 33.695522, 31.927647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745995, 33.940998, 31.996960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470493, -0.363531, -0.804041,
		-0.430439, 0.700879, -0.568763,
		0.770298, 0.613689, 0.173281,
		26.977083, 34.125107, 32.048943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647633, 33.872845, 31.293579>,  <26.437876, 33.695522, 31.927647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647633, 33.872845, 31.293579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973904, 33.960403, 31.507778>,  <27.169666, 34.012939, 31.636297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973904, 33.960403, 31.507778>,  <26.647633, 33.872845, 31.293579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973904, 33.960403, 31.507778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570363, -0.459082, -0.681124,
		0.096739, 0.861004, -0.499314,
		0.815676, 0.218899, 0.535496,
		27.218607, 34.026073, 31.668427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197182, 34.101227, 30.825680>,  <26.647633, 33.872845, 31.293579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197182, 34.101227, 30.825680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373730, 33.954796, 31.153381>,  <27.479658, 33.866936, 31.350002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373730, 33.954796, 31.153381>,  <27.197182, 34.101227, 30.825680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373730, 33.954796, 31.153381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727597, -0.388329, -0.565512,
		0.525164, 0.845686, 0.094964,
		0.441368, -0.366082, 0.819255,
		27.506140, 33.844971, 31.399158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905579, 34.179298, 30.800390>,  <27.197182, 34.101227, 30.825680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905579, 34.179298, 30.800390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817947, 33.873302, 31.042645>,  <27.765369, 33.689705, 31.187998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817947, 33.873302, 31.042645>,  <27.905579, 34.179298, 30.800390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817947, 33.873302, 31.042645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550023, -0.609519, -0.570930,
		0.805903, 0.208037, 0.554293,
		-0.219078, -0.764989, 0.605638,
		27.752224, 33.643806, 31.224337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467541, 33.838173, 30.818993>,  <27.905579, 34.179298, 30.800390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467541, 33.838173, 30.818993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237640, 33.551365, 30.976751>,  <28.099701, 33.379280, 31.071407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237640, 33.551365, 30.976751>,  <28.467541, 33.838173, 30.818993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237640, 33.551365, 30.976751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638760, -0.694345, -0.331466,
		0.511514, 0.061415, 0.857077,
		-0.574751, -0.717017, 0.394397,
		28.065216, 33.336262, 31.095070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936535, 33.371601, 30.872234>,  <28.467541, 33.838173, 30.818993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936535, 33.371601, 30.872234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619513, 33.141212, 30.952349>,  <28.429298, 33.002979, 31.000418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619513, 33.141212, 30.952349>,  <28.936535, 33.371601, 30.872234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619513, 33.141212, 30.952349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560767, -0.817434, -0.131688,
		0.239570, 0.007945, 0.970847,
		-0.792557, -0.575967, 0.200288,
		28.381746, 32.968422, 31.012434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197239, 32.856762, 31.317245>,  <28.936535, 33.371601, 30.872234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197239, 32.856762, 31.317245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862532, 32.729736, 31.138821>,  <28.661707, 32.653519, 31.031765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862532, 32.729736, 31.138821>,  <29.197239, 32.856762, 31.317245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862532, 32.729736, 31.138821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430222, -0.885237, -0.176821,
		-0.338717, -0.339864, 0.877362,
		-0.836768, -0.317567, -0.446062,
		28.611502, 32.634464, 31.005003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034716, 32.337410, 31.677237>,  <29.197239, 32.856762, 31.317245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034716, 32.337410, 31.677237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860041, 32.262222, 31.325333>,  <28.755236, 32.217110, 31.114191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860041, 32.262222, 31.325333>,  <29.034716, 32.337410, 31.677237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860041, 32.262222, 31.325333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451312, -0.891738, -0.033491,
		-0.778218, -0.411670, 0.474242,
		-0.436686, -0.187967, -0.879758,
		28.729034, 32.205833, 31.061405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678612, 31.730511, 31.708172>,  <29.034716, 32.337410, 31.677237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678612, 31.730511, 31.708172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725712, 31.757149, 31.311850>,  <28.753973, 31.773130, 31.074057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725712, 31.757149, 31.311850>,  <28.678612, 31.730511, 31.708172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725712, 31.757149, 31.311850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479609, -0.877480, -0.001978,
		-0.869545, -0.474968, -0.135263,
		0.117751, 0.066593, -0.990808,
		28.761038, 31.777126, 31.014606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776865, 31.023758, 31.493114>,  <28.678612, 31.730511, 31.708172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776865, 31.023758, 31.493114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896030, 31.221310, 31.166353>,  <28.967529, 31.339840, 30.970297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896030, 31.221310, 31.166353>,  <28.776865, 31.023758, 31.493114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896030, 31.221310, 31.166353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515273, -0.803581, -0.297912,
		-0.803581, -0.332177, -0.493879,
		0.297912, 0.493879, -0.816904,
		28.985405, 31.369473, 30.921282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673435, 30.670401, 30.936157>,  <28.776865, 31.023758, 31.493114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673435, 30.670401, 30.936157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963387, 30.894966, 30.776474>,  <29.137358, 31.029705, 30.680664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963387, 30.894966, 30.776474>,  <28.673435, 30.670401, 30.936157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963387, 30.894966, 30.776474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499535, -0.827427, -0.256571,
		-0.474359, -0.013437, -0.880229,
		0.724878, 0.561412, -0.399210,
		29.180849, 31.063391, 30.656712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864300, 30.417440, 30.300465>,  <28.673435, 30.670401, 30.936157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864300, 30.417440, 30.300465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178528, 30.636181, 30.416283>,  <29.367064, 30.767426, 30.485773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178528, 30.636181, 30.416283>,  <28.864300, 30.417440, 30.300465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178528, 30.636181, 30.416283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617702, -0.720598, -0.314932,
		0.036425, 0.426254, -0.903870,
		0.785568, 0.546851, 0.289546,
		29.414198, 30.800236, 30.503147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324186, 30.437632, 29.673780>,  <28.864300, 30.417440, 30.300465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324186, 30.437632, 29.673780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555351, 30.493399, 29.995422>,  <29.694050, 30.526859, 30.188408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555351, 30.493399, 29.995422>,  <29.324186, 30.437632, 29.673780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555351, 30.493399, 29.995422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613758, -0.723652, -0.315641,
		0.537886, 0.675937, -0.503774,
		0.577910, 0.139416, 0.804104,
		29.728724, 30.535223, 30.236654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977991, 30.373238, 29.290411>,  <29.324186, 30.437632, 29.673780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977991, 30.373238, 29.290411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048008, 30.375271, 29.684231>,  <30.090017, 30.376492, 29.920523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048008, 30.375271, 29.684231>,  <29.977991, 30.373238, 29.290411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048008, 30.375271, 29.684231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659359, -0.743229, -0.113389,
		0.731168, 0.669018, -0.133446,
		0.175040, 0.005082, 0.984548,
		30.100519, 30.376795, 29.979595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628141, 30.478331, 29.397116>,  <29.977991, 30.373238, 29.290411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628141, 30.478331, 29.397116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453133, 30.251036, 29.675879>,  <30.348127, 30.114658, 29.843136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453133, 30.251036, 29.675879>,  <30.628141, 30.478331, 29.397116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453133, 30.251036, 29.675879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713350, -0.691187, -0.115726,
		0.547454, 0.446508, 0.707760,
		-0.437522, -0.568235, 0.696910,
		30.321877, 30.080564, 29.884951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086655, 30.293457, 30.008995>,  <30.628141, 30.478331, 29.397116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086655, 30.293457, 30.008995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799759, 30.031134, 29.914776>,  <30.627621, 29.873739, 29.858244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799759, 30.031134, 29.914776>,  <31.086655, 30.293457, 30.008995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799759, 30.031134, 29.914776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695352, -0.695578, -0.180711,
		-0.045329, -0.293401, 0.954914,
		-0.717239, -0.655810, -0.235546,
		30.584587, 29.834391, 29.844112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297829, 29.639742, 30.202047>,  <31.086655, 30.293457, 30.008995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297829, 29.639742, 30.202047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026073, 29.529837, 29.929890>,  <30.863020, 29.463894, 29.766594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026073, 29.529837, 29.929890>,  <31.297829, 29.639742, 30.202047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026073, 29.529837, 29.929890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342400, -0.938816, 0.037230,
		-0.648997, -0.207674, 0.731898,
		-0.679386, -0.274764, -0.680397,
		30.822258, 29.447407, 29.725771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254093, 28.963306, 30.310911>,  <31.297829, 29.639742, 30.202047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254093, 28.963306, 30.310911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117128, 29.012024, 29.938263>,  <31.034948, 29.041254, 29.714674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117128, 29.012024, 29.938263>,  <31.254093, 28.963306, 30.310911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117128, 29.012024, 29.938263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454497, -0.846356, -0.277694,
		-0.822305, -0.518506, 0.234449,
		-0.342413, 0.121793, -0.931622,
		31.014404, 29.048561, 29.658777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996946, 28.278194, 30.013391>,  <31.254093, 28.963306, 30.310911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996946, 28.278194, 30.013391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152365, 28.536158, 29.750141>,  <31.245615, 28.690935, 29.592192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152365, 28.536158, 29.750141>,  <30.996946, 28.278194, 30.013391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152365, 28.536158, 29.750141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506890, -0.746057, -0.431813,
		-0.769477, -0.165817, -0.616774,
		0.388546, 0.644906, -0.658124,
		31.268929, 28.729630, 29.552704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073179, 28.359783, 30.809605>,  <30.996946, 28.278194, 30.013391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073179, 28.359783, 30.809605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939758, 28.034235, 30.999912>,  <30.859705, 27.838905, 31.114098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939758, 28.034235, 30.999912>,  <31.073179, 28.359783, 30.809605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939758, 28.034235, 30.999912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243525, 0.561928, 0.790527,
		-0.910735, 0.147820, -0.385631,
		-0.333552, -0.813871, 0.475770,
		30.839693, 27.790073, 31.142643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350992, 28.385164, 31.076529>,  <31.073179, 28.359783, 30.809605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350992, 28.385164, 31.076529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555172, 28.135258, 31.312870>,  <30.677679, 27.985313, 31.454676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555172, 28.135258, 31.312870>,  <30.350992, 28.385164, 31.076529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555172, 28.135258, 31.312870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198383, 0.583020, 0.787866,
		-0.836712, -0.519381, 0.173659,
		0.510449, -0.624766, 0.590856,
		30.708307, 27.947828, 31.490128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911201, 27.924299, 31.523104>,  <30.350992, 28.385164, 31.076529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911201, 27.924299, 31.523104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244295, 28.099003, 31.659220>,  <30.444151, 28.203825, 31.740891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244295, 28.099003, 31.659220>,  <29.911201, 27.924299, 31.523104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244295, 28.099003, 31.659220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543084, 0.524694, 0.655558,
		0.107770, -0.730712, 0.674126,
		0.832734, 0.436757, 0.340291,
		30.494116, 28.230030, 31.761307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754271, 28.068285, 32.211819>,  <29.911201, 27.924299, 31.523104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754271, 28.068285, 32.211819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049507, 28.316381, 32.105595>,  <30.226648, 28.465240, 32.041859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049507, 28.316381, 32.105595>,  <29.754271, 28.068285, 32.211819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049507, 28.316381, 32.105595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475489, 0.757418, 0.447470,
		0.478679, -0.204002, 0.853961,
		0.738090, 0.620243, -0.265559,
		30.270935, 28.502455, 32.025928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985006, 28.424105, 32.853672>,  <29.754271, 28.068285, 32.211819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985006, 28.424105, 32.853672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995665, 28.649250, 32.523224>,  <30.002060, 28.784338, 32.324955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995665, 28.649250, 32.523224>,  <29.985006, 28.424105, 32.853672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995665, 28.649250, 32.523224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532030, 0.707632, 0.464975,
		0.846306, 0.427130, 0.318316,
		0.026646, 0.562865, -0.826119,
		30.003658, 28.818110, 32.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270636, 29.154760, 32.937801>,  <29.985006, 28.424105, 32.853672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270636, 29.154760, 32.937801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004677, 29.120813, 32.640961>,  <29.845102, 29.100445, 32.462856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004677, 29.120813, 32.640961>,  <30.270636, 29.154760, 32.937801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004677, 29.120813, 32.640961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506302, 0.781657, 0.364239,
		0.549154, 0.617907, -0.562691,
		-0.664898, -0.084868, -0.742097,
		29.805208, 29.095352, 32.418331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216196, 29.778187, 32.670776>,  <30.270636, 29.154760, 32.937801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216196, 29.778187, 32.670776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874464, 29.592451, 32.577393>,  <29.669424, 29.481009, 32.521362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874464, 29.592451, 32.577393>,  <30.216196, 29.778187, 32.670776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874464, 29.592451, 32.577393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509826, 0.836012, 0.202882,
		0.100970, 0.292354, -0.950965,
		-0.854331, -0.464341, -0.233462,
		29.618164, 29.453148, 32.507355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877405, 30.335819, 32.221275>,  <30.216196, 29.778187, 32.670776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877405, 30.335819, 32.221275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601814, 30.070000, 32.336987>,  <29.436459, 29.910507, 32.406414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601814, 30.070000, 32.336987>,  <29.877405, 30.335819, 32.221275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601814, 30.070000, 32.336987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600456, 0.746885, 0.285684,
		-0.405907, 0.023132, -0.913622,
		-0.688979, -0.664551, 0.289276,
		29.395121, 29.870634, 32.423771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205078, 30.570393, 31.928741>,  <29.877405, 30.335819, 32.221275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205078, 30.570393, 31.928741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146568, 30.336292, 32.247761>,  <29.111464, 30.195831, 32.439171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146568, 30.336292, 32.247761>,  <29.205078, 30.570393, 31.928741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146568, 30.336292, 32.247761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531336, 0.726535, 0.435693,
		-0.834437, -0.360037, -0.417238,
		-0.146272, -0.585252, 0.797549,
		29.102686, 30.160717, 32.487026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434614, 30.453901, 32.075607>,  <29.205078, 30.570393, 31.928741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434614, 30.453901, 32.075607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614983, 30.370111, 32.422661>,  <28.723204, 30.319838, 32.630894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614983, 30.370111, 32.422661>,  <28.434614, 30.453901, 32.075607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614983, 30.370111, 32.422661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583570, 0.666332, 0.464163,
		-0.675362, -0.715628, 0.178222,
		0.450923, -0.209473, 0.867635,
		28.750259, 30.307270, 32.682953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929924, 30.231403, 32.640858>,  <28.434614, 30.453901, 32.075607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929924, 30.231403, 32.640858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258495, 30.329277, 32.846920>,  <28.455639, 30.388000, 32.970558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258495, 30.329277, 32.846920>,  <27.929924, 30.231403, 32.640858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258495, 30.329277, 32.846920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563862, 0.483900, 0.669254,
		-0.085530, -0.840221, 0.535456,
		0.821428, 0.244682, 0.515157,
		28.504925, 30.402681, 33.001469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750031, 30.256670, 33.360142>,  <27.929924, 30.231403, 32.640858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750031, 30.256670, 33.360142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087748, 30.470146, 33.379517>,  <28.290379, 30.598232, 33.391140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087748, 30.470146, 33.379517>,  <27.750031, 30.256670, 33.360142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087748, 30.470146, 33.379517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421138, 0.604899, 0.675826,
		0.331380, -0.590994, 0.735468,
		0.844293, 0.533689, 0.048439,
		28.341036, 30.630253, 33.394047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767349, 30.476051, 34.024258>,  <27.750031, 30.256670, 33.360142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767349, 30.476051, 34.024258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029222, 30.729755, 33.859768>,  <28.186346, 30.881977, 33.761074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029222, 30.729755, 33.859768>,  <27.767349, 30.476051, 34.024258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029222, 30.729755, 33.859768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330808, 0.729559, 0.598590,
		0.679674, -0.255849, 0.687447,
		0.654682, 0.634260, -0.411225,
		28.225628, 30.920033, 33.736401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975910, 30.845057, 34.594860>,  <27.767349, 30.476051, 34.024258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975910, 30.845057, 34.594860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074038, 31.059206, 34.271580>,  <28.132914, 31.187696, 34.077610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074038, 31.059206, 34.271580>,  <27.975910, 30.845057, 34.594860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074038, 31.059206, 34.271580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115322, 0.843876, 0.523999,
		0.962560, -0.035342, 0.268756,
		0.245316, 0.535374, -0.808205,
		28.147633, 31.219818, 34.029118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128731, 31.422806, 34.886467>,  <27.975910, 30.845057, 34.594860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128731, 31.422806, 34.886467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137108, 31.587008, 34.521820>,  <28.142134, 31.685528, 34.303032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137108, 31.587008, 34.521820>,  <28.128731, 31.422806, 34.886467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137108, 31.587008, 34.521820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140892, 0.903932, 0.403804,
		0.989803, 0.119984, 0.076766,
		0.020941, 0.410502, -0.911619,
		28.143391, 31.710157, 34.248333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712643, 32.004974, 34.854877>,  <28.128731, 31.422806, 34.886467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712643, 32.004974, 34.854877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397720, 32.058498, 34.614132>,  <28.208767, 32.090614, 34.469685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397720, 32.058498, 34.614132>,  <28.712643, 32.004974, 34.854877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397720, 32.058498, 34.614132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236222, 0.836213, 0.494921,
		0.569516, 0.531828, -0.626746,
		-0.787306, 0.133814, -0.601866,
		28.161528, 32.098644, 34.433571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757778, 32.667057, 34.691402>,  <28.712643, 32.004974, 34.854877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757778, 32.667057, 34.691402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377132, 32.567371, 34.619484>,  <28.148745, 32.507561, 34.576332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377132, 32.567371, 34.619484>,  <28.757778, 32.667057, 34.691402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377132, 32.567371, 34.619484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265287, 0.961528, 0.071326,
		0.155104, 0.115572, -0.981115,
		-0.951612, -0.249214, -0.179796,
		28.091648, 32.492607, 34.565544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420210, 33.315868, 34.247482>,  <28.757778, 32.667057, 34.691402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420210, 33.315868, 34.247482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121305, 33.109486, 34.415001>,  <27.941963, 32.985657, 34.515511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121305, 33.109486, 34.415001>,  <28.420210, 33.315868, 34.247482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121305, 33.109486, 34.415001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427586, 0.855742, 0.291335,
		-0.508697, 0.038632, -0.860078,
		-0.747260, -0.515959, 0.418795,
		27.897127, 32.954697, 34.540638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850222, 33.584156, 34.088516>,  <28.420210, 33.315868, 34.247482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850222, 33.584156, 34.088516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677326, 33.400333, 34.398865>,  <27.573589, 33.290039, 34.585075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677326, 33.400333, 34.398865>,  <27.850222, 33.584156, 34.088516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677326, 33.400333, 34.398865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596136, 0.791192, 0.136521,
		-0.676603, -0.403516, -0.615941,
		-0.432239, -0.459555, 0.775873,
		27.547655, 33.262466, 34.631626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070786, 33.810020, 34.075363>,  <27.850222, 33.584156, 34.088516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070786, 33.810020, 34.075363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129471, 33.627628, 34.426491>,  <27.164682, 33.518192, 34.637165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129471, 33.627628, 34.426491>,  <27.070786, 33.810020, 34.075363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129471, 33.627628, 34.426491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776910, 0.496174, 0.387586,
		-0.612279, -0.738847, -0.281457,
		0.146715, -0.455978, 0.877815,
		27.173485, 33.490833, 34.689835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377514, 33.658554, 34.333218>,  <27.070786, 33.810020, 34.075363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377514, 33.658554, 34.333218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619289, 33.677841, 34.651295>,  <26.764355, 33.689415, 34.842140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619289, 33.677841, 34.651295>,  <26.377514, 33.658554, 34.333218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619289, 33.677841, 34.651295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725373, 0.446000, 0.524326,
		-0.329371, -0.893733, 0.304559,
		0.604441, 0.048221, 0.795189,
		26.800621, 33.692307, 34.889851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946918, 33.513596, 34.861050>,  <26.377514, 33.658554, 34.333218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946918, 33.513596, 34.861050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257721, 33.696609, 35.033985>,  <26.444202, 33.806419, 35.137749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257721, 33.696609, 35.033985>,  <25.946918, 33.513596, 34.861050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257721, 33.696609, 35.033985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625944, 0.488773, 0.607696,
		0.066726, -0.742807, 0.666172,
		0.777008, 0.457536, 0.432342,
		26.490824, 33.833870, 35.163689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948414, 33.457390, 35.644135>,  <25.946918, 33.513596, 34.861050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948414, 33.457390, 35.644135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180307, 33.777946, 35.585247>,  <26.319445, 33.970280, 35.549915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180307, 33.777946, 35.585247>,  <25.948414, 33.457390, 35.644135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180307, 33.777946, 35.585247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671791, 0.572357, 0.470217,
		0.461090, -0.173703, 0.870186,
		0.579736, 0.801396, -0.147217,
		26.354227, 34.018364, 35.541080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801271, 33.851357, 36.137112>,  <25.948414, 33.457390, 35.644135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801271, 33.851357, 36.137112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008221, 34.116188, 35.920231>,  <26.132391, 34.275085, 35.790104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008221, 34.116188, 35.920231>,  <25.801271, 33.851357, 36.137112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008221, 34.116188, 35.920231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550560, 0.742574, 0.381402,
		0.655141, 0.101186, 0.748700,
		0.517373, 0.662076, -0.542200,
		26.163433, 34.314812, 35.757572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085102, 34.380047, 36.606087>,  <25.801271, 33.851357, 36.137112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085102, 34.380047, 36.606087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067783, 34.563046, 36.250824>,  <26.057392, 34.672844, 36.037666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067783, 34.563046, 36.250824>,  <26.085102, 34.380047, 36.606087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067783, 34.563046, 36.250824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585253, 0.708873, 0.393673,
		0.809694, 0.536841, 0.237059,
		-0.043295, 0.457494, -0.888159,
		26.054794, 34.700294, 35.984375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227030, 35.138687, 36.693615>,  <26.085102, 34.380047, 36.606087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227030, 35.138687, 36.693615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028881, 35.098904, 36.348427>,  <25.909992, 35.075035, 36.141315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028881, 35.098904, 36.348427>,  <26.227030, 35.138687, 36.693615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028881, 35.098904, 36.348427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551233, 0.803779, 0.223789,
		0.671378, 0.586556, -0.452994,
		-0.495372, -0.099458, -0.862969,
		25.880270, 35.069065, 36.089535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258297, 35.785610, 36.477921>,  <26.227030, 35.138687, 36.693615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258297, 35.785610, 36.477921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937857, 35.639313, 36.288406>,  <25.745592, 35.551533, 36.174698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937857, 35.639313, 36.288406>,  <26.258297, 35.785610, 36.477921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937857, 35.639313, 36.288406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460703, 0.882127, 0.098009,
		0.382089, 0.296787, -0.875172,
		-0.801100, -0.365746, -0.473781,
		25.697527, 35.529591, 36.146271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978096, 36.306431, 35.884815>,  <26.258297, 35.785610, 36.477921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978096, 36.306431, 35.884815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678015, 36.064953, 35.992702>,  <25.497967, 35.920067, 36.057434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678015, 36.064953, 35.992702>,  <25.978096, 36.306431, 35.884815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678015, 36.064953, 35.992702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623704, 0.781527, 0.014471,
		-0.219526, -0.157366, -0.962831,
		-0.750202, -0.603698, 0.269715,
		25.452953, 35.883842, 36.073616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056808, 36.843498, 35.376484>,  <25.978096, 36.306431, 35.884815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056808, 36.843498, 35.376484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267500, 37.170723, 35.468857>,  <26.393915, 37.367058, 35.524281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267500, 37.170723, 35.468857>,  <26.056808, 36.843498, 35.376484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267500, 37.170723, 35.468857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651010, -0.562920, 0.509222,
		0.546573, -0.117880, -0.829073,
		0.526729, 0.818062, 0.230936,
		26.425518, 37.416142, 35.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647108, 36.412502, 35.451828>,  <26.056808, 36.843498, 35.376484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647108, 36.412502, 35.451828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843075, 36.759399, 35.487331>,  <26.960655, 36.967537, 35.508633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843075, 36.759399, 35.487331>,  <26.647108, 36.412502, 35.451828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843075, 36.759399, 35.487331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683359, -0.445257, 0.578590,
		0.541295, -0.222809, -0.810775,
		0.489919, 0.867238, 0.088757,
		26.990051, 37.019569, 35.513958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294699, 36.505684, 35.136566>,  <26.647108, 36.412502, 35.451828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294699, 36.505684, 35.136566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250309, 36.672470, 35.497414>,  <27.223675, 36.772541, 35.713924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250309, 36.672470, 35.497414>,  <27.294699, 36.505684, 35.136566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250309, 36.672470, 35.497414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583415, -0.707526, 0.398792,
		0.804557, 0.570566, -0.164749,
		-0.110972, 0.416968, 0.902121,
		27.217018, 36.797562, 35.768051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899687, 36.731281, 35.449028>,  <27.294699, 36.505684, 35.136566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899687, 36.731281, 35.449028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645815, 36.652126, 35.747833>,  <27.493492, 36.604633, 35.927116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645815, 36.652126, 35.747833>,  <27.899687, 36.731281, 35.449028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645815, 36.652126, 35.747833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702229, -0.551197, 0.450617,
		0.322578, 0.810569, 0.488796,
		-0.634679, -0.197887, 0.747010,
		27.455412, 36.592762, 35.971935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650206, 36.047318, 35.806713>,  <27.899687, 36.731281, 35.449028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650206, 36.047318, 35.806713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880548, 36.231438, 36.076977>,  <28.018753, 36.341908, 36.239136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880548, 36.231438, 36.076977>,  <27.650206, 36.047318, 35.806713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880548, 36.231438, 36.076977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463550, -0.864588, 0.193930,
		0.673433, 0.201526, -0.711249,
		0.575856, 0.460298, 0.675660,
		28.053305, 36.369526, 36.279675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330976, 35.917385, 35.643139>,  <27.650206, 36.047318, 35.806713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330976, 35.917385, 35.643139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319439, 35.953712, 36.041317>,  <28.312517, 35.975510, 36.280224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319439, 35.953712, 36.041317>,  <28.330976, 35.917385, 35.643139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319439, 35.953712, 36.041317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620528, -0.779110, 0.089063,
		0.783654, 0.620273, -0.033885,
		-0.028843, 0.090821, 0.995449,
		28.310785, 35.980957, 36.339951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064152, 35.907314, 36.047619>,  <28.330976, 35.917385, 35.643139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064152, 35.907314, 36.047619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766691, 35.768852, 36.276413>,  <28.588215, 35.685776, 36.413689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766691, 35.768852, 36.276413>,  <29.064152, 35.907314, 36.047619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766691, 35.768852, 36.276413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484537, -0.868525, 0.104348,
		0.460662, 0.354745, 0.813601,
		-0.743650, -0.346150, 0.571983,
		28.543596, 35.665009, 36.448009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663776, 36.072559, 36.468533>,  <29.064152, 35.907314, 36.047619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663776, 36.072559, 36.468533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040722, 36.161320, 36.368366>,  <30.266890, 36.214577, 36.308266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040722, 36.161320, 36.368366>,  <29.663776, 36.072559, 36.468533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040722, 36.161320, 36.368366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285472, -0.142878, 0.947677,
		0.174508, -0.964545, -0.197989,
		0.942365, 0.221898, -0.250417,
		30.323431, 36.227890, 36.293240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136841, 35.508415, 36.822426>,  <29.663776, 36.072559, 36.468533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136841, 35.508415, 36.822426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362770, 35.828533, 36.741928>,  <30.498327, 36.020603, 36.693630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362770, 35.828533, 36.741928>,  <30.136841, 35.508415, 36.822426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362770, 35.828533, 36.741928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560904, -0.193456, 0.804960,
		0.605276, -0.567538, -0.558159,
		0.564825, 0.800297, -0.201241,
		30.532217, 36.068623, 36.681557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722404, 35.210999, 37.129967>,  <30.136841, 35.508415, 36.822426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722404, 35.210999, 37.129967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818932, 35.597691, 37.096035>,  <30.876848, 35.829708, 37.075676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818932, 35.597691, 37.096035>,  <30.722404, 35.210999, 37.129967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818932, 35.597691, 37.096035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680785, -0.106346, 0.724723,
		0.691591, -0.232636, -0.683799,
		0.241316, 0.966732, -0.084828,
		30.891327, 35.887711, 37.070587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466417, 35.336548, 37.066574>,  <30.722404, 35.210999, 37.129967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466417, 35.336548, 37.066574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309917, 35.681046, 37.196301>,  <31.216017, 35.887745, 37.274136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309917, 35.681046, 37.196301>,  <31.466417, 35.336548, 37.066574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309917, 35.681046, 37.196301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750014, 0.094187, 0.654681,
		0.533293, 0.499389, -0.682796,
		-0.391251, 0.861243, 0.324319,
		31.192543, 35.939419, 37.293594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941883, 35.847717, 36.925129>,  <31.466417, 35.336548, 37.066574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941883, 35.847717, 36.925129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718042, 36.002293, 37.218388>,  <31.583738, 36.095039, 37.394344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718042, 36.002293, 37.218388>,  <31.941883, 35.847717, 36.925129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718042, 36.002293, 37.218388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826360, 0.192897, 0.529074,
		0.063033, 0.901918, -0.427284,
		-0.559603, 0.386440, 0.733150,
		31.550161, 36.118225, 37.438332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399208, 36.385574, 37.154556>,  <31.941883, 35.847717, 36.925129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399208, 36.385574, 37.154556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126789, 36.319111, 37.439812>,  <31.963337, 36.279232, 37.610966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126789, 36.319111, 37.439812>,  <32.399208, 36.385574, 37.154556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126789, 36.319111, 37.439812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714286, 0.063587, 0.696960,
		-0.161152, 0.984047, 0.075379,
		-0.681048, -0.166159, 0.713138,
		31.922474, 36.269264, 37.653751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648998, 36.789116, 37.632961>,  <32.399208, 36.385574, 37.154556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648998, 36.789116, 37.632961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416351, 36.526611, 37.825230>,  <32.276764, 36.369110, 37.940590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416351, 36.526611, 37.825230>,  <32.648998, 36.789116, 37.632961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416351, 36.526611, 37.825230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675242, -0.059981, 0.735153,
		-0.453619, 0.752148, 0.478019,
		-0.581616, -0.656259, 0.480674,
		32.241867, 36.329735, 37.969433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451214, 37.031303, 38.385029>,  <32.648998, 36.789116, 37.632961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451214, 37.031303, 38.385029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415314, 36.632950, 38.389961>,  <32.393772, 36.393936, 38.392921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415314, 36.632950, 38.389961>,  <32.451214, 37.031303, 38.385029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415314, 36.632950, 38.389961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485150, -0.032901, 0.873812,
		-0.869813, 0.084409, 0.486108,
		-0.089751, -0.995888, 0.012333,
		32.388390, 36.334183, 38.393661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273758, 36.880463, 39.094284>,  <32.451214, 37.031303, 38.385029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273758, 36.880463, 39.094284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355320, 36.513371, 38.957932>,  <32.404259, 36.293118, 38.876118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355320, 36.513371, 38.957932>,  <32.273758, 36.880463, 39.094284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355320, 36.513371, 38.957932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342276, -0.259396, 0.903084,
		-0.917208, -0.300819, 0.261224,
		0.203904, -0.917726, -0.340883,
		32.416492, 36.238052, 38.855667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910154, 36.485123, 39.517941>,  <32.273758, 36.880463, 39.094284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910154, 36.485123, 39.517941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202713, 36.265102, 39.356693>,  <32.378246, 36.133091, 39.259945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202713, 36.265102, 39.356693>,  <31.910154, 36.485123, 39.517941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202713, 36.265102, 39.356693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349483, -0.205277, 0.914179,
		-0.585596, -0.809509, 0.042095,
		0.731395, -0.550051, -0.403119,
		32.422131, 36.100086, 39.235756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881908, 35.891186, 39.846432>,  <31.910154, 36.485123, 39.517941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881908, 35.891186, 39.846432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248356, 35.901199, 39.686382>,  <32.468224, 35.907207, 39.590351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248356, 35.901199, 39.686382>,  <31.881908, 35.891186, 39.846432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248356, 35.901199, 39.686382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391712, -0.268407, 0.880068,
		-0.085362, -0.962980, -0.255700,
		0.916120, 0.025036, -0.400123,
		32.523193, 35.908710, 39.566345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189949, 35.257595, 39.995914>,  <31.881908, 35.891186, 39.846432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189949, 35.257595, 39.995914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501789, 35.500671, 39.935333>,  <32.688892, 35.646519, 39.898983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501789, 35.500671, 39.935333>,  <32.189949, 35.257595, 39.995914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501789, 35.500671, 39.935333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418212, -0.325131, 0.848167,
		0.466180, -0.724570, -0.507615,
		0.779599, 0.607690, -0.151454,
		32.735668, 35.682980, 39.889896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681038, 34.821674, 40.232510>,  <32.189949, 35.257595, 39.995914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681038, 34.821674, 40.232510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837357, 35.188316, 40.266258>,  <32.931149, 35.408302, 40.286507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837357, 35.188316, 40.266258>,  <32.681038, 34.821674, 40.232510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837357, 35.188316, 40.266258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428163, -0.262158, 0.864841,
		0.814835, -0.301849, -0.494905,
		0.390794, 0.916603, 0.084375,
		32.954594, 35.463299, 40.291573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351517, 34.647839, 40.339706>,  <32.681038, 34.821674, 40.232510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351517, 34.647839, 40.339706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282631, 35.017288, 40.476685>,  <33.241299, 35.238956, 40.558872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282631, 35.017288, 40.476685>,  <33.351517, 34.647839, 40.339706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282631, 35.017288, 40.476685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425042, -0.243936, 0.871685,
		0.888640, 0.295673, -0.350567,
		-0.172217, 0.923619, 0.342445,
		33.230965, 35.294373, 40.579418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917667, 34.816578, 40.719250>,  <33.351517, 34.647839, 40.339706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917667, 34.816578, 40.719250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618942, 35.046268, 40.853439>,  <33.439709, 35.184082, 40.933952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618942, 35.046268, 40.853439>,  <33.917667, 34.816578, 40.719250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618942, 35.046268, 40.853439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226305, -0.254908, 0.940111,
		0.625347, 0.778004, 0.060419,
		-0.746811, 0.574223, 0.335472,
		33.394897, 35.218536, 40.954082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179916, 35.176411, 41.414871>,  <33.917667, 34.816578, 40.719250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179916, 35.176411, 41.414871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781330, 35.207554, 41.402229>,  <33.542179, 35.226238, 41.394642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781330, 35.207554, 41.402229>,  <34.179916, 35.176411, 41.414871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781330, 35.207554, 41.402229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046890, -0.203079, 0.978039,
		0.069728, 0.976062, 0.206011,
		-0.996463, 0.077856, -0.031607,
		33.482391, 35.230911, 41.392746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083031, 35.552776, 41.939720>,  <34.179916, 35.176411, 41.414871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083031, 35.552776, 41.939720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722588, 35.389435, 41.881416>,  <33.506321, 35.291431, 41.846436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722588, 35.389435, 41.881416>,  <34.083031, 35.552776, 41.939720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722588, 35.389435, 41.881416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068280, -0.198327, 0.977755,
		-0.428176, 0.891019, 0.150832,
		-0.901112, -0.408352, -0.145758,
		33.452255, 35.266930, 41.837688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705376, 35.879620, 42.365425>,  <34.083031, 35.552776, 41.939720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705376, 35.879620, 42.365425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450012, 35.579353, 42.297394>,  <33.296795, 35.399193, 42.256573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450012, 35.579353, 42.297394>,  <33.705376, 35.879620, 42.365425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450012, 35.579353, 42.297394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272055, 0.013366, 0.962189,
		-0.720011, 0.660544, -0.212756,
		-0.638412, -0.750668, -0.170081,
		33.258488, 35.354153, 42.246368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074024, 36.035419, 42.696930>,  <33.705376, 35.879620, 42.365425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074024, 36.035419, 42.696930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071739, 35.638592, 42.646713>,  <33.070370, 35.400494, 42.616585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071739, 35.638592, 42.646713>,  <33.074024, 36.035419, 42.696930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071739, 35.638592, 42.646713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200257, -0.121863, 0.972135,
		-0.979727, 0.030692, -0.197974,
		-0.005711, -0.992072, -0.125539,
		33.070026, 35.340969, 42.609051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403564, 35.679073, 43.036812>,  <33.074024, 36.035419, 42.696930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403564, 35.679073, 43.036812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659096, 35.372566, 43.009308>,  <32.812416, 35.188663, 42.992805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659096, 35.372566, 43.009308>,  <32.403564, 35.679073, 43.036812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659096, 35.372566, 43.009308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036847, -0.119745, 0.992121,
		-0.768464, -0.631263, -0.104732,
		0.638831, -0.766268, -0.068760,
		32.850746, 35.142685, 42.988682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087440, 35.191101, 43.489651>,  <32.403564, 35.679073, 43.036812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087440, 35.191101, 43.489651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474342, 35.093643, 43.461185>,  <32.706482, 35.035168, 43.444107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474342, 35.093643, 43.461185>,  <32.087440, 35.191101, 43.489651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474342, 35.093643, 43.461185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032246, -0.160147, 0.986566,
		-0.251767, -0.956551, -0.147046,
		0.967251, -0.243644, -0.071165,
		32.764519, 35.020550, 43.439835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075928, 34.667263, 43.912853>,  <32.087440, 35.191101, 43.489651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075928, 34.667263, 43.912853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464767, 34.751282, 43.871101>,  <32.698071, 34.801693, 43.846050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464767, 34.751282, 43.871101>,  <32.075928, 34.667263, 43.912853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464767, 34.751282, 43.871101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149596, -0.212487, 0.965645,
		0.180652, -0.954322, -0.237981,
		0.972104, 0.210047, -0.104377,
		32.756397, 34.814297, 43.839787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438633, 34.117050, 44.296249>,  <32.075928, 34.667263, 43.912853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438633, 34.117050, 44.296249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689762, 34.424900, 44.249756>,  <32.840439, 34.609612, 44.221859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689762, 34.424900, 44.249756>,  <32.438633, 34.117050, 44.296249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689762, 34.424900, 44.249756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354005, -0.149341, 0.923243,
		0.693193, -0.620784, -0.366211,
		0.627825, 0.769626, -0.116239,
		32.878109, 34.655788, 44.214886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045490, 33.862823, 44.630791>,  <32.438633, 34.117050, 44.296249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045490, 33.862823, 44.630791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059814, 34.262558, 44.633560>,  <33.068409, 34.502399, 44.635223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059814, 34.262558, 44.633560>,  <33.045490, 33.862823, 44.630791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059814, 34.262558, 44.633560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341481, -0.018749, 0.939702,
		0.939207, -0.031285, -0.341925,
		0.035809, 0.999335, 0.006926,
		33.070557, 34.562359, 44.635639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489647, 33.963608, 45.156883>,  <33.045490, 33.862823, 44.630791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489647, 33.963608, 45.156883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368820, 34.338554, 45.087494>,  <33.296326, 34.563522, 45.045860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368820, 34.338554, 45.087494>,  <33.489647, 33.963608, 45.156883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368820, 34.338554, 45.087494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363081, 0.281383, 0.888254,
		0.881436, 0.205327, -0.425338,
		-0.302065, 0.937371, -0.173470,
		33.278202, 34.619766, 45.035454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136566, 34.480453, 45.179226>,  <33.489647, 33.963608, 45.156883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136566, 34.480453, 45.179226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806580, 34.681282, 45.283039>,  <33.608589, 34.801781, 45.345325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806580, 34.681282, 45.283039>,  <34.136566, 34.480453, 45.179226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806580, 34.681282, 45.283039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334087, 0.062808, 0.940447,
		0.455870, 0.862543, -0.219550,
		-0.824966, 0.502071, 0.259532,
		33.559090, 34.831902, 45.360897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288803, 35.217823, 45.412724>,  <34.136566, 34.480453, 45.179226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288803, 35.217823, 45.412724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931839, 35.124027, 45.566921>,  <33.717659, 35.067749, 45.659439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931839, 35.124027, 45.566921>,  <34.288803, 35.217823, 45.412724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931839, 35.124027, 45.566921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372524, 0.099177, 0.922708,
		-0.254602, 0.967045, -0.001153,
		-0.892415, -0.234494, 0.385498,
		33.664116, 35.053680, 45.682571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203667, 35.754238, 45.929661>,  <34.288803, 35.217823, 45.412724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203667, 35.754238, 45.929661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958477, 35.453323, 46.026272>,  <33.811363, 35.272774, 46.084236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958477, 35.453323, 46.026272>,  <34.203667, 35.754238, 45.929661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958477, 35.453323, 46.026272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278081, 0.080716, 0.957160,
		-0.739551, 0.653876, 0.159720,
		-0.612972, -0.752284, 0.241524,
		33.774586, 35.227638, 46.098728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008877, 35.924000, 46.580528>,  <34.203667, 35.754238, 45.929661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008877, 35.924000, 46.580528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913189, 35.536388, 46.556000>,  <33.855774, 35.303822, 46.541283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913189, 35.536388, 46.556000>,  <34.008877, 35.924000, 46.580528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913189, 35.536388, 46.556000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228989, -0.117674, 0.966290,
		-0.943577, 0.217117, 0.250046,
		-0.239222, -0.969027, -0.061317,
		33.841423, 35.245682, 46.537605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540314, 35.746815, 47.203979>,  <34.008877, 35.924000, 46.580528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540314, 35.746815, 47.203979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719597, 35.410637, 47.082153>,  <33.827168, 35.208931, 47.009056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719597, 35.410637, 47.082153>,  <33.540314, 35.746815, 47.203979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719597, 35.410637, 47.082153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245274, -0.212008, 0.945988,
		-0.859621, -0.498704, 0.111115,
		0.448211, -0.840445, -0.304565,
		33.854061, 35.158504, 46.990784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305489, 35.290825, 47.684803>,  <33.540314, 35.746815, 47.203979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305489, 35.290825, 47.684803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624023, 35.119858, 47.513615>,  <33.815144, 35.017277, 47.410904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624023, 35.119858, 47.513615>,  <33.305489, 35.290825, 47.684803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624023, 35.119858, 47.513615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360072, -0.233520, 0.903226,
		-0.485993, -0.873374, -0.032061,
		0.796341, -0.427417, -0.427967,
		33.862926, 34.991634, 47.385223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368744, 34.593674, 48.027401>,  <33.305489, 35.290825, 47.684803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368744, 34.593674, 48.027401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719250, 34.663960, 47.847942>,  <33.929554, 34.706131, 47.740265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719250, 34.663960, 47.847942>,  <33.368744, 34.593674, 48.027401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719250, 34.663960, 47.847942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477083, -0.446845, 0.756784,
		-0.067497, -0.877184, -0.475386,
		0.876263, 0.175718, -0.448650,
		33.982128, 34.716675, 47.713348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754913, 33.963608, 47.982475>,  <33.368744, 34.593674, 48.027401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754913, 33.963608, 47.982475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018166, 34.264668, 47.974655>,  <34.176117, 34.445305, 47.969963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018166, 34.264668, 47.974655>,  <33.754913, 33.963608, 47.982475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018166, 34.264668, 47.974655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452092, -0.374279, 0.809647,
		0.602063, -0.541692, -0.586591,
		0.658128, 0.752652, -0.019555,
		34.215603, 34.490463, 47.968788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478268, 33.659302, 48.081379>,  <33.754913, 33.963608, 47.982475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478268, 33.659302, 48.081379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541996, 34.042648, 48.176159>,  <34.580235, 34.272655, 48.233028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541996, 34.042648, 48.176159>,  <34.478268, 33.659302, 48.081379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541996, 34.042648, 48.176159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451081, -0.284168, 0.846035,
		0.878148, -0.027905, -0.477575,
		0.159320, 0.958368, 0.236955,
		34.589790, 34.330158, 48.247246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181740, 33.735073, 48.527542>,  <34.478268, 33.659302, 48.081379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181740, 33.735073, 48.527542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975025, 34.071781, 48.589958>,  <34.850998, 34.273808, 48.627407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975025, 34.071781, 48.589958>,  <35.181740, 33.735073, 48.527542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975025, 34.071781, 48.589958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414151, 0.086295, 0.906108,
		0.749273, 0.532888, -0.393218,
		-0.516787, 0.841774, 0.156037,
		34.819988, 34.324314, 48.636768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637882, 34.316380, 48.763412>,  <35.181740, 33.735073, 48.527542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637882, 34.316380, 48.763412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265873, 34.382973, 48.894459>,  <35.042667, 34.422928, 48.973087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265873, 34.382973, 48.894459>,  <35.637882, 34.316380, 48.763412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265873, 34.382973, 48.894459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352110, 0.148468, 0.924108,
		0.105210, 0.974802, -0.196700,
		-0.930027, 0.166486, 0.327617,
		34.986866, 34.432919, 48.992744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711086, 34.878384, 49.160244>,  <35.637882, 34.316380, 48.763412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711086, 34.878384, 49.160244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349983, 34.749825, 49.274593>,  <35.133320, 34.672691, 49.343204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349983, 34.749825, 49.274593>,  <35.711086, 34.878384, 49.160244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349983, 34.749825, 49.274593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177421, 0.327219, 0.928143,
		-0.391844, 0.888613, -0.238379,
		-0.902762, -0.321394, 0.285877,
		35.079155, 34.653408, 49.360355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274834, 35.479927, 49.485134>,  <35.711086, 34.878384, 49.160244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274834, 35.479927, 49.485134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162857, 35.124886, 49.631447>,  <35.095673, 34.911861, 49.719234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162857, 35.124886, 49.631447>,  <35.274834, 35.479927, 49.485134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162857, 35.124886, 49.631447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167504, 0.330014, 0.928996,
		-0.945292, 0.321331, 0.056294,
		-0.279938, -0.887602, 0.365783,
		35.078876, 34.858604, 49.741180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941357, 35.680138, 50.085220>,  <35.274834, 35.479927, 49.485134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941357, 35.680138, 50.085220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017220, 35.289040, 50.121117>,  <35.062737, 35.054382, 50.142654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017220, 35.289040, 50.121117>,  <34.941357, 35.680138, 50.085220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017220, 35.289040, 50.121117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146401, 0.118537, 0.982098,
		-0.970875, -0.173120, 0.165624,
		0.189653, -0.977742, 0.089739,
		35.074116, 34.995716, 50.148037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611336, 35.430901, 50.706249>,  <34.941357, 35.680138, 50.085220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611336, 35.430901, 50.706249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877617, 35.138664, 50.645489>,  <35.037388, 34.963322, 50.609032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877617, 35.138664, 50.645489>,  <34.611336, 35.430901, 50.706249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877617, 35.138664, 50.645489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185299, -0.035341, 0.982047,
		-0.722843, -0.681900, 0.111851,
		0.665705, -0.730591, -0.151901,
		35.077328, 34.919487, 50.599918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509140, 34.862617, 51.201107>,  <34.611336, 35.430901, 50.706249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509140, 34.862617, 51.201107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886021, 34.810291, 51.077721>,  <35.112148, 34.778896, 51.003689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886021, 34.810291, 51.077721>,  <34.509140, 34.862617, 51.201107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886021, 34.810291, 51.077721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303781, -0.054876, 0.951160,
		-0.141357, -0.989887, -0.011964,
		0.942197, -0.130819, -0.308466,
		35.168678, 34.771046, 50.985180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797276, 34.296417, 51.498482>,  <34.509140, 34.862617, 51.201107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797276, 34.296417, 51.498482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118618, 34.530121, 51.452408>,  <35.311424, 34.670341, 51.424763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118618, 34.530121, 51.452408>,  <34.797276, 34.296417, 51.498482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118618, 34.530121, 51.452408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305864, -0.238870, 0.921622,
		0.510949, -0.775620, -0.370601,
		0.803354, 0.584256, -0.115184,
		35.359623, 34.705399, 51.417854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514442, 33.968330, 51.709560>,  <34.797276, 34.296417, 51.498482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514442, 33.968330, 51.709560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524841, 34.360485, 51.787697>,  <35.531082, 34.595779, 51.834579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524841, 34.360485, 51.787697>,  <35.514442, 33.968330, 51.709560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524841, 34.360485, 51.787697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354789, -0.191734, 0.915075,
		0.934585, 0.045514, -0.352816,
		0.025998, 0.980391, 0.195340,
		35.532642, 34.654602, 51.846298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104794, 34.124283, 52.025986>,  <35.514442, 33.968330, 51.709560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104794, 34.124283, 52.025986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832088, 34.390007, 52.148556>,  <35.668465, 34.549442, 52.222099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832088, 34.390007, 52.148556>,  <36.104794, 34.124283, 52.025986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832088, 34.390007, 52.148556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050593, -0.375043, 0.925626,
		0.729821, 0.646561, 0.222081,
		-0.681763, 0.664306, 0.306425,
		35.627560, 34.589298, 52.240482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794949, 33.894390, 52.712578>,  <36.104794, 34.124283, 52.025986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794949, 33.894390, 52.712578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662415, 34.271423, 52.695797>,  <35.582893, 34.497643, 52.685726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662415, 34.271423, 52.695797>,  <35.794949, 33.894390, 52.712578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662415, 34.271423, 52.695797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210415, -0.030471, 0.977137,
		0.919750, 0.332592, 0.208429,
		-0.331339, 0.942579, -0.041956,
		35.563011, 34.554195, 52.683208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851345, 33.124718, 52.594852>,  <35.794949, 33.894390, 52.712578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851345, 33.124718, 52.594852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069519, 32.846970, 52.407085>,  <36.200424, 32.680321, 52.294426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069519, 32.846970, 52.407085>,  <35.851345, 33.124718, 52.594852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069519, 32.846970, 52.407085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698592, -0.067173, -0.712360,
		0.463109, 0.716477, -0.521719,
		0.545436, -0.694369, -0.469417,
		36.233150, 32.638660, 52.266262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718235, 33.232422, 51.907902>,  <35.851345, 33.124718, 52.594852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718235, 33.232422, 51.907902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851242, 32.856270, 51.936516>,  <35.931046, 32.630577, 51.953686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851242, 32.856270, 51.936516>,  <35.718235, 33.232422, 51.907902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851242, 32.856270, 51.936516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561073, -0.258220, -0.786461,
		0.758044, 0.221376, -0.613484,
		0.332517, -0.940380, 0.071534,
		35.950996, 32.574154, 51.957977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021858, 33.008492, 51.268951>,  <35.718235, 33.232422, 51.907902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021858, 33.008492, 51.268951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917332, 32.670208, 51.455067>,  <35.854618, 32.467236, 51.566734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917332, 32.670208, 51.455067>,  <36.021858, 33.008492, 51.268951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917332, 32.670208, 51.455067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440436, -0.324459, -0.837103,
		0.858913, -0.423672, -0.287697,
		-0.261312, -0.845711, 0.465283,
		35.838940, 32.416496, 51.594650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133472, 32.511379, 50.822887>,  <36.021858, 33.008492, 51.268951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133472, 32.511379, 50.822887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828072, 32.423428, 51.065777>,  <35.644833, 32.370655, 51.211510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828072, 32.423428, 51.065777>,  <36.133472, 32.511379, 50.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828072, 32.423428, 51.065777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614170, -0.043478, -0.787975,
		0.199663, -0.974557, -0.101850,
		-0.763498, -0.219883, 0.607225,
		35.599022, 32.357464, 51.247944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887554, 31.801411, 50.861862>,  <36.133472, 32.511379, 50.822887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887554, 31.801411, 50.861862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578384, 32.050644, 50.909779>,  <35.392883, 32.200184, 50.938530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578384, 32.050644, 50.909779>,  <35.887554, 31.801411, 50.861862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578384, 32.050644, 50.909779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383064, -0.307737, -0.870953,
		-0.505811, -0.719073, 0.476539,
		-0.772928, 0.623083, 0.119795,
		35.346504, 32.237568, 50.945717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159756, 31.431501, 50.722305>,  <35.887554, 31.801411, 50.861862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159756, 31.431501, 50.722305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147011, 31.819214, 50.624752>,  <35.139366, 32.051842, 50.566219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147011, 31.819214, 50.624752>,  <35.159756, 31.431501, 50.722305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147011, 31.819214, 50.624752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007890, -0.244244, -0.969682,
		-0.999461, -0.028970, 0.015429,
		-0.031860, 0.969281, -0.243883,
		35.137451, 32.109997, 50.551586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748352, 31.472820, 50.151291>,  <35.159756, 31.431501, 50.722305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748352, 31.472820, 50.151291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981590, 31.797657, 50.142345>,  <35.121532, 31.992559, 50.136978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981590, 31.797657, 50.142345>,  <34.748352, 31.472820, 50.151291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981590, 31.797657, 50.142345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129839, -0.120336, -0.984206,
		-0.801959, 0.570985, -0.175609,
		0.583099, 0.812093, -0.022368,
		35.156521, 32.041286, 50.135635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404392, 32.077045, 49.750107>,  <34.748352, 31.472820, 50.151291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404392, 32.077045, 49.750107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802391, 32.114941, 49.737427>,  <35.041191, 32.137676, 49.729820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802391, 32.114941, 49.737427>,  <34.404392, 32.077045, 49.750107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802391, 32.114941, 49.737427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033530, 0.017775, -0.999280,
		-0.094103, 0.995344, 0.020862,
		0.994998, 0.094734, -0.031701,
		35.100891, 32.143360, 49.727917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621231, 32.323059, 49.112667>,  <34.404392, 32.077045, 49.750107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621231, 32.323059, 49.112667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979839, 32.175770, 49.211182>,  <35.195004, 32.087395, 49.270290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979839, 32.175770, 49.211182>,  <34.621231, 32.323059, 49.112667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979839, 32.175770, 49.211182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247057, -0.045869, -0.967915,
		0.367704, 0.928606, 0.049849,
		0.896525, -0.368222, 0.246285,
		35.248798, 32.065304, 49.285069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120502, 32.703945, 48.713120>,  <34.621231, 32.323059, 49.112667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120502, 32.703945, 48.713120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329639, 32.378201, 48.813881>,  <35.455120, 32.182755, 48.874340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329639, 32.378201, 48.813881>,  <35.120502, 32.703945, 48.713120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329639, 32.378201, 48.813881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385636, -0.037577, -0.921885,
		0.760211, 0.579144, 0.294399,
		0.522842, -0.814358, 0.251906,
		35.486492, 32.133892, 48.889454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814964, 32.856827, 48.443314>,  <35.120502, 32.703945, 48.713120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814964, 32.856827, 48.443314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803822, 32.461952, 48.506149>,  <35.797134, 32.225025, 48.543850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803822, 32.461952, 48.506149>,  <35.814964, 32.856827, 48.443314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803822, 32.461952, 48.506149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650135, -0.137268, -0.747316,
		0.759307, 0.081310, 0.645632,
		-0.027861, -0.987191, 0.157091,
		35.795464, 32.165794, 48.553276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437180, 32.590992, 48.585361>,  <35.814964, 32.856827, 48.443314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437180, 32.590992, 48.585361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229473, 32.294323, 48.415524>,  <36.104851, 32.116322, 48.313622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229473, 32.294323, 48.415524>,  <36.437180, 32.590992, 48.585361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229473, 32.294323, 48.415524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620603, 0.014327, -0.783994,
		0.587553, -0.670605, 0.452847,
		-0.519262, -0.741676, -0.424598,
		36.073696, 32.071819, 48.288143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954842, 32.257843, 48.253113>,  <36.437180, 32.590992, 48.585361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954842, 32.257843, 48.253113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619316, 32.136902, 48.072021>,  <36.417999, 32.064335, 47.963367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619316, 32.136902, 48.072021>,  <36.954842, 32.257843, 48.253113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619316, 32.136902, 48.072021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487334, -0.046336, -0.871985,
		0.242674, -0.952068, 0.186217,
		-0.838817, -0.302358, -0.452731,
		36.367672, 32.046196, 47.936203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166782, 31.782433, 47.674778>,  <36.954842, 32.257843, 48.253113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166782, 31.782433, 47.674778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787117, 31.865547, 47.580193>,  <36.559319, 31.915417, 47.523441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787117, 31.865547, 47.580193>,  <37.166782, 31.782433, 47.674778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787117, 31.865547, 47.580193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219003, -0.103684, -0.970200,
		-0.226113, -0.972663, 0.052906,
		-0.949163, 0.207788, -0.236461,
		36.502369, 31.927883, 47.509254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047031, 31.342690, 47.062366>,  <37.166782, 31.782433, 47.674778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047031, 31.342690, 47.062366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748302, 31.607815, 47.040699>,  <36.569065, 31.766890, 47.027699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748302, 31.607815, 47.040699>,  <37.047031, 31.342690, 47.062366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748302, 31.607815, 47.040699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061848, -0.011874, -0.998015,
		-0.662141, -0.748691, -0.032126,
		-0.746823, 0.662813, -0.054168,
		36.524254, 31.806658, 47.024448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683353, 31.092079, 46.520542>,  <37.047031, 31.342690, 47.062366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683353, 31.092079, 46.520542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550579, 31.468374, 46.548328>,  <36.470913, 31.694151, 46.565002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550579, 31.468374, 46.548328>,  <36.683353, 31.092079, 46.520542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550579, 31.468374, 46.548328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201061, 0.001393, -0.979578,
		-0.921624, -0.339127, 0.188683,
		-0.331939, 0.940740, 0.069469,
		36.450996, 31.750597, 46.569168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072895, 31.141300, 46.096951>,  <36.683353, 31.092079, 46.520542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072895, 31.141300, 46.096951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186718, 31.518623, 46.165302>,  <36.255013, 31.745016, 46.206314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186718, 31.518623, 46.165302>,  <36.072895, 31.141300, 46.096951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186718, 31.518623, 46.165302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171042, 0.225344, -0.959148,
		-0.943277, 0.243705, 0.225468,
		0.284557, 0.943307, 0.170879,
		36.272083, 31.801615, 46.216564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514778, 31.618740, 45.876076>,  <36.072895, 31.141300, 46.096951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514778, 31.618740, 45.876076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865261, 31.810823, 45.859734>,  <36.075550, 31.926073, 45.849926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865261, 31.810823, 45.859734>,  <35.514778, 31.618740, 45.876076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865261, 31.810823, 45.859734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175449, 0.238867, -0.955071,
		-0.448872, 0.844004, 0.293548,
		0.876203, 0.480208, -0.040859,
		36.128120, 31.954885, 45.847477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429123, 32.210800, 45.561604>,  <35.514778, 31.618740, 45.876076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429123, 32.210800, 45.561604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818008, 32.138599, 45.501968>,  <36.051338, 32.095280, 45.466187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818008, 32.138599, 45.501968>,  <35.429123, 32.210800, 45.561604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818008, 32.138599, 45.501968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107366, 0.222151, -0.969083,
		0.208040, 0.958159, 0.196597,
		0.972210, -0.180500, -0.149089,
		36.109673, 32.084450, 45.457241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707775, 32.800938, 45.216778>,  <35.429123, 32.210800, 45.561604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707775, 32.800938, 45.216778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968430, 32.510925, 45.127609>,  <36.124821, 32.336918, 45.074108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968430, 32.510925, 45.127609>,  <35.707775, 32.800938, 45.216778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968430, 32.510925, 45.127609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104721, 0.205085, -0.973126,
		0.751269, 0.657468, 0.057714,
		0.651635, -0.725036, -0.222925,
		36.163921, 32.293415, 45.060730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972637, 33.001637, 44.607136>,  <35.707775, 32.800938, 45.216778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972637, 33.001637, 44.607136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127316, 32.632858, 44.598324>,  <36.220123, 32.411591, 44.593037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127316, 32.632858, 44.598324>,  <35.972637, 33.001637, 44.607136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127316, 32.632858, 44.598324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166314, 0.093211, -0.981657,
		0.907088, 0.375935, 0.189376,
		0.386692, -0.921946, -0.022027,
		36.243324, 32.356274, 44.591717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582520, 32.945034, 44.151108>,  <35.972637, 33.001637, 44.607136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582520, 32.945034, 44.151108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410210, 32.584526, 44.169636>,  <36.306824, 32.368221, 44.180752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410210, 32.584526, 44.169636>,  <36.582520, 32.945034, 44.151108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410210, 32.584526, 44.169636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134172, 0.013208, -0.990870,
		0.892432, -0.433052, -0.126616,
		-0.430771, -0.901272, 0.046316,
		36.280979, 32.314144, 44.183529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892899, 32.434574, 43.550476>,  <36.582520, 32.945034, 44.151108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892899, 32.434574, 43.550476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547089, 32.273533, 43.670811>,  <36.339603, 32.176907, 43.743011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547089, 32.273533, 43.670811>,  <36.892899, 32.434574, 43.550476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547089, 32.273533, 43.670811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292993, -0.082618, -0.952538,
		0.408350, -0.911638, -0.046535,
		-0.864526, -0.402604, 0.300840,
		36.287731, 32.152752, 43.761063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744602, 31.787991, 43.159077>,  <36.892899, 32.434574, 43.550476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744602, 31.787991, 43.159077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389606, 31.921974, 43.285667>,  <36.176609, 32.002365, 43.361622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389606, 31.921974, 43.285667>,  <36.744602, 31.787991, 43.159077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389606, 31.921974, 43.285667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369689, -0.107528, -0.922912,
		-0.275109, -0.936077, 0.219262,
		-0.887494, 0.334960, 0.316476,
		36.123360, 32.022461, 43.380611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305870, 31.248684, 42.917027>,  <36.744602, 31.787991, 43.159077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305870, 31.248684, 42.917027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060528, 31.552568, 43.003403>,  <35.913322, 31.734900, 43.055229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060528, 31.552568, 43.003403>,  <36.305870, 31.248684, 42.917027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060528, 31.552568, 43.003403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482526, -0.144002, -0.863963,
		-0.625267, -0.634116, 0.454905,
		-0.613359, 0.759711, 0.215938,
		35.876518, 31.780481, 43.068184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579163, 30.921406, 42.725185>,  <36.305870, 31.248684, 42.917027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579163, 30.921406, 42.725185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550762, 31.320393, 42.723309>,  <35.533722, 31.559784, 42.722183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550762, 31.320393, 42.723309>,  <35.579163, 30.921406, 42.725185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550762, 31.320393, 42.723309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488193, -0.038850, -0.871871,
		-0.869843, -0.059613, 0.489714,
		-0.071000, 0.997465, -0.004690,
		35.529461, 31.619633, 42.721901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961502, 31.070803, 42.603184>,  <35.579163, 30.921406, 42.725185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961502, 31.070803, 42.603184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116909, 31.421539, 42.489906>,  <35.210155, 31.631981, 42.421940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116909, 31.421539, 42.489906>,  <34.961502, 31.070803, 42.603184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116909, 31.421539, 42.489906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604395, 0.010514, -0.796615,
		-0.695528, 0.480664, 0.534044,
		0.388519, 0.876842, -0.283198,
		35.233463, 31.684591, 42.404945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429276, 31.462027, 42.640060>,  <34.961502, 31.070803, 42.603184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429276, 31.462027, 42.640060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694687, 31.627811, 42.390919>,  <34.853935, 31.727282, 42.241432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694687, 31.627811, 42.390919>,  <34.429276, 31.462027, 42.640060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694687, 31.627811, 42.390919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739291, 0.235476, -0.630873,
		-0.114803, 0.879075, 0.462652,
		0.663528, 0.414461, -0.622859,
		34.893745, 31.752150, 42.204060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198696, 32.166008, 42.359951>,  <34.429276, 31.462027, 42.640060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198696, 32.166008, 42.359951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475304, 32.081650, 42.083599>,  <34.641270, 32.031036, 41.917786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475304, 32.081650, 42.083599>,  <34.198696, 32.166008, 42.359951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475304, 32.081650, 42.083599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607517, 0.347631, -0.714195,
		0.390792, 0.913606, 0.112273,
		0.691523, -0.210894, -0.690883,
		34.682762, 32.018383, 41.876335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190552, 32.744942, 41.854610>,  <34.198696, 32.166008, 42.359951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190552, 32.744942, 41.854610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396641, 32.459232, 41.665142>,  <34.520294, 32.287807, 41.551460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396641, 32.459232, 41.665142>,  <34.190552, 32.744942, 41.854610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396641, 32.459232, 41.665142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383179, 0.302381, -0.872777,
		0.766626, 0.631177, -0.117899,
		0.515227, -0.714269, -0.473667,
		34.551208, 32.244953, 41.523041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566769, 33.071777, 41.248734>,  <34.190552, 32.744942, 41.854610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566769, 33.071777, 41.248734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539890, 32.683212, 41.157658>,  <34.523762, 32.450073, 41.103012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539890, 32.683212, 41.157658>,  <34.566769, 33.071777, 41.248734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539890, 32.683212, 41.157658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357562, 0.236494, -0.903449,
		0.931469, 0.020703, -0.363232,
		-0.067198, -0.971412, -0.227689,
		34.519730, 32.391788, 41.089352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812668, 32.996811, 40.573570>,  <34.566769, 33.071777, 41.248734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812668, 32.996811, 40.573570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592361, 32.669388, 40.638832>,  <34.460178, 32.472935, 40.677990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592361, 32.669388, 40.638832>,  <34.812668, 32.996811, 40.573570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592361, 32.669388, 40.638832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447331, 0.124454, -0.885667,
		0.704664, -0.560781, -0.434711,
		-0.550767, -0.818557, 0.163157,
		34.427132, 32.423820, 40.687778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855942, 32.555050, 39.942898>,  <34.812668, 32.996811, 40.573570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855942, 32.555050, 39.942898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525517, 32.452755, 40.143784>,  <34.327263, 32.391376, 40.264313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525517, 32.452755, 40.143784>,  <34.855942, 32.555050, 39.942898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525517, 32.452755, 40.143784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544189, 0.130225, -0.828794,
		0.146567, -0.957931, -0.246752,
		-0.826061, -0.255753, 0.502208,
		34.277699, 32.376034, 40.294449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485561, 32.237358, 39.444256>,  <34.855942, 32.555050, 39.942898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485561, 32.237358, 39.444256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207214, 32.278568, 39.728550>,  <34.040207, 32.303295, 39.899128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207214, 32.278568, 39.728550>,  <34.485561, 32.237358, 39.444256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207214, 32.278568, 39.728550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696732, 0.143134, -0.702906,
		-0.174148, -0.984326, -0.027823,
		-0.695872, 0.103024, 0.710738,
		33.998451, 32.309475, 39.941772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953041, 31.672333, 39.488255>,  <34.485561, 32.237358, 39.444256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953041, 31.672333, 39.488255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831200, 32.039577, 39.589676>,  <33.758095, 32.259926, 39.650528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831200, 32.039577, 39.589676>,  <33.953041, 31.672333, 39.488255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831200, 32.039577, 39.589676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595797, 0.024038, -0.802775,
		-0.743132, -0.395593, 0.539686,
		-0.304599, 0.918111, 0.253556,
		33.739819, 32.315010, 39.665745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310623, 31.518528, 39.459564>,  <33.953041, 31.672333, 39.488255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310623, 31.518528, 39.459564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333153, 31.917877, 39.463135>,  <33.346672, 32.157486, 39.465279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333153, 31.917877, 39.463135>,  <33.310623, 31.518528, 39.459564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333153, 31.917877, 39.463135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634556, 0.042700, -0.771697,
		-0.770822, 0.037803, 0.635928,
		0.056327, 0.998373, 0.008925,
		33.350052, 32.217388, 39.465813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582142, 31.788561, 39.339462>,  <33.310623, 31.518528, 39.459564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582142, 31.788561, 39.339462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798172, 32.106579, 39.229027>,  <32.927788, 32.297390, 39.162766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798172, 32.106579, 39.229027>,  <32.582142, 31.788561, 39.339462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798172, 32.106579, 39.229027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575090, 0.109100, -0.810783,
		-0.614486, 0.596660, 0.516143,
		0.540074, 0.795043, -0.276093,
		32.960194, 32.345093, 39.146198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153885, 32.358799, 39.050655>,  <32.582142, 31.788561, 39.339462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153885, 32.358799, 39.050655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523838, 32.454708, 38.932598>,  <32.745808, 32.512253, 38.861763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523838, 32.454708, 38.932598>,  <32.153885, 32.358799, 39.050655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523838, 32.454708, 38.932598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364161, 0.335017, -0.868994,
		-0.109479, 0.911194, 0.397165,
		0.924879, 0.239769, -0.295144,
		32.801300, 32.526638, 38.844055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108665, 33.131577, 38.691975>,  <32.153885, 32.358799, 39.050655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108665, 33.131577, 38.691975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460205, 32.984695, 38.570137>,  <32.671131, 32.896568, 38.497032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460205, 32.984695, 38.570137>,  <32.108665, 33.131577, 38.691975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460205, 32.984695, 38.570137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142934, 0.406465, -0.902417,
		0.455179, 0.836629, 0.304737,
		0.878853, -0.367204, -0.304597,
		32.723862, 32.874535, 38.478760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324146, 33.685333, 38.366261>,  <32.108665, 33.131577, 38.691975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324146, 33.685333, 38.366261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554810, 33.386337, 38.234371>,  <32.693207, 33.206940, 38.155235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554810, 33.386337, 38.234371>,  <32.324146, 33.685333, 38.366261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554810, 33.386337, 38.234371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079711, 0.350188, -0.933282,
		0.813090, 0.564465, 0.142354,
		0.576655, -0.747494, -0.329728,
		32.727806, 33.162090, 38.135452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775909, 33.867897, 37.860275>,  <32.324146, 33.685333, 38.366261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775909, 33.867897, 37.860275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771954, 33.479355, 37.765308>,  <32.769581, 33.246231, 37.708328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771954, 33.479355, 37.765308>,  <32.775909, 33.867897, 37.860275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771954, 33.479355, 37.765308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078813, 0.235938, -0.968567,
		0.996840, -0.028290, 0.074222,
		-0.009889, -0.971356, -0.237422,
		32.768986, 33.187946, 37.694080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406765, 33.822456, 37.381699>,  <32.775909, 33.867897, 37.860275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406765, 33.822456, 37.381699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194435, 33.489883, 37.316044>,  <33.067036, 33.290340, 37.276649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194435, 33.489883, 37.316044>,  <33.406765, 33.822456, 37.381699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194435, 33.489883, 37.316044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122273, 0.116514, -0.985634,
		0.838616, -0.543267, 0.039813,
		-0.530824, -0.831436, -0.164137,
		33.035187, 33.240452, 37.266804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786243, 33.260208, 37.108246>,  <33.406765, 33.822456, 37.381699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786243, 33.260208, 37.108246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409981, 33.235207, 36.974827>,  <33.184223, 33.220207, 36.894775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409981, 33.235207, 36.974827>,  <33.786243, 33.260208, 37.108246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409981, 33.235207, 36.974827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328889, 0.074314, -0.941440,
		0.083642, -0.995274, -0.049344,
		-0.940658, -0.062515, -0.333550,
		33.127785, 33.216454, 36.874763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742691, 33.417362, 36.313881>,  <33.786243, 33.260208, 37.108246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742691, 33.417362, 36.313881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343864, 33.386745, 36.312790>,  <33.104568, 33.368378, 36.312134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343864, 33.386745, 36.312790>,  <33.742691, 33.417362, 36.313881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343864, 33.386745, 36.312790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016035, 0.243476, -0.969774,
		0.074890, -0.966882, -0.243988,
		-0.997063, -0.076538, -0.002730,
		33.044746, 33.363785, 36.311970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283875, 32.865776, 36.232662>,  <33.742691, 33.417362, 36.313881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283875, 32.865776, 36.232662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532131, 32.732597, 35.948708>,  <34.681087, 32.652691, 35.778336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532131, 32.732597, 35.948708>,  <34.283875, 32.865776, 36.232662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532131, 32.732597, 35.948708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589851, -0.398241, 0.702481,
		-0.516599, -0.854721, -0.050776,
		0.620646, -0.332950, -0.709889,
		34.718327, 32.632713, 35.735741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548370, 32.284908, 36.496391>,  <34.283875, 32.865776, 36.232662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548370, 32.284908, 36.496391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825085, 32.376801, 36.222557>,  <34.991112, 32.431934, 36.058258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825085, 32.376801, 36.222557>,  <34.548370, 32.284908, 36.496391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825085, 32.376801, 36.222557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720734, -0.278043, 0.635007,
		-0.044463, -0.932693, -0.357921,
		0.691784, 0.229732, -0.684586,
		35.032619, 32.445721, 36.017181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070503, 31.715425, 36.544563>,  <34.548370, 32.284908, 36.496391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070503, 31.715425, 36.544563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253708, 32.037426, 36.393730>,  <35.363632, 32.230625, 36.303230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253708, 32.037426, 36.393730>,  <35.070503, 31.715425, 36.544563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253708, 32.037426, 36.393730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762834, -0.138133, 0.631667,
		0.456404, -0.576968, -0.677350,
		0.458016, 0.805001, -0.377087,
		35.391113, 32.278927, 36.280605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720093, 31.531601, 36.630756>,  <35.070503, 31.715425, 36.544563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720093, 31.531601, 36.630756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735527, 31.923042, 36.549911>,  <35.744789, 32.157906, 36.501404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735527, 31.923042, 36.549911>,  <35.720093, 31.531601, 36.630756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735527, 31.923042, 36.549911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649634, 0.129120, 0.749202,
		0.759268, -0.160206, -0.630751,
		0.038584, 0.978602, -0.202112,
		35.747101, 32.216621, 36.489277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368706, 31.659008, 36.427036>,  <35.720093, 31.531601, 36.630756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368706, 31.659008, 36.427036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199081, 31.998220, 36.554169>,  <36.097305, 32.201748, 36.630447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199081, 31.998220, 36.554169>,  <36.368706, 31.659008, 36.427036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199081, 31.998220, 36.554169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675048, 0.062036, 0.735161,
		0.603722, 0.526304, -0.598768,
		-0.424064, 0.848030, 0.317828,
		36.071861, 32.252628, 36.649517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853569, 32.223885, 36.319408>,  <36.368706, 31.659008, 36.427036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853569, 32.223885, 36.319408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591774, 32.321674, 36.605591>,  <36.434696, 32.380348, 36.777298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591774, 32.321674, 36.605591>,  <36.853569, 32.223885, 36.319408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591774, 32.321674, 36.605591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747355, 0.065927, 0.661146,
		0.114468, 0.967411, -0.225860,
		-0.654490, 0.244478, 0.715453,
		36.395428, 32.395020, 36.820229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212318, 32.709927, 36.705914>,  <36.853569, 32.223885, 36.319408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212318, 32.709927, 36.705914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904568, 32.610195, 36.941162>,  <36.719917, 32.550354, 37.082310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904568, 32.610195, 36.941162>,  <37.212318, 32.709927, 36.705914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904568, 32.610195, 36.941162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592935, 0.063789, 0.802719,
		-0.237660, 0.966315, 0.098760,
		-0.769380, -0.249332, 0.588122,
		36.673752, 32.535397, 37.117599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270264, 33.204800, 37.220383>,  <37.212318, 32.709927, 36.705914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270264, 33.204800, 37.220383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055679, 32.903889, 37.373375>,  <36.926929, 32.723343, 37.465168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055679, 32.903889, 37.373375>,  <37.270264, 33.204800, 37.220383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055679, 32.903889, 37.373375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471166, 0.109019, 0.875281,
		-0.700153, 0.649762, 0.295965,
		-0.536458, -0.752280, 0.382476,
		36.894741, 32.678204, 37.488117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150036, 33.427181, 37.877796>,  <37.270264, 33.204800, 37.220383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150036, 33.427181, 37.877796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065598, 33.037083, 37.904137>,  <37.014935, 32.803024, 37.919941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065598, 33.037083, 37.904137>,  <37.150036, 33.427181, 37.877796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065598, 33.037083, 37.904137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405930, -0.026183, 0.913529,
		-0.889189, 0.219577, 0.401408,
		-0.211100, -0.975244, 0.065852,
		37.002266, 32.744511, 37.923893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962940, 33.407532, 38.557133>,  <37.150036, 33.427181, 37.877796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962940, 33.407532, 38.557133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060234, 33.030407, 38.465961>,  <37.118610, 32.804134, 38.411259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060234, 33.030407, 38.465961>,  <36.962940, 33.407532, 38.557133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060234, 33.030407, 38.465961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483665, -0.085792, 0.871038,
		-0.840776, -0.322106, 0.435136,
		0.243235, -0.942808, -0.227923,
		37.133205, 32.747566, 38.397583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645374, 32.926056, 39.043484>,  <36.962940, 33.407532, 38.557133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645374, 32.926056, 39.043484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968212, 32.753609, 38.882122>,  <37.161915, 32.650143, 38.785305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968212, 32.753609, 38.882122>,  <36.645374, 32.926056, 39.043484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968212, 32.753609, 38.882122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409491, -0.083481, 0.908487,
		-0.425339, -0.898427, 0.109161,
		0.807096, -0.431115, -0.403405,
		37.210342, 32.624275, 38.761101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746948, 32.334606, 39.465130>,  <36.645374, 32.926056, 39.043484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746948, 32.334606, 39.465130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100319, 32.320042, 39.278267>,  <37.312340, 32.311302, 39.166149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100319, 32.320042, 39.278267>,  <36.746948, 32.334606, 39.465130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100319, 32.320042, 39.278267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464255, -0.067056, 0.883160,
		-0.063482, -0.997084, -0.042335,
		0.883424, -0.036411, -0.467158,
		37.365345, 32.309120, 39.138119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163334, 31.802795, 39.710228>,  <36.746948, 32.334606, 39.465130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163334, 31.802795, 39.710228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406399, 32.084095, 39.562614>,  <37.552238, 32.252876, 39.474049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406399, 32.084095, 39.562614>,  <37.163334, 31.802795, 39.710228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406399, 32.084095, 39.562614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586409, -0.083937, 0.805654,
		0.535601, -0.705970, -0.463398,
		0.607664, 0.703250, -0.369031,
		37.588699, 32.295071, 39.451904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672092, 31.306713, 39.565369>,  <37.163334, 31.802795, 39.710228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672092, 31.306713, 39.565369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777874, 31.683159, 39.649620>,  <37.841343, 31.909027, 39.700172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777874, 31.683159, 39.649620>,  <37.672092, 31.306713, 39.565369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777874, 31.683159, 39.649620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502376, -0.320870, 0.802908,
		0.823214, -0.106518, -0.557649,
		0.264457, 0.941114, 0.210633,
		37.857212, 31.965492, 39.712811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286205, 31.200075, 39.847080>,  <37.672092, 31.306713, 39.565369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286205, 31.200075, 39.847080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242455, 31.583427, 39.952564>,  <38.216206, 31.813438, 40.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242455, 31.583427, 39.952564>,  <38.286205, 31.200075, 39.847080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242455, 31.583427, 39.952564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379894, -0.204855, 0.902062,
		0.918541, 0.198847, -0.341676,
		-0.109378, 0.958381, 0.263709,
		38.209641, 31.870941, 40.031677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827900, 31.387213, 40.180187>,  <38.286205, 31.200075, 39.847080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827900, 31.387213, 40.180187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573586, 31.662313, 40.320343>,  <38.420998, 31.827374, 40.404438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573586, 31.662313, 40.320343>,  <38.827900, 31.387213, 40.180187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573586, 31.662313, 40.320343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372314, -0.124393, 0.919733,
		0.676133, 0.715210, -0.176971,
		-0.635788, 0.687751, 0.350389,
		38.382851, 31.868639, 40.425461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198414, 31.677025, 40.713444>,  <38.827900, 31.387213, 40.180187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198414, 31.677025, 40.713444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829132, 31.811037, 40.788761>,  <38.607563, 31.891445, 40.833950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829132, 31.811037, 40.788761>,  <39.198414, 31.677025, 40.713444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829132, 31.811037, 40.788761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069569, -0.336164, 0.939231,
		0.377969, 0.880198, 0.287039,
		-0.923201, 0.335031, 0.188294,
		38.552174, 31.911547, 40.845249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199673, 32.115131, 41.169624>,  <39.198414, 31.677025, 40.713444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199673, 32.115131, 41.169624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819206, 31.997963, 41.208572>,  <38.590927, 31.927662, 41.231941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819206, 31.997963, 41.208572>,  <39.199673, 32.115131, 41.169624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819206, 31.997963, 41.208572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179675, -0.268902, 0.946260,
		-0.250998, 0.917545, 0.308401,
		-0.951166, -0.292922, 0.097366,
		38.533855, 31.910086, 41.237782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044624, 32.427986, 41.848606>,  <39.199673, 32.115131, 41.169624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044624, 32.427986, 41.848606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763332, 32.157249, 41.761562>,  <38.594555, 31.994808, 41.709335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763332, 32.157249, 41.761562>,  <39.044624, 32.427986, 41.848606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763332, 32.157249, 41.761562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082278, -0.226539, 0.970521,
		-0.706181, 0.700408, 0.103621,
		-0.703235, -0.676837, -0.217606,
		38.552361, 31.954199, 41.696281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423691, 32.543087, 42.300537>,  <39.044624, 32.427986, 41.848606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423691, 32.543087, 42.300537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391235, 32.166050, 42.170967>,  <38.371761, 31.939827, 42.093224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391235, 32.166050, 42.170967>,  <38.423691, 32.543087, 42.300537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391235, 32.166050, 42.170967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021116, -0.326551, 0.944943,
		-0.996479, 0.069832, 0.046400,
		-0.081139, -0.942596, -0.323927,
		38.366894, 31.883270, 42.073788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852413, 32.208988, 42.649284>,  <38.423691, 32.543087, 42.300537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852413, 32.208988, 42.649284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070610, 31.894566, 42.532970>,  <38.201530, 31.705914, 42.463181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070610, 31.894566, 42.532970>,  <37.852413, 32.208988, 42.649284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070610, 31.894566, 42.532970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085581, -0.292898, 0.952306,
		-0.833733, -0.544364, -0.092504,
		0.545495, -0.786053, -0.290786,
		38.234261, 31.658751, 42.445736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517654, 31.623772, 42.975796>,  <37.852413, 32.208988, 42.649284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517654, 31.623772, 42.975796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900238, 31.525724, 42.912430>,  <38.129787, 31.466896, 42.874409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900238, 31.525724, 42.912430>,  <37.517654, 31.623772, 42.975796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900238, 31.525724, 42.912430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083150, -0.291437, 0.952970,
		-0.279754, -0.924654, -0.258368,
		0.956465, -0.245113, -0.158415,
		38.187176, 31.452190, 42.864906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616993, 30.957340, 43.306160>,  <37.517654, 31.623772, 42.975796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616993, 30.957340, 43.306160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983307, 31.115271, 43.276634>,  <38.203094, 31.210030, 43.258919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983307, 31.115271, 43.276634>,  <37.616993, 30.957340, 43.306160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983307, 31.115271, 43.276634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189861, -0.263563, 0.945773,
		0.353963, -0.880140, -0.316329,
		0.915785, 0.394828, -0.073813,
		38.258041, 31.233719, 43.254490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998528, 30.525063, 43.689053>,  <37.616993, 30.957340, 43.306160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998528, 30.525063, 43.689053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217903, 30.858990, 43.669903>,  <38.349529, 31.059345, 43.658413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217903, 30.858990, 43.669903>,  <37.998528, 30.525063, 43.689053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217903, 30.858990, 43.669903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311396, -0.150771, 0.938244,
		0.776044, -0.529480, -0.342647,
		0.548442, 0.834817, -0.047873,
		38.382435, 31.109434, 43.655540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584435, 30.453041, 44.110470>,  <37.998528, 30.525063, 43.689053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584435, 30.453041, 44.110470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562805, 30.849865, 44.065056>,  <38.549828, 31.087959, 44.037807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562805, 30.849865, 44.065056>,  <38.584435, 30.453041, 44.110470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562805, 30.849865, 44.065056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291040, 0.124426, 0.948585,
		0.955182, 0.018252, -0.295458,
		-0.054077, 0.992061, -0.113537,
		38.546581, 31.147484, 44.030994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292301, 30.779980, 44.415653>,  <38.584435, 30.453041, 44.110470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292301, 30.779980, 44.415653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008423, 31.061308, 44.432011>,  <38.838097, 31.230104, 44.441826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008423, 31.061308, 44.432011>,  <39.292301, 30.779980, 44.415653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008423, 31.061308, 44.432011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235416, 0.182039, 0.954694,
		0.664012, 0.687169, -0.294765,
		-0.709695, 0.703321, 0.040894,
		38.795513, 31.272305, 44.444279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621277, 31.265499, 44.836426>,  <39.292301, 30.779980, 44.415653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621277, 31.265499, 44.836426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242386, 31.393730, 44.836189>,  <39.015053, 31.470669, 44.836048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242386, 31.393730, 44.836189>,  <39.621277, 31.265499, 44.836426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242386, 31.393730, 44.836189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120889, 0.358891, 0.925518,
		0.296909, 0.876601, -0.378704,
		-0.947223, 0.320576, -0.000587,
		38.958218, 31.489902, 44.836014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660622, 31.957607, 45.066845>,  <39.621277, 31.265499, 44.836426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660622, 31.957607, 45.066845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287308, 31.846050, 45.157356>,  <39.063320, 31.779116, 45.211662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287308, 31.846050, 45.157356>,  <39.660622, 31.957607, 45.066845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287308, 31.846050, 45.157356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158104, 0.246666, 0.956117,
		-0.322469, 0.928103, -0.186115,
		-0.933283, -0.278892, 0.226279,
		39.007324, 31.762383, 45.225239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337456, 32.508183, 45.484840>,  <39.660622, 31.957607, 45.066845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337456, 32.508183, 45.484840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085842, 32.206253, 45.559196>,  <38.934872, 32.025097, 45.603809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085842, 32.206253, 45.559196>,  <39.337456, 32.508183, 45.484840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085842, 32.206253, 45.559196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136482, 0.342647, 0.929497,
		-0.765301, 0.559317, -0.318557,
		-0.629036, -0.754823, 0.185892,
		38.897133, 31.979807, 45.614964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767902, 32.815800, 45.845081>,  <39.337456, 32.508183, 45.484840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767902, 32.815800, 45.845081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773098, 32.425556, 45.932739>,  <38.776215, 32.191410, 45.985332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773098, 32.425556, 45.932739>,  <38.767902, 32.815800, 45.845081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773098, 32.425556, 45.932739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237792, 0.209864, 0.948373,
		-0.971229, -0.064425, -0.229266,
		0.012985, -0.975606, 0.219146,
		38.776993, 32.132874, 45.998482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185783, 32.677677, 46.320164>,  <38.767902, 32.815800, 45.845081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185783, 32.677677, 46.320164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417923, 32.355526, 46.368420>,  <38.557205, 32.162235, 46.397373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417923, 32.355526, 46.368420>,  <38.185783, 32.677677, 46.320164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417923, 32.355526, 46.368420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249528, -0.034848, 0.967740,
		-0.775196, -0.591731, -0.221190,
		0.580350, -0.805382, 0.120640,
		38.592030, 32.113911, 46.404613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765366, 32.252502, 46.739929>,  <38.185783, 32.677677, 46.320164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765366, 32.252502, 46.739929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133263, 32.104843, 46.793301>,  <38.354000, 32.016247, 46.825325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133263, 32.104843, 46.793301>,  <37.765366, 32.252502, 46.739929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133263, 32.104843, 46.793301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176931, -0.086446, 0.980420,
		-0.350386, -0.925341, -0.144821,
		0.919742, -0.369149, 0.133432,
		38.409184, 31.994099, 46.833332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696228, 31.626871, 47.195911>,  <37.765366, 32.252502, 46.739929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696228, 31.626871, 47.195911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075272, 31.750360, 47.228722>,  <38.302696, 31.824453, 47.248409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075272, 31.750360, 47.228722>,  <37.696228, 31.626871, 47.195911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075272, 31.750360, 47.228722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067007, -0.058970, 0.996008,
		0.312328, -0.949322, -0.035194,
		0.947609, 0.308723, 0.082029,
		38.359554, 31.842978, 47.253330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978821, 31.277479, 47.863068>,  <37.696228, 31.626871, 47.195911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978821, 31.277479, 47.863068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249245, 31.567097, 47.808365>,  <38.411499, 31.740868, 47.775543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249245, 31.567097, 47.808365>,  <37.978821, 31.277479, 47.863068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249245, 31.567097, 47.808365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169715, 0.027599, 0.985107,
		0.717032, -0.689204, -0.104222,
		0.676063, 0.724041, -0.136758,
		38.452065, 31.784309, 47.767338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370251, 31.162848, 48.414078>,  <37.978821, 31.277479, 47.863068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370251, 31.162848, 48.414078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477272, 31.527849, 48.290302>,  <38.541485, 31.746851, 48.216038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477272, 31.527849, 48.290302>,  <38.370251, 31.162848, 48.414078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477272, 31.527849, 48.290302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253546, 0.243150, 0.936265,
		0.929587, -0.328953, -0.166308,
		0.267549, 0.912506, -0.309434,
		38.557537, 31.801601, 48.197472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052753, 31.316265, 48.714920>,  <38.370251, 31.162848, 48.414078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052753, 31.316265, 48.714920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884449, 31.670767, 48.637440>,  <38.783466, 31.883467, 48.590950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884449, 31.670767, 48.637440>,  <39.052753, 31.316265, 48.714920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884449, 31.670767, 48.637440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293227, 0.334924, 0.895458,
		0.858476, 0.319973, -0.400795,
		-0.420758, 0.886252, -0.193700,
		38.758221, 31.936642, 48.579330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554764, 31.884073, 48.972836>,  <39.052753, 31.316265, 48.714920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554764, 31.884073, 48.972836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181789, 32.027390, 48.954090>,  <38.958004, 32.113380, 48.942844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181789, 32.027390, 48.954090>,  <39.554764, 31.884073, 48.972836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181789, 32.027390, 48.954090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098337, 0.376403, 0.921222,
		0.347702, 0.854371, -0.386204,
		-0.932434, 0.358289, -0.046860,
		38.902058, 32.134876, 48.940033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529671, 32.542961, 49.394302>,  <39.554764, 31.884073, 48.972836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529671, 32.542961, 49.394302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148479, 32.424107, 49.370480>,  <38.919765, 32.352795, 49.356186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148479, 32.424107, 49.370480>,  <39.529671, 32.542961, 49.394302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148479, 32.424107, 49.370480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200007, 0.469058, 0.860222,
		-0.227668, 0.831682, -0.506431,
		-0.952977, -0.297135, -0.059553,
		38.862587, 32.334965, 49.352615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994678, 33.131638, 49.463692>,  <39.529671, 32.542961, 49.394302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994678, 33.131638, 49.463692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826847, 32.786976, 49.577881>,  <38.726147, 32.580177, 49.646393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826847, 32.786976, 49.577881>,  <38.994678, 33.131638, 49.463692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826847, 32.786976, 49.577881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199137, 0.394214, 0.897184,
		-0.885604, 0.319595, -0.336994,
		-0.419583, -0.861658, 0.285474,
		38.700974, 32.528477, 49.663525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106953, 33.822418, 49.713703>,  <38.994678, 33.131638, 49.463692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106953, 33.822418, 49.713703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285275, 34.180122, 49.729477>,  <39.392269, 34.394745, 49.738941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285275, 34.180122, 49.729477>,  <39.106953, 33.822418, 49.713703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285275, 34.180122, 49.729477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074627, 0.081028, -0.993914,
		-0.892015, 0.440147, 0.102859,
		0.445803, 0.894262, 0.039431,
		39.419014, 34.448402, 49.741306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746086, 34.184608, 49.307484>,  <39.106953, 33.822418, 49.713703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746086, 34.184608, 49.307484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074242, 34.411091, 49.339409>,  <39.271133, 34.546982, 49.358566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074242, 34.411091, 49.339409>,  <38.746086, 34.184608, 49.307484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074242, 34.411091, 49.339409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103504, 0.284324, -0.953125,
		-0.562361, 0.773671, 0.291862,
		0.820388, 0.566209, 0.079815,
		39.320358, 34.580952, 49.363354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637989, 34.908737, 49.072556>,  <38.746086, 34.184608, 49.307484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637989, 34.908737, 49.072556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029564, 34.840820, 49.027214>,  <39.264511, 34.800072, 49.000008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029564, 34.840820, 49.027214>,  <38.637989, 34.908737, 49.072556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029564, 34.840820, 49.027214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079736, 0.193169, -0.977920,
		0.187937, 0.966363, 0.175562,
		0.978939, -0.169789, -0.113358,
		39.323246, 34.789883, 48.993206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941536, 35.508984, 48.743809>,  <38.637989, 34.908737, 49.072556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941536, 35.508984, 48.743809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171379, 35.185093, 48.696190>,  <39.309284, 34.990761, 48.667618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171379, 35.185093, 48.696190>,  <38.941536, 35.508984, 48.743809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171379, 35.185093, 48.696190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002870, 0.147451, -0.989065,
		0.818424, 0.567983, 0.087050,
		0.574608, -0.809725, -0.119047,
		39.343761, 34.942177, 48.660477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182049, 35.622650, 48.122505>,  <38.941536, 35.508984, 48.743809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182049, 35.622650, 48.122505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310139, 35.243950, 48.135941>,  <39.386993, 35.016731, 48.144001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310139, 35.243950, 48.135941>,  <39.182049, 35.622650, 48.122505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310139, 35.243950, 48.135941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165240, 0.020909, -0.986032,
		0.932820, 0.321301, 0.163136,
		0.320224, -0.946746, 0.033587,
		39.406204, 34.959927, 48.146015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846500, 35.566757, 47.660843>,  <39.182049, 35.622650, 48.122505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846500, 35.566757, 47.660843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653873, 35.218960, 47.704811>,  <39.538300, 35.010281, 47.731190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653873, 35.218960, 47.704811>,  <39.846500, 35.566757, 47.660843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653873, 35.218960, 47.704811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361702, -0.311414, -0.878745,
		0.798291, -0.383414, 0.464463,
		-0.481564, -0.869491, 0.109917,
		39.509403, 34.958111, 47.737785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313263, 35.024010, 47.423183>,  <39.846500, 35.566757, 47.660843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313263, 35.024010, 47.423183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935017, 34.896542, 47.397064>,  <39.708069, 34.820061, 47.381393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935017, 34.896542, 47.397064>,  <40.313263, 35.024010, 47.423183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935017, 34.896542, 47.397064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140642, -0.219520, -0.965418,
		0.293315, -0.922096, 0.252399,
		-0.945614, -0.318669, -0.065296,
		39.651333, 34.800941, 47.377476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337849, 34.318317, 47.017998>,  <40.313263, 35.024010, 47.423183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337849, 34.318317, 47.017998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969658, 34.471672, 46.987709>,  <39.748745, 34.563686, 46.969536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969658, 34.471672, 46.987709>,  <40.337849, 34.318317, 47.017998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969658, 34.471672, 46.987709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023119, -0.140014, -0.989880,
		-0.390110, -0.912913, 0.120016,
		-0.920478, 0.383387, -0.075726,
		39.693516, 34.586689, 46.964993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952492, 33.840874, 46.661461>,  <40.337849, 34.318317, 47.017998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952492, 33.840874, 46.661461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751766, 34.183231, 46.611458>,  <39.631332, 34.388645, 46.581455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751766, 34.183231, 46.611458>,  <39.952492, 33.840874, 46.661461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751766, 34.183231, 46.611458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119973, -0.212000, -0.969877,
		-0.856617, -0.471696, 0.209068,
		-0.501810, 0.855897, -0.125012,
		39.601223, 34.439999, 46.573956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561378, 33.638233, 46.196445>,  <39.952492, 33.840874, 46.661461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561378, 33.638233, 46.196445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513039, 34.035282, 46.192684>,  <39.484035, 34.273514, 46.190426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513039, 34.035282, 46.192684>,  <39.561378, 33.638233, 46.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513039, 34.035282, 46.192684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019250, -0.011817, -0.999745,
		-0.992485, -0.120636, 0.020536,
		-0.120848, 0.992627, -0.009406,
		39.476784, 34.333069, 46.189861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904373, 33.832058, 45.791176>,  <39.561378, 33.638233, 46.196445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904373, 33.832058, 45.791176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142128, 34.153484, 45.778614>,  <39.284782, 34.346340, 45.771076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142128, 34.153484, 45.778614>,  <38.904373, 33.832058, 45.791176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142128, 34.153484, 45.778614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331071, 0.208925, -0.920186,
		-0.732870, 0.557343, 0.390219,
		0.594386, 0.803567, -0.031405,
		39.320442, 34.394554, 45.769192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476643, 34.323990, 45.514759>,  <38.904373, 33.832058, 45.791176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476643, 34.323990, 45.514759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859432, 34.426876, 45.461021>,  <39.089104, 34.488605, 45.428780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859432, 34.426876, 45.461021>,  <38.476643, 34.323990, 45.514759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859432, 34.426876, 45.461021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177064, 0.150780, -0.972581,
		-0.229904, 0.954519, 0.189835,
		0.956971, 0.257213, -0.134346,
		39.146523, 34.504040, 45.420719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435593, 34.939217, 45.090179>,  <38.476643, 34.323990, 45.514759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435593, 34.939217, 45.090179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808659, 34.797771, 45.061642>,  <39.032497, 34.712906, 45.044518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808659, 34.797771, 45.061642>,  <38.435593, 34.939217, 45.090179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808659, 34.797771, 45.061642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031757, 0.277491, -0.960203,
		0.359334, 0.893286, 0.270037,
		0.932669, -0.353609, -0.071344,
		39.088459, 34.691689, 45.040237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663509, 35.356342, 44.536324>,  <38.435593, 34.939217, 45.090179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663509, 35.356342, 44.536324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952435, 35.081459, 44.567348>,  <39.125790, 34.916531, 44.585964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952435, 35.081459, 44.567348>,  <38.663509, 35.356342, 44.536324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952435, 35.081459, 44.567348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257586, 0.163260, -0.952363,
		0.641809, 0.707878, 0.294939,
		0.722309, -0.687208, 0.077558,
		39.169128, 34.875298, 44.590614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277149, 35.633823, 44.234692>,  <38.663509, 35.356342, 44.536324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277149, 35.633823, 44.234692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277233, 35.233997, 44.222935>,  <39.277283, 34.994102, 44.215881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277233, 35.233997, 44.222935>,  <39.277149, 35.633823, 44.234692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277233, 35.233997, 44.222935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090199, 0.029290, -0.995493,
		0.995924, -0.002441, 0.090166,
		0.000211, -0.999568, -0.029391,
		39.277298, 34.934128, 44.214119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710636, 35.549980, 43.675152>,  <39.277149, 35.633823, 44.234692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710636, 35.549980, 43.675152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529057, 35.199284, 43.738724>,  <39.420109, 34.988865, 43.776867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529057, 35.199284, 43.738724>,  <39.710636, 35.549980, 43.675152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529057, 35.199284, 43.738724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048018, -0.202175, -0.978172,
		0.889732, -0.436410, 0.133876,
		-0.453950, -0.876739, 0.158926,
		39.392872, 34.936260, 43.786400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057705, 35.090504, 43.303062>,  <39.710636, 35.549980, 43.675152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057705, 35.090504, 43.303062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706486, 34.901390, 43.332722>,  <39.495754, 34.787922, 43.350517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706486, 34.901390, 43.332722>,  <40.057705, 35.090504, 43.303062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706486, 34.901390, 43.332722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106393, -0.343913, -0.932955,
		0.466589, -0.811294, 0.352274,
		-0.878052, -0.472786, 0.074150,
		39.443069, 34.759556, 43.354965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132278, 34.403461, 43.049088>,  <40.057705, 35.090504, 43.303062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132278, 34.403461, 43.049088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736961, 34.461365, 43.029808>,  <39.499771, 34.496109, 43.018242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736961, 34.461365, 43.029808>,  <40.132278, 34.403461, 43.049088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736961, 34.461365, 43.029808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006912, -0.273082, -0.961966,
		-0.152418, -0.951036, 0.268884,
		-0.988292, 0.144763, -0.048196,
		39.440475, 34.504795, 43.015350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936653, 33.791317, 42.711834>,  <40.132278, 34.403461, 43.049088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936653, 33.791317, 42.711834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606823, 34.014343, 42.673489>,  <39.408924, 34.148159, 42.650482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606823, 34.014343, 42.673489>,  <39.936653, 33.791317, 42.711834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606823, 34.014343, 42.673489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200536, -0.446500, -0.872023,
		-0.529013, -0.699827, 0.479986,
		-0.824579, 0.557566, -0.095864,
		39.359447, 34.181614, 42.644730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244587, 33.522217, 42.509354>,  <39.936653, 33.791317, 42.711834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244587, 33.522217, 42.509354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233524, 33.885014, 42.341263>,  <39.226887, 34.102692, 42.240406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233524, 33.885014, 42.341263>,  <39.244587, 33.522217, 42.509354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233524, 33.885014, 42.341263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162649, -0.418870, -0.893360,
		-0.986296, 0.043643, 0.159106,
		-0.027656, 0.906997, -0.420229,
		39.225227, 34.157112, 42.215195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902241, 33.317108, 41.870544>,  <39.244587, 33.522217, 42.509354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902241, 33.317108, 41.870544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954967, 33.712784, 41.844822>,  <38.986603, 33.950188, 41.829388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954967, 33.712784, 41.844822>,  <38.902241, 33.317108, 41.870544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954967, 33.712784, 41.844822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398687, -0.006487, -0.917064,
		-0.907565, 0.146517, 0.393521,
		0.131813, 0.989187, -0.064302,
		38.994511, 34.009541, 41.825531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338600, 33.618355, 41.491322>,  <38.902241, 33.317108, 41.870544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338600, 33.618355, 41.491322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616245, 33.904690, 41.460899>,  <38.782833, 34.076492, 41.442646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616245, 33.904690, 41.460899>,  <38.338600, 33.618355, 41.491322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616245, 33.904690, 41.460899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225205, 0.115578, -0.967432,
		-0.683736, 0.688632, 0.241435,
		0.694109, 0.715841, -0.076059,
		38.824478, 34.119442, 41.438080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985920, 34.113922, 40.930161>,  <38.338600, 33.618355, 41.491322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985920, 34.113922, 40.930161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380394, 34.167919, 40.968578>,  <38.617077, 34.200317, 40.991627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380394, 34.167919, 40.968578>,  <37.985920, 34.113922, 40.930161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380394, 34.167919, 40.968578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067346, 0.202997, -0.976861,
		-0.151368, 0.969829, 0.191100,
		0.986181, 0.134996, 0.096041,
		38.676247, 34.208416, 40.997391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114021, 34.787155, 40.798107>,  <37.985920, 34.113922, 40.930161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114021, 34.787155, 40.798107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435589, 34.558525, 40.732361>,  <38.628529, 34.421345, 40.692913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435589, 34.558525, 40.732361>,  <38.114021, 34.787155, 40.798107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435589, 34.558525, 40.732361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028701, 0.238761, -0.970654,
		0.594049, 0.785043, 0.175539,
		0.803917, -0.571578, -0.164367,
		38.676765, 34.387051, 40.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360905, 34.998459, 40.148884>,  <38.114021, 34.787155, 40.798107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360905, 34.998459, 40.148884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617683, 34.694378, 40.188873>,  <38.771751, 34.511929, 40.212868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617683, 34.694378, 40.188873>,  <38.360905, 34.998459, 40.148884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617683, 34.694378, 40.188873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381695, 0.203763, -0.901548,
		0.664987, 0.616908, 0.420971,
		0.641951, -0.760201, 0.099971,
		38.810268, 34.466316, 40.218864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096260, 35.244091, 40.061123>,  <38.360905, 34.998459, 40.148884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096260, 35.244091, 40.061123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108341, 34.855537, 39.966892>,  <39.115589, 34.622406, 39.910355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108341, 34.855537, 39.966892>,  <39.096260, 35.244091, 40.061123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108341, 34.855537, 39.966892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555735, 0.212220, -0.803817,
		0.830810, -0.106637, 0.546244,
		0.030207, -0.971386, -0.235576,
		39.117405, 34.564121, 39.896221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774036, 35.187237, 39.819817>,  <39.096260, 35.244091, 40.061123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774036, 35.187237, 39.819817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606609, 34.846333, 39.694309>,  <39.506153, 34.641788, 39.619003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606609, 34.846333, 39.694309>,  <39.774036, 35.187237, 39.819817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606609, 34.846333, 39.694309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351238, 0.166691, -0.921328,
		0.837514, -0.495849, 0.229574,
		-0.418572, -0.852260, -0.313767,
		39.481037, 34.590656, 39.600178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346607, 34.691673, 39.447968>,  <39.774036, 35.187237, 39.819817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346607, 34.691673, 39.447968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976734, 34.623642, 39.311707>,  <39.754810, 34.582825, 39.229950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976734, 34.623642, 39.311707>,  <40.346607, 34.691673, 39.447968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976734, 34.623642, 39.311707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322800, 0.124293, -0.938271,
		0.201921, -0.977561, -0.060030,
		-0.924677, -0.170079, -0.340653,
		39.699329, 34.572620, 39.209511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453655, 34.330208, 38.865192>,  <40.346607, 34.691673, 39.447968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453655, 34.330208, 38.865192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086651, 34.486771, 38.836979>,  <39.866447, 34.580708, 38.820053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086651, 34.486771, 38.836979>,  <40.453655, 34.330208, 38.865192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086651, 34.486771, 38.836979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133935, 0.137109, -0.981459,
		-0.374477, -0.909947, -0.178222,
		-0.917512, 0.391404, -0.070529,
		39.811398, 34.604191, 38.815819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273319, 34.045330, 38.246719>,  <40.453655, 34.330208, 38.865192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273319, 34.045330, 38.246719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014923, 34.344730, 38.306641>,  <39.859886, 34.524372, 38.342594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014923, 34.344730, 38.306641>,  <40.273319, 34.045330, 38.246719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014923, 34.344730, 38.306641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062361, 0.247339, -0.966920,
		-0.760796, -0.615277, -0.206455,
		-0.645988, 0.748504, 0.149805,
		39.821125, 34.569283, 38.351582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629742, 33.909328, 37.907284>,  <40.273319, 34.045330, 38.246719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629742, 33.909328, 37.907284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671272, 34.305775, 37.940533>,  <39.696190, 34.543644, 37.960484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671272, 34.305775, 37.940533>,  <39.629742, 33.909328, 37.907284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671272, 34.305775, 37.940533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013263, 0.084951, -0.996297,
		-0.994507, 0.102343, 0.021965,
		0.103830, 0.991115, 0.083127,
		39.702423, 34.603107, 37.965469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239140, 34.163673, 37.410252>,  <39.629742, 33.909328, 37.907284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239140, 34.163673, 37.410252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451530, 34.490871, 37.498756>,  <39.578964, 34.687191, 37.551857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451530, 34.490871, 37.498756>,  <39.239140, 34.163673, 37.410252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451530, 34.490871, 37.498756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045050, 0.287988, -0.956574,
		-0.846189, 0.497949, 0.189765,
		0.530975, 0.817991, 0.221260,
		39.610825, 34.736267, 37.565136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813194, 34.740894, 37.188610>,  <39.239140, 34.163673, 37.410252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813194, 34.740894, 37.188610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191868, 34.868607, 37.205822>,  <39.419071, 34.945236, 37.216148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191868, 34.868607, 37.205822>,  <38.813194, 34.740894, 37.188610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191868, 34.868607, 37.205822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061736, 0.310883, -0.948441,
		-0.316200, 0.895215, 0.314019,
		0.946682, 0.319284, 0.043034,
		39.475872, 34.964390, 37.218731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764538, 35.198242, 36.715591>,  <38.813194, 34.740894, 37.188610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764538, 35.198242, 36.715591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160206, 35.188480, 36.773476>,  <39.397606, 35.182625, 36.808205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160206, 35.188480, 36.773476>,  <38.764538, 35.198242, 36.715591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160206, 35.188480, 36.773476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144814, 0.322084, -0.935570,
		-0.023779, 0.946397, 0.322130,
		0.989173, -0.024402, 0.144711,
		39.456959, 35.181160, 36.816891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035152, 35.818748, 36.544903>,  <38.764538, 35.198242, 36.715591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035152, 35.818748, 36.544903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363518, 35.591419, 36.522575>,  <39.560535, 35.455021, 36.509178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363518, 35.591419, 36.522575>,  <39.035152, 35.818748, 36.544903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363518, 35.591419, 36.522575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046213, 0.163542, -0.985453,
		0.569184, 0.806389, 0.160517,
		0.820910, -0.568322, -0.055820,
		39.609791, 35.420921, 36.505829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576862, 36.214745, 36.332680>,  <39.035152, 35.818748, 36.544903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576862, 36.214745, 36.332680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703526, 35.848473, 36.233681>,  <39.779522, 35.628708, 36.174282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703526, 35.848473, 36.233681>,  <39.576862, 36.214745, 36.332680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703526, 35.848473, 36.233681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228936, 0.326995, -0.916876,
		0.920497, 0.233675, 0.313178,
		0.316659, -0.915680, -0.247501,
		39.798523, 35.573769, 36.159431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214767, 36.344612, 35.866169>,  <39.576862, 36.214745, 36.332680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214767, 36.344612, 35.866169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073479, 35.977840, 35.791897>,  <39.988705, 35.757778, 35.747334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073479, 35.977840, 35.791897>,  <40.214767, 36.344612, 35.866169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073479, 35.977840, 35.791897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094300, 0.162567, -0.982181,
		0.930776, -0.364433, 0.029044,
		-0.353218, -0.916930, -0.185680,
		39.967514, 35.702763, 35.736195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764748, 36.053295, 35.435600>,  <40.214767, 36.344612, 35.866169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764748, 36.053295, 35.435600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430168, 35.839127, 35.388836>,  <40.229420, 35.710625, 35.360779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430168, 35.839127, 35.388836>,  <40.764748, 36.053295, 35.435600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430168, 35.839127, 35.388836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106949, 0.049752, -0.993019,
		0.537504, -0.843116, 0.015649,
		-0.836451, -0.535426, -0.116912,
		40.179234, 35.678497, 35.353764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923096, 35.507587, 34.988041>,  <40.764748, 36.053295, 35.435600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923096, 35.507587, 34.988041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530006, 35.507202, 34.914001>,  <40.294155, 35.506969, 34.869576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530006, 35.507202, 34.914001>,  <40.923096, 35.507587, 34.988041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530006, 35.507202, 34.914001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185090, -0.017221, -0.982571,
		-0.002226, -0.999851, 0.017104,
		-0.982719, -0.000979, -0.185101,
		40.235191, 35.506912, 34.858471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707958, 35.017952, 34.381828>,  <40.923096, 35.507587, 34.988041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707958, 35.017952, 34.381828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463406, 35.332016, 34.421307>,  <40.316673, 35.520454, 34.444992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463406, 35.332016, 34.421307>,  <40.707958, 35.017952, 34.381828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463406, 35.332016, 34.421307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134115, 0.225723, -0.964916,
		-0.779891, -0.576692, -0.243304,
		-0.611379, 0.785159, 0.098696,
		40.279991, 35.567562, 34.450916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243446, 35.043823, 33.941448>,  <40.707958, 35.017952, 34.381828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243446, 35.043823, 33.941448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321934, 35.423973, 34.038021>,  <40.369026, 35.652061, 34.095963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321934, 35.423973, 34.038021>,  <40.243446, 35.043823, 33.941448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321934, 35.423973, 34.038021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220717, 0.197089, -0.955217,
		-0.955397, 0.240716, -0.171092,
		0.196215, 0.950375, 0.241428,
		40.380798, 35.709084, 34.110451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929661, 35.538025, 33.556690>,  <40.243446, 35.043823, 33.941448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929661, 35.538025, 33.556690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294273, 35.656784, 33.670509>,  <40.513042, 35.728039, 33.738800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294273, 35.656784, 33.670509>,  <39.929661, 35.538025, 33.556690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294273, 35.656784, 33.670509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345205, -0.176386, -0.921803,
		-0.223487, 0.938479, -0.263271,
		0.911530, 0.296893, 0.284547,
		40.567734, 35.745853, 33.755875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238743, 36.047531, 33.107700>,  <39.929661, 35.538025, 33.556690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238743, 36.047531, 33.107700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541218, 35.831966, 33.256161>,  <40.722702, 35.702629, 33.345238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541218, 35.831966, 33.256161>,  <40.238743, 36.047531, 33.107700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541218, 35.831966, 33.256161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423782, -0.028842, -0.905305,
		0.498584, 0.841868, 0.206571,
		0.756189, -0.538912, 0.371149,
		40.768074, 35.670292, 33.367504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940434, 36.413071, 32.951408>,  <40.238743, 36.047531, 33.107700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940434, 36.413071, 32.951408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939976, 36.016815, 33.006008>,  <40.939701, 35.779060, 33.038769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939976, 36.016815, 33.006008>,  <40.940434, 36.413071, 32.951408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939976, 36.016815, 33.006008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320460, -0.129667, -0.938345,
		0.947261, 0.042669, 0.317609,
		-0.001145, -0.990639, 0.136502,
		40.939632, 35.719624, 33.046959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477230, 36.456837, 33.548203>,  <40.940434, 36.413071, 32.951408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477230, 36.456837, 33.548203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851654, 36.573116, 33.627476>,  <42.076309, 36.642883, 33.675041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851654, 36.573116, 33.627476>,  <41.477230, 36.456837, 33.548203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851654, 36.573116, 33.627476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127457, -0.244837, 0.961150,
		0.327932, -0.924957, -0.192131,
		0.936064, 0.290704, 0.198183,
		42.132473, 36.660328, 33.686932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004089, 35.847527, 33.741257>,  <41.477230, 36.456837, 33.548203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004089, 35.847527, 33.741257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024635, 36.178291, 33.965252>,  <42.036961, 36.376751, 34.099648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024635, 36.178291, 33.965252>,  <42.004089, 35.847527, 33.741257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024635, 36.178291, 33.965252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480826, -0.470981, 0.739583,
		0.875310, -0.307242, 0.373409,
		0.051363, 0.826909, 0.559984,
		42.040043, 36.426365, 34.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119724, 35.592171, 34.400574>,  <42.004089, 35.847527, 33.741257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119724, 35.592171, 34.400574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963287, 35.960285, 34.404957>,  <41.869423, 36.181152, 34.407585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963287, 35.960285, 34.404957>,  <42.119724, 35.592171, 34.400574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963287, 35.960285, 34.404957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501225, -0.222959, 0.836100,
		0.771893, 0.321504, 0.548468,
		-0.391095, 0.920285, 0.010954,
		41.845959, 36.236370, 34.408241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698826, 35.384972, 34.549320>,  <42.119724, 35.592171, 34.400574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698826, 35.384972, 34.549320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003410, 35.619854, 34.439514>,  <43.186161, 35.760784, 34.373631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003410, 35.619854, 34.439514>,  <42.698826, 35.384972, 34.549320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003410, 35.619854, 34.439514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071890, 0.344379, 0.936074,
		0.644209, -0.732521, 0.220017,
		0.761464, 0.587210, -0.274513,
		43.231850, 35.796017, 34.357159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208809, 35.280914, 35.047607>,  <42.698826, 35.384972, 34.549320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208809, 35.280914, 35.047607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338558, 35.632198, 34.907024>,  <43.416409, 35.842968, 34.822674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338558, 35.632198, 34.907024>,  <43.208809, 35.280914, 35.047607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338558, 35.632198, 34.907024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222930, 0.290105, 0.930667,
		0.919283, -0.380238, -0.101676,
		0.324378, 0.878213, -0.351455,
		43.435871, 35.895660, 34.801586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786385, 35.378551, 35.456245>,  <43.208809, 35.280914, 35.047607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786385, 35.378551, 35.456245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695965, 35.738701, 35.307529>,  <43.641712, 35.954792, 35.218300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695965, 35.738701, 35.307529>,  <43.786385, 35.378551, 35.456245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695965, 35.738701, 35.307529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160672, 0.410904, 0.897409,
		0.960774, 0.143119, -0.237549,
		-0.226046, 0.900375, -0.371791,
		43.628151, 36.008812, 35.195992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288055, 35.854847, 35.648815>,  <43.786385, 35.378551, 35.456245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288055, 35.854847, 35.648815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991299, 36.109653, 35.565086>,  <43.813244, 36.262535, 35.514847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991299, 36.109653, 35.565086>,  <44.288055, 35.854847, 35.648815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991299, 36.109653, 35.565086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123328, 0.436487, 0.891218,
		0.659086, 0.635368, -0.402386,
		-0.741887, 0.637014, -0.209324,
		43.768734, 36.300758, 35.502289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509651, 36.542652, 35.826481>,  <44.288055, 35.854847, 35.648815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509651, 36.542652, 35.826481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110863, 36.565754, 35.805656>,  <43.871590, 36.579617, 35.793163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110863, 36.565754, 35.805656>,  <44.509651, 36.542652, 35.826481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110863, 36.565754, 35.805656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008510, 0.584432, 0.811398,
		0.077287, 0.809385, -0.582171,
		-0.996973, 0.057756, -0.052057,
		43.811771, 36.583080, 35.790039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336636, 37.305656, 35.894154>,  <44.509651, 36.542652, 35.826481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336636, 37.305656, 35.894154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019989, 37.087135, 36.003616>,  <43.830002, 36.956020, 36.069294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019989, 37.087135, 36.003616>,  <44.336636, 37.305656, 35.894154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019989, 37.087135, 36.003616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128557, 0.586759, 0.799492,
		-0.597336, 0.597714, -0.534722,
		-0.791620, -0.546307, 0.273652,
		43.782501, 36.923244, 36.085712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866314, 37.803009, 36.044876>,  <44.336636, 37.305656, 35.894154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866314, 37.803009, 36.044876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729534, 37.472485, 36.223885>,  <43.647469, 37.274170, 36.331291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729534, 37.472485, 36.223885>,  <43.866314, 37.803009, 36.044876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729534, 37.472485, 36.223885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194091, 0.528068, 0.826724,
		-0.919457, 0.195836, -0.340951,
		-0.341947, -0.826313, 0.447526,
		43.626949, 37.224590, 36.358143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333141, 38.100845, 36.472652>,  <43.866314, 37.803009, 36.044876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333141, 38.100845, 36.472652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387386, 37.723789, 36.594662>,  <43.419933, 37.497555, 36.667870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387386, 37.723789, 36.594662>,  <43.333141, 38.100845, 36.472652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387386, 37.723789, 36.594662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255636, 0.264154, 0.929985,
		-0.957214, -0.204094, -0.205150,
		0.135613, -0.942639, 0.305026,
		43.428070, 37.440998, 36.686169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725536, 37.839775, 36.901443>,  <43.333141, 38.100845, 36.472652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725536, 37.839775, 36.901443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028351, 37.612572, 37.030605>,  <43.210041, 37.476250, 37.108101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028351, 37.612572, 37.030605>,  <42.725536, 37.839775, 36.901443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028351, 37.612572, 37.030605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044455, 0.448286, 0.892784,
		-0.651858, -0.690225, 0.314118,
		0.757037, -0.568005, 0.322903,
		43.255463, 37.442169, 37.127476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532219, 37.641502, 37.583225>,  <42.725536, 37.839775, 36.901443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532219, 37.641502, 37.583225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925121, 37.570202, 37.559902>,  <43.160862, 37.527420, 37.545910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925121, 37.570202, 37.559902>,  <42.532219, 37.641502, 37.583225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925121, 37.570202, 37.559902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138636, 0.480744, 0.865832,
		-0.126305, -0.858553, 0.496925,
		0.982256, -0.178250, -0.058306,
		43.219799, 37.516727, 37.542412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623562, 37.430214, 38.238022>,  <42.532219, 37.641502, 37.583225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623562, 37.430214, 38.238022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994781, 37.522408, 38.120991>,  <43.217514, 37.577724, 38.050770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994781, 37.522408, 38.120991>,  <42.623562, 37.430214, 38.238022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994781, 37.522408, 38.120991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160984, 0.460160, 0.873119,
		0.335870, -0.857399, 0.389947,
		0.928049, 0.230479, -0.292581,
		43.273197, 37.591553, 38.033215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047462, 37.285904, 38.840755>,  <42.623562, 37.430214, 38.238022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047462, 37.285904, 38.840755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264179, 37.521950, 38.601349>,  <43.394211, 37.663578, 38.457703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264179, 37.521950, 38.601349>,  <43.047462, 37.285904, 38.840755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264179, 37.521950, 38.601349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129800, 0.644803, 0.753247,
		0.830430, -0.485791, 0.272752,
		0.541792, 0.590115, -0.598519,
		43.426716, 37.698982, 38.421795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655167, 37.336296, 39.174885>,  <43.047462, 37.285904, 38.840755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655167, 37.336296, 39.174885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679756, 37.660393, 38.941738>,  <43.694508, 37.854851, 38.801849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679756, 37.660393, 38.941738>,  <43.655167, 37.336296, 39.174885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679756, 37.660393, 38.941738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188759, 0.563993, 0.803917,
		0.980098, -0.159437, -0.118272,
		0.061470, 0.810242, -0.582863,
		43.698196, 37.903465, 38.766880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330597, 37.729832, 39.357586>,  <43.655167, 37.336296, 39.174885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330597, 37.729832, 39.357586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086399, 37.993530, 39.182003>,  <43.939880, 38.151749, 39.076653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086399, 37.993530, 39.182003>,  <44.330597, 37.729832, 39.357586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086399, 37.993530, 39.182003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180572, 0.655482, 0.733305,
		0.771160, 0.368417, -0.519213,
		-0.610497, 0.659251, -0.438956,
		43.903252, 38.191307, 39.050316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704144, 38.367004, 39.395481>,  <44.330597, 37.729832, 39.357586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704144, 38.367004, 39.395481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313736, 38.446987, 39.361057>,  <44.079491, 38.494976, 39.340405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313736, 38.446987, 39.361057>,  <44.704144, 38.367004, 39.395481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313736, 38.446987, 39.361057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071280, 0.667066, 0.741581,
		0.205692, 0.717662, -0.665321,
		-0.976017, 0.199961, -0.086055,
		44.020931, 38.506977, 39.335239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741428, 39.101730, 39.454712>,  <44.704144, 38.367004, 39.395481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741428, 39.101730, 39.454712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363148, 38.985981, 39.513924>,  <44.136181, 38.916531, 39.549450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363148, 38.985981, 39.513924>,  <44.741428, 39.101730, 39.454712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363148, 38.985981, 39.513924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117169, 0.728298, 0.675169,
		-0.303191, 0.621162, -0.722657,
		-0.945699, -0.289378, 0.148032,
		44.079437, 38.899166, 39.558334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393139, 39.750355, 39.587341>,  <44.741428, 39.101730, 39.454712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393139, 39.750355, 39.587341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133263, 39.492676, 39.748791>,  <43.977337, 39.338066, 39.845661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133263, 39.492676, 39.748791>,  <44.393139, 39.750355, 39.587341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133263, 39.492676, 39.748791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003677, 0.528278, 0.849064,
		-0.760194, 0.553109, -0.340846,
		-0.649686, -0.644200, 0.403627,
		43.938358, 39.299416, 39.869881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863098, 40.105824, 39.882046>,  <44.393139, 39.750355, 39.587341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863098, 40.105824, 39.882046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784580, 39.768501, 40.082165>,  <43.737469, 39.566109, 40.202236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784580, 39.768501, 40.082165>,  <43.863098, 40.105824, 39.882046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784580, 39.768501, 40.082165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045244, 0.517471, 0.854504,
		-0.979501, 0.145098, -0.139731,
		-0.196294, -0.843309, 0.500298,
		43.725693, 39.515507, 40.232254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358971, 40.142826, 40.293743>,  <43.863098, 40.105824, 39.882046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358971, 40.142826, 40.293743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573643, 39.860607, 40.478863>,  <43.702446, 39.691277, 40.589935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573643, 39.860607, 40.478863>,  <43.358971, 40.142826, 40.293743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573643, 39.860607, 40.478863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134090, 0.470194, 0.872317,
		-0.833062, -0.530213, 0.157738,
		0.536682, -0.705544, 0.462797,
		43.734646, 39.648945, 40.617702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001156, 39.916542, 40.825184>,  <43.358971, 40.142826, 40.293743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001156, 39.916542, 40.825184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378990, 39.833652, 40.927025>,  <43.605690, 39.783920, 40.988129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378990, 39.833652, 40.927025>,  <43.001156, 39.916542, 40.825184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378990, 39.833652, 40.927025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159930, 0.386834, 0.908175,
		-0.286681, -0.898565, 0.332256,
		0.944583, -0.207219, 0.254606,
		43.662365, 39.771488, 41.003407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958504, 39.545380, 41.504189>,  <43.001156, 39.916542, 40.825184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958504, 39.545380, 41.504189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321598, 39.708179, 41.463463>,  <43.539455, 39.805859, 41.439026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321598, 39.708179, 41.463463>,  <42.958504, 39.545380, 41.504189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321598, 39.708179, 41.463463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003088, 0.249162, 0.968457,
		0.419535, -0.878787, 0.227429,
		0.907734, 0.407004, -0.101819,
		43.593918, 39.830280, 41.432919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538971, 40.080235, 41.818123>,  <42.958504, 39.545380, 41.504189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538971, 40.080235, 41.818123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593880, 40.243927, 42.178944>,  <42.626823, 40.342140, 42.395435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593880, 40.243927, 42.178944>,  <42.538971, 40.080235, 41.818123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593880, 40.243927, 42.178944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887183, -0.455803, 0.071772,
		0.440526, 0.790428, -0.425628,
		0.137272, 0.409227, 0.902047,
		42.635059, 40.366695, 42.449558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128994, 40.638931, 41.971584>,  <42.538971, 40.080235, 41.818123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128994, 40.638931, 41.971584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069080, 40.389393, 42.278408>,  <43.033134, 40.239670, 42.462502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069080, 40.389393, 42.278408>,  <43.128994, 40.638931, 41.971584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069080, 40.389393, 42.278408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911150, -0.388316, -0.137901,
		0.383890, 0.678250, 0.626582,
		-0.149780, -0.623849, 0.767058,
		43.024147, 40.202240, 42.508526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745762, 40.646484, 42.419853>,  <43.128994, 40.638931, 41.971584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745762, 40.646484, 42.419853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576458, 40.284107, 42.415600>,  <43.474876, 40.066681, 42.413048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576458, 40.284107, 42.415600>,  <43.745762, 40.646484, 42.419853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576458, 40.284107, 42.415600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889886, -0.413493, -0.192685,
		0.170164, -0.091020, 0.981203,
		-0.423259, -0.905947, -0.010636,
		43.449482, 40.012321, 42.412411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440033, 41.133591, 42.487049>,  <43.745762, 40.646484, 42.419853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440033, 41.133591, 42.487049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516201, 40.803799, 42.273891>,  <44.561901, 40.605923, 42.145996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516201, 40.803799, 42.273891>,  <44.440033, 41.133591, 42.487049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516201, 40.803799, 42.273891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887367, 0.376739, -0.265797,
		0.419905, -0.422258, 0.803354,
		0.190420, -0.824479, -0.532893,
		44.573326, 40.556454, 42.114025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998032, 40.860806, 42.710758>,  <44.440033, 41.133591, 42.487049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998032, 40.860806, 42.710758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987316, 40.766571, 42.322163>,  <44.980888, 40.710030, 42.089005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987316, 40.766571, 42.322163>,  <44.998032, 40.860806, 42.710758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987316, 40.766571, 42.322163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746043, 0.642139, -0.176289,
		0.665359, -0.729492, 0.158551,
		-0.026790, -0.235582, -0.971485,
		44.979279, 40.695896, 42.030716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652348, 40.499657, 42.427094>,  <44.998032, 40.860806, 42.710758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652348, 40.499657, 42.427094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457195, 40.696865, 42.138954>,  <45.340103, 40.815189, 41.966072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457195, 40.696865, 42.138954>,  <45.652348, 40.499657, 42.427094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457195, 40.696865, 42.138954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853634, 0.441938, -0.275682,
		0.182431, -0.749413, -0.636475,
		-0.487882, 0.493024, -0.720347,
		45.310829, 40.844772, 41.922852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171143, 40.328804, 41.868904>,  <45.652348, 40.499657, 42.427094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171143, 40.328804, 41.868904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428040, 40.618694, 41.769070>,  <46.582180, 40.792629, 41.709167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428040, 40.618694, 41.769070>,  <46.171143, 40.328804, 41.868904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428040, 40.618694, 41.769070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069303, -0.379187, -0.922721,
		-0.763361, 0.575316, -0.293756,
		0.642244, 0.724727, -0.249585,
		46.620712, 40.836113, 41.694195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934189, 40.718655, 41.248493>,  <46.171143, 40.328804, 41.868904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934189, 40.718655, 41.248493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330883, 40.705078, 41.297977>,  <46.568901, 40.696934, 41.327667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330883, 40.705078, 41.297977>,  <45.934189, 40.718655, 41.248493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330883, 40.705078, 41.297977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087749, -0.523978, -0.847200,
		0.093573, 0.851055, -0.516671,
		0.991738, -0.033938, 0.123709,
		46.628403, 40.694897, 41.335091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.412891, 40.869759, 40.690121>,  <45.934189, 40.718655, 41.248493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.412891, 40.869759, 40.690121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569843, 40.550659, 40.873260>,  <46.664017, 40.359200, 40.983143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569843, 40.550659, 40.873260>,  <46.412891, 40.869759, 40.690121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569843, 40.550659, 40.873260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025445, -0.488167, -0.872379,
		0.919450, 0.353957, -0.171250,
		0.392383, -0.797752, 0.457851,
		46.687557, 40.311333, 41.010616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001610, 40.633991, 40.332470>,  <46.412891, 40.869759, 40.690121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001610, 40.633991, 40.332470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782875, 40.335800, 40.484913>,  <46.651634, 40.156887, 40.576378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782875, 40.335800, 40.484913>,  <47.001610, 40.633991, 40.332470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782875, 40.335800, 40.484913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118651, -0.519597, -0.846133,
		0.828792, -0.417474, 0.372584,
		-0.546832, -0.745476, 0.381104,
		46.618824, 40.112156, 40.599243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.402843, 40.109020, 40.252193>,  <47.001610, 40.633991, 40.332470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.402843, 40.109020, 40.252193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.020565, 39.991325, 40.255695>,  <46.791199, 39.920708, 40.257797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.020565, 39.991325, 40.255695>,  <47.402843, 40.109020, 40.252193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.020565, 39.991325, 40.255695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167442, -0.567843, -0.805927,
		0.242103, -0.768753, 0.591951,
		-0.955693, -0.294235, 0.008755,
		46.733856, 39.903053, 40.258324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.225418, 39.320007, 40.393970>,  <47.402843, 40.109020, 40.252193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.225418, 39.320007, 40.393970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916443, 39.460930, 40.182610>,  <46.731056, 39.545483, 40.055794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916443, 39.460930, 40.182610>,  <47.225418, 39.320007, 40.393970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916443, 39.460930, 40.182610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196874, -0.658200, -0.726645,
		-0.603796, -0.665322, 0.439063,
		-0.772445, 0.352305, -0.528403,
		46.684711, 39.566624, 40.024090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.103855, 38.752838, 40.053589>,  <47.225418, 39.320007, 40.393970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.103855, 38.752838, 40.053589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878731, 39.033764, 39.879234>,  <46.743656, 39.202320, 39.774620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878731, 39.033764, 39.879234>,  <47.103855, 38.752838, 40.053589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.878731, 39.033764, 39.879234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002842, -0.525689, -0.850672,
		-0.826581, -0.480006, 0.293867,
		-0.562810, 0.702314, -0.435889,
		46.709888, 39.244457, 39.748466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.637051, 38.359028, 39.619789>,  <47.103855, 38.752838, 40.053589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.637051, 38.359028, 39.619789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648190, 38.723797, 39.456020>,  <46.654873, 38.942657, 39.357758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648190, 38.723797, 39.456020>,  <46.637051, 38.359028, 39.619789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648190, 38.723797, 39.456020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123860, -0.409576, -0.903829,
		-0.991909, -0.025544, -0.124355,
		0.027845, 0.911918, -0.409426,
		46.656544, 38.997372, 39.333191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187122, 38.288723, 39.079483>,  <46.637051, 38.359028, 39.619789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187122, 38.288723, 39.079483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439945, 38.589581, 39.004879>,  <46.591640, 38.770096, 38.960117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439945, 38.589581, 39.004879>,  <46.187122, 38.288723, 39.079483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439945, 38.589581, 39.004879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189174, -0.383164, -0.904101,
		-0.751477, 0.536161, -0.384467,
		0.632057, 0.752142, -0.186511,
		46.629562, 38.815224, 38.948925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044468, 38.467365, 38.401009>,  <46.187122, 38.288723, 39.079483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044468, 38.467365, 38.401009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411537, 38.615150, 38.459496>,  <46.631779, 38.703819, 38.494587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411537, 38.615150, 38.459496>,  <46.044468, 38.467365, 38.401009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411537, 38.615150, 38.459496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245920, -0.239071, -0.939345,
		-0.312093, 0.897967, -0.310246,
		0.917672, 0.369459, 0.146215,
		46.686840, 38.725986, 38.503361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157467, 38.979736, 37.917500>,  <46.044468, 38.467365, 38.401009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157467, 38.979736, 37.917500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.511868, 38.842304, 38.042053>,  <46.724506, 38.759846, 38.116787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.511868, 38.842304, 38.042053>,  <46.157467, 38.979736, 37.917500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.511868, 38.842304, 38.042053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263574, -0.179320, -0.947825,
		0.381493, 0.921844, -0.068318,
		0.885998, -0.343582, 0.311384,
		46.777668, 38.739231, 38.135468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621185, 39.228477, 37.387806>,  <46.157467, 38.979736, 37.917500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621185, 39.228477, 37.387806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794346, 38.926418, 37.584721>,  <46.898243, 38.745182, 37.702869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794346, 38.926418, 37.584721>,  <46.621185, 39.228477, 37.387806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794346, 38.926418, 37.584721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338639, -0.369876, -0.865168,
		0.835418, 0.541236, 0.095606,
		0.432898, -0.755153, 0.492285,
		46.924213, 38.699871, 37.732407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181156, 39.074009, 36.956379>,  <46.621185, 39.228477, 37.387806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181156, 39.074009, 36.956379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162861, 38.741817, 37.178448>,  <47.151886, 38.542503, 37.311691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162861, 38.741817, 37.178448>,  <47.181156, 39.074009, 36.956379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162861, 38.741817, 37.178448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142520, -0.555495, -0.819215,
		0.988735, 0.041657, 0.143764,
		-0.045734, -0.830476, 0.555174,
		47.149139, 38.492676, 37.345001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666843, 38.604290, 36.668945>,  <47.181156, 39.074009, 36.956379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666843, 38.604290, 36.668945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.437672, 38.351467, 36.877659>,  <47.300167, 38.199776, 37.002888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.437672, 38.351467, 36.877659>,  <47.666843, 38.604290, 36.668945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.437672, 38.351467, 36.877659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110926, -0.690566, -0.714712,
		0.812061, -0.351603, 0.465760,
		-0.572933, -0.632055, 0.521780,
		47.265793, 38.161850, 37.034191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.971771, 37.901764, 36.449139>,  <47.666843, 38.604290, 36.668945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.971771, 37.901764, 36.449139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609417, 37.858582, 36.612949>,  <47.392002, 37.832672, 36.711235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609417, 37.858582, 36.612949>,  <47.971771, 37.901764, 36.449139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609417, 37.858582, 36.612949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198030, -0.746779, -0.634905,
		0.374368, -0.656252, 0.655120,
		-0.905888, -0.107955, 0.409528,
		47.337650, 37.826195, 36.735809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.931801, 37.118706, 36.582737>,  <47.971771, 37.901764, 36.449139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.931801, 37.118706, 36.582737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580700, 37.304165, 36.534431>,  <47.370041, 37.415440, 36.505447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580700, 37.304165, 36.534431>,  <47.931801, 37.118706, 36.582737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.580700, 37.304165, 36.534431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228784, -0.627076, -0.744603,
		-0.420959, -0.625949, 0.656492,
		-0.877754, 0.463643, -0.120766,
		47.317375, 37.443256, 36.498203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.529747, 36.535145, 36.257698>,  <47.931801, 37.118706, 36.582737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.529747, 36.535145, 36.257698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.297848, 36.857433, 36.209213>,  <47.158707, 37.050808, 36.180122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.297848, 36.857433, 36.209213>,  <47.529747, 36.535145, 36.257698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.297848, 36.857433, 36.209213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468608, -0.451420, -0.759359,
		-0.666554, -0.383439, 0.639281,
		-0.579752, 0.805726, -0.121213,
		47.123920, 37.099152, 36.172848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.784340, 36.273479, 36.191887>,  <47.529747, 36.535145, 36.257698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.784340, 36.273479, 36.191887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831741, 36.637161, 36.032230>,  <46.860184, 36.855370, 35.936436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831741, 36.637161, 36.032230>,  <46.784340, 36.273479, 36.191887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831741, 36.637161, 36.032230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469038, -0.303042, -0.829560,
		-0.875192, 0.285516, 0.390538,
		0.118503, 0.909201, -0.399138,
		46.867290, 36.909920, 35.912491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138607, 36.377789, 36.138294>,  <46.784340, 36.273479, 36.191887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138607, 36.377789, 36.138294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333973, 36.631950, 35.899059>,  <46.451195, 36.784447, 35.755520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333973, 36.631950, 35.899059>,  <46.138607, 36.377789, 36.138294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333973, 36.631950, 35.899059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593709, -0.260321, -0.761409,
		-0.639497, 0.726975, 0.250100,
		0.488419, 0.635405, -0.598086,
		46.480499, 36.822571, 35.719635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652992, 36.827465, 35.864433>,  <46.138607, 36.377789, 36.138294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652992, 36.827465, 35.864433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966980, 36.831635, 35.616657>,  <46.155373, 36.834137, 35.467991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966980, 36.831635, 35.616657>,  <45.652992, 36.827465, 35.864433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966980, 36.831635, 35.616657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606107, -0.194086, -0.771340,
		-0.128269, 0.980929, -0.146032,
		0.784972, 0.010428, -0.619443,
		46.202473, 36.834763, 35.430824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375515, 37.164021, 35.228649>,  <45.652992, 36.827465, 35.864433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375515, 37.164021, 35.228649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709095, 36.979336, 35.107746>,  <45.909241, 36.868526, 35.035206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709095, 36.979336, 35.107746>,  <45.375515, 37.164021, 35.228649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709095, 36.979336, 35.107746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456158, -0.268507, -0.848424,
		0.310569, 0.845415, -0.434534,
		0.833946, -0.461711, -0.302253,
		45.959278, 36.840824, 35.017071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553242, 37.407822, 34.403999>,  <45.375515, 37.164021, 35.228649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553242, 37.407822, 34.403999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742805, 37.064423, 34.482368>,  <45.856544, 36.858383, 34.529392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742805, 37.064423, 34.482368>,  <45.553242, 37.407822, 34.403999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742805, 37.064423, 34.482368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274816, -0.355581, -0.893330,
		0.836590, 0.369518, -0.404443,
		0.473913, -0.858498, 0.195926,
		45.884979, 36.806873, 34.541145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.059254, 37.307137, 33.846859>,  <45.553242, 37.407822, 34.403999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.059254, 37.307137, 33.846859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995415, 36.953468, 34.022484>,  <45.957111, 36.741268, 34.127857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995415, 36.953468, 34.022484>,  <46.059254, 37.307137, 33.846859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995415, 36.953468, 34.022484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172337, -0.412980, -0.894286,
		0.972024, -0.218389, -0.086466,
		-0.159594, -0.884168, 0.439063,
		45.947536, 36.688217, 34.154202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.572014, 36.757740, 33.455528>,  <46.059254, 37.307137, 33.846859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.572014, 36.757740, 33.455528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.247070, 36.591671, 33.619335>,  <46.052105, 36.492031, 33.717617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.247070, 36.591671, 33.619335>,  <46.572014, 36.757740, 33.455528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.247070, 36.591671, 33.619335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230175, -0.416940, -0.879307,
		0.535806, -0.808575, 0.243144,
		-0.812361, -0.415172, 0.409513,
		46.003361, 36.467121, 33.742188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633728, 36.157154, 33.146503>,  <46.572014, 36.757740, 33.455528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633728, 36.157154, 33.146503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254227, 36.198887, 33.265827>,  <46.026527, 36.223927, 33.337421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254227, 36.198887, 33.265827>,  <46.633728, 36.157154, 33.146503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254227, 36.198887, 33.265827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315894, -0.285477, -0.904828,
		-0.009236, -0.952690, 0.303803,
		-0.948750, 0.104326, 0.298312,
		45.969601, 36.230186, 33.355320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.151672, 35.612751, 33.191063>,  <46.633728, 36.157154, 33.146503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.151672, 35.612751, 33.191063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.339840, 35.260948, 33.219810>,  <47.452740, 35.049866, 33.237061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.339840, 35.260948, 33.219810>,  <47.151672, 35.612751, 33.191063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.339840, 35.260948, 33.219810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473295, 0.320211, 0.820644,
		-0.744778, -0.352034, 0.566902,
		0.470423, -0.879509, 0.071871,
		47.480968, 34.997097, 33.241371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977440, 35.271263, 33.867203>,  <47.151672, 35.612751, 33.191063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977440, 35.271263, 33.867203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.340054, 35.160065, 33.740135>,  <47.557621, 35.093346, 33.663895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.340054, 35.160065, 33.740135>,  <46.977440, 35.271263, 33.867203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.340054, 35.160065, 33.740135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403997, 0.353142, 0.843846,
		-0.122407, -0.893312, 0.432447,
		0.906533, -0.278000, -0.317669,
		47.612015, 35.076664, 33.644836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.890999, 34.696728, 34.263241>,  <46.977440, 35.271263, 33.867203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.890999, 34.696728, 34.263241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491699, 34.714146, 34.247223>,  <46.252121, 34.724594, 34.237610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491699, 34.714146, 34.247223>,  <46.890999, 34.696728, 34.263241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491699, 34.714146, 34.247223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057216, 0.538533, -0.840660,
		-0.015038, -0.841479, -0.540081,
		-0.998249, 0.043543, -0.040048,
		46.192226, 34.727207, 34.235210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.517185, 34.697002, 34.618946>,  <46.890999, 34.696728, 34.263241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.517185, 34.697002, 34.618946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445324, 35.058243, 34.774963>,  <47.402206, 35.274986, 34.868572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445324, 35.058243, 34.774963>,  <47.517185, 34.697002, 34.618946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445324, 35.058243, 34.774963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149091, -0.366918, 0.918228,
		0.972367, 0.223113, -0.068727,
		-0.179652, 0.903101, 0.390043,
		47.391430, 35.329174, 34.891975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.153954, 38.026154, 43.847702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782551, 37.878803, 43.829094>,  <34.559708, 37.790394, 43.817928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782551, 37.878803, 43.829094>,  <35.153954, 38.026154, 43.847702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782551, 37.878803, 43.829094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046012, 0.010162, -0.998889,
		0.368442, -0.929620, 0.007514,
		-0.928511, -0.368379, -0.046518,
		34.503998, 37.768291, 43.815140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085361, 37.547855, 43.379932>,  <35.153954, 38.026154, 43.847702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085361, 37.547855, 43.379932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.695469, 37.630016, 43.415062>,  <34.461533, 37.679314, 43.436138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.695469, 37.630016, 43.415062>,  <35.085361, 37.547855, 43.379932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695469, 37.630016, 43.415062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103288, -0.065794, -0.992473,
		-0.198080, -0.976463, 0.085347,
		-0.974729, 0.205404, 0.087825,
		34.403049, 37.691639, 43.441410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816792, 37.180611, 42.854065>,  <35.085361, 37.547855, 43.379932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816792, 37.180611, 42.854065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503765, 37.407509, 42.956692>,  <34.315948, 37.543648, 43.018269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503765, 37.407509, 42.956692>,  <34.816792, 37.180611, 42.854065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503765, 37.407509, 42.956692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186157, 0.180046, -0.965883,
		-0.594088, -0.803625, -0.035300,
		-0.782563, 0.567248, 0.256564,
		34.268997, 37.577682, 43.033661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226849, 36.869827, 42.458725>,  <34.816792, 37.180611, 42.854065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226849, 36.869827, 42.458725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.167892, 37.255970, 42.544849>,  <34.132519, 37.487656, 42.596523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.167892, 37.255970, 42.544849>,  <34.226849, 36.869827, 42.458725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167892, 37.255970, 42.544849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332300, 0.156706, -0.930064,
		-0.931586, -0.208633, 0.297691,
		-0.147392, 0.965357, 0.215314,
		34.123676, 37.545578, 42.609444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766228, 37.066074, 42.055302>,  <34.226849, 36.869827, 42.458725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766228, 37.066074, 42.055302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.925541, 37.422234, 42.143448>,  <34.021130, 37.635929, 42.196335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.925541, 37.422234, 42.143448>,  <33.766228, 37.066074, 42.055302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925541, 37.422234, 42.143448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186686, 0.313903, -0.930920,
		-0.898064, 0.329631, 0.291248,
		0.398284, 0.890398, 0.220368,
		34.045025, 37.689354, 42.209557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348534, 37.475613, 41.662064>,  <33.766228, 37.066074, 42.055302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348534, 37.475613, 41.662064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.675465, 37.699219, 41.717892>,  <33.871624, 37.833382, 41.751389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.675465, 37.699219, 41.717892>,  <33.348534, 37.475613, 41.662064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675465, 37.699219, 41.717892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014030, 0.261469, -0.965110,
		-0.576000, 0.786855, 0.221549,
		0.817330, 0.559011, 0.139566,
		33.920662, 37.866920, 41.759762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437275, 37.752213, 41.010712>,  <33.348534, 37.475613, 41.662064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437275, 37.752213, 41.010712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.779202, 37.878174, 41.175697>,  <33.984356, 37.953751, 41.274689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.779202, 37.878174, 41.175697>,  <33.437275, 37.752213, 41.010712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779202, 37.878174, 41.175697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294871, 0.359285, -0.885418,
		-0.427011, 0.878494, 0.214267,
		0.854817, 0.314902, 0.412461,
		34.035648, 37.972645, 41.299435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513256, 38.542717, 40.938168>,  <33.437275, 37.752213, 41.010712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513256, 38.542717, 40.938168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.854115, 38.333485, 40.931965>,  <34.058628, 38.207947, 40.928242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.854115, 38.333485, 40.931965>,  <33.513256, 38.542717, 40.938168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854115, 38.333485, 40.931965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228769, 0.399010, -0.887951,
		0.470654, 0.753115, 0.459677,
		0.852144, -0.523077, -0.015506,
		34.109756, 38.176563, 40.927315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900063, 38.927689, 40.523136>,  <33.513256, 38.542717, 40.938168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900063, 38.927689, 40.523136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.085178, 38.573265, 40.533932>,  <34.196247, 38.360611, 40.540409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.085178, 38.573265, 40.533932>,  <33.900063, 38.927689, 40.523136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085178, 38.573265, 40.533932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298243, 0.126964, -0.946008,
		0.834789, 0.445855, 0.323018,
		0.462794, -0.886055, 0.026985,
		34.224018, 38.307449, 40.542027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415001, 38.908638, 40.004738>,  <33.900063, 38.927689, 40.523136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415001, 38.908638, 40.004738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406429, 38.516953, 40.085415>,  <34.401287, 38.281940, 40.133820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406429, 38.516953, 40.085415>,  <34.415001, 38.908638, 40.004738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406429, 38.516953, 40.085415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464806, -0.188367, -0.865143,
		0.885153, 0.075207, 0.459182,
		-0.021430, -0.979215, 0.201690,
		34.400002, 38.223186, 40.145924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037685, 38.566395, 40.207726>,  <34.415001, 38.908638, 40.004738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037685, 38.566395, 40.207726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792110, 38.308117, 40.026104>,  <34.644768, 38.153149, 39.917133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792110, 38.308117, 40.026104>,  <35.037685, 38.566395, 40.207726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792110, 38.308117, 40.026104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593826, 0.001172, -0.804593,
		0.520053, -0.763595, 0.382710,
		-0.613935, -0.645694, -0.454052,
		34.607929, 38.114410, 39.889889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492546, 38.048721, 39.897030>,  <35.037685, 38.566395, 40.207726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492546, 38.048721, 39.897030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144672, 38.016277, 39.702271>,  <34.935947, 37.996811, 39.585415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144672, 38.016277, 39.702271>,  <35.492546, 38.048721, 39.897030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144672, 38.016277, 39.702271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490057, -0.023703, -0.871368,
		0.059133, -0.996423, 0.060361,
		-0.869683, -0.081107, -0.486902,
		34.883766, 37.991943, 39.556198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706581, 37.804352, 39.305759>,  <35.492546, 38.048721, 39.897030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706581, 37.804352, 39.305759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.340538, 37.921345, 39.194744>,  <35.120911, 37.991539, 39.128136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.340538, 37.921345, 39.194744>,  <35.706581, 37.804352, 39.305759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340538, 37.921345, 39.194744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260064, -0.097852, -0.960621,
		-0.308121, -0.951252, 0.013482,
		-0.915111, 0.292482, -0.277536,
		35.066006, 38.009090, 39.111485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518238, 37.294640, 38.830837>,  <35.706581, 37.804352, 39.305759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518238, 37.294640, 38.830837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.273266, 37.594883, 38.731632>,  <35.126282, 37.775028, 38.672112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.273266, 37.594883, 38.731632>,  <35.518238, 37.294640, 38.830837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273266, 37.594883, 38.731632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161468, -0.188336, -0.968740,
		-0.773857, -0.633333, -0.005857,
		-0.612432, 0.750612, -0.248008,
		35.089535, 37.820068, 38.657230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986317, 36.954857, 38.359978>,  <35.518238, 37.294640, 38.830837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986317, 36.954857, 38.359978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962524, 37.351097, 38.310711>,  <34.948250, 37.588840, 38.281151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962524, 37.351097, 38.310711>,  <34.986317, 36.954857, 38.359978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962524, 37.351097, 38.310711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063604, -0.119378, -0.990810,
		-0.996201, -0.066767, -0.055906,
		-0.059480, 0.990602, -0.123171,
		34.944679, 37.648277, 38.273758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413811, 37.109608, 37.969032>,  <34.986317, 36.954857, 38.359978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413811, 37.109608, 37.969032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667641, 37.411446, 37.902214>,  <34.819939, 37.592548, 37.862125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667641, 37.411446, 37.902214>,  <34.413811, 37.109608, 37.969032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667641, 37.411446, 37.902214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038127, -0.185306, -0.981941,
		-0.771917, 0.629488, -0.088820,
		0.634579, 0.754591, -0.167041,
		34.858013, 37.637821, 37.852100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183254, 37.395103, 37.366985>,  <34.413811, 37.109608, 37.969032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183254, 37.395103, 37.366985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552074, 37.543144, 37.412312>,  <34.773369, 37.631969, 37.439507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552074, 37.543144, 37.412312>,  <34.183254, 37.395103, 37.366985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552074, 37.543144, 37.412312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213807, -0.242986, -0.946173,
		-0.322648, 0.896650, -0.303177,
		0.922055, 0.370102, 0.113311,
		34.828690, 37.654175, 37.446304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308987, 37.874523, 36.919830>,  <34.183254, 37.395103, 37.366985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308987, 37.874523, 36.919830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694916, 37.799480, 36.993504>,  <34.926472, 37.754456, 37.037708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694916, 37.799480, 36.993504>,  <34.308987, 37.874523, 36.919830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694916, 37.799480, 36.993504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165934, -0.108846, -0.980112,
		0.203923, 0.976195, -0.073886,
		0.964822, -0.187607, 0.184180,
		34.984364, 37.743198, 37.048756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730755, 38.265339, 36.484455>,  <34.308987, 37.874523, 36.919830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730755, 38.265339, 36.484455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974442, 37.961342, 36.575027>,  <35.120655, 37.778946, 36.629372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974442, 37.961342, 36.575027>,  <34.730755, 38.265339, 36.484455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974442, 37.961342, 36.575027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335598, -0.011616, -0.941934,
		0.718489, 0.649832, 0.247974,
		0.609218, -0.759989, 0.226428,
		35.157207, 37.733345, 36.642956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319984, 38.346149, 36.063236>,  <34.730755, 38.265339, 36.484455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319984, 38.346149, 36.063236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371346, 37.964691, 36.172100>,  <35.402161, 37.735817, 36.237419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371346, 37.964691, 36.172100>,  <35.319984, 38.346149, 36.063236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371346, 37.964691, 36.172100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496678, -0.175699, -0.849965,
		0.858385, 0.244314, 0.451095,
		0.128401, -0.953646, 0.272162,
		35.409866, 37.678596, 36.253750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956039, 38.177711, 35.854481>,  <35.319984, 38.346149, 36.063236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956039, 38.177711, 35.854481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785862, 37.819351, 35.905643>,  <35.683754, 37.604336, 35.936340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785862, 37.819351, 35.905643>,  <35.956039, 38.177711, 35.854481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785862, 37.819351, 35.905643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256089, -0.254739, -0.932484,
		0.867994, -0.363967, 0.337807,
		-0.425446, -0.895900, 0.127904,
		35.658230, 37.550583, 35.944016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478489, 37.612408, 35.657543>,  <35.956039, 38.177711, 35.854481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478489, 37.612408, 35.657543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116405, 37.447170, 35.617634>,  <35.899155, 37.348026, 35.593689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116405, 37.447170, 35.617634>,  <36.478489, 37.612408, 35.657543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116405, 37.447170, 35.617634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267613, -0.371704, -0.888943,
		0.330130, -0.831378, 0.447018,
		-0.905206, -0.413095, -0.099776,
		35.844845, 37.323242, 35.587700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936096, 37.445477, 35.052021>,  <36.478489, 37.612408, 35.657543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936096, 37.445477, 35.052021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.334099, 37.435574, 35.090710>,  <37.572899, 37.429630, 35.113922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.334099, 37.435574, 35.090710>,  <36.936096, 37.445477, 35.052021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334099, 37.435574, 35.090710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099094, -0.126518, 0.987002,
		-0.012197, -0.991655, -0.128339,
		0.995003, -0.024757, 0.096724,
		37.632599, 37.428146, 35.119728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188595, 36.765888, 35.329037>,  <36.936096, 37.445477, 35.052021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188595, 36.765888, 35.329037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456280, 37.049850, 35.416851>,  <37.616890, 37.220226, 35.469540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456280, 37.049850, 35.416851>,  <37.188595, 36.765888, 35.329037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456280, 37.049850, 35.416851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110368, -0.197209, 0.974129,
		0.734833, -0.676124, -0.053623,
		0.669208, 0.709904, 0.219538,
		37.657043, 37.262821, 35.482712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548645, 36.459045, 35.855103>,  <37.188595, 36.765888, 35.329037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548645, 36.459045, 35.855103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661221, 36.841221, 35.890709>,  <37.728764, 37.070526, 35.912071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661221, 36.841221, 35.890709>,  <37.548645, 36.459045, 35.855103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661221, 36.841221, 35.890709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084681, -0.117133, 0.989499,
		0.955837, -0.270941, -0.113873,
		0.281435, 0.955443, 0.089016,
		37.745651, 37.127853, 35.917416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244881, 36.453232, 36.233997>,  <37.548645, 36.459045, 35.855103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244881, 36.453232, 36.233997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.090485, 36.819088, 36.282082>,  <37.997849, 37.038601, 36.310932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.090485, 36.819088, 36.282082>,  <38.244881, 36.453232, 36.233997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090485, 36.819088, 36.282082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142228, -0.069751, 0.987373,
		0.911474, 0.398212, -0.103164,
		-0.385988, 0.914638, 0.120214,
		37.974689, 37.093479, 36.318146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725723, 36.874973, 36.659790>,  <38.244881, 36.453232, 36.233997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725723, 36.874973, 36.659790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368435, 37.053116, 36.684513>,  <38.154060, 37.160000, 36.699345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368435, 37.053116, 36.684513>,  <38.725723, 36.874973, 36.659790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368435, 37.053116, 36.684513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037583, -0.210935, 0.976777,
		0.448047, 0.870154, 0.205149,
		-0.893220, 0.445352, 0.061806,
		38.100468, 37.186722, 36.703056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793312, 37.285316, 37.270592>,  <38.725723, 36.874973, 36.659790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793312, 37.285316, 37.270592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397293, 37.238747, 37.238941>,  <38.159683, 37.210804, 37.219952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397293, 37.238747, 37.238941>,  <38.793312, 37.285316, 37.270592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397293, 37.238747, 37.238941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075212, -0.037617, 0.996458,
		-0.118984, 0.992488, 0.028486,
		-0.990043, -0.116420, -0.079123,
		38.100281, 37.203819, 37.215202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369801, 37.770508, 37.728493>,  <38.793312, 37.285316, 37.270592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369801, 37.770508, 37.728493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096851, 37.495312, 37.629669>,  <37.933083, 37.330196, 37.570374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096851, 37.495312, 37.629669>,  <38.369801, 37.770508, 37.728493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096851, 37.495312, 37.629669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221505, -0.127486, 0.966790,
		-0.696636, 0.714438, -0.065400,
		-0.682373, -0.687987, -0.247063,
		37.892139, 37.288914, 37.555550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823048, 37.956947, 38.204304>,  <38.369801, 37.770508, 37.728493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823048, 37.956947, 38.204304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712921, 37.592857, 38.080566>,  <37.646847, 37.374405, 38.006325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712921, 37.592857, 38.080566>,  <37.823048, 37.956947, 38.204304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712921, 37.592857, 38.080566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512315, -0.133363, 0.848379,
		-0.813472, 0.392049, -0.429606,
		-0.275313, -0.910226, -0.309340,
		37.630329, 37.319790, 37.987766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156750, 37.842819, 38.470245>,  <37.823048, 37.956947, 38.204304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156750, 37.842819, 38.470245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.271431, 37.468719, 38.387188>,  <37.340240, 37.244259, 38.337353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.271431, 37.468719, 38.387188>,  <37.156750, 37.842819, 38.470245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271431, 37.468719, 38.387188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317160, -0.297174, 0.900609,
		-0.903998, -0.192349, -0.381823,
		0.286699, -0.935248, -0.207639,
		37.357441, 37.188145, 38.324898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667816, 37.413296, 38.684372>,  <37.156750, 37.842819, 38.470245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667816, 37.413296, 38.684372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954468, 37.135273, 38.661282>,  <37.126461, 36.968460, 38.647427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954468, 37.135273, 38.661282>,  <36.667816, 37.413296, 38.684372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954468, 37.135273, 38.661282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319768, -0.400985, 0.858463,
		-0.619829, -0.596744, -0.509616,
		0.716631, -0.695059, -0.057722,
		37.169456, 36.926754, 38.643967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316460, 36.833778, 38.826401>,  <36.667816, 37.413296, 38.684372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316460, 36.833778, 38.826401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699802, 36.744987, 38.898273>,  <36.929806, 36.691711, 38.941399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699802, 36.744987, 38.898273>,  <36.316460, 36.833778, 38.826401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699802, 36.744987, 38.898273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228249, -0.217197, 0.949067,
		-0.171645, -0.950553, -0.258818,
		0.958353, -0.221977, 0.179682,
		36.987309, 36.678394, 38.952179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301235, 36.347385, 39.317707>,  <36.316460, 36.833778, 38.826401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301235, 36.347385, 39.317707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685013, 36.455200, 39.350746>,  <36.915279, 36.519890, 39.370571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685013, 36.455200, 39.350746>,  <36.301235, 36.347385, 39.317707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685013, 36.455200, 39.350746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009455, -0.323606, 0.946145,
		0.281747, -0.906990, -0.313029,
		0.959443, 0.269533, 0.082599,
		36.972847, 36.536060, 39.375526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677479, 35.758808, 39.747040>,  <36.301235, 36.347385, 39.317707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677479, 35.758808, 39.747040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875179, 36.103638, 39.791824>,  <36.993801, 36.310535, 39.818695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875179, 36.103638, 39.791824>,  <36.677479, 35.758808, 39.747040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875179, 36.103638, 39.791824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023417, -0.115539, 0.993027,
		0.869002, -0.493430, -0.036919,
		0.494255, 0.862078, 0.111958,
		37.023457, 36.362263, 39.825413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019600, 35.595142, 40.256283>,  <36.677479, 35.758808, 39.747040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019600, 35.595142, 40.256283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040916, 35.994194, 40.273674>,  <37.053707, 36.233627, 40.284107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040916, 35.994194, 40.273674>,  <37.019600, 35.595142, 40.256283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040916, 35.994194, 40.273674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016600, -0.044415, 0.998875,
		0.998441, -0.052509, -0.018927,
		0.053291, 0.997632, 0.043474,
		37.056904, 36.293484, 40.286716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518181, 35.823078, 40.755192>,  <37.019600, 35.595142, 40.256283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518181, 35.823078, 40.755192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333191, 36.176136, 40.721592>,  <37.222198, 36.387970, 40.701431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333191, 36.176136, 40.721592>,  <37.518181, 35.823078, 40.755192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333191, 36.176136, 40.721592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078302, 0.135031, 0.987743,
		0.883167, 0.450230, -0.131562,
		-0.462476, 0.882643, -0.084001,
		37.194447, 36.440929, 40.696392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937798, 36.377243, 41.106453>,  <37.518181, 35.823078, 40.755192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937798, 36.377243, 41.106453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554382, 36.490868, 41.097378>,  <37.324333, 36.559040, 41.091934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554382, 36.490868, 41.097378>,  <37.937798, 36.377243, 41.106453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554382, 36.490868, 41.097378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050460, 0.247554, 0.967559,
		0.280461, 0.926298, -0.251624,
		-0.958538, 0.284060, -0.022689,
		37.266819, 36.576084, 41.090572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944916, 36.970116, 41.445385>,  <37.937798, 36.377243, 41.106453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944916, 36.970116, 41.445385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555515, 36.879147, 41.435745>,  <37.321877, 36.824566, 41.429962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555515, 36.879147, 41.435745>,  <37.944916, 36.970116, 41.445385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555515, 36.879147, 41.435745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077467, 0.228776, 0.970392,
		-0.215173, 0.946542, -0.240330,
		-0.973498, -0.227420, -0.024100,
		37.263466, 36.810921, 41.428516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631817, 37.453892, 41.874371>,  <37.944916, 36.970116, 41.445385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631817, 37.453892, 41.874371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344021, 37.176296, 41.863754>,  <37.171341, 37.009739, 41.857384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344021, 37.176296, 41.863754>,  <37.631817, 37.453892, 41.874371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344021, 37.176296, 41.863754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210315, 0.181302, 0.960676,
		-0.661888, 0.696783, -0.276402,
		-0.719494, -0.693991, -0.026542,
		37.128174, 36.968098, 41.855793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.926479, 37.867149, 42.106899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879910, 37.474751, 42.168991>,  <36.851967, 37.239311, 42.206245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879910, 37.474751, 42.168991>,  <36.926479, 37.867149, 42.106899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879910, 37.474751, 42.168991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362734, 0.187499, 0.912835,
		-0.924591, 0.049972, -0.377670,
		-0.116428, -0.980993, 0.155233,
		36.844982, 37.180454, 42.215561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277229, 37.778870, 42.578003>,  <36.926479, 37.867149, 42.106899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277229, 37.778870, 42.578003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400162, 37.400253, 42.617199>,  <36.473919, 37.173084, 42.640717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400162, 37.400253, 42.617199>,  <36.277229, 37.778870, 42.578003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400162, 37.400253, 42.617199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042739, 0.089141, 0.995102,
		-0.950643, -0.310012, -0.013059,
		0.307329, -0.946545, 0.097991,
		36.492359, 37.116291, 42.646595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736031, 37.413952, 42.899532>,  <36.277229, 37.778870, 42.578003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736031, 37.413952, 42.899532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070450, 37.214298, 42.990643>,  <36.271103, 37.094505, 43.045311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070450, 37.214298, 42.990643>,  <35.736031, 37.413952, 42.899532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070450, 37.214298, 42.990643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190090, 0.125922, 0.973658,
		-0.514673, -0.857324, 0.010395,
		0.836049, -0.499139, 0.227777,
		36.321266, 37.064556, 43.058975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521183, 36.850471, 43.352592>,  <35.736031, 37.413952, 42.899532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521183, 36.850471, 43.352592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910378, 36.918625, 43.414902>,  <36.143894, 36.959518, 43.452286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910378, 36.918625, 43.414902>,  <35.521183, 36.850471, 43.352592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910378, 36.918625, 43.414902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196652, 0.258268, 0.945847,
		0.120923, -0.950930, 0.284797,
		0.972988, 0.170381, 0.155772,
		36.202274, 36.969738, 43.461632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607452, 36.697300, 43.947639>,  <35.521183, 36.850471, 43.352592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607452, 36.697300, 43.947639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955788, 36.889130, 43.904465>,  <36.164787, 37.004227, 43.878559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955788, 36.889130, 43.904465>,  <35.607452, 36.697300, 43.947639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955788, 36.889130, 43.904465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030444, 0.166536, 0.985565,
		0.490629, -0.861552, 0.130425,
		0.870837, 0.479576, -0.107937,
		36.217037, 37.033001, 43.872086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129395, 36.326424, 44.424683>,  <35.607452, 36.697300, 43.947639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129395, 36.326424, 44.424683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.269886, 36.697598, 44.374756>,  <36.354179, 36.920303, 44.344799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.269886, 36.697598, 44.374756>,  <36.129395, 36.326424, 44.424683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269886, 36.697598, 44.374756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320781, 0.005979, 0.947134,
		0.879624, -0.372698, -0.295564,
		0.351228, 0.927933, -0.124813,
		36.375256, 36.975979, 44.337311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791073, 36.358475, 44.837330>,  <36.129395, 36.326424, 44.424683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791073, 36.358475, 44.837330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716587, 36.740421, 44.744766>,  <36.671894, 36.969589, 44.689228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716587, 36.740421, 44.744766>,  <36.791073, 36.358475, 44.837330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716587, 36.740421, 44.744766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400738, 0.288865, 0.869463,
		0.897069, 0.069169, -0.436443,
		-0.186213, 0.954868, -0.231414,
		36.660725, 37.026882, 44.675343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403549, 36.673668, 44.971306>,  <36.791073, 36.358475, 44.837330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403549, 36.673668, 44.971306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139835, 36.974091, 44.985481>,  <36.981609, 37.154346, 44.993984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139835, 36.974091, 44.985481>,  <37.403549, 36.673668, 44.971306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139835, 36.974091, 44.985481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482254, 0.386226, 0.786295,
		0.576869, 0.535480, -0.616834,
		-0.659283, 0.751060, 0.035435,
		36.942051, 37.199409, 44.996113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791641, 37.275711, 44.955128>,  <37.403549, 36.673668, 44.971306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791641, 37.275711, 44.955128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.442230, 37.356441, 45.132317>,  <37.232586, 37.404881, 45.238628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.442230, 37.356441, 45.132317>,  <37.791641, 37.275711, 44.955128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442230, 37.356441, 45.132317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467944, 0.097444, 0.878369,
		0.134110, 0.974563, -0.179561,
		-0.873523, 0.201822, 0.442973,
		37.180172, 37.416988, 45.265209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952000, 37.886002, 45.286446>,  <37.791641, 37.275711, 44.955128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952000, 37.886002, 45.286446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645687, 37.701805, 45.466015>,  <37.461899, 37.591286, 45.573757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645687, 37.701805, 45.466015>,  <37.952000, 37.886002, 45.286446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645687, 37.701805, 45.466015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438877, 0.136040, 0.888189,
		-0.470076, 0.877177, 0.097923,
		-0.765778, -0.460493, 0.448922,
		37.415955, 37.563656, 45.600693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789509, 38.346630, 45.826111>,  <37.952000, 37.886002, 45.286446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789509, 38.346630, 45.826111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624012, 37.996872, 45.927498>,  <37.524715, 37.787018, 45.988331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624012, 37.996872, 45.927498>,  <37.789509, 38.346630, 45.826111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624012, 37.996872, 45.927498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515630, 0.004389, 0.856800,
		-0.750297, 0.485190, 0.449050,
		-0.413740, -0.874398, 0.253472,
		37.499889, 37.734554, 46.003540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685394, 38.393566, 46.546799>,  <37.789509, 38.346630, 45.826111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685394, 38.393566, 46.546799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682178, 37.998238, 46.485920>,  <37.680248, 37.761040, 46.449394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682178, 37.998238, 46.485920>,  <37.685394, 38.393566, 46.546799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682178, 37.998238, 46.485920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471732, -0.137950, 0.870884,
		-0.881705, -0.064795, 0.467330,
		-0.008040, -0.988317, -0.152197,
		37.679768, 37.701744, 46.440262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704437, 38.268574, 47.142467>,  <37.685394, 38.393566, 46.546799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704437, 38.268574, 47.142467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777809, 37.909035, 46.983257>,  <37.821831, 37.693310, 46.887730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777809, 37.909035, 46.983257>,  <37.704437, 38.268574, 47.142467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777809, 37.909035, 46.983257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557927, -0.238175, 0.794978,
		-0.809365, -0.367888, 0.457805,
		0.183426, -0.898850, -0.398025,
		37.832836, 37.639381, 46.863850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499382, 37.814758, 47.621460>,  <37.704437, 38.268574, 47.142467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499382, 37.814758, 47.621460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774643, 37.630871, 47.396923>,  <37.939800, 37.520538, 47.262199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774643, 37.630871, 47.396923>,  <37.499382, 37.814758, 47.621460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774643, 37.630871, 47.396923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524103, -0.220080, 0.822728,
		-0.501765, -0.860362, 0.089494,
		0.688148, -0.459720, -0.561346,
		37.981087, 37.492954, 47.228519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691914, 37.293568, 48.042454>,  <37.499382, 37.814758, 47.621460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691914, 37.293568, 48.042454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977009, 37.267239, 47.763123>,  <38.148067, 37.251442, 47.595524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977009, 37.267239, 47.763123>,  <37.691914, 37.293568, 48.042454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977009, 37.267239, 47.763123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667459, -0.242419, 0.704082,
		-0.215631, -0.967936, -0.128850,
		0.712743, -0.065820, -0.698331,
		38.190830, 37.247494, 47.553623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041145, 36.624218, 48.046387>,  <37.691914, 37.293568, 48.042454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041145, 36.624218, 48.046387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273453, 36.913612, 47.897110>,  <38.412838, 37.087250, 47.807545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273453, 36.913612, 47.897110>,  <38.041145, 36.624218, 48.046387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273453, 36.913612, 47.897110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704824, -0.217490, 0.675219,
		0.407348, -0.655181, -0.636243,
		0.580768, 0.723489, -0.373193,
		38.447681, 37.130657, 47.785152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722816, 36.274792, 48.113388>,  <38.041145, 36.624218, 48.046387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722816, 36.274792, 48.113388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.745003, 36.673019, 48.083038>,  <38.758312, 36.911957, 48.064827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.745003, 36.673019, 48.083038>,  <38.722816, 36.274792, 48.113388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745003, 36.673019, 48.083038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623777, 0.024788, 0.781209,
		0.779632, -0.090656, -0.619642,
		0.055461, 0.995574, -0.075874,
		38.761642, 36.971691, 48.060276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494308, 36.427158, 48.388493>,  <38.722816, 36.274792, 48.113388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494308, 36.427158, 48.388493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247395, 36.741776, 48.381409>,  <39.099247, 36.930546, 48.377159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247395, 36.741776, 48.381409>,  <39.494308, 36.427158, 48.388493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247395, 36.741776, 48.381409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380466, 0.318147, 0.868348,
		0.688627, 0.529277, -0.495639,
		-0.617283, 0.786542, -0.017713,
		39.062210, 36.977737, 48.376095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947506, 36.832603, 48.570755>,  <39.494308, 36.427158, 48.388493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947506, 36.832603, 48.570755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601727, 37.011341, 48.662895>,  <39.394260, 37.118584, 48.718178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601727, 37.011341, 48.662895>,  <39.947506, 36.832603, 48.570755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601727, 37.011341, 48.662895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370653, 0.256948, 0.892521,
		0.339633, 0.856916, -0.387743,
		-0.864445, 0.446848, 0.230351,
		39.342392, 37.145397, 48.732002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072990, 37.561836, 48.961349>,  <39.947506, 36.832603, 48.570755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072990, 37.561836, 48.961349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697254, 37.440285, 49.024975>,  <39.471813, 37.367355, 49.063148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697254, 37.440285, 49.024975>,  <40.072990, 37.561836, 48.961349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697254, 37.440285, 49.024975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043395, 0.354730, 0.933961,
		-0.340233, 0.884209, -0.320026,
		-0.939339, -0.303877, 0.159061,
		39.415451, 37.349121, 49.072693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781769, 38.151516, 49.453587>,  <40.072990, 37.561836, 48.961349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781769, 38.151516, 49.453587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553852, 37.824280, 49.484741>,  <39.417103, 37.627937, 49.503433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553852, 37.824280, 49.484741>,  <39.781769, 38.151516, 49.453587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553852, 37.824280, 49.484741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061080, 0.052354, 0.996759,
		-0.819518, 0.572699, 0.020139,
		-0.569789, -0.818092, 0.077885,
		39.382915, 37.578854, 49.508106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290657, 38.362099, 50.011093>,  <39.781769, 38.151516, 49.453587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290657, 38.362099, 50.011093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302433, 37.966579, 49.952568>,  <39.309498, 37.729267, 49.917454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302433, 37.966579, 49.952568>,  <39.290657, 38.362099, 50.011093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302433, 37.966579, 49.952568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159199, -0.149141, 0.975916,
		-0.986808, -0.005435, -0.161806,
		0.029436, -0.988801, -0.146308,
		39.311264, 37.669941, 49.908676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729385, 38.069275, 50.374081>,  <39.290657, 38.362099, 50.011093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729385, 38.069275, 50.374081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972755, 37.761776, 50.295231>,  <39.118778, 37.577278, 50.247921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972755, 37.761776, 50.295231>,  <38.729385, 38.069275, 50.374081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972755, 37.761776, 50.295231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108590, -0.165410, 0.980229,
		-0.786150, -0.617798, -0.017161,
		0.608421, -0.768743, -0.197124,
		39.155281, 37.531155, 50.236095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540028, 37.565521, 50.863365>,  <38.729385, 38.069275, 50.374081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540028, 37.565521, 50.863365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913754, 37.504108, 50.734684>,  <39.137989, 37.467262, 50.657475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913754, 37.504108, 50.734684>,  <38.540028, 37.565521, 50.863365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913754, 37.504108, 50.734684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296326, -0.167088, 0.940358,
		-0.198132, -0.973914, -0.110615,
		0.934309, -0.153537, -0.321702,
		39.194046, 37.458050, 50.638172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920307, 37.186352, 50.564018>,  <38.540028, 37.565521, 50.863365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920307, 37.186352, 50.564018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599697, 37.206120, 50.802383>,  <37.407330, 37.217979, 50.945404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599697, 37.206120, 50.802383>,  <37.920307, 37.186352, 50.564018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599697, 37.206120, 50.802383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593966, -0.180804, -0.783909,
		0.069001, -0.982277, 0.174274,
		-0.801526, 0.049423, 0.595915,
		37.359238, 37.220947, 50.981159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504574, 36.745804, 50.228149>,  <37.920307, 37.186352, 50.564018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504574, 36.745804, 50.228149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232220, 36.895523, 50.479954>,  <37.068806, 36.985355, 50.631039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232220, 36.895523, 50.479954>,  <37.504574, 36.745804, 50.228149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232220, 36.895523, 50.479954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712165, -0.137785, -0.688358,
		-0.170925, -0.917009, 0.360389,
		-0.680886, 0.374313, 0.629510,
		37.027954, 37.007812, 50.668808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997986, 36.303837, 50.230473>,  <37.504574, 36.745804, 50.228149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997986, 36.303837, 50.230473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820740, 36.636078, 50.365383>,  <36.714394, 36.835423, 50.446327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820740, 36.636078, 50.365383>,  <36.997986, 36.303837, 50.230473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820740, 36.636078, 50.365383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553370, 0.042565, -0.831848,
		-0.705288, -0.555242, 0.440767,
		-0.443116, 0.830599, 0.337274,
		36.687805, 36.885258, 50.466564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289627, 36.131447, 50.260380>,  <36.997986, 36.303837, 50.230473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289627, 36.131447, 50.260380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285446, 36.531158, 50.245750>,  <36.282940, 36.770985, 50.236973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285446, 36.531158, 50.245750>,  <36.289627, 36.131447, 50.260380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285446, 36.531158, 50.245750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681661, -0.033879, -0.730884,
		-0.731594, 0.017294, 0.681522,
		-0.010449, 0.999276, -0.036574,
		36.282310, 36.830940, 50.234779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598801, 36.322731, 50.226898>,  <36.289627, 36.131447, 50.260380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598801, 36.322731, 50.226898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.790279, 36.642597, 50.081913>,  <35.905167, 36.834518, 49.994923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.790279, 36.642597, 50.081913>,  <35.598801, 36.322731, 50.226898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790279, 36.642597, 50.081913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572730, -0.028491, -0.819249,
		-0.665452, 0.599770, 0.444354,
		0.478700, 0.799665, -0.362466,
		35.933891, 36.882496, 49.973175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079796, 36.641926, 50.002331>,  <35.598801, 36.322731, 50.226898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079796, 36.641926, 50.002331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403873, 36.772453, 49.807560>,  <35.598320, 36.850769, 49.690697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403873, 36.772453, 49.807560>,  <35.079796, 36.641926, 50.002331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403873, 36.772453, 49.807560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509759, -0.017816, -0.860132,
		-0.289352, 0.945092, 0.151909,
		0.810198, 0.326318, -0.486925,
		35.646935, 36.870350, 49.661484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826866, 37.164841, 49.523514>,  <35.079796, 36.641926, 50.002331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826866, 37.164841, 49.523514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194695, 37.112202, 49.375420>,  <35.415390, 37.080620, 49.286564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194695, 37.112202, 49.375420>,  <34.826866, 37.164841, 49.523514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194695, 37.112202, 49.375420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367383, 0.046259, -0.928919,
		0.139368, 0.990224, -0.005808,
		0.919569, -0.131595, -0.370238,
		35.470566, 37.072723, 49.264347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907990, 37.744637, 49.104801>,  <34.826866, 37.164841, 49.523514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907990, 37.744637, 49.104801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.188942, 37.490322, 48.976776>,  <35.357513, 37.337734, 48.899960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.188942, 37.490322, 48.976776>,  <34.907990, 37.744637, 49.104801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188942, 37.490322, 48.976776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254615, 0.195487, -0.947078,
		0.664703, 0.746703, -0.024573,
		0.702382, -0.635782, -0.320063,
		35.399658, 37.299587, 48.880756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361958, 38.077713, 48.628788>,  <34.907990, 37.744637, 49.104801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361958, 38.077713, 48.628788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374496, 37.683495, 48.562187>,  <35.382019, 37.446964, 48.522224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374496, 37.683495, 48.562187>,  <35.361958, 38.077713, 48.628788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374496, 37.683495, 48.562187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388439, 0.141478, -0.910549,
		0.920941, 0.093224, -0.378387,
		0.031351, -0.985542, -0.166504,
		35.383904, 37.387833, 48.512238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722660, 37.989773, 48.057472>,  <35.361958, 38.077713, 48.628788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722660, 37.989773, 48.057472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512981, 37.649269, 48.067039>,  <35.387173, 37.444965, 48.072781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512981, 37.649269, 48.067039>,  <35.722660, 37.989773, 48.057472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512981, 37.649269, 48.067039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336835, 0.181460, -0.923913,
		0.782150, -0.492371, -0.381855,
		-0.524199, -0.851260, 0.023919,
		35.355721, 37.393890, 48.074215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021347, 37.574902, 47.465317>,  <35.722660, 37.989773, 48.057472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021347, 37.574902, 47.465317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645977, 37.479717, 47.565506>,  <35.420753, 37.422607, 47.625618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645977, 37.479717, 47.565506>,  <36.021347, 37.574902, 47.465317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645977, 37.479717, 47.565506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273666, 0.069493, -0.959311,
		0.210871, -0.968786, -0.130335,
		-0.938424, -0.237959, 0.250469,
		35.364449, 37.408329, 47.640648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860153, 37.160950, 46.904675>,  <36.021347, 37.574902, 47.465317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860153, 37.160950, 46.904675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515602, 37.240177, 47.091774>,  <35.308872, 37.287712, 47.204033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515602, 37.240177, 47.091774>,  <35.860153, 37.160950, 46.904675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515602, 37.240177, 47.091774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455163, 0.107827, -0.883855,
		-0.225499, -0.974239, -0.002728,
		-0.861380, 0.198067, 0.467753,
		35.257187, 37.299599, 47.232101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407162, 36.799641, 46.511757>,  <35.860153, 37.160950, 46.904675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407162, 36.799641, 46.511757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186699, 37.073139, 46.703056>,  <35.054420, 37.237236, 46.817837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186699, 37.073139, 46.703056>,  <35.407162, 36.799641, 46.511757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186699, 37.073139, 46.703056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608366, 0.062978, -0.791154,
		-0.571065, -0.727000, 0.381255,
		-0.551158, 0.683743, 0.478247,
		35.021351, 37.278263, 46.846531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643436, 36.551819, 46.459522>,  <35.407162, 36.799641, 46.511757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643436, 36.551819, 46.459522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640514, 36.947441, 46.518459>,  <34.638763, 37.184814, 46.553822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640514, 36.947441, 46.518459>,  <34.643436, 36.551819, 46.459522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640514, 36.947441, 46.518459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548250, 0.119269, -0.827766,
		-0.836283, -0.086826, 0.541380,
		-0.007302, 0.989058, 0.147345,
		34.638325, 37.244160, 46.562664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017555, 36.780197, 46.059456>,  <34.643436, 36.551819, 46.459522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017555, 36.780197, 46.059456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235336, 37.112106, 46.108528>,  <34.366005, 37.311253, 46.137974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235336, 37.112106, 46.108528>,  <34.017555, 36.780197, 46.059456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235336, 37.112106, 46.108528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267719, 0.310516, -0.912089,
		-0.794920, 0.463745, 0.391207,
		0.544453, 0.829771, 0.122682,
		34.398674, 37.361038, 46.145332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629890, 37.331646, 45.863255>,  <34.017555, 36.780197, 46.059456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629890, 37.331646, 45.863255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006447, 37.459522, 45.820225>,  <34.232380, 37.536247, 45.794407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006447, 37.459522, 45.820225>,  <33.629890, 37.331646, 45.863255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006447, 37.459522, 45.820225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238779, 0.406359, -0.881962,
		-0.238241, 0.855961, 0.458880,
		0.941396, 0.319691, -0.107574,
		34.288864, 37.555428, 45.787952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460033, 37.796486, 45.446636>,  <33.629890, 37.331646, 45.863255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460033, 37.796486, 45.446636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858940, 37.769398, 45.434826>,  <34.098286, 37.753143, 45.427738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858940, 37.769398, 45.434826>,  <33.460033, 37.796486, 45.446636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858940, 37.769398, 45.434826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004299, 0.452215, -0.891899,
		0.073756, 0.889334, 0.451270,
		0.997267, -0.067723, -0.029530,
		34.158119, 37.749081, 45.425968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669060, 38.361172, 45.000725>,  <33.460033, 37.796486, 45.446636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669060, 38.361172, 45.000725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961197, 38.088688, 45.020954>,  <34.136478, 37.925198, 45.033092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961197, 38.088688, 45.020954>,  <33.669060, 38.361172, 45.000725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961197, 38.088688, 45.020954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204340, 0.147224, -0.967766,
		0.651804, 0.717133, 0.246721,
		0.730340, -0.681209, 0.050578,
		34.180298, 37.884327, 45.036129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265244, 38.664497, 44.785217>,  <33.669060, 38.361172, 45.000725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265244, 38.664497, 44.785217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307877, 38.271961, 44.721214>,  <34.333458, 38.036438, 44.682812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307877, 38.271961, 44.721214>,  <34.265244, 38.664497, 44.785217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307877, 38.271961, 44.721214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328882, 0.186661, -0.925740,
		0.938337, 0.046043, 0.342641,
		0.106582, -0.981345, -0.160009,
		34.339851, 37.977558, 44.673210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766014, 38.525074, 44.244545>,  <34.265244, 38.664497, 44.785217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766014, 38.525074, 44.244545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567471, 38.178013, 44.233158>,  <34.448345, 37.969776, 44.226326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567471, 38.178013, 44.233158>,  <34.766014, 38.525074, 44.244545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567471, 38.178013, 44.233158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063905, -0.003816, -0.997949,
		0.865762, -0.497160, 0.057342,
		-0.496359, -0.867651, -0.028467,
		34.418564, 37.917717, 44.224617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.968697, 40.049549, 41.349102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.576683, 39.999458, 41.410877>,  <44.341476, 39.969402, 41.447941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.576683, 39.999458, 41.410877>,  <44.968697, 40.049549, 41.349102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576683, 39.999458, 41.410877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034611, -0.657426, -0.752724,
		0.195791, -0.743040, 0.639966,
		-0.980035, -0.125227, 0.154436,
		44.282673, 39.961891, 41.457207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837738, 39.281902, 41.239338>,  <44.968697, 40.049549, 41.349102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837738, 39.281902, 41.239338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477787, 39.443806, 41.174362>,  <44.261818, 39.540947, 41.135376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477787, 39.443806, 41.174362>,  <44.837738, 39.281902, 41.239338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477787, 39.443806, 41.174362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185072, -0.691629, -0.698138,
		-0.394927, -0.598177, 0.697293,
		-0.899879, 0.404763, -0.162437,
		44.207825, 39.565235, 41.125629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295921, 38.672382, 41.225796>,  <44.837738, 39.281902, 41.239338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295921, 38.672382, 41.225796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.143051, 38.987175, 41.032055>,  <44.051327, 39.176052, 40.915810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.143051, 38.987175, 41.032055>,  <44.295921, 38.672382, 41.225796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143051, 38.987175, 41.032055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285972, -0.599137, -0.747834,
		-0.878726, -0.147296, 0.454032,
		-0.382180, 0.786981, -0.484354,
		44.028397, 39.223270, 40.886749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774513, 38.424969, 40.854061>,  <44.295921, 38.672382, 41.225796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774513, 38.424969, 40.854061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711178, 38.773560, 40.668388>,  <43.673176, 38.982712, 40.556984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711178, 38.773560, 40.668388>,  <43.774513, 38.424969, 40.854061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711178, 38.773560, 40.668388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106685, -0.482459, -0.869398,
		-0.981605, -0.088135, 0.169363,
		-0.158335, 0.871474, -0.464181,
		43.663677, 39.035000, 40.529133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191132, 38.388683, 40.418743>,  <43.774513, 38.424969, 40.854061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191132, 38.388683, 40.418743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393898, 38.682961, 40.239059>,  <43.515556, 38.859528, 40.131248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393898, 38.682961, 40.239059>,  <43.191132, 38.388683, 40.418743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393898, 38.682961, 40.239059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121922, -0.454691, -0.882265,
		-0.853329, 0.502003, -0.140793,
		0.506918, 0.735696, -0.449206,
		43.545975, 38.903671, 40.104298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786476, 38.620689, 39.742805>,  <43.191132, 38.388683, 40.418743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786476, 38.620689, 39.742805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.176380, 38.697708, 39.697620>,  <43.410324, 38.743919, 39.670509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.176380, 38.697708, 39.697620>,  <42.786476, 38.620689, 39.742805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176380, 38.697708, 39.697620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041145, -0.342404, -0.938651,
		-0.219418, 0.919610, -0.325841,
		0.974763, 0.192551, -0.112967,
		43.468807, 38.755474, 39.663731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845879, 38.940456, 39.111927>,  <42.786476, 38.620689, 39.742805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845879, 38.940456, 39.111927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210274, 38.794815, 39.189411>,  <43.428913, 38.707428, 39.235901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210274, 38.794815, 39.189411>,  <42.845879, 38.940456, 39.111927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210274, 38.794815, 39.189411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026148, -0.417739, -0.908191,
		0.411597, 0.832419, -0.371036,
		0.910991, -0.364107, 0.193706,
		43.483570, 38.685581, 39.247524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131367, 39.067112, 38.485992>,  <42.845879, 38.940456, 39.111927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131367, 39.067112, 38.485992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349712, 38.784088, 38.665501>,  <43.480721, 38.614273, 38.773205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349712, 38.784088, 38.665501>,  <43.131367, 39.067112, 38.485992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349712, 38.784088, 38.665501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088059, -0.484190, -0.870521,
		0.833231, 0.514708, -0.201997,
		0.545869, -0.707557, 0.448766,
		43.513474, 38.571819, 38.800129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776722, 38.977562, 38.130806>,  <43.131367, 39.067112, 38.485992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776722, 38.977562, 38.130806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725525, 38.629494, 38.321140>,  <43.694805, 38.420654, 38.435341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725525, 38.629494, 38.321140>,  <43.776722, 38.977562, 38.130806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725525, 38.629494, 38.321140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009504, -0.480839, -0.876757,
		0.991729, -0.107700, 0.069816,
		-0.127997, -0.870169, 0.475839,
		43.687126, 38.368443, 38.463890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069687, 38.494293, 37.649624>,  <43.776722, 38.977562, 38.130806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069687, 38.494293, 37.649624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859299, 38.256908, 37.893314>,  <43.733067, 38.114479, 38.039528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859299, 38.256908, 37.893314>,  <44.069687, 38.494293, 37.649624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859299, 38.256908, 37.893314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073916, -0.681709, -0.727880,
		0.847286, -0.427874, 0.314691,
		-0.525969, -0.593462, 0.609229,
		43.701508, 38.078869, 38.076084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449062, 37.926968, 37.631794>,  <44.069687, 38.494293, 37.649624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449062, 37.926968, 37.631794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.080482, 37.812340, 37.736721>,  <43.859333, 37.743561, 37.799675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.080482, 37.812340, 37.736721>,  <44.449062, 37.926968, 37.631794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080482, 37.812340, 37.736721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012344, -0.696453, -0.717496,
		0.388304, -0.657898, 0.645284,
		-0.921449, -0.286572, 0.262314,
		43.804047, 37.726368, 37.815414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504116, 37.275234, 37.531643>,  <44.449062, 37.926968, 37.631794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504116, 37.275234, 37.531643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.109356, 37.339760, 37.532856>,  <43.872501, 37.378475, 37.533585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.109356, 37.339760, 37.532856>,  <44.504116, 37.275234, 37.531643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109356, 37.339760, 37.532856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092313, -0.549155, -0.830606,
		-0.132326, -0.820004, 0.556852,
		-0.986898, 0.161315, 0.003030,
		43.813286, 37.388153, 37.533764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323433, 36.695198, 37.348660>,  <44.504116, 37.275234, 37.531643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323433, 36.695198, 37.348660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.996048, 36.920574, 37.303658>,  <43.799618, 37.055801, 37.276657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.996048, 36.920574, 37.303658>,  <44.323433, 36.695198, 37.348660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996048, 36.920574, 37.303658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173007, -0.428400, -0.886872,
		-0.547901, -0.706402, 0.448107,
		-0.818457, 0.563444, -0.112508,
		43.750511, 37.089607, 37.269905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795895, 36.281139, 37.140862>,  <44.323433, 36.695198, 37.348660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795895, 36.281139, 37.140862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.693489, 36.639797, 36.996368>,  <43.632046, 36.854992, 36.909672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.693489, 36.639797, 36.996368>,  <43.795895, 36.281139, 37.140862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693489, 36.639797, 36.996368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312126, -0.430343, -0.846984,
		-0.914896, -0.104091, 0.390040,
		-0.256015, 0.896644, -0.361229,
		43.616684, 36.908791, 36.888000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129910, 36.148159, 36.874817>,  <43.795895, 36.281139, 37.140862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129910, 36.148159, 36.874817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284710, 36.481678, 36.717335>,  <43.377590, 36.681789, 36.622845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284710, 36.481678, 36.717335>,  <43.129910, 36.148159, 36.874817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284710, 36.481678, 36.717335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214696, -0.333759, -0.917884,
		-0.896736, 0.439749, 0.049849,
		0.387001, 0.833802, -0.393706,
		43.400810, 36.731819, 36.599224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709652, 36.297287, 36.279209>,  <43.129910, 36.148159, 36.874817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709652, 36.297287, 36.279209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043140, 36.511814, 36.226646>,  <43.243233, 36.640530, 36.195110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043140, 36.511814, 36.226646>,  <42.709652, 36.297287, 36.279209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043140, 36.511814, 36.226646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062859, -0.328612, -0.942371,
		-0.548592, 0.777417, -0.307684,
		0.833724, 0.536318, -0.131407,
		43.293259, 36.672710, 36.187225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582699, 36.736931, 35.744526>,  <42.709652, 36.297287, 36.279209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582699, 36.736931, 35.744526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978413, 36.679565, 35.755405>,  <43.215843, 36.645145, 35.761932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978413, 36.679565, 35.755405>,  <42.582699, 36.736931, 35.744526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978413, 36.679565, 35.755405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013683, -0.094405, -0.995440,
		0.145326, 0.985150, -0.091432,
		0.989289, -0.143413, 0.027199,
		43.275200, 36.636543, 35.763565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714195, 37.070198, 35.215981>,  <42.582699, 36.736931, 35.744526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714195, 37.070198, 35.215981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041016, 36.850086, 35.284821>,  <43.237110, 36.718021, 35.326126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041016, 36.850086, 35.284821>,  <42.714195, 37.070198, 35.215981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041016, 36.850086, 35.284821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136848, -0.104883, -0.985024,
		0.560085, 0.828370, -0.010391,
		0.817054, -0.550275, 0.172104,
		43.286133, 36.685005, 35.336452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942844, 36.996063, 34.588745>,  <42.714195, 37.070198, 35.215981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942844, 36.996063, 34.588745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192883, 36.736664, 34.762508>,  <43.342903, 36.581024, 34.866768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192883, 36.736664, 34.762508>,  <42.942844, 36.996063, 34.588745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192883, 36.736664, 34.762508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209464, -0.396766, -0.893701,
		0.751921, 0.649639, -0.112179,
		0.625092, -0.648495, 0.434413,
		43.380409, 36.542114, 34.892834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635498, 37.024567, 34.137131>,  <42.942844, 36.996063, 34.588745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635498, 37.024567, 34.137131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.585342, 36.679928, 34.333874>,  <43.555248, 36.473145, 34.451920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.585342, 36.679928, 34.333874>,  <43.635498, 37.024567, 34.137131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585342, 36.679928, 34.333874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219391, -0.507577, -0.833206,
		0.967546, 0.003435, 0.252672,
		-0.125389, -0.861599, 0.491858,
		43.547726, 36.421448, 34.481430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206043, 36.538708, 33.907478>,  <43.635498, 37.024567, 34.137131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206043, 36.538708, 33.907478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895054, 36.326775, 34.043015>,  <43.708462, 36.199615, 34.124336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895054, 36.326775, 34.043015>,  <44.206043, 36.538708, 33.907478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895054, 36.326775, 34.043015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244666, -0.751135, -0.613136,
		0.579376, -0.393793, 0.713618,
		-0.777472, -0.529834, 0.338842,
		43.661812, 36.167824, 34.144669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775700, 36.161655, 33.842201>,  <44.206043, 36.538708, 33.907478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775700, 36.161655, 33.842201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152500, 36.152954, 33.708241>,  <45.378582, 36.147736, 33.627865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152500, 36.152954, 33.708241>,  <44.775700, 36.161655, 33.842201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152500, 36.152954, 33.708241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334760, 0.131610, 0.933067,
		0.023781, -0.991063, 0.131258,
		0.942003, -0.021751, -0.334898,
		45.435101, 36.146431, 33.607773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136532, 35.671619, 34.269432>,  <44.775700, 36.161655, 33.842201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136532, 35.671619, 34.269432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.417847, 35.907852, 34.111137>,  <45.586636, 36.049591, 34.016159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.417847, 35.907852, 34.111137>,  <45.136532, 35.671619, 34.269432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417847, 35.907852, 34.111137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336943, 0.213256, 0.917056,
		0.625988, -0.778291, -0.049012,
		0.703284, 0.590580, -0.395735,
		45.628834, 36.085026, 33.992416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677639, 35.548637, 34.688705>,  <45.136532, 35.671619, 34.269432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677639, 35.548637, 34.688705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794956, 35.891632, 34.519615>,  <45.865345, 36.097427, 34.418163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794956, 35.891632, 34.519615>,  <45.677639, 35.548637, 34.688705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794956, 35.891632, 34.519615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455331, 0.263507, 0.850434,
		0.840627, -0.441905, -0.313156,
		0.293292, 0.857487, -0.422723,
		45.882942, 36.148880, 34.392799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457031, 35.676846, 34.806175>,  <45.677639, 35.548637, 34.688705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457031, 35.676846, 34.806175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280254, 36.025700, 34.722198>,  <46.174191, 36.235012, 34.671814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280254, 36.025700, 34.722198>,  <46.457031, 35.676846, 34.806175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280254, 36.025700, 34.722198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618926, 0.465859, 0.632382,
		0.649324, 0.149534, -0.745666,
		-0.441938, 0.872132, -0.209943,
		46.147675, 36.287338, 34.659214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984989, 36.185913, 34.546959>,  <46.457031, 35.676846, 34.806175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984989, 36.185913, 34.546959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.663258, 36.370197, 34.697048>,  <46.470219, 36.480770, 34.787102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.663258, 36.370197, 34.697048>,  <46.984989, 36.185913, 34.546959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663258, 36.370197, 34.697048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584182, 0.497820, 0.641021,
		0.108533, 0.734793, -0.669553,
		-0.804333, 0.460712, 0.375223,
		46.421959, 36.508411, 34.809616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.254761, 36.855556, 34.646820>,  <46.984989, 36.185913, 34.546959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.254761, 36.855556, 34.646820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.935547, 36.843277, 34.887550>,  <46.744019, 36.835907, 35.031990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.935547, 36.843277, 34.887550>,  <47.254761, 36.855556, 34.646820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935547, 36.843277, 34.887550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529473, 0.441152, 0.724599,
		-0.287742, 0.896907, -0.335800,
		-0.798037, -0.030701, 0.601826,
		46.696136, 36.834068, 35.068100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.238560, 37.550758, 34.941391>,  <47.254761, 36.855556, 34.646820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.238560, 37.550758, 34.941391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.993515, 37.342918, 35.179626>,  <46.846489, 37.218216, 35.322567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.993515, 37.342918, 35.179626>,  <47.238560, 37.550758, 34.941391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.993515, 37.342918, 35.179626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373159, 0.474137, 0.797463,
		-0.696750, 0.710784, -0.096569,
		-0.612611, -0.519597, 0.595590,
		46.809731, 37.187038, 35.358303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748390, 38.064404, 35.348221>,  <47.238560, 37.550758, 34.941391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748390, 38.064404, 35.348221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.808701, 37.708015, 35.519539>,  <46.844887, 37.494183, 35.622330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.808701, 37.708015, 35.519539>,  <46.748390, 38.064404, 35.348221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808701, 37.708015, 35.519539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328034, 0.453795, 0.828531,
		-0.932556, 0.015576, 0.360689,
		0.150774, -0.890970, 0.428299,
		46.853931, 37.440723, 35.648029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509159, 38.197170, 35.888134>,  <46.748390, 38.064404, 35.348221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509159, 38.197170, 35.888134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.699787, 37.860779, 35.990612>,  <46.814163, 37.658943, 36.052101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.699787, 37.860779, 35.990612>,  <46.509159, 38.197170, 35.888134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699787, 37.860779, 35.990612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071695, 0.327629, 0.942083,
		-0.876209, -0.430599, 0.216431,
		0.476569, -0.840978, 0.256200,
		46.842758, 37.608486, 36.067471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132549, 37.907494, 36.362434>,  <46.509159, 38.197170, 35.888134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132549, 37.907494, 36.362434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.511494, 37.784992, 36.399784>,  <46.738861, 37.711491, 36.422195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.511494, 37.784992, 36.399784>,  <46.132549, 37.907494, 36.362434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.511494, 37.784992, 36.399784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053100, 0.437884, 0.897462,
		-0.315737, -0.845261, 0.431096,
		0.947360, -0.306253, 0.093373,
		46.795700, 37.693115, 36.427795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128815, 37.608780, 37.025112>,  <46.132549, 37.907494, 36.362434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128815, 37.608780, 37.025112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.516327, 37.677708, 36.953819>,  <46.748837, 37.719063, 36.911041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.516327, 37.677708, 36.953819>,  <46.128815, 37.608780, 37.025112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.516327, 37.677708, 36.953819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085304, 0.443340, 0.892285,
		0.232774, -0.879635, 0.414801,
		0.968783, 0.172316, -0.178234,
		46.806961, 37.729404, 36.900349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488316, 37.424881, 37.664959>,  <46.128815, 37.608780, 37.025112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488316, 37.424881, 37.664959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.736183, 37.672527, 37.472000>,  <46.884903, 37.821117, 37.356224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.736183, 37.672527, 37.472000>,  <46.488316, 37.424881, 37.664959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.736183, 37.672527, 37.472000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037149, 0.590799, 0.805963,
		0.783987, -0.517348, 0.343098,
		0.619665, 0.619119, -0.482397,
		46.922085, 37.858261, 37.327282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002544, 37.513084, 38.115265>,  <46.488316, 37.424881, 37.664959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002544, 37.513084, 38.115265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.068771, 37.813705, 37.859844>,  <47.108509, 37.994080, 37.706593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.068771, 37.813705, 37.859844>,  <47.002544, 37.513084, 38.115265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068771, 37.813705, 37.859844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113070, 0.628755, 0.769338,
		0.979695, -0.199578, 0.019123,
		0.165567, 0.751555, -0.638555,
		47.118443, 38.039173, 37.668278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.689541, 37.825302, 38.264774>,  <47.002544, 37.513084, 38.115265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.689541, 37.825302, 38.264774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.447350, 38.097641, 38.099926>,  <47.302036, 38.261044, 38.001015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.447350, 38.097641, 38.099926>,  <47.689541, 37.825302, 38.264774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.447350, 38.097641, 38.099926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033932, 0.495275, 0.868074,
		0.795141, 0.539581, -0.276773,
		-0.605475, 0.680849, -0.412122,
		47.265709, 38.301895, 37.976288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.946648, 38.380226, 38.580486>,  <47.689541, 37.825302, 38.264774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.946648, 38.380226, 38.580486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.592518, 38.492962, 38.432556>,  <47.380039, 38.560604, 38.343800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.592518, 38.492962, 38.432556>,  <47.946648, 38.380226, 38.580486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592518, 38.492962, 38.432556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159591, 0.562861, 0.810999,
		0.436733, 0.777016, -0.453334,
		-0.885322, 0.281842, -0.369824,
		47.326920, 38.577515, 38.321609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865772, 39.100830, 38.547798>,  <47.946648, 38.380226, 38.580486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865772, 39.100830, 38.547798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.481396, 38.991886, 38.567425>,  <47.250771, 38.926521, 38.579201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.481396, 38.991886, 38.567425>,  <47.865772, 39.100830, 38.547798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.481396, 38.991886, 38.567425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155587, 0.678310, 0.718115,
		-0.228867, 0.682434, -0.694193,
		-0.960944, -0.272360, 0.049065,
		47.193111, 38.910179, 38.582146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535660, 39.759209, 38.703487>,  <47.865772, 39.100830, 38.547798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535660, 39.759209, 38.703487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.264278, 39.472973, 38.769970>,  <47.101448, 39.301231, 38.809860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.264278, 39.472973, 38.769970>,  <47.535660, 39.759209, 38.703487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.264278, 39.472973, 38.769970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374557, 0.531569, 0.759698,
		-0.631984, 0.453168, -0.628677,
		-0.678456, -0.715593, 0.166206,
		47.060741, 39.258293, 38.819832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.853336, 40.152821, 38.802837>,  <47.535660, 39.759209, 38.703487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.853336, 40.152821, 38.802837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.779251, 39.793644, 38.962536>,  <46.734802, 39.578136, 39.058353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.779251, 39.793644, 38.962536>,  <46.853336, 40.152821, 38.802837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779251, 39.793644, 38.962536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422466, 0.439568, 0.792655,
		-0.887254, -0.021860, -0.460762,
		-0.185209, -0.897943, 0.399244,
		46.723690, 39.524261, 39.082310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.125175, 40.099876, 38.992825>,  <46.853336, 40.152821, 38.802837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.125175, 40.099876, 38.992825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308712, 39.833515, 39.228127>,  <46.418835, 39.673698, 39.369308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308712, 39.833515, 39.228127>,  <46.125175, 40.099876, 38.992825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308712, 39.833515, 39.228127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358798, 0.466814, 0.808300,
		-0.812850, -0.581948, -0.024728,
		0.458845, -0.665899, 0.588252,
		46.446365, 39.633747, 39.404602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590004, 39.976582, 39.487881>,  <46.125175, 40.099876, 38.992825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590004, 39.976582, 39.487881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.941784, 39.852264, 39.632088>,  <46.152851, 39.777676, 39.718613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.941784, 39.852264, 39.632088>,  <45.590004, 39.976582, 39.487881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.941784, 39.852264, 39.632088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135951, 0.561856, 0.815987,
		-0.456161, -0.766634, 0.451873,
		0.879451, -0.310789, 0.360522,
		46.205620, 39.759029, 39.740246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514816, 39.564392, 40.232662>,  <45.590004, 39.976582, 39.487881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514816, 39.564392, 40.232662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888023, 39.708302, 40.229874>,  <46.111946, 39.794647, 40.228203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888023, 39.708302, 40.229874>,  <45.514816, 39.564392, 40.232662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888023, 39.708302, 40.229874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184062, 0.493801, 0.849872,
		0.309196, -0.791662, 0.526943,
		0.933016, 0.359768, -0.006967,
		46.167927, 39.816231, 40.227783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.192749, 36.867962, 39.527348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819218, 36.734276, 39.476334>,  <37.595100, 36.654064, 39.445724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819218, 36.734276, 39.476334>,  <38.192749, 36.867962, 39.527348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819218, 36.734276, 39.476334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166512, -0.090579, -0.981870,
		0.316604, -0.938134, 0.140236,
		-0.933829, -0.334215, -0.127533,
		37.539070, 36.634010, 39.438072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196842, 36.310505, 39.164955>,  <38.192749, 36.867962, 39.527348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196842, 36.310505, 39.164955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815693, 36.414906, 39.103092>,  <37.587006, 36.477547, 39.065975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815693, 36.414906, 39.103092>,  <38.196842, 36.310505, 39.164955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815693, 36.414906, 39.103092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138504, -0.079294, -0.987182,
		-0.269920, -0.962076, 0.039407,
		-0.952869, 0.261002, -0.154654,
		37.529831, 36.493206, 39.056694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958839, 35.912270, 38.559544>,  <38.196842, 36.310505, 39.164955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958839, 35.912270, 38.559544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724724, 36.236557, 38.564827>,  <37.584255, 36.431129, 38.567997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724724, 36.236557, 38.564827>,  <37.958839, 35.912270, 38.559544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724724, 36.236557, 38.564827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090152, 0.081250, -0.992608,
		-0.805798, -0.579772, -0.120642,
		-0.585288, 0.810718, 0.013204,
		37.549137, 36.479771, 38.568787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855904, 36.097435, 37.976719>,  <37.958839, 35.912270, 38.559544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855904, 36.097435, 37.976719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648907, 36.416233, 38.101299>,  <37.524708, 36.607513, 38.176048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648907, 36.416233, 38.101299>,  <37.855904, 36.097435, 37.976719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648907, 36.416233, 38.101299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059698, 0.329459, -0.942281,
		-0.853601, -0.506219, -0.122915,
		-0.517496, 0.796994, 0.311446,
		37.493656, 36.655331, 38.194733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298756, 36.054451, 37.546955>,  <37.855904, 36.097435, 37.976719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298756, 36.054451, 37.546955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364174, 36.424049, 37.685223>,  <37.403427, 36.645809, 37.768185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364174, 36.424049, 37.685223>,  <37.298756, 36.054451, 37.546955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364174, 36.424049, 37.685223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059612, 0.340491, -0.938356,
		-0.984733, 0.174072, 0.000605,
		0.163548, 0.923994, 0.345670,
		37.413239, 36.701248, 37.788925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988495, 36.481186, 37.057632>,  <37.298756, 36.054451, 37.546955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988495, 36.481186, 37.057632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243565, 36.725994, 37.244743>,  <37.396606, 36.872879, 37.357010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243565, 36.725994, 37.244743>,  <36.988495, 36.481186, 37.057632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243565, 36.725994, 37.244743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175085, 0.476208, -0.861725,
		-0.750148, 0.631397, 0.196509,
		0.637670, 0.612016, 0.467775,
		37.434864, 36.909599, 37.385075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802223, 37.104694, 36.841511>,  <36.988495, 36.481186, 37.057632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802223, 37.104694, 36.841511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177032, 37.156715, 36.971172>,  <37.401917, 37.187927, 37.048969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177032, 37.156715, 36.971172>,  <36.802223, 37.104694, 36.841511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177032, 37.156715, 36.971172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262070, 0.351732, -0.898668,
		-0.230887, 0.927023, 0.295499,
		0.937022, 0.130049, 0.324155,
		37.458138, 37.195728, 37.068420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970901, 37.777660, 36.892548>,  <36.802223, 37.104694, 36.841511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970901, 37.777660, 36.892548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325485, 37.600521, 36.838772>,  <37.538235, 37.494240, 36.806507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325485, 37.600521, 36.838772>,  <36.970901, 37.777660, 36.892548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325485, 37.600521, 36.838772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017451, 0.322265, -0.946489,
		0.462472, 0.836680, 0.293404,
		0.886462, -0.442845, -0.134438,
		37.591423, 37.467667, 36.798439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497532, 38.274998, 36.532162>,  <36.970901, 37.777660, 36.892548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497532, 38.274998, 36.532162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642967, 37.911537, 36.450031>,  <37.730228, 37.693462, 36.400753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642967, 37.911537, 36.450031>,  <37.497532, 38.274998, 36.532162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642967, 37.911537, 36.450031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040728, 0.235709, -0.970970,
		0.930668, 0.344673, 0.122709,
		0.363591, -0.908648, -0.205329,
		37.752045, 37.638943, 36.388432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065063, 38.397255, 36.016979>,  <37.497532, 38.274998, 36.532162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065063, 38.397255, 36.016979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991222, 38.005379, 35.985676>,  <37.946918, 37.770252, 35.966892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991222, 38.005379, 35.985676>,  <38.065063, 38.397255, 36.016979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991222, 38.005379, 35.985676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174968, 0.045597, -0.983518,
		0.967112, -0.195257, 0.162998,
		-0.184606, -0.979692, -0.078261,
		37.935841, 37.711472, 35.962196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644691, 38.098049, 35.663086>,  <38.065063, 38.397255, 36.016979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644691, 38.098049, 35.663086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347309, 37.832165, 35.633617>,  <38.168880, 37.672634, 35.615936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347309, 37.832165, 35.633617>,  <38.644691, 38.098049, 35.663086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347309, 37.832165, 35.633617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184324, -0.097764, -0.977991,
		0.642882, -0.740673, 0.195206,
		-0.743456, -0.664715, -0.073673,
		38.124271, 37.632751, 35.611515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932831, 37.559994, 35.305862>,  <38.644691, 38.098049, 35.663086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932831, 37.559994, 35.305862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537487, 37.526535, 35.255024>,  <38.300282, 37.506458, 35.224522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537487, 37.526535, 35.255024>,  <38.932831, 37.559994, 35.305862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537487, 37.526535, 35.255024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143541, -0.235610, -0.961189,
		0.050461, -0.968241, 0.244874,
		-0.988357, -0.083652, -0.127093,
		38.240978, 37.501438, 35.216896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799911, 36.960880, 34.879692>,  <38.932831, 37.559994, 35.305862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799911, 36.960880, 34.879692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504639, 37.228794, 34.847500>,  <38.327473, 37.389542, 34.828182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504639, 37.228794, 34.847500>,  <38.799911, 36.960880, 34.879692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504639, 37.228794, 34.847500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071735, -0.040695, -0.996593,
		-0.670775, -0.741442, -0.018007,
		-0.738183, 0.669781, -0.080485,
		38.283184, 37.429729, 34.823353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484394, 36.812691, 35.107605>,  <38.799911, 36.960880, 34.879692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484394, 36.812691, 35.107605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613594, 36.434322, 35.119656>,  <39.691116, 36.207302, 35.126888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613594, 36.434322, 35.119656>,  <39.484394, 36.812691, 35.107605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613594, 36.434322, 35.119656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882030, -0.289342, 0.371892,
		-0.343062, -0.146697, -0.927787,
		0.323004, -0.945918, 0.030129,
		39.710495, 36.150547, 35.128696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362648, 36.141842, 34.750309>,  <39.484394, 36.812691, 35.107605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362648, 36.141842, 34.750309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598919, 35.863186, 34.587440>,  <39.740681, 35.695992, 34.489719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598919, 35.863186, 34.587440>,  <39.362648, 36.141842, 34.750309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598919, 35.863186, 34.587440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229367, -0.628753, 0.743008,
		-0.773619, -0.345489, -0.531179,
		0.590681, -0.696640, -0.407171,
		39.776123, 35.654194, 34.465290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963882, 35.519863, 34.779896>,  <39.362648, 36.141842, 34.750309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963882, 35.519863, 34.779896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363056, 35.499088, 34.795044>,  <39.602558, 35.486622, 34.804131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363056, 35.499088, 34.795044>,  <38.963882, 35.519863, 34.779896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363056, 35.499088, 34.795044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056355, -0.423659, 0.904067,
		-0.030913, -0.904332, -0.425710,
		0.997932, -0.051938, 0.037867,
		39.662437, 35.483505, 34.806404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109653, 34.960804, 35.060318>,  <38.963882, 35.519863, 34.779896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109653, 34.960804, 35.060318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445942, 35.159203, 35.147202>,  <39.647713, 35.278244, 35.199329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445942, 35.159203, 35.147202>,  <39.109653, 34.960804, 35.060318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445942, 35.159203, 35.147202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049931, -0.328413, 0.943213,
		0.539166, -0.803822, -0.251337,
		0.840718, 0.495999, 0.217205,
		39.698158, 35.308002, 35.212364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577682, 34.494343, 35.477783>,  <39.109653, 34.960804, 35.060318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577682, 34.494343, 35.477783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689777, 34.869514, 35.559513>,  <39.757034, 35.094620, 35.608551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689777, 34.869514, 35.559513>,  <39.577682, 34.494343, 35.477783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689777, 34.869514, 35.559513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120466, -0.245535, 0.961873,
		0.952343, -0.244934, -0.181796,
		0.280233, 0.937934, 0.204327,
		39.773846, 35.150894, 35.620811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116096, 34.376656, 35.851894>,  <39.577682, 34.494343, 35.477783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116096, 34.376656, 35.851894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027763, 34.756905, 35.939114>,  <39.974766, 34.985054, 35.991447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027763, 34.756905, 35.939114>,  <40.116096, 34.376656, 35.851894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027763, 34.756905, 35.939114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197552, -0.175340, 0.964484,
		0.955096, 0.256063, -0.149078,
		-0.220830, 0.950625, 0.218052,
		39.961514, 35.042091, 36.004528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633617, 34.660736, 36.378193>,  <40.116096, 34.376656, 35.851894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633617, 34.660736, 36.378193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296726, 34.872456, 36.419182>,  <40.094593, 34.999489, 36.443775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296726, 34.872456, 36.419182>,  <40.633617, 34.660736, 36.378193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296726, 34.872456, 36.419182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030951, -0.142278, 0.989343,
		0.538239, 0.836420, 0.103447,
		-0.842224, 0.529301, 0.102468,
		40.044060, 35.031246, 36.449921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789547, 34.965126, 36.951790>,  <40.633617, 34.660736, 36.378193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789547, 34.965126, 36.951790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397179, 35.039238, 36.928253>,  <40.161758, 35.083706, 36.914131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397179, 35.039238, 36.928253>,  <40.789547, 34.965126, 36.951790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397179, 35.039238, 36.928253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082122, -0.120615, 0.989297,
		0.176200, 0.975256, 0.133529,
		-0.980923, 0.185280, -0.058838,
		40.102901, 35.094822, 36.910603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664913, 35.523369, 37.387196>,  <40.789547, 34.965126, 36.951790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664913, 35.523369, 37.387196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306469, 35.355087, 37.330639>,  <40.091400, 35.254120, 37.296707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306469, 35.355087, 37.330639>,  <40.664913, 35.523369, 37.387196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306469, 35.355087, 37.330639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111588, -0.094769, 0.989225,
		-0.429569, 0.902235, 0.037978,
		-0.896113, -0.420703, -0.141389,
		40.037636, 35.228878, 37.288223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241085, 35.811703, 37.895756>,  <40.664913, 35.523369, 37.387196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241085, 35.811703, 37.895756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042793, 35.483059, 37.783176>,  <39.923817, 35.285873, 37.715630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042793, 35.483059, 37.783176>,  <40.241085, 35.811703, 37.895756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042793, 35.483059, 37.783176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137977, -0.245444, 0.959541,
		-0.857445, 0.514508, 0.008311,
		-0.495732, -0.821607, -0.281445,
		39.894073, 35.236576, 37.698742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593506, 35.822262, 38.289299>,  <40.241085, 35.811703, 37.895756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593506, 35.822262, 38.289299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632446, 35.442554, 38.169697>,  <39.655811, 35.214729, 38.097935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632446, 35.442554, 38.169697>,  <39.593506, 35.822262, 38.289299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632446, 35.442554, 38.169697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333816, -0.314175, 0.888741,
		-0.937598, 0.013294, -0.347468,
		0.097351, -0.949272, -0.299008,
		39.661652, 35.157772, 38.079994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911133, 35.539772, 38.541504>,  <39.593506, 35.822262, 38.289299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911133, 35.539772, 38.541504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181702, 35.252655, 38.475502>,  <39.344044, 35.080383, 38.435902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181702, 35.252655, 38.475502>,  <38.911133, 35.539772, 38.541504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181702, 35.252655, 38.475502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341234, -0.503966, 0.793459,
		-0.652696, -0.480408, -0.585829,
		0.676422, -0.717793, -0.165005,
		39.384628, 35.037319, 38.426003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567062, 34.988888, 38.749828>,  <38.911133, 35.539772, 38.541504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567062, 34.988888, 38.749828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951637, 34.878941, 38.746227>,  <39.182384, 34.812973, 38.744064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951637, 34.878941, 38.746227>,  <38.567062, 34.988888, 38.749828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951637, 34.878941, 38.746227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153293, -0.562805, 0.812251,
		-0.228331, -0.779550, -0.583239,
		0.961440, -0.274868, -0.009006,
		39.240070, 34.796478, 38.743526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469135, 34.252438, 38.791039>,  <38.567062, 34.988888, 38.749828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469135, 34.252438, 38.791039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836235, 34.348549, 38.917534>,  <39.056496, 34.406216, 38.993431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836235, 34.348549, 38.917534>,  <38.469135, 34.252438, 38.791039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836235, 34.348549, 38.917534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250448, -0.267863, 0.930336,
		0.308244, -0.933016, -0.185654,
		0.917748, 0.240274, 0.316239,
		39.111561, 34.420631, 39.012405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779057, 33.653481, 39.068317>,  <38.469135, 34.252438, 38.791039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779057, 33.653481, 39.068317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982307, 33.952072, 39.240166>,  <39.104259, 34.131226, 39.343277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982307, 33.952072, 39.240166>,  <38.779057, 33.653481, 39.068317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982307, 33.952072, 39.240166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237654, -0.357934, 0.902997,
		0.827843, -0.560942, -0.004473,
		0.508130, 0.746477, 0.429623,
		39.134747, 34.176014, 39.369053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359623, 32.995956, 39.046734>,  <38.779057, 33.653481, 39.068317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359623, 32.995956, 39.046734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181160, 32.646885, 39.126110>,  <38.074081, 32.437443, 39.173737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181160, 32.646885, 39.126110>,  <38.359623, 32.995956, 39.046734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181160, 32.646885, 39.126110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569868, 0.106049, -0.814865,
		0.690067, -0.476647, -0.544624,
		-0.446160, -0.872675, 0.198445,
		38.047314, 32.385082, 39.185642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475449, 32.469421, 38.542534>,  <38.359623, 32.995956, 39.046734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475449, 32.469421, 38.542534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128387, 32.411129, 38.732666>,  <37.920151, 32.376152, 38.846745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128387, 32.411129, 38.732666>,  <38.475449, 32.469421, 38.542534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128387, 32.411129, 38.732666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477111, -0.024759, -0.878494,
		0.139794, -0.989014, -0.048049,
		-0.867653, -0.145733, 0.475331,
		37.868092, 32.367409, 38.875267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102394, 31.924063, 38.179569>,  <38.475449, 32.469421, 38.542534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102394, 31.924063, 38.179569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809456, 32.125557, 38.362839>,  <37.633694, 32.246452, 38.472801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809456, 32.125557, 38.362839>,  <38.102394, 31.924063, 38.179569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809456, 32.125557, 38.362839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608873, -0.183168, -0.771831,
		-0.304879, -0.844213, 0.440855,
		-0.732340, 0.503740, 0.458175,
		37.589752, 32.276680, 38.500290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493294, 31.493856, 38.035522>,  <38.102394, 31.924063, 38.179569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493294, 31.493856, 38.035522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377666, 31.862078, 38.140610>,  <37.308289, 32.083012, 38.203663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377666, 31.862078, 38.140610>,  <37.493294, 31.493856, 38.035522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377666, 31.862078, 38.140610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648800, 0.013403, -0.760841,
		-0.703916, -0.390385, 0.593381,
		-0.289068, 0.920554, 0.262717,
		37.290947, 32.138245, 38.219425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782452, 31.494490, 38.070400>,  <37.493294, 31.493856, 38.035522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782452, 31.494490, 38.070400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865540, 31.881907, 38.015583>,  <36.915394, 32.114357, 37.982693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865540, 31.881907, 38.015583>,  <36.782452, 31.494490, 38.070400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865540, 31.881907, 38.015583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666219, 0.037497, -0.744813,
		-0.716243, 0.246013, 0.653049,
		0.207721, 0.968541, -0.137042,
		36.927856, 32.172470, 37.974472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140171, 31.821768, 38.043430>,  <36.782452, 31.494490, 38.070400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140171, 31.821768, 38.043430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373447, 32.088345, 37.857639>,  <36.513412, 32.248291, 37.746162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373447, 32.088345, 37.857639>,  <36.140171, 31.821768, 38.043430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373447, 32.088345, 37.857639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670335, 0.071843, -0.738573,
		-0.458848, 0.742086, 0.488639,
		0.583190, 0.666444, -0.464481,
		36.548405, 32.288277, 37.718296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676971, 32.256054, 37.891262>,  <36.140171, 31.821768, 38.043430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676971, 32.256054, 37.891262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987125, 32.347286, 37.655716>,  <36.173218, 32.402027, 37.514389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987125, 32.347286, 37.655716>,  <35.676971, 32.256054, 37.891262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987125, 32.347286, 37.655716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631408, 0.295205, -0.717062,
		0.010289, 0.927812, 0.372908,
		0.775382, 0.228080, -0.588865,
		36.219742, 32.415710, 37.479057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604424, 32.972244, 37.703789>,  <35.676971, 32.256054, 37.891262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604424, 32.972244, 37.703789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841125, 32.799862, 37.431290>,  <35.983147, 32.696430, 37.267792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841125, 32.799862, 37.431290>,  <35.604424, 32.972244, 37.703789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841125, 32.799862, 37.431290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600117, 0.328732, -0.729242,
		0.538222, 0.840362, -0.064097,
		0.591757, -0.430960, -0.681247,
		36.018654, 32.670574, 37.226917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610027, 33.384357, 37.023289>,  <35.604424, 32.972244, 37.703789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610027, 33.384357, 37.023289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731220, 33.012684, 36.938606>,  <35.803936, 32.789680, 36.887798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731220, 33.012684, 36.938606>,  <35.610027, 33.384357, 37.023289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731220, 33.012684, 36.938606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553380, 0.009318, -0.832877,
		0.775869, 0.369500, -0.511368,
		0.302983, -0.929184, -0.211703,
		35.822117, 32.733929, 36.875095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690609, 33.507462, 36.347328>,  <35.610027, 33.384357, 37.023289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690609, 33.507462, 36.347328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714920, 33.110092, 36.386131>,  <35.729507, 32.871670, 36.409412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714920, 33.110092, 36.386131>,  <35.690609, 33.507462, 36.347328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714920, 33.110092, 36.386131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453061, -0.114057, -0.884153,
		0.889405, 0.009782, -0.457015,
		0.060774, -0.993426, 0.097011,
		35.733150, 32.812065, 36.415234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100220, 33.201630, 35.732132>,  <35.690609, 33.507462, 36.347328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100220, 33.201630, 35.732132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852448, 32.928017, 35.886230>,  <35.703785, 32.763851, 35.978687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852448, 32.928017, 35.886230>,  <36.100220, 33.201630, 35.732132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852448, 32.928017, 35.886230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415132, -0.131099, -0.900266,
		0.666312, -0.717578, -0.202756,
		-0.619430, -0.684029, 0.385242,
		35.666618, 32.722809, 36.001804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030037, 32.656937, 35.253719>,  <36.100220, 33.201630, 35.732132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030037, 32.656937, 35.253719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710182, 32.662319, 35.493855>,  <35.518269, 32.665550, 35.637936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710182, 32.662319, 35.493855>,  <36.030037, 32.656937, 35.253719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710182, 32.662319, 35.493855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597270, 0.085535, -0.797466,
		-0.062084, -0.996244, -0.060357,
		-0.799634, 0.013461, 0.600337,
		35.470291, 32.666359, 35.673954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.380116, 31.079309, 42.663982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.010513, 31.219307, 42.725582>,  <38.788750, 31.303305, 42.762543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.010513, 31.219307, 42.725582>,  <39.380116, 31.079309, 42.663982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010513, 31.219307, 42.725582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103360, 0.159130, -0.981832,
		-0.368140, -0.923137, -0.110862,
		-0.924008, 0.349993, 0.153997,
		38.733311, 31.324305, 42.771782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978474, 30.744150, 42.055702>,  <39.380116, 31.079309, 42.663982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978474, 30.744150, 42.055702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780548, 31.065536, 42.188126>,  <38.661793, 31.258369, 42.267582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780548, 31.065536, 42.188126>,  <38.978474, 30.744150, 42.055702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780548, 31.065536, 42.188126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392759, 0.133066, -0.909964,
		-0.775179, -0.580288, 0.249726,
		-0.494810, 0.803467, 0.331063,
		38.632107, 31.306576, 42.287445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354496, 30.578043, 41.705208>,  <38.978474, 30.744150, 42.055702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354496, 30.578043, 41.705208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360668, 30.966089, 41.802067>,  <38.364372, 31.198917, 41.860184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360668, 30.966089, 41.802067>,  <38.354496, 30.578043, 41.705208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360668, 30.966089, 41.802067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482200, 0.219376, -0.848149,
		-0.875925, -0.103681, 0.471174,
		0.015427, 0.970116, 0.242151,
		38.365295, 31.257124, 41.874714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848942, 30.909214, 41.285934>,  <38.354496, 30.578043, 41.705208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848942, 30.909214, 41.285934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038937, 31.229839, 41.431198>,  <38.152935, 31.422215, 41.518356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038937, 31.229839, 41.431198>,  <37.848942, 30.909214, 41.285934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038937, 31.229839, 41.431198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277368, 0.528021, -0.802658,
		-0.835138, 0.280521, 0.473130,
		0.474986, 0.801562, 0.363163,
		38.181431, 31.470308, 41.540146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363956, 31.437399, 41.269367>,  <37.848942, 30.909214, 41.285934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363956, 31.437399, 41.269367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734776, 31.587177, 41.261589>,  <37.957268, 31.677044, 41.256924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734776, 31.587177, 41.261589>,  <37.363956, 31.437399, 41.269367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734776, 31.587177, 41.261589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204374, 0.461150, -0.863465,
		-0.314353, 0.804445, 0.504034,
		0.927045, 0.374445, -0.019444,
		38.012890, 31.699511, 41.255756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317822, 32.235043, 41.118385>,  <37.363956, 31.437399, 41.269367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317822, 32.235043, 41.118385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692715, 32.128063, 41.028881>,  <37.917652, 32.063877, 40.975178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692715, 32.128063, 41.028881>,  <37.317822, 32.235043, 41.118385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692715, 32.128063, 41.028881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014052, 0.612191, -0.790585,
		0.348424, 0.744106, 0.570006,
		0.937232, -0.267449, -0.223758,
		37.973885, 32.047829, 40.961754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579613, 32.818855, 40.788803>,  <37.317822, 32.235043, 41.118385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579613, 32.818855, 40.788803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820377, 32.519825, 40.676491>,  <37.964836, 32.340408, 40.609104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820377, 32.519825, 40.676491>,  <37.579613, 32.818855, 40.788803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820377, 32.519825, 40.676491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088066, 0.411598, -0.907101,
		0.793693, 0.521267, 0.313581,
		0.601910, -0.747575, -0.280776,
		38.000950, 32.295551, 40.592258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165558, 33.090782, 40.462086>,  <37.579613, 32.818855, 40.788803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165558, 33.090782, 40.462086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154579, 32.718414, 40.316406>,  <38.147991, 32.494995, 40.229000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154579, 32.718414, 40.316406>,  <38.165558, 33.090782, 40.462086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154579, 32.718414, 40.316406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046280, 0.362758, -0.930734,
		0.998551, -0.042403, 0.033125,
		-0.027450, -0.930918, -0.364195,
		38.146343, 32.439140, 40.207150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399620, 33.119114, 39.840244>,  <38.165558, 33.090782, 40.462086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399620, 33.119114, 39.840244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237232, 32.757545, 39.786388>,  <38.139801, 32.540604, 39.754074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237232, 32.757545, 39.786388>,  <38.399620, 33.119114, 39.840244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237232, 32.757545, 39.786388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344808, 0.287933, -0.893421,
		0.846345, -0.316274, -0.428569,
		-0.405965, -0.903916, -0.134637,
		38.115444, 32.486370, 39.745998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111034, 33.282379, 39.641846>,  <38.399620, 33.119114, 39.840244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111034, 33.282379, 39.641846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112869, 33.671829, 39.733093>,  <39.113972, 33.905499, 39.787842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112869, 33.671829, 39.733093>,  <39.111034, 33.282379, 39.641846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112869, 33.671829, 39.733093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148655, -0.224923, 0.962970,
		0.988879, -0.038327, 0.143702,
		0.004586, 0.973623, 0.228119,
		39.114246, 33.963917, 39.801529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383591, 33.286934, 40.349010>,  <39.111034, 33.282379, 39.641846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383591, 33.286934, 40.349010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.247772, 33.660702, 40.305992>,  <39.166283, 33.884964, 40.280182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.247772, 33.660702, 40.305992>,  <39.383591, 33.286934, 40.349010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247772, 33.660702, 40.305992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247785, 0.021436, 0.968578,
		0.907366, 0.355523, 0.224257,
		-0.339545, 0.934422, -0.107544,
		39.145908, 33.941029, 40.273727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844738, 33.782722, 40.685375>,  <39.383591, 33.286934, 40.349010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844738, 33.782722, 40.685375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487617, 33.959675, 40.651424>,  <39.273346, 34.065845, 40.631054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487617, 33.959675, 40.651424>,  <39.844738, 33.782722, 40.685375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487617, 33.959675, 40.651424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009335, 0.206553, 0.978391,
		0.450357, 0.872715, -0.188540,
		-0.892800, 0.442385, -0.084876,
		39.219776, 34.092392, 40.625961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936054, 34.485538, 40.977695>,  <39.844738, 33.782722, 40.685375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936054, 34.485538, 40.977695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.548557, 34.387486, 40.992878>,  <39.316059, 34.328655, 41.001987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.548557, 34.387486, 40.992878>,  <39.936054, 34.485538, 40.977695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548557, 34.387486, 40.992878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033500, 0.280897, 0.959153,
		-0.245779, 0.927905, -0.280329,
		-0.968747, -0.245131, 0.037954,
		39.257935, 34.313946, 41.004265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745880, 34.974689, 41.279377>,  <39.936054, 34.485538, 40.977695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745880, 34.974689, 41.279377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461708, 34.696667, 41.323528>,  <39.291206, 34.529854, 41.350018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461708, 34.696667, 41.323528>,  <39.745880, 34.974689, 41.279377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461708, 34.696667, 41.323528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023682, 0.180358, 0.983316,
		-0.703368, 0.695964, -0.144592,
		-0.710431, -0.695058, 0.110376,
		39.248577, 34.488148, 41.356640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176624, 35.322910, 41.573391>,  <39.745880, 34.974689, 41.279377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176624, 35.322910, 41.573391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.140427, 34.935246, 41.665066>,  <39.118710, 34.702644, 41.720070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.140427, 34.935246, 41.665066>,  <39.176624, 35.322910, 41.573391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140427, 34.935246, 41.665066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130233, 0.239675, 0.962078,
		-0.987345, 0.057212, -0.147906,
		-0.090492, -0.969166, 0.229191,
		39.113277, 34.644497, 41.733822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030312, 35.317081, 42.199490>,  <39.176624, 35.322910, 41.573391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030312, 35.317081, 42.199490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.025154, 34.917141, 42.194935>,  <39.022060, 34.677177, 42.192204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.025154, 34.917141, 42.194935>,  <39.030312, 35.317081, 42.199490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025154, 34.917141, 42.194935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223040, -0.008226, 0.974775,
		-0.974724, 0.015107, -0.222901,
		-0.012893, -0.999852, -0.011388,
		39.021286, 34.617184, 42.191517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401035, 35.023228, 42.558399>,  <39.030312, 35.317081, 42.199490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401035, 35.023228, 42.558399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674423, 34.734028, 42.598686>,  <38.838455, 34.560509, 42.622856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674423, 34.734028, 42.598686>,  <38.401035, 35.023228, 42.558399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674423, 34.734028, 42.598686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113634, 0.030908, 0.993042,
		-0.721078, -0.690160, -0.061032,
		0.683472, -0.722996, 0.100713,
		38.879463, 34.517128, 42.628899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175888, 34.475780, 43.077778>,  <38.401035, 35.023228, 42.558399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175888, 34.475780, 43.077778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.574112, 34.490906, 43.043308>,  <38.813046, 34.499981, 43.022625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.574112, 34.490906, 43.043308>,  <38.175888, 34.475780, 43.077778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574112, 34.490906, 43.043308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083569, 0.065877, 0.994322,
		0.043259, -0.997112, 0.062426,
		0.995563, 0.037797, -0.086177,
		38.872780, 34.502247, 43.017456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429657, 34.010509, 43.619175>,  <38.175888, 34.475780, 43.077778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429657, 34.010509, 43.619175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736977, 34.249489, 43.527283>,  <38.921368, 34.392876, 43.472145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736977, 34.249489, 43.527283>,  <38.429657, 34.010509, 43.619175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736977, 34.249489, 43.527283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244873, 0.057272, 0.967862,
		0.591404, -0.799860, -0.102297,
		0.768296, 0.597448, -0.229735,
		38.967464, 34.428722, 43.458363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900887, 33.700497, 43.976994>,  <38.429657, 34.010509, 43.619175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900887, 33.700497, 43.976994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.048058, 34.066063, 43.908417>,  <39.136360, 34.285404, 43.867271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.048058, 34.066063, 43.908417>,  <38.900887, 33.700497, 43.976994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048058, 34.066063, 43.908417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292470, 0.061275, 0.954310,
		0.882663, -0.401254, -0.244749,
		0.367924, 0.913915, -0.171440,
		39.158436, 34.340237, 43.856983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442898, 33.654957, 44.261162>,  <38.900887, 33.700497, 43.976994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442898, 33.654957, 44.261162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394371, 34.051746, 44.246857>,  <39.365257, 34.289818, 44.238274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394371, 34.051746, 44.246857>,  <39.442898, 33.654957, 44.261162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394371, 34.051746, 44.246857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216620, 0.061619, 0.974309,
		0.968689, 0.110450, -0.222356,
		-0.121314, 0.991970, -0.035764,
		39.357979, 34.349339, 44.236126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961376, 33.874550, 44.614101>,  <39.442898, 33.654957, 44.261162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961376, 33.874550, 44.614101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.705761, 34.182198, 44.610405>,  <39.552391, 34.366787, 44.608189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.705761, 34.182198, 44.610405>,  <39.961376, 33.874550, 44.614101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705761, 34.182198, 44.610405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173729, 0.156025, 0.972355,
		0.749296, 0.619770, -0.233324,
		-0.639041, 0.769117, -0.009237,
		39.514050, 34.412933, 44.607635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305431, 34.495918, 44.767731>,  <39.961376, 33.874550, 44.614101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305431, 34.495918, 44.767731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922382, 34.514061, 44.881500>,  <39.692551, 34.524948, 44.949760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922382, 34.514061, 44.881500>,  <40.305431, 34.495918, 44.767731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922382, 34.514061, 44.881500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287812, 0.188099, 0.939033,
		-0.010908, 0.981102, -0.193182,
		-0.957625, 0.045357, 0.284425,
		39.635094, 34.527668, 44.966827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.446419, 35.454159, 45.540058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812248, 35.296871, 45.502251>,  <33.031746, 35.202499, 45.479565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812248, 35.296871, 45.502251>,  <32.446419, 35.454159, 45.540058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812248, 35.296871, 45.502251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095077, 0.018117, -0.995305,
		0.393085, 0.919266, -0.020817,
		0.914573, -0.393219, -0.094523,
		33.086620, 35.178905, 45.473892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857555, 35.878139, 45.118313>,  <32.446419, 35.454159, 45.540058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857555, 35.878139, 45.118313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993176, 35.504562, 45.073063>,  <33.074547, 35.280415, 45.045914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993176, 35.504562, 45.073063>,  <32.857555, 35.878139, 45.118313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993176, 35.504562, 45.073063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028870, 0.130518, -0.991025,
		0.940326, 0.332740, 0.071215,
		0.339049, -0.933943, -0.113123,
		33.094891, 35.224380, 45.039127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246048, 35.914959, 44.559658>,  <32.857555, 35.878139, 45.118313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246048, 35.914959, 44.559658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.192848, 35.518921, 44.577667>,  <33.160931, 35.281300, 44.588474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.192848, 35.518921, 44.577667>,  <33.246048, 35.914959, 44.559658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192848, 35.518921, 44.577667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023342, -0.042287, -0.998833,
		0.990842, -0.133893, -0.017486,
		-0.132998, -0.990093, 0.045025,
		33.152950, 35.221893, 44.591175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784245, 35.572628, 44.262077>,  <33.246048, 35.914959, 44.559658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784245, 35.572628, 44.262077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486603, 35.306767, 44.235104>,  <33.308018, 35.147251, 44.218918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486603, 35.306767, 44.235104>,  <33.784245, 35.572628, 44.262077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486603, 35.306767, 44.235104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129670, -0.044666, -0.990551,
		0.655362, -0.745815, 0.119422,
		-0.744101, -0.664655, -0.067437,
		33.263371, 35.107368, 44.214874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015549, 35.243587, 43.717377>,  <33.784245, 35.572628, 44.262077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015549, 35.243587, 43.717377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631969, 35.138515, 43.760117>,  <33.401821, 35.075474, 43.785759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631969, 35.138515, 43.760117>,  <34.015549, 35.243587, 43.717377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631969, 35.138515, 43.760117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067592, -0.154201, -0.985725,
		0.275405, -0.952482, 0.130115,
		-0.958949, -0.262679, 0.106848,
		33.344284, 35.059711, 43.792171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984028, 34.677845, 43.367901>,  <34.015549, 35.243587, 43.717377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984028, 34.677845, 43.367901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596802, 34.777657, 43.377598>,  <33.364468, 34.837543, 43.383415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596802, 34.777657, 43.377598>,  <33.984028, 34.677845, 43.367901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596802, 34.777657, 43.377598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049341, -0.094818, -0.994271,
		-0.245800, -0.963714, 0.104102,
		-0.968064, 0.249528, 0.024245,
		33.306381, 34.852516, 43.384872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717300, 34.225925, 42.919113>,  <33.984028, 34.677845, 43.367901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717300, 34.225925, 42.919113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436306, 34.509998, 42.937725>,  <33.267712, 34.680443, 42.948891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436306, 34.509998, 42.937725>,  <33.717300, 34.225925, 42.919113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436306, 34.509998, 42.937725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207890, -0.142235, -0.967756,
		-0.680662, -0.689504, 0.247557,
		-0.702482, 0.710179, 0.046527,
		33.225563, 34.723053, 42.951683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156471, 34.001831, 42.479454>,  <33.717300, 34.225925, 42.919113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156471, 34.001831, 42.479454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.147961, 34.401066, 42.502663>,  <33.142857, 34.640606, 42.516586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.147961, 34.401066, 42.502663>,  <33.156471, 34.001831, 42.479454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147961, 34.401066, 42.502663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278911, 0.049804, -0.959025,
		-0.960081, -0.036585, 0.277318,
		-0.021274, 0.998088, 0.058020,
		33.141579, 34.700493, 42.520069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690079, 34.272602, 42.003094>,  <33.156471, 34.001831, 42.479454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690079, 34.272602, 42.003094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855125, 34.624844, 42.096294>,  <32.954155, 34.836189, 42.152214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855125, 34.624844, 42.096294>,  <32.690079, 34.272602, 42.003094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855125, 34.624844, 42.096294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089353, 0.293685, -0.951717,
		-0.906512, 0.371874, 0.199863,
		0.412616, 0.880601, 0.233001,
		32.978909, 34.889023, 42.166195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274574, 34.771076, 41.630199>,  <32.690079, 34.272602, 42.003094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274574, 34.771076, 41.630199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627079, 34.947578, 41.697926>,  <32.838581, 35.053478, 41.738560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627079, 34.947578, 41.697926>,  <32.274574, 34.771076, 41.630199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627079, 34.947578, 41.697926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029363, 0.408670, -0.912210,
		-0.471712, 0.798925, 0.373103,
		0.881264, 0.441256, 0.169316,
		32.891457, 35.079956, 41.748722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208347, 35.410316, 41.334328>,  <32.274574, 34.771076, 41.630199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208347, 35.410316, 41.334328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604156, 35.377422, 41.381783>,  <32.841644, 35.357685, 41.410255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604156, 35.377422, 41.381783>,  <32.208347, 35.410316, 41.334328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604156, 35.377422, 41.381783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143404, 0.466018, -0.873076,
		0.016512, 0.880945, 0.472930,
		0.989527, -0.082236, 0.118636,
		32.901016, 35.352753, 41.417374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550907, 36.072968, 41.415676>,  <32.208347, 35.410316, 41.334328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550907, 36.072968, 41.415676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.792843, 35.796982, 41.256618>,  <32.938004, 35.631390, 41.161182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.792843, 35.796982, 41.256618>,  <32.550907, 36.072968, 41.415676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792843, 35.796982, 41.256618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075656, 0.447294, -0.891182,
		0.792749, 0.569103, 0.218339,
		0.604836, -0.689964, -0.397648,
		32.974293, 35.589993, 41.137325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874840, 36.529800, 40.899117>,  <32.550907, 36.072968, 41.415676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874840, 36.529800, 40.899117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982826, 36.151909, 40.824715>,  <33.047619, 35.925175, 40.780075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982826, 36.151909, 40.824715>,  <32.874840, 36.529800, 40.899117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982826, 36.151909, 40.824715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020125, 0.187599, -0.982040,
		0.962659, 0.268861, 0.031632,
		0.269967, -0.944733, -0.186005,
		33.063816, 35.868488, 40.768913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472641, 36.606487, 40.353382>,  <32.874840, 36.529800, 40.899117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472641, 36.606487, 40.353382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300072, 36.248230, 40.310112>,  <33.196529, 36.033276, 40.284149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300072, 36.248230, 40.310112>,  <33.472641, 36.606487, 40.353382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300072, 36.248230, 40.310112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176697, 0.201472, -0.963425,
		0.884676, -0.396531, -0.245176,
		-0.431423, -0.895641, -0.108171,
		33.170643, 35.979538, 40.277660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879105, 37.111309, 40.240192>,  <33.472641, 36.606487, 40.353382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879105, 37.111309, 40.240192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084362, 37.453133, 40.208153>,  <34.207516, 37.658226, 40.188931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084362, 37.453133, 40.208153>,  <33.879105, 37.111309, 40.240192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084362, 37.453133, 40.208153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091355, 0.038413, 0.995077,
		0.853426, -0.517936, -0.058357,
		0.513145, 0.854556, -0.080099,
		34.238304, 37.709499, 40.184124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622574, 37.091248, 40.585945>,  <33.879105, 37.111309, 40.240192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622574, 37.091248, 40.585945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505341, 37.473560, 40.595623>,  <34.435001, 37.702950, 40.601429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505341, 37.473560, 40.595623>,  <34.622574, 37.091248, 40.585945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505341, 37.473560, 40.595623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192312, 0.034145, 0.980740,
		0.936546, 0.292090, -0.193815,
		-0.293082, 0.955781, 0.024194,
		34.417416, 37.760296, 40.602882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172234, 37.451790, 40.963608>,  <34.622574, 37.091248, 40.585945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172234, 37.451790, 40.963608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855961, 37.696522, 40.972523>,  <34.666199, 37.843361, 40.977871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855961, 37.696522, 40.972523>,  <35.172234, 37.451790, 40.963608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855961, 37.696522, 40.972523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084595, 0.073126, 0.993728,
		0.606361, 0.787604, -0.109577,
		-0.790677, 0.611828, 0.022287,
		34.618759, 37.880070, 40.979210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281429, 37.972183, 41.508095>,  <35.172234, 37.451790, 40.963608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281429, 37.972183, 41.508095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883545, 37.966564, 41.467388>,  <34.644814, 37.963192, 41.442963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883545, 37.966564, 41.467388>,  <35.281429, 37.972183, 41.508095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883545, 37.966564, 41.467388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102316, 0.046369, 0.993671,
		-0.009239, 0.998826, -0.047560,
		-0.994709, -0.014047, -0.101767,
		34.585133, 37.962349, 41.436859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046711, 38.456539, 42.001102>,  <35.281429, 37.972183, 41.508095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046711, 38.456539, 42.001102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.698505, 38.274544, 41.926071>,  <34.489582, 38.165348, 41.881050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.698505, 38.274544, 41.926071>,  <35.046711, 38.456539, 42.001102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698505, 38.274544, 41.926071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204211, -0.012841, 0.978843,
		-0.447772, 0.890404, -0.081736,
		-0.870516, -0.454989, -0.187580,
		34.437351, 38.138046, 41.869797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429836, 38.876923, 42.373924>,  <35.046711, 38.456539, 42.001102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429836, 38.876923, 42.373924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330372, 38.492538, 42.325401>,  <34.270695, 38.261906, 42.296288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330372, 38.492538, 42.325401>,  <34.429836, 38.876923, 42.373924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330372, 38.492538, 42.325401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103244, -0.098226, 0.989794,
		-0.963072, 0.258648, -0.074789,
		-0.248662, -0.960964, -0.121303,
		34.255772, 38.204250, 42.289009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944466, 38.773598, 42.972443>,  <34.429836, 38.876923, 42.373924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944466, 38.773598, 42.972443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999538, 38.394951, 42.855850>,  <34.032581, 38.167763, 42.785896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999538, 38.394951, 42.855850>,  <33.944466, 38.773598, 42.972443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999538, 38.394951, 42.855850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309105, -0.320651, 0.895342,
		-0.941009, -0.033175, -0.336752,
		0.137683, -0.946616, -0.291481,
		34.040844, 38.110966, 42.768406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287453, 38.390388, 43.275715>,  <33.944466, 38.773598, 42.972443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287453, 38.390388, 43.275715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595669, 38.147343, 43.198692>,  <33.780598, 38.001514, 43.152477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595669, 38.147343, 43.198692>,  <33.287453, 38.390388, 43.275715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595669, 38.147343, 43.198692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007397, -0.293553, 0.955914,
		-0.637354, -0.737990, -0.221698,
		0.770536, -0.607616, -0.192556,
		33.826828, 37.965057, 43.140926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112251, 37.792366, 43.606960>,  <33.287453, 38.390388, 43.275715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112251, 37.792366, 43.606960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507740, 37.755856, 43.559467>,  <33.745033, 37.733952, 43.530972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507740, 37.755856, 43.559467>,  <33.112251, 37.792366, 43.606960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507740, 37.755856, 43.559467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065393, -0.450119, 0.890571,
		-0.134728, -0.888292, -0.439074,
		0.988722, -0.091273, -0.118732,
		33.804356, 37.728474, 43.523849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302345, 37.250061, 43.909679>,  <33.112251, 37.792366, 43.606960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302345, 37.250061, 43.909679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.661930, 37.420368, 43.868496>,  <33.877682, 37.522552, 43.843784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.661930, 37.420368, 43.868496>,  <33.302345, 37.250061, 43.909679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661930, 37.420368, 43.868496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259452, -0.328158, 0.908293,
		0.352931, -0.843230, -0.405465,
		0.898957, 0.425764, -0.102960,
		33.931618, 37.548096, 43.837608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752453, 36.772812, 44.220570>,  <33.302345, 37.250061, 43.909679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752453, 36.772812, 44.220570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945038, 37.123394, 44.222099>,  <34.060589, 37.333744, 44.223019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945038, 37.123394, 44.222099>,  <33.752453, 36.772812, 44.220570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945038, 37.123394, 44.222099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202479, -0.115472, 0.972455,
		0.852755, -0.467430, -0.233060,
		0.481467, 0.876456, 0.003825,
		34.089478, 37.386330, 44.223248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364845, 36.717606, 44.638474>,  <33.752453, 36.772812, 44.220570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364845, 36.717606, 44.638474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424427, 37.112732, 44.620415>,  <34.460175, 37.349808, 44.609581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424427, 37.112732, 44.620415>,  <34.364845, 36.717606, 44.638474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424427, 37.112732, 44.620415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208701, 0.013223, 0.977890,
		0.966570, -0.155080, -0.204189,
		0.148951, 0.987813, -0.045146,
		34.469112, 37.409077, 44.606873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124260, 37.001934, 44.966980>,  <34.364845, 36.717606, 44.638474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124260, 37.001934, 44.966980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839436, 37.282288, 44.983650>,  <34.668541, 37.450500, 44.993652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839436, 37.282288, 44.983650>,  <35.124260, 37.001934, 44.966980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839436, 37.282288, 44.983650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216082, 0.162282, 0.962794,
		0.668044, 0.694569, -0.267002,
		-0.712057, 0.700884, 0.041672,
		34.625820, 37.492554, 44.996151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443508, 37.559151, 45.300449>,  <35.124260, 37.001934, 44.966980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443508, 37.559151, 45.300449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.056168, 37.643764, 45.353447>,  <34.823765, 37.694530, 45.385246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.056168, 37.643764, 45.353447>,  <35.443508, 37.559151, 45.300449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056168, 37.643764, 45.353447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157528, 0.106157, 0.981792,
		0.193615, 0.971589, -0.136119,
		-0.968348, 0.211532, 0.132499,
		34.765663, 37.707226, 45.393196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967697, 38.044765, 45.159973>,  <35.443508, 37.559151, 45.300449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967697, 38.044765, 45.159973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283665, 37.806694, 45.100929>,  <36.473244, 37.663849, 45.065502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283665, 37.806694, 45.100929>,  <35.967697, 38.044765, 45.159973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283665, 37.806694, 45.100929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263587, -0.112214, -0.958086,
		0.553673, 0.795717, -0.245522,
		0.789917, -0.595183, -0.147611,
		36.520641, 37.628139, 45.056644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387249, 38.279419, 44.554062>,  <35.967697, 38.044765, 45.159973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387249, 38.279419, 44.554062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.490154, 37.894989, 44.594368>,  <36.551895, 37.664330, 44.618553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.490154, 37.894989, 44.594368>,  <36.387249, 38.279419, 44.554062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490154, 37.894989, 44.594368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275713, -0.172944, -0.945554,
		0.926174, 0.215471, -0.309473,
		0.257261, -0.961074, 0.100768,
		36.567333, 37.606667, 44.624599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845036, 38.142372, 44.085232>,  <36.387249, 38.279419, 44.554062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845036, 38.142372, 44.085232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.698483, 37.777550, 44.158905>,  <36.610550, 37.558659, 44.203110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.698483, 37.777550, 44.158905>,  <36.845036, 38.142372, 44.085232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698483, 37.777550, 44.158905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010676, -0.193817, -0.980980,
		0.930403, -0.361380, 0.061274,
		-0.366382, -0.912052, 0.184186,
		36.588570, 37.503933, 44.214161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311016, 37.726391, 43.744431>,  <36.845036, 38.142372, 44.085232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311016, 37.726391, 43.744431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.973499, 37.515335, 43.783646>,  <36.770988, 37.388702, 43.807175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.973499, 37.515335, 43.783646>,  <37.311016, 37.726391, 43.744431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973499, 37.515335, 43.783646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160106, -0.421849, -0.892417,
		0.512234, -0.737317, 0.440432,
		-0.843791, -0.527642, 0.098036,
		36.720364, 37.357044, 43.813057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528477, 37.170952, 43.445976>,  <37.311016, 37.726391, 43.744431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528477, 37.170952, 43.445976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.133183, 37.109787, 43.446232>,  <36.896004, 37.073086, 43.446384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.133183, 37.109787, 43.446232>,  <37.528477, 37.170952, 43.445976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133183, 37.109787, 43.446232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055941, -0.365385, -0.929174,
		0.142318, -0.918211, 0.369642,
		-0.988239, -0.152916, 0.000636,
		36.836712, 37.063911, 43.446423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511112, 36.488049, 43.288673>,  <37.528477, 37.170952, 43.445976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511112, 36.488049, 43.288673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155106, 36.654835, 43.214897>,  <36.941502, 36.754906, 43.170631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155106, 36.654835, 43.214897>,  <37.511112, 36.488049, 43.288673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155106, 36.654835, 43.214897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103542, -0.209119, -0.972393,
		-0.444023, -0.884539, 0.142945,
		-0.890013, 0.416964, -0.184440,
		36.888103, 36.779922, 43.159565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200943, 36.034958, 42.856655>,  <37.511112, 36.488049, 43.288673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200943, 36.034958, 42.856655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995705, 36.370724, 42.784973>,  <36.872562, 36.572182, 42.741962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995705, 36.370724, 42.784973>,  <37.200943, 36.034958, 42.856655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995705, 36.370724, 42.784973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056947, -0.175034, -0.982914,
		-0.856441, -0.514533, 0.042006,
		-0.513095, 0.839415, -0.179207,
		36.841778, 36.622547, 42.731213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615051, 35.866528, 42.426804>,  <37.200943, 36.034958, 42.856655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615051, 35.866528, 42.426804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.721024, 36.246090, 42.358238>,  <36.784607, 36.473827, 42.317101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.721024, 36.246090, 42.358238>,  <36.615051, 35.866528, 42.426804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721024, 36.246090, 42.358238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052070, -0.163428, -0.985180,
		-0.962859, 0.269935, 0.006111,
		0.264935, 0.948908, -0.171414,
		36.800503, 36.530762, 42.306812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169579, 36.100830, 41.880871>,  <36.615051, 35.866528, 42.426804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169579, 36.100830, 41.880871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474838, 36.358688, 41.862827>,  <36.657993, 36.513405, 41.852001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474838, 36.358688, 41.862827>,  <36.169579, 36.100830, 41.880871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474838, 36.358688, 41.862827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019476, -0.092721, -0.995502,
		-0.645928, 0.758839, -0.083315,
		0.763150, 0.644645, -0.045112,
		36.703785, 36.552082, 41.849293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945766, 36.584637, 41.386143>,  <36.169579, 36.100830, 41.880871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945766, 36.584637, 41.386143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343102, 36.619022, 41.416843>,  <36.581501, 36.639652, 41.435265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343102, 36.619022, 41.416843>,  <35.945766, 36.584637, 41.386143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343102, 36.619022, 41.416843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078266, -0.014431, -0.996828,
		-0.084583, 0.996194, -0.021063,
		0.993338, 0.085963, 0.076747,
		36.641102, 36.644810, 41.439869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128899, 37.116730, 40.862785>,  <35.945766, 36.584637, 41.386143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128899, 37.116730, 40.862785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.471130, 36.924774, 40.940449>,  <36.676468, 36.809601, 40.987045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.471130, 36.924774, 40.940449>,  <36.128899, 37.116730, 40.862785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471130, 36.924774, 40.940449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317846, 0.190928, -0.928720,
		0.408609, 0.856304, 0.315883,
		0.855578, -0.479885, 0.194158,
		36.727802, 36.780807, 40.998695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593342, 37.534504, 40.506042>,  <36.128899, 37.116730, 40.862785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593342, 37.534504, 40.506042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761459, 37.177158, 40.569614>,  <36.862331, 36.962753, 40.607758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761459, 37.177158, 40.569614>,  <36.593342, 37.534504, 40.506042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761459, 37.177158, 40.569614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315815, -0.020179, -0.948606,
		0.850654, 0.448888, 0.273655,
		0.420296, -0.893360, 0.158931,
		36.887547, 36.909149, 40.617294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273243, 37.579929, 40.253067>,  <36.593342, 37.534504, 40.506042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273243, 37.579929, 40.253067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.188919, 37.188942, 40.257244>,  <37.138325, 36.954350, 40.259750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.188919, 37.188942, 40.257244>,  <37.273243, 37.579929, 40.253067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188919, 37.188942, 40.257244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382796, -0.092381, -0.919202,
		0.899459, -0.189780, 0.393647,
		-0.210811, -0.977471, 0.010445,
		37.125675, 36.895702, 40.260376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708553, 37.418491, 39.776707>,  <37.273243, 37.579929, 40.253067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708553, 37.418491, 39.776707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501160, 37.080212, 39.827248>,  <37.376724, 36.877243, 39.857571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501160, 37.080212, 39.827248>,  <37.708553, 37.418491, 39.776707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501160, 37.080212, 39.827248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312800, -0.325108, -0.892447,
		0.795820, -0.423198, 0.433099,
		-0.518485, -0.845700, 0.126351,
		37.345615, 36.826500, 39.865154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.431427, 30.148806, 31.206013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342781, 30.254393, 30.830523>,  <30.289593, 30.317745, 30.605228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342781, 30.254393, 30.830523>,  <30.431427, 30.148806, 31.206013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342781, 30.254393, 30.830523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664199, 0.663959, 0.343509,
		0.713951, 0.699628, 0.028184,
		-0.221616, 0.263968, -0.938726,
		30.276297, 30.333584, 30.548904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421993, 30.888693, 31.252909>,  <30.431427, 30.148806, 31.206013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421993, 30.888693, 31.252909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233532, 30.780775, 30.916998>,  <30.120455, 30.716024, 30.715452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233532, 30.780775, 30.916998>,  <30.421993, 30.888693, 31.252909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233532, 30.780775, 30.916998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618698, 0.779663, 0.096635,
		0.628672, 0.565098, -0.534262,
		-0.471153, -0.269795, -0.839777,
		30.092186, 30.699837, 30.665064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443884, 31.503517, 30.851131>,  <30.421993, 30.888693, 31.252909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443884, 31.503517, 30.851131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.139614, 31.281942, 30.715761>,  <29.957052, 31.148998, 30.634539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.139614, 31.281942, 30.715761>,  <30.443884, 31.503517, 30.851131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139614, 31.281942, 30.715761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564584, 0.821850, -0.076205,
		0.320347, 0.133102, -0.937903,
		-0.760673, -0.553937, -0.338424,
		29.911413, 31.115761, 30.614233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032106, 31.953981, 30.359655>,  <30.443884, 31.503517, 30.851131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032106, 31.953981, 30.359655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757170, 31.672695, 30.432373>,  <29.592207, 31.503923, 30.476004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757170, 31.672695, 30.432373>,  <30.032106, 31.953981, 30.359655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757170, 31.672695, 30.432373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701517, 0.707595, 0.084762,
		-0.188243, -0.069271, -0.979677,
		-0.687342, -0.703215, 0.181795,
		29.550966, 31.461731, 30.486912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342384, 32.091919, 29.886389>,  <30.032106, 31.953981, 30.359655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342384, 32.091919, 29.886389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244341, 31.868397, 30.203289>,  <29.185514, 31.734283, 30.393429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244341, 31.868397, 30.203289>,  <29.342384, 32.091919, 29.886389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244341, 31.868397, 30.203289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914243, 0.405155, 0.002921,
		-0.322616, -0.723592, -0.610191,
		-0.245108, -0.558805, 0.792249,
		29.170809, 31.700754, 30.440964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762997, 31.880268, 29.682100>,  <29.342384, 32.091919, 29.886389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762997, 31.880268, 29.682100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765770, 31.857035, 30.081415>,  <28.767433, 31.843094, 30.321005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765770, 31.857035, 30.081415>,  <28.762997, 31.880268, 29.682100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765770, 31.857035, 30.081415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789017, 0.612992, 0.041145,
		-0.614332, -0.787951, -0.041579,
		0.006932, -0.058083, 0.998288,
		28.767849, 31.839609, 30.380901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104534, 31.922556, 29.907484>,  <28.762997, 31.880268, 29.682100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104534, 31.922556, 29.907484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285753, 32.011444, 30.252823>,  <28.394485, 32.064777, 30.460026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285753, 32.011444, 30.252823>,  <28.104534, 31.922556, 29.907484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285753, 32.011444, 30.252823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761347, 0.600262, 0.245022,
		-0.463785, -0.768312, 0.441135,
		0.453050, 0.222219, 0.863345,
		28.421669, 32.078110, 30.511826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562815, 32.124958, 30.452192>,  <28.104534, 31.922556, 29.907484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562815, 32.124958, 30.452192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888584, 32.290192, 30.615200>,  <28.084045, 32.389332, 30.713005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888584, 32.290192, 30.615200>,  <27.562815, 32.124958, 30.452192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888584, 32.290192, 30.615200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568814, 0.707187, 0.419926,
		-0.114729, -0.573802, 0.810918,
		0.814425, 0.413084, 0.407521,
		28.132912, 32.414116, 30.737457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393681, 32.147678, 31.165535>,  <27.562815, 32.124958, 30.452192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393681, 32.147678, 31.165535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680580, 32.423843, 31.127834>,  <27.852720, 32.589542, 31.105215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680580, 32.423843, 31.127834>,  <27.393681, 32.147678, 31.165535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680580, 32.423843, 31.127834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495298, 0.600275, 0.627973,
		0.490135, -0.403733, 0.772507,
		0.717250, 0.690413, -0.094248,
		27.895754, 32.630966, 31.099560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473925, 32.422291, 31.765310>,  <27.393681, 32.147678, 31.165535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473925, 32.422291, 31.765310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641487, 32.700230, 31.531487>,  <27.742025, 32.866993, 31.391191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641487, 32.700230, 31.531487>,  <27.473925, 32.422291, 31.765310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641487, 32.700230, 31.531487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425089, 0.718934, 0.549939,
		0.802382, 0.018118, 0.596535,
		0.418905, 0.694842, -0.584562,
		27.767159, 32.908684, 31.356119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617973, 32.884277, 32.258400>,  <27.473925, 32.422291, 31.765310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617973, 32.884277, 32.258400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.647961, 33.094303, 31.919298>,  <27.665953, 33.220318, 31.715837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.647961, 33.094303, 31.919298>,  <27.617973, 32.884277, 32.258400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647961, 33.094303, 31.919298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432517, 0.783139, 0.446790,
		0.898503, 0.333173, 0.285809,
		0.074970, 0.525060, -0.847757,
		27.670452, 33.251820, 31.664970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058989, 33.490444, 32.533375>,  <27.617973, 32.884277, 32.258400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058989, 33.490444, 32.533375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893505, 33.603001, 32.187042>,  <27.794214, 33.670536, 31.979242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893505, 33.603001, 32.187042>,  <28.058989, 33.490444, 32.533375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893505, 33.603001, 32.187042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348016, 0.829927, 0.436011,
		0.841267, 0.481705, -0.245420,
		-0.413709, 0.281392, -0.865831,
		27.769392, 33.687420, 31.927294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208094, 34.209625, 32.546970>,  <28.058989, 33.490444, 32.533375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208094, 34.209625, 32.546970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913483, 34.154785, 32.282021>,  <27.736717, 34.121880, 32.123051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913483, 34.154785, 32.282021>,  <28.208094, 34.209625, 32.546970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913483, 34.154785, 32.282021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564880, 0.663327, 0.490823,
		0.372076, 0.735663, -0.566003,
		-0.736525, -0.137100, -0.662370,
		27.692526, 34.113655, 32.083309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000130, 34.850437, 32.414120>,  <28.208094, 34.209625, 32.546970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000130, 34.850437, 32.414120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689713, 34.629070, 32.293133>,  <27.503462, 34.496250, 32.220543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689713, 34.629070, 32.293133>,  <28.000130, 34.850437, 32.414120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689713, 34.629070, 32.293133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620459, 0.583939, 0.523493,
		-0.113091, 0.593919, -0.796536,
		-0.776042, -0.553421, -0.302464,
		27.456900, 34.463043, 32.202393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536306, 35.326511, 32.196377>,  <28.000130, 34.850437, 32.414120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536306, 35.326511, 32.196377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.322214, 34.994682, 32.260052>,  <27.193760, 34.795586, 32.298256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.322214, 34.994682, 32.260052>,  <27.536306, 35.326511, 32.196377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322214, 34.994682, 32.260052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686281, 0.536926, 0.490641,
		-0.492492, 0.153361, -0.856699,
		-0.535229, -0.829572, 0.159183,
		27.161646, 34.745811, 32.307808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782768, 35.523548, 32.037716>,  <27.536306, 35.326511, 32.196377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782768, 35.523548, 32.037716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786716, 35.206985, 32.282200>,  <26.789085, 35.017048, 32.428890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786716, 35.206985, 32.282200>,  <26.782768, 35.523548, 32.037716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786716, 35.206985, 32.282200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838035, 0.326913, 0.436835,
		-0.545527, -0.516524, -0.660002,
		0.009872, -0.791410, 0.611205,
		26.789679, 34.969563, 32.465561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035707, 35.439060, 32.155266>,  <26.782768, 35.523548, 32.037716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035707, 35.439060, 32.155266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222038, 35.237823, 32.446445>,  <26.333838, 35.117081, 32.621151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222038, 35.237823, 32.446445>,  <26.035707, 35.439060, 32.155266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222038, 35.237823, 32.446445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748351, 0.215019, 0.627485,
		-0.472204, -0.837059, -0.276325,
		0.465827, -0.503089, 0.727947,
		26.361786, 35.086899, 32.664829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513935, 35.052181, 32.478798>,  <26.035707, 35.439060, 32.155266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513935, 35.052181, 32.478798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.793098, 35.041771, 32.765083>,  <25.960596, 35.035522, 32.936855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.793098, 35.041771, 32.765083>,  <25.513935, 35.052181, 32.478798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793098, 35.041771, 32.765083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701832, 0.174213, 0.690711,
		-0.142665, -0.984364, 0.103317,
		0.697910, -0.026029, 0.715713,
		26.002472, 35.033962, 32.979797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200981, 34.662777, 33.001858>,  <25.513935, 35.052181, 32.478798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200981, 34.662777, 33.001858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.491549, 34.857014, 33.196388>,  <25.665890, 34.973557, 33.313107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.491549, 34.857014, 33.196388>,  <25.200981, 34.662777, 33.001858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491549, 34.857014, 33.196388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620423, 0.158966, 0.767988,
		0.295618, -0.859611, 0.416748,
		0.726419, 0.485591, 0.486329,
		25.709475, 35.002689, 33.342289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187546, 34.254398, 33.681946>,  <25.200981, 34.662777, 33.001858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187546, 34.254398, 33.681946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368666, 34.607170, 33.734356>,  <25.477339, 34.818832, 33.765804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368666, 34.607170, 33.734356>,  <25.187546, 34.254398, 33.681946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368666, 34.607170, 33.734356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506340, 0.133390, 0.851955,
		0.733887, -0.452111, 0.506956,
		0.452802, 0.881931, 0.131029,
		25.504507, 34.871750, 33.773666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245691, 34.306873, 34.374802>,  <25.187546, 34.254398, 33.681946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245691, 34.306873, 34.374802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.321016, 34.689987, 34.287910>,  <25.366211, 34.919857, 34.235775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.321016, 34.689987, 34.287910>,  <25.245691, 34.306873, 34.374802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321016, 34.689987, 34.287910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378886, 0.274908, 0.883669,
		0.906082, -0.084100, 0.414660,
		0.188310, 0.957785, -0.217225,
		25.377510, 34.977322, 34.222744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606415, 34.621983, 34.996712>,  <25.245691, 34.306873, 34.374802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606415, 34.621983, 34.996712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.407562, 34.873718, 34.757782>,  <25.288250, 35.024761, 34.614426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.407562, 34.873718, 34.757782>,  <25.606415, 34.621983, 34.996712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407562, 34.873718, 34.757782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544228, 0.310002, 0.779561,
		0.675778, 0.712623, 0.188391,
		-0.497132, 0.629338, -0.597322,
		25.258423, 35.062519, 34.578587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016748, 35.175953, 34.786320>,  <25.606415, 34.621983, 34.996712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016748, 35.175953, 34.786320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.062849, 35.053761, 35.164398>,  <26.090509, 34.980446, 35.391247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.062849, 35.053761, 35.164398>,  <26.016748, 35.175953, 34.786320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062849, 35.053761, 35.164398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700642, -0.649513, -0.295353,
		0.704143, 0.696285, 0.139176,
		0.115253, -0.305483, 0.945197,
		26.097425, 34.962116, 35.447956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683571, 35.142380, 34.903728>,  <26.016748, 35.175953, 34.786320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683571, 35.142380, 34.903728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526552, 34.893444, 35.174606>,  <26.432341, 34.744083, 35.337135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526552, 34.893444, 35.174606>,  <26.683571, 35.142380, 34.903728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526552, 34.893444, 35.174606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665832, -0.700238, -0.257554,
		0.634487, 0.349799, 0.689251,
		-0.392547, -0.622341, 0.677199,
		26.408789, 34.706741, 35.377766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216297, 34.908707, 35.218506>,  <26.683571, 35.142380, 34.903728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216297, 34.908707, 35.218506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.944035, 34.636314, 35.326557>,  <26.780676, 34.472878, 35.391388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.944035, 34.636314, 35.326557>,  <27.216297, 34.908707, 35.218506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944035, 34.636314, 35.326557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639821, -0.732168, -0.233578,
		0.356839, 0.013844, 0.934063,
		-0.680658, -0.680983, 0.270124,
		26.739838, 34.432018, 35.407593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568193, 34.399666, 35.622459>,  <27.216297, 34.908707, 35.218506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568193, 34.399666, 35.622459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240557, 34.216572, 35.484142>,  <27.043974, 34.106716, 35.401154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240557, 34.216572, 35.484142>,  <27.568193, 34.399666, 35.622459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240557, 34.216572, 35.484142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561893, -0.761621, -0.322814,
		-0.115599, -0.458711, 0.881034,
		-0.819093, -0.457730, -0.345789,
		26.994829, 34.079254, 35.380405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516788, 33.710545, 35.973511>,  <27.568193, 34.399666, 35.622459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516788, 33.710545, 35.973511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.310324, 33.714962, 35.630943>,  <27.186445, 33.717613, 35.425404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.310324, 33.714962, 35.630943>,  <27.516788, 33.710545, 35.973511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310324, 33.714962, 35.630943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503977, -0.804573, -0.314118,
		-0.692520, -0.593752, 0.409725,
		-0.516162, 0.011041, -0.856420,
		27.155476, 33.718273, 35.374016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303392, 33.026752, 35.902042>,  <27.516788, 33.710545, 35.973511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303392, 33.026752, 35.902042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.265522, 33.192280, 35.539871>,  <27.242800, 33.291595, 35.322571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.265522, 33.192280, 35.539871>,  <27.303392, 33.026752, 35.902042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265522, 33.192280, 35.539871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431484, -0.802581, -0.411928,
		-0.897139, -0.429675, -0.102571,
		-0.094674, 0.413814, -0.905425,
		27.237120, 33.316425, 35.268242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079060, 32.501900, 35.521942>,  <27.303392, 33.026752, 35.902042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079060, 32.501900, 35.521942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.200708, 32.739750, 35.224236>,  <27.273697, 32.882458, 35.045612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.200708, 32.739750, 35.224236>,  <27.079060, 32.501900, 35.521942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200708, 32.739750, 35.224236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404094, -0.788025, -0.464462,
		-0.862681, -0.159500, -0.479939,
		0.304122, 0.594623, -0.744267,
		27.291945, 32.918137, 35.000954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856176, 32.215351, 34.905834>,  <27.079060, 32.501900, 35.521942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856176, 32.215351, 34.905834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.171011, 32.433159, 34.789906>,  <27.359911, 32.563843, 34.720348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.171011, 32.433159, 34.789906>,  <26.856176, 32.215351, 34.905834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171011, 32.433159, 34.789906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392953, -0.804781, -0.444877,
		-0.475484, 0.236271, -0.847402,
		0.787085, 0.544521, -0.289817,
		27.407137, 32.596516, 34.702961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857876, 32.190006, 34.165062>,  <26.856176, 32.215351, 34.905834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857876, 32.190006, 34.165062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.228872, 32.280621, 34.284019>,  <27.451469, 32.334988, 34.355392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.228872, 32.280621, 34.284019>,  <26.857876, 32.190006, 34.165062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228872, 32.280621, 34.284019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361944, -0.743247, -0.562655,
		0.093572, 0.629496, -0.771349,
		0.927492, 0.226537, 0.297389,
		27.507120, 32.348583, 34.373238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180595, 32.291153, 33.557224>,  <26.857876, 32.190006, 34.165062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180595, 32.291153, 33.557224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464390, 32.212494, 33.827915>,  <27.634666, 32.165298, 33.990330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464390, 32.212494, 33.827915>,  <27.180595, 32.291153, 33.557224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464390, 32.212494, 33.827915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386594, -0.694281, -0.607058,
		0.589214, 0.692318, -0.416561,
		0.709487, -0.196647, 0.676726,
		27.677237, 32.153500, 34.030933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660381, 32.095894, 33.124317>,  <27.180595, 32.291153, 33.557224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660381, 32.095894, 33.124317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818928, 31.974257, 33.470825>,  <27.914055, 31.901274, 33.678730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818928, 31.974257, 33.470825>,  <27.660381, 32.095894, 33.124317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818928, 31.974257, 33.470825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579946, -0.648533, -0.493018,
		0.711727, 0.697805, -0.080699,
		0.396367, -0.304093, 0.866268,
		27.937838, 31.883028, 33.730705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365843, 32.009724, 33.017834>,  <27.660381, 32.095894, 33.124317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365843, 32.009724, 33.017834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294889, 31.765684, 33.326717>,  <28.252317, 31.619259, 33.512047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294889, 31.765684, 33.326717>,  <28.365843, 32.009724, 33.017834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294889, 31.765684, 33.326717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628333, -0.674123, -0.388273,
		0.757452, 0.416333, 0.502925,
		-0.177382, -0.610102, 0.772211,
		28.241674, 31.582653, 33.558380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047054, 31.785452, 33.258709>,  <28.365843, 32.009724, 33.017834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047054, 31.785452, 33.258709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807798, 31.503302, 33.410851>,  <28.664244, 31.334011, 33.502136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807798, 31.503302, 33.410851>,  <29.047054, 31.785452, 33.258709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807798, 31.503302, 33.410851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596746, -0.708831, -0.376103,
		0.534904, 0.002015, 0.844911,
		-0.598141, -0.705376, 0.380359,
		28.628357, 31.291689, 33.524960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428640, 31.272041, 33.671600>,  <29.047054, 31.785452, 33.258709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428640, 31.272041, 33.671600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.097151, 31.084423, 33.549477>,  <28.898256, 30.971851, 33.476204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.097151, 31.084423, 33.549477>,  <29.428640, 31.272041, 33.671600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097151, 31.084423, 33.549477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548890, -0.787683, -0.279778,
		-0.109255, -0.399438, 0.910227,
		-0.828724, -0.469047, -0.305306,
		28.848534, 30.943708, 33.457886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580009, 30.627789, 33.798267>,  <29.428640, 31.272041, 33.671600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580009, 30.627789, 33.798267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262648, 30.581560, 33.559219>,  <29.072231, 30.553823, 33.415791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262648, 30.581560, 33.559219>,  <29.580009, 30.627789, 33.798267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262648, 30.581560, 33.559219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354495, -0.885858, -0.299315,
		-0.494816, -0.449332, 0.743814,
		-0.793405, -0.115572, -0.597622,
		29.024626, 30.546888, 33.379932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400995, 29.949116, 33.756680>,  <29.580009, 30.627789, 33.798267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400995, 29.949116, 33.756680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203390, 30.058477, 33.426540>,  <29.084827, 30.124094, 33.228458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203390, 30.058477, 33.426540>,  <29.400995, 29.949116, 33.756680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203390, 30.058477, 33.426540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170345, -0.900439, -0.400239,
		-0.852603, -0.338317, 0.398257,
		-0.494014, 0.273405, -0.825348,
		29.055185, 30.140499, 33.178936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927084, 29.435961, 33.523949>,  <29.400995, 29.949116, 33.756680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927084, 29.435961, 33.523949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989027, 29.642756, 33.187202>,  <29.026194, 29.766832, 32.985153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989027, 29.642756, 33.187202>,  <28.927084, 29.435961, 33.523949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989027, 29.642756, 33.187202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175225, -0.853012, -0.491596,
		-0.972273, -0.071389, -0.222686,
		0.154859, 0.516986, -0.841869,
		29.035484, 29.797852, 32.934643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488207, 29.104300, 32.970070>,  <28.927084, 29.435961, 33.523949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488207, 29.104300, 32.970070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772259, 29.331501, 32.803658>,  <28.942690, 29.467821, 32.703808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772259, 29.331501, 32.803658>,  <28.488207, 29.104300, 32.970070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772259, 29.331501, 32.803658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195704, -0.726857, -0.658315,
		-0.676323, 0.386071, -0.627325,
		0.710132, 0.568004, -0.416035,
		28.985298, 29.501902, 32.678848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466215, 28.983015, 32.292847>,  <28.488207, 29.104300, 32.970070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466215, 28.983015, 32.292847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837784, 29.112989, 32.363869>,  <29.060724, 29.190973, 32.406483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837784, 29.112989, 32.363869>,  <28.466215, 28.983015, 32.292847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837784, 29.112989, 32.363869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356384, -0.654428, -0.666869,
		-0.100494, 0.682745, -0.723713,
		0.928919, 0.324936, 0.177554,
		29.116459, 29.210470, 32.417133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728962, 29.139761, 31.637341>,  <28.466215, 28.983015, 32.292847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728962, 29.139761, 31.637341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018646, 29.050247, 31.898243>,  <29.192457, 28.996540, 32.054783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018646, 29.050247, 31.898243>,  <28.728962, 29.139761, 31.637341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018646, 29.050247, 31.898243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288572, -0.760721, -0.581403,
		0.626292, 0.609283, -0.486346,
		0.724213, -0.223782, 0.652255,
		29.235910, 28.983112, 32.093918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.367142, 34.984943, 45.419231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.988930, 34.854954, 45.411491>,  <39.762005, 34.776958, 45.406849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.988930, 34.854954, 45.411491>,  <40.367142, 34.984943, 45.419231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988930, 34.854954, 45.411491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069769, 0.144219, 0.987083,
		-0.317984, 0.934662, -0.159036,
		-0.945525, -0.324973, -0.019351,
		39.705273, 34.757462, 45.405685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073784, 35.439240, 45.888508>,  <40.367142, 34.984943, 45.419231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073784, 35.439240, 45.888508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.826088, 35.128445, 45.843201>,  <39.677471, 34.941967, 45.816017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.826088, 35.128445, 45.843201>,  <40.073784, 35.439240, 45.888508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826088, 35.128445, 45.843201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264326, 0.070442, 0.961858,
		-0.739375, 0.625559, -0.248999,
		-0.619239, -0.776990, -0.113269,
		39.640316, 34.895348, 45.809219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440224, 35.621788, 46.255375>,  <40.073784, 35.439240, 45.888508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440224, 35.621788, 46.255375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.428787, 35.223011, 46.226273>,  <39.421925, 34.983746, 46.208809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.428787, 35.223011, 46.226273>,  <39.440224, 35.621788, 46.255375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428787, 35.223011, 46.226273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281817, -0.061795, 0.957476,
		-0.959042, 0.047884, -0.279188,
		-0.028595, -0.996940, -0.072759,
		39.420208, 34.923927, 46.204445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822456, 35.471390, 46.541855>,  <39.440224, 35.621788, 46.255375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822456, 35.471390, 46.541855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.059887, 35.149712, 46.554119>,  <39.202347, 34.956703, 46.561478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.059887, 35.149712, 46.554119>,  <38.822456, 35.471390, 46.541855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059887, 35.149712, 46.554119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260060, -0.155616, 0.952970,
		-0.761601, -0.573634, -0.301509,
		0.593576, -0.804194, 0.030662,
		39.237961, 34.908455, 46.563316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408749, 34.919548, 46.826923>,  <38.822456, 35.471390, 46.541855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408749, 34.919548, 46.826923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795185, 34.831501, 46.880894>,  <39.027046, 34.778671, 46.913277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795185, 34.831501, 46.880894>,  <38.408749, 34.919548, 46.826923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795185, 34.831501, 46.880894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144054, -0.025867, 0.989232,
		-0.214260, -0.975129, -0.056699,
		0.966096, -0.220120, 0.134929,
		39.085014, 34.765465, 46.921371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381287, 34.402203, 47.340778>,  <38.408749, 34.919548, 46.826923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381287, 34.402203, 47.340778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766796, 34.507736, 47.356407>,  <38.998104, 34.571056, 47.365784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766796, 34.507736, 47.356407>,  <38.381287, 34.402203, 47.340778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766796, 34.507736, 47.356407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006112, -0.124616, 0.992186,
		0.266646, -0.956483, -0.118490,
		0.963775, 0.263838, 0.039074,
		39.055927, 34.586887, 47.368130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771816, 33.865131, 47.840641>,  <38.381287, 34.402203, 47.340778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771816, 33.865131, 47.840641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.045601, 34.155750, 47.816471>,  <39.209869, 34.330120, 47.801971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.045601, 34.155750, 47.816471>,  <38.771816, 33.865131, 47.840641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045601, 34.155750, 47.816471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175632, -0.083887, 0.980875,
		0.707581, -0.681979, -0.185022,
		0.684457, 0.726545, -0.060420,
		39.250938, 34.373714, 47.798344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273800, 33.705479, 48.356506>,  <38.771816, 33.865131, 47.840641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273800, 33.705479, 48.356506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.345871, 34.093658, 48.292301>,  <39.389114, 34.326565, 48.253780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.345871, 34.093658, 48.292301>,  <39.273800, 33.705479, 48.356506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345871, 34.093658, 48.292301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299287, 0.101356, 0.948765,
		0.936996, -0.218988, -0.272180,
		0.180181, 0.970449, -0.160511,
		39.399925, 34.384792, 48.244148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024773, 33.802006, 48.533718>,  <39.273800, 33.705479, 48.356506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024773, 33.802006, 48.533718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.840614, 34.154804, 48.573956>,  <39.730122, 34.366482, 48.598099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.840614, 34.154804, 48.573956>,  <40.024773, 33.802006, 48.533718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840614, 34.154804, 48.573956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155791, -0.031276, 0.987295,
		0.873937, 0.470215, -0.123008,
		-0.460394, 0.881997, 0.100589,
		39.702496, 34.419403, 48.604134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567829, 34.378868, 48.931442>,  <40.024773, 33.802006, 48.533718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567829, 34.378868, 48.931442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.179989, 34.476742, 48.931042>,  <39.947285, 34.535465, 48.930801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.179989, 34.476742, 48.931042>,  <40.567829, 34.378868, 48.931442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179989, 34.476742, 48.931042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040115, 0.162997, 0.985811,
		0.241379, 0.955803, -0.167858,
		-0.969602, 0.244688, -0.001002,
		39.889107, 34.550148, 48.930740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563225, 35.048904, 49.336216>,  <40.567829, 34.378868, 48.931442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563225, 35.048904, 49.336216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.193081, 34.899887, 49.364258>,  <39.970993, 34.810474, 49.381081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.193081, 34.899887, 49.364258>,  <40.563225, 35.048904, 49.336216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193081, 34.899887, 49.364258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016993, 0.225501, 0.974095,
		-0.378703, 0.900199, -0.215000,
		-0.925362, -0.372546, 0.070100,
		39.915474, 34.788124, 49.385288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263023, 35.514645, 49.732964>,  <40.563225, 35.048904, 49.336216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263023, 35.514645, 49.732964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.065823, 35.166950, 49.747776>,  <39.947502, 34.958332, 49.756664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.065823, 35.166950, 49.747776>,  <40.263023, 35.514645, 49.732964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065823, 35.166950, 49.747776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109974, 0.104484, 0.988427,
		-0.863048, 0.483227, -0.147105,
		-0.493005, -0.869238, 0.037032,
		39.917923, 34.906178, 49.758884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642578, 35.670544, 50.163746>,  <40.263023, 35.514645, 49.732964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642578, 35.670544, 50.163746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741852, 35.290161, 50.237598>,  <39.801414, 35.061932, 50.281910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741852, 35.290161, 50.237598>,  <39.642578, 35.670544, 50.163746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741852, 35.290161, 50.237598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224176, 0.129036, 0.965968,
		-0.942417, -0.281128, -0.181157,
		0.248185, -0.950956, 0.184628,
		39.816307, 35.004875, 50.292988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765167, 36.432419, 50.149147>,  <39.642578, 35.670544, 50.163746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765167, 36.432419, 50.149147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.523754, 36.744595, 50.214474>,  <39.378906, 36.931900, 50.253670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.523754, 36.744595, 50.214474>,  <39.765167, 36.432419, 50.149147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523754, 36.744595, 50.214474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177900, 0.067863, -0.981706,
		-0.777241, -0.621543, 0.097882,
		-0.603530, 0.780435, 0.163318,
		39.342693, 36.978725, 50.263470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285870, 36.348118, 49.718998>,  <39.765167, 36.432419, 50.149147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285870, 36.348118, 49.718998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257603, 36.743065, 49.775734>,  <39.240643, 36.980034, 49.809776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257603, 36.743065, 49.775734>,  <39.285870, 36.348118, 49.718998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257603, 36.743065, 49.775734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276715, 0.117214, -0.953776,
		-0.958350, -0.106650, 0.264935,
		-0.070666, 0.987364, 0.141844,
		39.236404, 37.039272, 49.818287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569302, 36.534252, 49.508392>,  <39.285870, 36.348118, 49.718998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569302, 36.534252, 49.508392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814133, 36.850399, 49.518814>,  <38.961033, 37.040089, 49.525066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814133, 36.850399, 49.518814>,  <38.569302, 36.534252, 49.508392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814133, 36.850399, 49.518814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288745, 0.254035, -0.923089,
		-0.736197, 0.557481, 0.383704,
		0.612078, 0.790368, 0.026050,
		38.997757, 37.087509, 49.526630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203419, 36.999424, 49.252522>,  <38.569302, 36.534252, 49.508392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203419, 36.999424, 49.252522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568584, 37.153690, 49.199093>,  <38.787685, 37.246250, 49.167034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568584, 37.153690, 49.199093>,  <38.203419, 36.999424, 49.252522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568584, 37.153690, 49.199093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229769, 0.215159, -0.949164,
		-0.337322, 0.897200, 0.285037,
		0.912919, 0.385666, -0.133571,
		38.842461, 37.269390, 49.159023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175678, 37.645351, 48.887165>,  <38.203419, 36.999424, 49.252522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175678, 37.645351, 48.887165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534676, 37.473351, 48.847958>,  <38.750072, 37.370152, 48.824432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534676, 37.473351, 48.847958>,  <38.175678, 37.645351, 48.887165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534676, 37.473351, 48.847958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116781, -0.017390, -0.993005,
		0.425289, 0.902661, -0.065823,
		0.897492, -0.430001, -0.098018,
		38.803925, 37.344349, 48.818554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571079, 38.127598, 48.505394>,  <38.175678, 37.645351, 48.887165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571079, 38.127598, 48.505394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.723526, 37.759762, 48.467239>,  <38.814995, 37.539059, 48.444347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.723526, 37.759762, 48.467239>,  <38.571079, 38.127598, 48.505394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723526, 37.759762, 48.467239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025210, 0.092801, -0.995366,
		0.924181, 0.381759, 0.012186,
		0.381121, -0.919591, -0.095389,
		38.837864, 37.483883, 48.438622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013840, 38.201946, 47.903824>,  <38.571079, 38.127598, 48.505394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013840, 38.201946, 47.903824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.928154, 37.813141, 47.942390>,  <38.876743, 37.579857, 47.965530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.928154, 37.813141, 47.942390>,  <39.013840, 38.201946, 47.903824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928154, 37.813141, 47.942390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265849, -0.036967, -0.963306,
		0.939914, -0.231984, -0.250491,
		-0.214212, -0.972017, 0.096418,
		38.863892, 37.521534, 47.971317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373810, 37.904747, 47.290745>,  <39.013840, 38.201946, 47.903824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373810, 37.904747, 47.290745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.083401, 37.661129, 47.418472>,  <38.909157, 37.514957, 47.495110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.083401, 37.661129, 47.418472>,  <39.373810, 37.904747, 47.290745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083401, 37.661129, 47.418472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438368, 0.052124, -0.897283,
		0.529840, -0.791423, -0.304828,
		-0.726019, -0.609043, 0.319317,
		38.865597, 37.478416, 47.514267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152149, 37.421162, 46.693787>,  <39.373810, 37.904747, 47.290745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152149, 37.421162, 46.693787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.868172, 37.361832, 46.969173>,  <38.697784, 37.326233, 47.134403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.868172, 37.361832, 46.969173>,  <39.152149, 37.421162, 46.693787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868172, 37.361832, 46.969173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671111, -0.153901, -0.725207,
		0.213522, -0.976890, 0.009718,
		-0.709943, -0.148326, 0.688463,
		38.655190, 37.317333, 47.175713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817822, 36.891167, 46.458946>,  <39.152149, 37.421162, 46.693787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817822, 36.891167, 46.458946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571579, 37.083080, 46.709015>,  <38.423836, 37.198231, 46.859055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571579, 37.083080, 46.709015>,  <38.817822, 36.891167, 46.458946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571579, 37.083080, 46.709015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692522, 0.049241, -0.719714,
		-0.376094, -0.876002, 0.301951,
		-0.615602, 0.479788, 0.625170,
		38.386898, 37.227016, 46.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217312, 36.486851, 46.399776>,  <38.817822, 36.891167, 46.458946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217312, 36.486851, 46.399776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082634, 36.834850, 46.543854>,  <38.001827, 37.043652, 46.630299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082634, 36.834850, 46.543854>,  <38.217312, 36.486851, 46.399776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082634, 36.834850, 46.543854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705076, 0.020595, -0.708832,
		-0.624102, -0.492622, 0.606482,
		-0.336696, 0.870000, 0.360189,
		37.981625, 37.095852, 46.651909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534084, 36.425648, 46.338470>,  <38.217312, 36.486851, 46.399776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534084, 36.425648, 46.338470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591671, 36.819515, 46.377850>,  <37.626225, 37.055836, 46.401478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591671, 36.819515, 46.377850>,  <37.534084, 36.425648, 46.338470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591671, 36.819515, 46.377850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660898, 0.169717, -0.731034,
		-0.736537, 0.040184, 0.675203,
		0.143969, 0.984674, 0.098446,
		37.634861, 37.114918, 46.407383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837383, 36.609169, 46.271713>,  <37.534084, 36.425648, 46.338470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837383, 36.609169, 46.271713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035587, 36.950905, 46.209019>,  <37.154510, 37.155949, 46.171402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035587, 36.950905, 46.209019>,  <36.837383, 36.609169, 46.271713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035587, 36.950905, 46.209019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711113, 0.295389, -0.638015,
		-0.498785, 0.427600, 0.753904,
		0.495510, 0.854344, -0.156736,
		37.184242, 37.207207, 46.161999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406261, 37.272343, 46.299839>,  <36.837383, 36.609169, 46.271713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406261, 37.272343, 46.299839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721809, 37.313389, 46.057465>,  <36.911137, 37.338017, 45.912041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721809, 37.313389, 46.057465>,  <36.406261, 37.272343, 46.299839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721809, 37.313389, 46.057465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614364, 0.156601, -0.773325,
		0.015534, 0.982316, 0.186581,
		0.788869, 0.102616, -0.605933,
		36.958469, 37.344173, 45.875683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058792, 37.757698, 45.814026>,  <36.406261, 37.272343, 46.299839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058792, 37.757698, 45.814026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404732, 37.657612, 45.639935>,  <36.612297, 37.597561, 45.535480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404732, 37.657612, 45.639935>,  <36.058792, 37.757698, 45.814026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404732, 37.657612, 45.639935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464538, -0.070132, -0.882772,
		0.190363, 0.965646, -0.176889,
		0.864851, -0.250219, -0.435228,
		36.664188, 37.582546, 45.509365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400574, 38.127319, 45.754444>,  <36.058792, 37.757698, 45.814026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400574, 38.127319, 45.754444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.045292, 37.944046, 45.768063>,  <34.832123, 37.834080, 45.776234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.045292, 37.944046, 45.768063>,  <35.400574, 38.127319, 45.754444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045292, 37.944046, 45.768063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059920, -0.042045, 0.997317,
		-0.455525, 0.887861, 0.064799,
		-0.888204, -0.458186, 0.034048,
		34.778831, 37.806591, 45.778278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028046, 38.505451, 46.352989>,  <35.400574, 38.127319, 45.754444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028046, 38.505451, 46.352989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820301, 38.169682, 46.288963>,  <34.695652, 37.968220, 46.250549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820301, 38.169682, 46.288963>,  <35.028046, 38.505451, 46.352989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820301, 38.169682, 46.288963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028048, -0.203949, 0.978580,
		-0.854092, 0.503751, 0.129468,
		-0.519366, -0.839428, -0.160062,
		34.664490, 37.917854, 46.240944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726776, 38.476147, 47.063080>,  <35.028046, 38.505451, 46.352989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726776, 38.476147, 47.063080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687092, 38.122608, 46.880226>,  <34.663280, 37.910484, 46.770515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687092, 38.122608, 46.880226>,  <34.726776, 38.476147, 47.063080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687092, 38.122608, 46.880226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128839, -0.466938, 0.874854,
		-0.986690, 0.027898, 0.160199,
		-0.099210, -0.883850, -0.457129,
		34.657330, 37.857452, 46.743088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199986, 38.121456, 47.443287>,  <34.726776, 38.476147, 47.063080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199986, 38.121456, 47.443287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448734, 37.867577, 47.259792>,  <34.597984, 37.715248, 47.149696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448734, 37.867577, 47.259792>,  <34.199986, 38.121456, 47.443287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448734, 37.867577, 47.259792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273360, -0.373004, 0.886647,
		-0.733862, -0.676778, -0.058459,
		0.621869, -0.634696, -0.458737,
		34.635296, 37.677166, 47.122169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082417, 37.504486, 47.759075>,  <34.199986, 38.121456, 47.443287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082417, 37.504486, 47.759075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441586, 37.451988, 47.591026>,  <34.657089, 37.420490, 47.490196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441586, 37.451988, 47.591026>,  <34.082417, 37.504486, 47.759075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441586, 37.451988, 47.591026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320294, -0.459855, 0.828218,
		-0.301894, -0.878242, -0.370880,
		0.897927, -0.131244, -0.420123,
		34.710964, 37.412617, 47.464989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242306, 36.785477, 47.839897>,  <34.082417, 37.504486, 47.759075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242306, 36.785477, 47.839897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580658, 36.992302, 47.787556>,  <34.783669, 37.116398, 47.756149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580658, 36.992302, 47.787556>,  <34.242306, 36.785477, 47.839897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580658, 36.992302, 47.787556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445386, -0.549786, 0.706658,
		0.293445, -0.656033, -0.695349,
		0.845885, 0.517065, -0.130855,
		34.834423, 37.147423, 47.748299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841019, 36.258297, 47.852657>,  <34.242306, 36.785477, 47.839897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841019, 36.258297, 47.852657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973377, 36.619408, 47.962570>,  <35.052792, 36.836075, 48.028519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973377, 36.619408, 47.962570>,  <34.841019, 36.258297, 47.852657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973377, 36.619408, 47.962570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465028, -0.409373, 0.784960,
		0.821130, -0.131962, -0.555277,
		0.330900, 0.902773, 0.274783,
		35.072647, 36.890240, 48.045006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122627, 35.456474, 47.919819>,  <34.841019, 36.258297, 47.852657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122627, 35.456474, 47.919819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863571, 35.151718, 47.923496>,  <34.708138, 34.968864, 47.925701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863571, 35.151718, 47.923496>,  <35.122627, 35.456474, 47.919819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863571, 35.151718, 47.923496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050340, 0.030747, -0.998259,
		0.760279, -0.646978, -0.058266,
		-0.647643, -0.761889, 0.009193,
		34.669277, 34.923153, 47.926254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183563, 35.049362, 47.343781>,  <35.122627, 35.456474, 47.919819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183563, 35.049362, 47.343781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806976, 34.949039, 47.433884>,  <34.581024, 34.888844, 47.487946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806976, 34.949039, 47.433884>,  <35.183563, 35.049362, 47.343781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806976, 34.949039, 47.433884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255541, 0.095129, -0.962107,
		0.219878, -0.963351, -0.153652,
		-0.941463, -0.250810, 0.225259,
		34.524536, 34.873798, 47.501461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924583, 34.426941, 46.895054>,  <35.183563, 35.049362, 47.343781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924583, 34.426941, 46.895054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594433, 34.601086, 47.038837>,  <34.396343, 34.705570, 47.125107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594433, 34.601086, 47.038837>,  <34.924583, 34.426941, 46.895054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594433, 34.601086, 47.038837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482247, -0.212591, -0.849849,
		-0.293577, -0.874793, 0.385421,
		-0.825379, 0.435364, 0.359455,
		34.346817, 34.731693, 47.146675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380592, 34.037418, 46.560108>,  <34.924583, 34.426941, 46.895054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380592, 34.037418, 46.560108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229008, 34.387070, 46.681618>,  <34.138058, 34.596863, 46.754524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229008, 34.387070, 46.681618>,  <34.380592, 34.037418, 46.560108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229008, 34.387070, 46.681618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493663, 0.086699, -0.865321,
		-0.782742, -0.477887, 0.398671,
		-0.378961, 0.874132, 0.303778,
		34.115318, 34.649311, 46.772751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709671, 33.981148, 46.378387>,  <34.380592, 34.037418, 46.560108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709671, 33.981148, 46.378387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715435, 34.378021, 46.427979>,  <33.718895, 34.616146, 46.457733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715435, 34.378021, 46.427979>,  <33.709671, 33.981148, 46.378387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715435, 34.378021, 46.427979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493395, 0.114904, -0.862182,
		-0.869686, -0.048746, 0.491193,
		0.014412, 0.992180, 0.123982,
		33.719757, 34.675674, 46.465172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980881, 34.240105, 46.288715>,  <33.709671, 33.981148, 46.378387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980881, 34.240105, 46.288715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224537, 34.554440, 46.245998>,  <33.370731, 34.743042, 46.220367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224537, 34.554440, 46.245998>,  <32.980881, 34.240105, 46.288715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224537, 34.554440, 46.245998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501560, 0.277420, -0.819436,
		-0.614321, 0.552712, 0.563134,
		0.609137, 0.785842, -0.106793,
		33.407276, 34.790192, 46.213959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477859, 34.710461, 46.115086>,  <32.980881, 34.240105, 46.288715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477859, 34.710461, 46.115086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837414, 34.837254, 45.994076>,  <33.053146, 34.913330, 45.921471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837414, 34.837254, 45.994076>,  <32.477859, 34.710461, 46.115086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837414, 34.837254, 45.994076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341508, 0.074243, -0.936942,
		-0.274537, 0.945520, 0.174990,
		0.898889, 0.316986, -0.302520,
		33.107082, 34.932350, 45.903320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.884480, 31.794300, 49.869709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.094292, 32.117680, 49.762917>,  <38.220181, 32.311707, 49.698841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.094292, 32.117680, 49.762917>,  <37.884480, 31.794300, 49.869709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094292, 32.117680, 49.762917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232872, -0.437856, -0.868362,
		-0.818925, 0.393311, -0.417934,
		0.524531, 0.808448, -0.266980,
		38.251652, 32.360214, 49.682823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556099, 32.108040, 49.270561>,  <37.884480, 31.794300, 49.869709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556099, 32.108040, 49.270561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.944523, 32.203571, 49.270073>,  <38.177578, 32.260891, 49.269779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.944523, 32.203571, 49.270073>,  <37.556099, 32.108040, 49.270561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944523, 32.203571, 49.270073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060951, -0.252764, -0.965606,
		-0.230920, 0.937589, -0.260006,
		0.971062, 0.238825, -0.001221,
		38.235840, 32.275219, 49.269707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741997, 32.718437, 48.756821>,  <37.556099, 32.108040, 49.270561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741997, 32.718437, 48.756821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.081467, 32.513847, 48.810699>,  <38.285149, 32.391094, 48.843029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.081467, 32.513847, 48.810699>,  <37.741997, 32.718437, 48.756821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081467, 32.513847, 48.810699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103953, -0.088406, -0.990645,
		0.518601, 0.854737, -0.021858,
		0.848674, -0.511477, 0.134700,
		38.336067, 32.360405, 48.851109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091496, 33.059086, 48.314163>,  <37.741997, 32.718437, 48.756821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091496, 33.059086, 48.314163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.272469, 32.712074, 48.396809>,  <38.381054, 32.503868, 48.446396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.272469, 32.712074, 48.396809>,  <38.091496, 33.059086, 48.314163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272469, 32.712074, 48.396809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209845, -0.121608, -0.970142,
		0.866756, 0.482284, 0.127028,
		0.452437, -0.867533, 0.206609,
		38.408199, 32.451813, 48.458790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677040, 33.059837, 47.867397>,  <38.091496, 33.059086, 48.314163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677040, 33.059837, 47.867397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.643387, 32.674061, 47.967621>,  <38.623196, 32.442596, 48.027756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.643387, 32.674061, 47.967621>,  <38.677040, 33.059837, 47.867397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643387, 32.674061, 47.967621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319464, -0.264282, -0.909999,
		0.943856, 0.003487, 0.330337,
		-0.084129, -0.964439, 0.250558,
		38.618149, 32.384727, 48.042789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181675, 32.813999, 47.543819>,  <38.677040, 33.059837, 47.867397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181675, 32.813999, 47.543819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.951401, 32.491734, 47.599667>,  <38.813236, 32.298374, 47.633175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.951401, 32.491734, 47.599667>,  <39.181675, 32.813999, 47.543819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951401, 32.491734, 47.599667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085714, -0.229276, -0.969580,
		0.813166, -0.546206, 0.201047,
		-0.575686, -0.805662, 0.139622,
		38.778694, 32.250034, 47.641552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592808, 32.242496, 47.279259>,  <39.181675, 32.813999, 47.543819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592808, 32.242496, 47.279259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.213017, 32.117004, 47.276173>,  <38.985142, 32.041710, 47.274323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.213017, 32.117004, 47.276173>,  <39.592808, 32.242496, 47.279259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213017, 32.117004, 47.276173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158233, -0.457367, -0.875088,
		0.271013, -0.832100, 0.483903,
		-0.949481, -0.313729, -0.007713,
		38.928173, 32.022884, 47.273857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633595, 31.637754, 46.983475>,  <39.592808, 32.242496, 47.279259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633595, 31.637754, 46.983475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.252125, 31.746334, 46.931606>,  <39.023243, 31.811481, 46.900486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.252125, 31.746334, 46.931606>,  <39.633595, 31.637754, 46.983475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252125, 31.746334, 46.931606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064587, -0.236223, -0.969550,
		-0.293817, -0.933013, 0.207748,
		-0.953677, 0.271452, -0.129667,
		38.966022, 31.827768, 46.892708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309326, 31.081964, 46.638691>,  <39.633595, 31.637754, 46.983475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309326, 31.081964, 46.638691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.065838, 31.392776, 46.574585>,  <38.919746, 31.579264, 46.536121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.065838, 31.392776, 46.574585>,  <39.309326, 31.081964, 46.638691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065838, 31.392776, 46.574585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075827, -0.258055, -0.963150,
		-0.789753, -0.574137, 0.216003,
		-0.608721, 0.777029, -0.160264,
		38.883221, 31.625885, 46.526505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729458, 30.863811, 46.294048>,  <39.309326, 31.081964, 46.638691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729458, 30.863811, 46.294048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.753956, 31.249962, 46.192619>,  <38.768654, 31.481651, 46.131763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.753956, 31.249962, 46.192619>,  <38.729458, 30.863811, 46.294048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753956, 31.249962, 46.192619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199880, -0.237037, -0.950716,
		-0.977905, 0.108909, 0.178442,
		0.061245, 0.965377, -0.253569,
		38.772327, 31.539576, 46.116550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113544, 31.032194, 45.880436>,  <38.729458, 30.863811, 46.294048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113544, 31.032194, 45.880436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.360413, 31.331451, 45.782955>,  <38.508533, 31.511005, 45.724468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.360413, 31.331451, 45.782955>,  <38.113544, 31.032194, 45.880436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360413, 31.331451, 45.782955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154718, -0.188284, -0.969851,
		-0.771471, 0.636264, -0.000452,
		0.617167, 0.748142, -0.243697,
		38.545563, 31.555895, 45.709846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787117, 31.339098, 45.318893>,  <38.113544, 31.032194, 45.880436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787117, 31.339098, 45.318893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171165, 31.444868, 45.282574>,  <38.401596, 31.508329, 45.260780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171165, 31.444868, 45.282574>,  <37.787117, 31.339098, 45.318893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171165, 31.444868, 45.282574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097528, 0.012388, -0.995156,
		-0.262020, 0.964327, 0.037682,
		0.960122, 0.264426, -0.090803,
		38.459202, 31.524197, 45.255333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397591, 31.924232, 45.344387>,  <37.787117, 31.339098, 45.318893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397591, 31.924232, 45.344387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.003513, 31.987003, 45.372009>,  <36.767067, 32.024666, 45.388580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.003513, 31.987003, 45.372009>,  <37.397591, 31.924232, 45.344387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003513, 31.987003, 45.372009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085606, 0.101283, 0.991168,
		0.148549, 0.982403, -0.113218,
		-0.985193, 0.156929, 0.069054,
		36.707954, 32.034081, 45.392727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246632, 32.563732, 45.764797>,  <37.397591, 31.924232, 45.344387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246632, 32.563732, 45.764797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.908394, 32.350647, 45.778591>,  <36.705452, 32.222797, 45.786865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.908394, 32.350647, 45.778591>,  <37.246632, 32.563732, 45.764797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908394, 32.350647, 45.778591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040223, 0.127992, 0.990959,
		-0.532310, 0.836562, -0.129656,
		-0.845593, -0.532713, 0.034482,
		36.654716, 32.190834, 45.788937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840878, 32.966492, 46.282566>,  <37.246632, 32.563732, 45.764797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840878, 32.966492, 46.282566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.691654, 32.595818, 46.264332>,  <36.602119, 32.373413, 46.253391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.691654, 32.595818, 46.264332>,  <36.840878, 32.966492, 46.282566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691654, 32.595818, 46.264332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095306, -0.010601, 0.995392,
		-0.922901, 0.375682, -0.084365,
		-0.373056, -0.926688, -0.045588,
		36.579739, 32.317810, 46.250656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184155, 33.047508, 46.673279>,  <36.840878, 32.966492, 46.282566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184155, 33.047508, 46.673279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.263996, 32.657875, 46.630722>,  <36.311901, 32.424095, 46.605190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.263996, 32.657875, 46.630722>,  <36.184155, 33.047508, 46.673279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263996, 32.657875, 46.630722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241655, -0.154156, 0.958039,
		-0.949611, -0.165516, -0.266162,
		0.199601, -0.974084, -0.106390,
		36.323875, 32.365650, 46.598804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639542, 32.716568, 46.956215>,  <36.184155, 33.047508, 46.673279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639542, 32.716568, 46.956215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916492, 32.428143, 46.966637>,  <36.082664, 32.255085, 46.972889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916492, 32.428143, 46.966637>,  <35.639542, 32.716568, 46.956215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916492, 32.428143, 46.966637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377063, -0.330805, 0.865096,
		-0.615173, -0.608795, -0.500929,
		0.692376, -0.721066, 0.026052,
		36.124207, 32.211823, 46.974453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333965, 32.085583, 46.957249>,  <35.639542, 32.716568, 46.956215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333965, 32.085583, 46.957249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680927, 32.036232, 47.150074>,  <35.889103, 32.006622, 47.265770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680927, 32.036232, 47.150074>,  <35.333965, 32.085583, 46.957249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680927, 32.036232, 47.150074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497335, -0.182980, 0.848043,
		-0.016423, -0.975344, -0.220079,
		0.867403, -0.123380, 0.482067,
		35.941147, 31.999218, 47.294693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182316, 31.693012, 47.490955>,  <35.333965, 32.085583, 46.957249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182316, 31.693012, 47.490955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.543159, 31.798153, 47.627834>,  <35.759666, 31.861238, 47.709961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.543159, 31.798153, 47.627834>,  <35.182316, 31.693012, 47.490955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543159, 31.798153, 47.627834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293961, -0.206174, 0.933316,
		0.315879, -0.942550, -0.108723,
		0.902113, 0.262854, 0.342199,
		35.813793, 31.877008, 47.730495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414204, 31.094175, 47.894367>,  <35.182316, 31.693012, 47.490955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414204, 31.094175, 47.894367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.625530, 31.409363, 48.020851>,  <35.752327, 31.598475, 48.096741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.625530, 31.409363, 48.020851>,  <35.414204, 31.094175, 47.894367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625530, 31.409363, 48.020851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226772, -0.227940, 0.946899,
		0.818202, -0.571971, 0.058264,
		0.528318, 0.787967, 0.316208,
		35.784027, 31.645752, 48.115715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779911, 30.844408, 48.513535>,  <35.414204, 31.094175, 47.894367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779911, 30.844408, 48.513535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.745930, 31.242361, 48.535400>,  <35.725540, 31.481133, 48.548519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.745930, 31.242361, 48.535400>,  <35.779911, 30.844408, 48.513535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745930, 31.242361, 48.535400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127676, -0.065282, 0.989665,
		0.988171, 0.077096, 0.132569,
		-0.084953, 0.994884, 0.054667,
		35.720444, 31.540827, 48.551800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048294, 31.025515, 49.183853>,  <35.779911, 30.844408, 48.513535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048294, 31.025515, 49.183853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.889698, 31.378500, 49.082623>,  <35.794540, 31.590292, 49.021885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.889698, 31.378500, 49.082623>,  <36.048294, 31.025515, 49.183853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889698, 31.378500, 49.082623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176862, 0.197084, 0.964302,
		0.900841, 0.427098, 0.077932,
		-0.396493, 0.882465, -0.253079,
		35.770752, 31.643240, 49.006699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346607, 31.514734, 49.598705>,  <36.048294, 31.025515, 49.183853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346607, 31.514734, 49.598705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031731, 31.740410, 49.499084>,  <35.842804, 31.875814, 49.439312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031731, 31.740410, 49.499084>,  <36.346607, 31.514734, 49.598705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031731, 31.740410, 49.499084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056055, 0.336717, 0.939936,
		0.614161, 0.753867, -0.233433,
		-0.787188, 0.564187, -0.249056,
		35.795574, 31.909666, 49.424366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424515, 32.153667, 49.835793>,  <36.346607, 31.514734, 49.598705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424515, 32.153667, 49.835793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025280, 32.140511, 49.814819>,  <35.785740, 32.132618, 49.802235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025280, 32.140511, 49.814819>,  <36.424515, 32.153667, 49.835793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025280, 32.140511, 49.814819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061636, 0.450731, 0.890530,
		-0.005653, 0.892054, -0.451894,
		-0.998083, -0.032888, -0.052435,
		35.725857, 32.130646, 49.799088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208626, 32.859486, 50.030781>,  <36.424515, 32.153667, 49.835793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208626, 32.859486, 50.030781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.908951, 32.599506, 50.081833>,  <35.729145, 32.443520, 50.112465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.908951, 32.599506, 50.081833>,  <36.208626, 32.859486, 50.030781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908951, 32.599506, 50.081833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263792, 0.469532, 0.842588,
		-0.607566, 0.597584, -0.523217,
		-0.749184, -0.649949, 0.127633,
		35.684196, 32.404522, 50.120121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582718, 33.178535, 50.116055>,  <36.208626, 32.859486, 50.030781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582718, 33.178535, 50.116055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.574726, 32.839436, 50.328064>,  <35.569931, 32.635975, 50.455269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.574726, 32.839436, 50.328064>,  <35.582718, 33.178535, 50.116055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574726, 32.839436, 50.328064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383385, 0.496103, 0.779037,
		-0.923373, -0.187643, -0.334922,
		-0.019975, -0.847745, 0.530027,
		35.568733, 32.585114, 50.487072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851742, 33.827728, 50.457462>,  <35.582718, 33.178535, 50.116055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851742, 33.827728, 50.457462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603577, 34.138432, 50.500809>,  <35.454678, 34.324852, 50.526817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603577, 34.138432, 50.500809>,  <35.851742, 33.827728, 50.457462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603577, 34.138432, 50.500809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424238, -0.216165, -0.879372,
		-0.659633, -0.591542, 0.463641,
		-0.620408, 0.776756, 0.108365,
		35.417454, 34.371460, 50.533318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128460, 33.641346, 50.396885>,  <35.851742, 33.827728, 50.457462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128460, 33.641346, 50.396885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.090805, 34.034176, 50.331562>,  <35.068214, 34.269875, 50.292370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.090805, 34.034176, 50.331562>,  <35.128460, 33.641346, 50.396885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090805, 34.034176, 50.331562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482407, -0.188486, -0.855427,
		-0.870874, -0.001744, 0.491503,
		-0.094133, 0.982074, -0.163306,
		35.062565, 34.328796, 50.282570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410122, 33.760067, 50.055355>,  <35.128460, 33.641346, 50.396885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410122, 33.760067, 50.055355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.630241, 34.087479, 49.989414>,  <34.762314, 34.283928, 49.949852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.630241, 34.087479, 49.989414>,  <34.410122, 33.760067, 50.055355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630241, 34.087479, 49.989414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473479, 0.143294, -0.869071,
		-0.687741, 0.556303, 0.466412,
		0.550301, 0.818532, -0.164848,
		34.795330, 34.333038, 49.939960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910820, 34.325302, 49.845703>,  <34.410122, 33.760067, 50.055355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910820, 34.325302, 49.845703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264442, 34.417416, 49.683014>,  <34.476616, 34.472683, 49.585400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264442, 34.417416, 49.683014>,  <33.910820, 34.325302, 49.845703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264442, 34.417416, 49.683014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459265, 0.266486, -0.847385,
		-0.086751, 0.935925, 0.341348,
		0.884053, 0.230281, -0.406719,
		34.529659, 34.486500, 49.560997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763950, 34.944981, 49.351192>,  <33.910820, 34.325302, 49.845703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763950, 34.944981, 49.351192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115376, 34.774319, 49.265316>,  <34.326229, 34.671921, 49.213791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115376, 34.774319, 49.265316>,  <33.763950, 34.944981, 49.351192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115376, 34.774319, 49.265316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201741, 0.075950, -0.976490,
		0.432929, 0.901220, -0.019347,
		0.878563, -0.426654, -0.214694,
		34.378944, 34.646324, 49.200909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036427, 35.417271, 48.838791>,  <33.763950, 34.944981, 49.351192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036427, 35.417271, 48.838791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.269169, 35.097752, 48.777660>,  <34.408813, 34.906040, 48.740982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.269169, 35.097752, 48.777660>,  <34.036427, 35.417271, 48.838791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269169, 35.097752, 48.777660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172484, 0.062436, -0.983032,
		0.794788, 0.598347, -0.101452,
		0.581860, -0.798801, -0.152829,
		34.443726, 34.858112, 48.731812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627724, 35.644093, 48.414310>,  <34.036427, 35.417271, 48.838791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627724, 35.644093, 48.414310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.609005, 35.246464, 48.375053>,  <34.597775, 35.007885, 48.351498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.609005, 35.246464, 48.375053>,  <34.627724, 35.644093, 48.414310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609005, 35.246464, 48.375053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158528, 0.104397, -0.981820,
		0.986245, -0.030392, -0.162474,
		-0.046801, -0.994071, -0.098143,
		34.594963, 34.948242, 48.345612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386856, 36.105145, 48.369114>,  <34.627724, 35.644093, 48.414310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386856, 36.105145, 48.369114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.412762, 36.503181, 48.399059>,  <35.428307, 36.742004, 48.417027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.412762, 36.503181, 48.399059>,  <35.386856, 36.105145, 48.369114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412762, 36.503181, 48.399059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702101, -0.098754, 0.705197,
		0.709126, 0.006889, -0.705048,
		0.064768, 0.995088, 0.074866,
		35.432194, 36.801708, 48.421520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104351, 36.324493, 48.392082>,  <35.386856, 36.105145, 48.369114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104351, 36.324493, 48.392082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.893616, 36.631424, 48.538315>,  <35.767174, 36.815582, 48.626053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.893616, 36.631424, 48.538315>,  <36.104351, 36.324493, 48.392082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893616, 36.631424, 48.538315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626782, 0.060216, 0.776865,
		0.574096, 0.638421, -0.512671,
		-0.526838, 0.767328, 0.365581,
		35.735565, 36.861622, 48.647987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547775, 36.818794, 48.609364>,  <36.104351, 36.324493, 48.392082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547775, 36.818794, 48.609364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.220425, 36.906315, 48.821922>,  <36.024014, 36.958828, 48.949455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.220425, 36.906315, 48.821922>,  <36.547775, 36.818794, 48.609364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220425, 36.906315, 48.821922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555240, 0.062601, 0.829331,
		0.148194, 0.973759, -0.172720,
		-0.818380, 0.218803, 0.531393,
		35.974911, 36.971954, 48.981339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734943, 37.330761, 49.033951>,  <36.547775, 36.818794, 48.609364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734943, 37.330761, 49.033951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.405556, 37.197216, 49.217445>,  <36.207924, 37.117088, 49.327541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.405556, 37.197216, 49.217445>,  <36.734943, 37.330761, 49.033951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405556, 37.197216, 49.217445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396824, 0.238956, 0.886245,
		-0.405499, 0.911832, -0.064290,
		-0.823469, -0.333860, 0.458733,
		36.158516, 37.097057, 49.355064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539581, 37.913021, 49.527676>,  <36.734943, 37.330761, 49.033951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539581, 37.913021, 49.527676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.363251, 37.575966, 49.651371>,  <36.257450, 37.373734, 49.725590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.363251, 37.575966, 49.651371>,  <36.539581, 37.913021, 49.527676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363251, 37.575966, 49.651371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404521, 0.121042, 0.906483,
		-0.801269, 0.524698, 0.287506,
		-0.440830, -0.842639, 0.309239,
		36.231003, 37.323174, 49.744144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111095, 38.127209, 50.224152>,  <36.539581, 37.913021, 49.527676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111095, 38.127209, 50.224152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.188141, 37.735065, 50.241093>,  <36.234367, 37.499779, 50.251255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.188141, 37.735065, 50.241093>,  <36.111095, 38.127209, 50.224152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188141, 37.735065, 50.241093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372429, 0.112962, 0.921160,
		-0.907853, -0.161655, 0.386873,
		0.192613, -0.980361, 0.042348,
		36.245926, 37.440956, 50.253796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106518, 37.931664, 50.957535>,  <36.111095, 38.127209, 50.224152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106518, 37.931664, 50.957535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.284809, 37.603127, 50.815144>,  <36.391785, 37.406002, 50.729710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.284809, 37.603127, 50.815144>,  <36.106518, 37.931664, 50.957535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284809, 37.603127, 50.815144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507904, -0.095413, 0.856113,
		-0.737128, -0.562397, 0.374636,
		0.445730, -0.821344, -0.355975,
		36.418530, 37.356724, 50.708351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164825, 37.588566, 51.500565>,  <36.106518, 37.931664, 50.957535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164825, 37.588566, 51.500565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.434509, 37.418835, 51.258774>,  <36.596317, 37.316994, 51.113701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.434509, 37.418835, 51.258774>,  <36.164825, 37.588566, 51.500565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434509, 37.418835, 51.258774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672121, 0.013293, 0.740322,
		-0.306107, -0.905409, 0.294164,
		0.674205, -0.424332, -0.604476,
		36.636772, 37.291534, 51.077431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411224, 36.986565, 51.818188>,  <36.164825, 37.588566, 51.500565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411224, 36.986565, 51.818188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.693142, 37.112957, 51.564129>,  <36.862293, 37.188793, 51.411694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.693142, 37.112957, 51.564129>,  <36.411224, 36.986565, 51.818188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693142, 37.112957, 51.564129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698092, -0.149635, 0.700197,
		0.126208, -0.936891, -0.326047,
		0.704797, 0.315982, -0.635151,
		36.904579, 37.207752, 51.373585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.737652, 36.658260, 35.486965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072590, 36.871403, 35.535828>,  <35.273552, 36.999287, 35.565144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072590, 36.871403, 35.535828>,  <34.737652, 36.658260, 35.486965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072590, 36.871403, 35.535828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206724, 0.101780, 0.973091,
		0.506083, -0.840064, 0.195379,
		0.837344, 0.532855, 0.122153,
		35.323792, 37.031258, 35.572472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987740, 36.443745, 36.154858>,  <34.737652, 36.658260, 35.486965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987740, 36.443745, 36.154858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200138, 36.774696, 36.081661>,  <35.327579, 36.973267, 36.037743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200138, 36.774696, 36.081661>,  <34.987740, 36.443745, 36.154858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200138, 36.774696, 36.081661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056379, 0.249963, 0.966613,
		0.845495, -0.502953, 0.179377,
		0.530998, 0.827380, -0.182986,
		35.359436, 37.022911, 36.026764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584404, 36.454308, 36.565914>,  <34.987740, 36.443745, 36.154858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584404, 36.454308, 36.565914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536831, 36.839500, 36.469147>,  <35.508286, 37.070618, 36.411087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536831, 36.839500, 36.469147>,  <35.584404, 36.454308, 36.565914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536831, 36.839500, 36.469147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055881, 0.236767, 0.969958,
		0.991329, 0.128878, 0.025653,
		-0.118932, 0.962981, -0.241916,
		35.501152, 37.128395, 36.396572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955891, 36.829346, 37.066486>,  <35.584404, 36.454308, 36.565914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955891, 36.829346, 37.066486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697777, 37.096085, 36.917397>,  <35.542908, 37.256130, 36.827942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697777, 37.096085, 36.917397>,  <35.955891, 36.829346, 37.066486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697777, 37.096085, 36.917397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260038, 0.267032, 0.927941,
		0.718327, 0.695705, 0.001096,
		-0.645280, 0.666850, -0.372727,
		35.504192, 37.296139, 36.805580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173790, 37.394032, 37.356541>,  <35.955891, 36.829346, 37.066486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173790, 37.394032, 37.356541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800762, 37.493176, 37.251560>,  <35.576946, 37.552662, 37.188572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800762, 37.493176, 37.251560>,  <36.173790, 37.394032, 37.356541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800762, 37.493176, 37.251560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126320, 0.457016, 0.880443,
		0.338171, 0.854226, -0.394889,
		-0.932568, 0.247858, -0.262455,
		35.520992, 37.567532, 37.172825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086956, 38.033485, 37.601357>,  <36.173790, 37.394032, 37.356541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086956, 38.033485, 37.601357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710255, 37.908783, 37.550922>,  <35.484234, 37.833961, 37.520660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710255, 37.908783, 37.550922>,  <36.086956, 38.033485, 37.601357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710255, 37.908783, 37.550922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269339, 0.474738, 0.837902,
		-0.201367, 0.823061, -0.531058,
		-0.941758, -0.311760, -0.126086,
		35.427727, 37.815254, 37.513096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681438, 38.631351, 37.852776>,  <36.086956, 38.033485, 37.601357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681438, 38.631351, 37.852776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419117, 38.333260, 37.804504>,  <35.261726, 38.154404, 37.775543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419117, 38.333260, 37.804504>,  <35.681438, 38.631351, 37.852776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419117, 38.333260, 37.804504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368145, 0.176135, 0.912932,
		-0.659086, 0.643129, -0.389861,
		-0.655801, -0.745226, -0.120676,
		35.222378, 38.109692, 37.768303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983677, 38.898521, 38.044613>,  <35.681438, 38.631351, 37.852776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983677, 38.898521, 38.044613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955528, 38.504124, 38.105103>,  <34.938637, 38.267487, 38.141396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955528, 38.504124, 38.105103>,  <34.983677, 38.898521, 38.044613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955528, 38.504124, 38.105103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359966, 0.166487, 0.917991,
		-0.930308, 0.010166, -0.366640,
		-0.070373, -0.985992, 0.151224,
		34.934418, 38.208324, 38.150471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380707, 38.812233, 38.331398>,  <34.983677, 38.898521, 38.044613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380707, 38.812233, 38.331398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587555, 38.486282, 38.436134>,  <34.711662, 38.290710, 38.498978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587555, 38.486282, 38.436134>,  <34.380707, 38.812233, 38.331398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587555, 38.486282, 38.436134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289663, 0.121253, 0.949417,
		-0.805408, -0.566809, -0.173338,
		0.517120, -0.814877, 0.261842,
		34.742691, 38.241817, 38.514687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889969, 38.342045, 38.721050>,  <34.380707, 38.812233, 38.331398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889969, 38.342045, 38.721050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253582, 38.231396, 38.845718>,  <34.471752, 38.165009, 38.920517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253582, 38.231396, 38.845718>,  <33.889969, 38.342045, 38.721050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253582, 38.231396, 38.845718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369101, -0.187295, 0.910321,
		-0.193467, -0.942542, -0.272368,
		0.909030, -0.276648, 0.311658,
		34.526295, 38.148411, 38.939217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790524, 37.696644, 38.934540>,  <33.889969, 38.342045, 38.721050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790524, 37.696644, 38.934540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124340, 37.811493, 39.122627>,  <34.324631, 37.880402, 39.235481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124340, 37.811493, 39.122627>,  <33.790524, 37.696644, 38.934540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124340, 37.811493, 39.122627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360924, -0.359930, 0.860340,
		0.416272, -0.887699, -0.196744,
		0.834536, 0.287126, 0.470221,
		34.374702, 37.897629, 39.263695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847343, 37.166420, 39.488129>,  <33.790524, 37.696644, 38.934540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847343, 37.166420, 39.488129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094234, 37.460247, 39.600861>,  <34.242371, 37.636543, 39.668499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094234, 37.460247, 39.600861>,  <33.847343, 37.166420, 39.488129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094234, 37.460247, 39.600861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249968, -0.156560, 0.955513,
		0.746017, -0.660222, 0.086985,
		0.617232, 0.734572, 0.281831,
		34.279404, 37.680618, 39.685410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769470, 36.463459, 39.603844>,  <33.847343, 37.166420, 39.488129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769470, 36.463459, 39.603844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450718, 36.238392, 39.691833>,  <33.259468, 36.103352, 39.744629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450718, 36.238392, 39.691833>,  <33.769470, 36.463459, 39.603844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450718, 36.238392, 39.691833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336261, 0.110587, -0.935254,
		0.501910, -0.819253, -0.277327,
		-0.796878, -0.562668, 0.219978,
		33.211655, 36.069592, 39.757828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718235, 35.973354, 39.060699>,  <33.769470, 36.463459, 39.603844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718235, 35.973354, 39.060699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350708, 35.976124, 39.218548>,  <33.130192, 35.977787, 39.313255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350708, 35.976124, 39.218548>,  <33.718235, 35.973354, 39.060699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350708, 35.976124, 39.218548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394679, -0.014351, -0.918707,
		-0.000653, -0.999873, 0.015899,
		-0.918819, 0.006875, 0.394619,
		33.075062, 35.978199, 39.336933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366676, 35.461082, 38.682671>,  <33.718235, 35.973354, 39.060699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366676, 35.461082, 38.682671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067726, 35.671398, 38.845139>,  <32.888355, 35.797588, 38.942619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067726, 35.671398, 38.845139>,  <33.366676, 35.461082, 38.682671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067726, 35.671398, 38.845139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507291, -0.056804, -0.859901,
		-0.429057, -0.848714, 0.309184,
		-0.747373, 0.525792, 0.406172,
		32.843513, 35.829136, 38.966991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826706, 35.107090, 38.398975>,  <33.366676, 35.461082, 38.682671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826706, 35.107090, 38.398975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706818, 35.459755, 38.544765>,  <32.634884, 35.671352, 38.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706818, 35.459755, 38.544765>,  <32.826706, 35.107090, 38.398975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706818, 35.459755, 38.544765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689644, 0.063755, -0.721337,
		-0.659212, -0.467555, 0.588924,
		-0.299718, 0.881662, 0.364474,
		32.616901, 35.724255, 38.654106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078972, 35.131611, 38.471272>,  <32.826706, 35.107090, 38.398975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078972, 35.131611, 38.471272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196835, 35.511959, 38.433273>,  <32.267551, 35.740170, 38.410473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196835, 35.511959, 38.433273>,  <32.078972, 35.131611, 38.471272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196835, 35.511959, 38.433273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679663, 0.138648, -0.720302,
		-0.671742, 0.276807, 0.687125,
		0.294653, 0.950870, -0.095000,
		32.285229, 35.797218, 38.404774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445435, 35.447021, 38.472672>,  <32.078972, 35.131611, 38.471272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445435, 35.447021, 38.472672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694504, 35.713402, 38.308334>,  <31.843945, 35.873230, 38.209732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694504, 35.713402, 38.308334>,  <31.445435, 35.447021, 38.472672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694504, 35.713402, 38.308334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731987, 0.310182, -0.606616,
		-0.276538, 0.678455, 0.680607,
		0.622673, 0.665948, -0.410843,
		31.881306, 35.913185, 38.185081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104033, 36.026890, 38.655571>,  <31.445435, 35.447021, 38.472672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104033, 36.026890, 38.655571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333780, 36.079575, 38.332397>,  <31.471628, 36.111187, 38.138493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333780, 36.079575, 38.332397>,  <31.104033, 36.026890, 38.655571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333780, 36.079575, 38.332397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781320, 0.382651, -0.493069,
		0.244213, 0.914456, 0.322692,
		0.574369, 0.131712, -0.807931,
		31.506090, 36.119087, 38.090019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839319, 36.677460, 38.328236>,  <31.104033, 36.026890, 38.655571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839319, 36.677460, 38.328236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061005, 36.504906, 38.043488>,  <31.194016, 36.401375, 37.872639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061005, 36.504906, 38.043488>,  <30.839319, 36.677460, 38.328236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061005, 36.504906, 38.043488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688486, 0.243065, -0.683306,
		0.467798, 0.868808, -0.162293,
		0.554214, -0.431385, -0.711867,
		31.227268, 36.375488, 37.829929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759401, 37.074181, 37.715553>,  <30.839319, 36.677460, 38.328236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759401, 37.074181, 37.715553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937626, 36.746258, 37.571667>,  <31.044561, 36.549503, 37.485336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937626, 36.746258, 37.571667>,  <30.759401, 37.074181, 37.715553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937626, 36.746258, 37.571667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579005, 0.042570, -0.814212,
		0.682808, 0.571058, -0.455704,
		0.445563, -0.819805, -0.359713,
		31.071295, 36.500317, 37.463753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927963, 37.199570, 36.993843>,  <30.759401, 37.074181, 37.715553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927963, 37.199570, 36.993843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939890, 36.800083, 37.010231>,  <30.947046, 36.560390, 37.020061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939890, 36.800083, 37.010231>,  <30.927963, 37.199570, 36.993843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939890, 36.800083, 37.010231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523502, -0.050517, -0.850526,
		0.851503, 0.003913, -0.524336,
		0.029816, -0.998716, 0.040967,
		30.948835, 36.500469, 37.022522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351000, 37.090080, 36.368084>,  <30.927963, 37.199570, 36.993843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351000, 37.090080, 36.368084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097633, 36.791393, 36.449276>,  <30.945614, 36.612183, 36.497990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097633, 36.791393, 36.449276>,  <31.351000, 37.090080, 36.368084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097633, 36.791393, 36.449276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236792, -0.062682, -0.969536,
		0.736692, -0.662182, -0.137113,
		-0.633415, -0.746717, 0.202977,
		30.907608, 36.567379, 36.510170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491554, 36.544735, 35.827568>,  <31.351000, 37.090080, 36.368084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491554, 36.544735, 35.827568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127415, 36.492229, 35.984558>,  <30.908932, 36.460724, 36.078751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127415, 36.492229, 35.984558>,  <31.491554, 36.544735, 35.827568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127415, 36.492229, 35.984558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402292, 0.058161, -0.913662,
		0.097112, -0.989639, -0.105756,
		-0.910346, -0.131272, 0.392475,
		30.854311, 36.452850, 36.102303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179934, 36.062943, 35.352642>,  <31.491554, 36.544735, 35.827568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179934, 36.062943, 35.352642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876877, 36.243729, 35.540985>,  <30.695044, 36.352200, 35.653992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876877, 36.243729, 35.540985>,  <31.179934, 36.062943, 35.352642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876877, 36.243729, 35.540985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457983, 0.145833, -0.876917,
		-0.465005, -0.880033, 0.096504,
		-0.757642, 0.451968, 0.470853,
		30.649584, 36.379318, 35.682240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861383, 35.470493, 35.661434>,  <31.179934, 36.062943, 35.352642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861383, 35.470493, 35.661434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896336, 35.333096, 36.035465>,  <30.917307, 35.250656, 36.259884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896336, 35.333096, 36.035465>,  <30.861383, 35.470493, 35.661434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896336, 35.333096, 36.035465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374664, -0.858420, -0.350346,
		0.923034, 0.380954, 0.053686,
		0.087381, -0.343495, 0.935081,
		30.922550, 35.230045, 36.315990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472527, 35.223919, 36.037750>,  <30.861383, 35.470493, 35.661434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472527, 35.223919, 36.037750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198896, 34.934166, 36.071957>,  <31.034718, 34.760315, 36.092480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198896, 34.934166, 36.071957>,  <31.472527, 35.223919, 36.037750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198896, 34.934166, 36.071957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699962, -0.684905, -0.202380,
		0.205170, -0.078585, 0.975566,
		-0.684075, -0.724382, 0.085515,
		30.993673, 34.716850, 36.097610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772211, 34.824982, 36.562965>,  <31.472527, 35.223919, 36.037750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772211, 34.824982, 36.562965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506969, 34.646347, 36.322681>,  <31.347824, 34.539165, 36.178513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506969, 34.646347, 36.322681>,  <31.772211, 34.824982, 36.562965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506969, 34.646347, 36.322681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734215, -0.544249, -0.405860,
		-0.145683, -0.710176, 0.688786,
		-0.663103, -0.446590, -0.600710,
		31.308039, 34.512371, 36.142467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745756, 34.110256, 36.682896>,  <31.772211, 34.824982, 36.562965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745756, 34.110256, 36.682896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701231, 34.229443, 36.303669>,  <31.674517, 34.300953, 36.076134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701231, 34.229443, 36.303669>,  <31.745756, 34.110256, 36.682896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701231, 34.229443, 36.303669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682332, -0.670673, -0.290896,
		-0.722519, -0.679275, -0.128658,
		-0.111311, 0.297965, -0.948065,
		31.667837, 34.318832, 36.019249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890736, 33.506851, 36.247089>,  <31.745756, 34.110256, 36.682896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890736, 33.506851, 36.247089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047249, 33.792519, 36.014931>,  <32.141155, 33.963917, 35.875633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047249, 33.792519, 36.014931>,  <31.890736, 33.506851, 36.247089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047249, 33.792519, 36.014931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774930, -0.595868, -0.210772,
		-0.496367, -0.367297, -0.786582,
		0.391284, 0.714166, -0.580399,
		32.164635, 34.006767, 35.840813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813702, 32.911278, 36.783760>,  <31.890736, 33.506851, 36.247089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813702, 32.911278, 36.783760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210289, 32.962307, 36.794472>,  <32.448242, 32.992924, 36.800900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210289, 32.962307, 36.794472>,  <31.813702, 32.911278, 36.783760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210289, 32.962307, 36.794472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012069, -0.294361, 0.955618,
		0.129792, -0.947141, -0.293390,
		0.991467, 0.127572, 0.026775,
		32.507729, 33.000580, 36.802505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189556, 32.318916, 37.061222>,  <31.813702, 32.911278, 36.783760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189556, 32.318916, 37.061222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438564, 32.626411, 37.119888>,  <32.587967, 32.810909, 37.155087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438564, 32.626411, 37.119888>,  <32.189556, 32.318916, 37.061222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438564, 32.626411, 37.119888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038669, -0.217391, 0.975318,
		0.781651, -0.601480, -0.165056,
		0.622517, 0.768741, 0.146665,
		32.625320, 32.857033, 37.163887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759430, 31.942076, 37.532078>,  <32.189556, 32.318916, 37.061222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759430, 31.942076, 37.532078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825672, 32.336292, 37.546406>,  <32.865417, 32.572823, 37.555004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825672, 32.336292, 37.546406>,  <32.759430, 31.942076, 37.532078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825672, 32.336292, 37.546406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345616, -0.092018, 0.933854,
		0.923647, -0.142272, -0.355857,
		0.165606, 0.985541, 0.035820,
		32.875355, 32.631954, 37.557152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457649, 32.216309, 37.608608>,  <32.759430, 31.942076, 37.532078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457649, 32.216309, 37.608608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215950, 32.487675, 37.775768>,  <33.070930, 32.650494, 37.876064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215950, 32.487675, 37.775768>,  <33.457649, 32.216309, 37.608608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215950, 32.487675, 37.775768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287414, -0.303592, 0.908419,
		0.743154, 0.669021, -0.011540,
		-0.604248, 0.678412, 0.417901,
		33.034676, 32.691196, 37.901138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896873, 32.526936, 38.056648>,  <33.457649, 32.216309, 37.608608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896873, 32.526936, 38.056648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535122, 32.624844, 38.196468>,  <33.318069, 32.683586, 38.280361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535122, 32.624844, 38.196468>,  <33.896873, 32.526936, 38.056648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535122, 32.624844, 38.196468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277783, -0.284140, 0.917661,
		0.323936, 0.927013, 0.188978,
		-0.904379, 0.244768, 0.349552,
		33.263809, 32.698273, 38.301334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031731, 32.772354, 38.719761>,  <33.896873, 32.526936, 38.056648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031731, 32.772354, 38.719761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634109, 32.733456, 38.739399>,  <33.395538, 32.710117, 38.751183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634109, 32.733456, 38.739399>,  <34.031731, 32.772354, 38.719761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634109, 32.733456, 38.739399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061202, -0.125719, 0.990176,
		-0.090114, 0.987289, 0.130922,
		-0.994049, -0.097242, 0.049095,
		33.335896, 32.704285, 38.754128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760735, 33.359730, 39.039333>,  <34.031731, 32.772354, 38.719761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760735, 33.359730, 39.039333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509338, 33.050503, 39.073650>,  <33.358501, 32.864967, 39.094242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509338, 33.050503, 39.073650>,  <33.760735, 33.359730, 39.039333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509338, 33.050503, 39.073650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137649, -0.001986, 0.990479,
		-0.765539, 0.634318, 0.107660,
		-0.628492, -0.773070, 0.085793,
		33.320789, 32.818581, 39.099388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282284, 33.503807, 39.599701>,  <33.760735, 33.359730, 39.039333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282284, 33.503807, 39.599701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312325, 33.107506, 39.554516>,  <33.330349, 32.869724, 39.527405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312325, 33.107506, 39.554516>,  <33.282284, 33.503807, 39.599701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312325, 33.107506, 39.554516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285226, -0.087205, 0.954485,
		-0.955513, -0.103903, 0.276041,
		0.075102, -0.990757, -0.112961,
		33.334854, 32.810280, 39.520626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015182, 33.249863, 40.214596>,  <33.282284, 33.503807, 39.599701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015182, 33.249863, 40.214596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242802, 32.962589, 40.054401>,  <33.379372, 32.790226, 39.958286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242802, 32.962589, 40.054401>,  <33.015182, 33.249863, 40.214596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242802, 32.962589, 40.054401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321697, -0.253782, 0.912198,
		-0.756766, -0.647921, 0.086625,
		0.569049, -0.718188, -0.400487,
		33.413517, 32.747131, 39.934254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014122, 32.617249, 40.708920>,  <33.015182, 33.249863, 40.214596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014122, 32.617249, 40.708920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318825, 32.544510, 40.460190>,  <33.501644, 32.500866, 40.310951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318825, 32.544510, 40.460190>,  <33.014122, 32.617249, 40.708920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318825, 32.544510, 40.460190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517933, -0.405661, 0.753117,
		-0.389197, -0.895753, -0.214833,
		0.761755, -0.181842, -0.621821,
		33.547352, 32.489956, 40.273643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193718, 31.928324, 40.886162>,  <33.014122, 32.617249, 40.708920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193718, 31.928324, 40.886162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526634, 32.074696, 40.719601>,  <33.726383, 32.162518, 40.619663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526634, 32.074696, 40.719601>,  <33.193718, 31.928324, 40.886162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526634, 32.074696, 40.719601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548292, -0.432765, 0.715605,
		0.081658, -0.823900, -0.560821,
		0.832291, 0.365929, -0.416399,
		33.776321, 32.184475, 40.594681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729897, 31.351479, 40.828861>,  <33.193718, 31.928324, 40.886162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729897, 31.351479, 40.828861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909935, 31.708668, 40.827148>,  <34.017956, 31.922981, 40.826118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909935, 31.708668, 40.827148>,  <33.729897, 31.351479, 40.828861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909935, 31.708668, 40.827148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673351, -0.336236, 0.658440,
		0.586528, -0.299243, -0.752621,
		0.450092, 0.892972, -0.004284,
		34.044964, 31.976559, 40.825863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392338, 31.088083, 40.993629>,  <33.729897, 31.351479, 40.828861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392338, 31.088083, 40.993629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427662, 31.486519, 40.992695>,  <34.448856, 31.725580, 40.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427662, 31.486519, 40.992695>,  <34.392338, 31.088083, 40.993629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427662, 31.486519, 40.992695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725299, -0.062693, 0.685574,
		0.682747, -0.062240, -0.727999,
		0.088310, 0.996090, -0.002339,
		34.454155, 31.785345, 40.991993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157001, 31.227013, 40.969730>,  <34.392338, 31.088083, 40.993629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157001, 31.227013, 40.969730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965435, 31.540760, 41.127415>,  <34.850494, 31.729008, 41.222027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965435, 31.540760, 41.127415>,  <35.157001, 31.227013, 40.969730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965435, 31.540760, 41.127415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647809, 0.012724, 0.761697,
		0.592434, 0.620165, -0.514215,
		-0.478921, 0.784368, 0.394210,
		34.821758, 31.776070, 41.245678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688076, 31.723284, 41.118755>,  <35.157001, 31.227013, 40.969730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688076, 31.723284, 41.118755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369022, 31.822311, 41.338749>,  <35.177589, 31.881729, 41.470745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369022, 31.822311, 41.338749>,  <35.688076, 31.723284, 41.118755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369022, 31.822311, 41.338749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601875, 0.267788, 0.752353,
		0.038981, 0.931128, -0.362604,
		-0.797638, 0.247570, 0.549984,
		35.129730, 31.896582, 41.503746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758316, 32.368500, 41.441475>,  <35.688076, 31.723284, 41.118755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758316, 32.368500, 41.441475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518787, 32.161045, 41.685585>,  <35.375069, 32.036572, 41.832050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518787, 32.161045, 41.685585>,  <35.758316, 32.368500, 41.441475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518787, 32.161045, 41.685585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507092, 0.344270, 0.790149,
		-0.619896, 0.782623, 0.056838,
		-0.598822, -0.518632, 0.610273,
		35.339142, 32.005455, 41.868668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799351, 32.776165, 41.982754>,  <35.758316, 32.368500, 41.441475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799351, 32.776165, 41.982754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617142, 32.444710, 42.112896>,  <35.507816, 32.245838, 42.190983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617142, 32.444710, 42.112896>,  <35.799351, 32.776165, 41.982754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617142, 32.444710, 42.112896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314533, 0.192092, 0.929607,
		-0.832807, 0.525793, 0.173132,
		-0.455524, -0.828639, 0.325355,
		35.480484, 32.196117, 42.210503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638783, 32.877926, 42.672478>,  <35.799351, 32.776165, 41.982754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638783, 32.877926, 42.672478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598598, 32.480137, 42.684628>,  <35.574486, 32.241463, 42.691917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598598, 32.480137, 42.684628>,  <35.638783, 32.877926, 42.672478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598598, 32.480137, 42.684628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212323, 0.008395, 0.977163,
		-0.972022, 0.104617, 0.210307,
		-0.100463, -0.994477, 0.030373,
		35.568459, 32.181793, 42.693741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251675, 32.807827, 43.306229>,  <35.638783, 32.877926, 42.672478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251675, 32.807827, 43.306229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410698, 32.450928, 43.220589>,  <35.506111, 32.236786, 43.169205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410698, 32.450928, 43.220589>,  <35.251675, 32.807827, 43.306229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410698, 32.450928, 43.220589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235492, -0.126298, 0.963635,
		-0.886844, -0.433518, 0.159907,
		0.397557, -0.892250, -0.214097,
		35.529964, 32.183254, 43.156361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935802, 32.212090, 43.816566>,  <35.251675, 32.807827, 43.306229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935802, 32.212090, 43.816566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304996, 32.135147, 43.683243>,  <35.526512, 32.088982, 43.603249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304996, 32.135147, 43.683243>,  <34.935802, 32.212090, 43.816566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304996, 32.135147, 43.683243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280867, -0.255358, 0.925152,
		-0.263078, -0.947517, -0.181663,
		0.922986, -0.192364, -0.333306,
		35.581894, 32.077442, 43.583252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140118, 31.713552, 44.208168>,  <34.935802, 32.212090, 43.816566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140118, 31.713552, 44.208168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494038, 31.812805, 44.050400>,  <35.706390, 31.872356, 43.955738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494038, 31.812805, 44.050400>,  <35.140118, 31.713552, 44.208168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494038, 31.812805, 44.050400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458067, -0.307856, 0.833906,
		0.085496, -0.918506, -0.386052,
		0.884796, 0.248133, -0.394417,
		35.759476, 31.887245, 43.932076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736286, 31.118790, 44.387245>,  <35.140118, 31.713552, 44.208168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736286, 31.118790, 44.387245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900127, 31.475281, 44.309330>,  <35.998432, 31.689175, 44.262581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900127, 31.475281, 44.309330>,  <35.736286, 31.118790, 44.387245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900127, 31.475281, 44.309330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707936, -0.175854, 0.684033,
		0.575374, -0.418078, -0.702961,
		0.409598, 0.891227, -0.194791,
		36.023006, 31.742649, 44.250893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415298, 31.067394, 44.572754>,  <35.736286, 31.118790, 44.387245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415298, 31.067394, 44.572754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377914, 31.465643, 44.572159>,  <36.355484, 31.704592, 44.571800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377914, 31.465643, 44.572159>,  <36.415298, 31.067394, 44.572754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377914, 31.465643, 44.572159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600628, 0.057572, 0.797453,
		0.794048, 0.073633, -0.603379,
		-0.093456, 0.995622, -0.001489,
		36.349876, 31.764330, 44.571712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964924, 31.383585, 44.761887>,  <36.415298, 31.067394, 44.572754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964924, 31.383585, 44.761887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726379, 31.684452, 44.874031>,  <36.583252, 31.864973, 44.941319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726379, 31.684452, 44.874031>,  <36.964924, 31.383585, 44.761887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726379, 31.684452, 44.874031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450797, 0.024829, 0.892281,
		0.664184, 0.658504, -0.353882,
		-0.596357, 0.752167, 0.280361,
		36.547474, 31.910103, 44.958138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680626, 31.735254, 44.707916>,  <36.964924, 31.383585, 44.761887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680626, 31.735254, 44.707916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077751, 31.714272, 44.750954>,  <38.316025, 31.701683, 44.776775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077751, 31.714272, 44.750954>,  <37.680626, 31.735254, 44.707916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077751, 31.714272, 44.750954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105917, -0.033822, -0.993800,
		0.055770, 0.998050, -0.028023,
		0.992810, -0.052456, 0.107597,
		38.375595, 31.698534, 44.783234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020729, 32.275116, 44.337856>,  <37.680626, 31.735254, 44.707916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020729, 32.275116, 44.337856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265179, 31.960501, 44.373367>,  <38.411850, 31.771732, 44.394676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265179, 31.960501, 44.373367>,  <38.020729, 32.275116, 44.337856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265179, 31.960501, 44.373367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106391, -0.029523, -0.993886,
		0.784351, 0.616835, 0.065639,
		0.611126, -0.786538, 0.088782,
		38.448517, 31.724539, 44.400002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504711, 32.445312, 43.799152>,  <38.020729, 32.275116, 44.337856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504711, 32.445312, 43.799152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563923, 32.056843, 43.873890>,  <38.599449, 31.823761, 43.918732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563923, 32.056843, 43.873890>,  <38.504711, 32.445312, 43.799152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563923, 32.056843, 43.873890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215397, -0.152733, -0.964509,
		0.965242, 0.183023, 0.186578,
		0.148031, -0.971172, 0.186847,
		38.608334, 31.765491, 43.929943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122643, 32.172714, 43.526344>,  <38.504711, 32.445312, 43.799152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122643, 32.172714, 43.526344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890190, 31.848408, 43.554440>,  <38.750717, 31.653824, 43.571297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890190, 31.848408, 43.554440>,  <39.122643, 32.172714, 43.526344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890190, 31.848408, 43.554440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079476, -0.142437, -0.986608,
		0.809917, -0.567770, 0.147212,
		-0.581135, -0.810770, 0.070238,
		38.715851, 31.605177, 43.575512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489311, 31.663071, 43.053535>,  <39.122643, 32.172714, 43.526344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489311, 31.663071, 43.053535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123474, 31.512030, 43.111427>,  <38.903973, 31.421406, 43.146160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123474, 31.512030, 43.111427>,  <39.489311, 31.663071, 43.053535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123474, 31.512030, 43.111427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142103, -0.034964, -0.989234,
		0.378597, -0.925308, -0.021680,
		-0.914588, -0.377601, 0.144726,
		38.849098, 31.398750, 43.154846>
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
